@interface GEOPlaceDataItem
@end

@implementation GEOPlaceDataItem

void __34___GEOPlaceDataItem_addressObject__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 128))
  {
    v4 = [GEOAddressObject addressObjectForPlaceData:*(v2 + 24)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;
  }
}

void __25___GEOPlaceDataItem_name__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 136))
  {
    v4 = [*(v2 + 24) bestName];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;
  }
}

void __46___GEOPlaceDataItem__placeDataStyleAttributes__block_invoke(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [(GEOPDComponentValue *)a2 styleAttributes];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void __42___GEOPlaceDataItem__allPhotoAttributions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[24];
  if (!v3)
  {
    [v2 _refreshPhotoAttributions];
    v3 = *(*(a1 + 32) + 192);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

void __46___GEOPlaceDataItem__placeDataStyleAttributes__block_invoke_2(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [(GEOPDComponentValue *)a2 entity];
  v6 = [v5 styleAttributes];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a3 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void __31___GEOPlaceDataItem__venueInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 112))
  {
    v4 = [GEOPDVenueInfo venueInfoForPlaceData:*(v2 + 24)];
    if (v4)
    {
      v8 = v4;
      v5 = [[GEOMapItemVenueInfo alloc] initWithVenueInfo:v4];
      v6 = *(a1 + 32);
      v7 = *(v6 + 112);
      *(v6 + 112) = v5;

      v4 = v8;
    }
  }
}

void __27___GEOPlaceDataItem__place__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 80))
  {
    v4 = [GEOPlace placeForPlaceData:*(v2 + 24)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;
  }
}

void __31___GEOPlaceDataItem__placeType__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 144))
  {
    v4 = [GEOPDEntity entityForPlaceData:*(v2 + 24)];
    *(*(a1 + 32) + 144) = _MapItemPlaceTypeForPDPlaceType([v4 type]);
  }
}

void __29___GEOPlaceDataItem_timezone__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DFE8]);
    v4 = [GEOPDPlaceInfo placeInfoForPlaceData:*(*(a1 + 32) + 24)];
    v5 = [(GEOPDPlaceInfo *)v4 timezone];
    v6 = [(GEOTimezone *)v5 identifier];
    v7 = [v3 initWithName:v6];
    v8 = *(a1 + 32);
    v9 = *(v8 + 208);
    *(v8 + 208) = v7;

    v2 = *(*(a1 + 32) + 208);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v2);
}

@end