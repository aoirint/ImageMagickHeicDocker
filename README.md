# ImageMagickHeicDocker
Dockerfile to convert HEIC to jpeg/png with ImageMagick

```bash
sudo docker build . -t imagick
sudo docker run -it --rm -v LOCAL_DIR:/docs imagick 
```

```sh
convert  /docs/INPUT.heic /docs/OUTPUT.jpg
convert  /docs/INPUT.heic /docs/OUTPUT.png
```

## Sample HEIC images
- https://github.com/tigranbs/test-heic-images

## Alternatives
- GIMP https://www.gimp.org/
- libheif-examples/heif_convert
  - Ubuntu: https://packages.ubuntu.com/bionic/video/libheif-examples
  - GitHub: https://github.com/strukturag/libheif
