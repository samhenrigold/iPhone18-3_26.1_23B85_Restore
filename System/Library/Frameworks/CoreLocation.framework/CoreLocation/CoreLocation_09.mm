void sub_19B99EC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x238])
  {
    sub_19B8750F8(STACK[0x238]);
  }

  a65 = &a49;
  sub_19B8F0E84(&a65);
  if (a40)
  {
    sub_19B8750F8(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B99EE80(std::string *a1, const std::string *a2)
{
  v2 = a2;
  v3 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2->__r_.__value_.__l.__size_;
  }

  if (size != v6)
  {
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    a1 = a1->__r_.__value_.__r.__words[0];
  }

  if (v7 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(a1, a2, size);
  if (result)
  {
LABEL_12:
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v9 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v10 = v3;
      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        v10 = v3->__r_.__value_.__r.__words[0];
      }

      if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = v2->__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v10;
      v28 = 2082;
      v29 = v11;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLTSP,reset routebuilder,prevTrip,%{public}s,newTrip,%{public}s", buf, 0x16u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v13 = v3;
      if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
      {
        v13 = v3->__r_.__value_.__r.__words[0];
      }

      if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = v2->__r_.__value_.__r.__words[0];
      }

      v23 = 136446466;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,reset routebuilder,prevTrip,%{public}s,newTrip,%{public}s", &v23, 22);
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::reset(const std::string &)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    std::string::operator=(v3, v2);
    data = v3[1].__r_.__value_.__l.__data_;
    v20 = v3[1].__r_.__value_.__l.__size_;
    while (v20 != data)
    {
      v20 -= 24;
      *buf = v20;
      sub_19B8F0E84(buf);
    }

    v3[1].__r_.__value_.__l.__size_ = data;
    v22 = v3[2].__r_.__value_.__l.__data_;
    for (i = v3[2].__r_.__value_.__l.__size_; i != v22; sub_19B9A3DF8(i))
    {
      i -= 10;
    }

    v3[2].__r_.__value_.__l.__size_ = v22;
    v3[3].__r_.__value_.__r.__words[0] = 0;
    return objc_msgSend_removeAllObjects(v3[5].__r_.__value_.__l.__data_, v16, v17, v18);
  }

  return result;
}

const char *sub_19B99F158(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, a3, a4);
  if (objc_msgSend_valueForKey_(v6, v7, a1, v8))
  {
    v12 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v9, v10, v11);
    v15 = objc_msgSend_BOOLForKey_(v12, v13, a1, v14);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v16 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = a1;
      v31 = 1026;
      v32 = a2;
      v33 = 1026;
      v34 = v15;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", buf, 0x18u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v23 = 138543874;
      v24 = a1;
      v25 = 1026;
      v26 = a2;
      v27 = 1026;
      v28 = v15;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,userDefaults read for key,%{public}@,defaultValue,%{public}d,readValue,%{public}d", &v23, 24);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getUserDefaultsBoolForKey(NSString * _Nonnull, const BOOL)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = a1;
      v31 = 1026;
      v32 = a2;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", buf, 0x12u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v23 = 138543618;
      v24 = a1;
      v25 = 1026;
      v26 = a2;
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,userDefaults not found for key,%{public}@,defaultValue,%{public}d", &v23, 18);
      sub_19B885924("Generic", 1, 0, 2, "static BOOL CLTripSegmentUtilities::getUserDefaultsBoolForKey(NSString * _Nonnull, const BOOL)", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    return a2;
  }

  return v15;
}

uint64_t sub_19B99F500(uint64_t a1, char *a2)
{
  std::mutex::lock(a1);
  if (sub_19B95D1AC(a1, a2) && (v8 = a2, v4 = sub_19B95D310((a1 + 64), a2, &unk_19BA897F0, &v8, &v7), sub_19B9A348C((v4[7] + 32))))
  {
    sub_19B95E280(a1, a2, 4);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  std::mutex::unlock(a1);
  return v5;
}

BOOL sub_19B99F5B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v9 = a4;
  v11 = a3;
  v75 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a2, a2, a3, a4) <= a3)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v34 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEFAULT, "CLTSP,locationIndex over number of entries in sparseLocations", buf, 2u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v73[0] = 0;
      v36 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 0, "CLTSP,locationIndex over number of entries in sparseLocations", v73, 2);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentUtilities::CLGPSFixTracker::canUseThisFix(NSArray<CLTripSegmentLocation *> * _Nonnull, int, const double, const BOOL, const double, const double)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    return 0;
  }

  else
  {
    v16 = v11;
    v17 = objc_msgSend_objectAtIndexedSubscript_(a2, v14, v11, v15);
    v21 = objc_msgSend_timestamp(v17, v18, v19, v20);
    objc_msgSend_timeIntervalSinceReferenceDate(v21, v22, v23, v24);
    v26 = v25;
    if (objc_msgSend_isGPSLocationType(v17, v27, v28, v29))
    {
      *a1 = v26;
      *(a1 + 8) = v17;
      return 1;
    }

    else
    {
      v37 = vabdd_f64(v26, *a1);
      v38 = *a1 > 0.0 && v37 < a5;
      if (v38 || *a1 > 0.0 && (v37 >= 0.0 ? (v39 = v37 < a6) : (v39 = 0), v39 && (objc_msgSend_distanceFromLocation_(v17, v30, *(a1 + 8), v32), v40 < a7)))
      {
        v41 = 1;
      }

      else
      {
        do
        {
          if (objc_msgSend_count(a2, v30, v31, v32) <= ++v16)
          {
            v41 = 0;
            return !v41;
          }

          v44 = objc_msgSend_objectAtIndexedSubscript_(a2, v42, v16, v43);
          if (v9)
          {
            isGoodGPSFixWithGoodCourse = objc_msgSend_isGoodGPSFixWithGoodCourse(v44, v45, v46, v47);
          }

          else
          {
            isGoodGPSFixWithGoodCourse = objc_msgSend_isGoodGPSFix(v44, v45, v46, v47);
          }

          v51 = isGoodGPSFixWithGoodCourse;
          v52 = objc_msgSend_objectAtIndexedSubscript_(a2, v49, v16, v50);
        }

        while (!objc_msgSend_isGPSLocationType(v52, v53, v54, v55) || !v51);
        v56 = objc_msgSend_objectAtIndexedSubscript_(a2, v30, v16, v32);
        v60 = objc_msgSend_timestamp(v56, v57, v58, v59);
        objc_msgSend_timeIntervalSinceReferenceDate(v60, v61, v62, v63);
        v67 = vabdd_f64(v26, v66);
        v41 = v67 < a5;
        if (v67 < a6 && v67 >= a5)
        {
          v69 = objc_msgSend_objectAtIndexedSubscript_(a2, v64, v16, v65);
          objc_msgSend_distanceFromLocation_(v17, v70, v69, v71);
          v41 = v72 < a7;
        }
      }

      return !v41;
    }
  }
}

uint64_t sub_19B99F8CC(uint64_t a1, int a2, double *a3, std::__shared_weak_count *a4, uint64_t ****a5, uint64_t **a6, __int128 **a7, void ***a8)
{
  v176 = *MEMORY[0x1E69E9840];
  if (*a6 == a6[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v26 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLTSP,generateAndCombineRoute,empty snap vector,runIndex,%{public}d", buf, 8u);
    }

    v27 = sub_19B87DD40();
    if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v169 = 67240192;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,generateAndCombineRoute,empty snap vector,runIndex,%{public}d", v169, 8);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v28);
LABEL_50:
    if (v28 != buf)
    {
      free(v28);
    }

    return 0;
  }

  v8 = **a6;
  if (!v8)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v29 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,generateAndCombineRoute,null front snap,runIndex,%{public}d", buf, 8u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v169 = 67240192;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,generateAndCombineRoute,null front snap,runIndex,%{public}d", v169, 8);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v28);
    goto LABEL_50;
  }

  v10 = a6;
  v12 = *(v8 + 16);
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *a8;
  for (i = a8[1]; i != v14; sub_19B9A3DF8(i))
  {
    i -= 10;
  }

  a8[1] = v14;
  v142 = a5;
  if (*a5 == a5[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v31 = a4;
    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty lastSnapVectorPointer", buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      *v169 = 134349056;
      *&v169[4] = v12;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty lastSnapVectorPointer", v169, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v34);
      goto LABEL_74;
    }

LABEL_76:
    v37 = 0;
    if (!v31)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (*v10 == v10[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v31 = a4;
    v35 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty crntSnapVectorPointer", buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      *v169 = 134349056;
      *&v169[4] = v12;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,null or empty crntSnapVectorPointer", v169, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v34);
LABEL_74:
      if (v34 != buf)
      {
        free(v34);
      }

      goto LABEL_76;
    }

    goto LABEL_76;
  }

  v170 = 0;
  v174 = 0;
  memset(v169, 0, 36);
  v173 = 0;
  v172 = 0;
  v171 = *(a1 + 129);
  if (*(a1 + 128) == 1)
  {
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = &buf[8];
    if (v15 == v16)
    {
      v25 = 0;
    }

    else
    {
      v149 = v10;
      do
      {
        v17 = v15[1];
        if (*v15 != v17)
        {
          v18 = *(v17 - 16);
          if (v18)
          {
            v19 = *(v18 + 48);
            v20 = *(v18 + 56);
            while (v19 != v20)
            {
              v21 = *v19;
              if (*v19)
              {
                for (j = *a5; j != a5[1]; j += 2)
                {
                  v23 = *j;
                  if (*j)
                  {
                    v24 = *v23;
                    if (*v23)
                    {
                      if (*v24 == *v21 && v24[1] == v21[1])
                      {
                        operator new();
                      }
                    }
                  }
                }
              }

              v19 += 2;
            }
          }
        }

        v15 += 10;
      }

      while (v15 != v16);
      v25 = v163;
      v10 = v149;
    }

    v164 = v25;
    v66 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        sub_19B8EAB68(&v163, v66 + 3);
        v67 = *(v66 + 1);
        if (v67)
        {
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67);
        }

        else
        {
          do
          {
            v68 = *(v66 + 2);
            v111 = *v68 == v66;
            v66 = v68;
          }

          while (!v111);
        }

        v66 = v68;
      }

      while (v68 != &buf[8]);
    }

    sub_19B9A4348(*&buf[8]);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v69 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v70 = (a5[1] - *a5) >> 4;
      *buf = 134349568;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *&buf[14] = v70;
      *&buf[22] = 2050;
      *&buf[24] = (v164 - v163) >> 4;
      _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generatedPreferredSnap,allCount,%{public}lu,preferredCount,%{public}lu", buf, 0x20u);
    }

    v71 = sub_19B87DD40();
    if (*(v71 + 160) > 1 || *(v71 + 164) > 1 || *(v71 + 168) > 1 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v72 = (a5[1] - *a5) >> 4;
      LODWORD(v166[0]) = 134349568;
      *(v166 + 4) = v12;
      WORD2(v166[1]) = 2050;
      *(&v166[1] + 6) = v72;
      HIWORD(v166[2]) = 2050;
      v167[0] = (v164 - v163) >> 4;
      v73 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generatedPreferredSnap,allCount,%{public}lu,preferredCount,%{public}lu", v166, 32);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    v74 = v163;
    v75 = v164;
    if (v163 != v164)
    {
      v162[0] = a3;
      v162[1] = a4;
      if (a4)
      {
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B9A1C30(a1, v162, v74, v75, v10, v12);
      if (a4)
      {
        sub_19B8750F8(a4);
        v160 = a3;
        v161 = a4;
        atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v160 = a3;
        v161 = 0;
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9A26B0(qword_1EAFE5B10, a1, &v158);
      sub_19B9ACFD0(v169, &v160, &v158, &v163, v10, a7);
      if (v159)
      {
        sub_19B8750F8(v159);
      }

      if (v161)
      {
        sub_19B8750F8(v161);
      }
    }

    *buf = &v163;
    sub_19B8F0E84(buf);
  }

  if (*a7 == a7[1])
  {
    if (*(a1 + 128) == 1)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v76 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v12;
        _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates using preferred snaps, generating using all", buf, 0xCu);
      }

      v77 = sub_19B87DD40();
      if (*(v77 + 160) > 1 || *(v77 + 164) > 1 || *(v77 + 168) > 1 || *(v77 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        LODWORD(v166[0]) = 134349056;
        *(v166 + 4) = v12;
        v78 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates using preferred snaps, generating using all", v166, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v78);
        if (v78 != buf)
        {
          free(v78);
        }
      }
    }

    v157[0] = a3;
    v157[1] = a4;
    if (a4)
    {
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9A1C30(a1, v157, *a5, a5[1], v10, v12);
    if (a4)
    {
      sub_19B8750F8(a4);
      v155 = a3;
      v156 = a4;
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v155 = a3;
      v156 = 0;
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9A26B0(qword_1EAFE5B10, a1, &v153);
    sub_19B9ACFD0(v169, &v155, &v153, a5, v10, a7);
    if (v154)
    {
      sub_19B8750F8(v154);
    }

    if (v156)
    {
      sub_19B8750F8(v156);
    }
  }

  v79 = a7[1];
  v138 = *a7 != v79;
  if (*a7 == v79)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v126 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v12;
      _os_log_impl(&dword_19B873000, v126, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates", buf, 0xCu);
    }

    v127 = sub_19B87DD40();
    if (*(v127 + 160) > 1 || *(v127 + 164) > 1 || *(v127 + 168) > 1 || *(v127 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      LODWORD(v166[0]) = 134349056;
      *(v166 + 4) = v12;
      v128 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateRouteCandidatesForOneSegment,unable to generate route candidates", v166, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateRouteCandidatesForOneSegment(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLRouteCandidateVector> &, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v128);
      if (v128 != buf)
      {
        free(v128);
      }
    }
  }

  else
  {
    v81 = *(a1 + 48);
    v80 = *(a1 + 56);
    if (v81 != v80)
    {
      v140 = *(a1 + 56);
      do
      {
        v82 = v81[1];
        if (*v81 != v82)
        {
          v83 = *(v82 - 16);
          if (v83)
          {
            v85 = *(v83 + 48);
            v84 = *(v83 + 56);
            if (v85 != v84)
            {
              v86 = *(v84 - 8);
              v152[0] = *(v84 - 16);
              v152[1] = v86;
              if (v86)
              {
                atomic_fetch_add_explicit((v86 + 8), 1uLL, memory_order_relaxed);
              }

              v141 = v86;
              v88 = *a7;
              v87 = a7[1];
              v146 = v87;
              if (*a7 != v87)
              {
                do
                {
                  v89 = *v88;
                  if (*v88)
                  {
                    v91 = *(v89 + 48);
                    v90 = *(v89 + 56);
                    if (v91 != v90)
                    {
                      v93 = *v91;
                      v92 = *(v91 + 8);
                      v151[0] = v93;
                      v151[1] = v92;
                      if (v92)
                      {
                        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                        v90 = *(v89 + 56);
                      }

                      v150 = v92;
                      v94 = *(v90 - 8);
                      if (v94)
                      {
                        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
                        v90 = *(v89 + 56);
                      }

                      v148 = v94;
                      v95 = *(v89 + 48);
                      v96 = (v90 - v95) >> 4;
                      v97 = sub_19B9A49BC(v81, v96);
                      v98 = *v81;
                      v99 = (v81[1] - *v81) >> 4;
                      if (v99 > v97)
                      {
                        v100 = v97;
                        v101 = v97;
                        v102 = sub_19B9A4A60(v81, v97) - v96 + ((*(*(v98 + 16 * v101) + 56) - *(*(v98 + 16 * v101) + 48)) >> 4);
                        v103 = -1;
                        do
                        {
                          v104 = *(v98 + 16 * v101);
                          if (v104)
                          {
                            v106 = v104 + 48;
                            v105 = *(v104 + 48);
                            v107 = *(v106 + 8) - v105;
                            if ((v107 >> 4) >= 1)
                            {
                              v108 = 0;
                              v109 = (v107 >> 4) & 0x7FFFFFFF;
                              while (1)
                              {
                                v110 = *v105;
                                v111 = !*v105 || v93 == 0;
                                if (!v111 && *v110 == *v93 && v110[1] == v93[1] && v108 >= v102)
                                {
                                  break;
                                }

                                ++v108;
                                v105 += 2;
                                if (v109 == v108)
                                {
                                  goto LABEL_220;
                                }
                              }

                              v103 = v108;
                            }

LABEL_220:
                            if (v103 < 0)
                            {
                              v102 = 0;
                            }

                            v100 += v103 >> 31;
                          }

                          ++v101;
                        }

                        while (v101 != v99);
                        if ((v100 & 0x80000000) == 0 && (v103 & 0x80000000) == 0)
                        {
                          if (v99 <= v100)
                          {
                            goto LABEL_241;
                          }

                          v113 = 0;
                          v114 = 0;
                          v115 = 1;
                          v116 = v100;
                          do
                          {
                            v117 = *(v98 + 16 * v116);
                            if (v117)
                            {
                              v118 = *(v117 + 48);
                              v119 = (*(v117 + 56) - v118) >> 4;
                              if (v103 < v119)
                              {
                                v114 = v114 - v103 + v119;
                                v120 = v113 - v103 + v119;
                                v121 = (v95 + 16 * v113);
                                v122 = (v118 + 16 * v103);
                                v123 = v103;
                                while (1)
                                {
                                  v124 = *v122;
                                  if (!*v122)
                                  {
                                    break;
                                  }

                                  v125 = *v121;
                                  if (!*v121 || *v124 != *v125 || v124[1] != v125[1])
                                  {
                                    break;
                                  }

                                  ++v113;
                                  v121 += 2;
                                  ++v123;
                                  v122 += 2;
                                  if (v123 >= v119)
                                  {
                                    v113 = v120;
                                    goto LABEL_238;
                                  }
                                }

                                v115 = 0;
                                v114 = 0;
                              }
                            }

LABEL_238:
                            ++v116;
                          }

                          while (v116 != v99);
                          if (v115)
                          {
                            goto LABEL_241;
                          }
                        }
                      }

                      if (sub_19B8ED778(a3, v152, v151, 0))
                      {
LABEL_241:
                        memset(v166, 0, sizeof(v166));
                        sub_19B9A4150(v166, *v81, v81[1], (v81[1] - *v81) >> 4);
                        memset(v167, 0, sizeof(v167));
                        sub_19B9A3028(v167, v81[3], v81[4], (v81[4] - v81[3]) >> 4);
                        memset(v168, 0, 24);
                        sub_19B9A3028(v168, v81[6], v81[7], (v81[7] - v81[6]) >> 4);
                        v168[3] = v81[9];
                        operator new();
                      }

                      if (v148)
                      {
                        sub_19B8750F8(v148);
                      }

                      if (v150)
                      {
                        sub_19B8750F8(v150);
                      }

                      v87 = v146;
                    }
                  }

                  ++v88;
                }

                while (v88 != v87);
              }

              if (v141)
              {
                sub_19B8750F8(v141);
              }

              v80 = v140;
            }
          }
        }

        v81 += 10;
      }

      while (v81 != v80);
    }
  }

  *buf = v169;
  sub_19B8F0E84(buf);
  v31 = a4;
  v37 = v138;
  if (a4)
  {
LABEL_77:
    sub_19B8750F8(v31);
  }

LABEL_78:
  if (!v37)
  {
    return 0;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v38 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    v39 = (**v142)[2];
    v40 = a7[1] - *a7;
    *buf = 134349824;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = 0;
    *&buf[18] = 2050;
    *&buf[20] = v39;
    *&buf[28] = 2050;
    *&buf[30] = v40;
    _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateAndCombineRoute,runIndex,%{public}d,prevTime,%{public}.1lf,numCandidates,%{public}lu", buf, 0x26u);
  }

  v41 = sub_19B87DD40();
  if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v42 = (**v142)[2];
    v43 = a7[1] - *a7;
    *v169 = 134349824;
    *&v169[4] = v12;
    *&v169[12] = 1026;
    *&v169[14] = 0;
    *&v169[18] = 2050;
    *&v169[20] = v42;
    *&v169[28] = 2050;
    *&v169[30] = v43;
    v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateAndCombineRoute,runIndex,%{public}d,prevTime,%{public}.1lf,numCandidates,%{public}lu", v169, 38);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  if (*(a1 + 76) != 1)
  {
    return 1;
  }

  v45 = a7[1];
  v46 = *a7;
  result = 1;
  if (*a7 != v45 && a2)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      v54 = *v46;
      v55 = *(*v46 + 56);
      if (*(*v46 + 48) == v55 || (v56 = *(v55 - 16)) == 0)
      {
        v54 = v51;
      }

      else if (v51)
      {
        if (*v51 <= *v54)
        {
          v54 = v51;
        }

        else
        {
          v49 = *(v46 + 1);
          if (v49)
          {
            atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v50)
          {
            sub_19B8750F8(v50);
          }

          v48 = v54;
          v50 = v49;
        }

        if (v52 != *v56 || v53 != v56[1])
        {
          goto LABEL_282;
        }
      }

      else
      {
        v52 = *v56;
        v53 = v56[1];
        v49 = *(v46 + 1);
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v50)
        {
          sub_19B8750F8(v50);
        }

        v48 = v54;
        v50 = v49;
      }

      ++v46;
      v51 = v54;
    }

    while (v46 != v45);
    if (v48)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v57 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v58 = (**v142)[2];
        *buf = 134349312;
        *&buf[4] = v12;
        *&buf[12] = 2050;
        *&buf[14] = v58;
        _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,generateAndCombineRoute,prevTime,%{public}.1lf,reduced size to 1 route", buf, 0x16u);
      }

      v59 = sub_19B87DD40();
      if (*(v59 + 160) > 1 || *(v59 + 164) > 1 || *(v59 + 168) > 1 || *(v59 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v60 = (**v142)[2];
        *v169 = 134349312;
        *&v169[4] = v12;
        *&v169[12] = 2050;
        *&v169[14] = v60;
        v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.1lf,generateAndCombineRoute,prevTime,%{public}.1lf,reduced size to 1 route", v169, 22);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::generateAndCombineRouteForOneSegment(BOOL, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &, int, std::vector<CLRouteCandidatePtr> &, std::vector<CLRouteCandidateVector> &)", "CoreLocation: %s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      sub_19B8EBC04(a7);
      v62 = a7[1];
      v63 = a7[2];
      if (v62 >= v63)
      {
        v129 = (v62 - *a7) >> 4;
        v130 = v129 + 1;
        if ((v129 + 1) >> 60)
        {
          sub_19B8B8A40();
        }

        v131 = v63 - *a7;
        if (v131 >> 3 > v130)
        {
          v130 = v131 >> 3;
        }

        if (v131 >= 0x7FFFFFFFFFFFFFF0)
        {
          v132 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v132 = v130;
        }

        *&buf[32] = a7;
        if (v132)
        {
          sub_19B8F0D38(a7, v132);
        }

        v133 = (16 * v129);
        *v133 = v48;
        v133[1] = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v64 = (v133 + 2);
        v65 = a7;
        v134 = a7[1] - *a7;
        v135 = v133 - v134;
        memcpy(v133 - v134, *a7, v134);
        v136 = *a7;
        *a7 = v135;
        a7[1] = v64;
        v137 = a7[2];
        a7[2] = 0;
        *&buf[16] = v136;
        *&buf[24] = v137;
        *buf = v136;
        *&buf[8] = v136;
        sub_19B8F10D0(buf);
      }

      else
      {
        *v62 = v48;
        *(v62 + 1) = v49;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v64 = (v62 + 16);
        v65 = a7;
      }

      v65[1] = v64;
    }

LABEL_282:
    if (v49)
    {
      sub_19B8750F8(v49);
    }

    return 1;
  }

  return result;
}

void sub_19B9A172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a28)
  {
    sub_19B8750F8(a28);
  }

  sub_19B9A1BD8(&a49);
  if (a25)
  {
    sub_19B8750F8(a25);
  }

  if (a26)
  {
    sub_19B8750F8(a26);
  }

  if (a15)
  {
    sub_19B8750F8(a15);
  }

  a65 = &a59;
  sub_19B8F0E84(&a65);
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B9A18F8(void ***a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (v8 + 1 > 0x333333333333333)
    {
      sub_19B8B8A40();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v10;
    }

    v23 = a1;
    if (v11)
    {
      sub_19B9A3C74(v11);
    }

    v12 = 80 * v8;
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v22 = 0;
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    sub_19B9A4150(v12, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0;
    sub_19B9A3028((v12 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    sub_19B9A3028((v12 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
    *(v12 + 72) = *(a2 + 72);
    v7 = v21 + 10;
    v21 += 10;
    v13 = *a1;
    v14 = a1[1];
    v15 = (v20 + *a1 - v14);
    if (*a1 != v14)
    {
      v16 = (v20 + *a1 - v14);
      v17 = *a1;
      do
      {
        *v16 = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = *v17;
        v16[2] = v17[2];
        *v17 = 0;
        v17[1] = 0;
        v17[2] = 0;
        v16[3] = 0;
        v16[4] = 0;
        v16[5] = 0;
        *(v16 + 3) = *(v17 + 3);
        v16[5] = v17[5];
        v17[3] = 0;
        v17[4] = 0;
        v17[5] = 0;
        v16[6] = 0;
        v16[7] = 0;
        v16[8] = 0;
        *(v16 + 3) = *(v17 + 3);
        v16[8] = v17[8];
        v17[6] = 0;
        v17[7] = 0;
        v17[8] = 0;
        v16[9] = v17[9];
        v17 += 10;
        v16 += 10;
      }

      while (v17 != v14);
      do
      {
        sub_19B9A3DF8(v13);
        v13 += 10;
      }

      while (v13 != v14);
      v13 = *a1;
      v7 = v21;
    }

    *a1 = v15;
    a1[1] = v7;
    v18 = a1[2];
    a1[2] = v22;
    v21 = v13;
    v22 = v18;
    v19 = v13;
    v20 = v13;
    result = sub_19B9A4100(&v19);
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    sub_19B9A4150(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    sub_19B9A3028(v5 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
    v5[6] = 0;
    v5[7] = 0;
    v5[8] = 0;
    result = sub_19B9A3028(v5 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
    v5[9] = *(a2 + 72);
    v7 = (v5 + 10);
    a1[1] = (v5 + 10);
  }

  a1[1] = v7;
  return result;
}

void sub_19B9A1B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_19B8F0E84(&a14);
  sub_19B8F0E84(&a14);
  sub_19B9A4100(&a9);
  _Unwind_Resume(a1);
}

void **sub_19B9A1BD8(void **a1)
{
  v3 = a1 + 6;
  sub_19B8F0E84(&v3);
  v3 = a1 + 3;
  sub_19B8F0E84(&v3);
  v3 = a1;
  sub_19B8F0E84(&v3);
  return a1;
}

void sub_19B9A1C30(uint64_t a1, double **a2, uint64_t **a3, uint64_t **a4, void **a5, double a6)
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (*a2)
  {
    v10 = *a5 == a5[1] || a3 == a4;
    if (v10 || (v11 = **a5) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v15 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a6;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVector or lastSnapVector is empty", buf, 0xCu);
      }

      v16 = sub_19B87DD40();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v60 = 134349056;
        *&v60[4] = a6;
        v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVector or lastSnapVector is empty", v60, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v17);
        goto LABEL_106;
      }
    }

    else
    {
      while (1)
      {
        v13 = **a3;
        if (v13)
        {
          if (!*(v13 + 20))
          {
            break;
          }
        }

        a3 += 2;
        if (a3 == a4)
        {
          v14 = 0;
          goto LABEL_34;
        }
      }

      v14 = 1;
LABEL_34:
      v20 = *(v11 + 120);
      v21 = v20 > 9 || ((1 << v20) & 0x20A) == 0;
      if (v21 || *(v11 + 152) <= 45.0)
      {
        if (v20 == 4 || v20 == 11)
        {
          v27 = v14;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
LABEL_51:
          v28 = *(v8 + 208);
          v58 = 0uLL;
          v59 = 0;
          if (v28 < 250.0)
          {
            *(v8 + 208) = 0x406F400000000000;
            if (!sub_19B8E83FC(v8, 1, &v58, 0, *(**a5 + 16), *(**a5 + 128), *(**a5 + 136), *(**a5 + 144), 60.0, 30.0))
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v29 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
              {
                *buf = 134349056;
                *&buf[4] = a6;
                _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,unable to compute freeway candidates for WiFi position", buf, 0xCu);
              }

              v30 = sub_19B87DD40();
              if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                *v60 = 134349056;
                *&v60[4] = a6;
                v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 1, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,unable to compute freeway candidates for WiFi position", v60, 12);
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v31);
                if (v31 != buf)
                {
                  free(v31);
                }
              }
            }

            (*a2)[26] = v28;
            v32 = *(&v58 + 1);
            for (i = v58; i != v32; ++i)
            {
              v34 = **i;
              if (v34 && !*(v34 + 20))
              {
                for (j = *a5; j != a5[1]; j += 2)
                {
                  v36 = **j;
                  if (v36 && *v34 == *v36 && *(v34 + 8) == v36[1])
                  {
                    goto LABEL_86;
                  }
                }

                sub_19B8EAB68(a5, i);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                v37 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                {
                  v38 = **a5;
                  v39 = v38[16];
                  v40 = v38[17];
                  v41 = v38[18];
                  v42 = *(*i + 24);
                  v43 = *(*i + 32);
                  v44 = *(*i + 40);
                  *buf = 134350593;
                  *&buf[4] = a6;
                  *&buf[12] = 2053;
                  *&buf[14] = v39;
                  *&buf[22] = 2053;
                  v74 = v40;
                  v75 = 2050;
                  v76 = v41;
                  v77 = 2053;
                  v78 = v42;
                  v79 = 2053;
                  v80 = v43;
                  v81 = 2050;
                  v82 = v44;
                  _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,added new FWY candidate,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
                }

                v45 = sub_19B87DD40();
                if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                  }

                  v46 = **a5;
                  v47 = v46[16];
                  v48 = v46[17];
                  v49 = v46[18];
                  v50 = *(*i + 24);
                  v51 = *(*i + 32);
                  v52 = *(*i + 40);
                  *v60 = 134350593;
                  *&v60[4] = a6;
                  v61 = 2053;
                  v62 = v47;
                  v63 = 2053;
                  v64 = v48;
                  v65 = 2050;
                  v66 = v49;
                  v67 = 2053;
                  v68 = v50;
                  v69 = 2053;
                  v70 = v51;
                  v71 = 2050;
                  v72 = v52;
                  v53 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,added new FWY candidate,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", v60, 72);
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v53);
                  if (v53 != buf)
                  {
                    free(v53);
                  }
                }
              }

LABEL_86:
              ;
            }
          }

          *buf = &v58;
          sub_19B8F0E84(buf);
          return;
        }
      }

      else
      {
        memset(buf, 0, sizeof(buf));
        v23 = *(a1 + 24);
        v22 = *(a1 + 32);
        while (v23 != v22)
        {
          v24 = *v23;
          v25 = v23[1];
          if (*v23 != v25 && *(*v24 + 16) > a6)
          {
            if (v23 != buf)
            {
              sub_19B9A3250(buf, v24, v25, (v25 - v24) >> 4);
              for (k = *buf; k != *&buf[8]; k += 2)
              {
                v55 = **k;
                if (v55 && !*(v55 + 20))
                {
                  *v60 = buf;
                  sub_19B8F0E84(v60);
                  if (!v14)
                  {
                    goto LABEL_95;
                  }

                  v8 = *a2;
                  goto LABEL_51;
                }
              }
            }

            break;
          }

          v23 += 3;
        }

        *v60 = buf;
        sub_19B8F0E84(v60);
      }

LABEL_95:
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v56 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a6;
        _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVectorShouldHaveSnapOnFWY,NO", buf, 0xCu);
      }

      v57 = sub_19B87DD40();
      if (*(v57 + 160) > 1 || *(v57 + 164) > 1 || *(v57 + 168) > 1 || *(v57 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v60 = 134349056;
        *&v60[4] = a6;
        v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,crntSnapVectorShouldHaveSnapOnFWY,NO", v60, 12);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v17);
LABEL_106:
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = a6;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,geometry is nil", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      *v60 = 134349056;
      *&v60[4] = a6;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 2, "CLTSP,%{public}.2lf,addExtraFreewayCandidateInWiderRadius,geometry is nil", v60, 12);
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::addExtraFreewayCandidateInWiderRadius(const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v17);
      goto LABEL_106;
    }
  }
}

void sub_19B9A2670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19B8F0E84(va);
  _Unwind_Resume(a1);
}

void sub_19B9A26B0(std::mutex *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock(a1);
  sub_19B95E004(a1, a2, a3);

  std::mutex::unlock(a1);
}

void sub_19B9A271C(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 == v4)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v5;
      if (v5[1] - *v5 == 16)
      {
        v7 = *v6;
        if (*v6)
        {
          v8 = *(v7 + 16);
          if (v8 > a3 + 1.0)
          {
            goto LABEL_7;
          }

          if (vabdd_f64(v8, a3) < 0.0001)
          {
            break;
          }
        }
      }

      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    LOBYTE(__p) = 0;
    sub_19B948FAC(v7, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    v9 = (*v5)[1];
    *a2 = **v5;
    a2[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_19B9A27E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9A27FC(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *v4;
      if (*(v4 + 8) - *v4 == 16 && (v10 = *v9) != 0)
      {
        if (*(v10 + 16) >= a3)
        {
          *a2 = v7;
          a2[1] = v8;
          return;
        }

        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          sub_19B8750F8(v8);
        }

        v8 = v11;
      }

      else
      {
        v10 = v7;
      }

      v4 += 24;
      v7 = v10;
    }

    while (v4 != v5);
    *a2 = 0;
    a2[1] = 0;
    if (v8)
    {

      sub_19B8750F8(v8);
    }
  }
}

void *sub_19B9A28E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(*(a1 + 120), a2, a3, a4);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32) - v7;
  if (v8)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 8);
    v11 = -1.0;
    do
    {
      v12 = *(v10 - 1);
      if (*v10 != v12 && (*v10 - v12) <= 0x10)
      {
        v11 = *(*v12 + 16);
      }

      v10 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = -1.0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v6, &v27, v31, 16);
  if (result)
  {
    v18 = result;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(a2);
        }

        v21 = *(*(&v27 + 1) + 8 * v20);
        v22 = objc_msgSend_timestamp(v21, v15, v16, v17);
        objc_msgSend_timeIntervalSinceReferenceDate(v22, v23, v24, v25);
        if (v26 > v11)
        {
          objc_msgSend_addObject_(*(a1 + 120), v15, v21, v17);
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v15, &v27, v31, 16);
      v18 = result;
    }

    while (result);
  }

  return result;
}

os_log_t sub_19B9A2A58()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

char *sub_19B9A2A88(void *a1, char *__src, double *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_19B8F3F74();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_19B8D9954(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_19B9A2C5C(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_19B9A2C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9A2C5C(unint64_t *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 2;
      }

      sub_19B8D9954(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = (v4 + 1);
  return result;
}

uint64_t *sub_19B9A2D5C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A2DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void *sub_19B9A2DE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B9A2E6C(v7);
  return v4;
}

uint64_t sub_19B9A2E6C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

uint64_t *sub_19B9A2EA4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_19B9A3028(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

void *sub_19B9A2EF8(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19B8B8A40();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_19B9A3170(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_19B9A3028((24 * v2), *a2, a2[1], (a2[1] - *a2) >> 4);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_19B9A31C8(&v14);
  return v8;
}

void sub_19B9A3014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B9A31C8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B9A3028(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A3090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B8F0E84(&a9);
  _Unwind_Resume(a1);
}

void *sub_19B9A30B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_19B9A3138(v7);
  return v4;
}

uint64_t sub_19B9A3138(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F0E40(a1);
  }

  return a1;
}

void sub_19B9A3170(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void **sub_19B9A31C8(void **a1)
{
  sub_19B9A31FC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B9A31FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_19B8F0E84(&v5);
  }
}

void sub_19B9A3250(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_19B8F0FC8(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F1C0C(&v18, a2, a3, v7);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F1C0C(&v17, a2, (a2 + v11), v7);
    a1[1] = sub_19B9A30B0(a1, v12, a3, a1[1]);
  }
}

void *sub_19B9A338C(void *a1, char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, a2, &v12, v16, 16);
  if (result)
  {
    v8 = result;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(a1);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_msgSend_isWiFiLocationType(v11, v5, v6, v7))
        {
          objc_msgSend_addObject_(a2, v5, v11, v7);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v5, &v12, v16, 16);
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_19B9A348C(double *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 <= 0.0)
  {
    return 0;
  }

  v3 = 0.0;
  if (a1[1] >= 0.0)
  {
    v4 = mach_continuous_time();
    v3 = vabdd_f64(sub_19B994BF4(v4), a1[1]) * 1000.0;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
  }

  v5 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
  {
    v6 = 0.0;
    if (a1[1] >= 0.0)
    {
      v7 = mach_continuous_time();
      v6 = vabdd_f64(sub_19B994BF4(v7), a1[1]) * 1000.0;
    }

    v8 = *a1;
    *buf = 134349312;
    v21 = v6;
    v22 = 2050;
    v23 = v8;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "CLMM,CLTSP,processing time,%{public}.1lf,exceeded maxAllowed,%{public}.1lf", buf, 0x16u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
    }

    v10 = off_1EAFE4708;
    v11 = 0.0;
    if (a1[1] >= 0.0)
    {
      v12 = mach_continuous_time();
      v11 = vabdd_f64(sub_19B994BF4(v12), a1[1]) * 1000.0;
    }

    v13 = *a1;
    v16 = 134349312;
    v17 = v11;
    v18 = 2050;
    v19 = v13;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v10, 1, "CLMM,CLTSP,processing time,%{public}.1lf,exceeded maxAllowed,%{public}.1lf", &v16, 22);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker::processingTimeExceededMaxAllowed() const", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  return 1;
}

os_log_t sub_19B9A3720()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void **sub_19B9A3750(void **result, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_19B9A3988(result, a2, result[1], &a2[24 * a5]);
        v17 = &v6[v18];
      }

      else
      {
        result = sub_19B9A3A08(result, (a3 + v16), a4, result[1]);
        v8[1] = result;
        if (v16 < 1)
        {
          return result;
        }

        sub_19B9A3988(v8, a2, v10, &a2[24 * a5]);
        v17 = (v6 + v16);
      }

      return sub_19B9A3BB4(&v29, v6, v17, a2);
    }

    v11 = *result;
    v12 = a5 - 0x5555555555555555 * ((v10 - *result) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v33 = result;
    if (v15)
    {
      sub_19B9A3170(result, v15);
    }

    v19 = (8 * (v13 >> 3));
    v29 = 0;
    v30 = v19;
    v31 = v19;
    v32 = 0;
    v20 = &v19[3 * a5];
    v21 = 24 * a5;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 0;
      sub_19B9A3028(v19, *v6, v6[1], (v6[1] - *v6) >> 4);
      v19 += 3;
      v6 += 3;
      v21 -= 24;
    }

    while (v21);
    v22 = v30;
    memcpy(v20, a2, v8[1] - a2);
    v23 = *v8;
    v24 = v20 + v8[1] - a2;
    v8[1] = a2;
    v25 = (a2 - v23);
    v26 = v22 - (a2 - v23);
    memcpy(v26, v23, v25);
    v27 = *v8;
    *v8 = v26;
    v8[1] = v24;
    v28 = v8[2];
    v8[2] = v32;
    v31 = v27;
    v32 = v28;
    v29 = v27;
    v30 = v27;
    return sub_19B9A31C8(&v29);
  }

  return result;
}

void *sub_19B9A3988(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v9;
      v8[2] = *(v9 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      v9 += 24;
      v8 += 3;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_19B9A3B40(&v11, a2, v7, v6);
}

uint64_t *sub_19B9A3A08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_19B9A3028(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_19B9A3ABC(v8);
  return v4;
}

uint64_t sub_19B9A3ABC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B9A3AF4(a1);
  }

  return a1;
}

void sub_19B9A3AF4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_19B8F0E84(&v3);
  }
}

void *sub_19B9A3B40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 24);
    v7 = a3;
    do
    {
      sub_19B8F0FC8(v6);
      v8 = *(v7 - 3);
      v7 -= 3;
      *v6 = v8;
      v6[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v6 -= 3;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t **sub_19B9A3BB4(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_19B9A3250(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B9A3C24(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_19B9A3C74(a2);
  }

  sub_19B8B8A40();
}

void sub_19B9A3C74(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B9A3CCC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = (a3 + v6 * 8);
      v8 = &a1[v6];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_19B9A4150((a3 + v6 * 8), a1[v6], a1[v6 + 1], (a1[v6 + 1] - a1[v6]) >> 4);
      v7[3] = 0;
      v7[4] = 0;
      v9 = (a3 + v6 * 8 + 24);
      v9[2] = 0;
      sub_19B9A3028(v9, v8[3], v8[4], (v8[4] - v8[3]) >> 4);
      v10 = a3 + v6 * 8;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      v11 = (a3 + v6 * 8 + 48);
      v11[2] = 0;
      sub_19B9A3028(v11, v8[6], v8[7], (v8[7] - v8[6]) >> 4);
      *(a3 + v6 * 8 + 72) = a1[v6 + 9];
      v6 += 10;
    }

    while (v8 + 10 != a2);
    a3 += v6 * 8;
  }

  return a3;
}

void sub_19B9A3D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    v13 = (v10 + v11 - 80);
    v14 = -v11;
    do
    {
      sub_19B9A3DF8(v13);
      v13 -= 10;
      v14 += 80;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9A3DF8(void **a1)
{
  v2 = a1 + 6;
  sub_19B8F0E84(&v2);
  v2 = a1 + 3;
  sub_19B8F0E84(&v2);
  v2 = a1;
  sub_19B8F0E84(&v2);
}

void sub_19B9A3E4C(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 10;
        sub_19B9A3DF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_19B9A3ED0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v9 -= 10;
          sub_19B9A3DF8(v9);
        }

        while (v9 != v8);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= a4)
      {
        v12 = a4;
      }

      if (v11 >= 0x199999999999999)
      {
        v13 = 0x333333333333333;
      }

      else
      {
        v13 = v12;
      }

      sub_19B9A3C24(a1, v13);
    }

    sub_19B8B8A40();
  }

  v14 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v14 >> 4) >= a4)
  {
    sub_19B9A4058(a2, a3, v8);
    v17 = v16;
    v18 = a1[1];
    if (v18 != v16)
    {
      do
      {
        v18 -= 10;
        sub_19B9A3DF8(v18);
      }

      while (v18 != v17);
    }

    a1[1] = v17;
  }

  else
  {
    v15 = sub_19B9A4058(a2, a2 + v14, v8);
    a1[1] = sub_19B9A3CCC(v15, a3, a1[1]);
  }
}

uint64_t sub_19B9A4058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  v5 = (a3 + 48);
  do
  {
    if (v3 != v5 - 6)
    {
      sub_19B9A41E8(v5 - 6, *v3, *(v3 + 8), (*(v3 + 8) - *v3) >> 4);
      sub_19B9A3250(v5 - 3, *(v3 + 24), *(v3 + 32), (*(v3 + 32) - *(v3 + 24)) >> 4);
      sub_19B9A3250(v5, *(v3 + 48), *(v3 + 56), (*(v3 + 56) - *(v3 + 48)) >> 4);
    }

    v5[3] = *(v3 + 72);
    v3 += 80;
    v5 += 10;
  }

  while (v3 != v4);
  return v4;
}

uint64_t sub_19B9A4100(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_19B9A3DF8((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_19B9A4150(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B8F0CFC(result, a4);
  }

  return result;
}

void sub_19B9A41E8(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          sub_19B8750F8(v18);
        }

        v17 -= 16;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    for (i = a1[1]; v12 != a3; i += 2)
    {
      v14 = v12[1];
      *i = *v12;
      i[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = i;
  }
}

void sub_19B9A4348(void *a1)
{
  if (a1)
  {
    sub_19B9A4348(*a1);
    sub_19B9A4348(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    operator delete(a1);
  }
}

void sub_19B9A43C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9A4414(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_19B8F0E84(&v4);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B8750F8(v3);
  }
}

double sub_19B9A44B0(void *a1, int a2, int a3)
{
  v6 = 0.0;
  if (sub_19B9A4468(a1))
  {
    v7 = a1[6];
    v8 = a1[7] - v7;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = v8 >> 4;
      do
      {
        if (!v10 && a2 && (v12 = a1[2], **v12 == **v7) && *(*v12 + 8) == *(*v7 + 8))
        {
          sub_19B9A45C8(v12);
        }

        else
        {
          if (!a3 || v10 != v11 - 1)
          {
            v15 = *(v7 + v9);
LABEL_15:
            sub_19B9F5AA8(v15);
            v13 = *(v15 + 40);
            goto LABEL_16;
          }

          v14 = a1[4];
          v15 = *(v7 + v9);
          if (**v14 != *v15 || *(*v14 + 8) != *(v15 + 8))
          {
            goto LABEL_15;
          }

          sub_19B9A4630(v14);
        }

LABEL_16:
        v6 = v6 + v13;
        ++v10;
        v7 = a1[6];
        v11 = (a1[7] - v7) >> 4;
        v9 += 16;
      }

      while (v11 > v10);
    }
  }

  return v6;
}

void sub_19B9A45C8(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 65) == 1)
  {
    if (!v1)
    {
      return;
    }
  }

  else if (!v1)
  {
    return;
  }

  sub_19B9F5AA8(*a1);
}

void sub_19B9A4630(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 65) == 1)
  {
    if (!v1)
    {
      return;
    }
  }

  else if (!v1)
  {
    return;
  }

  sub_19B9F5AA8(*a1);
}

void sub_19B9A4698(double *a1, double a2)
{
  a1[9] = 0.0;
  if (*a1 != *(a1 + 1))
  {
    a1[9] = sub_19B9A4798(a1, 1);
    v4 = *a1;
    v5 = *(a1 + 1);
    if (v5 != *a1)
    {
      v6 = (v5 - *a1) >> 4;
      if (v6 <= 1)
      {
        v6 = 1;
      }

      if (*(*(*v4 + 16) + 16) <= a2)
      {
        v7 = v6 - 1;
        v8 = v6 - 1;
        v9 = -1;
        v10 = 16;
        while (v8)
        {
          v11 = *(*(*(v4 + v10) + 16) + 16);
          ++v9;
          v10 += 16;
          --v8;
          if (v11 > a2)
          {
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_14;
            }

            goto LABEL_12;
          }
        }

        v9 = v7;
        if ((v7 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

LABEL_12:
        sub_19B9A482C(a1, *a1, (v4 + 16 * v9));
        v4 = *a1;
        v5 = *(a1 + 1);
      }
    }

LABEL_14:
    while (v4 != v5)
    {
      v12 = *v4;
      v4 += 16;
      a1[9] = a1[9] - sub_19B9A44B0(v12, 1, 1);
    }
  }
}

double sub_19B9A4798(double *a1, int a2)
{
  v2 = a1[9];
  v4 = *a1;
  v3 = *(a1 + 1);
  if (v3 != *a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 - *a1) >> 4;
    do
    {
      v10 = *(v4 + v7);
      if (v10)
      {
        if (v8 == v9 - 1)
        {
          v11 = a2;
        }

        else
        {
          v11 = 0;
        }

        if (v8)
        {
          v12 = 0;
        }

        else
        {
          v12 = a2;
        }

        v2 = v2 + sub_19B9A44B0(v10, v12, v11);
        v4 = *a1;
        v3 = *(a1 + 1);
      }

      ++v8;
      v9 = (v3 - v4) >> 4;
      v7 += 16;
    }

    while (v9 > v8);
  }

  return v2;
}

__int128 *sub_19B9A482C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_19B8F1CF8(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_19B8750F8(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

BOOL sub_19B9A48B0(void **a1, __int128 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (*(v2 + 16) && *(v2 + 32))
    {
      v5 = *(a2 + 1);
      v7[0] = *a2;
      v7[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_19B9A4964(a1, v7);
      if (v5)
      {
        sub_19B8750F8(v5);
      }
    }

    if (sub_19B9A4468(*a2))
    {
      sub_19B8EAB68(a1, a2);
    }
  }

  return v2 != 0;
}

void sub_19B9A494C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_19B9A4964(void **result, uint64_t a2)
{
  if (*a2)
  {
    v3 = result;
    sub_19B8EAB68(result + 3, (*a2 + 16));
    v4 = (*a2 + 32);

    return sub_19B8EAB68(v3 + 6, v4);
  }

  return result;
}

unint64_t sub_19B9A49BC(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    do
    {
      if (*v5)
      {
        v4 += (*(*v5 + 56) - *(*v5 + 48)) >> 4;
      }

      v5 += 16;
    }

    while (v5 != v3);
  }

  if (v4 < a2)
  {
    return 0;
  }

  result = (v3 - v2) >> 4;
  v7 = (result & (result >> 31)) - 1;
  for (i = result - 1; ; --i)
  {
    v9 = __OFSUB__(result, 1);
    result = (result - 1);
    if (((result & 0x80000000) != 0) != v9)
    {
      break;
    }

    v10 = *(v2 + 16 * i);
    if (v10)
    {
      a2 -= (*(v10 + 56) - *(v10 + 48)) >> 4;
    }

    if (a2 <= 0)
    {
      return result;
    }
  }

  return v7;
}

uint64_t sub_19B9A4A60(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = (a1[1] - *a1) >> 4;
  if (v3 <= a2 + 1)
  {
    return 0;
  }

  result = 0;
  v5 = ~a2 + v3;
  v6 = v2 + 16 * a2 + 16;
  do
  {
    if (*v6)
    {
      result = result + ((*(*v6 + 56) - *(*v6 + 48)) >> 4);
    }

    v6 += 16;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_19B9A4AC0(uint64_t *a1, uint64_t a2, double **a3, uint64_t ***a4, __n128 (****a5)(__n128 *a1, __n128 *a2), uint64_t *a6, int a7, uint64_t *a8, double a9, double a10, double a11)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v26 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLAStarRouteConstructor,construct,invalid processingTimeTracker", buf, 2u);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) != 0 && (*(v27 + 164) & 0x80000000) != 0 && (*(v27 + 168) & 0x80000000) != 0 && !*(v27 + 152))
    {
      goto LABEL_40;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    *v71 = 0;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,CLAStarRouteConstructor,construct,invalid processingTimeTracker", v71, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v28);
    goto LABEL_38;
  }

  if (!*a6)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", buf, 2u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_40;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    *v71 = 0;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", v71, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v28);
    goto LABEL_38;
  }

  if (!*a4 || !*a5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v29 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid snap pointers,constructPedestrian", buf, 2u);
    }

    v30 = sub_19B87DD40();
    if ((*(v30 + 160) & 0x80000000) != 0 && (*(v30 + 164) & 0x80000000) != 0 && (*(v30 + 168) & 0x80000000) != 0 && !*(v30 + 152))
    {
      goto LABEL_40;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    *v71 = 0;
    v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Unexpected,invalid snap pointers,constructPedestrian", v71, 2);
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v28);
LABEL_38:
    if (v28 != buf)
    {
      free(v28);
    }

LABEL_40:
    v33 = 0;
    return v33 & 1;
  }

  sub_19B8EBC04(a1);
  if (*(a1 + 48) == 1)
  {
    *v71 = 0;
    *&v71[8] = v71;
    *&v71[16] = 0x2020000000;
    LOBYTE(v72) = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v76 = sub_19B9A8F9C;
    *&v77 = nullsub_24;
    *(&v77 + 1) = "";
    v78 = **a3;
    v22 = objc_msgSend_sharedInstance(CLMapsXPCServiceManager, v19, v20, v21);
    v23 = (**a4)[17];
    if ((**a4)[18] == v23)
    {
      v24 = 0.0;
      v25 = 0.0;
    }

    else
    {
      v24 = *v23;
      v25 = v23[1];
    }

    v48 = CLLocationCoordinate2DMake(v24, v25);
    v49 = *a4;
    v50 = **a4;
    v51 = (**a5)[17];
    if ((**a5)[18] == v51)
    {
      v52 = 0.0;
      v53 = 0.0;
    }

    else
    {
      v52 = *v51;
      v53 = v51[1];
    }

    v55 = *v50;
    v54 = v50[1];
    v56 = *(v49 + 6);
    v57 = CLLocationCoordinate2DMake(v52, v53);
    v58 = **a5;
    v59 = *v58;
    v60 = v58[1];
    v61 = *(*a5 + 6);
    v62 = *(*a6 + 192);
    v63 = *(*a6 + 193);
    v64 = *(a1 + 49);
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_19B9A8FAC;
    v70[3] = &unk_1E753E2C0;
    v70[4] = buf;
    v70[5] = v71;
    v70[6] = a1;
    v70[7] = a2;
    objc_msgSend_constructRouteFromLocation_roadID_clRoadID_projection_toLocation_toRoadID_toCLRoadID_toProjection_maxRouteLength_allowNetwork_preferCachedTiles_isPedestrianOrCycling_clearTiles_iOSTime_familiarityData_useMapsAPIForIntersectionQuery_withReply_(v22, v65, v55, v54, v59, v60, v62, v63, v48.latitude, v48.longitude, v56, v57.latitude, v57.longitude, v61, a10, a9, 0, 0, v64, v70);
    v33 = *(*&v71[8] + 24) ^ 1;
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v71, 8);
  }

  else
  {
    v35 = (*a4)[1];
    v68 = **a4;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v67 = v35;
    v36 = (*a5)[1];
    v69 = **a5;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    v66 = v36;
    v37 = mach_continuous_time();
    sub_19B994BF4(v37);
    if (v68 && v69)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v38 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        v39 = *v68;
        v40 = *v69;
        *buf = 134349824;
        *&buf[4] = a9;
        *&buf[12] = 2050;
        *&buf[14] = v39;
        *&buf[22] = 2050;
        v76 = v40;
        LOWORD(v77) = 2050;
        *(&v77 + 2) = a10;
        _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_INFO, "CLTSP,%{public}.3lf,aStarConstruct,constructing between,start,%{public}lld,stop,%{public}lld,maxLength,%{public}.2lf", buf, 0x2Au);
      }

      v41 = sub_19B87DD40();
      if (*(v41 + 160) > 1 || *(v41 + 164) > 1 || *(v41 + 168) > 1 || *(v41 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v42 = *v68;
        v43 = *v69;
        *v71 = 134349824;
        *&v71[4] = a9;
        *&v71[12] = 2050;
        *&v71[14] = v42;
        *&v71[22] = 2050;
        v72 = v43;
        v73 = 2050;
        v74 = a10;
        v44 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,%{public}.3lf,aStarConstruct,constructing between,start,%{public}lld,stop,%{public}lld,maxLength,%{public}.2lf", v71, 42);
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v45 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = a9;
      *&buf[12] = 1026;
      *&buf[14] = v68 != 0;
      *&buf[18] = 1026;
      *&buf[20] = v69 != 0;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.3lf,aStarConstruct,invalid inputs,startRoad,%{public}d,destRoad,%{public}d", buf, 0x18u);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) == 0 || (*(v46 + 164) & 0x80000000) == 0 || (*(v46 + 168) & 0x80000000) == 0 || *(v46 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      *v71 = 134349568;
      *&v71[4] = a9;
      *&v71[12] = 1026;
      *&v71[14] = v68 != 0;
      *&v71[18] = 1026;
      *&v71[20] = v69 != 0;
      v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.3lf,aStarConstruct,invalid inputs,startRoad,%{public}d,destRoad,%{public}d", v71, 24);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)", "CoreLocation: %s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v33 = 0;
    if (v66)
    {
      sub_19B8750F8(v66);
    }

    if (v67)
    {
      sub_19B8750F8(v67);
    }
  }

  return v33 & 1;
}

void sub_19B9A8D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a54)
  {
    sub_19B8750F8(a54);
  }

  sub_19B8F3484(&a55, a56);
  sub_19B9B0C1C(&a58, a59);
  if (a65)
  {
    sub_19B8750F8(a65);
  }

  if (a66)
  {
    sub_19B8750F8(a66);
  }

  if (a44)
  {
    sub_19B8750F8(a44);
  }

  if (a45)
  {
    sub_19B8750F8(a45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19B9A8F9C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_19B9A8FAC(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    if (a2)
    {
      v8 = objc_msgSend_count(a2, v5, v6, v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = *(a1[4] + 8);
    v10 = 0.0;
    if (*(v9 + 56) >= 0.0)
    {
      v11 = mach_continuous_time();
      v10 = vabdd_f64(sub_19B994BF4(v11), *(v9 + 56)) * 1000.0;
    }

    *buf = 67240704;
    *&buf[4] = v8;
    v38 = 1026;
    v39 = a2 == 0;
    v40 = 2050;
    v41 = v10;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", buf, 0x18u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v17 = off_1EAFE4708;
    if (a2)
    {
      v18 = objc_msgSend_count(a2, v14, v15, v16);
    }

    else
    {
      v18 = -1;
    }

    v19 = *(a1[4] + 8);
    v20 = 0.0;
    if (*(v19 + 56) >= 0.0)
    {
      v21 = mach_continuous_time();
      v20 = vabdd_f64(sub_19B994BF4(v21), *(v19 + 56)) * 1000.0;
    }

    v32[0] = 67240704;
    v32[1] = v18;
    v33 = 1026;
    v34 = a2 == 0;
    v35 = 2050;
    v36 = v20;
    v22 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 2, "CLMM,CLTSP,MapHelperService,XPCService returned constructRouteFromLocation call,roadCount,%{public}d,error,%{public}d,responseTime,%{public}.1lf", v32, 24);
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::construct(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const double, const BOOL, std::shared_ptr<CLFamiliarRoadData>, const double)_block_invoke", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  *(*(a1[5] + 8) + 24) = a2 == 0;
  if (a2)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v13, &v27, v31, 16);
    if (v23)
    {
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(a2);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_19B8F30F0();
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2, v26, &v27, v31, 16);
      }

      while (v23);
    }
  }
}

void sub_19B9A9428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44)
{
  if (v45)
  {
    sub_19B8750F8(v45);
  }

  sub_19B8750F8(v44);
  if (a44)
  {
    sub_19B8750F8(a44);
  }

  _Unwind_Resume(a1);
}

double sub_19B9A94E8(uint64_t **a1, unint64_t ***a2)
{
  v2 = *a2;
  v3 = -1.0;
  if (*a2 && *v2 && sub_19B8F07E0(a1, *v2))
  {
    v7 = **a2;
    return *(sub_19B9B0B80(a1, v7, &unk_19BA897F0, &v7) + 48);
  }

  return v3;
}

uint64_t sub_19B9A9568(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 48) + *(v2 + 56);
      v5 = *v2;
      result = sub_19B9B0B80(result, v3, &unk_19BA897F0, &v5);
      *(result + 48) = v4;
    }
  }

  return result;
}

uint64_t sub_19B9A95C8(uint64_t a1, uint64_t a2, double **a3, void *a4, void *a5, uint64_t *a6, double *a7, double a8, double a9, double a10, uint64_t a11, double a12, double a13, double a14, double a15, double a16, double a17, unsigned __int8 a18)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (*a6)
    {
      sub_19B8EBC04(a1);
      v24 = mach_continuous_time();
      sub_19B994BF4(v24);
      ++*(a1 + 52);
      if (*a4 && a9 <= 1.0 && a9 >= 0.0 && a10 <= 1.0 && a10 >= 0.0 && *a5)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v25 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(*a4 + 8);
          v27 = *(*a5 + 8);
          buf = 134349568;
          *buf_4 = a8;
          v54 = 2050;
          *v55 = v26;
          *&v55[8] = 2050;
          *v56 = v27;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.3lf,constructing between,start,%{public}lld,stop,%{public}lld", &buf, 0x20u);
        }

        v28 = sub_19B87DD40();
        if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
          }

          v29 = *(*a4 + 8);
          v30 = *(*a5 + 8);
          v45 = 134349568;
          v46 = a8;
          v47 = 2050;
          *v48 = v29;
          *&v48[8] = 2050;
          *v49 = v30;
          v31 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLTSP,%{public}.3lf,constructing between,start,%{public}lld,stop,%{public}lld", &v45, 32);
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v31);
          if (v31 != &buf)
          {
            free(v31);
          }
        }

        operator new();
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v35 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v36 = *a4 != 0;
        v37 = *a5 != 0;
        buf = 134350080;
        *buf_4 = a8;
        v54 = 1026;
        *v55 = v36;
        *&v55[4] = 1026;
        *&v55[6] = v37;
        *v56 = 2048;
        *&v56[2] = a9;
        v57 = 2048;
        v58 = a10;
        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.3lf,routeConstructor,constructPedestrian,invalid inputs,startRoad,%{public}d,destRoad,%{public}d,startRoadProjection,%.1lf,destinationRoadProjection,%.1lf", &buf, 0x2Cu);
      }

      v38 = sub_19B87DD40();
      if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v39 = *a4 != 0;
        v40 = *a5 != 0;
        v45 = 134350080;
        v46 = a8;
        v47 = 1026;
        *v48 = v39;
        *&v48[4] = 1026;
        *&v48[6] = v40;
        *v49 = 2048;
        *&v49[2] = a9;
        v50 = 2048;
        v51 = a10;
        v41 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.3lf,routeConstructor,constructPedestrian,invalid inputs,startRoad,%{public}d,destRoad,%{public}d,startRoadProjection,%.1lf,destinationRoadProjection,%.1lf", &v45, 44);
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v41);
        if (v41 != &buf)
        {
          free(v41);
        }
      }

      ++*(a1 + 56);
      return 0;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v42 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", &buf, 2u);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v45) = 0;
      v34 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Unexpected,invalid geometry pointer,constructPedestrian", &v45, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v34);
LABEL_54:
      if (v34 != &buf)
      {
        free(v34);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,CLAStarRouteConstructor,constructPedestrian,invalid processingTimeTracker", &buf, 2u);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v45) = 0;
      v34 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,CLAStarRouteConstructor,constructPedestrian,invalid processingTimeTracker", &v45, 2);
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLAStarRouteConstructor::constructPedestrian(CLDistanceCalc &, const CFAbsoluteTime, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const CLMapRoadPtr &, const CLMapRoadPtr &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const GEOLocationCoordinate2D &, const double, double, const std::optional<double>)", "CoreLocation: %s\n", v34);
      goto LABEL_54;
    }
  }

  return 0;
}

void sub_19B9AC840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  if (a38)
  {
    sub_19B8750F8(a38);
  }

  v53 = a48;
  sub_19B9B0C1C(&a39, a40);
  sub_19B9B0C1C(&a42, a43);
  if (v53)
  {
    sub_19B8750F8(v53);
  }

  if (a52)
  {
    sub_19B8750F8(a52);
  }

  _Unwind_Resume(a1);
}

void sub_19B9AC9F0(uint64_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  if ((a1[1] - *a1) >= 0x11)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v8 = *(v2 + v5);
      v7 = *(v2 + v5 + 8);
      v22[0] = v8;
      v22[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v2 = *a1;
      }

      v20 = *(v2 + 16 * v6);
      v21 = *(v2 + 16 * v6);
      v9 = *(&v21 + 1);
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if ((sub_19B96D650(v8, &v21) & 1) == 0)
      {
        if (sub_19B96D714(v8, &v21))
        {
          v10 = 1;
          goto LABEL_11;
        }

        v11 = *v8;
        v12 = *v20;
        sub_19BA0C01C(a2, **(*v8 + 136), *(*(*v8 + 136) + 8), **(*v20 + 136), *(*(*v20 + 136) + 8), 0.0);
        v14 = v13;
        sub_19BA0C01C(a2, **(v11 + 136), *(*(v11 + 136) + 8), *(*(v12 + 144) - 16), *(*(v12 + 144) - 8), 0.0);
        if (v15 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        sub_19BA0C01C(a2, *(*(v11 + 144) - 16), *(*(v11 + 144) - 8), **(v12 + 136), *(*(v12 + 136) + 8), 0.0);
        v18 = v17;
        sub_19BA0C01C(a2, *(*(v11 + 144) - 16), *(*(v11 + 144) - 8), *(*(v12 + 144) - 16), *(*(v12 + 144) - 8), 0.0);
        if (v19 >= v18)
        {
          v19 = v18;
        }

        if (v16 >= v19)
        {
          goto LABEL_12;
        }
      }

      v10 = 0;
LABEL_11:
      *(v8 + 24) = v10;
LABEL_12:
      if (v6 == ((a1[1] - *a1) >> 4) - 1 && sub_19B96D714(v20, v22))
      {
        *(v20 + 24) = 0;
      }

      if (v9)
      {
        sub_19B8750F8(v9);
      }

      if (v7)
      {
        sub_19B8750F8(v7);
      }

      ++v6;
      v2 = *a1;
      v5 += 16;
    }

    while (v6 < (a1[1] - *a1) >> 4);
  }
}

void sub_19B9ACBD0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_19B9ACBF4(__int128 ***a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v17 = 0uLL;
    v18 = 0;
    v2 = *a1;
    v3 = a1[1];
    if (*a1 == v3)
    {
      goto LABEL_8;
    }

    do
    {
      sub_19B8EAB68(&v17, *v2);
      v2 += 2;
    }

    while (v2 != v3);
    v5 = *(&v17 + 1);
    v6 = v17;
    if (v17 == *(&v17 + 1))
    {
LABEL_8:
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
      }

      v9 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,getPercentageOfFamiliarRoadsInRoute,Empty AStar route", buf, 2u);
      }

      v10 = sub_19B87DD40();
      if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || (v8 = -1.0, *(v10 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
        }

        v16[0] = 0;
        v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getPercentageOfFamiliarRoadsInRoute,Empty AStar route", v16, 2);
        sub_19B885924("Generic", 1, 0, 0, "double CLAStarRouteConstructor::getPercentageOfFamiliarRoadsInRoute(std::shared_ptr<CLFamiliarRoadData>)", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }

        v8 = -1.0;
      }
    }

    else
    {
      v7 = 0;
      do
      {
        v7 += sub_19B96D1B4(*a2, *v6);
        v6 += 2;
      }

      while (v6 != v5);
      v8 = v7 * 100.0 / ((*(&v17 + 1) - v17) >> 4);
    }

    *buf = &v17;
    sub_19B8F0E84(buf);
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,getPercentageOfFamiliarRoadsInRoute,familiarRoadData is null", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || (v8 = -1.0, *(v13 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E138);
      }

      LOWORD(v17) = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE46E8, 16, "CLTSP,getPercentageOfFamiliarRoadsInRoute,familiarRoadData is null", &v17, 2);
      sub_19B885924("Generic", 1, 0, 0, "double CLAStarRouteConstructor::getPercentageOfFamiliarRoadsInRoute(std::shared_ptr<CLFamiliarRoadData>)", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      return -1.0;
    }
  }

  return v8;
}

void sub_19B9ACFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  sub_19B8F0E84(&a17);
  _Unwind_Resume(a1);
}

void sub_19B9ACFD0(uint64_t *a1, uint64_t *a2, double **a3, uint64_t ****a4, uint64_t ***a5, __int128 **a6)
{
  v149 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v7 = *a4;
    v8 = a4[1];
    if (*a4 == v8)
    {
      return;
    }

    v10 = *a5;
    v11 = a5[1];
    if (*a5 == v11)
    {
      return;
    }

    v13 = a3;
    v130 = 0;
    v131 = 0;
    v129 = xmmword_19BA89490;
    v132 = 0x3FF0000000000000;
    v15 = mach_continuous_time();
    sub_19B994BF4(v15);
    v116 = *a4;
    v109 = a4[1];
    if (*a4 == v109)
    {
LABEL_165:
      if (a5[1] - *a5 != 16)
      {
        buf = 0uLL;
        v143 = 0.0;
        v90 = *a6;
        v91 = a6[1];
        if (*a6 != v91)
        {
          do
          {
            if (*(*v90 + 48) == *(*v90 + 56))
            {
              sub_19B8EAB68(&buf, v90);
            }

            else if (sub_19B9A44B0(*v90, 1, 1) >= 0.00001)
            {
              v92 = *a6;
              v93 = a6[1];
              if (*a6 != v93)
              {
                v94 = **(*v90 + 48);
                v95 = *(*(*v90 + 56) - 16);
                do
                {
                  if (*v90 != *v92 && sub_19B9A44B0(*v92, 1, 1) != 0.0)
                  {
                    v96 = *v92;
                    v97 = *(*v92 + 48);
                    if (*v94 == **v97 && v94[1] == *(*v97 + 8))
                    {
                      v98 = *(v96 + 56);
                      if (v97 != v98)
                      {
                        while (*v95 != **v97 || v95[1] != *(*v97 + 8))
                        {
                          v97 += 16;
                          if (v97 == v98)
                          {
                            goto LABEL_182;
                          }
                        }

                        if (*v96 > **v90)
                        {
                          sub_19B8EAB68(&buf, v92);
                        }
                      }
                    }
                  }

LABEL_182:
                  ++v92;
                }

                while (v92 != v93);
              }
            }

            ++v90;
          }

          while (v90 != v91);
          if (buf != *(&buf + 1))
          {
            v99 = *a6;
            v100 = a6[1];
            while (v99 != v100)
            {
              v101 = buf;
              if (buf == *(&buf + 1))
              {
LABEL_192:
                v99 += 16;
              }

              else
              {
                while (*v99 != *v101)
                {
                  v101 += 2;
                  if (v101 == *(&buf + 1))
                  {
                    goto LABEL_192;
                  }
                }

                sub_19B8F1CF8(&v133, (v99 + 16), v100, v99);
                v100 = v102;
                v103 = a6[1];
                if (v103 != v102)
                {
                  do
                  {
                    v104 = *(v103 - 1);
                    if (v104)
                    {
                      sub_19B8750F8(v104);
                    }

                    --v103;
                  }

                  while (v103 != v100);
                  a6[1] = v100;
                }
              }
            }
          }
        }

        *&v135 = &buf;
        sub_19B8F0E84(&v135);
      }

      return;
    }

    v115 = 0;
    v112 = ((v11 - v10) >> 4) * ((v8 - v7) >> 4);
    v110 = v13;
    v113 = a2;
    while (1)
    {
      v16 = v116;
      if (sub_19B9A348C(*v13))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v107 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19B873000, v107, OS_LOG_TYPE_INFO, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,start loop", &buf, 2u);
        }

        v108 = sub_19B87DD40();
        if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
          }

          LOWORD(v135) = 0;
          v89 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,start loop", &v135, 2);
          sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v89);
          goto LABEL_221;
        }

        return;
      }

      if (!*v116)
      {
        break;
      }

      if (**v116)
      {
        v18 = *a5;
        v17 = a5[1];
        for (i = v17; ; v17 = i)
        {
          if (v18 == v17)
          {
            goto LABEL_149;
          }

          if (sub_19B9A348C(*v13))
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
            }

            v105 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_INFO, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,destination loop", &buf, 2u);
            }

            v106 = sub_19B87DD40();
            if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              LOWORD(v135) = 0;
              v89 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,CLAStarRouteConstructor,processingTime exceeded max allowed,constructRouteCandidates,destination loop", &v135, 2);
              sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v89);
              goto LABEL_221;
            }

            return;
          }

          sub_19B8EBC04(a1);
          v19 = *v18;
          if (*v18)
          {
            if (*v19)
            {
              if (-1.0 >= 0.0)
              {
                v36 = fmax(-1.0 * 0.25, 200.0);
                if (v36 < 600.0)
                {
                  v36 = 600.0;
                }

                v28 = v36 + -1.0;
              }

              else
              {
                v20 = *v16;
                v21 = *(*v16 + 3);
                v22 = *(v19 + 3);
                v23 = vabdd_f64(*(v19 + 2), *(*v16 + 2));
                v24 = *(*a2 + 152);
                v25 = 66.6;
                if (v24 == 3)
                {
                  v25 = 30.0;
                }

                if (v24 == 2)
                {
                  v26 = 13.3;
                }

                else
                {
                  v26 = v25;
                }

                *&buf = 0;
                *&v135 = 0;
                sub_19BA0C3BC(&v129, &buf, &v135, v21, *(v20 + 4), 0.0, *(v20 + 5), v22, *(v19 + 4));
                v27 = (fabs(*&buf) + fabs(*&v135)) * 3.0;
                if (v27 >= v23 * v26)
                {
                  v28 = v23 * v26;
                }

                else
                {
                  v28 = v27;
                }
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              v37 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v38 = a1[5];
                v39 = a1[9];
                LODWORD(buf) = 67241472;
                DWORD1(buf) = ++v115;
                WORD4(buf) = 1026;
                *(&buf + 10) = v112;
                HIWORD(buf) = 2050;
                v143 = -1.0;
                v144 = 2050;
                v145 = v28;
                v146 = 2050;
                v147 = v38;
                v148[0] = 2050;
                *&v148[1] = v39;
                _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_DEBUG, "CLTSP,construcRouteCandidates,processing,%{public}d/%{public}d,minRouteLength,%{public}.1lf,maxRouteLength,%{public}.1lf,processingTimeMSec,%{public}.2lf,cumulativeProcessingTimeMSec,%{public}.2lf", &buf, 0x36u);
              }

              v40 = sub_19B87DD40();
              if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v47 = a1[5];
                v48 = a1[9];
                LODWORD(v135) = 67241472;
                DWORD1(v135) = ++v115;
                WORD4(v135) = 1026;
                *(&v135 + 10) = v112;
                HIWORD(v135) = 2050;
                v136 = -1.0;
                v137 = 2050;
                v138 = v28;
                v139 = 2050;
                v140 = v47;
                v141[0] = 2050;
                *&v141[1] = v48;
                v49 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 2, "CLTSP,construcRouteCandidates,processing,%{public}d/%{public}d,minRouteLength,%{public}.1lf,maxRouteLength,%{public}.1lf,processingTimeMSec,%{public}.2lf,cumulativeProcessingTimeMSec,%{public}.2lf", &v135, 54);
                sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v49);
                if (v49 != &buf)
                {
                  free(v49);
                }
              }

              v50 = *a2;
              if (*(*a2 + 152) == 1)
              {
                v51 = *v16;
                v52 = *(*v16 + 2);
                v53 = *v13;
                v54 = v13[1];
                v128[0] = v53;
                v128[1] = v54;
                if (v54)
                {
                  atomic_fetch_add_explicit(v54 + 1, 1uLL, memory_order_relaxed);
                  v51 = *v16;
                }

                v55 = v16[1];
                v127[0] = v51;
                v127[1] = v55;
                if (v55)
                {
                  atomic_fetch_add_explicit(v55 + 1, 1uLL, memory_order_relaxed);
                }

                v56 = *(v18 + 1);
                v126[0] = *v18;
                v126[1] = v56;
                if (v56)
                {
                  atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
                }

                v57 = v113[1];
                v125[0] = *v113;
                v125[1] = v57;
                if (v57)
                {
                  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v124[0] = 0;
                v124[1] = 0;
                v58 = sub_19B9A4AC0(a1, &v129, v128, v127, v126, v125, 1, v124, v52, v28, 5.0);
                if (v57)
                {
                  sub_19B8750F8(v57);
                }

                if (v56)
                {
                  sub_19B8750F8(v56);
                }

                if (v55)
                {
                  sub_19B8750F8(v55);
                }

                a2 = v113;
                if (v54)
                {
                  sub_19B8750F8(v54);
                }

                v16 = v116;
                if (v58)
                {
                  goto LABEL_97;
                }

                v13 = v110;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v59 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
                {
                  v60 = (*v116)[2];
                  LODWORD(buf) = 134349056;
                  *(&buf + 4) = v60;
                  _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,constructRouteCandidates,unable to construct route", &buf, 0xCu);
                }

                v61 = sub_19B87DD40();
                if (*(v61 + 160) > 1 || *(v61 + 164) > 1 || *(v61 + 168) > 1 || *(v61 + 152))
                {
                  bzero(&buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                  }

                  v62 = (*v116)[2];
                  LODWORD(v135) = 134349056;
                  *(&v135 + 4) = v62;
                  v31 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,%{public}.1lf,constructRouteCandidates,unable to construct route", &v135, 12);
                  sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
LABEL_120:
                  if (v31 != &buf)
                  {
                    free(v31);
                  }
                }
              }

              else
              {
                v63 = *v18;
                v135 = *(*v18 + 24);
                v64 = *v16;
                v65 = *(*v16 + 2);
                v66 = v16;
                v67 = v13[1];
                v123[0] = *v13;
                v123[1] = v67;
                if (v67)
                {
                  atomic_fetch_add_explicit(v67 + 1, 1uLL, memory_order_relaxed);
                  v64 = *v66;
                  v63 = *v18;
                  v50 = *a2;
                }

                v68 = a2[1];
                v122[0] = v50;
                v122[1] = v68;
                v69 = v63;
                v70 = v64;
                if (v68)
                {
                  atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
                  v70 = *v116;
                  v69 = *v18;
                }

                v111 = v111 & 0xFFFFFFFFFFFFFF00 | 1;
                v71 = sub_19B9A95C8(a1, &v129, v123, v64, v63, v122, &v135, v65, *(v70 + 6), *(v69 + 6), v41, v42, v43, v44, v45, v46, v28, 1u);
                if (v68)
                {
                  sub_19B8750F8(v68);
                }

                if (v67)
                {
                  sub_19B8750F8(v67);
                }

                a2 = v113;
                if (v71)
                {
                  v16 = v116;
LABEL_97:
                  v72 = v16[1];
                  v120 = *v16;
                  v121 = v72;
                  if (v72)
                  {
                    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v73 = *(v18 + 1);
                  v118 = *v18;
                  v119 = v73;
                  if (v73)
                  {
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_19B9AEA00(a1, &v120, &v118);
                  if (v119)
                  {
                    sub_19B8750F8(v119);
                  }

                  if (v121)
                  {
                    sub_19B8750F8(v121);
                  }

                  v133 = 0uLL;
                  v134 = 0;
                  v74 = *a1;
                  v75 = a1[1];
                  while (v74 != v75)
                  {
                    sub_19B8EAB68(&v133, *v74);
                    v74 += 2;
                  }

                  operator new();
                }

                v16 = v116;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v76 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
                {
                  v77 = (*v116)[2];
                  LODWORD(buf) = 134349056;
                  *(&buf + 4) = v77;
                  _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_INFO, "CLTSP,%{public}.1lf,constructPedestrianRouteCandidates,unable to construct route", &buf, 0xCu);
                }

                v78 = sub_19B87DD40();
                if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
                {
                  bzero(&buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                  }

                  v79 = (*v116)[2];
                  LODWORD(v133) = 134349056;
                  *(&v133 + 4) = v79;
                  v31 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 1, "CLTSP,%{public}.1lf,constructPedestrianRouteCandidates,unable to construct route", &v133, 12);
                  sub_19B885924("Generic", 1, 0, 2, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
                  goto LABEL_120;
                }
              }
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              v32 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                v33 = *(*v18 + 16);
                LODWORD(buf) = 134349056;
                *(&buf + 4) = v33;
                _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,construcRouteCandidates,dest road is null", &buf, 0xCu);
              }

              v34 = sub_19B87DD40();
              if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
                }

                v35 = *(*v18 + 16);
                LODWORD(v135) = 134349056;
                *(&v135 + 4) = v35;
                v31 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.1lf,construcRouteCandidates,dest road is null", &v135, 12);
                sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
                goto LABEL_120;
              }
            }
          }

          else
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
            }

            v29 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLTSP,construcRouteCandidates,dest snap is null", &buf, 2u);
            }

            v30 = sub_19B87DD40();
            if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
              }

              LOWORD(v135) = 0;
              v31 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,construcRouteCandidates,dest snap is null", &v135, 2);
              sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v31);
              goto LABEL_120;
            }
          }

          v18 += 16;
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v83 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v84 = (*v116)[2];
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v84;
        _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,construcRouteCandidates,start road is null", &buf, 0xCu);
      }

      v85 = sub_19B87DD40();
      if ((*(v85 + 160) & 0x80000000) == 0 || (*(v85 + 164) & 0x80000000) == 0 || (*(v85 + 168) & 0x80000000) == 0 || *(v85 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
        }

        v86 = (*v116)[2];
        LODWORD(v135) = 134349056;
        *(&v135 + 4) = v86;
        v82 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,%{public}.1lf,construcRouteCandidates,start road is null", &v135, 12);
        sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v82);
LABEL_147:
        if (v82 != &buf)
        {
          free(v82);
        }
      }

LABEL_149:
      v116 = v16 + 2;
      if (v16 + 2 == v109)
      {
        goto LABEL_165;
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v80 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLTSP,construcRouteCandidates,start snap is null", &buf, 2u);
    }

    v81 = sub_19B87DD40();
    if ((*(v81 + 160) & 0x80000000) != 0 && (*(v81 + 164) & 0x80000000) != 0 && (*(v81 + 168) & 0x80000000) != 0 && !*(v81 + 152))
    {
      goto LABEL_149;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    LOWORD(v135) = 0;
    v82 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,construcRouteCandidates,start snap is null", &v135, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v82);
    goto LABEL_147;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
  }

  v87 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLTSP,CLAStarRouteConstructor,constructRouteCandidates,invalid processingTimeTracker", &buf, 2u);
  }

  v88 = sub_19B87DD40();
  if ((*(v88 + 160) & 0x80000000) == 0 || (*(v88 + 164) & 0x80000000) == 0 || (*(v88 + 168) & 0x80000000) == 0 || *(v88 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    LOWORD(v135) = 0;
    v89 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLTSP,CLAStarRouteConstructor,constructRouteCandidates,invalid processingTimeTracker", &v135, 2);
    sub_19B885924("Generic", 1, 0, 0, "void CLAStarRouteConstructor::constructRouteCandidates(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLGeoMapFeatureAccessGeometryCommon::ProcessingTimeTracker>, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, std::vector<CLRouteCandidatePtr> &)", "CoreLocation: %s\n", v89);
LABEL_221:
    if (v89 != &buf)
    {
      free(v89);
    }
  }
}

void sub_19B9AE8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a65 = &STACK[0x200];
  sub_19B8F0E84(&a65);
  _Unwind_Resume(a1);
}

double sub_19B9AEA00(uint64_t *a1, uint64_t **a2, uint64_t **a3)
{
  v5 = sub_19B9B0CAC(a1, 0.0);
  if (*a2)
  {
    sub_19B9A4630(*a2);
    v5 = v5 - v6;
  }

  if (*a3)
  {
    sub_19B9A45C8(*a3);
    return v5 - v7;
  }

  return v5;
}

BOOL sub_19B9AEA5C(void ****a1, uint64_t a2, uint64_t *a3)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = a3[1];
  v25[0] = *a3;
  v25[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B9AECDC(a1, &v26, v25);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  sub_19B9B0AAC(a2, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 2)
  {
    v9 = *v8;
    if (*v8)
    {
      for (j = v26; j != v27; ++j)
      {
        v11 = *j;
        if (*j)
        {
          v12 = *(v11 + 16);
          if (vabdd_f64(v12, *v9) < 0.001)
          {
            if (*(v11 + 64) == 1 && v12 > 0.0)
            {
              if (*v11)
              {
                v13 = *(v11 + 32);
                v14 = fabs(*(v11 + 24));
                if ((v14 >= 0.00003 || fabs(v13) >= 0.00003) && v13 >= -180.0 && v14 <= 90.0 && v13 <= 180.0)
                {
                  sub_19B8EAB68(a2, j);
                  goto LABEL_31;
                }
              }
            }

            break;
          }
        }
      }

      v15 = v9[4];
      v16 = v9[5];
      v17 = v9[3];
      if (v15 >= 0.0 && v17 > 0.0)
      {
        v18 = v17 + 10.0;
        if (v16 >= v17)
        {
          v18 = v9[5];
        }

        if (v18 <= 179.0)
        {
          v16 = v18;
        }

        else
        {
          v16 = 179.0;
        }
      }

      v24 = 0uLL;
      if (sub_19B8E8210(*a3, &v24, 1, *v9, v9[1], v9[2], v15, v17, v16))
      {
        v19 = v24;
        if (v24)
        {
          v20 = *v8;
          v21 = -1.0;
          if (*(*v8 + 7) > 0.0)
          {
            v21 = *(v20 + 6);
          }

          *(v24 + 104) = v21;
          *(v19 + 120) = *(v20 + 22);
          sub_19B8EAB68(a2, &v24);
        }
      }

      if (*(&v24 + 1))
      {
        sub_19B8750F8(*(&v24 + 1));
      }
    }

LABEL_31:
    ;
  }

  v22 = *a2 != *(a2 + 8);
  *&v24 = &v26;
  sub_19B8F0E84(&v24);
  return v22;
}

void sub_19B9AEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a10 = &a14;
  sub_19B8F0E84(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9AECDC(void ****a1, uint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    sub_19B8EBC04(a2);
    v12 = 0;
    v4 = *(*a3 + 152);
    if (v4 == 1)
    {
      operator new();
    }

    if ((v4 & 0xFFFFFFFE) == 2)
    {
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v8 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid mapmatcher pointer,matchOnRoadUsingParticleMapMatcher", __p, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v13) = 0;
      v10 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Unexpected,invalid mapmatcher pointer,matchOnRoadUsingParticleMapMatcher", &v13, 2);
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLMapMatcherWrapper::matchOnRoadUsingParticleMapMatcher(const std::vector<CLGeoMapLocationPtr> &, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v10);
      if (v10 != __p)
      {
        free(v10);
      }
    }

    sub_19B9B1214(&v12, 0);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,CLTSP,Unexpected,invalid geometry pointer,matchOnRoadUsingParticleMapMatcher", __p, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      LOWORD(v13) = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B873000, off_1EAFE4708, 16, "CLMM,CLTSP,Unexpected,invalid geometry pointer,matchOnRoadUsingParticleMapMatcher", &v13, 2);
      sub_19B885924("Generic", 1, 0, 0, "static BOOL CLMapMatcherWrapper::matchOnRoadUsingParticleMapMatcher(const std::vector<CLGeoMapLocationPtr> &, std::vector<CLGeoMapSnapDataPtr> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v7);
      if (v7 != __p)
      {
        free(v7);
      }
    }
  }

  return 0;
}

void sub_19B9B083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, int a41, char a42, __int16 a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  if (a42 < 0)
  {
    operator delete(a36);
  }

  if (a44 < 0)
  {
    operator delete(a40);
  }

  sub_19B9B1214(&a65, 0);
  if (a20)
  {
    (*(*a20 + 8))(a20);
  }

  if (a21)
  {
    sub_19B8750F8(a21);
  }

  _Unwind_Resume(a1);
}

void **sub_19B9B0AAC(void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_19B8F0D38(result, a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

os_log_t sub_19B9B0B50()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19B9B0B80(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_19B8F08E8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_19B9B0C1C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B9B0C1C(a1, *a2);
    sub_19B9B0C1C(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a2);
  }
}

os_log_t sub_19B9B0C7C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

double sub_19B9B0CAC(uint64_t *a1, double a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0;
  v8 = (v2 - *a1) >> 4;
  v9 = 0.0;
  do
  {
    v10 = *(v3 + v6);
    if (v10)
    {
      if (a2 != 0.0 && v7 < v8 - 1 && *(v3 + v6 + 16))
      {
        v11 = sub_19B96D7D8(v10, 1);
        v12 = sub_19B96D7D8(*(v3 + v6 + 16), 0);
        v13 = fmod(v11 + -90.0 + 90.0 - v12 + 180.0, 360.0);
        if (v13 < 0.0)
        {
          v13 = v13 + 360.0;
        }

        v14 = v13 + -360.0;
        if (v13 <= 180.0)
        {
          v14 = v13;
        }

        v15 = fabs(v14);
        v16 = 0.0;
        if (v15 > 5.0 && v15 < 180.0)
        {
          v16 = a2 / tan(v14 * 0.0174532925 * 0.5);
        }

        v9 = v9 + v16 * -2.0;
        v10 = *(v3 + v6);
      }

      v17 = *v10;
      sub_19B9F5AA8(*v10);
      v9 = v9 + *(v17 + 40);
      v3 = *a1;
      v2 = a1[1];
    }

    ++v7;
    v8 = (v2 - v3) >> 4;
    v6 += 16;
  }

  while (v7 < v8);
  return v9;
}

uint64_t sub_19B9B0E48(uint64_t a1)
{
  *a1 = &unk_1F0E6E168;
  v2 = *(a1 + 2176);
  if (v2)
  {
    *(a1 + 2184) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2088);
  *(a1 + 2088) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 2080);
  *(a1 + 2080) = 0;
  if (v4)
  {
    v16 = (v4 + 232);
    sub_19B8F0E84(&v16);
    v5 = sub_19B9B1004(v4);
    MEMORY[0x19EAE98C0](v5, 0x10B2C406FD4C524);
  }

  v16 = (a1 + 1928);
  sub_19B98868C(&v16);
  v16 = (a1 + 1904);
  sub_19B98868C(&v16);
  v16 = (a1 + 1880);
  sub_19B9886E0(&v16);
  v6 = *(a1 + 1840);
  if (v6)
  {
    *(a1 + 1848) = v6;
    operator delete(v6);
  }

  sub_19B916DC0((a1 + 1808));
  sub_19B916DC0((a1 + 1784));
  if (*(a1 + 1431) < 0)
  {
    operator delete(*(a1 + 1408));
  }

  v7 = *(a1 + 1176);
  if (v7)
  {
    *(a1 + 1184) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 1096);
  if (v8)
  {
    sub_19B8750F8(v8);
  }

  sub_19B9679F8((a1 + 1040));
  v9 = *(a1 + 1000);
  if (v9)
  {
    sub_19B8750F8(v9);
  }

  if (*(a1 + 655) < 0)
  {
    operator delete(*(a1 + 632));
  }

  v10 = *(a1 + 472);
  if (v10)
  {
    *(a1 + 480) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 392);
  if (v11)
  {
    sub_19B8750F8(v11);
  }

  v12 = *(a1 + 352);
  if (v12)
  {
    *(a1 + 360) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 272);
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  v16 = (a1 + 240);
  sub_19B988734(&v16);
  v14 = *(a1 + 216);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  return a1;
}

uint64_t sub_19B9B1004(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E118);
      }

      v8[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, off_1EAFE4708, 0, "CLGCZ,destroy geocodec malloc zone,~CLGeoMapGeometry()", v8, 2);
      sub_19B885924("Generic", 1, 0, 2, "CLGeoMapGeometry::~CLGeoMapGeometry()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    MEMORY[0x19EAE9260]();

    *(a1 + 88) = 0;
  }

  v5 = *(a1 + 96);
  if (v5)
  {

    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 104);
  if (v6)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_19B93466C(a1);
  return a1;
}

void sub_19B9B1208(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_19B890AB0(a1);
}

uint64_t *sub_19B9B1214(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 2248);
    if (v3)
    {
      *(v2 + 2256) = v3;
      operator delete(v3);
    }

    sub_19B9B0E48(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

void sub_19B9B12A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B1300(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19B9B1380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19B9B1394(va);
  _Unwind_Resume(a1);
}

void **sub_19B9B1394(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B96D47C(v2);
    MEMORY[0x19EAE98C0](v3, 0x10A0C4085F86E2DLL);
  }

  return a1;
}

void sub_19B9B13E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void *sub_19B9B1418(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B96D47C(result);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B9B145C(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6E2A0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19B9B14BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E2C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B1558(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6E318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9B15D4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_ERROR, "#Spi, Interrupted", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi, Interrupted", v3, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient connection]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

void sub_19B9B17CC(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = a2;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi, Error with asynchronous proxy, error: %@", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = 138412290;
    v7 = a2;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi, Error with asynchronous proxy, error: %@", &v6, 12);
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient asynchronousRemoteObject]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

void sub_19B9B1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B1B70(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B1C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B1FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B1FFC(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_19B9B21D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B21FC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_19B9B2308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2320(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B9B2410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2428(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 40) = a3;
    return *(*(result[4] + 8) + 40);
  }

  return result;
}

void sub_19B9B2518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2530(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 40) = a3;
      return *(*(result[4] + 8) + 40);
    }
  }

  return result;
}

void sub_19B9B2600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B2618(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B9B2868(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, Couldn't set location default!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, Couldn't set location default!", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationDefaultForKey:value:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B2B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B2B30(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Spi, getLocationDefaultForKey, , error:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void *sub_19B9B2DD4(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      v4 = result;
      v5 = objc_alloc(MEMORY[0x1E695DFE8]);
      result = objc_msgSend_initWithName_(v5, v6, a3, v7);
      *(*(v4[4] + 8) + 40) = result;
    }
  }

  return result;
}

void sub_19B9B2E68(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, setPrivateMode failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, setPrivateMode failed", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setPrivateMode:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B30B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B30C8(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B9B3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B3220(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetLocationServicesEnabled failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, CLInternalSetLocationServicesEnabled failed", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationServicesEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B3470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B3488(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3 == 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B3594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B35AC(void *result, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v7[0] = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, CLInternalSetAuthorizationPromptMapDisplayEnabled failed", v7, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setAuthorizationPromptMapDisplayEnabled:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B3834(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B39D0(void *result, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLSetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLSetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    result = objc_msgSend_copy(a2, v6, v7, v8);
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B3C84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLGetClientTransientAuthorizationInfo failed", "{msg%{public}.0s:#Spi, CLGetClientTransientAuthorizationInfo failed, error:%{public, location:escape_only}@}", &v10, 0x1Cu);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = a2;
    }
  }

  result = objc_msgSend_copy(a3, a2, a3, a4);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B3F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B3F38(uint64_t a1, uint64_t a2, double a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v7 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalChangeClientAuthorizationTime failed", "{msg%{public}.0s:#Spi, CLInternalChangeClientAuthorizationTime failed, error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

void sub_19B9B41B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B41CC(void *result, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v6, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v5 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalTriggerExpiredAuthorizationPurge failed", "{msg%{public}.0s:#Spi, CLInternalTriggerExpiredAuthorizationPurge failed, error:%{public, location:escape_only}@}", &v6, 0x1Cu);
    }

    result = a2;
    *(*(v3[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B43B8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_FAULT, "#Spi, CLInternalSetGestureServiceEnabled failed", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, CLInternalSetGestureServiceEnabled failed", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setGestureServiceEnabled:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B4608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B4620(uint64_t result, uint64_t a2, char a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_19B9B4720(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B4808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B4820(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B4AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

_BYTE **sub_19B9B4AFC(_BYTE **result, void *a2, char a3)
{
  v3 = result;
  if (a2)
  {
    result = a2;
    *(*(v3[5] + 1) + 40) = result;
  }

  else
  {
    *result[6] = a3;
    *(*(result[4] + 1) + 24) = 1;
  }

  return result;
}

void sub_19B9B4D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B4FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B5234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B549C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B5590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B55A8(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (a3)
    {
      *(*(result[4] + 8) + 24) = a3;
      return CFRetain(*(*(result[4] + 8) + 24));
    }
  }

  return result;
}

void sub_19B9B5764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5794(void *a1, void *a2, char a3)
{
  result = a2;
  *(*(a1[4] + 8) + 40) = result;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_19B9B5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5988(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5B54(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5D10(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_19B9B5EBC(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B600C(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, result[5], 156);
    *(*(v3[4] + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B613C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_19B9B6154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v3 = *(a1 + 40);
    result = *a3;
    v5 = *(a3 + 16);
    *v3 = *a3;
    v3[1] = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B6540(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#Spi,RouteHintError,Couldn't set map-matching route hint!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,RouteHintError,Couldn't set map-matching route hint!", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setMapMatchingRouteHint:count:routingType:stepType:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B68C4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v2 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v5[0] = 0;
      v4 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,CLTR,TrackRunHintError,Couldn't set track run hint!", v5, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setTrackRunHint:]_block_invoke", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }
}

void sub_19B9B6CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B6CD8(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v7[0] = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#Spi,getAccessoryPASCDTransmissionState,failed", v7, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryPASCDTransmissionState]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a3 = 4;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
}

void sub_19B9B712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7150(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,getOdometryBatchedLocations,returned with error", buf, 2u);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LOWORD(v18) = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,getOdometryBatchedLocations,returned with error", &v18, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v21 = objc_msgSend_count(a3, v9, v10, v11);
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v16 = qword_1ED519090;
      v18 = 134349056;
      v19 = objc_msgSend_count(a3, v13, v14, v15);
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 2, "#Spi,getOdometryBatchedLocations,received data count,%{public}lu", &v18, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getOdometryBatchedLocations]_block_invoke", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    *(*(*(a1 + 32) + 8) + 40) = a3;
  }
}

void sub_19B9B76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B7A1C(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 48);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v8, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v7 = *(a1 + 48);
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v7;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Getting status bar enabled for entity class failed", "{msg%{public}.0s:Getting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", &v8, 0x1Cu);
    }
  }

  else
  {
    **(a1 + 40) = a3;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_19B9B7C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B7C8C(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
  }

  return result;
}

void sub_19B9B7DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B7DC8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    a3 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, a3, a4);
  }

  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B7EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B7EE0(void *result, uint64_t a2, void *a3)
{
  if (!a2)
  {
    v3 = result;
    result = objc_msgSend_getBytes_length_(a3, a2, result[5], 320);
    *(*(v3[4] + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B8014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B8318(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9B83FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B87A8(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

uint64_t sub_19B9B87E4(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(result + 48);
  **(result + 40) = a4;
  *v9 = a5;
  v10 = *(result + 64);
  **(result + 56) = a6;
  *v10 = a7;
  v11 = *(result + 80);
  **(result + 72) = a8;
  *v11 = a9;
  **(result + 88) = a3;
  *(*(*(result + 32) + 8) + 40) = a2;
  return result;
}

void sub_19B9B88E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B8900(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 48);
  **(result + 40) = a3;
  *v4 = a4;
  *(*(*(result + 32) + 8) + 24) = a2 == 0;
  return result;
}

void sub_19B9B89CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8AE0(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B8BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8C04(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void sub_19B9B8D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B8D34(void *result, void *a2, int a3, int a4)
{
  v6 = result;
  if (a2)
  {
    result = a2;
    *(*(v6[4] + 8) + 40) = result;
  }

  v7 = v6[5];
  if (v7)
  {
    *v7 = a3;
  }

  v8 = v6[6];
  if (v8)
  {
    *v8 = a4;
  }

  return result;
}

void sub_19B9B8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B8F58(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B9B907C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B9094(uint64_t a1, void *a2, void *a3)
{
  result = a3;
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (a2)
  {
    result = a2;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_19B9B91D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B91F0(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_19B9B9338(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_19B9B946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9B982C(uint64_t result, double a2, double a3, uint64_t a4, char a5)
{
  *(*(*(result + 32) + 8) + 24) = a5;
  v5 = *(result + 40);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void sub_19B9B99CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_19B9B99E4(void *result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    *(*(result[4] + 8) + 24) = a3;
    return CFRetain(*(*(result[4] + 8) + 24));
  }

  return result;
}

void sub_19B9B9AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9B9FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA0A8(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_FAULT, "#Spi, TimeSyncWithReplyBlock failed", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v7[0] = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, TimeSyncWithReplyBlock failed", v7, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient timeSyncMachTimeStamp:oscarTimeStamp:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    **(a1 + 40) = a3;
    **(a1 + 48) = a4;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_19B9BA42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA638(uint64_t result, uint64_t a2, double a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA740(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9BA848(uint64_t result, uint64_t a2, int a3)
{
  if (!a2)
  {
    **(result + 40) = a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_19B9BA914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BA92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,getRecentLocationsBufferStatusWithReplyBlock failed with error %@", buf, 0xCu);
    }

    v5 = sub_19B87DD40();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v8 = 138412290;
      v9 = a2;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,getRecentLocationsBufferStatusWithReplyBlock failed with error %@", &v8, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient copyRecentLocationsBufferStatus]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    v7 = *(*(*(a1 + 32) + 8) + 24);

    CFRetain(v7);
  }
}

void sub_19B9BAB90(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,triggerRecentLocationsRevisedFromMachContinuousTime,could not ping for revised locations notification %@", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = 138412290;
      v7 = a2;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,triggerRecentLocationsRevisedFromMachContinuousTime,could not ping for revised locations notification %@", &v6, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient triggerRecentLocationsRevisedFromMachContinuousTime:toMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B9BAE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BAE88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationAtCfAbsoluteTime,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v42[0]) = 138412290;
      *(v42 + 4) = a2;
      v8 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,fetchRecentLocationAtCfAbsoluteTime,failed with error %@", v42, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationAtCfAbsoluteTime:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && objc_msgSend_count(a3, 0, a3, a4))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(a3, v14, v15, v16);
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v23 = qword_1ED519090;
      LODWORD(v42[0]) = 134217984;
      *(v42 + 4) = objc_msgSend_count(a3, v20, v21, v22);
      v24 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v23, 2, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", v42, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationAtCfAbsoluteTime:]_block_invoke", "CoreLocation: %s\n", v24);
      if (v24 != &buf)
      {
        free(v24);
      }
    }

    v51 = 0u;
    memset(v52, 0, 28);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 0, v19);
    objc_msgSend_getBytes_length_(v25, v26, &buf, 156);
    v41 = -1.0;
    v29 = objc_msgSend_objectAtIndexedSubscript_(a4, v27, 0, v28);
    objc_msgSend_getValue_(v29, v30, &v41, v31);
    v32 = [CLLocationExtendedTimestamps alloc];
    v33 = objc_alloc(MEMORY[0x1E6985C40]);
    v42[6] = v50;
    v42[7] = v51;
    v43[0] = v52[0];
    *(v43 + 12) = *(v52 + 12);
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = buf;
    v42[1] = v45;
    v36 = objc_msgSend_initWithClientLocation_(v33, v34, v42, v35);
    v39 = objc_msgSend_objectAtIndexedSubscript_(a5, v37, 0, v38);
    *(*(*(a1 + 32) + 8) + 40) = objc_msgSend_initWithCLLocation_systemTime_machContinuousTimeSec_(v32, v40, v36, v39, v41);
  }
}

void sub_19B9BB3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BB408(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationAtMachContinuousTime,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v42[0]) = 138412290;
      *(v42 + 4) = a2;
      v8 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,fetchRecentLocationAtMachContinuousTime,failed with error %@", v42, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationAtMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && objc_msgSend_count(a3, 0, a3, a4))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(a3, v14, v15, v16);
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v23 = qword_1ED519090;
      LODWORD(v42[0]) = 134217984;
      *(v42 + 4) = objc_msgSend_count(a3, v20, v21, v22);
      v24 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v23, 2, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", v42, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationAtMachContinuousTime:]_block_invoke", "CoreLocation: %s\n", v24);
      if (v24 != &buf)
      {
        free(v24);
      }
    }

    v51 = 0u;
    memset(v52, 0, 28);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    buf = 0u;
    v25 = objc_msgSend_objectAtIndexedSubscript_(a3, v18, 0, v19);
    objc_msgSend_getBytes_length_(v25, v26, &buf, 156);
    v41 = -1.0;
    v29 = objc_msgSend_objectAtIndexedSubscript_(a4, v27, 0, v28);
    objc_msgSend_getValue_(v29, v30, &v41, v31);
    v32 = [CLLocationExtendedTimestamps alloc];
    v33 = objc_alloc(MEMORY[0x1E6985C40]);
    v42[6] = v50;
    v42[7] = v51;
    v43[0] = v52[0];
    *(v43 + 12) = *(v52 + 12);
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = buf;
    v42[1] = v45;
    v36 = objc_msgSend_initWithClientLocation_(v33, v34, v42, v35);
    v39 = objc_msgSend_objectAtIndexedSubscript_(a5, v37, 0, v38);
    *(*(*(a1 + 32) + 8) + 40) = objc_msgSend_initWithCLLocation_systemTime_machContinuousTimeSec_(v32, v40, v36, v39, v41);
  }
}

void sub_19B9BB970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B9BB988(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v71 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,fetchRecentLocationsInLastSeconds,failed with error %@", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      LODWORD(v60[0]) = 138412290;
      *(v60 + 4) = a2;
      v8 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,fetchRecentLocationsInLastSeconds,failed with error %@", v60, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient fetchRecentLocationsInLastSeconds:]_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }
  }

  else if (a3 && objc_msgSend_count(a3, 0, a3, a4))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(a3, v14, v15, v16);
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", &buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v21 = qword_1ED519090;
      LODWORD(v60[0]) = 134217984;
      *(v60 + 4) = objc_msgSend_count(a3, v18, v19, v20);
      v22 = _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B873000, v21, 2, "#Spi,locctl_tool,got fetchRecentLocationsWithOptions from synchronousRemoteObject,count,%lu", v60, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient fetchRecentLocationsInLastSeconds:]_block_invoke", "CoreLocation: %s\n", v22);
      if (v22 != &buf)
      {
        free(v22);
      }
    }

    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    v27 = objc_msgSend_count(a3, v24, v25, v26);
    *(*(*(a1 + 32) + 8) + 40) = objc_msgSend_initWithCapacity_(v23, v28, v27, v29);
    if (objc_msgSend_count(a3, v30, v31, v32))
    {
      v35 = 0;
      do
      {
        v69 = 0u;
        memset(v70, 0, 28);
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        buf = 0u;
        v36 = objc_msgSend_objectAtIndexedSubscript_(a3, v33, v35, v34);
        objc_msgSend_getBytes_length_(v36, v37, &buf, 156);
        v59 = -1.0;
        v40 = objc_msgSend_objectAtIndexedSubscript_(a4, v38, v35, v39);
        objc_msgSend_getValue_(v40, v41, &v59, v42);
        v43 = [CLLocationExtendedTimestamps alloc];
        v44 = objc_alloc(MEMORY[0x1E6985C40]);
        v60[6] = v68;
        v60[7] = v69;
        v61[0] = v70[0];
        *(v61 + 12) = *(v70 + 12);
        v60[2] = v64;
        v60[3] = v65;
        v60[4] = v66;
        v60[5] = v67;
        v60[0] = buf;
        v60[1] = v63;
        v47 = objc_msgSend_initWithClientLocation_(v44, v45, v60, v46);
        v50 = objc_msgSend_objectAtIndexedSubscript_(a5, v48, v35, v49);
        v52 = objc_msgSend_initWithCLLocation_systemTime_machContinuousTimeSec_(v43, v51, v47, v50, v59);
        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v53, v52, v54);
        ++v35;
      }

      while (objc_msgSend_count(a3, v55, v56, v57) > v35);
    }

    v58 = *(*(*(a1 + 32) + 8) + 40);
  }
}

void sub_19B9BBE70(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = a2;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "#Spi,locctl_tool,requestRouteReconstructionForPedestrian,could not request:%@", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v6 = 138412290;
      v7 = a2;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,locctl_tool,requestRouteReconstructionForPedestrian,could not request:%@", &v6, 12);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient requestRouteReconstructionForPedestrian]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

uint64_t sub_19B9BC0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetAuthorizationStatus", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetAuthorizationStatus, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setAuthorizationStatus_withCorrectiveCompensation_forBundleID_orBundlePath_(v11, v12, a3, 0, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t sub_19B9BC264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_reportLocationUtilityEvent_atDate_, a1, a2);
}

void sub_19B9BC2AC(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLClearLocationAuthorization", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = a1;
    v20 = 2114;
    v21 = a2;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLClearLocationAuthorization, event:%{public, location:escape_only}s, bundleId:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  objc_msgSend_clearLocationAuthorizationForBundleId_orBundlePath_(v9, v10, a1, a2);
  os_activity_scope_leave(&v11);
}

uint64_t sub_19B9BC420(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v4, sel_clearLocationAuthorizations, v5, v6);
}

uint64_t CLCopyAppsUsingLocation()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyAppsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyAppsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_copyAppsUsingLocation(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

uint64_t CLCopyActiveClientsUsingLocation()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyActiveClientsUsingLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyActiveClientsUsingLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  active = objc_msgSend_copyActiveClientsUsingLocation(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return active;
}

uint64_t CLCopyInternalState()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyInternalState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyInternalState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_copyInternalState(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

void CLSetLocationDefault(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLSetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = a1;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  objc_msgSend_setLocationDefaultForKey_value_(v9, v10, a1, a2);
  os_activity_scope_leave(&v11);
}

uint64_t CLCopyZaxisStats()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyZaxisStats", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyZaxisStats, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_copyZaxisStats(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

uint64_t CLGetLocationDefault(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLGetLocationDefault", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = a1;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetLocationDefault, event:%{public, location:escape_only}s, key:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  LocationDefaultForKey = objc_msgSend_getLocationDefaultForKey_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return LocationDefaultForKey;
}

uint64_t CLGetPipelinedCache()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetPipelinedCaches", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetPipelinedCaches, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  PipelinedCache = objc_msgSend_getPipelinedCache(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return PipelinedCache;
}

uint64_t CLGetMotionSensorLogs()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  MotionSensorLogs = objc_msgSend_getMotionSensorLogs(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return MotionSensorLogs;
}

uint64_t CLGetAccessoryMotionSensorLogs()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetAccessoryMotionSensorLogs", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetAccessoryMotionSensorLogs, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  AccessoryMotionSensorLogs = objc_msgSend_getAccessoryMotionSensorLogs(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return AccessoryMotionSensorLogs;
}

uint64_t CLApplyArchivedAuthorizationDecisions(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLApplyArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLApplyArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  v10 = objc_msgSend_applyArchivedAuthorizationDecisions_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return v10;
}

uint64_t CLGetArchivedAuthorizationDecisions(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLGetArchivedAuthorizationDecisions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetArchivedAuthorizationDecisions, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  ArchivedAuthorizationDecisionsWithError = objc_msgSend_getArchivedAuthorizationDecisionsWithError_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return ArchivedAuthorizationDecisionsWithError;
}

uint64_t sub_19B9BD300(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLTimeZoneAtLocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v2, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLTimeZoneAtLocation, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
  v10 = objc_msgSend_timeZoneAtLocation_(v7, v8, a1, v9);
  os_activity_scope_leave(&v12);
  return v10;
}

uint64_t CLStartStopAdvertisingBeacon(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLStartStopAdvertisingBeacon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289795;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2113;
    v21 = a1;
    v22 = 2114;
    v23 = a2;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLStartStopAdvertisingBeacon, event:%{public, location:escape_only}s, region:%{private, location:escape_only}@, power:%{public, location:escape_only}@}", buf, 0x30u);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  started = objc_msgSend_startStopAdvertisingBeacon_power_(v9, v10, a1, a2);
  os_activity_scope_leave(&v13);
  return started;
}

uint64_t sub_19B9BD5D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_setPrivateMode_, a1, v6);
}

uint64_t sub_19B9BD618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v4, sel_getPrivateMode, v5, v6);
}

uint64_t CLPingDaemon()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLPingDaemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPingDaemon, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_pingDaemon(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

void CLPassKitNotifyPayment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLPassKitNotifyPassUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v6, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPassKitNotifyPassUsage, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  objc_msgSend_notifyPassKitPayment_transaction_info_(v11, v12, a1, a2, a3);
  os_activity_scope_leave(&v13);
}

void CLWeatherNotifyForecast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLWeatherNotifyForecastUsage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    v59 = 2082;
    v60 = "";
    v61 = 2082;
    v62 = "activity";
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLWeatherNotifyForecastUsage, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  v9 = MEMORY[0x1E695DEC8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v18 = objc_msgSend_arrayWithObjects_(v9, v16, v10, v17, v11, v12, v13, v14, v15, 0);
  v19 = objc_alloc(MEMORY[0x1E695DF90]);
  v21 = objc_msgSend_initWithDictionary_copyItems_(v19, v20, a1, 1);
  v44 = a5;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v22, &v51, v57, 16);
  if (v26)
  {
    obj = a1;
    v46 = *v52;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v51 + 1) + 8 * i);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v23, &v47, v56, 16);
        if (!v30)
        {
          goto LABEL_18;
        }

        v31 = 0;
        v32 = *v48;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v18);
            }

            objc_msgSend_objectForKeyedSubscript_(v21, v23, v28, v29);
            v31 |= objc_opt_isKindOfClass();
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v23, &v47, v56, 16);
        }

        while (v30);
        if ((v31 & 1) == 0)
        {
LABEL_18:
          objc_msgSend_removeObjectForKey_(v21, v23, v28, v29);
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v51, v57, 16);
    }

    while (v26);
  }

  v34 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v23, v24, v25);
  objc_msgSend_coordinate(v44, v35, v36, v37);
  v39 = v38;
  objc_msgSend_coordinate(v44, v40, v41, v42);
  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v34, v43, v21, MEMORY[0x1E695E0F8], MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v39);

  os_activity_scope_leave(&state);
}

uint64_t sub_19B9BDCA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_setLocationServicesEnabled_, a1, v6);
}

uint64_t sub_19B9BDCE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_getAuthorizationPromptMapDisplayEnabled_, a1, v6);
}

uint64_t CLGetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLGetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  TemporaryAuthorizationStatusForBundleId_orBundlePath_error = objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_error_(v11, v12, a1, a2, a3);
  os_activity_scope_leave(&v15);
  return TemporaryAuthorizationStatusForBundleId_orBundlePath_error;
}

uint64_t CLSetClientTransientAuthorizationInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLSetClientTransientAuthorizationInfo", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetClientTransientAuthorizationInfo, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_(v11, v12, a1, a2, a3);
  os_activity_scope_leave(&v15);
  return v13;
}

uint64_t sub_19B9BE008(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_setAuthorizationPromptMapDisplayEnabled_, a1, v6);
}

uint64_t sub_19B9BE048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetPrecisionPermission", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetPrecisionPermission, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  PrecisionPermission_forBundleID_orBundlePath = objc_msgSend_getPrecisionPermission_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return PrecisionPermission_forBundleID_orBundlePath;
}

uint64_t sub_19B9BE1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalGetIncidentalUseMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalGetIncidentalUseMode, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  IncidentalUseMode_forBundleID_orBundlePath = objc_msgSend_getIncidentalUseMode_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return IncidentalUseMode_forBundleID_orBundlePath;
}

uint64_t sub_19B9BE440(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v10 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);
  return objc_msgSend_setRelevance_forInterestZoneWithId_registeredForBundleId_orBundlePath_error_(v10, v11, v6 != 0, a3, a1, a2, a5);
}

uint64_t CLInternalPerformMigration()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLInternalPerformMigration", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalPerformMigration, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_performMigration(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

uint64_t sub_19B9BE64C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v4, sel_shutdownDaemon, v5, v6);
}

uint64_t CLClientDisplayStats_0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v4, sel_displayStatistics, v5, v6);
}

uint64_t sub_19B9BE6AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_dumpLogs_, a1, v6);
}

uint64_t sub_19B9BE6EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_setStatusBarIconEnabled_forEntityClass_, a2, a1);
}

uint64_t sub_19B9BE734(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_getStatusBarIconEnabled_forEntityClass_, a2, a1);
}

uint64_t CLGetStatusBarIconState()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLGetStatusBarIconState", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetStatusBarIconState, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  StatusBarIconState = objc_msgSend_getStatusBarIconState(v5, v6, v7, v8);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v17 = StatusBarIconState;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "CLStatusBarIconState received an icon stateu of %d", buf, 8u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v15[0] = 67109120;
    v15[1] = StatusBarIconState;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "CLStatusBarIconState received an icon stateu of %d", v15, 8);
    sub_19B885924("Generic", 1, 0, 2, "CLStatusBarIconState CLGetStatusBarIconState()", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  os_activity_scope_leave(&state);
  return StatusBarIconState;
}

void CLSetRouteHintsForMapMatching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLSetRouteHintsForMapMatching", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v22 = 0;
    *&v22[4] = 2082;
    *&v22[6] = "";
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetRouteHintsForMapMatching, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *v22 = a3;
    *&v22[8] = 1024;
    *&v22[10] = a1;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", buf, 0x12u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v17 = 134218240;
    v18 = a3;
    v19 = 1024;
    v20 = a1;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "RouteHints,CLSetRouteHintsForMapMatching,received,%lu,routeType,%d", &v17, 18);
    sub_19B885924("Generic", 1, 0, 2, "void CLSetRouteHintsForMapMatching(CLClientLocationRouteHintType, CLMapsRouteHint *, int)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v10, v11, v12);
  objc_msgSend_setMapMatchingRouteHint_count_routingType_stepType_(v14, v15, a2, a3, a1, a1);
  os_activity_scope_leave(&state);
}

void CLSetTrackRunHint(uint64_t *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLSetTrackRunHint", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *v27 = 0;
    *&v27[4] = 2082;
    *&v27[6] = "";
    v28 = 2082;
    v29 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLSetTrackRunHint, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 3);
    *buf = 134349569;
    *v27 = v5;
    *&v27[8] = 1025;
    *&v27[10] = v6;
    v28 = 1025;
    LODWORD(v29) = v7;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", buf, 0x18u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v12 = *a1;
    v13 = *(a1 + 2);
    v14 = *(a1 + 3);
    v20 = 134349569;
    v21 = v12;
    v22 = 1025;
    v23 = v13;
    v24 = 1025;
    v25 = v14;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "TrackRunHint,CLSetTrackRunHint,received,MCTime,%{public}.1lf,lane,%{private}d,notification,%{private}d", &v20, 24);
    sub_19B885924("Generic", 1, 0, 2, "void CLSetTrackRunHint(CLTrackRunHint *)", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v9, v10, v11);
  objc_msgSend_setTrackRunHint_(v16, v17, a1, v18);
  os_activity_scope_leave(&state);
}

uint64_t CLGetAccessoryPASCDTransmissionState()
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEBUG, "CLGetAccessoryPASCDTransmissionState", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v11[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "CLGetAccessoryPASCDTransmissionState", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "CLClientPASCDTransmissionState CLGetAccessoryPASCDTransmissionState()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  return objc_msgSend_getAccessoryPASCDTransmissionState(v6, v7, v8, v9);
}

uint64_t CLGetOdometryBatchedLocations()
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v0 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "CLGetOdometryBatchedLocations", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v11[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "CLGetOdometryBatchedLocations", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "NSDictionary *CLGetOdometryBatchedLocations()", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  return objc_msgSend_getOdometryBatchedLocations(v6, v7, v8, v9);
}

uint64_t sub_19B9BF390(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_getGroundAltitudeForBundleID_orBundlePath_location_groundAltitude_, a1, a2);
}

uint64_t sub_19B9BF3F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v6, sel_checkAndExerciseAuthorizationForBundleID_orBundlePath_services_error_, a1, a2);
}

uint64_t CLGetControlPlaneStatusReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = _os_activity_create(&dword_19B873000, "CL: CLGetControlPlaneStatusReport", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "activity";
    v32 = 1026;
    v33 = a1;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetControlPlaneStatusReport, event:%{public, location:escape_only}s, clear:%{public}d}", buf, 0x22u);
  }

  v21 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v18, v19, v20);
  ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status = objc_msgSend_getControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status_(v21, v22, a1, a2, a3, a4, a5, a6, a7, a8);
  os_activity_scope_leave(&state);
  return ControlPlaneStatusReportClear_startTime_endTime_latitude_longitude_altitude_accuracy_status;
}

uint64_t CLGetEmergencyLocationSettingsVersionInfo(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLGetEmergencyLocationSettingsVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGetEmergencyLocationSettingsVersion, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  EmergencyLocationSettingsCompatibilityVersion_andContentVersion = objc_msgSend_getEmergencyLocationSettingsCompatibilityVersion_andContentVersion_(v9, v10, a1, a2);
  os_activity_scope_leave(&v13);
  return EmergencyLocationSettingsCompatibilityVersion_andContentVersion;
}

uint64_t CLDeleteCurrentEmergencyLocationAsset()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLDeleteCurrentEmergencyLocationAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLDeleteCurrentEmergencyLocationAsset, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_deleteCurrentEmergencyLocationAsset(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

uint64_t CLCopyNearbyAssetSettings()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLCopyNearbyAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  v9 = objc_msgSend_copyNearbyAssetSettings(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return v9;
}

uint64_t CLCopyNearbyAssetSettingsOfAccessoryFile(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19B873000, "CL: CLCopyNearbyAssetSettingsOfAccessoryFile", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v2, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyNearbyAssetSettingsOfAccessoryFile, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (a1)
  {
    v7 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v4, v5, v6);
    a1 = objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_(v7, v8, a1, v9);
  }

  os_activity_scope_leave(&v11);
  return a1;
}

uint64_t CLCopyRoutineAssetSettings(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLCopyRoutineAssetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLCopyRoutineAssetSettings, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v6, v7, v8);
  v11 = objc_msgSend_copyRoutineAssetSettingsWithCompatibilityVersion_contentVersion_(v9, v10, a1, a2);
  os_activity_scope_leave(&v13);
  return v11;
}

uint64_t CLShouldDisplayEEDUI()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = _os_activity_create(&dword_19B873000, "CL: CLShouldDisplayEEDUI", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v0, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v1 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLShouldDisplayEEDUI, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v2, v3, v4);
  shouldDisplayEEDUI = objc_msgSend_shouldDisplayEEDUI(v5, v6, v7, v8);
  os_activity_scope_leave(&v11);
  return shouldDisplayEEDUI;
}

uint64_t CLGetEEDCloakingKey(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_getEEDCloakingKey_, a1, v6);
}

uint64_t CLGetEEDEmergencyContactNames(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, a3, a4);

  return MEMORY[0x1EEE66B58](v5, sel_getEEDEmergencyContactNames_, a1, v6);
}

uint64_t sub_19B9BFEA4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetTemporaryAuthorizationGranted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v12, &v22);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetTemporaryAuthorizationGranted, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v17 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v14, v15, v16);
  v18 = a3[1];
  *buf = *a3;
  *&buf[16] = v18;
  v20 = objc_msgSend_setTemporaryAuthorizationGranted_forBundleID_orBundlePath_orAuditToken_byLocationButton_voiceInteractionEnabled_(v17, v19, a4, a1, a2, buf, a5, a6);
  os_activity_scope_leave(&v22);
  return v20;
}

uint64_t sub_19B9C0044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLInternalSetTemporaryPreciseAuthorizationGranted", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v6, &v15);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLInternalSetTemporaryPreciseAuthorizationGranted, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v11 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, v8, v9, v10);
  v13 = objc_msgSend_setTemporaryPreciseAuthorizationGranted_forBundleID_orBundlePath_(v11, v12, a3, a1, a2);
  os_activity_scope_leave(&v15);
  return v13;
}