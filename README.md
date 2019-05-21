# Font Awesome Duotone Desktop experiment

## Some examples of the technology

**Working example in the browser**
http://xerographer.github.io/reinebow/

**Twemoji Color Font**
https://github.com/eosrei/twemoji-color-font

**The tool used to build Twemoji**
https://github.com/13rac1/scfbuild

**Microsoft's Spec**
https://docs.microsoft.com/en-us/typography/opentype/spec/svg

## What I was trying to figure out

With the scfbuild tool I was wondering if we could build a TTF file that could be used in apps like Sketch and Illustrator.

I tested the Twemoji font and it worked well in Illustrator. But here was the real question:

Could I change the color of the icon using Illustrator's native color picker.

## The result

Nope. I was able to build the TTF font file but no matter what I tried it didn't work.

Here are the attempts:

**currentColor**

```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512">
  <defs>
    <style>
      .fa-duotone-secondary{opacity:.3}
    </style>
  </defs>

  <path fill="currentColor" d="M632 32H512v64l124.42-49.35A8 8 0 0 0 632 32zM0 248v56a16 16 0 0 0 16 16h16a16 16 0 0 0 16-16v-56a40 40 0 0 1 40-40h8v-48h-8a88 88 0 0 0-88 88z" class="fa-duotone-secondary"/>
  <path fill="currentColor" d="M535.34 54.8c-3.78-4-8.58-9.12-13.69-14.5 11.06-6.84 19.5-17.49 22.18-30.66A8.09 8.09 0 0 0 535.9 0h-120C346.67 0 288 64 288 128h-.08c-63.92 0-104.2-36.78-127.66-90.27-3.22-7.35-13.61-7.76-17-.5A158.37 158.37 0 0 0 128 105.1c0 67 51 136.25 128 150.9-96.87 0-138.75-73.3-153.39-109a96 96 0 0 0-8.16 147.09l-25.63 68.39a63.94 63.94 0 0 0-2.16 38l24.85 99.41A16 16 0 0 0 107 512h66a16 16 0 0 0 15.52-19.88l-26.33-105.26L186 323.27l102 22.31V496a16 16 0 0 0 16 16h64a16 16 0 0 0 16-16V318.22A111.55 111.55 0 0 0 416 240c0-.22-.07-.42-.08-.64V136.89l16 7.11 18.9 37.7a32 32 0 0 0 40.49 15.37l32.55-13A32 32 0 0 0 544 154.31l-.06-77.71a31.76 31.76 0 0 0-8.6-21.8zM479.92 96a16 16 0 1 1 16-16 16 16 0 0 1-16 16z" class="fa-duotone-primary"/>
</svg>
```

I also tried every combination of `inherit`, `color`, `context-fill`; setting `fill` and `color` as CSS and as properties on the `<path>`. No dice.

## Try it out for yourself

Build the container that has FontForge and FontTools.

```
docker build -t scfbuild -f Dockerfile .
```

Build the font.

```
docker run -it -v `pwd`:/build scfbuild
```

There will be a `FontAwesome.ttf` file in the root of this repository after it runs.
