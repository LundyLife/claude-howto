<picture>
  <source media="(prefers-color-scheme: dark)" srcset="../resources/logos/kirocrew-howto-logo-dark.svg">
  <img alt="Kiro Crew How To" src="../resources/logos/kirocrew-howto-logo.svg">
</picture>

# Keep chats tidy and pick up where you left off

**Level:** Novice · **Time:** 20 minutes · **Surface:** Dashboard

Each chat with the agent is a separate conversation. After a week you may have
twenty of them. This module shows you how to name them, group them, close them,
and find them again. It also shows how to ask a quick side question without
stopping the agent's main work.

## What you will learn

- How to rename, pin and close a chat.
- How to group chats in a folder.
- How to reopen a closed chat from **Older Sessions**.
- How to copy a chat with **Fork** and quiet a chat with **Mute this session**.
- How to ask a side question in **Side Chat** while the main chat keeps working.
- How to add a file to a message, and how to ask the agent about old chats.

## Words to know

| Word | What it means |
|---|---|
| **Session** | One chat with the agent. The dashboard calls each chat a session. |
| **Sessions sidebar** | The list of chats on the left side of the dashboard. |
| **Folder** | A named group of chats in the sidebar, such as "Home projects". |
| **Older Sessions** | The list of closed chats at the bottom of the sidebar. A closed chat is saved there, not deleted. |
| **Pin** | Keep a chat at the top of the sidebar. |
| **Fork** | Make a new chat that starts with a copy of an old chat's messages. The old chat does not change. |
| **Mute** | Stop one chat from making sounds and unread badges. |
| **Side Chat** | A small extra chat beside the main one, for quick questions. It only looks things up. It does not change files. |
| **Turn** | One round of work: your message and the agent's reply. |
| **Steer** | Send a message into a turn that is still running, so the agent reads it as soon as it can. |
| **Queue** | Send a message that waits until the current turn is done. |

## Before you start

| You need | How to check |
|---|---|
| Kiro Crew running, from [Module 1](../01-getting-started/README.md) | The dashboard opens and shows **Sessions** in the left rail |
| At least one finished chat | The sidebar lists one chat or more |

All steps in this module happen in the dashboard. You do not need a terminal.

## Step by step

In this module you build one small project: a folder called "Home projects"
with two chats in it. You close one chat, find it again, and ask a side
question while the other chat works.

### 1. Start two chats

**Surface: Dashboard.**

1. Click **Sessions** in the left rail.
2. At the top of the sidebar, click **New**. A new, empty chat opens.
3. Type this and press Enter:

   ```text
   Give me three ideas for a small garden on a balcony.
   ```

4. Click **New** again and start a second chat:

   ```text
   Give me a short shopping list for painting one bedroom.
   ```

You should see two new rows in the sidebar. The agent names each chat for you
after a few turns, so a name like "Balcony garden ideas" may appear.

### 2. Rename a chat

**Surface: Dashboard.**

1. Find the painting chat in the sidebar.
2. Open the row's menu (the `⋮` button), or right-click the row.
3. Click **Rename**.
4. Type `Paint the bedroom` and press Enter.

You should see the new name on the row. A name you choose is kept. The agent
will not rename it later.

> **Tip:** You can also double-click the bold title in the row, or click the
> title at the top of the chat.

### 3. Make a folder and put both chats in it

**Surface: Dashboard.**

1. At the top of the sidebar, click the small arrow beside **New**.
2. Click **New folder**.
3. Type `Home projects` and save.
4. Drag each chat row onto the "Home projects" folder.

   Or open a row's menu and click **Move to folder…**, then pick the folder.

You should see the folder with both chats indented under it.

To start a new chat straight inside the folder, open the folder's menu and click
**New chat in folder**.

### 4. Pin a chat

**Surface: Dashboard.**

1. Open the menu of the balcony chat.
2. Click **Pin**.

You should see the chat move to a **Pinned** section at the top of the
sidebar. Pin the chats you use every day. Click **Unpin** in the same menu to
undo it.

### 5. Close a chat and find it again

Closing a chat hides it from the main list. It does not delete it.

**Surface: Dashboard.**

1. Open the menu of `Paint the bedroom`.
2. Click **Close session**.
3. At the bottom of the sidebar, click **Older Sessions** to open it.
4. Find `Paint the bedroom` in the list and click it.

You should see the whole chat come back, with every message, as an open chat
again.

> **Tip:** **Older Sessions** has a search box. Type a word from the chat, such
> as `paint`, to find it fast.

### 6. Ask a side question in Side Chat

Side Chat lets you ask something small while the main chat is busy. It runs
beside the main chat and does not stop it.

**Surface: Dashboard.**

1. Open the balcony chat and send a bigger task:

   ```text
   Write a one-page plan for my balcony garden: plants, pots, soil and a weekly watering schedule.
   ```

2. While the agent is still writing, open Side Chat in one of two ways:
   - Open the chat's side panel, click **+**, then click **Side Chat**.
   - Or type `/side` and your question in the message box.

   ```text
   /side How many liters is a 30 cm pot?
   ```

You should see the answer in the Side Chat panel, while the main reply keeps
appearing in the main chat.

Side Chat can read and look things up. It refuses to change files. If a side
answer is something you want the main chat to act on, click **Add to main
chat**. That puts the answer in the main message box. Nothing is sent until you
press Enter.

> **Tip:** `/btw` works the same as `/side`.

### 7. Steer or queue a message while the agent works

When a turn is still running and you send another message, the send button
gives you two choices.

**Surface: Dashboard.**

| Choice | What happens | Use it when |
|---|---|---|
| **Steer** | The agent reads your message as soon as it can, inside the turn that is running. | You want to correct it now: "Use only plants that like shade." |
| **Queue** | Your message waits and runs after the current work finishes. | It is a new task: "Next, make a shopping list." |

The send button is split in two while the agent works. Click the small arrow on
it to pick **Steer** or **Queue**. Enter sends with the one you picked.

### 8. Copy a chat with Fork

Fork makes a new chat that starts with the same messages. Use it to try a
different idea without losing the first one.

**Surface: Dashboard.**

1. Open the menu of the balcony chat.
2. Click **Fork chat**.

You should see a new chat named like `↳ Fork of <the old name>`. Both chats now
go their own way.

To fork from one point in the middle, hover over a reply, click **Fork
conversation from here**, then click **Fork with earlier messages**. The new chat gets that reply and the
messages before it.

### 9. Mute a chat

**Surface: Dashboard.**

1. Open a chat's menu.
2. Click **Mute this session**.

The chat stops making a sound and showing an unread badge when it finishes. It
still tells you when it needs your approval or hits an error. Click **Unmute
this session** to undo it.

### 10. Add a file to a message

**Surface: Dashboard.**

- Click **+** in the message box, then **Upload file**, and pick a file from
  your computer. You can also drop a file onto the chat.
- Or type `@` in the message box and pick a file from the chat's project
  folder.

```text
@notes.txt Turn these notes into a to-do list.
```

You should see the file name in your message before you send it.

### 11. Ask the agent about old chats

The agent can search your own past chats. It uses two tools:
`search_chat_history` finds chats by words in them, and `list_sessions` lists
your recent chats.

**Surface: Dashboard.** Ask in plain words:

```text
What did we talk about earlier about the balcony garden?
```

You should see the agent search, then quote or sum up the old chat, often with
its name.

```text
What chats have I had today?
```

You should see a short list of your recent chats.

The agent never sees a chat that ran in **Incognito** or **Temporary** mode.
[Module 4](../04-memory/README.md) explains those modes.

## Try it yourself

1. Click **New** to start a new chat.
2. Rename it to `Weekend trip`.
3. Drag it into your "Home projects" folder.
4. Ask the agent: `What did we talk about earlier about painting?`

You should see the agent find your `Paint the bedroom` chat and tell you what
was in it.

## Check your work

- [ ] Two chats sit in one folder called "Home projects".
- [ ] You closed a chat and reopened it from **Older Sessions**.
- [ ] A Side Chat question got an answer while the main chat kept working.
- [ ] You can say when to pick **Steer** and when to pick **Queue**.
- [ ] The agent found an old chat when you asked about it.

## Common problems

| What you see | What to do |
|---|---|
| I cannot find a chat I closed | Click **Older Sessions** at the bottom of the sidebar and use its search box. |
| The chat name changed by itself | The agent names chats until you pick a name. Use **Rename** to set your own. |
| I cannot drag a chat into a folder | Use the row's menu and click **Move to folder…** instead. |
| Side Chat says it cannot change a file | That is by design. Side Chat only looks things up. Ask the main chat to change files. |
| The agent says it found no old chat | Try other words from that chat. It cannot see Incognito or Temporary chats. |
| My second message started a new turn I did not want | You sent it with **Queue**. Next time pick **Steer** to correct the running turn. |

## What you learned

- Each chat is a session. Rename, pin and fold them into folders to keep work
  apart.
- **Close session** hides a chat. **Older Sessions** brings it back.
- **Fork** copies a chat so you can try another idea.
- **Side Chat** answers quick questions without stopping the main chat.
- **Steer** corrects the running turn. **Queue** waits for it to finish.
- The agent can search your old chats when you ask.

## Next

The agent can also remember what you like, across all chats. Go on to
[Module 4: Make it remember you, or not](../04-memory/README.md).

---
**Last updated:** 2026-10-30
**Checked against:** Kiro Crew public source @ 2808e9478c (github.com/kirodotdev/KiroCrew) and kiro.dev/docs/cli
*Part of the [Kiro Crew How To](../) guide.*
