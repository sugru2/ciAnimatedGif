## ciAnimatedGif
A library for playing back Animated Gifs in Cinder 0.9.0

### Why
Gifs are a common enough format that I am often asked to include them in projects despite the format being pretty old fashioned and not particularly suited to desktop applications.  They are unique in that each frame can have it's own timing between frames. Since there wasn't a simple library I found that could handle this, the block was born.

### Setup
Setup is super easy, simply add the files to your project, or use TinderBox when you set up your project initially.

The code itself is very easy, just load and then draw.  When you call draw, the update will be called automatically.  If you don't want to draw it, feel free to call update manually.

```
ciAnimatedGifRef    mGif;
mGif = ciAnimatedGif::create( loadAsset("someGif.gif") );
mGif->draw();
```

If a gif uses a global palette (which is not guaranteed, but common) you can also access it with `mGif->getPalette();` which will return a `std::vector<ci::Color>`.

See the sample project for use, and check out [http://giflib.sourceforge.net/whatsinagif/bits_and_bytes.html](http://giflib.sourceforge.net/whatsinagif/bits_and_bytes.html) for more information about what is under the hood of a gif.

Find the official spec [here](https://www.w3.org/Graphics/GIF/spec-gif89a.txt).

Icon from [icons8](https://icons8.com/).