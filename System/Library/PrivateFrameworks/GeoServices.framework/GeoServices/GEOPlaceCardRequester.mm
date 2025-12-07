@interface GEOPlaceCardRequester
+ (id)sharedRequester;
- (GEOPlaceCardRequester)init;
@end

@implementation GEOPlaceCardRequester

+ (id)sharedRequester
{
  if (sharedRequester_once != -1)
  {
    dispatch_once(&sharedRequester_once, &__block_literal_global_13036);
  }

  v3 = sharedRequester__singleton;

  return v3;
}

void __40__GEOPlaceCardRequester_sharedRequester__block_invoke()
{
  v0 = objc_alloc_init(GEOPlaceCardRequester);
  v1 = sharedRequester__singleton;
  sharedRequester__singleton = v0;
}

- (GEOPlaceCardRequester)init
{
  v10.receiver = self;
  v10.super_class = GEOPlaceCardRequester;
  v2 = [(GEOPlaceCardRequester *)&v10 init];
  if (v2)
  {
    global_queue = geo_get_global_queue();
    requestQ = v2->_requestQ;
    v2->_requestQ = global_queue;

    v5 = geo_isolater_create();
    isolater = v2->_isolater;
    v2->_isolater = v5;

    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
    pendingRequestConnections = v2->_pendingRequestConnections;
    v2->_pendingRequestConnections = v7;
  }

  return v2;
}

@end