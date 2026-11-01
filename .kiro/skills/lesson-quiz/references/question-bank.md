# Lesson quiz: question bank

Ten questions per module (five conceptual, five practical), for Modules 0-23
and the capstone. Each question has a category, the question, options (A-D),
the correct option, a one-line explanation and the heading of the module README
to review. Every answer comes from the module README. If a module changes,
update its questions here.

No question asks about a claim that is still marked `<!-- NLT: ... -->` in its
module, and no question rewards treating a hook or the deny list as a safety
lock.

---

## Module 0: What is an AI agent?

Folder: `00-what-is-an-agent`

### Q1

- **Category**: conceptual
- **Question**: What is a prompt?
- **Options**: A) A tool the agent runs | B) The message you type to the agent | C) A saved file on your computer | D) A setting in the dashboard
- **Correct**: B
- **Explanation**: A prompt is the message you type to the agent.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: When does a model look things up?
- **Options**: A) Every time you ask a question | B) Only at night | C) Never, under any condition | D) Only when it uses a tool
- **Correct**: D
- **Explanation**: A model does not look things up unless it uses a tool.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: What is a tool call?
- **Options**: A) The moment the agent uses a tool to do something | B) A phone call to support | C) A long answer with no actions | D) A list of settings
- **Correct**: A
- **Explanation**: A tool call is the agent doing something, not just talking.
- **Review**: 3. An agent can use tools

### Q4

- **Category**: conceptual
- **Question**: What is true about a guess from a model?
- **Options**: A) It is always marked as a guess | B) It is always right | C) It can sound sure and still be wrong | D) It comes from a tool result
- **Correct**: C
- **Explanation**: A guess is made up with no facts, so it can sound sure and still be wrong.
- **Review**: 2. A model writes words, it does not "know" things

### Q5

- **Category**: conceptual
- **Question**: Why can an agent ask for your approval before a tool call?
- **Options**: A) It forgot how to use the tool | B) A tool call can change things, and a mistake there costs more than a wrong sentence | C) It needs you to type the tool name | D) Approval makes answers longer
- **Correct**: B
- **Explanation**: Tool calls can write, delete or run things, so the agent can ask first.
- **Review**: 4. Why it asks before acting

### Q6

- **Category**: practical
- **Question**: Which prompt is the clearest?
- **Options**: A) Help with my notes. | B) Do something with files. | C) Notes? | D) Read the file notes.md in my my-project folder and list the three oldest dates in it.
- **Correct**: D
- **Explanation**: It says which file, what to look for and what shape the answer should take.
- **Review**: 1. A prompt is a request

### Q7

- **Category**: practical
- **Question**: An answer really matters to you. What is a good habit?
- **Options**: A) Ask "How do you know that?" or ask it to check with a tool | B) Accept the first answer | C) Close the chat | D) Ask the same thing in capital letters
- **Correct**: A
- **Explanation**: Asking how it knows, or asking it to check with a tool, catches guesses.
- **Review**: 2. A model writes words, it does not "know" things

### Q8

- **Category**: practical
- **Question**: In the sample chat, what two things should you find?
- **Options**: A) Two settings and a folder | B) A password and a file | C) The one tool call and the one guess | D) Three commands
- **Correct**: C
- **Explanation**: The task is to find the one tool call and the one answer that is a guess.
- **Review**: 5. Read a real chat

### Q9

- **Category**: practical
- **Question**: On the worksheet, which three prompts do you write for one task?
- **Options**: A) Short, long and longer | B) Vague, clear, and clear plus an example | C) Polite, rude and neutral | D) Question, command and joke
- **Correct**: B
- **Explanation**: You write a vague prompt, a clear prompt, and a clear prompt plus an example.
- **Review**: Try it yourself

### Q10

- **Category**: practical
- **Question**: You are not sure if something in a chat was a tool call. What should you ask yourself?
- **Options**: A) Was the answer long? | B) Did it use bold text? | C) Was it fast? | D) Did the agent do something (read, write, run), or only talk?
- **Correct**: D
- **Explanation**: Doing something is a tool call; only talking is not.
- **Review**: Common problems

---

## Module 1: Get it running and say hello

Folder: `01-getting-started`

### Q1

- **Category**: conceptual
- **Question**: What is kiro-cli?
- **Options**: A) A small helper program that connects Kiro Crew to the AI model | B) A web browser | C) A folder of chats | D) A type of change card
- **Correct**: A
- **Explanation**: kiro-cli connects Kiro Crew to the AI model; you install it once and sign in.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: When does a change card change a setting?
- **Options**: A) As soon as it appears | B) After one hour | C) Only when you press its button | D) When you close the chat
- **Correct**: C
- **Explanation**: Nothing changes until you press the card's button.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: What is the rail?
- **Options**: A) The message box | B) The column of icons and names down the side of the dashboard | C) The terminal window | D) A list of saved prompts only
- **Correct**: B
- **Explanation**: Each item on the rail opens a page.
- **Review**: Lesson 1.2: a tour of the rail

### Q4

- **Category**: conceptual
- **Question**: Until the background search model finishes downloading, how does memory search work?
- **Options**: A) It does not work at all | B) It needs the internet | C) It asks you each time | D) It matches exact words only
- **Correct**: D
- **Explanation**: Until the download finishes, memory search matches exact words only, and you do not need to wait.
- **Review**: Lesson 1.1: install the app and say hello

### Q5

- **Category**: conceptual
- **Question**: When do change cards appear?
- **Options**: A) Only for messages you send from the dashboard | B) Only in the terminal | C) Only on weekends | D) For every message, everywhere
- **Correct**: A
- **Explanation**: Change cards only appear for messages you send from the dashboard.
- **Review**: Lesson 1.3: ask Kiro Crew about itself

### Q6

- **Category**: practical
- **Question**: You ran `kiro-cli login` and finished in the browser. What do you press in the app?
- **Options**: A) Skip | B) Apply change | C) Check again | D) Undo
- **Correct**: C
- **Explanation**: Press Check again and the Set up Kiro page goes away.
- **Review**: Lesson 1.1: install the app and say hello

### Q7

- **Category**: practical
- **Question**: The terminal says `command not found: kiro-cli`. What should you do?
- **Options**: A) Restart the computer twice | B) Close the terminal and open a new one, then try again | C) Delete the app | D) Press Undo
- **Correct**: B
- **Explanation**: A new terminal window picks up the new program.
- **Review**: Common problems

### Q8

- **Category**: practical
- **Question**: What do you type in the message box to see the welcome tour again?
- **Options**: A) `/tour` | B) `/help` | C) `/restart` | D) `/onboarding`
- **Correct**: D
- **Explanation**: `/onboarding` replays setup import and the welcome tour.
- **Review**: Lesson 1.1: install the app and say hello

### Q9

- **Category**: practical
- **Question**: Which rail item holds jobs that run at set times, like a morning summary?
- **Options**: A) Schedule | B) Artifacts | C) Customize | D) Sessions
- **Correct**: A
- **Explanation**: Schedule is for jobs that run at set times.
- **Review**: Lesson 1.2: a tour of the rail

### Q10

- **Category**: practical
- **Question**: You pressed Apply change, then Undo on a change card. What does the card say?
- **Options**: A) Declined | B) Restored | C) Expired | D) Saved forever
- **Correct**: B
- **Explanation**: After Undo the card says Restored and the setting is back to what it was.
- **Review**: Lesson 1.3: ask Kiro Crew about itself

---

## Module 2: Decide how often it asks first

Folder: `02-approval-modes`

### Q1

- **Category**: conceptual
- **Question**: What is an approval card?
- **Options**: A) A box that says "Tool approval requested:" with Approve and Reject buttons | B) A saved lesson | C) A list of old chats | D) A settings tab
- **Correct**: A
- **Explanation**: The card shows the action and lets you approve or reject it.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: What is the approval pill?
- **Options**: A) A rail item | B) A warning box | C) The small button in the message box that shows the current mode, such as Normal | D) A file in your project folder
- **Correct**: C
- **Explanation**: You pick the approval mode with the approval pill.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: Which two modes are meant to work without asking?
- **Options**: A) Normal and Reads | B) Reads and Trust | C) Normal and YOLO | D) Trust and YOLO
- **Correct**: D
- **Explanation**: Trust and YOLO both auto-approve.
- **Review**: Words to know

### Q4

- **Category**: conceptual
- **Question**: Why should you start in Normal?
- **Options**: A) It is the fastest mode | B) So you see what the agent does | C) It turns off the agent | D) It saves memory
- **Correct**: B
- **Explanation**: Starting in Normal lets you see what the agent does.
- **Review**: What you learned

### Q5

- **Category**: conceptual
- **Question**: Why is YOLO risky while you are learning?
- **Options**: A) It lets the agent change files and run commands in every chat without asking | B) It deletes your chats | C) It turns off the internet | D) It only works in one chat
- **Correct**: A
- **Explanation**: One mistake in YOLO can delete or overwrite your work.
- **Review**: 6. Look at YOLO, but do not turn it on

### Q6

- **Category**: practical
- **Question**: You choose YOLO and a box opens. What should you press while learning?
- **Options**: A) Enable | B) Approve | C) Cancel | D) Stop generation
- **Correct**: C
- **Explanation**: Press Cancel; do not press Enable while you are learning.
- **Review**: 6. Look at YOLO, but do not turn it on

### Q7

- **Category**: practical
- **Question**: Where do you find How long auto-approve stays on?
- **Options**: A) Settings → Chat | B) The Sessions sidebar | C) Customize | D) Settings → Security, in the YOLO (auto-approve) section
- **Correct**: D
- **Explanation**: It lives under Settings → Security, in the YOLO (auto-approve) section.
- **Review**: 6. Look at YOLO, but do not turn it on

### Q8

- **Category**: practical
- **Question**: What is the default for How long auto-approve stays on?
- **Options**: A) 6 hours | B) 30 minutes | C) 24 hours | D) Forever
- **Correct**: A
- **Explanation**: The default is 6 hours.
- **Review**: 6. Look at YOLO, but do not turn it on

### Q9

- **Category**: practical
- **Question**: The agent is writing a very long story and you want it to stop now. What do you press?
- **Options**: A) Reject | B) Stop generation | C) Undo | D) Close session
- **Correct**: B
- **Explanation**: Stop generation stops the answer where it was.
- **Review**: 7. Stop a task in the middle

### Q10

- **Category**: practical
- **Question**: You turned on YOLO by mistake. What should you do?
- **Options**: A) Delete the app | B) Start a new chat | C) Click the pill and choose Normal | D) Wait for it to finish
- **Correct**: C
- **Explanation**: Click the approval pill and choose Normal.
- **Review**: Common problems

---

## Module 3: Keep chats tidy and pick up where you left off

Folder: `03-sessions`

### Q1

- **Category**: conceptual
- **Question**: What happens when you close a chat?
- **Options**: A) It is deleted forever | B) It is hidden and saved in Older Sessions | C) It moves to Settings | D) It becomes a folder
- **Correct**: B
- **Explanation**: A closed chat is saved in Older Sessions, not deleted.
- **Review**: 5. Close a chat and find it again

### Q2

- **Category**: conceptual
- **Question**: What does Fork do?
- **Options**: A) Deletes the old chat | B) Mutes the chat | C) Renames the chat | D) Makes a new chat that starts with a copy of the old chat's messages
- **Correct**: D
- **Explanation**: Fork copies the chat; the old chat does not change.
- **Review**: 8. Copy a chat with Fork

### Q3

- **Category**: conceptual
- **Question**: What can Side Chat NOT do?
- **Options**: A) Change files | B) Look things up | C) Answer a quick question | D) Run while the main chat works
- **Correct**: A
- **Explanation**: Side Chat can read and look things up, but it refuses to change files.
- **Review**: 6. Ask a side question in Side Chat

### Q4

- **Category**: conceptual
- **Question**: The agent is still working and you want to correct it now. Which choice do you pick?
- **Options**: A) Queue | B) Fork | C) Steer | D) Mute
- **Correct**: C
- **Explanation**: Steer sends your message into the running turn so the agent reads it as soon as it can.
- **Review**: 7. Steer or queue a message while the agent works

### Q5

- **Category**: conceptual
- **Question**: A muted chat still tells you about which events?
- **Options**: A) Every new word | B) When it needs your approval or hits an error | C) Nothing at all | D) Only when it is renamed
- **Correct**: B
- **Explanation**: A muted chat still tells you when it needs approval or hits an error.
- **Review**: 9. Mute a chat

### Q6

- **Category**: practical
- **Question**: How do you rename a chat in the sidebar?
- **Options**: A) Open the row's menu (the `⋮` button) and click Rename | B) Type `/rename` in Side Chat | C) Drag it onto a folder | D) Click Older Sessions
- **Correct**: A
- **Explanation**: Open the row's menu, or right-click the row, and click Rename.
- **Review**: 2. Rename a chat

### Q7

- **Category**: practical
- **Question**: You cannot find a chat you closed. Where do you look?
- **Options**: A) Settings → Chat | B) Customize | C) The Git tab | D) Older Sessions at the bottom of the sidebar, using its search box
- **Correct**: D
- **Explanation**: Older Sessions lists closed chats and has a search box.
- **Review**: Common problems

### Q8

- **Category**: practical
- **Question**: What can you type in the message box to ask a side question?
- **Options**: A) `/fork` | B) `/side` followed by your question | C) `/mute` | D) `/folder`
- **Correct**: B
- **Explanation**: Type `/side` and your question; `/btw` works the same.
- **Review**: 6. Ask a side question in Side Chat

### Q9

- **Category**: practical
- **Question**: How do you pick a file from the chat's project folder for your message?
- **Options**: A) Type `#` | B) Type `/file` | C) Type `@` in the message box | D) Press Steer
- **Correct**: C
- **Explanation**: Type `@` and pick a file from the chat's project folder.
- **Review**: 10. Add a file to a message

### Q10

- **Category**: practical
- **Question**: You cannot drag a chat into a folder. What else can you do?
- **Options**: A) Use the row's menu and click Move to folder… | B) Fork the chat | C) Close the chat | D) Mute the chat
- **Correct**: A
- **Explanation**: Move to folder… in the row's menu does the same job.
- **Review**: Common problems

---

## Module 4: Make it remember you, or not

Folder: `04-memory`

### Q1

- **Category**: conceptual
- **Question**: What is a lesson?
- **Options**: A) A chat you closed | B) One saved rule that new chats follow | C) A folder of files | D) A type of approval card
- **Correct**: B
- **Explanation**: A lesson is one saved rule, such as "Always answer in bullet points".
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: What does an Incognito chat do with memory?
- **Options**: A) Reads nothing and saves nothing | B) Reads and saves everything | C) Saves new memory but reads nothing | D) Uses what is already saved, but saves nothing new
- **Correct**: D
- **Explanation**: Incognito reads saved memory but saves nothing new.
- **Review**: 4. Lesson 4.3: private chats

### Q3

- **Category**: conceptual
- **Question**: What does a Temporary chat do with memory?
- **Options**: A) It starts blank, reads no memory and saves nothing new | B) It reads memory but saves nothing | C) It saves everything twice | D) It deletes all lessons
- **Correct**: A
- **Explanation**: Temporary is a clean test, as if the agent never met you.
- **Review**: 4. Lesson 4.3: private chats

### Q4

- **Category**: conceptual
- **Question**: You saved a rule for bullet points, but now you ask for a paragraph. What happens?
- **Options**: A) The agent refuses | B) The rule is deleted | C) The agent writes a paragraph for this answer only | D) The agent writes bullets anyway
- **Correct**: C
- **Explanation**: The message you type now always wins over a saved lesson.
- **Review**: 2. Lesson 4.1: tell it a rule

### Q5

- **Category**: conceptual
- **Question**: Is an Incognito or Temporary chat kept?
- **Options**: A) No, it vanishes when you close it | B) Yes, it still shows in Older Sessions, but no memory is learned from it | C) Yes, and lessons are saved from it | D) Only if you pin it
- **Correct**: B
- **Explanation**: Every mode keeps the chat; the private modes stop learning from it.
- **Review**: 4. Lesson 4.3: private chats

### Q6

- **Category**: practical
- **Question**: How should you start a message so the agent saves a rule?
- **Options**: A) "Remember:" followed by one clear sentence | B) "Forget:" | C) "/side" | D) "Maybe:"
- **Correct**: A
- **Explanation**: Saying "Remember: ..." makes the agent save a lesson.
- **Review**: 2. Lesson 4.1: tell it a rule

### Q7

- **Category**: practical
- **Question**: Where do you see the Lessons table?
- **Options**: A) Settings → Security | B) Customize | C) The Git tab | D) Settings → Overview → Memory
- **Correct**: D
- **Explanation**: The Lessons table is in the memory view under Settings → Overview → Memory.
- **Review**: 3. Lesson 4.2: check and remove what it saved

### Q8

- **Category**: practical
- **Question**: A lesson's Source column says Learned from chat. What does that mean?
- **Options**: A) You typed it in Settings | B) It came from a terminal command | C) Kiro Crew picked it up by itself | D) It is from an Incognito chat
- **Correct**: C
- **Explanation**: Learned from chat marks a lesson Kiro Crew picked up by itself.
- **Review**: 3. Lesson 4.2: check and remove what it saved

### Q9

- **Category**: practical
- **Question**: Where do you pick the memory mode for all new chats?
- **Options**: A) Settings → Chat, Default Memory Mode | B) The approval pill | C) Older Sessions | D) The rail item Schedule
- **Correct**: A
- **Explanation**: Default Memory Mode is under Sessions in Settings → Chat.
- **Review**: 4. Lesson 4.3: private chats

### Q10

- **Category**: practical
- **Question**: The memory chip is not there. What should you do?
- **Options**: A) Restart the computer | B) Click New first; the chip shows only in a new, empty chat | C) Turn on YOLO | D) Delete a lesson
- **Correct**: B
- **Explanation**: The memory chip shows only in a new, empty chat.
- **Review**: Common problems

---

## Module 5: Fix a mistake

Folder: `05-fix-a-mistake`

### Q1

- **Category**: conceptual
- **Question**: Which line sums up this module?
- **Options**: A) Git fixes the chat. Rewind fixes the files. | B) Fork fixes everything. | C) Rewind fixes the chat. Git fixes the files. | D) Regenerate fixes the files.
- **Correct**: C
- **Explanation**: Going back in the chat does not undo changes to files.
- **Review**: 5. See that the file did not go back

### Q2

- **Category**: conceptual
- **Question**: What happens to the replies below a message when you use Edit & Resend?
- **Options**: A) They are replaced | B) They are kept and moved up | C) They are copied to a new chat | D) They become lessons
- **Correct**: A
- **Explanation**: The dashboard warns that sending replaces the replies below.
- **Review**: 4. Change your request with Edit & Resend

### Q3

- **Category**: conceptual
- **Question**: After you press Regenerate, how do you switch between the old and new answers?
- **Options**: A) Press Undo | B) Open the Git tab | C) Use Fork | D) Use Previous version and Next version on the reply
- **Correct**: D
- **Explanation**: Previous version and Next version switch between the answers.
- **Review**: 8. Get another answer with Regenerate

### Q4

- **Category**: conceptual
- **Question**: What is true about the Git tab?
- **Options**: A) It has an undo button for every file | B) It shows what changed, but has no undo button | C) It deletes old commits | D) It rewinds the chat
- **Correct**: B
- **Explanation**: The Git tab shows changes; you undo with git itself.
- **Review**: 6. See the change in the Git tab

### Q5

- **Category**: conceptual
- **Question**: You lost a file you never committed. Can git bring it back?
- **Options**: A) Yes, always | B) Yes, with Regenerate | C) No, so commit often, before big jobs | D) Yes, with Fork
- **Correct**: C
- **Explanation**: git can only bring a file back if it saved a version first.
- **Review**: Common problems

### Q6

- **Category**: practical
- **Question**: Which command puts `hello.txt` back the way it was in the last commit?
- **Options**: A) `git restore hello.txt` | B) `git init hello.txt` | C) `git config hello.txt` | D) `git --version`
- **Correct**: A
- **Explanation**: `git restore` puts a file back the way it was in the last commit.
- **Review**: 7. Put the file back with git

### Q7

- **Category**: practical
- **Question**: You used Edit & Resend to change "Good morning" to "Good night". What is in `hello.txt` now?
- **Options**: A) Only "Good night" | B) Nothing | C) Only "Good morning" | D) Both lines
- **Correct**: D
- **Explanation**: Edit & Resend rewound the chat but did not undo the first file change.
- **Review**: 5. See that the file did not go back

### Q8

- **Category**: practical
- **Question**: You see `fatal: not a git repository`. What should you do?
- **Options**: A) Press Regenerate | B) Make the folder a git repository first (step 2), in the same folder | C) Delete `hello.txt` | D) Open Older Sessions
- **Correct**: B
- **Explanation**: Run step 2 first, in the same folder.
- **Review**: Common problems

### Q9

- **Category**: practical
- **Question**: How do you open the chat's Terminal panel?
- **Options**: A) Open the side panel, click +, then Terminal | B) Type `/terminal` in Side Chat | C) Click Settings → Chat | D) Press Stop generation
- **Correct**: A
- **Explanation**: The Terminal panel opens from the side panel's + button.
- **Review**: 7. Put the file back with git

### Q10

- **Category**: practical
- **Question**: From an empty message box, which keys open your last message for editing?
- **Options**: A) Ctrl+S | B) Shift+Enter | C) ⌘↑ (macOS) or Ctrl+↑ | D) Esc
- **Correct**: C
- **Explanation**: ⌘↑ or Ctrl+↑ opens your last message for editing.
- **Review**: 4. Change your request with Edit & Resend

---

## Module 6: Standing rules and reusable prompts

Folder: `06-prompts-and-steering`

### Q1

- **Category**: conceptual
- **Question**: What is a steering file?
- **Options**: A) A prompt you send with `@name` | B) A markdown file of standing rules the agent reads at the start of every chat | C) A lesson the agent saves when you say "Remember: ..." | D) A list of commands the agent refuses
- **Correct**: B
- **Explanation**: A steering file holds standing rules, and the agent reads it in every chat without you asking.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: When does a saved prompt apply?
- **Options**: A) Only when you type `@name` | B) In every chat, by itself | C) Only after a restart | D) Whenever the agent thinks it fits
- **Correct**: A
- **Explanation**: A saved prompt is used only when you send it with `@name`.
- **Review**: 5. Lesson 6.3: prompt, steering or memory?

### Q3

- **Category**: conceptual
- **Question**: A steering file and a saved lesson disagree. Which one does the agent follow?
- **Options**: A) The saved lesson | B) Whichever is newer | C) Neither, it asks you | D) The steering file
- **Correct**: D
- **Explanation**: The steering file wins over a saved lesson, and what you type in the chat now beats both.
- **Review**: 5. Lesson 6.3: prompt, steering or memory?

### Q4

- **Category**: conceptual
- **Question**: What does the front matter line `inclusion: always` tell the agent?
- **Options**: A) Send this prompt every hour | B) Save this file in every project | C) Read this steering file in every chat | D) Always ask before running a command
- **Correct**: C
- **Explanation**: `inclusion: always` makes the agent read the steering file in every chat.
- **Review**: Words to know

### Q5

- **Category**: conceptual
- **Question**: Why should a steering file be kept short?
- **Options**: A) Every steering file is added to every chat, and long files crowd out your conversation | B) Long files are deleted | C) Only the first line is read | D) Long files only work on one project
- **Correct**: A
- **Explanation**: Steering files are added to every chat, so long ones take up room your conversation needs.
- **Review**: 3. Lesson 6.2: write one steering rule

### Q6

- **Category**: practical
- **Question**: You save a prompt with the scope **Global**. Where is the file saved?
- **Options**: A) `~/.kiro/steering` | B) `~/my-project/notes` | C) `~/.kiro/prompts` | D) `~/.kiro/crew/skills`
- **Correct**: C
- **Explanation**: Global prompts are saved in `~/.kiro/prompts` and work in every chat.
- **Review**: 1. Lesson 6.1: save a prompt

### Q7

- **Category**: practical
- **Question**: How do you send the saved prompt `weekly-notes` from the message box?
- **Options**: A) Type `$weekly-notes` | B) Type `@weekly` and pick `weekly-notes` from the list | C) Type `/kb weekly-notes` | D) Paste the file path
- **Correct**: B
- **Explanation**: Typing `@` in the message box lets you pick a saved prompt.
- **Review**: 2. Send a saved prompt

### Q8

- **Category**: practical
- **Question**: You want a steering rule only for chats whose project folder is `~/my-project`. Where does the file go?
- **Options**: A) `~/.kiro/steering/` | B) `~/.kiro/prompts/` | C) `~/my-project/notes/` | D) `~/my-project/.kiro/steering/`
- **Correct**: D
- **Explanation**: Workspace steering lives in the project's own `.kiro/steering` folder.
- **Review**: 3. Lesson 6.2: write one steering rule

### Q9

- **Category**: practical
- **Question**: In a sidebar folder's **Folder settings**, which section adds extra steering for that folder's chats?
- **Options**: A) **Additional steering** | B) **Custom secrets** | C) **Config Summary** | D) **Denied Commands**
- **Correct**: A
- **Explanation**: Under **Additional steering** you click **Add directory** and paste the folder path.
- **Review**: 4. Give one sidebar folder its own steering

### Q10

- **Category**: practical
- **Question**: A new rule in a steering file seems to be ignored. What should you do first?
- **Options**: A) Delete the file | B) Start a new chat and check the file has `inclusion: always` | C) Rename it to a prompt | D) Restart your computer
- **Correct**: B
- **Explanation**: Steering is read at the start of a chat, so open a new one and check the front matter.
- **Review**: Common problems

---

## Module 7: Teach it a procedure: skills

Folder: `07-skills`

### Q1

- **Category**: conceptual
- **Question**: What is a skill?
- **Options**: A) A saved password | B) A single request you send with `@name` | C) A folder with a `SKILL.md` file of steps for one kind of task | D) A web page the agent reads
- **Correct**: C
- **Explanation**: A skill is a folder whose `SKILL.md` holds the steps for one kind of task.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: At the start of a chat, what does the agent see about each of your skills?
- **Options**: A) The name and description only | B) Every step in full | C) Only the scripts | D) Nothing until you type `$name`
- **Correct**: A
- **Explanation**: The agent gets a short list of names and descriptions, and opens a skill only when it fits.
- **Review**: 2. How the agent finds a skill

### Q3

- **Category**: conceptual
- **Question**: Why does Kiro Crew wait for your trust before loading a project's own skills?
- **Options**: A) Project skills are always broken | B) They are slower to load | C) They need a password | D) They come with the project's files, and a skill can tell the agent to run commands
- **Correct**: D
- **Explanation**: A skill can tell the agent to run commands, so a project's skills load only after you trust it.
- **Review**: 9. Where skills live

### Q4

- **Category**: conceptual
- **Question**: When is a skill a better choice than a saved prompt?
- **Options**: A) When you always start the task yourself | B) When the agent should notice the task and follow the same steps every time | C) When you want to store a secret | D) When you need a rule in every chat
- **Correct**: B
- **Explanation**: A prompt is enough when you start the task yourself; a skill fits when the agent should pick it up.
- **Review**: 7. Prompt or skill?

### Q5

- **Category**: conceptual
- **Question**: Is **Auto-generate skills from sessions** on when you first install Kiro Crew?
- **Options**: A) Yes, always | B) Only on Windows | C) No, it is off by default | D) Only for project skills
- **Correct**: C
- **Explanation**: Drafting skills from your chats is off by default, and you turn it on in **Settings → Skills**.
- **Review**: 11. Let Kiro Crew draft skills for you (optional)

### Q6

- **Category**: practical
- **Question**: How do you load the `trip-packing` skill on purpose in the dashboard?
- **Options**: A) Type `$trip` and pick `trip-packing` | B) Type `@trip-packing` | C) Type `/kb trip-packing` | D) Open **Settings → Browser**
- **Correct**: A
- **Explanation**: Typing `$` and a skill's name loads that skill and shows a loaded-skill card.
- **Review**: 5. Use the skill by name

### Q7

- **Category**: practical
- **Question**: Where do your global skills live?
- **Options**: A) `~/.kiro/prompts/` | B) `~/.kiro/steering/` | C) `~/my-project/notes/` | D) `~/.kiro/crew/skills/<name>/`
- **Correct**: D
- **Explanation**: Global skills in `~/.kiro/crew/skills/` always load.
- **Review**: 9. Where skills live

### Q8

- **Category**: practical
- **Question**: The agent never uses your skill unless you type `$name`. What should you change?
- **Options**: A) The folder name | B) The `description`, so it says what the skill does and when, in words people really type | C) The scripts folder | D) The approval mode
- **Correct**: B
- **Explanation**: The agent picks a skill from its description, so make it clear and use real words like "pack".
- **Review**: 6. Use the skill by just asking

### Q9

- **Category**: practical
- **Question**: Your skill is skipped. What should you check?
- **Options**: A) That it has a `scripts/` folder | B) That Node.js is installed | C) That `SKILL.md` is saved as UTF-8 and the front matter starts and ends with `---` | D) That the sandbox is `strict`
- **Correct**: C
- **Explanation**: Kiro Crew skips a `SKILL.md` that is not UTF-8 text or has broken front matter.
- **Review**: Common problems

### Q10

- **Category**: practical
- **Question**: On **Customize → Skills**, which button lets you search for and install a skill someone else shared?
- **Options**: A) **Add Skill** | B) **Send to…** | C) **Inject Context** | D) **Probe MCP servers**
- **Correct**: A
- **Explanation**: **Add Skill** lets you search, read a result and click **Install** if you trust it.
- **Review**: 10. Add a skill someone else shared

---

## Module 8: Ask about your own documents

Folder: `08-knowledge-library`

### Q1

- **Category**: conceptual
- **Question**: What is the Knowledge Library?
- **Options**: A) A list of your saved prompts | B) A searchable store of your own documents | C) A folder of skills | D) A backup of your settings
- **Correct**: B
- **Explanation**: The Knowledge Library reads the files you add and lets the agent search them.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: What does **Sync** do for a source?
- **Options**: A) Deletes its stored pieces | B) Copies it to another computer | C) Turns it into memory | D) Reads the source again so the library sees new or changed files
- **Correct**: D
- **Explanation**: Sync reads a source again to pick up new or edited files.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: Does the agent search your Knowledge Library for every question?
- **Options**: A) No, it searches when you point it there, such as "Check my knowledge library:" | B) Yes, always | C) Only on weekends | D) Only for questions about recipes
- **Correct**: A
- **Explanation**: The agent searches your library when you point it there, not for every question.
- **Review**: 3. Ask a question about your files

### Q4

- **Category**: conceptual
- **Question**: You want the agent to know "I am vegetarian." Where should that go?
- **Options**: A) The Knowledge Library | B) A steering file for one folder | C) Memory | D) The Secrets Vault
- **Correct**: C
- **Explanation**: Short facts about you go in memory; documents you already have go in the library.
- **Review**: 7. Knowledge or memory?

### Q5

- **Category**: conceptual
- **Question**: What does **● auto** on a source row mean?
- **Options**: A) The source is read only once | B) Kiro Crew looks for changed files every 5 minutes | C) The source is shared online | D) The source is locked
- **Correct**: B
- **Explanation**: **● auto** means Kiro Crew checks the folder for changed files every 5 minutes.
- **Review**: 2. Add your recipes folder

### Q6

- **Category**: practical
- **Question**: How do you add a folder of notes to the library?
- **Options**: A) **Settings → Secrets → Add secret** | B) **Customize → Prompts → Create New Prompt** | C) **Customize → Connections → Add Custom** | D) **Customize → Knowledge**, **Sources** tab, **+ Add Source**, then **Local Folder**
- **Correct**: D
- **Explanation**: Folders are added on the **Sources** tab of **Customize → Knowledge**.
- **Review**: 2. Add your recipes folder

### Q7

- **Category**: practical
- **Question**: A new source row says **Awaiting confirmation**. What do you do?
- **Options**: A) Remove the source | B) Restart Kiro Crew | C) Click **Confirm** | D) Rename the folder
- **Correct**: C
- **Explanation**: Clicking **Confirm** starts reading the files.
- **Review**: 2. Add your recipes folder

### Q8

- **Category**: practical
- **Question**: How do you search the library yourself without asking the agent?
- **Options**: A) Type `$kb` | B) Type `/kb` and a few words in the message box | C) Type `@kb` | D) Open the Browser panel
- **Correct**: B
- **Explanation**: `/kb` shows matching passages, and you tick the ones you want and click **Inject Context**.
- **Review**: 6. Search the library yourself with /kb

### Q9

- **Category**: practical
- **Question**: Which terminal command counts what the library holds, without changing anything?
- **Options**: A) `kirocrew knowledge stats` | B) `kirocrew restart` | C) `kirocrew snapshot` | D) `kirocrew config get agent.sandbox`
- **Correct**: A
- **Explanation**: `kirocrew knowledge stats` only reads and prints the counts.
- **Review**: 6. Search the library yourself with /kb

### Q10

- **Category**: practical
- **Question**: You click **Remove source** on a row. What happens to your files on disk?
- **Options**: A) They are deleted | B) They move to the vault | C) They become read-only | D) They are not touched
- **Correct**: D
- **Explanation**: Remove source deletes the stored pieces for good, but your files on disk stay as they are.
- **Review**: Common problems

---

## Module 9: Protect your secrets and your files

Folder: `09-protect-secrets-and-files`

### Q1

- **Category**: conceptual
- **Question**: What does the Secrets Vault guard?
- **Options**: A) Your project files | B) Every command line | C) Secret values, so the agent never sees them | D) Your browser history
- **Correct**: C
- **Explanation**: The vault keeps secret values locked away from the agent; it does not guard files on disk.
- **Review**: 1. What each layer guards (lesson 9.1)

### Q2

- **Category**: conceptual
- **Question**: Which layer protects your most important project folder?
- **Options**: A) Git and backups | B) The Process Sandbox | C) The Secrets Vault | D) The approval pill
- **Correct**: A
- **Explanation**: The sandbox and the vault guard credentials, not your project files, so git and backups protect them.
- **Review**: Try it yourself

### Q3

- **Category**: conceptual
- **Question**: Why does git protect your files even when the agent makes a mistake?
- **Options**: A) It stops the agent from deleting files | B) It hides your files from the agent | C) It gets committed files back, whatever the agent or approval mode did | D) It asks you before every change
- **Correct**: C
- **Explanation**: Git restores committed files from the last commit, whatever the agent or approval mode did.
- **Review**: 4. Use git as your safety net (lesson 9.3)

### Q4

- **Category**: conceptual
- **Question**: What does the Process Sandbox guard?
- **Options**: A) Your project folders | B) Credential folders, such as `~/.ssh` and `~/.aws` under **strict** | C) Secret values in the vault | D) Every web page
- **Correct**: B
- **Explanation**: The sandbox hides credential folders; it does not guard your project folders.
- **Review**: 1. What each layer guards (lesson 9.1)

### Q5

- **Category**: conceptual
- **Question**: Which two layers do not depend on the agent choosing to behave?
- **Options**: A) The approval pill and hooks | B) Steering and memory | C) The vault and git | D) Skills and prompts
- **Correct**: C
- **Explanation**: The big idea is to keep secrets in the vault and your files in git.
- **Review**: 1. What each layer guards (lesson 9.1)

### Q6

- **Category**: practical
- **Question**: Where do you store a token so the agent never sees its value?
- **Options**: A) In a text file in your project | B) **Settings → Secrets**, under **Custom secrets**, **Add secret** | C) In a steering file | D) In the chat
- **Correct**: B
- **Explanation**: The **Secrets Vault** page stores the value and only ever shows the name.
- **Review**: 2. Lock a secret in the vault (lesson 9.2)

### Q7

- **Category**: practical
- **Question**: Which terminal command shows the current sandbox setting?
- **Options**: A) `kirocrew knowledge stats` | B) `kirocrew restart` | C) `kirocrew snapshot` | D) `kirocrew config get agent.sandbox`
- **Correct**: D
- **Explanation**: `kirocrew config get agent.sandbox` prints the setting, which is `auto` by default.
- **Review**: 3. Hide credential folders with the sandbox (lesson 9.2)

### Q8

- **Category**: practical
- **Question**: You changed the sandbox setting. What must you do before it takes effect?
- **Options**: A) Open a new chat | B) Reinstall Kiro Crew | C) Commit your files | D) Delete your secrets
- **Correct**: A
- **Explanation**: The sandbox setting applies only to new sessions, so open a new chat.
- **Review**: 3. Hide credential folders with the sandbox (lesson 9.2)

### Q9

- **Category**: practical
- **Question**: The agent deleted your committed `keep-me` folder. Which command brings it back?
- **Options**: A) `kirocrew restart` | B) `git commit -m "undo"` | C) `git -C ~/my-project restore keep-me` | D) `ls -a ~/.ssh`
- **Correct**: C
- **Explanation**: `git restore` brings back a folder from the last commit.
- **Review**: 4. Use git as your safety net (lesson 9.3)

### Q10

- **Category**: practical
- **Question**: After setting the sandbox to `strict`, a signed-in connection stops working. What do you do?
- **Options**: A) Delete the connection | B) Set the sandbox back to `auto` and open a new chat | C) Add a deny pattern | D) Paste the token into the chat
- **Correct**: B
- **Explanation**: `strict` hides the sign-in folder that OAuth connections need.
- **Review**: Common problems

---

## Module 10: Connect your tools

Folder: `10-connections`

### Q1

- **Category**: conceptual
- **Question**: What is an MCP server?
- **Options**: A) A small program, or a web address, that offers tools to the agent | B) A saved prompt | C) A steering file | D) A folder of notes
- **Correct**: A
- **Explanation**: An MCP server offers tools, such as `list_directory`, to the agent.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: What does the entry for a remote server have that a local one does not?
- **Options**: A) A `command` | B) An `args` list | C) A `url` | D) A `SKILL.md`
- **Correct**: C
- **Explanation**: A remote server entry has a `url`; a local server entry has a `command`.
- **Review**: 2. Look at the two kinds of server entry

### Q3

- **Category**: conceptual
- **Question**: What does the status `needs_auth` mean?
- **Options**: A) The server crashed | B) The server took too long | C) You turned it off | D) The server works and wants you to sign in
- **Correct**: D
- **Explanation**: `needs_auth` is not a failure; you just need to sign in.
- **Review**: 4. Read the health badge

### Q4

- **Category**: conceptual
- **Question**: Why might a chat you already had open not see a new tool?
- **Options**: A) Tools only work at night | B) An open chat does not see new tools; you need a restart and a new chat | C) The tool was deleted | D) The sandbox is `auto`
- **Correct**: B
- **Explanation**: New tools appear only after a restart and a new chat.
- **Review**: 5. Use the server in a new chat

### Q5

- **Category**: conceptual
- **Question**: Why should you add local servers only from sources you trust?
- **Options**: A) A local server is a normal program that runs with your rights on your computer | B) They cost money | C) They delete your skills | D) They turn off the vault
- **Correct**: A
- **Explanation**: A local server runs with your rights, so give it the smallest reach it needs.
- **Review**: 7. Keep tokens out of your files

### Q6

- **Category**: practical
- **Question**: Where do you paste your own server's JSON in the dashboard?
- **Options**: A) **Customize → Knowledge → Sources** | B) **Settings → Secrets** | C) **Customize → Connections**, **MCP Servers** tab, **Add Custom** | D) **Customize → Steering**
- **Correct**: C
- **Explanation**: **Add Custom** on the **MCP Servers** tab takes the `mcpServers` block.
- **Review**: 3. Add the file-system server in the dashboard

### Q7

- **Category**: practical
- **Question**: The first probe of a new `npx` server shows **Unknown**. What should you do?
- **Options**: A) Delete the server | B) Reinstall Node.js | C) Set the sandbox to `strict` | D) Probe once more
- **Correct**: D
- **Explanation**: The first `npx` run downloads the server, so probe again.
- **Review**: 4. Read the health badge

### Q8

- **Category**: practical
- **Question**: How should a JSON file point at a token instead of holding it?
- **Options**: A) Paste the token in the `url` | B) Use `${GITHUB_TOKEN}` | C) Put the token in `args` | D) Save the token in a steering file
- **Correct**: B
- **Explanation**: `${NAME}` points at an environment variable, so the file holds no secret.
- **Review**: 7. Keep tokens out of your files

### Q9

- **Category**: practical
- **Question**: How do you end a service's access that you signed in to?
- **Options**: A) Use the card's **Disconnect** | B) Delete the server entry only | C) Close the chat | D) Click **Probe MCP servers**
- **Correct**: A
- **Explanation**: Deleting the server entry alone does not cancel the sign-in; use **Disconnect**.
- **Review**: 6. Connect a ready-made service

### Q10

- **Category**: practical
- **Question**: Two services share a tool name. What does Kiro Crew do?
- **Options**: A) It turns off both | B) It keeps only the newer one | C) It renames both to `<service>_<tool>` | D) It asks you to delete one
- **Correct**: C
- **Explanation**: Shared names become, for example, `github_list_issues`.
- **Review**: Common problems

---

## Module 11: Let it use a website

Folder: `11-browser`

### Q1

- **Category**: conceptual
- **Question**: When do you need the Browser panel instead of a plain page read?
- **Options**: A) To get the text of a public page | B) For a search, a form, a button, or a page that needs a login | C) To read a local file | D) To save a secret
- **Correct**: B
- **Explanation**: Only a real browser can click, type and keep you signed in.
- **Review**: 5. Driving a page or reading it

### Q2

- **Category**: conceptual
- **Question**: Who should type a password on a web page?
- **Options**: A) The agent, from the chat | B) The agent, from a file | C) Nobody | D) You, yourself
- **Correct**: D
- **Explanation**: Anything you send in chat is part of the conversation, so type passwords yourself.
- **Review**: 4. Take over, then hand back

### Q3

- **Category**: conceptual
- **Question**: Why does the Browser panel refuse `localhost` and private network addresses?
- **Options**: A) Your own control pages, including this dashboard, live there | B) Those pages are always empty | C) They are too slow | D) They need Node.js
- **Correct**: A
- **Explanation**: The panel opens public `http://` and `https://` sites only, to keep your control pages safe.
- **Review**: 5. Driving a page or reading it

### Q4

- **Category**: conceptual
- **Question**: What is computer use?
- **Options**: A) The Browser panel under another name | B) A way to read web pages faster | C) A separate, opt-in feature that lets the agent drive desktop apps | D) A sandbox setting
- **Correct**: C
- **Explanation**: Computer use drives desktop apps, not web pages, and is off by default.
- **Review**: 6. Know where computer use lives

### Q5

- **Category**: conceptual
- **Question**: Where is the built-in Browser panel available?
- **Options**: A) In every web browser | B) Only in the Kiro Crew desktop app | C) Only in the terminal | D) Only on Windows
- **Correct**: B
- **Explanation**: Only the desktop app has the built-in Browser panel.
- **Review**: Before you start

### Q6

- **Category**: practical
- **Question**: How do you open the Browser panel beside a chat?
- **Options**: A) In the side panel, click **Open side panel tab** (the **+** button) and choose **Browser** | B) Type `/kb browser` | C) Open **Settings → Secrets** | D) Type `$browser`
- **Correct**: A
- **Explanation**: The Browser panel is a tab in the side panel.
- **Review**: 2. Open the Browser panel

### Q7

- **Category**: practical
- **Question**: You typed the city yourself in the panel. How do you hand control back?
- **Options**: A) Close the panel | B) Restart Kiro Crew | C) Refresh the page | D) Type `done` in the message box
- **Correct**: D
- **Explanation**: Saying "done" tells the agent to carry on.
- **Review**: 4. Take over, then hand back

### Q8

- **Category**: practical
- **Question**: The agent answered without opening the panel. What do you do?
- **Options**: A) Turn on computer use | B) Set the sandbox to `strict` | C) Ask again and say "use the Browser panel" | D) Add a deny pattern
- **Correct**: C
- **Explanation**: Without that hint the agent may use a plain page read.
- **Review**: Common problems

### Q9

- **Category**: practical
- **Question**: Where do you turn on computer use?
- **Options**: A) **Customize → Connections** | B) **Settings → Computer Use → Enable computer use** | C) **Settings → Browser** | D) **Customize → Skills**
- **Correct**: B
- **Explanation**: Computer use is off by default, and you turn it on yourself in Settings.
- **Review**: 6. Know where computer use lives

### Q10

- **Category**: practical
- **Question**: The agent says it is using `playwright-cli`. What does that mean?
- **Options**: A) You are not in the desktop app, so it drives a separate browser; install it from **Settings → Browser** or use the desktop app | B) The vault is broken | C) The page needs a password | D) Your skill was skipped
- **Correct**: A
- **Explanation**: Outside the desktop app there is no built-in panel, so the agent uses a separate browser.
- **Review**: Common problems

---

## Module 12: Get a daily summary

Folder: `12-scheduled-jobs`

### Q1

- **Category**: conceptual
- **Question**: What is a scheduled job?
- **Options**: A) A file the agent writes every morning | B) A message Kiro Crew sends to the agent by itself, at a time you choose | C) A chat that only you can open | D) A backup of your notes folder
- **Correct**: B
- **Explanation**: A scheduled job is a message Kiro Crew sends to the agent by itself, at a time you choose.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: You make a job but do not say a time zone. Which clock does it use?
- **Options**: A) Always your phone's clock | B) The clock of the first person who opens the dashboard | C) Always New York time | D) The time zone in Kiro Crew's settings, or UTC if none is set
- **Correct**: D
- **Explanation**: Without a time zone, Kiro Crew uses the one in its settings, and if none is set, UTC.
- **Review**: 2. Ask for the job

### Q3

- **Category**: conceptual
- **Question**: What happens to a one-time reminder after it runs?
- **Options**: A) It deletes itself | B) It runs again the next day | C) It turns into a weekday job | D) It pauses and waits for you
- **Correct**: A
- **Explanation**: A one-time job runs once, then deletes itself, so its row leaves the Schedule page.
- **Review**: Try it yourself

### Q4

- **Category**: conceptual
- **Question**: You ask a chat "list my jobs" and one job is missing. Why can that happen?
- **Options**: A) The job was deleted by the bell | B) Jobs only show on weekends | C) A chat sees only the jobs it made | D) The job is too long to list
- **Correct**: C
- **Explanation**: The Schedule page lists every job, but a chat sees only the jobs it made.
- **Review**: 4. See the job on the Schedule page

### Q5

- **Category**: conceptual
- **Question**: What does **Prevent sleep while running** do?
- **Options**: A) It wakes a sleeping computer at 8am | B) It keeps your computer awake while a task is running | C) It stops all scheduled jobs | D) It turns off the bell
- **Correct**: B
- **Explanation**: It keeps the computer awake while a task runs; it does not wake a computer that is already asleep.
- **Review**: 8. Keep your computer awake for long runs

### Q6

- **Category**: practical
- **Question**: You made the `morning-notes` job and want to test it now. What do you type in the chat?
- **Options**: A) Trigger the morning-notes job now. | B) Wait until 8am tomorrow. | C) Delete the morning-notes job. | D) Pause the morning-notes job.
- **Correct**: A
- **Explanation**: Asking the agent to trigger the job runs it once, right away.
- **Review**: 3. Test it now

### Q7

- **Category**: practical
- **Question**: On the Schedule page, which button stops `morning-notes` from running at 8am for now, without deleting it?
- **Options**: A) **Run Now** | B) **Save** | C) **Pause** | D) **Executions**
- **Correct**: C
- **Explanation**: **Pause** stops the job from running on schedule until you click **Resume**.
- **Review**: 5. Pause, resume and run it

### Q8

- **Category**: practical
- **Question**: Where do you read a job's run history, with **Status**, **Duration** and **Summary**?
- **Options**: A) In **Settings → Chat → Advanced** | B) On the **Schedule** page, under **Executions** | C) In the `notes` folder | D) In the **Sessions** list
- **Correct**: B
- **Explanation**: The **Executions** view on the **Schedule** page shows one row per run.
- **Review**: 7. Read the run history

### Q9

- **Category**: practical
- **Question**: Which terminal command shows every job and its id?
- **Options**: A) `kirocrew cron add` | B) `kirocrew cron trigger` | C) `kirocrew cron pause` | D) `kirocrew cron list`
- **Correct**: D
- **Explanation**: `cron list` shows every job and its id.
- **Review**: 8. Keep your computer awake for long runs

### Q10

- **Category**: practical
- **Question**: A run shows **Timeout**. What should you do?
- **Options**: A) Shorten the request, or split it into two jobs | B) Change the time zone to UTC | C) Click **Run Now** ten times | D) Turn off the bell
- **Correct**: A
- **Explanation**: A timeout means the job took too long, so make it shorter or split it.
- **Review**: Common problems

---

## Module 13: Tell me when something changes

Folder: `13-monitors`

### Q1

- **Category**: conceptual
- **Question**: You want the agent to watch a pull request on GitHub. Which tool should it use?
- **Options**: A) `wait` | B) `monitor_start` | C) `monitor_watch` | D) `cron_add`
- **Correct**: C
- **Explanation**: `monitor_watch` asks the site directly and wakes the chat only when a new change needs action.
- **Review**: 1. Pick the right tool

### Q2

- **Category**: conceptual
- **Question**: What is a cycle cap?
- **Options**: A) The most cycles a loop may run before it stops | B) A sign that the loop found what it wanted | C) The time between two checks | D) The number of chats you can open
- **Correct**: A
- **Explanation**: The cycle cap is a safety limit, not a sign of success.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: In a timed loop that watches a file, what does a quiet check cost?
- **Options**: A) Nothing, quiet checks are free | B) Only one check per day is charged | C) It deletes the file | D) It still runs a full agent turn and uses credits
- **Correct**: D
- **Explanation**: A quiet check still runs a full agent turn, reads the folder and uses credits.
- **Review**: 2. Start a loop that watches for a file

### Q4

- **Category**: conceptual
- **Question**: How many watches can one chat hold at a time?
- **Options**: A) Unlimited | B) One | C) Three | D) Six
- **Correct**: B
- **Explanation**: A chat holds one watch at a time; a second request is refused.
- **Review**: 6. Stop a loop yourself

### Q5

- **Category**: conceptual
- **Question**: You chat in the same chat while a loop runs. What happens to the loop's timer?
- **Options**: A) It does not reset; a check that comes due waits until your turn ends | B) It resets every time you type | C) The loop stops for good | D) The loop doubles its speed
- **Correct**: A
- **Explanation**: Your own messages do not reset the timer; a due check waits until your turn ends.
- **Review**: 3. Read the loop in the 🎯 goal control

### Q6

- **Category**: practical
- **Question**: A loop is running in your chat and you want it to end. What can you type?
- **Options**: A) `cron list` | B) `trigger that job` | C) `stop checking` | D) `status`
- **Correct**: C
- **Explanation**: Saying `stop checking` in the chat makes the agent end the loop.
- **Review**: 6. Stop a loop yourself

### Q7

- **Category**: practical
- **Question**: Where do you turn on a sound for new alerts?
- **Options**: A) In the 🎯 goal control | B) In the `inbox` folder | C) On the **Schedule** page | D) In **Settings → Notifications**, with **Play sound on new notifications**
- **Correct**: D
- **Explanation**: **Settings → Notifications** holds the banner and sound switches.
- **Review**: 5. Choose how alerts reach you

### Q8

- **Category**: practical
- **Question**: The agent is in a short wait and you want it to stop waiting early. What do you press?
- **Options**: A) **Pause loop** | B) **End wait** | C) **Go to chat** | D) **Max cycles**
- **Correct**: B
- **Explanation**: While it waits, the chat shows an **End wait** button.
- **Review**: 8. A short wait inside one answer

### Q9

- **Category**: practical
- **Question**: Your loop finished but no alert showed in the bell. What should you add to your request?
- **Options**: A) "send me a notification" | B) "say nothing" | C) "at most 6 checks" | D) "every 5 minutes"
- **Correct**: A
- **Explanation**: Asking for a notification puts the alert in the bell.
- **Review**: Common problems

### Q10

- **Category**: practical
- **Question**: You start a pull-request watch without setting limits. What is the longest it runs by default?
- **Options**: A) 5 minutes | B) 30 minutes | C) 4 hours | D) 24 hours
- **Correct**: C
- **Explanation**: The default limits are 5 minutes between checks, 4 hours longest, and 3 site errors in a row.
- **Review**: 7. Watch a pull request the cheap way

---

## Module 14: Reach it from your phone or chat app

Folder: `14-phone-and-chat-apps`

### Q1

- **Category**: conceptual
- **Question**: Why does the Slack setup need no public web address?
- **Options**: A) Slack stores your files for you | B) Socket Mode lets your computer open the connection out | C) The bot runs on your phone | D) Slack copies the dashboard to the internet
- **Correct**: B
- **Explanation**: With Socket Mode your computer connects out, so there is nothing to host.
- **Review**: 1. See how it fits together

### Q2

- **Category**: conceptual
- **Question**: Who can use your Kiro Crew bot on Slack?
- **Options**: A) Everyone in the workspace | B) Any admin | C) Anyone with the app link | D) Only one person: the owner you set
- **Correct**: D
- **Explanation**: The bot acts with your computer's files and accounts, so it answers only its owner.
- **Review**: 1. See how it fits together

### Q3

- **Category**: conceptual
- **Question**: Which token starts with `xapp-`?
- **Options**: A) The app token | B) The bot token | C) The member ID | D) The manifest
- **Correct**: A
- **Explanation**: The app token is for Socket Mode and starts with `xapp-`; the bot token starts with `xoxb-`.
- **Review**: Words to know

### Q4

- **Category**: conceptual
- **Question**: In Slack, what does a new top-level message do?
- **Options**: A) It continues the last chat | B) It stops the agent | C) It starts a new chat | D) It deletes the old thread
- **Correct**: C
- **Explanation**: Reply inside the thread to keep talking; a new top-level message starts a new chat.
- **Review**: 7. Chat from your phone

### Q5

- **Category**: conceptual
- **Question**: Which of these chat apps shows buttons for choices and approvals?
- **Options**: A) iMessage | B) Telegram | C) WhatsApp | D) Feishu
- **Correct**: B
- **Explanation**: Discord, Telegram, Teams and Webex show buttons; the others use text.
- **Review**: 11. Other chat apps

### Q6

- **Category**: practical
- **Question**: Which terminal command prints the one-click link to create your Slack app?
- **Options**: A) `kirocrew doctor` | B) `kirocrew token` | C) `kirocrew restart` | D) `kirocrew manifest --url`
- **Correct**: D
- **Explanation**: `kirocrew manifest --url` prints the same link as **Create Slack app**.
- **Review**: 2. Create your Slack app from the manifest

### Q7

- **Category**: practical
- **Question**: You saved your Slack tokens. What do you run next so the gateway connects?
- **Options**: A) `kirocrew restart` | B) `kirocrew tailnet down` | C) `kirocrew cron list` | D) `kirocrew spawn list`
- **Correct**: A
- **Explanation**: After saving, restart the gateway so it connects to Slack.
- **Review**: 6. Give Kiro Crew the tokens

### Q8

- **Category**: practical
- **Question**: In your app's **Settings → Socket Mode**, the token box is not showing. What do you do?
- **Options**: A) Delete the app and start over | B) Paste the bot token there | C) Turn the switch off, then on again | D) Press **Install to Workspace**
- **Correct**: C
- **Explanation**: Turning the switch off and on opens the box where you make the app token.
- **Review**: 3. Make the app token

### Q9

- **Category**: practical
- **Question**: What do you type in a Slack thread to stop the agent's current turn?
- **Options**: A) `status` | B) `!stop` | C) `sessions` | D) `cron list`
- **Correct**: B
- **Explanation**: `!stop` stops the agent's current turn in that thread.
- **Review**: 7. Chat from your phone

### Q10

- **Category**: practical
- **Question**: **Install to Workspace** is greyed out. Where should you install from?
- **Options**: A) The **Install App** page | B) **Settings → Socket Mode** | C) Your phone's app store | D) **Features → OAuth & Permissions → Install to Workspace**
- **Correct**: D
- **Explanation**: Use the button under **Features → OAuth & Permissions**, not the **Install App** page.
- **Review**: Common problems

---

## Module 15: Many tasks at once

Folder: `15-parallel-helpers`

### Q1

- **Category**: conceptual
- **Question**: What is a helper?
- **Options**: A) A second agent that the main agent starts to do one part of the work | B) A person who reviews your chat | C) A saved copy of your chat | D) A button that makes answers shorter
- **Correct**: A
- **Explanation**: A helper, also called a subagent, does one part of the work for the main agent.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: When is splitting work into helpers worth it?
- **Options**: A) For every request, however small | B) Only when the internet is slow | C) When the work breaks into two or more independent tasks | D) Only for math questions
- **Correct**: C
- **Explanation**: Splitting helps with two or more independent tasks, or when one step would bury the chat in output.
- **Review**: 1. Know when splitting helps

### Q3

- **Category**: conceptual
- **Question**: You ask for two helpers to add 2 and 3. Why might the agent just answer `5`?
- **Options**: A) Helpers cannot do math | B) It has no memory left | C) Helpers only work in the terminal | D) One small task is faster done in one chat
- **Correct**: D
- **Explanation**: Starting a helper takes time, so one small task is faster done in the main chat.
- **Review**: Try it yourself

### Q4

- **Category**: conceptual
- **Question**: Your computer is short on memory when a new helper is asked for. What happens?
- **Options**: A) The helper fails at once | B) The helper waits in a queue and starts when memory frees up | C) The main agent stops | D) All other helpers are cancelled
- **Correct**: B
- **Explanation**: A new helper waits in a queue instead of failing.
- **Review**: 5. Know the limits

### Q5

- **Category**: conceptual
- **Question**: A helper says "done". Is that proof the work is right?
- **Options**: A) No, the main agent should read each result before it reports success | B) Yes, always | C) Yes, if it took under a minute | D) Only if you approve it on your phone
- **Correct**: A
- **Explanation**: A helper saying "done" is not proof; the main agent should check each result.
- **Review**: 5. Know the limits

### Q6

- **Category**: practical
- **Question**: Where do you watch your helpers in the dashboard?
- **Options**: A) On the **Schedule** page | B) In **Settings → Notifications** | C) In the **Sessions** list only | D) In the chat's side panel, on the **Subagents** tab
- **Correct**: D
- **Explanation**: The **Subagents** tab shows one card per helper.
- **Review**: 3. Watch the helpers in the Subagents panel

### Q7

- **Category**: practical
- **Question**: You type "Do you have room to run more helpers right now?" Which tool does the agent use?
- **Options**: A) `spawn_list` | B) `resource_status` | C) `spawn_status` | D) `spawn_run`
- **Correct**: B
- **Explanation**: `resource_status` reports free memory, processor load and how many helpers can run now.
- **Review**: 4. Ask about helpers in plain words

### Q8

- **Category**: practical
- **Question**: Which terminal command starts a helper and gives you your prompt back right away?
- **Options**: A) `kirocrew spawn list` | B) `kirocrew spawn run "List three facts about the Louvre"` | C) `kirocrew spawn run --async "List three facts about the Louvre"` | D) `kirocrew status`
- **Correct**: C
- **Explanation**: `--async` starts the helper without waiting for its answer.
- **Review**: 6. Start a helper from the terminal

### Q9

- **Category**: practical
- **Question**: You want to read a helper's full transcript. About how long is it kept after the helper finishes?
- **Options**: A) About an hour | B) About a minute | C) One week | D) Forever
- **Correct**: A
- **Explanation**: A full transcript is kept for about an hour, so read it then.
- **Review**: 4. Ask about helpers in plain words

### Q10

- **Category**: practical
- **Question**: `kirocrew spawn run` fails to connect. What should you do?
- **Options**: A) Restart your phone | B) Delete the Subagents panel | C) Add more helpers | D) Start the gateway with `kirocrew gateway` in another terminal
- **Correct**: D
- **Explanation**: The gateway is not running, so start it.
- **Review**: Common problems

---

## Module 16: Work while you're away

Folder: `16-task-runner`

### Q1

- **Category**: conceptual
- **Question**: What is the plan in the task runner?
- **Options**: A) A calendar of your meetings | B) The list of steps the task runner makes from your file, before any work starts | C) The final report after a run | D) A backup of your folder
- **Correct**: B
- **Explanation**: The plan is the list of steps made from your task file before work starts.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: Does a task file need a special format?
- **Options**: A) Yes, it must be JSON | B) Yes, it must be named `config.json` | C) Yes, it must be one line long | D) No, any text file works; numbered steps and a "done when" list make the plan better
- **Correct**: D
- **Explanation**: Any text file works, but numbered steps and a **Done when** list help.
- **Review**: 1. Read the task file

### Q3

- **Category**: conceptual
- **Question**: Why must you allow tools ahead of time for a `kirocrew run` in the terminal?
- **Options**: A) Nobody is there to click **Approve**, so tools not allowed ahead of time are refused | B) The terminal cannot write files at all | C) It makes the run faster | D) Slack needs the list
- **Correct**: A
- **Explanation**: A terminal run is unattended, so it refuses any tool you did not allow ahead of time.
- **Review**: 4. Run a task from the terminal

### Q4

- **Category**: conceptual
- **Question**: Why install Kiro Crew as a service?
- **Options**: A) So it runs faster | B) So it can read your email | C) So the gateway starts again after your computer restarts | D) So tasks need no task file
- **Correct**: C
- **Explanation**: Without a service, the gateway stops when the computer restarts.
- **Review**: 5. Keep Kiro Crew running after a restart

### Q5

- **Category**: conceptual
- **Question**: Why does a session ledger survive when old messages are trimmed?
- **Options**: A) It is printed on paper | B) It is saved on disk | C) It lives in Slack | D) It is part of the task file
- **Correct**: B
- **Explanation**: The ledger is saved on disk, so it survives trimming and restarts.
- **Review**: 6. Ask a long chat "where are we?"

### Q6

- **Category**: practical
- **Question**: Which keys open the **Task Runner** page on a Mac?
- **Options**: A) **Option+P** | B) **Option+T** | C) **Cmd+R** | D) **Ctrl+S**
- **Correct**: A
- **Explanation**: Press **Alt+P**, or **Option+P** on a Mac.
- **Review**: 2. Plan the task on the Task Runner page

### Q7

- **Category**: practical
- **Question**: A terminal run stopped halfway and you want to start over from the beginning. Which option do you add?
- **Options**: A) `--no-test` | B) `--name NAME` | C) `--timeout 0` | D) `--fresh`
- **Correct**: D
- **Explanation**: `--fresh` ignores saved progress; without it, the run picks up where it left off.
- **Review**: 4. Run a task from the terminal

### Q8

- **Category**: practical
- **Question**: Which entry should you never add on its own to `hooks.auto_approve_tools`?
- **Options**: A) `"read"` | B) `"fs_write"` | C) `"*"` | D) `"Running: mkdir *"`
- **Correct**: C
- **Explanation**: `"*"` on its own allows every tool, with nobody watching.
- **Review**: 4. Run a task from the terminal

### Q9

- **Category**: practical
- **Question**: `kirocrew run` finished, nothing changed, and the log shows `headless_no_authorization`. What can you do?
- **Options**: A) Delete the task file | B) Add that tool's title pattern to `hooks.auto_approve_tools`, or run the task from the **Task Runner** page | C) Run `kirocrew service uninstall` | D) Turn off your computer's sleep
- **Correct**: B
- **Explanation**: A tool was refused because it was not allowed ahead of time.
- **Review**: Common problems

### Q10

- **Category**: practical
- **Question**: After `kirocrew service install`, which command checks the service?
- **Options**: A) `kirocrew service status` | B) `kirocrew run TASK.md` | C) `kirocrew config edit` | D) `kirocrew spawn list`
- **Correct**: A
- **Explanation**: `kirocrew service status` shows whether the service is set up.
- **Review**: 5. Keep Kiro Crew running after a restart

---

## Module 17: Long jobs that can restart from a step

Folder: `17-workflows`

### Q1

- **Category**: conceptual
- **Question**: When should you pick a workflow over helpers?
- **Options**: A) For one quick look-up | B) For adding two numbers | C) When a step might fail, or you expect to change one step and run again | D) Only when you are on your phone
- **Correct**: C
- **Explanation**: A workflow costs more to set up, so pick it when re-running one step is likely.
- **Review**: 1. Know which tool fits

### Q2

- **Category**: conceptual
- **Question**: You re-run a workflow from step 3. What happens to steps 1 and 2?
- **Options**: A) They are replayed from saved results, with no new model calls | B) They run again from scratch | C) They are deleted | D) They are skipped and lost
- **Correct**: A
- **Explanation**: Earlier steps are replayed from the saved results; only step 3 runs again.
- **Review**: 6. Re-run from step 3 only

### Q3

- **Category**: conceptual
- **Question**: Does a re-run keep the same run id as the first run?
- **Options**: A) Yes, always | B) Yes, unless it fails | C) Only on Mondays | D) No, each re-run gets a new run id, and the first run's record stays
- **Correct**: D
- **Explanation**: Each re-run gets a new run id; the first run's record stays as it was.
- **Review**: 6. Re-run from step 3 only

### Q4

- **Category**: conceptual
- **Question**: A workflow run fails at step 3. What happens to the results of steps 1 and 2?
- **Options**: A) They are thrown away | B) They are kept | C) They are sent to Slack | D) They move to the task runner
- **Correct**: B
- **Explanation**: Even a failed run keeps the results of the steps that worked.
- **Review**: 4. Watch it run

### Q5

- **Category**: conceptual
- **Question**: What is the default time limit for a workflow run?
- **Options**: A) 10 minutes | B) 6 hours | C) One hour (3600 seconds) | D) No limit
- **Correct**: C
- **Explanation**: The default is one hour; it can go up to 6 hours and cannot be turned off.
- **Review**: 8. Know the time limit

### Q6

- **Category**: practical
- **Question**: Where do you watch a workflow's steps as they run?
- **Options**: A) In the chat's side panel, on the **Workflows** tab | B) On the **Schedule** page | C) In **Settings → Notifications** | D) In the `notes` folder
- **Correct**: A
- **Explanation**: The **Workflows** tab, next to **Subagents**, shows each step as it starts and finishes.
- **Review**: 4. Watch it run

### Q7

- **Category**: practical
- **Question**: What do you type in a chat to list your saved workflows?
- **Options**: A) `cron list` | B) `!stop` | C) `sessions` | D) `/workflow`
- **Correct**: D
- **Explanation**: `/workflow` lists your saved workflows; `/workflow <name> [input]` runs one.
- **Review**: 7. Run a saved workflow by name

### Q8

- **Category**: practical
- **Question**: Which command raises the workflow time limit to two hours?
- **Options**: A) `kirocrew run --timeout 7200` | B) `kirocrew config set agent.workflow_run_timeout_secs 7200` | C) `kirocrew service install` | D) `kirocrew spawn run --async`
- **Correct**: B
- **Explanation**: `agent.workflow_run_timeout_secs` sets the limit, and 7200 seconds is two hours.
- **Review**: 8. Know the time limit

### Q9

- **Category**: practical
- **Question**: The agent did your job without a workflow. How should you start your request?
- **Options**: A) With "Use a workflow" | B) With "Use three helpers" | C) With "Trigger that job" | D) With "Every 5 minutes"
- **Correct**: A
- **Explanation**: Starting the request with "Use a workflow" tells the agent what you want.
- **Review**: Common problems

### Q10

- **Category**: practical
- **Question**: Where in the dashboard is the library of saved workflows?
- **Options**: A) **Settings → Chat → Advanced** | B) **Task Runner** | C) **Customize → Workflows** | D) **Settings → Messaging Channels**
- **Correct**: C
- **Explanation**: **Customize → Workflows** creates, edits and runs saved workflows.
- **Review**: 7. Run a saved workflow by name

---

## Module 18: Keep and improve what it made

Folder: `18-artifacts`

### Q1

- **Category**: conceptual
- **Question**: The chart is already saved as an artifact. Why should you star it?
- **Options**: A) A star makes the chart load faster | B) Unstarred automatic entries are cleaned up when there are many of them | C) A star sends the chart to your phone | D) Only starred charts can be opened
- **Correct**: B
- **Explanation**: A star keeps the artifact for good, while unstarred automatic entries can be removed.
- **Review**: 3. Star it so it is kept

### Q2

- **Category**: conceptual
- **Question**: What happens when you revert an artifact to an older version?
- **Options**: A) All newer versions are deleted | B) The artifact is copied into a new chat | C) The artifact goes back to version 1 and the version list is emptied | D) The older version becomes live again, and the revert is saved as a new version
- **Correct**: D
- **Explanation**: A revert never deletes a version; Kiro Crew records it as a new version.
- **Review**: 6. Go back to version 1

### Q3

- **Category**: conceptual
- **Question**: Which chats never keep a widget?
- **Options**: A) Persistent chats | B) Chats in a sidebar folder | C) Incognito and Temporary chats | D) Chats started from the terminal
- **Correct**: C
- **Explanation**: Incognito and Temporary chats leave nothing behind, so they refuse to save a widget.
- **Review**: Before you start

### Q4

- **Category**: conceptual
- **Question**: Can a brand-new chat change an artifact that another chat made?
- **Options**: A) Yes. A kept artifact is not tied to its chat, so any chat can open it by name | B) No. Only the chat that made it can change it | C) Only if you copy the old chat first | D) Only from the terminal
- **Correct**: A
- **Explanation**: Any chat can open a kept artifact by name and change it.
- **Review**: 5. Change it from a new chat

### Q5

- **Category**: conceptual
- **Question**: What is an artifact's slug?
- **Options**: A) Its newest version number | B) The short, fixed name that commands use | C) The chat it came from | D) Its file size
- **Correct**: B
- **Explanation**: A slug is a short, fixed name such as `step-count-chart`.
- **Review**: Words to know

### Q6

- **Category**: practical
- **Question**: Where do you find the artifacts you kept?
- **Options**: A) In **Settings** | B) In the bell menu | C) Click **Artifacts** in the left rail | D) In **Sessions**
- **Correct**: C
- **Explanation**: The **Artifacts** page shows the **Your Artifacts** list.
- **Review**: 4. Find it on the Artifacts page

### Q7

- **Category**: practical
- **Question**: Which terminal command lists your artifacts?
- **Options**: A) `kirocrew list artifacts` | B) `kirocrew artifact show` | C) `kirocrew artifacts` | D) `kirocrew artifact list`
- **Correct**: D
- **Explanation**: `kirocrew artifact list` prints one line per artifact with its slug.
- **Review**: 7. Look from the terminal (optional)

### Q8

- **Category**: practical
- **Question**: `kirocrew artifact show` says the artifact is not found. What is the likely cause?
- **Options**: A) You typed the display name. Use the slug from `kirocrew artifact list` | B) The artifact was starred | C) The chat is Persistent | D) The artifact has too many versions
- **Correct**: A
- **Explanation**: Commands use the slug, not the display name.
- **Review**: Common problems

### Q9

- **Category**: practical
- **Question**: On an artifact's page, how do you get a copy as a download?
- **Options**: A) Press **Iterate** | B) Open **More** and choose **Download** | C) Press **Revert** | D) Click the star
- **Correct**: B
- **Explanation**: The **More** menu holds **Download**.
- **Review**: 8. Get a copy as a download

### Q10

- **Category**: practical
- **Question**: The agent made a new artifact instead of changing the old one. What should you do?
- **Options**: A) Open an Incognito chat | B) Delete the old artifact | C) Name the artifact in quotes and say "save the change to the same artifact" | D) Restart Kiro Crew
- **Correct**: C
- **Explanation**: Naming it clearly tells the agent which artifact to update.
- **Review**: Common problems

---

## Module 19: Named specialists with their own memory

Folder: `19-mates-and-agents`

### Q1

- **Category**: conceptual
- **Question**: What does a mate have that a custom agent does not?
- **Options**: A) A list of tools | B) A name | C) Instructions | D) Its own memory store, a standing chat and goals
- **Correct**: D
- **Explanation**: A custom agent is only a file and uses your default memory.
- **Review**: 19.3 Mate vs custom agent

### Q2

- **Category**: conceptual
- **Question**: Where do you find a mate's chat?
- **Options**: A) Only on the **Mates** page. Mate chats do not appear in **Sessions** | B) In **Sessions**, like every chat | C) In the bell menu | D) On the **Schedule** page
- **Correct**: A
- **Explanation**: Mate chats live only on the **Mates** page.
- **Review**: Common problems

### Q3

- **Category**: conceptual
- **Question**: You turned on **Mates** in one browser. Why is it missing in another browser?
- **Options**: A) Your mates were deleted | B) The switch lives in your browser, so you turn it on there too | C) Mates only work in one browser | D) You need to restart the gateway
- **Correct**: B
- **Explanation**: The preview switch is per device; your mates are kept.
- **Review**: 19.1 Make a mate

### Q4

- **Category**: conceptual
- **Question**: The mate writes down a goal for you. When is it saved?
- **Options**: A) Right away | B) At the next check-in | C) Only when you press the button on its card | D) When you close the chat
- **Correct**: C
- **Explanation**: Nothing is saved until you press the card's button.
- **Review**: 19.2 Give it a goal

### Q5

- **Category**: conceptual
- **Question**: What is a custom agent?
- **Options**: A) A small JSON file with a name, instructions and a list of tools, and no memory of its own | B) A mate with a goal | C) A scheduled job | D) A Feature Preview
- **Correct**: A
- **Explanation**: A custom agent changes how a chat behaves but has no memory store.
- **Review**: Words to know

### Q6

- **Category**: practical
- **Question**: Where do you switch on the **Mates** Feature Preview?
- **Options**: A) **Customize → Mates** | B) **Settings → Security** | C) The **Goals** tab | D) **Settings → Developer → Feature Previews**
- **Correct**: D
- **Explanation**: Mates is a Feature Preview, off until you switch it on there.
- **Review**: 19.1 Make a mate

### Q7

- **Category**: practical
- **Question**: The check-in switches on the **Goals** tab are greyed out. What do you do?
- **Options**: A) Restart the dashboard | B) Give the mate a goal first | C) Make a custom agent | D) Turn on **Heartbeat**
- **Correct**: B
- **Explanation**: A mate needs a goal before check-ins can be switched on.
- **Review**: Common problems

### Q8

- **Category**: practical
- **Question**: Which folder holds custom agent files?
- **Options**: A) `~/my-project/agents/` | B) `~/.kiro/crew/skills/` | C) `~/.kiro/agents/` | D) `~/my-hooks/`
- **Correct**: C
- **Explanation**: A new file in `~/.kiro/agents/` shows up in the dashboard by itself.
- **Review**: 19.3 Mate vs custom agent

### Q9

- **Category**: practical
- **Question**: What do you type in a chat to use the plain-writer custom agent?
- **Options**: A) `/agent plain-writer` | B) `$plain-writer` | C) `/mate plain-writer` | D) `use plain-writer.json`
- **Correct**: A
- **Explanation**: `/agent <name>` picks a custom agent, or you can use the agent picker.
- **Review**: 19.3 Mate vs custom agent

### Q10

- **Category**: practical
- **Question**: Your custom agent asks before every file read. How do you fix that?
- **Options**: A) Remove `fs_read` from `tools` | B) Turn on **Mates** | C) Rename the file | D) Add `fs_read` to `allowedTools`
- **Correct**: D
- **Explanation**: `allowedTools` lists the tools it may use without asking first.
- **Review**: Common problems

---

## Module 20: Your own automatic checks: hooks

Folder: `20-hooks`

### Q1

- **Category**: conceptual
- **Question**: What is a hook?
- **Options**: A) A chat the agent opens by itself | B) A shell command that Kiro Crew runs by itself when an event happens | C) A saved rule in memory | D) A dashboard page
- **Correct**: B
- **Explanation**: A hook is your own script that runs at a fixed event.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: When does the `Stop` event happen?
- **Options**: A) When you send a message | B) After the agent used a tool | C) At the end of each agent turn | D) When Kiro Crew shuts down
- **Correct**: C
- **Explanation**: `Stop` is the event at the end of each agent turn.
- **Review**: Words to know

### Q3

- **Category**: conceptual
- **Question**: What does an empty matcher mean?
- **Options**: A) The hook runs for all calls or messages | B) The hook never runs | C) The hook runs only once | D) The hook runs only in tests
- **Correct**: A
- **Explanation**: A matcher filters which calls a hook runs for, and empty means all of them.
- **Review**: Words to know

### Q4

- **Category**: conceptual
- **Question**: Should you use hooks to stop risky actions?
- **Options**: A) Yes, hooks are the best safety lock | B) Yes, if the matcher is set | C) Only on Linux | D) No. Hooks are not a safety lock. Use the Secrets vault, the sandbox and git
- **Correct**: D
- **Explanation**: The module points to Module 9's layers for safety.
- **Review**: Before you start

### Q5

- **Category**: conceptual
- **Question**: What is a loop guard?
- **Options**: A) A setting that turns hooks off at night | B) A limit you write into a script so it cannot make the agent repeat forever | C) A password for hooks | D) A list of allowed events
- **Correct**: B
- **Explanation**: Without a limit, the agent could keep taking turns, and each turn costs credits.
- **Review**: Words to know

### Q6

- **Category**: practical
- **Question**: A hook ends with exit code `0`. What does that mean?
- **Options**: A) It crashed | B) It timed out | C) It worked | D) It was skipped
- **Correct**: C
- **Explanation**: An exit code of `0` means the program worked.
- **Review**: Words to know

### Q7

- **Category**: practical
- **Question**: **Test Result** shows `Permission denied`. What do you run?
- **Options**: A) `chmod +x ~/my-hooks/*.sh` | B) `ls ~/my-hooks` | C) `bash --version` | D) `cat ~/hook-logs/tool-calls.log`
- **Correct**: A
- **Explanation**: The scripts need to be made runnable.
- **Review**: Common problems

### Q8

- **Category**: practical
- **Question**: You press **Save** on a new hook. When does it turn on?
- **Options**: A) After you press **Test** | B) After a restart | C) The next day | D) As soon as you save it
- **Correct**: D
- **Explanation**: A new hook is on as soon as you save it, so it can run before you test it.
- **Review**: 3. Add a hook that logs tool calls

### Q9

- **Category**: practical
- **Question**: Where are the hooks you add on the Hooks tab stored?
- **Options**: A) `~/my-hooks/hooks.json` | B) `~/.kiro/crew/hooks.json` | C) `~/hook-logs/tool-calls.log` | D) `~/.kiro/agents/`
- **Correct**: B
- **Explanation**: Hooks from this tab are kept in `~/.kiro/crew/hooks.json`.
- **Review**: Going further (expert)

### Q10

- **Category**: practical
- **Question**: A script works in your terminal but fails as a hook. What is a likely reason?
- **Options**: A) Hooks cannot read files | B) Hooks only run on Windows | C) Hooks get only a short list of environment variables, so set others inside the command or use full paths | D) The hook name is too long
- **Correct**: C
- **Explanation**: Hooks get only a few environment variables, such as `PATH` and `HOME`.
- **Review**: Common problems

---

## Module 21: Let another program start a job

Folder: `21-webhooks`

### Q1

- **Category**: conceptual
- **Question**: A program sends a webhook job. Where does the agent's answer go?
- **Options**: A) To your notifications, not back to the caller | B) Back to the caller in the reply | C) Into a new row in **Sessions** | D) Into a file in `~/my-project`
- **Correct**: A
- **Explanation**: The caller gets only "accepted"; the answer goes to the bell.
- **Review**: 1. How a webhook job runs

### Q2

- **Category**: conceptual
- **Question**: Why is there no new chat in **Sessions** after a webhook job?
- **Options**: A) The job failed | B) Webhooks are hidden by default | C) The token was wrong | D) The turn ran in a short-lived session that was thrown away when it ended
- **Correct**: D
- **Explanation**: Webhook turns run in an ephemeral session.
- **Review**: 6. Read the answer in the bell

### Q3

- **Category**: conceptual
- **Question**: Why must you copy a new token right away?
- **Options**: A) It expires in one minute | B) It is shown only once, because Kiro Crew keeps only a fingerprint of it | C) It changes every time you open the page | D) It is sent to everyone
- **Correct**: B
- **Explanation**: Kiro Crew can never show the token again.
- **Review**: 3. Create a source and copy its token

### Q4

- **Category**: conceptual
- **Question**: What does request signing prove?
- **Options**: A) That the caller is fast | B) That the agent is online | C) That the message was not changed, and a copied request cannot be sent again later | D) That the answer is correct
- **Correct**: C
- **Explanation**: The signature is made from the time and the exact body.
- **Review**: 9. Signed requests (for real callers)

### Q5

- **Category**: conceptual
- **Question**: Why keep your webhook token like a password?
- **Options**: A) Anyone who has it can start agent turns on your computer | B) It unlocks your dashboard settings | C) It deletes your data | D) It is your login name
- **Correct**: A
- **Explanation**: Never put the token in a shared file, a chat or a public repository.
- **Review**: Before you start

### Q6

- **Category**: practical
- **Question**: Where do you switch on the **Webhooks** Feature Preview?
- **Options**: A) **Customize → Hooks** | B) **Settings → Developer → Feature Previews** | C) The bell menu | D) **Settings → Secrets**
- **Correct**: B
- **Explanation**: The Webhooks page is a Feature Preview you switch on there.
- **Review**: 2. Turn on the Webhooks preview

### Q7

- **Category**: practical
- **Question**: You send the job with a wrong token. What reply do you see?
- **Options**: A) `{"status": "accepted"}` | B) `source_disabled` | C) `session_busy` | D) `{"error": "unauthorized"}`
- **Correct**: D
- **Explanation**: No token matched, so the call is refused.
- **Review**: 8. Try a wrong token, then a paused source

### Q8

- **Category**: practical
- **Question**: In the POST body, what must `sessionKey` start with?
- **Options**: A) `job:` | B) `build:` | C) `hook:` | D) `session:`
- **Correct**: C
- **Explanation**: The sample uses `hook:build:my-project`.
- **Review**: 5. Send the job

### Q9

- **Category**: practical
- **Question**: You pressed **Turn off** on a source and sent the job again. What code is in the reply?
- **Options**: A) `source_disabled` | B) `unauthorized` | C) `accepted` | D) `hook capacity reached (6)`
- **Correct**: A
- **Explanation**: A paused source is refused, while other sources keep working.
- **Review**: 8. Try a wrong token, then a paused source

### Q10

- **Category**: practical
- **Question**: You lost your webhook token. What do you do?
- **Options**: A) Ask the dashboard to show it again | B) Revoke the source and create a new one | C) Restart Kiro Crew | D) Read it from the Activity tab
- **Correct**: B
- **Explanation**: A token cannot be shown again.
- **Review**: Common problems

---

## Module 22: Build a small app

Folder: `22-apps`

### Q1

- **Category**: conceptual
- **Question**: How much power does an enabled app have?
- **Options**: A) Only what its page needs | B) None until you pin it | C) The same power as Kiro Crew itself, with no separate sandbox | D) It can only read files
- **Correct**: C
- **Explanation**: Only enable apps you trust.
- **Review**: Before you start

### Q2

- **Category**: conceptual
- **Question**: What happens when you disable an app?
- **Options**: A) Its pages, skills and jobs go away, and its data is kept | B) Its data is deleted | C) It is uninstalled | D) Only its sidebar row is hidden
- **Correct**: A
- **Explanation**: `kirocrew app enable` brings it all back.
- **Review**: 10. Turn it off

### Q3

- **Category**: conceptual
- **Question**: What is an app's manifest?
- **Options**: A) Its icon | B) Its built page file | C) Its scheduled job | D) The `app.json` file that lists everything the app brings and what it may do
- **Correct**: D
- **Explanation**: One manifest names every part of the app.
- **Review**: Words to know

### Q4

- **Category**: conceptual
- **Question**: Does pinning an app turn it on or off?
- **Options**: A) Yes, pinning turns it on | B) No. Pinning only shows an enabled app's page in the sidebar | C) Yes, pinning turns it off | D) Pinning uninstalls it
- **Correct**: B
- **Explanation**: Pinning does not turn anything on or off.
- **Review**: Words to know

### Q5

- **Category**: conceptual
- **Question**: Why does Kiro Crew ask you to trust an app you wrote yourself?
- **Options**: A) Your app has an error | B) Your app has no icon | C) Every third-party app, including yours, is blocked until you trust it | D) Apps must be shared first
- **Correct**: C
- **Explanation**: Any app that did not ship with Kiro Crew is third-party.
- **Review**: 7. Trust it and turn it on

### Q6

- **Category**: practical
- **Question**: Which command writes a starter app for you?
- **Options**: A) `kirocrew app init` | B) `kirocrew app install` | C) `kirocrew app dev` | D) `npm run build`
- **Correct**: A
- **Explanation**: `kirocrew app init` writes a scaffold.
- **Review**: 3. See what the scaffold makes

### Q7

- **Category**: practical
- **Question**: In the app's `ui` folder, which command builds the page?
- **Options**: A) `kirocrew app list` | B) `npm start` | C) `kirocrew app enable` | D) `npm run build`
- **Correct**: D
- **Explanation**: The build makes `dist/index.mjs`.
- **Review**: 5. Copy and build it

### Q8

- **Category**: practical
- **Question**: The install is refused and mentions `cron`. What is missing?
- **Options**: A) A `ui` folder | B) `"cron": true` under `permissions` | C) An icon | D) A skill
- **Correct**: B
- **Explanation**: An app with `crons` must ask for the cron permission.
- **Review**: Common problems

### Q9

- **Category**: practical
- **Question**: The morning reminder came at the wrong hour. What do you change?
- **Options**: A) The app's `name` | B) The page route | C) The `timezone` in `app.json` | D) The app's version
- **Correct**: C
- **Explanation**: Without a time zone, 08:00 means 08:00 UTC.
- **Review**: Common problems

### Q10

- **Category**: practical
- **Question**: `kirocrew app enable` is refused for your app. What do you do?
- **Options**: A) Trust the app first, from the **Enable** dialog in **Library** | B) Run `npm install` again | C) Pin the app | D) Delete `app.json`
- **Correct**: A
- **Explanation**: The command refuses an app you have not trusted yet.
- **Review**: Common problems

---

## Module 23: Back up, move, or host it

Folder: `23-backup-and-hosting`

### Q1

- **Category**: conceptual
- **Question**: What is a snapshot?
- **Options**: A) A picture of the dashboard | B) One `.tar.gz` file that holds a copy of your Kiro Crew data | C) A list of settings | D) A second running Kiro Crew
- **Correct**: B
- **Explanation**: A snapshot is ready to restore.
- **Review**: Words to know

### Q2

- **Category**: conceptual
- **Question**: Why store a snapshot like a password?
- **Options**: A) It is encrypted with your password | B) It is very large | C) It can start agent turns | D) It holds every secret the original holds
- **Correct**: D
- **Explanation**: Tokens, keys and private notes are inside it.
- **Review**: Before you start

### Q3

- **Category**: conceptual
- **Question**: Why does this module leave out the `config` component?
- **Options**: A) It holds chat app tokens, so a copy could connect the same bot twice | B) It is too large | C) It cannot be restored | D) It holds your memory
- **Correct**: A
- **Explanation**: Restoring only `memory` and `crons` leaves the copy with no chat app logins.
- **Review**: Before you start

### Q4

- **Category**: conceptual
- **Question**: Which component holds your saved rules (lessons)?
- **Options**: A) `config` | B) `workspace` | C) `memory` | D) `crons`
- **Correct**: C
- **Explanation**: `memory` holds your memory, saved rules and knowledge files.
- **Review**: 2. See what a snapshot can hold

### Q5

- **Category**: conceptual
- **Question**: Does Kiro Crew take snapshots by itself?
- **Options**: A) Yes, every night | B) No. Schedule one if you want regular backups | C) Yes, before every update | D) Only when you close the dashboard
- **Correct**: B
- **Explanation**: You make snapshots yourself or with a scheduled job.
- **Review**: 3. Make a snapshot

### Q6

- **Category**: practical
- **Question**: Which two environment variables let a second Kiro Crew run safely?
- **Options**: A) `HOME` and `PATH` | B) `KIROCREW_TOKEN` and `KIROCREW_PORT` | C) `KIROCREW_HOME` and `KIROCREW_SNAPSHOT` | D) `KIROCREW_HOME` and `KIROCREW_PORT`
- **Correct**: D
- **Explanation**: One gives the copy its own data folder, the other its own port.
- **Review**: 4. Open a terminal for the copy

### Q7

- **Category**: practical
- **Question**: What does `--dry-run` do on `kirocrew restore`?
- **Options**: A) Shows what would be restored and writes nothing | B) Restores everything | C) Deletes the snapshot | D) Starts the gateway
- **Correct**: A
- **Explanation**: It is a preview before the real restore.
- **Review**: 5. Preview the restore

### Q8

- **Category**: practical
- **Question**: Which command shows the parts a snapshot can hold?
- **Options**: A) `kirocrew snapshot --list` | B) `kirocrew config get` | C) `kirocrew restore --list-components` | D) `kirocrew restore --dry-run`
- **Correct**: C
- **Explanation**: It lists components such as `memory` and `crons`.
- **Review**: 2. See what a snapshot can hold

### Q9

- **Category**: practical
- **Question**: You ran `kirocrew update` on a terminal install. What makes the new version live?
- **Options**: A) Nothing, it is live already | B) `kirocrew restart` | C) `kirocrew snapshot` | D) Reloading the dashboard
- **Correct**: B
- **Explanation**: `kirocrew update` never restarts a running gateway by itself.
- **Review**: 11. Keep it up to date

### Q10

- **Category**: practical
- **Question**: Which command shows the dashboard address setting?
- **Options**: A) `kirocrew config set dashboard.url` | B) `kirocrew dashboard` | C) `kirocrew restore --list-components` | D) `kirocrew config get dashboard.url`
- **Correct**: D
- **Explanation**: `kirocrew config get` reads a setting by its key.
- **Review**: 10. Read and change settings

---

## Capstone: My morning desk

Folder: `capstone-morning-desk`

### Q1

- **Category**: conceptual
- **Question**: What wakes the Morning desk mate each weekday?
- **Options**: A) A scheduled job | B) A webhook | C) A hook | D) The steering file
- **Correct**: A
- **Explanation**: A scheduled job wakes the mate each weekday at 8am.
- **Review**: Before you start

### Q2

- **Category**: conceptual
- **Question**: Why does the capstone copy the skill to your home skills folder?
- **Options**: A) Home skills run faster | B) Project folders cannot hold files | C) A skill inside a project folder needs extra trust before it loads | D) Skills must be next to the notes
- **Correct**: C
- **Explanation**: The home copy is simpler.
- **Review**: 3. Install the morning-brief skill

### Q3

- **Category**: conceptual
- **Question**: What is true about a secret stored in **Settings → Secrets**?
- **Options**: A) It is written into your notes | B) The agent can use it but never sees its value | C) It is sent to Slack | D) It is saved in git
- **Correct**: B
- **Explanation**: Never put a key or password in a note.
- **Review**: 5. Keep your desk safe

### Q4

- **Category**: conceptual
- **Question**: Why does the `brief-log.sh` hook need no loop guard?
- **Options**: A) It runs only once a week | B) It has a timeout | C) It uses a matcher | D) It never prints anything, so it cannot make the agent keep going
- **Correct**: D
- **Explanation**: A hook that prints nothing lets the agent stop.
- **Review**: Going further: log each briefing with a hook

### Q5

- **Category**: conceptual
- **Question**: In the daily commit job, what does `|| true` do?
- **Options**: A) It stops the job from failing on days when nothing changed | B) It pushes the commit | C) It deletes old commits | D) It runs the briefing
- **Correct**: A
- **Explanation**: A day with no changes is not treated as a failure.
- **Review**: 5. Keep your desk safe

### Q6

- **Category**: practical
- **Question**: Where does the briefing steering file go?
- **Options**: A) `~/my-desk/notes/` | B) `~/my-desk/.kiro/steering/` | C) `~/.kiro/agents/` | D) `~/my-hooks/`
- **Correct**: B
- **Explanation**: Steering files for a project live in its `.kiro/steering/` folder.
- **Review**: 2. Add the briefing rule

### Q7

- **Category**: practical
- **Question**: How do you add your notes folder to the Knowledge Library?
- **Options**: A) Type `$morning-brief` | B) Open **Artifacts** and press **New folder** | C) Open **Customize → Knowledge**, click **Add Folder** and pick `~/my-desk/notes` | D) Copy the notes to `~/.kiro/crew/skills/`
- **Correct**: C
- **Explanation**: Wait until the folder shows as a source with an item count.
- **Review**: 4. Add your notes to the Knowledge Library

### Q8

- **Category**: practical
- **Question**: How do you test the morning job without waiting for 8am?
- **Options**: A) Restart Kiro Crew | B) Delete and re-add the job | C) Open the bell | D) Find the `morning-desk` job on the **Schedule** page and click **Run now**
- **Correct**: D
- **Explanation**: You can also ask the mate to trigger the job now.
- **Review**: 7. Send it to your phone and the bell

### Q9

- **Category**: practical
- **Question**: What do you type in the mate's thread to run the skill once by hand?
- **Options**: A) `$morning-brief` | B) `/agent morning-brief` | C) `kirocrew cron add` | D) `run briefing.md`
- **Correct**: A
- **Explanation**: The `$` name runs an installed skill.
- **Review**: 3. Install the morning-brief skill

### Q10

- **Category**: practical
- **Question**: The git restore fails with "did not match any file". Why?
- **Options**: A) Git is not installed | B) The file was never committed | C) The steering file is missing | D) The job ran too early
- **Correct**: B
- **Explanation**: Commit before you delete next time.
- **Review**: Common problems
