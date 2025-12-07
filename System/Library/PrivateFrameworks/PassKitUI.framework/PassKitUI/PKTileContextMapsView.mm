@interface PKTileContextMapsView
+ (id)createForMapsPlaceID:(id)d caption:(id)caption;
- (PKTileContextMapsView)init;
@end

@implementation PKTileContextMapsView

+ (id)createForMapsPlaceID:(id)d caption:(id)caption
{
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = sub_1BE052434();
  v9 = v8;
  v10 = _s9PassKitUI23TileContextMapsViewHostC9createFor11mapsPlaceID7captionSo6UIViewCSS_SStFZ_0(v4, v6, v7, v8);
  v6, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;

  return v10;
}

- (PKTileContextMapsView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextMapsViewHost();
  return [(PKTileContextMapsView *)&v3 init];
}

@end