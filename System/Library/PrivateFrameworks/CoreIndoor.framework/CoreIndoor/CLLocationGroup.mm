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

+ (vector<std::string,)stringVectorFromNSArray:(id)array
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v37 = v5;
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);
  if (0xAAAAAAAAAAAAAAABLL * ((retstr->__cap_ - retstr->__begin_) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_245A7B094();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v37;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, &v40, v44, 16);
  if (v16)
  {
    v17 = *v41;
    do
    {
      v18 = 0;
      v38 = v16;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = v19;
        v26 = objc_msgSend_UTF8String(v19, v22, v23, v24, v25);
        v27 = v26;
        v39 = v26;
        end = retstr->__end_;
        if (end >= retstr->__cap_)
        {
          v31 = sub_245A80B28(retstr, &v39);
        }

        else
        {
          v29 = strlen(v26);
          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_245A3C1B4();
          }

          v30 = v29;
          if (v29 >= 0x17)
          {
            operator new();
          }

          end[23] = v29;
          if (v29)
          {
            memmove(end, v27, v29);
          }

          end[v30] = 0;
          v31 = end + 24;
          v16 = v38;
        }

        retstr->__end_ = v31;
        objc_autoreleasePoolPop(v20);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v32, v33, v34, v35, &v40, v44, 16);
    }

    while (v16);
  }

  return result;
}

- (basic_string<char,)getGroupId
{
  v7 = objc_msgSend_UTF8String(*(v1 + 16), v2, v3, v4, v5);
  result = strlen(v7);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v9 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__rep_.__l + 23) = result;
  if (result)
  {
    result = memmove(retstr, v7, result);
    v9->__rep_.__s.__data_[retstr] = 0;
  }

  else
  {
    retstr->__rep_.__s.__data_[0] = 0;
  }

  return result;
}

+ (void)storeAverage:(id)average ofVertices:(id)vertices
{
  v44 = *MEMORY[0x277D85DE8];
  averageCopy = average;
  verticesCopy = vertices;
  v11 = objc_msgSend_count(verticesCopy, v7, v8, v9, v10);
  if (v11)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = verticesCopy;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v39, v43, 16);
    if (v18)
    {
      v22 = *v40;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v27 = *(*(&v39 + 1) + 8 * i);
          objc_msgSend_x(v27, v17, v19, v20, v21, v39);
          v29 = v28;
          objc_msgSend_y(v27, v30, v28, v31, v32);
          v34 = v33;
          objc_msgSend_z(v27, v35, v33, v36, v37);
          v23 = v23 + v29;
          v24 = v24 + v34;
          v25 = v25 + v19;
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, v19, v20, v21, &v39, v43, 16);
      }

      while (v18);
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
    }

    objc_msgSend_setFromX_y_z_(averageCopy, v38, v23 / v11, v24 / v11, v25 / v11);
  }
}

- (CLLocationGroup)initWithGroupId:(id)id locationIds:(id)ids center:(id)center wifiOnlyDownloadLocIdxs:(const void *)idxs locationContext:(int64_t)context andTolerance:(double)tolerance
{
  idCopy = id;
  idsCopy = ids;
  centerCopy = center;
  v58.receiver = self;
  v58.super_class = CLLocationGroup;
  v18 = [(CLLocationGroup *)&v58 init];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupId, id);
    objc_msgSend_stringVectorFromNSArray_(CLLocationGroup, v21, v22, v23);
    p_begin = &v20->_locationIds.__begin_;
    begin = v20->_locationIds.__begin_;
    if (begin)
    {
      end = v20->_locationIds.__end_;
      v27 = v20->_locationIds.__begin_;
      if (end != begin)
      {
        do
        {
          v28 = *(end - 1);
          end -= 3;
          if (v28 < 0)
          {
            operator delete(*end);
          }
        }

        while (end != begin);
        v27 = *p_begin;
      }

      v20->_locationIds.__end_ = begin;
      operator delete(v27);
      *p_begin = 0;
      v20->_locationIds.__end_ = 0;
      v20->_locationIds.__cap_ = 0;
    }

    *&v20->_locationIds.__begin_ = v56;
    v20->_locationIds.__cap_ = v57;
    v29 = [ECEFCoordinate alloc];
    objc_msgSend_x(centerCopy, v30, v31, v32, v33);
    v35 = v34;
    objc_msgSend_y(centerCopy, v36, v34, v37, v38);
    v40 = v39;
    objc_msgSend_z(centerCopy, v41, v39, v42, v43);
    v46 = objc_msgSend_initWithX_y_z_(v29, v44, v35, v40, v45);
    centerECEF = v20->_centerECEF;
    v20->_centerECEF = v46;

    v48 = [GeographicCoordinate alloc];
    v53 = objc_msgSend_initFromECEFCoordinate_(v48, v49, v50, v51, v52, v20->_centerECEF);
    centerLatLon = v20->_centerLatLon;
    v20->_centerLatLon = v53;

    v20->_tolerance = tolerance;
    if (&v19->_wifiOnlyDownloadLocIdxs != idxs)
    {
      sub_245A32258(&v19->_wifiOnlyDownloadLocIdxs, *idxs, idxs + 1);
    }

    v20->_locationContext = context;
    operator new();
  }

  return 0;
}

- (CLLocationGroup)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = objc_alloc_init(ECEFCoordinate);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v8 = objc_msgSend_initWithGroupId_locationIds_center_wifiOnlyDownloadLocIdxs_locationContext_andTolerance_(self, v5, 0.0, v6, v7, &stru_2858A1A60, v3, v4, &v10, 0);
  sub_245A312EC(&v10, v11[0]);

  return v8;
}

- (double)distance:(id)distance
{
  distanceCopy = distance;
  v9 = objc_msgSend_fromLatLonOrigin_andEcefOrigin_andEcefPoint_(ENUCoordinate, v5, v6, v7, v8, self->_centerLatLon, self->_centerECEF, distanceCopy);
  objc_msgSend_east(v9, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_north(v9, v16, v14, v17, v18);
  v25[0] = v15;
  v25[1] = v19;
  ptr = self->vertices.__ptr_;
  if (*ptr == ptr[1])
  {
    v23 = ptr[3];
    v24 = ptr[4];
    if (v23 == v24)
    {
LABEL_6:
      v28 = &unk_2858A0110;
      v26.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
      v26.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
      v27 = 54;
      sub_245A7F67C(&v28, &v26);
    }

    while (*v23 == *(v23 + 1))
    {
      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_6;
      }
    }
  }

  v21 = sub_245A39D8C(v25, ptr);

  return v21;
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

@end