--- 
layout: post 
title: VIM, the magic wand for writing text 
date: 2015-07-26 08:00:00 
tags: [ vim ]
thumbnail: /images/vim/togglelists.gif

---

My old programming mentor Pieter Scherpenhuijsen used to joke with me ‘if it
was made after you were born, its probably not very good.” And that does
usually hold true with hardware products. However, it’s the timeless things
that have proven their quality against the test of time over and over again
that truly interest me. Take for example the plethora of books that are well
over a century old which still get referenced today. Sun Tzu’s The Art of War,
for example, was written in 513 BCE. Heck, even Andy Grove's High Output
Management from the 80’s is still pretty relevant even in today’s modern era. 

VIM is one of these ageless things. VIM is a famous tool for editing code, but
only a few know the power it holds for text editing. The greatest thing about
VIM is that you must control every move with your keyboard shortcuts (no
mouse!), which forces your brain to train your muscle memory to become a magic
wand over your text. You only have to think it, and your content has already
changed. VIM is coincidentally also one of the most hated programs of all time
due to its steep learning curve. But for those who love VIM, we love it
vehemently for the power and speed that it brings to our coding. 

### Haters
<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">I&#39;ve
been using Vim for about 2 years now, mostly because I can&#39;t figure out how
to exit it.</p>&mdash; I Am Devloper (@iamdevloper) <a
href="https://twitter.com/iamdevloper/status/435555976687923200">February 17,
2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

### Lovers include Tim O'Reilly and YCombinator's Paul Graham
<blockquote class="twitter-tweet" data-cards="hidden" lang="en"><p lang="en" dir="ltr">30 years on,
Vi/Vim is still one of my all-time favorite computer power tools <a
href="http://t.co/Thz0ChX6eo">http://t.co/Thz0ChX6eo</a> Old dog, can still
learn new tricks</p>&mdash; Tim O&#39;Reilly (@timoreilly) <a
href="https://twitter.com/timoreilly/status/582914712699998210">March 31,
2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


Eventually VIM's keyboard shortcuts will make the distance between your brain's
thought and your screen frictionless so you will see how verbose your monkey-mind
becomes on paper. 

To demonstrate what I mean, I created a few recordings of my favourite VIM
muscle memories.

### Toggle lists to sentences
Just by selecting the text and pressing `,l` I can convert a list of words in a
sentence to a bulleted list, and the other way around. 
I'm doing this with the _TODO_ plugin.

![toggle lists](/images/vim/togglelists.gif)

### Jump to text faster than your mouse. 
With one key all words become listed with a letter, then by pressing that
letter your cursor will jump to that word.
I'm demonstrating it slower than I actually use it. After a while this will be
way faster than leaving your keyboard to use your mouse..

![easymotion plugin](/images/vim/easymotion.gif)

### You can write your own shortcuts to quickly open a reference file
If the shortcuts ever get over your head, or you have other content which is
hard to memorize, you can open them by a keyboard shortcut. For my vim key
bindings reference I used `,er` (where the r stands for Readme).

![quick reference](/images/vim/reference.gif)

### Structure your text in a table format in no-time
This is especially useful with markdown tables (or with declaring hash tables
in your code). [plugin: godlygeek/tabular]


![tabular](/images/vim/tables.gif)

### Highlight the word under the cursor everywhere
With the [interesting words plugin], I can see all references to this word in
my text. 

![highlight interesting words](/images/vim/highlight.gif)

### Then Swap a word with a shortcut
When I'm on the word, I press `c` for change, type `cow`, jump to the next word
with `n`, and hit `.` to repeat my last change on this word. 

![swapping words](/images/vim/swapword.gif)

### It helps Uncover usage problems in your writing
Though it won't help you to with grammar, it will highlight problamatic words.
[plugin: reedes/vim-wordy].

![wordy](/images/vim/wordy.gif)

### Distraction free
Because VIM doesn't have the fancy features to tune the layout of your text,
you're restricted to the purity of your content. No distractions to fiddling
around with the margins or typography. 

## Installation
You don't have to install anything, it already comes pre-installed on every
MacBook, Chromebook, BSD- and Linux install.

## What's next
If you found this useful, you might also enjoy:

- [Overview of possible keystrokes]
- [Seven habits of effective text editing]
- [My vim configuration file]

[My vim configuration file]: https://github.com/riichard/dotfiles/blob/master/vim/vimrc
[plugin: shinokada/listtrans.vim]: https://github.com/shinokada/listtrans.vim
[plugin: godlygeek/tabular]: https://github.com/godlygeek/tabular
[interesting words plugin]: https://github.com/vasconcelloslf/vim-interestingwords 
[plugin: reedes/vim-wordy]: https://github.com/reedes/vim-wordy
[Seven habits of effective text editing]: http://www.moolenaar.net/habits.html
[Overview of possible keystrokes]: http://rayninfo.co.uk/vimtips.html

{% comment %}
- Distraction free
- Works really well with commandline tools requiring long text input
- Works really well with markdown (sync over dropbox to iphone)
- Easy open ,[
- Quickly change a sentence
- Snippets for text templates
- Works great with jekyll
{% endcomment %}

[interesting words]: https://github.com/vasconcelloslf/vim-interestingwords

