# https://github.com/perkeep/perkeep/issues/1108#issuecomment-383721528                                                                                                                                            
FROM alpine:3.7

RUN apk add --no-cache git alpine-sdk automake autoconf libtool libjpeg-turbo-dev libpng-dev

# https://github.com/strukturag/libde265
# 924f77963a6038e21e684f17ef86a6787f9b1636
RUN cd /tmp && git clone https://github.com/strukturag/libde265.git && cd libde265 && ./autogen.sh && ./configure && make install

# https://github.com/strukturag/libheif
# b29666747b4be5fcaf3f17a551ed5c2fd596872b
RUN cd /tmp && git clone https://github.com/strukturag/libheif.git && cd libheif && ./autogen.sh && ./configure && make install

# https://github.com/ImageMagick/ImageMagick
# 686541e8f1cce1aedcc1ce6d8225e9345b3a6d3b
RUN cd /tmp && git clone https://github.com/ImageMagick/ImageMagick.git && cd ImageMagick && ./configure --with-heic=yes --with-jpeg=yes --with-png=yes && make && make install
