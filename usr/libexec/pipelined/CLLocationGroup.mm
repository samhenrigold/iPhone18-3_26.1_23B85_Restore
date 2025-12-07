@interface CLLocationGroup
+ (vector<std::string,)stringVectorFromNSArray:(id)array;
+ (void)storeAverage:(id)average ofVertices:(id)vertices;
- (BOOL)allowCellularDownload:(unint64_t)download;
- (CLLocationGroup)init;
- (CLLocationGroup)initWithGroupId:(id)id locationIds:(id)ids center:(id)center wifiOnlyDownloadLocIdxs:(const void *)idxs locationContext:(int64_t)context andTolerance:(double)tolerance;
- (basic_string<char,)getGroupId;
- (double)distance:(id)distance;
- (id).cxx_construct;
@end

@implementation CLLocationGroup

+ (vector<std::string,)stringVectorFromNSArray:(id)array
{
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v21 = v5;
  v6 = [v5 count];
  if (0xAAAAAAAAAAAAAAABLL * ((retstr->__cap_ - retstr->__begin_) >> 3) < v6)
  {
    if (v6 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v21;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      v10 = 0;
      v22 = v8;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = v11;
        uTF8String = [v11 UTF8String];
        v15 = uTF8String;
        v23 = uTF8String;
        end = retstr->__end_;
        if (end >= retstr->__cap_)
        {
          v19 = sub_10016D27C(retstr, &v23);
        }

        else
        {
          v17 = strlen(uTF8String);
          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_10000D39C();
          }

          v18 = v17;
          if (v17 >= 0x17)
          {
            operator new();
          }

          end[23] = v17;
          if (v17)
          {
            memmove(end, v15, v17);
          }

          end[v18] = 0;
          v19 = end + 24;
          v8 = v22;
        }

        retstr->__end_ = v19;
        objc_autoreleasePoolPop(v12);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return result;
}

- (basic_string<char,)getGroupId
{
  uTF8String = [*(v1 + 16) UTF8String];
  result = strlen(uTF8String);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__rep_.__l + 23) = result;
  if (result)
  {
    result = memmove(retstr, uTF8String, result);
    v5->__rep_.__s.__data_[retstr] = 0;
  }

  else
  {
    retstr->__rep_.__s.__data_[0] = 0;
  }

  return result;
}

+ (void)storeAverage:(id)average ofVertices:(id)vertices
{
  averageCopy = average;
  verticesCopy = vertices;
  v7 = [verticesCopy count];
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = verticesCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          [v15 x];
          v17 = v16;
          [v15 y];
          v19 = v18;
          [v15 z];
          v11 = v11 + v17;
          v12 = v12 + v19;
          v13 = v13 + v20;
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    [averageCopy setFromX:v11 / v7 y:v12 / v7 z:v13 / v7];
  }
}

- (CLLocationGroup)initWithGroupId:(id)id locationIds:(id)ids center:(id)center wifiOnlyDownloadLocIdxs:(const void *)idxs locationContext:(int64_t)context andTolerance:(double)tolerance
{
  idCopy = id;
  idsCopy = ids;
  centerCopy = center;
  v39.receiver = self;
  v39.super_class = CLLocationGroup;
  v18 = [(CLLocationGroup *)&v39 init];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupId, id);
    objc_msgSend_stringVectorFromNSArray_(CLLocationGroup);
    p_begin = &v20->_locationIds.__begin_;
    begin = v20->_locationIds.__begin_;
    if (begin)
    {
      end = v20->_locationIds.__end_;
      v24 = v20->_locationIds.__begin_;
      if (end != begin)
      {
        do
        {
          v25 = *(end - 1);
          end -= 3;
          if (v25 < 0)
          {
            operator delete(*end);
          }
        }

        while (end != begin);
        v24 = *p_begin;
      }

      v20->_locationIds.__end_ = begin;
      operator delete(v24);
      *p_begin = 0;
      v20->_locationIds.__end_ = 0;
      v20->_locationIds.__cap_ = 0;
    }

    *&v20->_locationIds.__begin_ = v37;
    v20->_locationIds.__cap_ = v38;
    v26 = [ECEFCoordinate alloc];
    [centerCopy x];
    v28 = v27;
    [centerCopy y];
    v30 = v29;
    [centerCopy z];
    v32 = [(ECEFCoordinate *)v26 initWithX:v28 y:v30 z:v31];
    centerECEF = v20->_centerECEF;
    v20->_centerECEF = v32;

    v34 = [[GeographicCoordinate alloc] initFromECEFCoordinate:v20->_centerECEF];
    centerLatLon = v20->_centerLatLon;
    v20->_centerLatLon = v34;

    v20->_tolerance = tolerance;
    if (&v19->_wifiOnlyDownloadLocIdxs != idxs)
    {
      sub_10016CF48(&v19->_wifiOnlyDownloadLocIdxs, *idxs, idxs + 1);
    }

    v20->_locationContext = context;
    operator new();
  }

  return 0;
}

- (CLLocationGroup)init
{
  v3 = objc_alloc_init(NSArray);
  v4 = objc_alloc_init(ECEFCoordinate);
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v5 = [(CLLocationGroup *)self initWithGroupId:&stru_10044D120 locationIds:v3 center:v4 wifiOnlyDownloadLocIdxs:&v7 locationContext:0 andTolerance:0.0];
  sub_1000275F4(&v7, v8[0]);

  return v5;
}

- (double)distance:(id)distance
{
  distanceCopy = distance;
  v5 = [ENUCoordinate fromLatLonOrigin:self->_centerLatLon andEcefOrigin:self->_centerECEF andEcefPoint:distanceCopy];
  [v5 east];
  v7 = v6;
  [v5 north];
  v14[0] = v7;
  v14[1] = v8;
  ptr = self->vertices.__ptr_;
  if (*ptr == ptr[1])
  {
    v12 = ptr[3];
    v13 = ptr[4];
    if (v12 == v13)
    {
LABEL_6:
      v17 = &off_10043FEC8;
      v15.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
      v15.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
      v16 = 54;
      sub_10016B3C8(&v17, &v15);
    }

    while (*v12 == *(v12 + 1))
    {
      v12 += 3;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = sub_10016BBBC(v14, ptr, &v15);

  return v10;
}

- (BOOL)allowCellularDownload:(unint64_t)download
{
  left = self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_.__left_;
  p_end_node = &self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v6 = p_end_node;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= download;
    v9 = v7 < download;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v6 == p_end_node || v6[4].__left_ > download)
  {
LABEL_9:
    v6 = p_end_node;
  }

  return v6 == p_end_node;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  *(self + 10) = self + 88;
  return self;
}

@end