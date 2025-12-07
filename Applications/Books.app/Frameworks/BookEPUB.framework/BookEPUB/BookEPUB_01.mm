void sub_234C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ITFileUtil::~ITFileUtil(va);
  _Unwind_Resume(a1);
}

void sub_23A1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_36AB78);

  _Unwind_Resume(a1);
}

void sub_23A88(id a1)
{
  v1 = NSClassFromString(@"UIVariableDelayLoupeGesture");
  if (v1)
  {

    BESwizzleInstanceMethods(v1, "setDelay:", "be_setDelay:");
  }
}

void ITRetain::ITRetain(ITRetain *this)
{
  *this = off_328D98;
  *(this + 2) = 0;
  atomic_fetch_add(this + 2, 1u);
}

{
  *this = off_328D98;
  *(this + 2) = 0;
  atomic_fetch_add(this + 2, 1u);
}

uint64_t ITRetain::release(atomic_uint *this)
{
  add = atomic_fetch_add(this + 2, 0xFFFFFFFF);
  if (this && add <= 1)
  {
    (*(*this + 8))(this);
  }

  return (add - 1);
}

void ITRetain::~ITRetain(ITRetain *this)
{
  *this = off_328D98;
}

{
  *this = off_328D98;
}

{
  *this = off_328D98;
  operator delete();
}

atomic_uint *ITRetain::for_each_release(atomic_uint *this, ITRetain *a2)
{
  if (this)
  {
    if (atomic_fetch_add(this + 2, 0xFFFFFFFF) <= 1)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t ITRetain::for_each_retain(uint64_t this, ITRetain *a2)
{
  if (this)
  {
    atomic_fetch_add((this + 8), 1u);
  }

  return this;
}

void ITRetain::for_each_cfrelease(CFTypeRef this, const void *a2)
{
  if (this)
  {
    CFRelease(this);
  }
}

CFTypeRef ITRetain::for_each_cfretain(CFTypeRef this, const void *a2)
{
  if (this)
  {
    return CFRetain(this);
  }

  return this;
}

id NSStringFromBERequestedRange(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithUnsignedInteger:a1];
  v4 = [NSNumber numberWithUnsignedInteger:a2];
  v5 = [NSString stringWithFormat:@"{%@, %@}", v3, v4];

  return v5;
}

BEURLHandlerAssetInfo *_BEURLHandlerAssetInfoForURLUsingCacheItemIncludingFileSize(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    v11 = [v5 host];
    v12 = v11;
    if (!v11 || ![v11 length])
    {

      v8 = 0;
      v6 = 0;
      goto LABEL_28;
    }

    v13 = +[BEProtocolCache sharedInstance];
    v6 = [v13 cacheItemForDatabaseKey:v12];

    if (!v6)
    {
      v8 = 0;
      goto LABEL_28;
    }
  }

  v7 = v5;
  v8 = v6;
  v6 = objc_alloc_init(BEURLHandlerAssetInfo);
  [(BEURLHandlerAssetInfo *)v6 setRequestedURL:v7];
  v9 = objc_autoreleasePoolPush();
  if ([v7 isFileURL])
  {
    v10 = [v7 path];
    [(BEURLHandlerAssetInfo *)v6 setPath:v10];
  }

  else
  {
    v14 = [v7 host];
    v15 = [(BEURLHandlerAssetInfo *)v8 bookID];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      [(BEURLHandlerAssetInfo *)v6 setBookID:v14];
      v17 = [(BEURLHandlerAssetInfo *)v8 bookEpubId];
      [(BEURLHandlerAssetInfo *)v6 setBookEpubId:v17];

      v18 = [(BEURLHandlerAssetInfo *)v8 bookEpubIdWithUUIDScheme];
      [(BEURLHandlerAssetInfo *)v6 setBookEpubIdWithUUIDScheme:v18];

      v41 = [v7 be_unescapedPath];
      v40 = [(BEURLHandlerAssetInfo *)v8 rootPath];
      if ([v41 length] && objc_msgSend(v40, "length"))
      {
        v19 = [v40 stringByAppendingPathComponent:v41];
        [(BEURLHandlerAssetInfo *)v6 setPath:v19];

        v20 = [(BEURLHandlerAssetInfo *)v6 path];
        v21 = [v20 length];

        if (v21)
        {
          v39 = [NSURL fileURLWithPath:v40 isDirectory:1];
          v22 = [(BEURLHandlerAssetInfo *)v6 path];
          v23 = [NSURL fileURLWithPath:v22 isDirectory:0];

          v24 = +[NSFileManager defaultManager];
          -[BEURLHandlerAssetInfo setAssetIsInsideBookRootPath:](v6, "setAssetIsInsideBookRootPath:", [v24 be_doesFolderAtURL:v39 containFileAtURL:v23]);
        }

        v25 = [(BEURLHandlerAssetInfo *)v8 infoForDocumentAtPath:v41];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 objectForKeyedSubscript:@"mime"];
          [(BEURLHandlerAssetInfo *)v6 setMimeType:v27];

          v28 = [v26 objectForKeyedSubscript:@"fileSize"];
          -[BEURLHandlerAssetInfo setFileSize:](v6, "setFileSize:", [v28 unsignedIntegerValue]);

          v29 = [v26 objectForKeyedSubscript:@"compressionAlgorithm"];
          [(BEURLHandlerAssetInfo *)v6 setCompressionAlgorithm:v29];

          v30 = [v26 objectForKeyedSubscript:@"encryptionAlgorithm"];
          [(BEURLHandlerAssetInfo *)v6 setEncryptionAlgorithm:v30];

          v31 = [v26 objectForKeyedSubscript:@"sinfNumber"];
          v32 = [(BEURLHandlerAssetInfo *)v8 dataForSinfNumber:v31];
          [(BEURLHandlerAssetInfo *)v6 setSinfData:v32];

          if (a3 && ![(BEURLHandlerAssetInfo *)v6 fileSize])
          {
            v33 = [(BEURLHandlerAssetInfo *)v6 path];
            [(BEURLHandlerAssetInfo *)v6 setFileSize:sub_27FE8(v33)];
          }
        }

        else
        {
          v31 = _BookEPUBLog(0);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(BEURLHandlerAssetInfo *)v6 path];
            objc_claimAutoreleasedReturnValue();
            sub_263AAC();
          }
        }
      }
    }
  }

  v34 = [(BEURLHandlerAssetInfo *)v6 path];
  v35 = [v34 length] == 0;

  if (v35)
  {
    v37 = _BookEPUBLog(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_263AF0(v37);
    }
  }

  objc_autoreleasePoolPop(v9);

LABEL_28:

  return v6;
}

id BEURLHandlerAssetInfoPathForBookURL(void *a1)
{
  v1 = _BEURLHandlerAssetInfoForURLUsingCacheItemIncludingFileSize(a1, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 path];
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id BEURLHandleriBooksImgUrlFromiBooksURL(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  if ([@"ibooksimg" compare:v2 options:1])
  {
    if ([@"ibooks" compare:v2 options:1])
    {
      v3 = 0;
      goto LABEL_7;
    }

    v4 = [v1 be_URLByReplacingWithScheme:@"ibooksimg"];
  }

  else
  {
    v4 = v1;
  }

  v3 = v4;
LABEL_7:

  return v3;
}

void BEURLHandlerClearCachedInfoForBookWithAssetID(void *a1)
{
  v6 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = +[BEProtocolCache sharedInstance];
  if ([v6 length])
  {
    v3 = [v2 cacheItemForDatabaseKey:v6];
    v4 = [v3 sinfInfo];
    v5 = [v4 allValues];

    [v2 clearCacheForDatabaseKey:v6];
  }

  else
  {
    v5 = 0;
    [v2 clearCache];
  }

  [ft9cupR7u6OrU4m1pyhB FVnIWgVXBigm3P6nj4U9:v5];

  objc_autoreleasePoolPop(v1);
}

id _BEURLHandlerImageDataForiBooksURLUsingCacheItem(NSURL *a1, BEProtocolCacheItem *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _BEURLHandlerAssetInfoForURLUsingCacheItemIncludingFileSize(a1, a2, 0);
  v6 = [v5 path];
  if ([v6 length] && objc_msgSend(v5, "assetIsInsideBookRootPath"))
  {
    v7 = [v5 sinfData];

    if (v7)
    {
      v14 = 0;
      v8 = [v5 sinfData];
      v13 = 0;
      v9 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v6 sinfData:v8 refetch:&v14 error:&v13];
      v10 = v13;

      if (v14 == 1)
      {
        v11 = [v5 path];
        [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:v11 completion:0];
      }
    }

    else
    {
      v9 = [NSData dataWithContentsOfFile:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v9;
}

id BEURLHandlerImageDataForiBooksURLUsingCacheItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [(NSURL *)v3 host];
  if ([v6 length])
  {
    v7 = +[BEProtocolCache sharedInstance];
    v4 = [v7 cacheItemForDatabaseKey:v6];

    if (v4)
    {
LABEL_2:
      v5 = _BEURLHandlerImageDataForiBooksURLUsingCacheItem(v3, v4);
      goto LABEL_8;
    }
  }

  else
  {

    v4 = 0;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

void sub_25910(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id BEURLHandlerSchemeIsOkForBookToLoad(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_36AB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_36AB90))
  {
    qword_36AB88 = sub_25A48();
    __cxa_guard_release(&qword_36AB90);
  }

  if (BEURLHandlerURLIsApprovedToLoad(v1))
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v3 = qword_36AB88;
    v4 = [v1 scheme];
    v5 = [v4 lowercaseString];
    v2 = [v3 containsObject:v5];
  }

  return v2;
}

void sub_25A0C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_36AB90);

  _Unwind_Resume(a1);
}

id sub_25A48()
{
  v3[0] = @"ibooks";
  v3[1] = @"ibooksimg";
  v3[2] = @"data";
  v3[3] = @"blob";
  v0 = [NSArray arrayWithObjects:v3 count:4];
  v1 = [NSSet setWithArray:v0];

  return v1;
}

id BEURLHandlerURLIsApprovedToLoad(void *a1)
{
  v1 = a1;
  v2 = [v1 absoluteString];
  v3 = [v2 lowercaseString];

  if ([v3 length])
  {
    v4 = [v1 absoluteString];
    v5 = [v4 lowercaseString];
    v6 = [v5 isEqualToString:@"about:blank"];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  return v6;
}

void sub_25FE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    dispatch_io_close(v3, 1uLL);
    v4 = v2[3];
    v2[3] = 0;
  }

  v5 = v2[6];
  v2[6] = 0;

  v2[8] = 0;
  [*(a1 + 32) setRequest:*(a1 + 40)];
  v184 = [*(a1 + 40) URL];
  if (BEURLHandlerSchemeIsOkForBookToLoad(v184))
  {
    v6 = [*(a1 + 32) cacheItem];
    v7 = _BEURLHandlerAssetInfoForURLUsingCacheItemIncludingFileSize(v184, v6, 1);

    v8 = [*(a1 + 40) allHTTPHeaderFields];
    objc_opt_class();
    v9 = [v8 objectForKey:@"Range"];
    v10 = BUDynamicCast();

    if ([v10 length])
    {
      v11 = [v7 fileSize];
      v12 = v10;
      if ([v12 length])
      {
        v13 = [v12 componentsSeparatedByString:@"="];
        if ([v13 count] == &dword_0 + 2 && (objc_msgSend(v13, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lowercaseString"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(@"bytes", "isEqualToString:", v15), v15, v14, (v16 & 1) != 0))
        {
          context = [v13 lastObject];
          v180 = [context componentsSeparatedByString:{@", "}];
          if ([v180 count] < 2)
          {
            v172 = [v180 firstObject];
            v17 = v11 - 1;
            if ([v172 hasPrefix:@"-"])
            {
              v18 = &v11[[v172 integerValue]];
            }

            else
            {
              v168 = [v172 componentsSeparatedByString:@"-"];
              v19 = [v168 firstObject];
              v18 = [v19 integerValue];

              v20 = [v168 lastObject];
              v21 = [v20 integerValue];

              if (v21 > 0)
              {
                v17 = v21;
              }
            }
          }

          else
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
            v17 = 0;
          }
        }

        else
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      [v7 setRequestedRange:{v18, v17}];
    }
  }

  else
  {
    v7 = 0;
  }

  v22 = [v7 bookID];
  v23 = [v184 host];
  v24 = [v22 isEqualToString:v23];

  if ((v24 & 1) == 0)
  {
    v28 = -1003;
    goto LABEL_34;
  }

  v25 = [v7 path];
  v26 = [v25 length];

  if (!v26)
  {
    v28 = -1100;
    goto LABEL_34;
  }

  if (![v7 fileSize])
  {
    v28 = -1014;
    goto LABEL_34;
  }

  if (![v7 assetIsInsideBookRootPath])
  {
    v28 = -1102;
    goto LABEL_34;
  }

  if ([v7 requestedRange] == 0x7FFFFFFFFFFFFFFFLL && !v27)
  {
    v28 = -1000;
LABEL_34:
    v29 = *(a1 + 32);
    v30 = [NSError errorWithDomain:NSURLErrorDomain code:v28 userInfo:0];
    v31 = v29;
    v32 = v30;
    v33 = _BookEPUBLog(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_263B34();
    }

    v34 = v31[8];
    if ((v34 & 6) == 0)
    {
      v31[8] = v34 | 2;
      v35 = [v31 delegate];
      [v35 urlHandler:v31 didFailWithError:v32];
      v36 = +[BEURLHandler testingDelegate];
      [v36 urlHandler:v31 request:v31[6] didFailWithError:v32];
    }

    goto LABEL_39;
  }

  v37 = *(a1 + 32);
  v38 = v7;
  v39 = [v38 requestedURL];
  v40 = [v39 scheme];
  if ([@"ibooks" compare:v40 options:1])
  {

    goto LABEL_53;
  }

  v41 = [v38 mimeType];
  if ([v41 length])
  {
    v42 = v41;
    v43 = BESupportedImageMimeTypes();
    v44 = [v43 containsObject:v42];
  }

  else
  {
    v44 = BEDoesURLPointToAnImageFile(v39);
  }

  if ((v44 & 1) == 0)
  {
LABEL_53:
    v182 = *(a1 + 32);
    v62 = v38;
    contextb = objc_autoreleasePoolPush();
    v63 = [v62 requestedURL];
    v64 = [v63 lastPathComponent];

    if ([v64 caseInsensitiveCompare:@"ibooks.js"] && objc_msgSend(v64, "caseInsensitiveCompare:", @"ibook.js"))
    {
      v65 = 0;
      goto LABEL_72;
    }

    v66 = [v62 sinfData];

    if (v66)
    {
      LOBYTE(v195) = 0;
      v67 = [v62 path];
      v68 = [v62 sinfData];
      block = 0;
      v174 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v67 sinfData:v68 refetch:&v195 error:&block];
      v69 = block;

      if (v195 == 1)
      {
        v70 = [v62 path];
        [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:v70 completion:0];
      }

      if (v69)
      {
        v65 = 0;
LABEL_71:

LABEL_72:
        objc_autoreleasePoolPop(contextb);

        if (v65)
        {
          contextc = *(a1 + 32);
          v183 = v62;
          v84 = +[ibooks source];
          v175 = [v84 dataUsingEncoding:4];

          v167 = [v183 mimeType];
          v85 = [v183 requestedURL];
          v86 = contextc;
          v87 = v175;
          v88 = v167;
          v89 = v85;
          v171 = v87;
          v90 = [[NSURLResponse alloc] initWithURL:v89 MIMEType:v88 expectedContentLength:objc_msgSend(v87 textEncodingName:{"length"), 0}];
          v91 = v86;
          v92 = v90;
          v93 = v91[8];
          v94 = v92;
          if ((v93 & 1) == 0)
          {
            v91[8] = v93 | 1;
            v95 = +[BEURLHandler testingDelegate];
            v96 = v95 == 0;

            v94 = v92;
            if (!v96)
            {
              v94 = sub_28D70(v92);
            }

            v97 = [v91 delegate];
            [v97 urlHandler:v91 didReceiveResponse:v94];
          }

          v98 = v91;
          v99 = v171;
          if ((v91[8] & 6) == 0)
          {
            v100 = [v98 delegate];
            [v100 urlHandler:v98 didReceiveData:v99];
          }

          v101 = v98;
          v102 = v101;
          v103 = v91[8];
          if ((v103 & 6) == 0)
          {
            v91[8] = v103 | 4;
            v104 = [v101 delegate];
            [v104 urlHandlerDidFinish:v102];
            v105 = +[BEURLHandler testingDelegate];
            [v105 urlHandler:v102 didFinishRequest:v102[6]];
          }
        }

        else
        {
          v106 = [v62 requestedRangeIsWholeAsset];
          v107 = *(a1 + 32);
          if (v106)
          {
            v108 = BEShouldInvertImageURL(v184);
            v109 = v107;
            v110 = v62;
            v111 = v109[4];
            block = _NSConcreteStackBlock;
            v187 = 3221225472;
            v188 = sub_28088;
            v189 = &unk_328E10;
            LOBYTE(v192) = v108;
            v190 = v110;
            v191 = v109;
            v112 = v109;
            dispatch_async(v111, &block);
          }

          else
          {
            v113 = v107;
            v114 = v62;
            v115 = *(v113 + 3);
            if (v115)
            {
              dispatch_io_close(v115, 1uLL);
              v116 = *(v113 + 3);
              *(v113 + 3) = 0;
            }

            v195 = 0;
            v196 = &v195;
            v197 = 0x4012000000;
            v198 = sub_29BB4;
            v199 = nullsub_4;
            v200 = &unk_2818F3;
            v201 = 0;
            v202 = 0;
            v201 = [v114 requestedRange];
            v202 = v117;
            v185[0] = 0;
            v185[1] = v185;
            v185[2] = 0x2020000000;
            v119 = v196[6];
            v118 = v196[7];
            v120 = v118 >= v119;
            v121 = v118 - v119;
            if (v120)
            {
              v122 = v121 + 1;
            }

            else
            {
              v122 = 0;
            }

            v185[3] = v122;
            v123 = +[ft9cupR7u6OrU4m1pyhB dataChunkSize];
            v124 = objc_alloc_init(NSMutableData);
            v125 = *(v113 + 7);
            *(v113 + 7) = v124;

            v126 = v119 / v123;
            v127 = v126 * v123;
            v128 = v196;
            v129 = v196[7];
            v196[6] = (v196[6] - v126 * v123);
            v128[7] = (v129 - v126 * v123);
            v130 = [v114 path];
            v131 = v130;
            v132 = dispatch_io_create_with_path(1uLL, [v130 UTF8String], 0, 0, *(v113 + 4), &stru_328EA0);
            v133 = *(v113 + 3);
            *(v113 + 3) = v132;

            v134 = v123 + v123 * ((v129 / v123) - v126);
            dispatch_io_set_high_water(*(v113 + 3), v123);
            dispatch_io_set_low_water(*(v113 + 3), v123);
            v135 = *(v113 + 3);
            v136 = *(v113 + 4);
            block = _NSConcreteStackBlock;
            v187 = 3221225472;
            v188 = sub_29BC4;
            v189 = &unk_328EF0;
            v190 = v113;
            v191 = v114;
            v192 = &v195;
            v193 = v185;
            v194 = v123;
            v137 = v113;
            v138 = v114;
            dispatch_io_read(v135, v127, v134, v136, &block);

            _Block_object_dispose(v185, 8);
            _Block_object_dispose(&v195, 8);
          }
        }

        goto LABEL_39;
      }

      v72 = v174;
    }

    else
    {
      v71 = [v62 path];
      v72 = [NSData dataWithContentsOfFile:v71];
    }

    v73 = [[NSString alloc] initWithData:v72 encoding:4];
    v174 = v72;
    if ([v73 length])
    {
      v195 = 0;
      v170 = [NSRegularExpression regularExpressionWithPattern:@"iBooks?.VERSION[ ]*=[ ]*'([0-9]+)\\.([0-9]+)'" options:0 error:&v195];;
      v69 = v195;
      v166 = [v170 matchesInString:v73 options:0 range:{0, objc_msgSend(v73, "length")}];
      v74 = [v166 firstObject];
      v75 = v74;
      if (v74 && (v76 = [v74 rangeAtIndex:1], objc_msgSend(v73, "substringWithRange:", v76, v77), v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "integerValue"), v78, v79 <= 1))
      {
        v80 = [v75 rangeAtIndex:2];
        v82 = [v73 substringWithRange:{v80, v81}];
        v83 = [v82 integerValue];

        v65 = v83 <= 4;
      }

      else
      {
        v65 = 0;
      }
    }

    else
    {
      v69 = 0;
      v65 = 0;
    }

    goto LABEL_71;
  }

  v45 = *(a1 + 32);
  v173 = v38;
  contexta = v45;
  v46 = [v45 cacheItem];
  v181 = v46;
  v47 = [v173 requestedURL];
  v169 = v47;
  v48 = [v46 cachedSVGForURL:v47];
  if (![v48 length])
  {
    v49 = malloc_type_calloc(0x53AuLL, 1uLL, 0x100004077774924uLL);
    if (v49)
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      v52 = BEURLHandlerImageDataForiBooksURLUsingCacheItem(v47, v46);
      v53 = CGImageSourceCreateWithData(v52, 0);
      if (v53)
      {
        v195 = kCGImageSourceShouldCache;
        block = &__kCFBooleanFalse;
        v54 = [NSDictionary dictionaryWithObjects:&block forKeys:&v195 count:1];
        v55 = CGImageSourceCopyPropertiesAtIndex(v53, 0, v54);
        v56 = v55;
        if (v55)
        {
          v57 = CFDictionaryGetValue(v55, kCGImagePropertyPixelWidth);
          v58 = CFDictionaryGetValue(v56, kCGImagePropertyPixelHeight);
          [v57 doubleValue];
          width = v59;
          [v58 doubleValue];
          height = v60;
          CFRelease(v56);
        }

        CFRelease(v53);
      }

      v61 = [[NSData alloc] initWithBytesNoCopy:v49 length:snprintf(v49 freeWhenDone:{0x53AuLL, "<svg width='%f' height='%f' xmlns='http://www.w3.org/2000/svg'></svg>", width, height), 1}];
      v48 = v61;
      [v181 cacheSVG:v61 url:v47];
    }

    else
    {
      v139 = contexta;
      v140 = [NSError errorWithDomain:NSURLErrorDomain code:-1014 userInfo:0];
      v141 = v139;
      v142 = v140;
      v143 = _BookEPUBLog(v142);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        sub_263B34();
      }

      v144 = v141[8];
      if ((v144 & 6) == 0)
      {
        v141[8] = v144 | 2;
        v145 = [v141 delegate];
        [v145 urlHandler:v141 didFailWithError:v142];
        v146 = +[BEURLHandler testingDelegate];
        [v146 urlHandler:v141 request:v141[6] didFailWithError:v142];
      }

      v47 = v169;
    }
  }

  v147 = contexta;
  v148 = v48;
  v149 = v47;
  v150 = [[NSURLResponse alloc] initWithURL:v149 MIMEType:@"image/svg+xml" expectedContentLength:objc_msgSend(v148 textEncodingName:{"length"), 0}];
  v151 = v147;
  v152 = v150;
  v153 = v151[8];
  v154 = v152;
  if ((v153 & 1) == 0)
  {
    v151[8] = v153 | 1;
    v155 = +[BEURLHandler testingDelegate];
    v156 = v155 == 0;

    v154 = v152;
    if (!v156)
    {
      v154 = sub_28D70(v152);
    }

    v157 = [v151 delegate];
    [v157 urlHandler:v151 didReceiveResponse:v154];
  }

  v158 = v151;
  v159 = v148;
  if ((v151[8] & 6) == 0)
  {
    v160 = [v158 delegate];
    [v160 urlHandler:v158 didReceiveData:v159];
  }

  v161 = v158;
  v162 = v161;
  v163 = v151[8];
  if ((v163 & 6) == 0)
  {
    v151[8] = v163 | 4;
    v164 = [v161 delegate];
    [v164 urlHandlerDidFinish:v162];
    v165 = +[BEURLHandler testingDelegate];
    [v165 urlHandler:v162 didFinishRequest:v162[6]];
  }

LABEL_39:
}

unint64_t BEShouldInvertImageURL(uint64_t a1)
{
  v1 = [NSURLComponents componentsWithURL:a1 resolvingAgainstBaseURL:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 queryItems];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 name];
        v8 = [v7 isEqualToString:@"be_filter"];

        if (v8)
        {
          v9 = [v6 value];
          if ([v9 length])
          {
            v10 = [v6 value];
            v3 = [v10 integerValue] == &dword_0 + 1;
          }

          else
          {
            v3 = 0;
          }

          goto LABEL_14;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v3;
}

void sub_27938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[3];
  if (v2)
  {
    v4 = v1;
    dispatch_io_close(v2, 1uLL);
    v3 = v1[3];
    v1[3] = 0;
  }
}

off_t sub_27FE8(uint64_t a1)
{
  *&v1 = __chkstk_darwin(a1).n128_u64[0];
  if (![v2 getFileSystemRepresentation:v5 maxLength:{4094, v1}])
  {
    return 0;
  }

  if (lstat(v5, &v4))
  {
    return 0;
  }

  return v4.st_size;
}

void sub_28088(uint64_t a1)
{
  v2 = +[ft9cupR7u6OrU4m1pyhB dataChunkSize];
  if (v2 < [*(a1 + 32) fileSize])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = v4[3];
    if (v6)
    {
      dispatch_io_close(v6, 1uLL);
      v7 = v4[3];
      v4[3] = 0;
    }

    v8 = +[ft9cupR7u6OrU4m1pyhB dataChunkSize];
    v9 = [v5 path];
    v10 = dispatch_io_create_with_path(0, [v9 UTF8String], 0, 0, v4[4], &stru_328E30);
    v11 = v4[3];
    v4[3] = v10;

    dispatch_io_set_high_water(v4[3], v8);
    dispatch_io_set_low_water(v4[3], v8);
    v12 = v4[3];
    v13 = [v5 fileSize];
    v14 = v4[4];
    io_handler[0] = _NSConcreteStackBlock;
    io_handler[1] = 3221225472;
    io_handler[2] = sub_28FDC;
    io_handler[3] = &unk_328E80;
    v108 = v4;
    v109 = v5;
    v110 = v8;
    v15 = v4;
    v16 = v5;
    dispatch_io_read(v12, 0, v13, v14, io_handler);

    return;
  }

  context = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v105 = 0;
  v18 = v17;
  v19 = [v18 sinfData];

  if (v19)
  {
    v106 = 0;
    v20 = [v18 path];
    v21 = [v18 sinfData];
    v97 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v20 sinfData:v21 refetch:&v106 error:&v105];

    if (v105)
    {
      v23 = _BookEPUBLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [v105 description];
        objc_claimAutoreleasedReturnValue();
        sub_263B9C();
      }
    }
  }

  else
  {
    v24 = [v18 path];
    v97 = [NSData dataWithContentsOfFile:v24];
  }

  v25 = v105;
  v102 = v25;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_37;
  }

  v26 = *(a1 + 32);
  v27 = [v26 mimeType];
  if ([v27 length])
  {
    v28 = v27;
    v29 = BESupportedImageMimeTypes();
    v30 = [v29 containsObject:v28];
  }

  else
  {
    v28 = [v26 requestedURL];
    v30 = BEDoesURLPointToAnImageFile(v28);
  }

  v25 = v102;
  v31 = v102 ? 0 : v30;
  if (v31 != 1)
  {
LABEL_37:
    v58 = *(a1 + 32);
    v59 = *(a1 + 40);
    v60 = v58;
    v61 = v97;
    v104 = v25;
    v101 = v60;
    v99 = [v60 requestedURL];
    v95 = [v60 path];
    if (v61)
    {
      v62 = v61;
      if ((v59[8] & 8) == 0)
      {
        v63 = v59;
        v64 = v60;
        v65 = v61;
        v66 = [v64 encryptionAlgorithm];
        v62 = v65;
        if ([v66 length])
        {
          if (![@"http://www.idpf.org/2008/embedding" compare:v66 options:1] || (v62 = v65, !objc_msgSend(@"http://ns.adobe.com/pdf/enc#RC", "compare:options:", v66, 1)))
          {
            v67 = objc_alloc_init(BEFontUnmangler);
            v68 = [v64 requestedURL];
            v62 = [(BEFontUnmangler *)v67 unmangleFontWithAssetInfo:v64 fileData:v65 URL:v68];
          }
        }

        v59[8] |= 8uLL;
      }

      v69 = [v101 mimeType];
      v70 = v59;
      v71 = v62;
      v72 = v69;
      v94 = v99;
      v73 = [[NSURLResponse alloc] initWithURL:v94 MIMEType:v72 expectedContentLength:objc_msgSend(v71 textEncodingName:{"length"), 0}];
      v74 = v70;
      v75 = v73;
      v76 = v59[8];
      v77 = v75;
      if ((v76 & 1) == 0)
      {
        v59[8] = v76 | 1;
        v78 = +[BEURLHandler testingDelegate];
        v79 = v78 == 0;

        v77 = v75;
        if (!v79)
        {
          v77 = sub_28D70(v75);
        }

        v80 = [v74 delegate];
        [v80 urlHandler:v74 didReceiveResponse:v77];
      }

      v81 = v74;
      v82 = v71;
      if ((v59[8] & 6) == 0)
      {
        v83 = [v81 delegate];
        [v83 urlHandler:v81 didReceiveData:v82];
      }

      v84 = v81;
      v85 = v84;
      v86 = v59[8];
      if ((v86 & 6) == 0)
      {
        v59[8] = v86 | 4;
        v87 = [v84 delegate];
        [v87 urlHandlerDidFinish:v85];
        v88 = +[BEURLHandler testingDelegate];
        [v88 urlHandler:v85 didFinishRequest:v85[6]];
      }

      v89 = v82;
      v90 = v104;
    }

    else
    {
      v91 = v104;
      if (!v104)
      {
        v91 = [NSError errorWithDomain:@"BookUrlHandler" code:0 userInfo:&off_343DD8];
      }

      v89 = v59;
      v72 = v91;
      v92 = _BookEPUBLog(v72);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_263B34();
      }

      v93 = v89[8];
      if ((v93 & 6) != 0)
      {
        v90 = v72;
        goto LABEL_60;
      }

      v89[8] = v93 | 2;
      v85 = [v89 delegate];
      [v85 urlHandler:v89 didFailWithError:v72];
      v82 = +[BEURLHandler testingDelegate];
      [v82 urlHandler:v89 request:v89[6] didFailWithError:v72];
      v90 = v72;
    }

LABEL_60:
    objc_autoreleasePoolPop(context);
    return;
  }

  v32 = [[UIImage alloc] initWithData:v97];
  v33 = v32;
  if (!v32 || (v34 = v32, (v35 = [v33 CGImage]) == 0) || !+[BEImageFilter imageIsFilteringCandidate:](BEImageFilter, "imageIsFilteringCandidate:", v35))
  {
LABEL_36:

    v25 = v102;
    goto LABEL_37;
  }

  v36 = *(a1 + 32);
  v103 = *(a1 + 40);
  v37 = v36;
  v38 = [BEImageFilter invertedImage:v35];
  if (!v38)
  {
LABEL_35:

    goto LABEL_36;
  }

  v39 = [BEImageFilter pngDataForCIImage:v38];
  if (![v39 length])
  {

    goto LABEL_35;
  }

  v40 = [v37 requestedURL];
  v41 = v103;
  v98 = v39;
  v100 = v40;
  v42 = [[NSURLResponse alloc] initWithURL:v100 MIMEType:@"image/png" expectedContentLength:objc_msgSend(v98 textEncodingName:{"length"), 0}];
  v43 = v41;
  v44 = v42;
  v45 = v43[8];
  v46 = v44;
  if ((v45 & 1) == 0)
  {
    v43[8] = v45 | 1;
    v47 = +[BEURLHandler testingDelegate];
    v48 = v47 == 0;

    v46 = v44;
    if (!v48)
    {
      v46 = sub_28D70(v44);
    }

    v49 = [v43 delegate];
    [v49 urlHandler:v43 didReceiveResponse:v46];
  }

  v50 = v43;
  v51 = v98;
  if ((v43[8] & 6) == 0)
  {
    v52 = [v50 delegate];
    [v52 urlHandler:v50 didReceiveData:v51];
  }

  v53 = v50;
  v54 = v53;
  v55 = v43[8];
  if ((v55 & 6) == 0)
  {
    v43[8] = v55 | 4;
    v56 = [v53 delegate];
    [v56 urlHandlerDidFinish:v54];
    v57 = +[BEURLHandler testingDelegate];
    [v57 urlHandler:v54 didFinishRequest:v54[6]];
  }

  objc_autoreleasePoolPop(context);
}

id sub_28D70(void *a1)
{
  v1 = a1;
  v10[0] = @"Content-Type";
  v2 = [v1 MIMEType];
  v11[0] = v2;
  v10[1] = @"Content-Length";
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v1 expectedContentLength]);
  v4 = [v3 stringValue];
  v10[2] = @"Cache-Control";
  v11[1] = v4;
  v11[2] = @"no-cache, no-store, must-revalidate";
  v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  v6 = [NSHTTPURLResponse alloc];
  v7 = [v1 URL];
  v8 = [v6 initWithURL:v7 statusCode:200 HTTPVersion:kCFHTTPVersion1_1 headerFields:v5];

  return v8;
}

void sub_28F30(id a1, int a2)
{
  if (a2)
  {
    v2 = *&a2;
    v3 = _BookEPUBLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [NSNumber numberWithInt:v2];
      objc_claimAutoreleasedReturnValue();
      sub_263BE0();
    }
  }
}

void sub_28FDC(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if (a4 == 89)
    {
      v9 = -999;
    }

    else
    {
      v9 = -3001;
    }

    v10 = *(a1 + 32);
    v11 = [NSError errorWithDomain:NSURLErrorDomain code:v9 userInfo:0];
    v12 = v10;
    v13 = v11;
    v14 = _BookEPUBLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_263B34();
    }

    v15 = v12[8];
    if ((v15 & 6) == 0)
    {
      v12[8] = v15 | 2;
      v16 = [v12 delegate];
      [v16 urlHandler:v12 didFailWithError:v13];
      v17 = +[BEURLHandler testingDelegate];
      [v17 urlHandler:v12 request:v12[6] didFailWithError:v13];
    }

    v18 = v12;
    goto LABEL_10;
  }

  if (v7 && v7 != &_dispatch_data_empty)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_292A0;
    applier[3] = &unk_328E58;
    v28 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v29 = v19;
    v30 = v20;
    dispatch_data_apply(v8, applier);
  }

  if (a2)
  {
    v21 = *(a1 + 32);
    v22 = v21[3];
    if (v22)
    {
      v23 = v21;
      dispatch_io_close(v22, 1uLL);
      v24 = v21[3];
      v21[3] = 0;
    }

    v25 = *(a1 + 32);
    v18 = v25;
    v26 = v25[8];
    if ((v26 & 6) != 0)
    {
      goto LABEL_11;
    }

    v25[8] = v26 | 4;
    v13 = [v25 delegate];
    [v13 urlHandlerDidFinish:v18];
    v12 = +[BEURLHandler testingDelegate];
    [v12 urlHandler:v18 didFinishRequest:v18[6]];
LABEL_10:

LABEL_11:
  }
}

uint64_t sub_292A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a2;
  context = objc_autoreleasePoolPush();
  v70 = 0;
  if (a5)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = v10;
    if ((v9[8] & 1) == 0)
    {
      if ([v10 requestedRangeIsWholeAsset])
      {
        v12 = [NSURLResponse alloc];
        v13 = [v11 requestedURL];
        v14 = [v11 mimeType];
        v15 = [v12 initWithURL:v13 MIMEType:v14 expectedContentLength:objc_msgSend(v11 textEncodingName:{"fileSize"), 0}];
      }

      else
      {
        v18 = [v11 requestedRange];
        v20 = v19;
        v21 = [NSNumber numberWithUnsignedInteger:v18];
        v22 = [NSNumber numberWithUnsignedInteger:v20];
        v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 fileSize]);
        v24 = [NSString stringWithFormat:@"bytes %@-%@/%@", v21, v22, v23, context, v68];

        v71[0] = @"Content-Type";
        v25 = [v11 mimeType];
        v72[0] = v25;
        v71[1] = @"Content-Length";
        v26 = [v11 requestedRange];
        if (v27 >= v26)
        {
          v28 = v27 - v26 + 1;
        }

        else
        {
          v28 = 0;
        }

        v29 = [NSNumber numberWithUnsignedInteger:v28];
        v30 = [v29 stringValue];
        v71[2] = @"Content-Range";
        v72[1] = v30;
        v72[2] = v24;
        v31 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3];

        v32 = [NSHTTPURLResponse alloc];
        v33 = [v11 requestedURL];
        v15 = [v32 initWithURL:v33 statusCode:206 HTTPVersion:@"HTTP/1.1" headerFields:v31];
      }

      v34 = v9;
      v35 = v15;
      v36 = v9[8];
      v37 = v35;
      if ((v36 & 1) == 0)
      {
        v9[8] = v36 | 1;
        v38 = +[BEURLHandler testingDelegate];
        v39 = v38 == 0;

        v37 = v35;
        if (!v39)
        {
          v37 = sub_28D70(v35);
        }

        v40 = [v34 delegate];
        [v40 urlHandler:v34 didReceiveResponse:v37];
      }
    }

    v41 = [*(a1 + 40) sinfData];
    if (!v41)
    {
      v16 = [[NSData alloc] initWithBytes:a4 length:a5];
LABEL_23:
      v47 = *(a1 + 32);
      if ((v47[8] & 8) == 0)
      {
        v48 = *(a1 + 40);
        v49 = v47;
        v50 = v48;
        v51 = v16;
        v52 = [v50 encryptionAlgorithm];
        v16 = v51;
        if ([v52 length])
        {
          if (![@"http://www.idpf.org/2008/embedding" compare:v52 options:1] || (v16 = v51, !objc_msgSend(@"http://ns.adobe.com/pdf/enc#RC", "compare:options:", v52, 1)))
          {
            v53 = objc_alloc_init(BEFontUnmangler);
            v54 = [v50 requestedURL];
            v16 = [(BEFontUnmangler *)v53 unmangleFontWithAssetInfo:v50 fileData:v51 URL:v54];
          }
        }

        v47[8] |= 8uLL;

        v47 = *(a1 + 32);
      }

      v55 = v47;
      v16 = v16;
      if ((v55[64] & 6) == 0)
      {
        v56 = [v55 delegate];
        [v56 urlHandler:v55 didReceiveData:v16];
      }

      v57 = 1;
      goto LABEL_38;
    }

    v42 = [ft9cupR7u6OrU4m1pyhB MNeITI0WyvXBxnLLXXWr:v41];
    v43 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", +[ft9cupR7u6OrU4m1pyhB d32lDu5WFQOV5kTab38V]+ *(a1 + 48));
    v72[0] = 0;
    v44 = v43;
    v69 = 0;
    v45 = [v42 BaSrRpzcWCyAjSdjbc8j:a4 withSize:a5 into:objc_msgSend(v43 e2cxKLQOk3W4uL3KXTUm:"mutableBytes") refetch:v72 error:{&v70, &v69}];
    v46 = v69;
    if (v46)
    {
      v45 = 0;
    }

    if (v45 == 1)
    {
      [v43 setLength:v72[0]];
      v16 = v43;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = -1016;
    }

    if (v45)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = 0;
    v17 = -1014;
  }

  v58 = *(a1 + 32);
  v59 = [NSError errorWithDomain:NSURLErrorDomain code:v17 userInfo:0];
  v60 = v58;
  v61 = v59;
  v62 = _BookEPUBLog(v61);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    sub_263B34();
  }

  v63 = v60[8];
  if ((v63 & 6) == 0)
  {
    v60[8] = v63 | 2;
    v64 = [v60 delegate];
    [v64 urlHandler:v60 didFailWithError:v61];
    v65 = +[BEURLHandler testingDelegate];
    [v65 urlHandler:v60 request:v60[6] didFailWithError:v61];
  }

  if (v70 != 1)
  {
    v57 = 0;
    goto LABEL_40;
  }

  v55 = [*(a1 + 40) path];
  [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:v55 completion:0];
  v57 = 0;
LABEL_38:

LABEL_40:
  objc_autoreleasePoolPop(context);

  return v57;
}

void sub_29B08(id a1, int a2)
{
  if (a2)
  {
    v2 = *&a2;
    v3 = _BookEPUBLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [NSNumber numberWithInt:v2];
      objc_claimAutoreleasedReturnValue();
      sub_263BE0();
    }
  }
}

__n128 sub_29BB4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_29BC4(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    v9 = *(a1 + 32);
    if (a4 == 89)
    {
      v10 = -999;
    }

    else
    {
      v10 = -3001;
    }

    v11 = v9;
    v12 = [NSError errorWithDomain:NSURLErrorDomain code:v10 userInfo:0];
    v13 = v11;
    v14 = v12;
    v15 = _BookEPUBLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_263B34();
    }

    v16 = v13[8];
    if ((v16 & 6) == 0)
    {
      v13[8] = v16 | 2;
      v17 = [v13 delegate];
      [v17 urlHandler:v13 didFailWithError:v14];
      v18 = +[BEURLHandler testingDelegate];
      [v18 urlHandler:v13 request:v13[6] didFailWithError:v14];
    }

    v19 = v13;
    goto LABEL_10;
  }

  if (v7 && v7 != &_dispatch_data_empty)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_29F20;
    applier[3] = &unk_328EC8;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v35 = *(a1 + 64);
    v34 = *(a1 + 48);
    dispatch_data_apply(v8, applier);
  }

  if (a2)
  {
    v20 = *(a1 + 32);
    v21 = [v20 pendingRangeRequestedData];
    v22 = v20;
    v23 = v21;
    if ((v22[64] & 6) == 0)
    {
      v24 = [v22 delegate];
      [v24 urlHandler:v22 didReceiveData:v23];
    }

    [*(a1 + 32) setPendingRangeRequestedData:0];
    v25 = *(a1 + 32);
    v26 = v25[3];
    if (v26)
    {
      v27 = v25;
      dispatch_io_close(v26, 1uLL);
      v28 = v25[3];
      v25[3] = 0;
    }

    v29 = *(a1 + 32);
    v19 = v29;
    v30 = v29[8];
    if ((v30 & 6) != 0)
    {
      goto LABEL_11;
    }

    v29[8] = v30 | 4;
    v14 = [v29 delegate];
    [v14 urlHandlerDidFinish:v19];
    v13 = +[BEURLHandler testingDelegate];
    [v13 urlHandler:v19 didFinishRequest:v19[6]];
LABEL_10:

LABEL_11:
  }
}

BOOL sub_29F20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a2;
  context = objc_autoreleasePoolPush();
  v74 = 0;
  if (a5)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = v10;
    if ((v9[8] & 1) == 0)
    {
      if ([v10 requestedRangeIsWholeAsset])
      {
        v12 = [NSURLResponse alloc];
        v13 = [v11 requestedURL];
        v14 = [v11 mimeType];
        v15 = [v12 initWithURL:v13 MIMEType:v14 expectedContentLength:objc_msgSend(v11 textEncodingName:{"fileSize"), 0}];
      }

      else
      {
        v18 = [v11 requestedRange];
        v20 = v19;
        v21 = [NSNumber numberWithUnsignedInteger:v18];
        v22 = [NSNumber numberWithUnsignedInteger:v20];
        v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 fileSize]);
        v24 = [NSString stringWithFormat:@"bytes %@-%@/%@", v21, v22, v23, context, v72];

        v75[0] = @"Content-Type";
        v25 = [v11 mimeType];
        v76[0] = v25;
        v75[1] = @"Content-Length";
        v26 = [v11 requestedRange];
        if (v27 >= v26)
        {
          v28 = v27 - v26 + 1;
        }

        else
        {
          v28 = 0;
        }

        v29 = [NSNumber numberWithUnsignedInteger:v28];
        v30 = [v29 stringValue];
        v75[2] = @"Content-Range";
        v76[1] = v30;
        v76[2] = v24;
        v31 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:3];

        v32 = [NSHTTPURLResponse alloc];
        v33 = [v11 requestedURL];
        v15 = [v32 initWithURL:v33 statusCode:206 HTTPVersion:@"HTTP/1.1" headerFields:v31];
      }

      v34 = v9;
      v35 = v15;
      v36 = v9[8];
      v37 = v35;
      if ((v36 & 1) == 0)
      {
        v9[8] = v36 | 1;
        v38 = +[BEURLHandler testingDelegate];
        v39 = v38 == 0;

        v37 = v35;
        if (!v39)
        {
          v37 = sub_28D70(v35);
        }

        v40 = [v34 delegate];
        [v40 urlHandler:v34 didReceiveResponse:v37];
      }
    }

    v41 = [*(a1 + 40) sinfData];
    if (!v41)
    {
      v16 = [[NSData alloc] initWithBytes:a4 length:a5];
LABEL_23:
      v47 = *(a1 + 32);
      if ((v47[8] & 8) != 0)
      {
        v53 = v16;
      }

      else
      {
        v48 = *(a1 + 40);
        v49 = v47;
        v50 = v48;
        v51 = v16;
        v52 = [v50 encryptionAlgorithm];
        v53 = v51;
        if ([v52 length])
        {
          if (![@"http://www.idpf.org/2008/embedding" compare:v52 options:1] || (v53 = v51, !objc_msgSend(@"http://ns.adobe.com/pdf/enc#RC", "compare:options:", v52, 1)))
          {
            v54 = objc_alloc_init(BEFontUnmangler);
            v55 = [v50 requestedURL];
            v53 = [(BEFontUnmangler *)v54 unmangleFontWithAssetInfo:v50 fileData:v51 URL:v55];
          }
        }

        v47[8] |= 8uLL;
      }

      v66 = *(*(*(a1 + 48) + 8) + 48);
      v67 = *(*(*(a1 + 56) + 8) + 24);
      if (v67 >= [v53 length] - v66)
      {
        v68 = [v53 length] - v66;
      }

      else
      {
        v68 = *(*(*(a1 + 56) + 8) + 24);
      }

      v16 = [v53 subdataWithRange:{v66, v68}];

      *(*(*(a1 + 48) + 8) + 48) = 0;
      *(*(*(a1 + 56) + 8) + 24) -= v68;
      v69 = [*(a1 + 32) pendingRangeRequestedData];
      [v69 appendData:v16];

      v65 = *(*(*(a1 + 56) + 8) + 24) != 0;
      goto LABEL_41;
    }

    v42 = [ft9cupR7u6OrU4m1pyhB MNeITI0WyvXBxnLLXXWr:v41];
    v43 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", +[ft9cupR7u6OrU4m1pyhB d32lDu5WFQOV5kTab38V]+ *(a1 + 64));
    v76[0] = 0;
    v44 = v43;
    v73 = 0;
    v45 = [v42 BaSrRpzcWCyAjSdjbc8j:a4 withSize:a5 into:objc_msgSend(v43 e2cxKLQOk3W4uL3KXTUm:"mutableBytes") refetch:v76 error:{&v74, &v73}];
    v46 = v73;
    if (v46)
    {
      v45 = 0;
    }

    if (v45 == 1)
    {
      [v43 setLength:v76[0]];
      v16 = v43;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      v17 = -1016;
    }

    if (v45)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = 0;
    v17 = -1014;
  }

  v56 = *(a1 + 32);
  v57 = [NSError errorWithDomain:NSURLErrorDomain code:v17 userInfo:0];
  v58 = v56;
  v59 = v57;
  v60 = _BookEPUBLog(v59);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    sub_263B34();
  }

  v61 = v58[8];
  if ((v61 & 6) == 0)
  {
    v58[8] = v61 | 2;
    v62 = [v58 delegate];
    [v62 urlHandler:v58 didFailWithError:v59];
    v63 = +[BEURLHandler testingDelegate];
    [v63 urlHandler:v58 request:v58[6] didFailWithError:v59];
  }

  if (v74 == 1)
  {
    v64 = [*(a1 + 40) path];
    [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:v64 completion:0];
  }

  v65 = 0;
LABEL_41:

  objc_autoreleasePoolPop(context);
  return v65;
}

void sub_2A7F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2A818(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_2A834(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_2AA78(uint64_t a1)
{
  v2 = [*(a1 + 32) urlHandlerToTaskMap];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = [*(a1 + 32) taskToURLHandlerMap];
  [v3 setObject:*(a1 + 48) forKey:*(a1 + 40)];
}

void sub_2ABF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2AC10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2AC28(uint64_t a1)
{
  v6 = [*(a1 + 32) taskToURLHandlerMap];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) urlHandlerToTaskMap];
  [v5 removeObjectForKey:*(*(*(a1 + 48) + 8) + 40)];

  [v6 removeObjectForKey:*(a1 + 40)];
}

void sub_2AD88(uint64_t a1)
{
  v2 = [*(a1 + 32) _taskForHandler:*(a1 + 40)];
  [v2 didReceiveResponse:*(a1 + 48)];
}

void sub_2AEA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _taskForHandler:*(a1 + 40)];
  [v2 didReceiveData:*(a1 + 48)];
}

void sub_2AF94(uint64_t a1)
{
  v2 = [*(a1 + 32) _taskForHandler:*(a1 + 40)];
  [v2 didFinish];
  [*(a1 + 32) _removeTaskForHandler:*(a1 + 40)];
}

void sub_2B0B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _taskForHandler:*(a1 + 40)];
  [v2 didFailWithError:*(a1 + 48)];
  [*(a1 + 32) _removeTaskForHandler:*(a1 + 40)];
}

void sub_2B2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2B2D0(uint64_t a1)
{
  v5 = [*(a1 + 32) urlHandlerToTaskMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_2B3D0(uint64_t a1)
{
  v4 = [*(a1 + 32) urlHandlerToTaskMap];
  v2 = [v4 objectForKey:*(a1 + 40)];
  v3 = [*(a1 + 32) taskToURLHandlerMap];
  [v3 removeObjectForKey:v2];

  [v4 removeObjectForKey:*(a1 + 40)];
}

void sub_2B758(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();
    if (v4)
    {
      v5 = BookEPUBBundle(v4);
      v6 = [v5 localizedStringForKey:@"OK" value:&stru_33E120 table:0];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_2B920;
      v13[3] = &unk_328F40;
      v14 = *(a1 + 48);
      v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v13];

      v8 = [UIAlertController alertControllerWithTitle:&stru_33E120 message:*(a1 + 40) preferredStyle:1];
      [v8 addAction:v7];
      [v3 handler:*(a1 + 32) presentAlertController:v8 completion:0];
    }

    else
    {
      v10 = objc_retainBlock(*(a1 + 48));
      v11 = v10;
      if (v10)
      {
        (*(v10 + 2))(v10);
      }
    }
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 48));
    if (v9)
    {
      v12 = v9;
      v9[2]();
      v9 = v12;
    }
  }
}

void sub_2B920(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_2BA30(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = objc_opt_respondsToSelector();
    if (v4)
    {
      v5 = BookEPUBBundle(v4);
      v6 = [v5 localizedStringForKey:@"OK" value:&stru_33E120 table:0];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_2BCC0;
      v19[3] = &unk_328F40;
      v20 = *(a1 + 48);
      v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:v19];

      v9 = BookEPUBBundle(v8);
      v10 = [v9 localizedStringForKey:@"Cancel" value:&stru_33E120 table:0];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_2BD10;
      v17[3] = &unk_328F40;
      v18 = *(a1 + 48);
      v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:v17];

      v12 = [UIAlertController alertControllerWithTitle:&stru_33E120 message:*(a1 + 40) preferredStyle:1];
      [v12 addAction:v7];
      [v12 addAction:v11];
      [v3 handler:*(a1 + 32) presentAlertController:v12 completion:0];
    }

    else
    {
      v14 = objc_retainBlock(*(a1 + 48));
      v15 = v14;
      if (v14)
      {
        (*(v14 + 2))(v14, 0);
      }
    }
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 48));
    if (v13)
    {
      v16 = v13;
      (*(v13 + 2))(v13, 0);
      v13 = v16;
    }
  }
}

void sub_2BCC0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 1);
    v1 = v2;
  }
}

void sub_2BD10(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_2C344(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, 1);
  v6 = objc_retainBlock(v4);

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

UIMenu *__cdecl sub_2C4C4(id a1, NSArray *a2)
{
  v2 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_2C698;
  v15 = sub_2C6A8;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2C6B0;
  v10[3] = &unk_328FF8;
  v10[4] = &v11;
  v3 = [(NSArray *)v2 enumerateObjectsUsingBlock:v10];
  if (v12[5])
  {
    v17 = v12[5];
    v4 = [NSArray arrayWithObjects:&v17 count:1];
  }

  else
  {
    v5 = _BookEPUBLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "WebKit native open action (WKElementActionTypeOpenIdentifier) not found to open link - fallback to suggested actions", &v9, 2u);
    }

    v4 = v2;
  }

  v6 = v4;
  v7 = [UIMenu menuWithChildren:v4];

  _Block_object_dispose(&v11, 8);

  return v7;
}

void sub_2C670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2C698(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2C6B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  obj = BUDynamicCast();

  v7 = [obj identifier];
  LODWORD(v6) = [v7 isEqualToString:@"WKElementActionTypeOpen"];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    [*(*(*(a1 + 32) + 8) + 40) setImage:0];
    *a4 = 1;
  }
}