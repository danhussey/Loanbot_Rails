# README

# Features

[-] View basic information of customers who have called (email, name, phone)
[-] View borrowing capacity calculations 
[ ] Allow editing of borrowing capacity basic formula
[ ] Custom greeting message
[ ] Custom name of brokerage / broker and phone number to transfer to 

## Project Journal

### 2024-08-02 DH
Okay I really want to get this finished now, like ASAP. I'm done with it and want to move on to other things. 

So, I think I'm going to do some really harsh feature trimming. Like, get things down to the most basic barebones version I can think of, and leave it be. I'm going to maybe put 'coming soon (or never)' on parts of the site that have had to be pruned or would make sense in a full product but hasn't made it into the current version. 

### 2024-07-13 DH
I'm thinking this makes more sense presented as as suped up answering machine, especially for this mortgage brokerage use case where being high tough and the personal aspect of the calls is actually an integral part. This software should be just like a dashboard and portal for that interactive answering machine maybe, or at least that's a good way of thinking about it.



### 2024-07-10 DH

I haven't written anything about this project yet and I'm a few commits in so I thought I might as well now that I have some thoughts about it.

I started this because I wanted to experiment with Ruby on Rails and RetellAI. I'd heard so much about Rails (and Ruby) and their obsessive philosophical adherence to developer experience, or something like 'joy' of developing. I loved the sound of that, because I had been working in unjoyful languages and frameworks like C# and ASP.NET for a while, which in my opinoin aren't ergonimic at all. 

I was also amazed by the demos I'd seen of how far text to speech AI had come, and the new platform of programmable agents availble to developers with things like Retell.ai out there now.

As for why I started this as a project for real estate brokerage digital agents, that's because I have an only slightly tongue-in-cheek belief that that old phrase about Australia's economy being nothing but 'houses and holes' is quite true, and therefore there might be a market for a project that dealt with one of those sectors. I chose houses! Next time I might choose holes. 

So far I've found rails to indeed be extremely ergonomic in terms of development efficiency and experience. A lot of stuff 'just works', but that may have to do with my experience with the MVC paradigm of web development and the much older school stateful HTML and CSS server sending HTML over the wire like when I first started programming as a kid. Every time I try to pick up technologies like React (the JS ecosystem) I find I don't gel with the paradigm so well, and they leave a lot of stuff not included that I would expect, unlike rails, which so far has included a LOT. Except for maybe built in auth, but that said it's not been too hard so far to build in auth with the devise gem, but that's still incomplete and so remains to be seen.

Anyway, one other major annoyance I've had that keep drawing me back to a JS / React tech stack is the lack of out-of-the-box UI component libraries like TailwindUI or Shadcn. I've just installed PhlexUI into the project, which honestly is great, but it's also incomplete, a very small project, and seems to be flagging a bit. Kudos to its creator and its ongoing contributors, it's great for what it is, and my only complaint was I wish it was a bit more filled out! 

I need to sit down and draw out a few more of the pages, now I think I can potentially cobble together a semi-interactive website using PhlexUI, and potentially Alpine.js with TailwindCSS. At the end of the day though I think I have a SPA designer brain and an oldschool server-side MPA developer brain, which is causing a bit of conflict in the ideation and product part of the project, mainly just in what to present and how to present it.

This project has made me want to try Remix out again (which I already had in a tiny way), which apparently boasts a kind of melding of the simplicity of loading and managing a lot of data stuff server side, while still retaining the versatility and variety of a React 'frontend', which includes the abilit to use component libraries like Shadcn.

The ability to use premade component libraries is important to me when I'm building stuff solo - I do not have the time to be creating a damn design system in the spare hours I have after dinner. Hence my desire to use something like Shadcn, which may force me away from the batteries included aspects that I've loved about rails, as well as the obsession with DX and sensible defaults, towards JS frameworks.