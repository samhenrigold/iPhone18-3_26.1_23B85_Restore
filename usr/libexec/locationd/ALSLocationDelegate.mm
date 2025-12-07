@interface ALSLocationDelegate
- (ALSLocationDelegate)initWithRequester:(void *)requester;
- (void)dealloc;
- (void)finished:(id)finished;
- (void)populateLocationFromTower:(id)tower location:(CLDaemonLocation *)location timeReceived:(double)received;
- (void)processCells:(id)cells inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag;
- (void)processScdmaCells:(id)cells inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag;
- (void)processWireless:(id)wireless inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag surroundingWifiBands:(const void *)bands;
- (void)requester:(id)requester didFailWithError:(id)error;
- (void)requester:(id)requester didReceiveResponse:(id)response forRequest:(id)request;
- (void)requesterDidFinish:(id)finish;
@end

@implementation ALSLocationDelegate

- (ALSLocationDelegate)initWithRequester:(void *)requester
{
  v6.receiver = self;
  v6.super_class = ALSLocationDelegate;
  v4 = [(ALSLocationDelegate *)&v6 init];
  if (v4)
  {
    v4->fRequestersWithOutstandingRequests = objc_alloc_init(NSMutableSet);
    v4->fRequester = requester;
  }

  return v4;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fRequestersWithOutstandingRequests = self->fRequestersWithOutstandingRequests;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(fRequestersWithOutstandingRequests, a2, &v9, v13, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(fRequestersWithOutstandingRequests);
        }

        [*(*(&v9 + 1) + 8 * i) cancel];
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(fRequestersWithOutstandingRequests);
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = ALSLocationDelegate;
  [(ALSLocationDelegate *)&v8 dealloc];
}

- (void)requester:(id)requester didReceiveResponse:(id)response forRequest:(id)request
{
  Current = CFAbsoluteTimeGetCurrent();
  cellTowers = [response cellTowers];
  scdmaCellTowers = [response scdmaCellTowers];
  cdmaCellTowers = [response cdmaCellTowers];
  lteCellTowers = [response lteCellTowers];
  nr5GCellTowers = [response nr5GCellTowers];
  wirelessAPs = [response wirelessAPs];
  [requester timestamp];
  v14 = Current - v13;
  v55 = wirelessAPs;
  if ([wirelessAPs count])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240960;
      *&buf[4] = [requester tag];
      *&buf[8] = 2050;
      *&buf[10] = v14;
      v68 = 2050;
      v69 = [wirelessAPs count];
      v70 = 1026;
      type = [requester type];
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, wifi, rtt, %{public}.1f, aps, %{public}lu, type, %{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      v46 = qword_1025D4628;
      LODWORD(__p) = 67240960;
      HIDWORD(__p) = [requester tag];
      *v64 = 2050;
      *&v64[2] = v14;
      *&v64[10] = 2050;
      *&v64[12] = [wirelessAPs count];
      v65 = 1026;
      type2 = [requester type];
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v46, 0, "@AlsFlow, reply, tag, %{public}d, wifi, rtt, %{public}.1f, aps, %{public}lu, type, %{public}d", &__p, 34);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }
  }

  if ([cellTowers count] || objc_msgSend(cdmaCellTowers, "count") || objc_msgSend(lteCellTowers, "count") || objc_msgSend(scdmaCellTowers, "count") || objc_msgSend(nr5GCellTowers, "count"))
  {
    v16 = [cellTowers count];
    v17 = [cdmaCellTowers count];
    v18 = [lteCellTowers count];
    v19 = [scdmaCellTowers count];
    v20 = v17 + v16 + v18 + v19 + [nr5GCellTowers count];
    if (v20 == [cellTowers count])
    {
      v21 = "gsm";
    }

    else if (v20 == [lteCellTowers count])
    {
      v21 = "lte";
    }

    else if (v20 == [cdmaCellTowers count])
    {
      v21 = "cdma";
    }

    else if (v20 == [scdmaCellTowers count])
    {
      v21 = "scdma";
    }

    else if (v20 == [nr5GCellTowers count])
    {
      v21 = "nr";
    }

    else
    {
      v21 = "multiple";
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [requester tag];
      *buf = 67240962;
      *&buf[4] = v23;
      *&buf[8] = 2050;
      *&buf[10] = v14;
      v68 = 2082;
      v69 = v21;
      v70 = 1026;
      type = v20;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, cell, rtt, %{public}.1f, %{public}s, %{public}d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018F0AA8();
      }

      v42 = qword_1025D4628;
      v43 = [requester tag];
      LODWORD(__p) = 67240962;
      HIDWORD(__p) = v43;
      *v64 = 2050;
      *&v64[2] = v14;
      *&v64[10] = 2082;
      *&v64[12] = v21;
      v65 = 1026;
      type2 = v20;
      LODWORD(v53) = 34;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v42, 0, "@AlsFlow, reply, tag, %{public}d, cell, rtt, %{public}.1f, %{public}s, %{public}d", &__p, v53);
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }
  }

  (*(qword_1026584A8 + 16))(&qword_1026584A8);
  ++dword_1026584DC;
  (*(qword_1026584A8 + 24))(&qword_1026584A8);
  sub_10000EC00(buf, "didReceiveResponse");
  sub_100C43164(&qword_1026584A8, buf, *(self->fRequester + 118));
  if (SBYTE3(v69) < 0)
  {
    operator delete(*buf);
  }

  if ([cdmaCellTowers count])
  {
    fRequester = self->fRequester;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1006413E0;
    v60[3] = &unk_10245AFB0;
    v60[4] = cdmaCellTowers;
    v60[5] = self;
    v60[6] = requester;
    *&v60[7] = Current;
    sub_100641360(fRequester, [requester type], objc_msgSend(requester, "tag"), v60);
  }

  if ([lteCellTowers count])
  {
    v25 = self->fRequester;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100641E30;
    v59[3] = &unk_10245AFB0;
    v59[4] = lteCellTowers;
    v59[5] = self;
    v59[6] = requester;
    *&v59[7] = Current;
    sub_100641360(v25, [requester type], objc_msgSend(requester, "tag"), v59);
  }

  if ([nr5GCellTowers count])
  {
    v26 = self->fRequester;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100642554;
    v58[3] = &unk_10245AFB0;
    v58[4] = nr5GCellTowers;
    v58[5] = self;
    v58[6] = requester;
    *&v58[7] = Current;
    sub_100641360(v26, [requester type], objc_msgSend(requester, "tag"), v58);
  }

  if ([scdmaCellTowers count])
  {
    -[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:](self, "processScdmaCells:inRange:timeReceived:requestType:tag:", scdmaCellTowers, 0, [scdmaCellTowers count], objc_msgSend(requester, "type"), objc_msgSend(requester, "tag"), Current);
  }

  if ([cellTowers count])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v27 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v28 = [cellTowers count];
      *buf = 134349056;
      *&buf[4] = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, unbatched, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0AD0(cellTowers);
    }

    -[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:](self, "processCells:inRange:timeReceived:requestType:tag:", cellTowers, 0, [cellTowers count], objc_msgSend(requester, "type"), objc_msgSend(requester, "tag"), Current);
  }

  if ([v55 count])
  {
    __p = 0;
    *v64 = 0;
    *&v64[8] = 0;
    if (![requester type] && objc_msgSend(request, "surroundingWifiBandsCount"))
    {
      for (i = 0; i < [request surroundingWifiBandsCount]; ++i)
      {
        v32 = [request surroundingWifiBandsAtIndex:i];
        v33 = *v64;
        if (*v64 >= *&v64[8])
        {
          v35 = __p;
          v36 = *v64 - __p;
          v37 = (*v64 - __p) >> 2;
          v38 = v37 + 1;
          if ((v37 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v39 = *&v64[8] - __p;
          if ((*&v64[8] - __p) >> 1 > v38)
          {
            v38 = v39 >> 1;
          }

          if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v40 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v40 = v38;
          }

          if (v40)
          {
            sub_1000B85D0(&__p, v40);
          }

          *(4 * v37) = v32;
          v34 = 4 * v37 + 4;
          memcpy(0, v35, v36);
          v41 = __p;
          __p = 0;
          *v64 = v34;
          *&v64[8] = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          **v64 = v32;
          v34 = v33 + 4;
        }

        *v64 = v34;
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v29 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v30 = [v55 count];
      *buf = 134349056;
      *&buf[4] = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "AlsWifi, unbatched, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0BC4(buf);
      v49 = qword_1025D4628;
      v50 = [v55 count];
      v61 = 134349056;
      v62 = v50;
      LODWORD(v53) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "AlsWifi, unbatched, %{public}lu", &v61, v53);
      v52 = v51;
      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]", "%s\n", v51);
      if (v52 != buf)
      {
        free(v52);
      }
    }

    -[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:](self, "processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:", v55, 0, [v55 count], objc_msgSend(requester, "type"), objc_msgSend(requester, "tag"), &__p, Current);
    if (__p)
    {
      *v64 = __p;
      operator delete(__p);
    }
  }
}

- (void)requesterDidFinish:(id)finish
{
  p_fRequestersWithOutstandingRequests = &self->fRequestersWithOutstandingRequests;
  if (([(NSMutableSet *)self->fRequestersWithOutstandingRequests containsObject:?]& 1) != 0)
  {
    sub_10000EC00(__p, "requesterDidFinish");
    sub_100C43164(&qword_1026584A8, __p, *(self->fRequester + 118));
    if (v13 < 0)
    {
      operator delete(*__p);
    }

    downloadPayloadSize = [finish downloadPayloadSize];
    (*(qword_1026584A8 + 16))(&qword_1026584A8);
    dword_1026584D4 += downloadPayloadSize;
    (*(qword_1026584A8 + 24))(&qword_1026584A8);
    [finish setFinished:1];
    [(ALSLocationDelegate *)self finished:finish];
    [(NSMutableSet *)self->fRequestersWithOutstandingRequests removeObject:finish];
    if (qword_1025D4860 != -1)
    {
      sub_1018F1154();
    }

    v7 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableSet *)*p_fRequestersWithOutstandingRequests count];
      *__p = 134218240;
      *&__p[4] = downloadPayloadSize;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "AlsRequester, didFinish, payload, %lu, outstanding, %ld", __p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F117C(p_fRequestersWithOutstandingRequests, downloadPayloadSize);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018F104C();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unknown pbrequester object received in delegate callback", __p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F1060();
    }
  }
}

- (void)requester:(id)requester didFailWithError:(id)error
{
  if (([(NSMutableSet *)self->fRequestersWithOutstandingRequests containsObject:?]& 1) != 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [requester tag];
      Current = CFAbsoluteTimeGetCurrent();
      [requester timestamp];
      *buf = 67240704;
      *&buf[4] = v8;
      v36 = 2050;
      v37 = Current - v10;
      v38 = 2050;
      code = [error code];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@AlsFlow, reply, tag, %{public}d, error, rtt, %{public}.1lf, code, %{public}ld", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1394(requester, error);
    }

    type = [requester type];
    if (type == 1)
    {
      sub_100643664(self->fRequester, [requester type], objc_msgSend(requester, "tag"));
    }

    else if (type)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F14FC();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v14 = [requester tag];
        *buf = 67240192;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "query: received error for unknown requester type (tag %{public}d)", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F1524(requester);
      }
    }

    else
    {
      sub_1006435E4(self->fRequester, [requester type], objc_msgSend(requester, "tag"));
    }

    sub_10000EC00(buf, "didFailWithError");
    sub_100C43164(&qword_1026584A8, buf, *(self->fRequester + 118));
    if (SBYTE3(code) < 0)
    {
      operator delete(*buf);
    }

    [(NSMutableSet *)self->fRequestersWithOutstandingRequests removeObject:requester];
    if (qword_1025D4860 != -1)
    {
      sub_1018F1154();
    }

    v15 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      sub_1000238CC([error domain], buf);
      v16 = SBYTE3(code);
      v17 = *buf;
      v18 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
      v19 = buf;
      if (v16 < 0)
      {
        v19 = v17;
      }

      *v27 = 136315394;
      *&v27[4] = v19;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "AlsRequester, didFailWithError, code, %s, outstanding, %ld", v27, 0x16u);
      if (SBYTE3(code) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1634(buf);
      v20 = qword_1025D4868;
      sub_1000238CC([error domain], v27);
      v21 = v30;
      v22 = *v27;
      v23 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
      v24 = v27;
      if (v21 < 0)
      {
        v24 = v22;
      }

      v31 = 136315394;
      v32 = v24;
      v33 = 2048;
      v34 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 1, "AlsRequester, didFailWithError, code, %s, outstanding, %ld", &v31, 22);
      v26 = v25;
      if (v30 < 0)
      {
        operator delete(*v27);
      }

      sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didFailWithError:]", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018F104C();
    }

    v12 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Unknown pbrequester object received in delegate callback", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F12A0();
    }
  }
}

- (void)finished:(id)finished
{
  if (qword_1025D4860 != -1)
  {
    sub_1018F1948();
  }

  v5 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
  {
    v6 = [(NSMutableSet *)self->fRequestersWithOutstandingRequests count];
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "AlsRequester, finished, outstanding, %ld", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F195C(&self->super.isa);
  }

  if (([finished processingCellTowers] & 1) == 0 && (objc_msgSend(finished, "processingWirelessAPs") & 1) == 0)
  {
    if ([finished finished])
    {
      sub_100643818(self->fRequester, [finished type], objc_msgSend(finished, "tag"));
    }
  }
}

- (void)populateLocationFromTower:(id)tower location:(CLDaemonLocation *)location timeReceived:(double)received
{
  if (tower && location)
  {
    accuracy = [tower accuracy];
    accuracy2 = [tower accuracy];
    v10 = accuracy2;
    if (accuracy > 999999)
    {
      v10 = accuracy2 / 1000000.0;
    }

    *(&location->coordinate.longitude + 4) = v10;
    *(&location->courseAccuracy + 4) = received;
    *(&location->suitability + 1) = [tower latitude] / 100000000.0;
    *(&location->coordinate.latitude + 4) = [tower longitude] / 100000000.0;
    HIDWORD(location->rawCourse) = 1;
    if ([tower hasAltitude] && objc_msgSend(tower, "hasVerticalAccuracy"))
    {
      *(&location->horizontalAccuracy + 4) = [tower altitude];
      *(&location->altitude + 4) = [tower verticalAccuracy];
    }

    if ([tower hasConfidence])
    {
      confidence = [tower confidence];
    }

    else
    {
      confidence = 70;
    }

    HIDWORD(location->timestamp) = confidence;
  }
}

- (void)processCells:(id)cells inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag
{
  if (range.length)
  {
    v7 = *&tag;
    v8 = *&type;
    length = range.length;
    location = range.location;
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v20 = length;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, rx, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1BC8(length);
    }

    fRequester = self->fRequester;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100643B28;
    v16[3] = &unk_1024651A8;
    v16[6] = location;
    v16[7] = length;
    v16[4] = cells;
    v16[5] = self;
    v17 = v8;
    v18 = v7;
    *&v16[8] = received;
    sub_100641360(fRequester, v8, v7, v16);
  }
}

- (void)processScdmaCells:(id)cells inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag
{
  if (range.length)
  {
    v7 = *&tag;
    v8 = *&type;
    length = range.length;
    location = range.location;
    if (qword_1025D4620 != -1)
    {
      sub_1018F0A94();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v20 = length;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "AlsCell, scdma, rx, %{public}lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F1CBC(length);
    }

    fRequester = self->fRequester;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006442A8;
    v16[3] = &unk_1024651A8;
    v16[6] = location;
    v16[7] = length;
    v16[4] = cells;
    v16[5] = self;
    v17 = v8;
    v18 = v7;
    *&v16[8] = received;
    sub_100641360(fRequester, v8, v7, v16);
  }
}

- (void)processWireless:(id)wireless inRange:(_NSRange)range timeReceived:(double)received requestType:(int)type tag:(int)tag surroundingWifiBands:(const void *)bands
{
  length = range.length;
  location = range.location;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    *&buf[4] = length;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "AlsWifi, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F1DB0(length);
  }

  if (length)
  {
    __src = 0;
    v117 = 0;
    v118 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    if (location < location + length)
    {
      __asm { FMOV            V0.2D, #-1.0 }

      v106 = _Q0;
      wirelessCopy = wireless;
      do
      {
        v19 = [wireless objectAtIndex:location];
        sub_1000238CC([v19 macID], buf);
        v112 = sub_100196E8C(buf);
        if (SHIBYTE(v145) < 0)
        {
          operator delete(*buf);
        }

        if (![v19 hasLocation] || (objc_msgSend(objc_msgSend_location(v19), "accuracy") & 0x80000000) != 0)
        {
          v21 = v112;
          v111 = 0uLL;
          v107[0] = 0;
          v107[1] = 0;
          v108 = 0;
          memset(v119, 0, 25);
          *&v162[3] = -1;
          *&v162[11] = -1;
          Current = CFAbsoluteTimeGetCurrent();
          if ([objc_msgSend_location(v19) hasInfoMask])
          {
            infoMask = [objc_msgSend_location(v19) infoMask];
          }

          else
          {
            infoMask = 1;
          }

          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v24 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(__p);
            v25 = __p[23] >= 0 ? __p : *__p;
            hasInfoMask = [objc_msgSend_location(v19) hasInfoMask];
            *buf = 136381443;
            *&buf[4] = v25;
            v143 = 2050;
            v144 = location;
            v145 = 1026;
            *v146 = hasInfoMask;
            *&v146[4] = 1026;
            *&v146[6] = infoMask;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "AlsWifi, unknown, %{private}s, %{public}lu, hasInfoMask, %{public}d, infoMask, 0x%{public}x", buf, 0x22u);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F0BC4(buf);
            v76 = qword_1025D4628;
            sub_10018F0D0(&v110);
            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v77 = &v110;
            }

            else
            {
              v77 = v110.__r_.__value_.__r.__words[0];
            }

            hasInfoMask2 = [objc_msgSend_location(v19) hasInfoMask];
            *__p = 136381443;
            *&__p[4] = v77;
            *&__p[12] = 2050;
            *&__p[14] = location;
            *&__p[22] = 1026;
            *&__p[24] = hasInfoMask2;
            *&__p[28] = 1026;
            *&__p[30] = infoMask;
            LODWORD(v100) = 34;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v76, 0, "AlsWifi, unknown, %{private}s, %{public}lu, hasInfoMask, %{public}d, infoMask, 0x%{public}x", __p, v100);
            v80 = v79;
            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:]", "%s\n", v80);
            if (v80 != buf)
            {
              free(v80);
            }
          }

          v27 = v114;
          if (v114 >= v115)
          {
            v31 = 0xD37A6F4DE9BD37A7 * ((v114 - v113) >> 3);
            v32 = v31 + 1;
            if (v31 + 1 > 0x1642C8590B21642)
            {
              sub_10028C64C();
            }

            if (0xA6F4DE9BD37A6F4ELL * ((v115 - v113) >> 3) > v32)
            {
              v32 = 0xA6F4DE9BD37A6F4ELL * ((v115 - v113) >> 3);
            }

            if (0xD37A6F4DE9BD37A7 * ((v115 - v113) >> 3) >= 0xB21642C8590B21)
            {
              v33 = 0x1642C8590B21642;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              sub_10064A6B8(&v113, v33);
            }

            v59 = 8 * ((v114 - v113) >> 3);
            *v59 = 0xFFFF;
            *(v59 + 4) = v111;
            *(v59 + 20) = xmmword_101C82870;
            *(v59 + 36) = v106;
            *(v59 + 52) = v106;
            *(v59 + 68) = 0xBFF0000000000000;
            *(v59 + 76) = Current;
            *(v59 + 84) = 0;
            *(v59 + 88) = 0xBFF0000000000000;
            *(v59 + 96) = *v107;
            *(v59 + 112) = v108;
            *(v59 + 116) = 0xBFF0000000000000;
            *(v59 + 124) = 0x7FFFFFFF;
            v60 = *&v119[9];
            *(v59 + 128) = *v119;
            *(v59 + 137) = v60;
            v61 = *v162;
            *(v59 + 168) = *&v162[15];
            *(v59 + 172) = infoMask;
            *(v59 + 153) = v61;
            *(v59 + 176) = v21;
            v30 = 184 * v31 + 184;
            v62 = (184 * v31 - (v114 - v113));
            memcpy(v62, v113, v114 - v113);
            v63 = v113;
            v113 = v62;
            v114 = v30;
            v115 = 0;
            if (v63)
            {
              operator delete(v63);
            }
          }

          else
          {
            *v114 = 0xFFFF;
            *(v27 + 4) = v111;
            *(v27 + 20) = xmmword_101C82870;
            *(v27 + 36) = v106;
            *(v27 + 52) = v106;
            *(v27 + 68) = 0xBFF0000000000000;
            *(v27 + 76) = Current;
            *(v27 + 21) = 0;
            *(v27 + 11) = 0xBFF0000000000000;
            *(v27 + 6) = *v107;
            *(v27 + 28) = v108;
            *(v27 + 116) = 0xBFF0000000000000;
            *(v27 + 31) = 0x7FFFFFFF;
            v28 = *v119;
            *(v27 + 137) = *&v119[9];
            *(v27 + 8) = v28;
            v29 = *v162;
            *(v27 + 42) = *&v162[15];
            *(v27 + 43) = infoMask;
            *(v27 + 153) = v29;
            v30 = (v27 + 184);
            *(v27 + 22) = v21;
          }

          v114 = v30;
        }

        else
        {
          *&__p[4] = 0;
          *&__p[12] = 0;
          *&__p[36] = v106;
          *&__p[52] = v106;
          *&__p[68] = v106;
          *__p = 0xFFFF;
          *&__p[84] = 0;
          *&__p[88] = 0xBFF0000000000000;
          v137 = 0uLL;
          LODWORD(v138) = 0;
          *(&v138 + 4) = 0xBFF0000000000000;
          *v140 = 0;
          v139 = 0uLL;
          v140[8] = 0;
          *&v140[12] = -1;
          *&v140[20] = -1;
          HIDWORD(v138) = 0x7FFFFFFF;
          *&v140[28] = 0;
          v141 = v112;
          *&__p[20] = xmmword_101C82870;
          if ([objc_msgSend_location(v19) accuracy] < 1000000)
          {
            accuracy = [objc_msgSend_location(v19) accuracy];
          }

          else
          {
            accuracy = [objc_msgSend_location(v19) accuracy] / 1000000.0;
          }

          *&__p[20] = accuracy;
          *&__p[76] = received;
          *&__p[4] = [objc_msgSend_location(v19) latitude] / 100000000.0;
          *&__p[12] = [objc_msgSend_location(v19) longitude] / 100000000.0;
          DWORD1(v139) = 1;
          v34 = sub_100027CA8(__p);
          if ([objc_msgSend_location(v19 v34)] && objc_msgSend(objc_msgSend_location(v19), "hasVerticalAccuracy"))
          {
            *&__p[28] = [objc_msgSend_location(v19) altitude] / 100.0;
            *&__p[36] = [objc_msgSend_location(v19) verticalAccuracy] / 100.0;
          }

          if ([objc_msgSend_location(v19) hasConfidence])
          {
            confidence = [objc_msgSend_location(v19) confidence];
          }

          else
          {
            confidence = 50;
          }

          *&__p[84] = confidence;
          if ([v19 hasChannel])
          {
            *&v140[16] = [v19 channel];
          }

          if ([objc_msgSend_location(v19) hasScore])
          {
            *&v140[12] = [objc_msgSend_location(v19) score];
          }

          if ([objc_msgSend_location(v19) hasReach])
          {
            *&v140[20] = [objc_msgSend_location(v19) reach];
          }

          if ([objc_msgSend_location(v19) hasInfoMask])
          {
            *&v140[28] = [objc_msgSend_location(v19) infoMask];
          }

          if ([v19 hasNumZaxisHarvestTraces])
          {
            *&v140[24] = [v19 numZaxisHarvestTraces];
          }

          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v36 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            sub_10018F0D0(v119);
            if (v119[23] >= 0)
            {
              v37 = v119;
            }

            else
            {
              v37 = *v119;
            }

            sub_100AE970C(&v110);
            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v110;
            }

            else
            {
              v38 = v110.__r_.__value_.__r.__words[0];
            }

            v39 = *&v140[12];
            v40 = *&v140[16];
            v41 = *&__p[28];
            v42 = *&v140[20];
            hasInfoMask3 = [objc_msgSend_location(v19) hasInfoMask];
            *buf = 136645379;
            *&buf[4] = v37;
            v143 = 2050;
            v144 = location;
            v145 = 2085;
            *v146 = v38;
            *&v146[8] = 1026;
            v147 = v39;
            v148 = 1026;
            v149 = v40;
            v150 = 2050;
            v151 = v41;
            v152 = 1026;
            v153 = v42;
            v154 = 1026;
            v155 = hasInfoMask3;
            v156 = 1026;
            v157 = *&v140[28];
            v158 = 1026;
            v159 = *&v140[24];
            v160 = 1026;
            typeCopy = type;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "AlsWifi, valid, location, %{sensitive}s, %{public}lu, %{sensitive}s, score, %{public}d, channel, %{public}d, alt, %{public}.2lf, reach, %{public}d, hasInfoMask, %{public}d, infoMask, 0x%{public}x, numHarvestTraces, %{public}d, type, %{public}d", buf, 0x54u);
            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            wireless = wirelessCopy;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if ((v119[23] & 0x80000000) != 0)
            {
              operator delete(*v119);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018F0BC4(buf);
            v81 = qword_1025D4628;
            sub_10018F0D0(&v110);
            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v82 = &v110;
            }

            else
            {
              v82 = v110.__r_.__value_.__r.__words[0];
            }

            sub_100AE970C(v107);
            if (v109 >= 0)
            {
              v83 = v107;
            }

            else
            {
              v83 = v107[0];
            }

            v84 = *&v140[12];
            v85 = *&v140[16];
            v86 = *&__p[28];
            v87 = *&v140[20];
            hasInfoMask4 = [objc_msgSend_location(v19) hasInfoMask];
            *v119 = 136645379;
            *&v119[4] = v82;
            *&v119[12] = 2050;
            *&v119[14] = location;
            *&v119[22] = 2085;
            *&v119[24] = v83;
            v120 = 1026;
            v121 = v84;
            v122 = 1026;
            v123 = v85;
            v124 = 2050;
            v125 = v86;
            v126 = 1026;
            v127 = v87;
            v128 = 1026;
            v129 = hasInfoMask4;
            v130 = 1026;
            v131 = *&v140[28];
            v132 = 1026;
            v133 = *&v140[24];
            v134 = 1026;
            typeCopy2 = type;
            LODWORD(v100) = 84;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v81, 2, "AlsWifi, valid, location, %{sensitive}s, %{public}lu, %{sensitive}s, score, %{public}d, channel, %{public}d, alt, %{public}.2lf, reach, %{public}d, hasInfoMask, %{public}d, infoMask, 0x%{public}x, numHarvestTraces, %{public}d, type, %{public}d", v119, v100);
            v90 = v89;
            if (v109 < 0)
            {
              operator delete(v107[0]);
            }

            wireless = wirelessCopy;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v110.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processWireless:inRange:timeReceived:requestType:tag:surroundingWifiBands:]", "%s\n", v90);
            if (v90 != buf)
            {
              free(v90);
            }
          }

          v44 = v117;
          if (v117 >= v118)
          {
            v55 = __src;
            v56 = v117 - __src;
            v57 = 0xD37A6F4DE9BD37A7 * ((v117 - __src) >> 3);
            v58 = v57 + 1;
            if (v57 + 1 > 0x1642C8590B21642)
            {
              sub_10028C64C();
            }

            if (0xA6F4DE9BD37A6F4ELL * ((v118 - __src) >> 3) > v58)
            {
              v58 = 0xA6F4DE9BD37A6F4ELL * ((v118 - __src) >> 3);
            }

            if (0xD37A6F4DE9BD37A7 * ((v118 - __src) >> 3) >= 0xB21642C8590B21)
            {
              v58 = 0x1642C8590B21642;
            }

            if (v58)
            {
              sub_10064A6B8(&__src, v58);
            }

            v64 = 8 * ((v117 - __src) >> 3);
            v65 = *__p;
            v66 = *&__p[16];
            v67 = *&__p[48];
            *(v64 + 32) = *&__p[32];
            *(v64 + 48) = v67;
            *v64 = v65;
            *(v64 + 16) = v66;
            v68 = *&__p[64];
            v69 = *&__p[80];
            v70 = v138;
            *(v64 + 96) = v137;
            *(v64 + 112) = v70;
            *(v64 + 64) = v68;
            *(v64 + 80) = v69;
            v71 = v139;
            v72 = *v140;
            v73 = *&v140[16];
            *(v64 + 176) = v141;
            *(v64 + 144) = v72;
            *(v64 + 160) = v73;
            *(v64 + 128) = v71;
            v54 = 184 * v57 + 184;
            v74 = (184 * v57 - v56);
            memcpy((v64 - v56), v55, v56);
            v75 = __src;
            __src = v74;
            v117 = v54;
            v118 = 0;
            if (v75)
            {
              operator delete(v75);
            }
          }

          else
          {
            v45 = *__p;
            v46 = *&__p[16];
            v47 = *&__p[48];
            *(v117 + 2) = *&__p[32];
            *(v44 + 3) = v47;
            *v44 = v45;
            *(v44 + 1) = v46;
            v48 = *&__p[64];
            v49 = *&__p[80];
            v50 = v138;
            *(v44 + 6) = v137;
            *(v44 + 7) = v50;
            *(v44 + 4) = v48;
            *(v44 + 5) = v49;
            v51 = v139;
            v52 = *v140;
            v53 = *&v140[16];
            *(v44 + 22) = v141;
            *(v44 + 9) = v52;
            *(v44 + 10) = v53;
            *(v44 + 8) = v51;
            v54 = (v44 + 184);
          }

          v117 = v54;
        }

        ++location;
        --length;
      }

      while (length);
    }

    v92 = *bands;
    v91 = *(bands + 1);
    if (*bands == v91)
    {
      v98 = 0;
    }

    else
    {
      v93 = 0;
      v94 = 0;
LABEL_107:
      while (2)
      {
        v95 = v92;
        while (1)
        {
          v97 = *v95++;
          v96 = v97;
          if (v97 == 1)
          {
            break;
          }

          if (v96 == 2)
          {
            ++v92;
            v94 = 1;
            if (v95 != v91)
            {
              goto LABEL_107;
            }

            if (v93)
            {
              v98 = 3;
            }

            else
            {
              v98 = 2;
            }

            goto LABEL_127;
          }

          v92 = v95;
          if (v95 == v91)
          {
            if (v94)
            {
              v98 = 3;
            }

            else
            {
              v98 = 1;
            }

            if (v94)
            {
              v99 = 2;
            }

            else
            {
              v99 = 0;
            }

            if ((v93 & 1) == 0)
            {
              v98 = v99;
            }

            goto LABEL_127;
          }
        }

        ++v92;
        v93 = 1;
        if (v95 != v91)
        {
          continue;
        }

        break;
      }

      if (v94)
      {
        v98 = 3;
      }

      else
      {
        v98 = 1;
      }
    }

LABEL_127:
    sub_100645734(self->fRequester, &__src, &v113, type, tag, v98);
    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }

    if (__src)
    {
      v117 = __src;
      operator delete(__src);
    }
  }
}

@end