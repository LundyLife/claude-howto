import { useChatLauncher } from '@kirocrew/app-sdk'
import { Card, CardTitle, PageHeader, StatCard } from '@kirocrew/app-sdk/ui'
import { useEffect, useState } from 'react'

// One habit, and the last day (YYYY-MM-DD) it was ticked off.
interface Habit {
  name: string
  lastDone: string
}

// The list is kept in this browser only, under this key.
const STORAGE_KEY = 'habit-tracker-habits'

function today(): string {
  const d = new Date()
  const month = String(d.getMonth() + 1).padStart(2, '0')
  const day = String(d.getDate()).padStart(2, '0')
  return `${d.getFullYear()}-${month}-${day}`
}

function loadHabits(): Habit[] {
  try {
    const saved = JSON.parse(localStorage.getItem(STORAGE_KEY) || '[]')
    return Array.isArray(saved) ? saved : []
  } catch {
    return []
  }
}

export default function HabitTracker() {
  const { openChat } = useChatLauncher()
  const [habits, setHabits] = useState<Habit[]>(loadHabits)
  const [draft, setDraft] = useState('')

  // Save the list every time it changes.
  useEffect(() => {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(habits))
  }, [habits])

  const addHabit = () => {
    const name = draft.trim()
    if (!name || habits.some(h => h.name === name)) return
    setHabits([...habits, { name, lastDone: '' }])
    setDraft('')
  }

  const toggleToday = (name: string) => {
    setHabits(habits.map(h =>
      h.name === name ? { ...h, lastDone: h.lastDone === today() ? '' : today() } : h,
    ))
  }

  const removeHabit = (name: string) => {
    setHabits(habits.filter(h => h.name !== name))
  }

  const doneToday = habits.filter(h => h.lastDone === today()).length

  return (
    <>
      <PageHeader title="Habit Tracker" subtitle="A few small things, every day." />
      <div className="px-6 pb-8 overflow-y-auto flex-1 min-h-0">
        <div className="grid gap-3.5 grid-cols-[repeat(auto-fit,minmax(150px,1fr))] mb-6">
          <StatCard label="Habits" value={String(habits.length)} />
          <StatCard label="Done today" value={`${doneToday} of ${habits.length}`} accent />
        </div>
        <Card>
          <CardTitle>Today, {today()}</CardTitle>
          {habits.length === 0 && (
            <p className="text-sm text-muted">No habits yet. Add one below.</p>
          )}
          <ul className="flex flex-col gap-2 my-3">
            {habits.map(h => (
              <li key={h.name} className="flex items-center gap-2 text-sm">
                <input
                  type="checkbox"
                  aria-label={`Done today: ${h.name}`}
                  checked={h.lastDone === today()}
                  onChange={() => toggleToday(h.name)}
                />
                <span className="flex-1">{h.name}</span>
                <button type="button" className="text-muted" onClick={() => removeHabit(h.name)}>
                  Remove
                </button>
              </li>
            ))}
          </ul>
          <div className="flex gap-2">
            <input
              className="flex-1 border rounded px-2 py-1 text-sm"
              placeholder="Walk for 10 minutes"
              aria-label="New habit"
              value={draft}
              onChange={e => setDraft(e.target.value)}
              onKeyDown={e => { if (e.key === 'Enter') addHabit() }}
            />
            <button type="button" className="border rounded px-3 py-1 text-sm" onClick={addHabit}>
              Add
            </button>
          </div>
          <button
            type="button"
            className="mt-3 text-sm underline"
            onClick={() => openChat({ message: 'Help me pick one new daily habit for my Habit Tracker.', autoSend: false })}
          >
            Ask the agent to help me pick a habit
          </button>
        </Card>
      </div>
    </>
  )
}
