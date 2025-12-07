@interface SDAHistogramMatrix
- (SDAHistogramMatrix)init;
- (void)enumerateBundleHistogram:(id)histogram;
- (void)getNumAndSizeOfEventsForBundleId:(id)id volType:(int)type residency:(unsigned int)residency reply:(id)reply;
- (void)print;
- (void)upsertBundleID:(id)d volType:(int)type urgency:(int)urgency state:(int)state residency:(unsigned int)residency age:(unint64_t)age size:(unint64_t)size nanoSecSinceUpdate:(unint64_t)self0;
@end

@implementation SDAHistogramMatrix

- (SDAHistogramMatrix)init
{
  v5.receiver = self;
  v5.super_class = SDAHistogramMatrix;
  v2 = [(SDAHistogramMatrix *)&v5 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:50];
    [(SDAHistogramMatrix *)v2 setHistogram:v3];
  }

  return v2;
}

- (void)enumerateBundleHistogram:(id)histogram
{
  histogramCopy = histogram;
  histogram = self->_histogram;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027168;
  v7[3] = &unk_100065710;
  v8 = histogramCopy;
  v6 = histogramCopy;
  [(NSMutableDictionary *)histogram enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)print
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Histogram Begin:", buf, 2u);
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027720;
  v6[3] = &unk_100065738;
  v6[4] = buf;
  [(SDAHistogramMatrix *)self enumerateBundleHistogram:v6];
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v8 + 3);
    *v11 = 134217984;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Histogram End (%zu).", v11, 0xCu);
  }

  _Block_object_dispose(buf, 8);
}

- (void)upsertBundleID:(id)d volType:(int)type urgency:(int)urgency state:(int)state residency:(unsigned int)residency age:(unint64_t)age size:(unint64_t)size nanoSecSinceUpdate:(unint64_t)self0
{
  v11 = *&residency;
  v12 = *&state;
  v13 = *&urgency;
  v14 = *&type;
  histogram = self->_histogram;
  dCopy = d;
  v18 = [(NSMutableDictionary *)histogram objectForKey:dCopy];
  if (!v18)
  {
    v18 = objc_opt_new();
  }

  v19 = v18;
  [v18 updateVolType:v14 residency:v11 urgency:v13 state:v12 age:age size:size nanoSecSinceUpdate:update];
  [(NSMutableDictionary *)self->_histogram setObject:v19 forKey:dCopy];
}

- (void)getNumAndSizeOfEventsForBundleId:(id)id volType:(int)type residency:(unsigned int)residency reply:(id)reply
{
  v6 = *&residency;
  v7 = *&type;
  histogram = self->_histogram;
  replyCopy = reply;
  v11 = [(NSMutableDictionary *)histogram objectForKey:id];
  v12 = v11;
  if (v11)
  {
    [v11 getNumAndSizeOfEventsFor:v7 residency:v6 reply:replyCopy];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0);
  }
}

@end