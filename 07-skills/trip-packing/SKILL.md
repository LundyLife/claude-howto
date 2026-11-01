---
name: trip-packing
description: Make a packing checklist for a trip and save it as a file. Use when the user asks for help packing, a packing list, or what to bring on a trip.
---

# Trip packing list

Help the user pack for a trip. Save the result as a checklist file they can tick
off.

## 1. Ask two questions first

If the user has not told you yet, ask both questions in one message, then wait:

1. Where are you going? (A place, or a kind of place such as "the beach" or
   "a city in winter".)
2. How many nights?

Do not guess these. If the user answers only one, ask again for the other.

You may also ask one optional question: "Anything special, such as a wedding,
a hike, or a baby with you?" Skip it if the user wants to be quick.

## 2. Work out the list

Build the list in these groups, in this order:

1. **Documents and money:** ID or passport, tickets, bank card, some cash.
2. **Clothes:** count items from the number of nights. One top and one set of
   underwear per night, plus one spare. Add warm or rain clothes when the place
   is likely to be cold or wet.
3. **Toiletries:** toothbrush, toothpaste, any medicines.
4. **Electronics:** phone charger, and a plug adapter if the trip is abroad.
5. **For this trip:** items that only this trip needs, such as a swimsuit for
   the beach or boots for a hike.

Keep each item short: a few words and, where it helps, a number, such as
"4 pairs of socks".

## 3. Save the checklist

1. Make the folder `~/my-project/packing/` if it does not exist.
2. Save the list as `~/my-project/packing/<place>-<nights>-nights.md`, using
   lowercase and hyphens, for example `beach-3-nights.md`.
3. Write each item as a markdown checkbox: `- [ ] Toothbrush`.
4. Put the group names as `##` headings.

If a file with that name already exists, ask before you replace it.

## 4. Tell the user

Reply with:

- the path of the file you saved,
- how many items it holds,
- one item that is easy to forget for this kind of trip.

Do not paste the whole list into the chat unless the user asks.
