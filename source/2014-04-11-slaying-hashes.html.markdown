---
title: Slaying Hashes
date: 2014-04-11 02:40 UTC
---
As we move through week 6 of <a href="http://www.galvanize.it/#welcome">gSchool</a>, the pace continues to quicken and the content continues to deepen.
We’ve gone through <a href="http://www.sinatrarb.com/">Sinatra</a> and dove deep into <a href="http://www.postgresql.org/docs/">PostgreSQL</a>.
Instead of shoveling things into empty arrays, we have finally learned how to actually store data.
Of course, being gSchool, we learned it from the ground up and are writing our own configurations and commands.
No Active Record for us until we earn it!

Our instructors were kind to us this week and gave us “autonomy” time to review things we’ve learned so far.
At first, the lack of daily structure was jarring, but with some good discipline and pomodoros,
I’ve been able to reinforce some concepts that we’re a bit fuzzy for me.

Hashes! A hash is pretty easy to understand. It’s a way to store data with a unique key and value relationship.
They’re similar to arrays, except where an array uses an integer as an index, hashes can use any object type.
A hash like {:drink => “beer”} returns “beer” when you call “drink". Puts drink will return beer.

Things, however, start to get crazy when hashes are nested in hashes inside arrays.
These nested hashes are commonly referred to as Ruby Gymnastics!

Nested hashes remind me of the <a href="http://en.wikipedia.org/wiki/Magic_Eye">magic eye</a> pictures that at first seem like a random pattern.
Only after your eyes and brain get in sync do you see the image hidden inside the pattern. Can you see the ice cream cones?

<img src="/images/magic_eye.png">

CRM = {
:people => [
       {
      :id => 3,
      :firstname => "Elyse",
      :lastname => "Jensen",
      :employments =>
        [
          {
            :company_id => 4,
            :title => "Chief Communications Consultant"
          }
        ]
    }
]
}

After spending a lot of time trying to understand what’s happening in the above code,
the image appears and it becomes very clear.  CRM is a hash with people as it’s first key whose value is an array of hashes,
the first of which has a key called id and a value of 3.
The employments key, which is part of this array, has a value which is an array of hashes with a key called company_id and a key called title.
You create do loops to iterate through these to pull out the needed keys and values.
This was completely foreign to me six weeks ago. Now I can honestly say that I own it! And I'm ready for ice cream!

