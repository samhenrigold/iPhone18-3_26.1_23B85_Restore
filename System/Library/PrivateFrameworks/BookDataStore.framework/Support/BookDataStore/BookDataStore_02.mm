void sub_10006C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006C260(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(*(*(a1 + 56) + 8) + 40) addEntriesFromDictionary:a2];
  }

  else
  {
    v7 = sub_10000DE28(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C30D0(a1, v6, v7);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10006C2EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(*(*(a1 + 48) + 8) + 40) addEntriesFromDictionary:a2];
  }

  else
  {
    v7 = sub_10000DE28(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C31A4();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10006C378(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v19 = @"StoreAudiobook";
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 assetID];
        if (v8)
        {
          v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:v8];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 name];
            [v7 setTitle:v11];

            v12 = [v10 artworkURL];
            [v7 setCoverURL:v12];

            [v7 setIsExplicit:{objc_msgSend(v10, "isExplicit")}];
            if ([v10 isBook])
            {
              v13 = [v10 pageProgressionDirection];
              if (v13)
              {
                v14 = [v10 pageProgressionDirection];
                [v7 setPageProgressionDirection:v14];
              }

              else
              {
                [v7 setPageProgressionDirection:@"ltr"];
              }
            }

            v15 = [v7 cloudAssetType];

            if (!v15)
            {
              if ([v10 isBook])
              {
                v16 = @"StoreEbook";
              }

              else
              {
                v16 = v19;
              }

              [v7 setCloudAssetType:v16];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = objc_retainBlock(*(a1 + 40));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, *(a1 + 32));
  }
}

void sub_10006C6E8(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BDSBookWidgetInfoMO"];
  v3 = [NSPredicate predicateWithFormat:@"%K IN %@", @"assetID", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 40);
  v26 = 0;
  v20 = v2;
  v5 = [v4 executeFetchRequest:v2 error:&v26];
  v19 = v26;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = sub_10000DE28(v7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing BDSBookWidgetInfoMO: %@", buf, 0xCu);
        }

        v7 = [*(a1 + 40) deleteObject:v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
      v8 = v7;
    }

    while (v7);
  }

  v13 = *(a1 + 40);
  v21 = 0;
  [v13 save:&v21];
  v14 = v21;
  v15 = v14;
  if (v14)
  {
    v16 = sub_10000DE28(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3210();
    }
  }

  v17 = objc_retainBlock(*(a1 + 48));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v15);
  }
}

void sub_10006CA44(id *a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [a1[4] allAssetIDs];
  v5 = [NSSet setWithArray:v4];

  [v3 minusSet:v5];
  if ([v3 count])
  {
    v6 = a1[5];
    v7 = [v3 allObjects];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = nullsub_12;
    v23[3] = &unk_10023F6F8;
    v24 = a1[6];
    [v6 removeBookWidgetInfosForAssetIDs:v7 completion:v23];
  }

  if ([v5 count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1[4] ubiquityMetadataForAssetID:*(*(&v19 + 1) + 8 * v13)];
          v15 = [a1[5] _bookWidgetInfoFromUbiquityMetadata:v14];
          [v8 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v11);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = nullsub_13;
    v17[3] = &unk_10023F6F8;
    v16 = a1[5];
    v18 = a1[6];
    [v16 setBookWidgetInfoOnly:v8 completion:v17];
  }
}

const __CFString *sub_10006E070(void *a1)
{
  v1 = a1;
  if ([@"pdf" caseInsensitiveCompare:v1])
  {
    if ([@"epub" caseInsensitiveCompare:v1] && objc_msgSend(@"ibooks", "caseInsensitiveCompare:", v1))
    {
      if ([@"m4a" caseInsensitiveCompare:v1] && objc_msgSend(@"m4b", "caseInsensitiveCompare:", v1) && objc_msgSend(@"m4p", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aa", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aax", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"mp4", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aac", "caseInsensitiveCompare:", v1) && objc_msgSend(@"adts", "caseInsensitiveCompare:", v1) && objc_msgSend(@"ac3", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aif", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aiff", "caseInsensitiveCompare:", v1) && objc_msgSend(@"aifc", "caseInsensitiveCompare:", v1) && objc_msgSend(@"caf", "caseInsensitiveCompare:", v1) && objc_msgSend(@"snd", "caseInsensitiveCompare:", v1) && objc_msgSend(@"au", "caseInsensitiveCompare:", v1) && objc_msgSend(@"sd2", "caseInsensitiveCompare:", v1) && objc_msgSend(@"wav", "caseInsensitiveCompare:", v1))
      {
        v2 = @"LibraryContentAssetTypeUnknown";
      }

      else
      {
        v2 = @"AssetTypeAudiobook";
      }
    }

    else
    {
      v2 = @"AssetTypeEbook";
    }
  }

  else
  {
    v2 = @"AssetTypePDF";
  }

  return v2;
}

void sub_10006E980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10006EAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10006F350(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

uint64_t sub_10006FA44(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___BCAnnotationRange__length;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___BCAnnotationRange__length;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___BCAnnotationRange__location;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___BCAnnotationRange__location;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10007142C(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BCProtoAnnotation);
          [a1 addAnnotation:v16];
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_100072DD0(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 24;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_30:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100072DD0(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v93[0]) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v93[0] & 0x7F) << v6;
      if ((v93[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v93[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 8;
        goto LABEL_171;
      case 2u:
        v19 = PBReaderReadString();
        v20 = 72;
        goto LABEL_120;
      case 3u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 204) |= 0x200u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v93[0] & 0x7F) << v36;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_139;
          }
        }

        v42 = (v38 != 0) & ~[a2 hasError];
LABEL_139:
        v81 = 200;
        goto LABEL_152;
      case 4u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 204) |= 0x400u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v93[0] & 0x7F) << v53;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_145;
          }
        }

        v42 = (v55 != 0) & ~[a2 hasError];
LABEL_145:
        v81 = 201;
        goto LABEL_152;
      case 5u:
        v19 = PBReaderReadString();
        v20 = 96;
        goto LABEL_120;
      case 6u:
        v93[0] = 0;
        v45 = [a2 position] + 8;
        if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 8, v46 <= objc_msgSend(a2, "length")))
        {
          v89 = [a2 data];
          [v89 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 24;
        goto LABEL_171;
      case 7u:
        v19 = PBReaderReadString();
        v20 = 104;
        goto LABEL_120;
      case 8u:
        v19 = PBReaderReadString();
        v20 = 160;
        goto LABEL_120;
      case 9u:
        v19 = PBReaderReadString();
        v20 = 168;
        goto LABEL_120;
      case 0xAu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 204) |= 0x80u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v93[0] & 0x7F) << v59;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_149;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v61;
        }

LABEL_149:
        v80 = 184;
        goto LABEL_157;
      case 0xBu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 204) |= 0x100u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v93[0] & 0x7F) << v28;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_137;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_137:
        v80 = 188;
        goto LABEL_157;
      case 0xCu:
        v19 = PBReaderReadString();
        v20 = 192;
        goto LABEL_120;
      case 0xDu:
        v19 = PBReaderReadString();
        v20 = 112;
        goto LABEL_120;
      case 0xEu:
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_120;
      case 0xFu:
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_120;
      case 0x10u:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_120;
      case 0x11u:
        v19 = PBReaderReadString();
        v20 = 64;
        goto LABEL_120;
      case 0x12u:
        *(a1 + 204) |= 2u;
        v93[0] = 0;
        v65 = [a2 position] + 8;
        if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
        {
          v91 = [a2 data];
          [v91 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 32;
        goto LABEL_171;
      case 0x13u:
        v16 = objc_alloc_init(BCAnnotationRange);
        objc_storeStrong((a1 + 176), v16);
        v93[0] = 0;
        v93[1] = 0;
        if (PBReaderPlaceMark() && sub_10006FA44(v16, a2))
        {
          PBReaderRecallMark();

LABEL_172:
          v4 = a2;
          continue;
        }

        return 0;
      case 0x14u:
        *(a1 + 204) |= 0x40u;
        LODWORD(v93[0]) = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v85 = [a2 data];
          [v85 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 156;
        goto LABEL_162;
      case 0x15u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 204) |= 0x800u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v93[0] & 0x7F) << v67;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v42) = 0;
            goto LABEL_151;
          }
        }

        v42 = (v69 != 0) & ~[a2 hasError];
LABEL_151:
        v81 = 202;
LABEL_152:
        *(a1 + v81) = v42;
        goto LABEL_172;
      case 0x16u:
        *(a1 + 204) |= 0x20u;
        LODWORD(v93[0]) = 0;
        v17 = [a2 position] + 4;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
        {
          v82 = [a2 data];
          [v82 getBytes:v93 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v83 = v93[0];
        v84 = 152;
LABEL_162:
        *(a1 + v84) = v83;
        goto LABEL_172;
      case 0x17u:
        v19 = PBReaderReadString();
        v20 = 80;
        goto LABEL_120;
      case 0x18u:
        v19 = PBReaderReadString();
        v20 = 88;
        goto LABEL_120;
      case 0x1Au:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 204) |= 4u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v93[0] & 0x7F) << v47;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_143;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v49;
        }

LABEL_143:
        v80 = 120;
        goto LABEL_157;
      case 0x1Bu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 204) |= 8u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v93[0] & 0x7F) << v21;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_133:
        v80 = 124;
        goto LABEL_157;
      case 0x1Cu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 204) |= 0x10u;
        while (1)
        {
          LOBYTE(v93[0]) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:v93 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v93[0] & 0x7F) << v74;
          if ((v93[0] & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            v27 = 0;
            goto LABEL_156;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v76;
        }

LABEL_156:
        v80 = 128;
LABEL_157:
        *(a1 + v80) = v27;
        goto LABEL_172;
      case 0x1Du:
        v19 = PBReaderReadString();
        v20 = 136;
        goto LABEL_120;
      case 0x1Eu:
        v19 = PBReaderReadData();
        v20 = 144;
LABEL_120:
        v73 = *(a1 + v20);
        *(a1 + v20) = v19;

        goto LABEL_172;
      case 0x1Fu:
        *(a1 + 204) |= 1u;
        v93[0] = 0;
        v43 = [a2 position] + 8;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
        {
          v86 = [a2 data];
          [v86 getBytes:v93 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v87 = v93[0];
        v88 = 16;
LABEL_171:
        *(a1 + v88) = v87;
        goto LABEL_172;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_172;
    }
  }
}

void sub_100075F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100075F78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchLatestCompletion:&stru_100241C50];
}

void sub_100075FC0(id a1)
{
  v1 = sub_10000DC90(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C37A0();
  }
}

void sub_100076004(id a1)
{
  v1 = sub_10000DC90(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C37D4();
  }
}

void sub_1000761A0(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCCloudSyncVersions"];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setFetchLimit:1];
  v3 = [NSPredicate predicateWithFormat:@"dataType == %@", @"NBAssetDetailSyncVersions"];
  [v2 setPredicate:v3];

  v4 = *(a1 + 32);
  v30 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v30];
  v6 = v30;
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000DC90(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3808(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [v5 firstObject];
  if (!v15)
  {
    v15 = [NSEntityDescription insertNewObjectForEntityForName:@"BCCloudSyncVersions" inManagedObjectContext:*(a1 + 32)];
    v16 = [@"NBAssetDetailSyncVersions" copy];
    [v15 setDataType:v16];
  }

  (*(*(a1 + 40) + 16))();
  if ([*(a1 + 32) hasChanges])
  {
    v17 = *(a1 + 32);
    v29 = v7;
    [v17 save:&v29];
    v18 = v29;

    if (v18)
    {
      v20 = sub_10000DC90(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1001C3808(v18, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  else
  {
    v18 = v7;
  }

  v27 = objc_retainBlock(*(a1 + 48));
  v28 = v27;
  if (v27)
  {
    (*(v27 + 2))(v27);
  }
}

void sub_100076510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10007652C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _fetchLatestDidFinish];

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

void sub_100076688(uint64_t a1)
{
  v2 = sub_10000DC90(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BDSNBController fetchLatest", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained fetching] & 1) == 0)
  {
    [v4 setFetching:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000767E4;
    v7[3] = &unk_100241D10;
    objc_copyWeak(&v9, (a1 + 40));
    v8 = *(a1 + 32);
    [v4 _fetchCloudSyncVersions:v7 completion:&stru_100241D30];

    objc_destroyWeak(&v9);
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 32));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_1000767E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [v3 mutableCopy];
    v7 = [v5 fetchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076918;
    block[3] = &unk_100240228;
    objc_copyWeak(&v14, (a1 + 40));
    v12 = v6;
    v13 = *(a1 + 32);
    v8 = v6;
    dispatch_async(v7, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v9 = objc_retainBlock(*(a1 + 32));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9);
    }
  }
}

void sub_100076918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fq_fetchSince:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }
  }
}

void sub_100076BD8(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = sub_10000DC90(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3874(a1, v6, v8);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3970(a1, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001C3900(a1, v8, v9, v10, v11, v12, v13, v14);
  }
}

void sub_100077288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000772AC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained fetchQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000773F0;
  v18[3] = &unk_100241D80;
  objc_copyWeak(&v23, (a1 + 40));
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v24 = a6;
  v22 = *(a1 + 32);
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, v18);

  objc_destroyWeak(&v23);
}

void sub_1000773F0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v18 = WeakRetained;
  if (WeakRetained)
  {
    v17 = a1;
    v3 = sub_10000DC90(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3A84(a1, v3);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          v8 = BUDynamicCast();
          v9 = [v8 isAudiobook];
          if (v9)
          {
            v10 = [v8 assetID];
            v11 = BUIsStoreBookAssetID();
            if (v11)
            {
              [v18 _updateBookmarkTimeFromAssetDetail:v8];
            }

            else
            {
              v13 = sub_10000DC90(v11);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v29 = v10;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BDSNBController skipping non-store audiobook assetID: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v10 = sub_10000DC90(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v8 assetID];
              *buf = 138412290;
              v29 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BDSNBController skipping assetDetail without datePlaybackTimeUpdated for assetID: %@", buf, 0xCu);
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v5);
    }

    v14 = v17[6];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100077730;
    v19[3] = &unk_100241470;
    objc_copyWeak(&v22, v17 + 8);
    v23 = *(v17 + 72);
    v20 = v17[6];
    v21 = v17[7];
    [v18 _archiveCloudSyncVersions:v14 completion:v19];

    objc_destroyWeak(&v22);
  }

  else
  {
    v15 = objc_retainBlock(a1[7]);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15);
    }
  }
}

void sub_100077730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained fetchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100077844;
    v7[3] = &unk_100241470;
    objc_copyWeak(&v10, (a1 + 48));
    v11 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    dispatch_async(v4, v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = objc_retainBlock(*(a1 + 40));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }
  }
}

void sub_100077844(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 56);
    v5 = sub_10000DC90(WeakRetained);
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BDSNBController fetching again while updating assetDetails.", v9, 2u);
      }

      [v3 _fq_fetchSince:*(a1 + 32) completion:*(a1 + 40)];
      goto LABEL_12;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C3B38();
    }

    [v3 setFetching:0];
  }

  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
  }

LABEL_12:
}

uint64_t sub_1000779D0(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_100274AB0;
  v6 = qword_100274AB0;
  if (!qword_100274AB0)
  {
    v7 = *off_100241DC8;
    v8 = *off_100241DD8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_100274AB0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_100077AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100077AFC(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100274AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100077B94()
{
  v3 = 0;
  v0 = sub_1000779D0(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id sub_100077BF0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100274AB8;
  v7 = qword_100274AB8;
  if (!qword_100274AB8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100077CD0;
    v3[3] = &unk_100240630;
    v3[4] = &v4;
    sub_100077CD0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100077CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100077CD0(uint64_t a1)
{
  sub_100077B94();
  result = objc_getClass("NMSMediaPinningManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100274AB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1001C3B6C();
    return +[(BDSNMSMediaPinningManager *)v3];
  }

  return result;
}

void sub_100077FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100078020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dieIfUnacknowledgediCloudLogoutOcccurred];
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"BDSTCCAccessChangedNotification" object:0];
}

void sub_1000785E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26, id a27)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_10007867C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = sub_1000023E8(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained(a1 + 5);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ for %{public}@ was closed.", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 clientConnectionManager];
  [v6 removeClient:WeakRetained reason:@"invalidated"];
}

void sub_100078784(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = sub_1000023E8(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_loadWeakRetained(a1 + 5);
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection %{public}@ for %{public}@ was interrupted.", &v7, 0x16u);
  }

  v5 = objc_loadWeakRetained(a1 + 6);
  v6 = [v5 clientConnectionManager];
  [v6 removeClient:WeakRetained reason:@"interrupted"];
}

void sub_10007888C(uint64_t a1)
{
  v2 = sub_1000023E8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Instantiating BDSService.", v7, 2u);
  }

  v3 = [BDSService alloc];
  v4 = [*(a1 + 32) clientConnectionManager];
  v5 = [(BDSService *)v3 initWithClientConnectionService:v4];
  v6 = qword_100274AC0;
  qword_100274AC0 = v5;
}

void sub_100078AAC(uint64_t a1)
{
  v2 = sub_1000023E8(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleted local copies of cloud data in response to logout.", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_100078C1C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078CAC;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [BCCloudCollectionsManager deleteCloudDataWithCompletion:v1];
}

void sub_100078CAC(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078D3C;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [_TtC14bookdatastored25CloudSecureManagerService deleteCloudDataWithCompletion:v1];
}

void sub_100078D3C(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100078DCC;
  v1[3] = &unk_100240D90;
  v2 = *(a1 + 32);
  [BCCloudKitController deleteCloudDataWithCompletion:v1];
}

void sub_100078DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000023E8(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Completed deleting cloud data", v9, 2u);
  }

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, a2, v5);
  }
}

void sub_10007A098(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] zoneDataManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007A180;
  v9[3] = &unk_100241E98;
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 dissociateCloudDataFromSyncWithCompletion:v9];
}

void sub_10007A180(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 4. dissociateCloudDataFromSyncWithCompletion %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (a2)
  {
    v9 = [*(a1 + 40) tokenController];
    v10 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10007A348;
    v14[3] = &unk_100241E70;
    v15 = *(a1 + 32);
    v16 = *(a1 + 56);
    [v9 updateSaltVersionIdentifier:v10 completion:v14];

    v11 = v15;
  }

  else
  {
    v12 = sub_10000DC08(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3C78(a1, v5, v12);
    }

    v13 = objc_retainBlock(*(a1 + 56));
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
    }
  }
}

void sub_10007A348(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5a. updateSaltVersionIdentifier  %{BOOL}d error%@", &v10, 0x1Cu);
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_10007A448(id *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138412802;
    v31 = v7;
    v32 = 1024;
    v33 = a2;
    v34 = 2112;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 2. needsUpdate: %{BOOL}d error%@", buf, 0x1Cu);
  }

  if (v5)
  {
    if ([v5 code] == 1003)
    {
      v9 = [a1[5] zoneDataManager];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10007A798;
      v26[3] = &unk_100241EC0;
      v10 = a1[4];
      v11 = a1[7];
      *&v12 = v10;
      *(&v12 + 1) = a1[5];
      v25 = v12;
      *&v13 = a1[6];
      *(&v13 + 1) = v11;
      v27 = v25;
      v28 = v13;
      v29 = a1[8];
      [v9 hasSaltChangedWithCompletion:v26];

      goto LABEL_24;
    }

    v17 = [v5 code];
    v18 = sub_10000DC08(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1006)
    {
      if (v19)
      {
        v20 = a1[4];
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 6b - saltIdentifierError ", buf, 0xCu);
      }

LABEL_14:
      (*(a1[7] + 2))();
      goto LABEL_24;
    }

    if (v19)
    {
      v22 = a1[4];
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - do nothing", buf, 0xCu);
    }
  }

  else
  {
    v14 = sub_10000DC08(v8);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v15)
      {
        v16 = a1[4];
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3a.Need update. Calling dissociate", buf, 0xCu);
      }

      goto LABEL_14;
    }

    if (v15)
    {
      v21 = a1[4];
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 3b. No update needed. Calling completion.", buf, 0xCu);
    }
  }

  v23 = objc_retainBlock(a1[8]);
  v24 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23, 1);
  }

LABEL_24:
}

void sub_10007A798(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002660(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138412802;
    v19 = v7;
    v20 = 1024;
    v21 = a2;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] hasSaltChangedWithCompletion. %@ %{BOOL}d, ERROR:%@", buf, 0x1Cu);
  }

  if (v5 || !a2)
  {
    if (v5 || (a2 & 1) != 0)
    {
      v11 = sub_10000DC08(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138412802;
        v19 = v12;
        v20 = 1024;
        v21 = a2;
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - skip update %{BOOL}d error%@", buf, 0x1Cu);
      }

      v13 = objc_retainBlock(*(a1 + 64));
      v14 = v13;
      if (v13)
      {
        (*(v13 + 2))(v13, 1);
      }
    }

    else
    {
      v9 = [*(a1 + 40) tokenController];
      v10 = *(a1 + 48);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10007A9C0;
      v15[3] = &unk_100241E70;
      v16 = *(a1 + 32);
      v17 = *(a1 + 64);
      [v9 updateSaltVersionIdentifier:v10 completion:v15];
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10007A9C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10000DC08(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412802;
    v11 = v7;
    v12 = 1024;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BDSSaltVersionIdentifierManager] #hasSaltChangedWithCompletion - %@ - only update saltversionidentifier %{BOOL}d error%@", &v10, 0x1Cu);
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, a2);
  }
}

void sub_10007ACA4(id a1)
{
  qword_100274AD0 = [[BCCloudCollectionsManager alloc] initService];

  _objc_release_x1();
}

void sub_10007B42C(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3D24(a1, v2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007B480(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3DA0(a1, v2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10007B4D4(uint64_t a1)
{
  v2 = sub_100002660(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C3E1C(v2);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_10007B708(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = sub_100002660(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3E60(v2);
    }
  }
}

void sub_10007BED8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = sub_100002660(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3EA4(a1, v8, v9);
    }
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void sub_10007C018(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10007C750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10007C8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10007D2B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10007D8C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = sub_100002660(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001C3F74(a1, v8, v9);
    }
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void sub_10007DA04(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10007E13C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10007E2B4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10007EC74(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10007EE70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_class();
  v9 = BUDynamicCast();

  v10 = objc_retainBlock(*(a1 + 32));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v9, v12, v7);
  }
}

void sub_10007F098(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = [v6 sortOrder];
  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v7, v10);
  }
}

void sub_10007F3C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  if (a2)
  {
    [NSSet setWithArray:a2];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  (*(v6 + 16))(v6);
}

void sub_100081E9C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudCollectionsManager sharedManager];
    v4 = [v3 collectionMemberManager];

    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100081FF8;
    v16[3] = &unk_100241FC0;
    v17 = v6;
    v18 = *(a1 + 32);
    v19 = v4;
    v20 = *(a1 + 48);
    v7 = v4;
    [v5 _nextSortOrderForCollectionMemberManager:v7 collectionID:v17 completion:v16];
  }

  else
  {
    v8 = sub_10000DD18(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C44F8(a1, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = objc_retainBlock(*(a1 + 48));
    v7 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_100081FF8(uint64_t a1, uint64_t a2)
{
  v4 = [BCCollectionMember collectionMemberIDWithCollectionID:*(a1 + 32) assetID:*(a1 + 40)];
  v5 = [[BCMutableCollectionMember alloc] initWithCollectionMemberID:v4];
  [(BCMutableCollectionMember *)v5 setSortOrder:a2];
  [(BCMutableCloudData *)v5 setDeletedFlag:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000820E0;
  v7[3] = &unk_1002417E8;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v6 setCollectionMember:v5 completion:v7];
}

void sub_1000820E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000DD18(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4568();
    }
  }

  v9 = objc_retainBlock(*(a1 + 32));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, a2);
  }
}

void sub_100082260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_10000DD18(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C45D0();
    }
  }

  if (v5)
  {
    v9 = [v5 deletedFlag] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_retainBlock(*(a1 + 32));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v9);
  }
}

void sub_100082544(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[BCCloudAssetManager sharedManager];
    v4 = [v3 assetDetailManager];

    v5 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100082688;
    v10[3] = &unk_100242038;
    v6 = v5;
    v14 = *(a1 + 56);
    v11 = v6;
    v12 = v4;
    v13 = *(a1 + 48);
    v7 = v4;
    [v7 assetDetailsForAssetIDs:v6 completion:v10];
  }

  else
  {
    v8 = sub_10000DD18(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001C4638(a1, v8);
    }

    v9 = objc_retainBlock(*(a1 + 48));
    v7 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

void sub_100082688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 bu_arrayByRemovingNSNulls];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 assetID];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = *(a1 + 32);
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = [v4 objectForKeyedSubscript:v18];
        if (!v19)
        {
          v19 = [[BCMutableAssetDetail alloc] initWithAssetID:v18];
          v20 = +[NSDate date];
          [(BCMutableAssetDetail *)v19 setDateFinished:v20];

          [v4 setObject:v19 forKeyedSubscript:v18];
        }

        if (*(a1 + 56) == 1)
        {
          [(BCMutableAssetDetail *)v19 setIsFinished:1];
          [(BCMutableAssetDetail *)v19 setNotFinished:0];
          v21 = [(BCMutableAssetDetail *)v19 dateFinished];

          if (!v21)
          {
            v22 = [(BCMutableAssetDetail *)v19 lastOpenDate];
            if (v22)
            {
              [(BCMutableAssetDetail *)v19 setDateFinished:v22];
            }

            else
            {
              v23 = +[NSDate date];
              [(BCMutableAssetDetail *)v19 setDateFinished:v23];
            }
          }
        }

        else
        {
          [(BCMutableAssetDetail *)v19 setIsFinished:0];
          [(BCMutableAssetDetail *)v19 setNotFinished:1];
          [(BCMutableAssetDetail *)v19 setDateFinished:0];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000829E4;
  v25[3] = &unk_1002417E8;
  v24 = *(a1 + 40);
  v26 = *(a1 + 48);
  [v24 setAssetDetails:v4 completion:v25];
}

void sub_1000829E4(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a2);
    v3 = v4;
  }
}

void sub_100082B20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = sub_10000DD18(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C46D0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100082C94(uint64_t a1, uint64_t a2)
{
  +[NSTimeZone resetSystemTimeZone];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:a2 userInfo:0];
}

uint64_t sub_100082D48()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088824(v2, qword_10026EB78);
  sub_100083274(v0, qword_10026EB78);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1001C4AD8();
  sub_1001C4A98();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100082EA4()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088824(v2, qword_10026EB98);
  sub_100083274(v0, qword_10026EB98);
  if (qword_10026EB70 != -1)
  {
    swift_once();
  }

  v5 = sub_100083274(v0, qword_10026EB78);
  (*(v1 + 16))(v4, v5, v0);
  sub_1001C4AA8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t CRDTModelSyncMapper.__allocating_init()()
{
  v0 = swift_allocObject();
  CRDTModelSyncMapper.init()();
  return v0;
}

uint64_t CRDTModelSyncMapper.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  if (qword_10026EB90 != -1)
  {
    swift_once();
  }

  v3 = sub_1001C4B28();
  sub_100083274(v3, qword_10026EB98);
  sub_1001C4A88(v4);
  v6 = v5;
  v20 = 0;
  v7 = [v2 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v20];

  if (v7)
  {
    v8 = v20;
  }

  else
  {
    v9 = v20;
    sub_1001C4A28();

    swift_willThrow();
    v10 = sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v11 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001F0660;
    v13 = sub_1001C4A58();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_100084570();
    *(v12 + 64) = v16;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    swift_getErrorValue();
    v17 = sub_1001C6D98();
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;
    sub_1001C5118(v10, &_mh_execute_header, v11, "CRDTModelSyncMapper unable to create CKAsset local cache at %@ error=%@", 71, 2, v12);
  }

  return v1;
}

uint64_t sub_100083274(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000832AC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1001C6068();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_1001C6058();
  v10 = sub_1001C6028();
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  if (v12 >> 60 == 15)
  {
LABEL_13:
    v18 = sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      v20 = v18;
      swift_once();
      v18 = v20;
    }

    sub_1001C5118(v18, &_mh_execute_header, qword_10026F958, "CRDTModelSyncMapper: could not produce asset filename due to bad data", 69, 2, _swiftEmptyArrayStorage);
    v19 = sub_1001C4B28();
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_12:
      sub_1000887BC(v10, v12);
      goto LABEL_13;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  isa = sub_1001C4B98().super.isa;
  v15 = [(objc_class *)isa bu_md5];

  sub_1001C6018();
  if (qword_10026EB90 != -1)
  {
    swift_once();
  }

  v16 = sub_1001C4B28();
  sub_100083274(v16, qword_10026EB98);
  sub_1001C4AA8();
  sub_1000887BC(v10, v12);

  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

id sub_1000835F4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v5 = a3;

  v6 = a4(v5);

  return v6;
}

uint64_t sub_10008366C()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v0 - 8);
  v56 = &v53 - v1;
  v2 = sub_1001C4988();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C4B28();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = objc_opt_self();
  v20 = [v19 books];
  v21 = [v20 containerURL];

  sub_1001C4AD8();
  v62 = v18;
  sub_1001C4AA8();
  v55 = v5;
  v22 = *(v5 + 8);
  v57 = v5 + 8;
  v22(v16, v4);
  v23 = [v19 books];
  v24 = [v23 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v22(v10, v4);
  *&v64 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  *&v64 = sub_1001C6098();
  *(&v64 + 1) = v25;

  v67._countAndFlagsBits = 0x2E747865746E6F43;
  v67._object = 0xEA00000000006264;
  sub_1001C6138(v67);

  v63 = v13;
  sub_1001C4AA8();

  v59 = v22;
  v22(v16, v4);
  v26 = sub_1001C6578();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v27 = qword_10026F958;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001F0670;
  v29 = sub_1001C4A58();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  v32 = sub_100084570();
  *(v28 + 64) = v32;
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  v33 = v27;
  sub_1001C5118(v26, &_mh_execute_header, v27, "CRDTModelContextStore storeDirectory = %@", 41, 2, v28);

  v34 = v58;
  sub_1001C4978();
  sub_1001C4968();
  v35 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v36);
  v38 = v37;
  *&v64 = 0;
  LODWORD(v31) = [v35 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:&v64];

  if (v31)
  {
    v39 = v64;
    sub_1001C4A78();
    sub_1001C5E38();
    v40 = v55;
    (*(v55 + 16))(v54, v63, v4);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    (*(v40 + 56))(v56, 1, 1, v4);
    v51 = sub_1001C5E28();
    (*(v60 + 8))(v34, v61);
    v52 = v63;
  }

  else
  {
    v41 = v64;
    sub_1001C4A28();

    swift_willThrow();
    v42 = sub_1001C6598();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001F0660;
    v44 = v63;
    v45 = sub_1001C4A58();
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v32;
    *(v43 + 32) = v45;
    *(v43 + 40) = v46;
    swift_getErrorValue();
    v47 = sub_1001C6D98();
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = v32;
    *(v43 + 72) = v47;
    *(v43 + 80) = v48;
    sub_1001C5118(v42, &_mh_execute_header, v33, "CRDTModelContextStore unable to create CRContext at %@ error=%@", 63, 2, v43);

    sub_1001C5E38();
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v51 = sub_1001C5E18();

    sub_10008875C(&v64, &unk_10026EF20, &unk_1001F1FB0);
    (*(v60 + 8))(v34, v61);
    v52 = v44;
  }

  v49 = v59;
  v59(v52, v4);
  v49(v62, v4);
  return v51;
}

uint64_t variable initialization expression of ReadingHistoryServiceManager._readingHistoryServiceAccessQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryServiceManager.outstandingTransactionCountAccessQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

double variable initialization expression of ReadingHistoryDataStore.updateCollector@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of ReadingHistoryDataStore.queue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t sub_100084528(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100084570()
{
  result = qword_10026ECB0;
  if (!qword_10026ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026ECB0);
  }

  return result;
}

uint64_t variable initialization expression of CRDTModelSyncManager.logger(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001C69C8(16);

  type metadata accessor for CRDTModelSyncManager(0, a1, a2, a3);
  v8._countAndFlagsBits = sub_1000BCAD0();
  sub_1001C6138(v8);

  return sub_1001C5138();
}

uint64_t variable initialization expression of CRDTModelSyncManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C5688();
  __chkstk_darwin(v5 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

id variable initialization expression of ReadingHistoryService.historyDefaults()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t variable initialization expression of ReadingHistoryService.accessQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryService.modelReadyQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ReadingHistoryService.readingHistoryUpdatePendingSaveAccessLock()
{
  sub_100084528(&qword_100270A70, &unk_1001F06A0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of CRDTModelCloudSyncController._localSyncManagerAccessQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelCloudSyncController.localModelSyncVersionTransactionQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelCloudSyncController.waitForlocalModelSyncVersion@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRDTModelSyncVersion(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of BDSSyncEnginePipeline.workQueue()
{
  v8 = sub_1001C6668();
  v0 = *(v8 - 8);
  __chkstk_darwin(v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001C6638();
  __chkstk_darwin(v3);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  v7[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v7[0] = "SyncVersionTransaction";
  v5 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_1001C5668();
  v9 = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of BDSSyncEnginePipeline.stateQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C6638();
  __chkstk_darwin(v5 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C6628();
  sub_1001C5668();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1001C66A8();
}

void *variable initialization expression of BDSSyncEnginePipeline.currentModifyBatchResponse()
{
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  result = swift_allocObject();
  result[2] = _swiftEmptyArrayStorage;
  result[3] = _swiftEmptyArrayStorage;
  result[4] = _swiftEmptyArrayStorage;
  result[5] = _swiftEmptyArrayStorage;
  result[6] = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t variable initialization expression of ModelState.revisionInfo@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C5688();
  __chkstk_darwin(v5 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.ioQueue()
{
  v7 = sub_1001C6668();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001C6638();
  __chkstk_darwin(v3);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v8 = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1001C66A8();
}

void *variable initialization expression of CRDTModelLocalFileManager.observableTransaction()
{
  v0 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  type metadata accessor for ObservableTransaction(0);
  v1 = swift_allocObject();

  return sub_1000879B0(0xD000000000000035, 0x80000001001FDE40, v0, v1);
}

uint64_t variable initialization expression of CRDTModelLocalFileManager.logger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C69C8(21);

  v8._countAndFlagsBits = (*(a4 + 8))(a1, a4);
  sub_1001C6138(v8);

  return sub_1001C5138();
}

unint64_t variable initialization expression of CloudSecureUserDataMigrator.persistentStoreOptions()
{
  sub_100084528(&qword_10026ECE0, &unk_1001F5960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0680;
  *(inited + 32) = sub_1001C6018();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1001C6018();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  *(inited + 80) = sub_1001C6018();
  *(inited + 88) = v3;
  *(inited + 96) = 1;
  v4 = sub_100119680(inited);
  swift_setDeallocating();
  sub_100084528(&qword_10026ECE8, &unk_1001F06B0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1000860E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ObservableContainer.accessQueue()
{
  v7 = sub_1001C6668();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001C6638();
  __chkstk_darwin(v3);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v8 = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ObservableContainer.callQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C5688();
  __chkstk_darwin(v5 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of ObservableContainer.observations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ObservableContainer.Event(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return sub_1001C5EC8();
}

uint64_t variable initialization expression of ObservableTransaction.observableTransactionQueue()
{
  v0 = sub_1001C6638();
  __chkstk_darwin(v0);
  v1 = sub_1001C5688();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001C6668();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_1001C5668();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelFileSyncManager.modelQueue()
{
  v0 = sub_1001C6668();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001C6638();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1001C5688();
  __chkstk_darwin(v5 - 8);
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  sub_1001C6628();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  return sub_1001C66A8();
}

uint64_t variable initialization expression of CRDTModelFileSyncManager.logger(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001C69C8(20);

  v8._countAndFlagsBits = (*(a4 + 8))(a1, a4);
  sub_1001C6138(v8);

  return sub_1001C5138();
}

uint64_t sub_100086BB4(uint64_t *a1, uint64_t *a2)
{
  sub_100084528(a1, a2);
  swift_allocObject();
  return sub_1001C5188();
}

uint64_t variable initialization expression of BDSSyncEngine.queue()
{
  v7 = sub_1001C6668();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001C6638();
  __chkstk_darwin(v3);
  v4 = sub_1001C5688();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5668();
  v8 = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return sub_1001C66A8();
}

id variable initialization expression of BDSSyncEngine.saltObservers()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id variable initialization expression of BDSSyncEngine.zoneLock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_100086FF0(uint64_t *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  sub_100084528(a1, a2);
  sub_1000885F4(a3, a1, a2, &protocol conformance descriptor for Anonymous<A>);
  sub_1000885F4(a4, a1, a2, &protocol conformance descriptor for Anonymous<A>);

  return sub_1001C5B58();
}

uint64_t variable initialization expression of ReadingHistoryModel.streakRecords()
{
  sub_1001C4CA8();
  sub_10008863C(&unk_10026F440, &type metadata accessor for Date, &protocol conformance descriptor for Date);

  return sub_1001C5B58();
}

uint64_t sub_100087158(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE8, type metadata accessor for CKError, &unk_1001F0AA4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000871C4(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE8, type metadata accessor for CKError, &unk_1001F0AA4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100087234(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000872A8()
{
  sub_1001C6018();
  v0 = sub_1001C61C8();

  return v0;
}

uint64_t sub_1000872E4(uint64_t a1)
{
  sub_1001C6018();
  sub_1001C60E8();
}

Swift::Int sub_100087338(uint64_t a1)
{
  sub_1001C6018();
  sub_1001C6DF8();
  sub_1001C60E8();
  v1 = sub_1001C6E28();

  return v1;
}

uint64_t sub_1000873AC(uint64_t a1, id *a2)
{
  result = sub_1001C5FF8();
  *a2 = 0;
  return result;
}

uint64_t sub_100087424(uint64_t a1, id *a2)
{
  v3 = sub_1001C6008();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000874A4@<X0>(uint64_t *a2@<X8>)
{
  sub_1001C6018();
  v3 = sub_1001C5FE8();

  *a2 = v3;
  return result;
}

uint64_t sub_1000874F8(uint64_t a1)
{
  sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);

  return sub_1001C4A08();
}

uint64_t sub_100087564(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000875D0(void *a1, uint64_t a2)
{
  v4 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100087684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100087700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001C6DF8();
  sub_1001C5F98();
  return sub_1001C6E28();
}

uint64_t sub_100087760(void *a1, uint64_t *a2)
{
  v2 = sub_1001C6018();
  v4 = v3;
  if (v2 == sub_1001C6018() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1001C6D08();
  }

  return v7 & 1;
}

uint64_t sub_1000877FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008863C(&qword_10026EFE0, type metadata accessor for CKError, &unk_1001F0B8C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100087880@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1001C5FE8();

  *a2 = v3;
  return result;
}

uint64_t sub_1000878C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001C6018();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000878F4(uint64_t a1)
{
  v2 = sub_10008863C(&qword_10026F020, type metadata accessor for FileAttributeKey, &unk_1001F0BF8);
  v3 = sub_10008863C(&qword_10026F028, type metadata accessor for FileAttributeKey, &unk_1001F0904);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_1000879B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v5 = sub_1001C6638();
  __chkstk_darwin(v5);
  v6 = sub_1001C5688();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1001C6668();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v13[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  sub_1001C5668();
  v17 = _swiftEmptyArrayStorage;
  sub_10008863C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  a4[5] = sub_1001C66A8();
  sub_1001C5138();
  v11 = v15;
  a4[2] = v14;
  a4[3] = v11;
  a4[6] = v16;
  return a4;
}

char *_s14bookdatastored19CRDTModelSyncMapperC9cloudData4fromSo014BCMutableCloudF0CSgSo8CKRecordC_tF_0(void *a1)
{
  v2 = sub_1001C4CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_1001C6768();
  if (!v13)
  {
    goto LABEL_10;
  }

  v39 = v13;
  sub_100084528(&qword_10026EF90, &qword_1001F0778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = v38;
  v36 = v37;
  if (!sub_1001C6768())
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = [v15 fileURL];
    if (v16)
    {
      v35 = v14;
      v17 = v16;
      sub_1001C4AD8();

      (*(v7 + 32))(v12, v10, v6);
      v20 = sub_1001C4B48();
      v34 = v21;
      v22 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) init];
      [v22 setSystemFields:a1];
      v23 = [a1 modificationDate];
      if (v23)
      {
        v24 = v23;
        sub_1001C4C78();

        v25.super.isa = sub_1001C4C38().super.isa;
        (*(v3 + 8))(v5, v2);
      }

      else
      {
        v25.super.isa = 0;
      }

      [v22 setModificationDate:v25.super.isa];

      swift_unknownObjectRelease();
      (*(v7 + 8))(v12, v6);
      v26 = &v22[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type];
      v27 = v35;
      *v26 = v36;
      *(v26 + 1) = v27;

      v28 = &v22[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v29 = *&v22[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
      v30 = *&v22[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
      v31 = v34;
      *v28 = v20;
      v28[1] = v31;
      sub_1000887BC(v29, v30);

      return v22;
    }

    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_10:
  v18 = sub_1001C6598();
  if (qword_10026EBC8 != -1)
  {
    v32 = v18;
    swift_once();
    v18 = v32;
  }

  sub_1001C5118(v18, &_mh_execute_header, qword_10026F958, "CRDTModelSyncMapper: error mapping CKRecord into BCMutableCloudData", 67, 2, _swiftEmptyArrayStorage);
  return 0;
}

id _s14bookdatastored19CRDTModelSyncMapperC6record4fromSo8CKRecordCSgSo18BCMutableCloudDataC_tF_0(void *a1)
{
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - v3;
  v5 = sub_1001C4B28();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 systemFields];
  if (v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10 && a1)
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      v13 = a1;
      v14 = [v13 identifier];
      if (v14)
      {
        v15 = v14;
        [objc_msgSend(v9 "encryptedValuesByKey")];

        swift_unknownObjectRelease();
      }

      v16 = (*(v11 + 8))(ObjectType, v11);
      v29[12] = &type metadata for String;
      v29[13] = &protocol witness table for String;
      v29[9] = v16;
      v29[10] = v17;
      sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
      sub_1001C66D8();
      type metadata accessor for CRDTModelSyncMapper();
      sub_1000832AC(v11, v4);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {

        sub_10008875C(v4, &unk_10026EF10, &unk_1001F1FA0);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v19 = (*(v11 + 16))(ObjectType, v11);
        if (v20 >> 60 == 15)
        {
          (*(v6 + 8))(v8, v5);
        }

        else
        {
          v21 = v19;
          v22 = v20;
          sub_1001C4BB8();
          v23 = objc_allocWithZone(CKAsset);
          sub_1001C4A88(v24);
          v26 = v25;
          v27 = [v23 initWithFileURL:v25];

          v28 = v27;
          sub_1001C6778();
          sub_1000887BC(v21, v22);

          (*(v6 + 8))(v8, v5);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

uint64_t sub_1000885AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000885F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008863C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000886B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000886D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100088714(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10008875C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100084528(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000887BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000887D0(result, a2);
  }

  return result;
}

uint64_t sub_1000887D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *sub_100088824(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000888D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100088BF8()
{
  result = qword_10026F010;
  if (!qword_10026F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F010);
  }

  return result;
}

uint64_t sub_100088CB4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *(_s21PriceDropNotificationVMa(0) - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100088D94, 0, 0);
}

uint64_t sub_100088D94()
{
  v1 = *(v0 + 56);
  *(v0 + 112) = *(*(v0 + 64) + 32);
  sub_100089978();
  *(v0 + 120) = v2;
  *(v0 + 204) = v3;
  v4 = *(v1 + 16);
  *(v0 + 128) = v4;
  if (v4)
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);
    sub_1000D3834(0, v4, 0);
    v7 = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = *(v0 + 104);
      sub_10008E644(v7, v9);
      v10 = *v9;
      sub_10008E6A8(v9);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000D3834((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v7 += v8;
      --v4;
    }

    while (v4);
  }

  *(v0 + 136) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_100088F1C;

  return sub_10008A1E8(_swiftEmptyArrayStorage);
}

uint64_t sub_100088F1C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_100089074;
  v4 = *(v1 + 136);

  return sub_10008A978(v4);
}

uint64_t sub_100089074()
{

  return _swift_task_switch(sub_10008918C, 0, 0);
}

uint64_t sub_10008918C()
{
  v32 = v0;
  *(v0 + 32) = *(v0 + 56);
  sub_100084528(&qword_10026F268, &qword_1001F0C80);
  sub_1000885F4(&qword_10026F270, &qword_10026F268, &qword_1001F0C80, &protocol conformance descriptor for [A]);
  if (sub_1001C6458())
  {
    if (*(v0 + 204))
    {
      v1 = *(v0 + 56);
    }

    else
    {
      if (*(v0 + 128))
      {
        v2 = 0;
        v3 = *(v0 + 72);
        v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v5 = *(v3 + 72);
        v6 = *(v0 + 56) + v4;
        v1 = _swiftEmptyArrayStorage;
        do
        {
          v7 = *(v0 + 120);
          v8 = *(v0 + 96);
          sub_10008E644(v6, v8);
          v9 = *(v0 + 96);
          if (v7 >= *v8)
          {
            sub_10008E6A8(v9);
          }

          else
          {
            sub_10008E758(v9, *(v0 + 88));
            v31[0] = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D3854(0, v1[2] + 1, 1);
              v1 = v31[0];
            }

            v11 = v1[2];
            v10 = v1[3];
            if (v11 >= v10 >> 1)
            {
              sub_1000D3854((v10 > 1), v11 + 1, 1);
              v1 = v31[0];
            }

            v12 = *(v0 + 88);
            v1[2] = v11 + 1;
            sub_10008E758(v12, v1 + v4 + v11 * v5);
          }

          ++v2;
          v6 += v5;
        }

        while (v2 != *(v0 + 128));
      }

      else
      {
        v1 = _swiftEmptyArrayStorage;
      }

      if (!v1[2])
      {

        if (qword_10026EBB8 != -1)
        {
          swift_once();
        }

        v21 = sub_1001C5148();
        sub_100083274(v21, qword_100281898);
        v22 = sub_1001C5128();
        v23 = sub_1001C65B8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = *(v0 + 120);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v31[0] = v26;
          *v25 = 136446210;
          *(v0 + 48) = v24;
          sub_10008E704();
          v27 = sub_1001C61D8();
          v29 = sub_1001874E8(v27, v28, v31);

          *(v25 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v22, v23, "[UserNotifier] Found matching last-notification ID: %{public}s", v25, 0xCu);
          sub_10008E7BC(v26);
        }

        goto LABEL_26;
      }
    }

    v31[0] = v1;

    sub_10008D5BC(v31);

    v13 = v31[0];
    *(v0 + 160) = v31[0];
    v14 = *(v13 + 16);
    *(v0 + 168) = v14;
    if (v14)
    {
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(v16 + 80);
      *(v0 + 200) = v17;
      *(v0 + 176) = *(v16 + 72);
      *(v0 + 184) = 0;
      sub_10008E644(v13 + ((v17 + 32) & ~v17), v15);
      v18 = swift_task_alloc();
      *(v0 + 192) = v18;
      *v18 = v0;
      v18[1] = sub_1000895FC;
      v19 = *(v0 + 80);

      return sub_10008B108(v19);
    }
  }

LABEL_26:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000895FC(char a1)
{
  *(*v1 + 205) = a1;

  return _swift_task_switch(sub_1000896FC, 0, 0);
}

uint64_t sub_1000896FC(uint64_t a1)
{
  if (*(v1 + 205) == 1)
  {
    v2 = *(v1 + 112);
    *(v1 + 40) = **(v1 + 80);
    sub_10008E704();
    *(v1 + 16) = sub_1001C61D8();
    *(v1 + 24) = v3;
    v4 = sub_1001C6D48();
    v5 = sub_1001C5FE8();
    [v2 setObject:v4 forKey:v5];

    swift_unknownObjectRelease();
  }

  v6 = *(v1 + 168);
  v7 = *(v1 + 184) + 1;
  sub_10008E6A8(*(v1 + 80));
  if (v7 == v6)
  {

    v8 = *(v1 + 8);

    return v8();
  }

  else
  {
    v10 = *(v1 + 176);
    v11 = *(v1 + 184) + 1;
    *(v1 + 184) = v11;
    sub_10008E644(*(v1 + 160) + ((*(v1 + 200) + 32) & ~*(v1 + 200)) + v10 * v11, *(v1 + 80));
    v12 = swift_task_alloc();
    *(v1 + 192) = v12;
    *v12 = v1;
    v12[1] = sub_1000895FC;
    v13 = *(v1 + 80);

    return sub_10008B108(v13);
  }
}

uint64_t sub_1000898E4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100089948()
{
  result = sub_1001C6018();
  *&xmmword_10026F1B0 = result;
  *(&xmmword_10026F1B0 + 1) = v1;
  return result;
}

void sub_100089978()
{
  v1 = sub_1001C5FE8();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = sub_1001C6018();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v8 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {

        sub_1000D7F60(v3, v5, 36);
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v40[0] = v3;
        v40[1] = v5 & 0xFFFFFFFFFFFFFFLL;
        if (v3 == 43)
        {
          if (v6)
          {
            if (--v6)
            {
              v26 = 0;
              v27 = v40 + 1;
              while (1)
              {
                v28 = *v27;
                v29 = v28 - 48;
                if ((v28 - 48) >= 0xA)
                {
                  if ((v28 - 65) < 0x1A)
                  {
                    v29 = v28 - 55;
                  }

                  else
                  {
                    if ((v28 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v29 = v28 - 87;
                  }
                }

                v30 = 36 * v26;
                if ((v26 * 36) >> 64 != (36 * v26) >> 63)
                {
                  break;
                }

                v26 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v27;
                if (!--v6)
                {
                  goto LABEL_89;
                }
              }
            }

            goto LABEL_88;
          }

          goto LABEL_97;
        }

        if (v3 != 45)
        {
          if (v6)
          {
            v35 = 0;
            v36 = v40;
            while (1)
            {
              v37 = *v36;
              v38 = v37 - 48;
              if ((v37 - 48) >= 0xA)
              {
                if ((v37 - 65) < 0x1A)
                {
                  v38 = v37 - 55;
                }

                else
                {
                  if ((v37 - 97) > 0x19)
                  {
                    goto LABEL_88;
                  }

                  v38 = v37 - 87;
                }
              }

              v39 = 36 * v35;
              if ((v35 * 36) >> 64 != (36 * v35) >> 63)
              {
                break;
              }

              v35 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v36;
              if (!--v6)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_88;
        }

        if (v6)
        {
          if (--v6)
          {
            v16 = 0;
            v17 = v40 + 1;
            while (1)
            {
              v18 = *v17;
              v19 = v18 - 48;
              if ((v18 - 48) >= 0xA)
              {
                if ((v18 - 65) < 0x1A)
                {
                  v19 = v18 - 55;
                }

                else
                {
                  if ((v18 - 97) > 0x19)
                  {
                    goto LABEL_88;
                  }

                  v19 = v18 - 87;
                }
              }

              v20 = 36 * v16;
              if ((v16 * 36) >> 64 != (36 * v16) >> 63)
              {
                break;
              }

              v16 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v17;
              if (!--v6)
              {
                goto LABEL_89;
              }
            }
          }

          goto LABEL_88;
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_1001C6A38();
        }

        v10 = *v9;
        if (v10 == 43)
        {
          if (v7 >= 1)
          {
            v6 = v7 - 1;
            if (v7 != 1)
            {
              if (v9)
              {
                v21 = 0;
                v22 = v9 + 1;
                while (1)
                {
                  v23 = *v22;
                  v24 = v23 - 48;
                  if ((v23 - 48) >= 0xA)
                  {
                    if ((v23 - 65) < 0x1A)
                    {
                      v24 = v23 - 55;
                    }

                    else
                    {
                      if ((v23 - 97) > 0x19)
                      {
                        goto LABEL_88;
                      }

                      v24 = v23 - 87;
                    }
                  }

                  v25 = 36 * v21;
                  if ((v21 * 36) >> 64 != (36 * v21) >> 63)
                  {
                    goto LABEL_88;
                  }

                  v21 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_88;
                  }

                  ++v22;
                  if (!--v6)
                  {
                    goto LABEL_89;
                  }
                }
              }

              goto LABEL_76;
            }

            goto LABEL_88;
          }

          goto LABEL_96;
        }

        if (v10 != 45)
        {
          if (v7)
          {
            if (v9)
            {
              v31 = 0;
              while (1)
              {
                v32 = *v9;
                v33 = v32 - 48;
                if ((v32 - 48) >= 0xA)
                {
                  if ((v32 - 65) < 0x1A)
                  {
                    v33 = v32 - 55;
                  }

                  else
                  {
                    if ((v32 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v33 = v32 - 87;
                  }
                }

                v34 = 36 * v31;
                if ((v31 * 36) >> 64 != (36 * v31) >> 63)
                {
                  goto LABEL_88;
                }

                v31 = v34 + v33;
                if (__OFADD__(v34, v33))
                {
                  goto LABEL_88;
                }

                ++v9;
                if (!--v7)
                {
                  LOBYTE(v6) = 0;
                  goto LABEL_89;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_88:
          LOBYTE(v6) = 1;
          goto LABEL_89;
        }

        if (v7 >= 1)
        {
          v6 = v7 - 1;
          if (v7 != 1)
          {
            if (v9)
            {
              v11 = 0;
              v12 = v9 + 1;
              while (1)
              {
                v13 = *v12;
                v14 = v13 - 48;
                if ((v13 - 48) >= 0xA)
                {
                  if ((v13 - 65) < 0x1A)
                  {
                    v14 = v13 - 55;
                  }

                  else
                  {
                    if ((v13 - 97) > 0x19)
                    {
                      goto LABEL_88;
                    }

                    v14 = v13 - 87;
                  }
                }

                v15 = 36 * v11;
                if ((v11 * 36) >> 64 != (36 * v11) >> 63)
                {
                  goto LABEL_88;
                }

                v11 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_88;
                }

                ++v12;
                if (!--v6)
                {
                  goto LABEL_89;
                }
              }
            }

LABEL_76:
            LOBYTE(v6) = 0;
LABEL_89:
            v41 = v6;

            return;
          }

          goto LABEL_88;
        }

        __break(1u);
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_100089DC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_1001C6468();
  if (!v19)
  {
    return sub_1001C62C8();
  }

  v41 = v19;
  v45 = sub_1001C6AB8();
  v32 = sub_1001C6AC8();
  sub_1001C6A68(v41);
  result = sub_1001C6448();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1001C64A8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1001C6AA8();
      result = sub_1001C6498();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008A1E8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *(_s21PriceDropNotificationVMa(0) - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008A2A4, 0, 0);
}

uint64_t sub_10008A2A4()
{
  v1 = v0[15];
  v0[18] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[19] = v2;
  ObjectType = swift_getObjectType();
  v0[20] = ObjectType;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10008A364;

  return sub_10008BB8C(ObjectType, v2);
}

uint64_t sub_10008A364(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10008A464, 0, 0);
}

char *sub_10008A464()
{
  v53 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v52[0] = _swiftEmptyArrayStorage;
    sub_1000D3834(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 136);
      sub_10008E644(v5, v7);
      v8 = *v7;
      sub_10008E6A8(v7);
      v52[0] = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_1000D3834((v9 > 1), v10 + 1, 1);
        v4 = v52[0];
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v11 = *(v0 + 112);

  v12 = sub_100102A08(v52, v4, v11);
  v50 = v14;
  v51 = v13;
  v16 = v15;

  v17 = v52[1];
  v18 = v52[2];
  v19 = v52[3];
  *(v0 + 16) = v52[0];
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;
  *(v0 + 40) = v19;
  v49 = sub_100084528(&qword_10026F288, &qword_1001F0CB0);
  v20 = sub_1000885F4(&qword_10026F290, &qword_10026F288, &qword_1001F0CB0, &protocol conformance descriptor for ArraySlice<A>);
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1001C5148();
    sub_100083274(v21, qword_100281898);
    swift_unknownObjectRetain();
    v22 = sub_1001C5128();
    v23 = sub_1001C6588();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v46 = v20;
      v24 = swift_slowAlloc();
      v47 = v16;
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136446210;
      v26 = sub_1001C6898();
      v28 = sub_1001874E8(v26, v27, v52);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[UserNotifier] Keeping existing requested notification(s): %{public}s", v24, 0xCu);
      sub_10008E7BC(v25);
      v16 = v47;

      v20 = v46;
    }
  }

  v29 = v50;
  *(v0 + 48) = v12;
  *(v0 + 56) = v51;
  *(v0 + 64) = v16;
  *(v0 + 72) = v50;
  v30 = v49;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1001C5148();
    sub_100083274(v31, qword_100281898);
    swift_unknownObjectRetain();
    v32 = sub_1001C5128();
    v33 = sub_1001C65B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      result = swift_slowAlloc();
      v52[0] = result;
      *v34 = 134218242;
      if (__OFSUB__(v50 >> 1, v16))
      {
        __break(1u);
        return result;
      }

      *(v34 + 4) = (v50 >> 1) - v16;
      v48 = result;
      swift_unknownObjectRelease();
      *(v34 + 12) = 2082;
      v36 = sub_1001C6898();
      v38 = v16;
      v39 = sub_1001874E8(v36, v37, v52);
      v30 = v49;

      *(v34 + 14) = v39;
      v16 = v38;
      v29 = v50;
      _os_log_impl(&_mh_execute_header, v32, v33, "[UserNotifier] Removing %ld outdated requested notification(s): %{public}s", v34, 0x16u);
      sub_10008E7BC(v48);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    *(v0 + 80) = v12;
    *(v0 + 88) = v51;
    *(v0 + 96) = v16;
    *(v0 + 104) = v29;
    sub_10008BE38(v0 + 80, v40, v30, v41, v20, v42, v43, v44);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_10008A978(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *(_s21PriceDropNotificationVMa(0) - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008AA34, 0, 0);
}

uint64_t sub_10008AA34()
{
  v1 = v0[15];
  v0[18] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[19] = v2;
  ObjectType = swift_getObjectType();
  v0[20] = ObjectType;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_10008AAF4;

  return sub_10008BF4C(ObjectType, v2);
}

uint64_t sub_10008AAF4(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10008ABF4, 0, 0);
}

char *sub_10008ABF4()
{
  v53 = v0;
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v52[0] = _swiftEmptyArrayStorage;
    sub_1000D3834(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 136);
      sub_10008E644(v5, v7);
      v8 = *v7;
      sub_10008E6A8(v7);
      v52[0] = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_1000D3834((v9 > 1), v10 + 1, 1);
        v4 = v52[0];
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = _swiftEmptyArrayStorage;
  }

  v11 = *(v0 + 112);

  v12 = sub_100102A08(v52, v4, v11);
  v50 = v14;
  v51 = v13;
  v16 = v15;

  v17 = v52[1];
  v18 = v52[2];
  v19 = v52[3];
  *(v0 + 16) = v52[0];
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;
  *(v0 + 40) = v19;
  v49 = sub_100084528(&qword_10026F288, &qword_1001F0CB0);
  v20 = sub_1000885F4(&qword_10026F290, &qword_10026F288, &qword_1001F0CB0, &protocol conformance descriptor for ArraySlice<A>);
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1001C5148();
    sub_100083274(v21, qword_100281898);
    swift_unknownObjectRetain();
    v22 = sub_1001C5128();
    v23 = sub_1001C6588();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      v46 = v20;
      v24 = swift_slowAlloc();
      v47 = v16;
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136446210;
      v26 = sub_1001C6898();
      v28 = sub_1001874E8(v26, v27, v52);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[UserNotifier] Keeping existing delivered notification(s): %{public}s", v24, 0xCu);
      sub_10008E7BC(v25);
      v16 = v47;

      v20 = v46;
    }
  }

  v29 = v50;
  *(v0 + 48) = v12;
  *(v0 + 56) = v51;
  *(v0 + 64) = v16;
  *(v0 + 72) = v50;
  v30 = v49;
  if (sub_1001C6458())
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1001C5148();
    sub_100083274(v31, qword_100281898);
    swift_unknownObjectRetain();
    v32 = sub_1001C5128();
    v33 = sub_1001C65B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      result = swift_slowAlloc();
      v52[0] = result;
      *v34 = 134218242;
      if (__OFSUB__(v50 >> 1, v16))
      {
        __break(1u);
        return result;
      }

      *(v34 + 4) = (v50 >> 1) - v16;
      v48 = result;
      swift_unknownObjectRelease();
      *(v34 + 12) = 2082;
      v36 = sub_1001C6898();
      v38 = v16;
      v39 = sub_1001874E8(v36, v37, v52);
      v30 = v49;

      *(v34 + 14) = v39;
      v16 = v38;
      v29 = v50;
      _os_log_impl(&_mh_execute_header, v32, v33, "[UserNotifier] Removing %ld outdated delivered notification(s): %{public}s", v34, 0x16u);
      sub_10008E7BC(v48);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    *(v0 + 80) = v12;
    *(v0 + 88) = v51;
    *(v0 + 96) = v16;
    *(v0 + 104) = v29;
    sub_10008C3FC(v0 + 80, v40, v30, v41, v20, v42, v43, v44);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_10008B108(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  _s21PriceDropNotificationVMa(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10008B1B0, 0, 0);
}

uint64_t sub_10008B1B0()
{
  v1 = v0[6];
  v0[10] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[11] = v2;
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10008B270;

  return sub_10008C510(ObjectType, v2);
}

uint64_t sub_10008B270(char a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_10008B370, 0, 0);
}

uint64_t sub_10008B370()
{
  v21 = v0;
  if (*(v0 + 128) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_10008B5F8;
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 40);

    return sub_10008C750(v4, v2, v3);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = sub_1001C5148();
    sub_100083274(v8, qword_100281898);
    sub_10008E644(v7, v6);
    v9 = sub_1001C5128();
    v10 = sub_1001C65B8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136446210;
      *(v0 + 16) = *v12;
      sub_10008E704();
      v15 = sub_1001C61D8();
      v17 = v16;
      sub_10008E6A8(v12);
      v18 = sub_1001874E8(v15, v17, &v20);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "[UserNotifier] Unable to request notification: %{public}s, not authorized", v13, 0xCu);
      sub_10008E7BC(v14);
    }

    else
    {

      sub_10008E6A8(v12);
    }

    v19 = *(v0 + 8);

    return v19(0);
  }
}

uint64_t sub_10008B5F8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10008B908;
  }

  else
  {
    v2 = sub_10008B70C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008B70C()
{
  v17 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_1001C5148();
  sub_100083274(v3, qword_100281898);
  sub_10008E644(v2, v1);
  v4 = sub_1001C5128();
  v5 = sub_1001C65B8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[4] = *v7;
    sub_10008E704();
    v10 = sub_1001C61D8();
    v12 = v11;
    sub_10008E6A8(v7);
    v13 = sub_1001874E8(v10, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[UserNotifier] Requested notification: %{public}s", v8, 0xCu);
    sub_10008E7BC(v9);
  }

  else
  {

    sub_10008E6A8(v7);
  }

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_10008B908()
{
  v19 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_1001C5148();
  sub_100083274(v3, qword_100281898);
  sub_10008E644(v2, v1);
  swift_errorRetain();
  v4 = sub_1001C5128();
  v5 = sub_1001C6598();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    v0[3] = *v7;
    sub_10008E704();
    v11 = sub_1001C61D8();
    v13 = v12;
    sub_10008E6A8(v7);
    v14 = sub_1001874E8(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[UserNotifier] Unable to request notification: %{public}s, error: %@", v8, 0x16u);
    sub_10008875C(v9, &unk_1002718E0, &qword_1001F31F0);

    sub_10008E7BC(v10);
  }

  else
  {

    sub_10008E6A8(v7);
  }

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_10008BB8C(uint64_t a1, uint64_t a2)
{
  sub_100084528(&qword_10026F2A8, &qword_1001F0CC0);
  v2[28] = swift_task_alloc();
  v5 = _s21PriceDropNotificationVMa(0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v8 = (*(a2 + 8) + **(a2 + 8));
  v6 = swift_task_alloc();
  v2[32] = v6;
  *v6 = v2;
  v6[1] = sub_10008BD38;

  return v8(a1, a2);
}

uint64_t sub_10008BD38(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10008EC88, 0, 0);
}

uint64_t sub_10008BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100089DC8(sub_10008EC8C, 0, a3, &type metadata for UserNotification.ID, &type metadata for Never, a5, &protocol witness table for Never, a8);
  v10 = *(a4 + 16);
  v11 = sub_100084528(&qword_10026F298, &qword_1001F0CB8);
  v12 = sub_1000885F4(&qword_10026F2A0, &qword_10026F298, &qword_1001F0CB8, &protocol conformance descriptor for [A]);
  v10(&v14, v11, v12, a2, a4);
}

uint64_t sub_10008BF4C(uint64_t a1, uint64_t a2)
{
  sub_100084528(&qword_10026F2A8, &qword_1001F0CC0);
  v2[28] = swift_task_alloc();
  v5 = _s21PriceDropNotificationVMa(0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v8 = (*(a2 + 32) + **(a2 + 32));
  v6 = swift_task_alloc();
  v2[32] = v6;
  *v6 = v2;
  v6[1] = sub_10008C0F8;

  return v8(a1, a2);
}

uint64_t sub_10008C0F8(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_10008C1F8, 0, 0);
}

void sub_10008C1F8()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 240);
    v5 = v1 + 32;
    v6 = _swiftEmptyArrayStorage;
    while (v3 < *(v1 + 16))
    {
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v10 = *(v5 + 16);
      v9 = *(v5 + 32);
      *(v0 + 16) = *v5;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      v12 = *(v5 + 64);
      v11 = *(v5 + 80);
      v13 = *(v5 + 48);
      *(v0 + 112) = *(v5 + 96);
      *(v0 + 80) = v12;
      *(v0 + 96) = v11;
      *(v0 + 64) = v13;
      sub_10008EA78(v0 + 16, v0 + 120);
      sub_10008CCD8((v0 + 16), v8);
      if ((*(v4 + 48))(v8, 1, v7) == 1)
      {
        sub_10008875C(*(v0 + 224), &qword_10026F2A8, &qword_1001F0CC0);
      }

      else
      {
        sub_10008E758(*(v0 + 224), *(v0 + 248));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000AD8C4(0, v6[2] + 1, 1, v6);
        }

        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1000AD8C4((v14 > 1), v15 + 1, 1, v6);
        }

        v16 = *(v0 + 248);
        v6[2] = v15 + 1;
        sub_10008E758(v16, v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
      }

      ++v3;
      v5 += 104;
      if (v2 == v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_14:

    v17 = *(v0 + 8);

    v17(v6);
  }
}

uint64_t sub_10008C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_100089DC8(sub_10008EC8C, 0, a3, &type metadata for UserNotification.ID, &type metadata for Never, a5, &protocol witness table for Never, a8);
  v10 = *(a4 + 40);
  v11 = sub_100084528(&qword_10026F298, &qword_1001F0CB8);
  v12 = sub_1000885F4(&qword_10026F2A0, &qword_10026F298, &qword_1001F0CB8, &protocol conformance descriptor for [A]);
  v10(&v14, v11, v12, a2, a4);
}

uint64_t sub_10008C510(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10008C628;

  return v7(a1, a2);
}

uint64_t sub_10008C628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = (a3 - 1) < 2;
  if (a2 != 2)
  {
    v8 = 0;
  }

  v9 = (a1 - 2) <= 2 && v8;
  v10 = *(v7 + 8);

  return v10(v9);
}

uint64_t sub_10008C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v4[48] = _s21PriceDropNotificationVMa(0);
  v4[49] = swift_task_alloc();

  return _swift_task_switch(sub_10008C7E8, 0, 0);
}

uint64_t sub_10008C7E8()
{
  v1 = *(v0 + 392);
  sub_10008E644(*(v0 + 352), v1);
  *(v0 + 344) = *v1;
  sub_10008E704();
  v28._countAndFlagsBits = sub_1001C61D8();
  sub_1001C6138(v28);

  v2 = v1[2];
  v3 = v1[4];
  v23 = v1[3];
  v24 = v1[1];
  v4 = v1[5];
  v5 = v1[6];
  v22 = v4;
  v6 = qword_10026EBB0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 392);
  v26 = *(v0 + 368);
  v8 = *(&xmmword_10026F1B0 + 1);
  v21 = xmmword_10026F1B0;
  sub_100084528(&qword_100272570, &qword_1001F0CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  *(v0 + 328) = sub_1001C6018();
  *(v0 + 336) = v10;

  sub_1001C6968();
  v11 = sub_1001C4A58();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = sub_100118A6C(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_10026F280, &qword_1001F5620);
  sub_10008E6A8(v7);
  *(v0 + 16) = 0xD000000000000035;
  *(v0 + 24) = 0x80000001001FE420;
  *(v0 + 32) = v24;
  *(v0 + 40) = v2;
  *(v0 + 48) = v23;
  *(v0 + 56) = v3;
  *(v0 + 64) = v22;
  *(v0 + 72) = v5;
  *(v0 + 80) = v21;
  *(v0 + 88) = v8;
  *(v0 + 96) = 0xD00000000000002ELL;
  *(v0 + 104) = 0x80000001001FE460;
  v14 = *(v0 + 80);
  *(v0 + 200) = *(v0 + 96);
  *(v0 + 184) = v14;
  v15 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v16 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v16;
  *(v0 + 112) = v13;
  *(v0 + 216) = v13;
  *(v0 + 152) = v15;
  v25 = (*(v26 + 24) + **(v26 + 24));
  v17 = swift_task_alloc();
  *(v0 + 400) = v17;
  *v17 = v0;
  v17[1] = sub_10008CB1C;
  v18 = *(v0 + 368);
  v19 = *(v0 + 360);

  return v25(v0 + 120, v19, v18);
}

uint64_t sub_10008CB1C()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10008CC68, 0, 0);
  }

  else
  {
    sub_10008EA24(v2 + 16);

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10008CC68()
{
  sub_10008EA24(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008CCD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_1001C4B28();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  swift_bridgeObjectRetain_n();
  v13 = sub_10008E808(v12, v11);
  if (v14)
  {
    sub_10008EA24(a1);
    goto LABEL_21;
  }

  v46 = a2;
  v45 = v13;
  v52[0] = *(a1 + 4);
  v15 = v52[0];
  v16 = qword_10026EBB0;

  if (v16 != -1)
  {
    swift_once();
  }

  if (v15 == xmmword_10026F1B0)
  {
    sub_10008EAD4(v52);
  }

  else
  {
    v17 = sub_1001C6D08();
    sub_10008EAD4(v52);
    if ((v17 & 1) == 0)
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v30 = sub_1001C5148();
      sub_100083274(v30, qword_100281898);

      sub_10008EA78(a1, v49);
      v31 = sub_1001C5128();
      v32 = sub_1001C6598();

      sub_10008EA24(a1);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v49[0] = swift_slowAlloc();
        *v33 = 136446466;
        v34 = sub_1001874E8(v12, v11, v49);

        *(v33 + 4) = v34;
        *(v33 + 12) = 2082;

        sub_10008EA24(a1);
        v35 = sub_1001874E8(v15, *(&v15 + 1), v49);
        sub_10008EAD4(v52);
        *(v33 + 14) = v35;
        v36 = "[PriceDropNotification] notification: %{public}s has invalid category ID: %{public}s";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v31, v32, v36, v33, 0x16u);
        swift_arrayDestroy();

LABEL_32:

        a2 = v46;
        goto LABEL_33;
      }

LABEL_31:

      sub_10008EA24(a1);
      goto LABEL_32;
    }
  }

  v51 = *(a1 + 5);
  v18 = v51;
  if (__PAIR128__(0x80000001001FE460, 0xD00000000000002ELL) != v51 && (sub_1001C6D08() & 1) == 0)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v37 = sub_1001C5148();
    sub_100083274(v37, qword_100281898);

    sub_10008EA78(a1, v49);
    v31 = sub_1001C5128();
    v32 = sub_1001C6598();

    sub_10008EA24(a1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v33 = 136446466;
      v38 = sub_1001874E8(v12, v11, v49);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;

      sub_10008EA24(a1);
      v39 = sub_1001874E8(v18, *(&v18 + 1), v49);
      sub_10008EB28(&v51);
      *(v33 + 14) = v39;
      v36 = "[PriceDropNotification] notification: %{public}s has invalid thread ID: %{public}s";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v19 = a1[12];
  *&v50 = sub_1001C6018();
  *(&v50 + 1) = v20;
  sub_1001C6968();
  if (!*(v19 + 16) || (v21 = sub_100187A1C(v49), (v22 & 1) == 0))
  {
    sub_10008EA24(a1);
    sub_10008EB7C(v49);
    a2 = v46;
    goto LABEL_16;
  }

  sub_10008EBD0(*(v19 + 56) + 32 * v21, v48);
  sub_10008EB7C(v49);
  v23 = swift_dynamicCast();
  a2 = v46;
  if ((v23 & 1) == 0)
  {
    sub_10008EA24(a1);
    goto LABEL_16;
  }

  sub_1001C4B08();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10008EA24(a1);
    sub_10008875C(v6, &unk_10026EF10, &unk_1001F1FA0);
LABEL_16:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v24 = sub_1001C5148();
    sub_100083274(v24, qword_100281898);

    v25 = sub_1001C5128();
    v26 = sub_1001C6598();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49[0] = v28;
      *v27 = 136446210;
      v29 = sub_1001874E8(v12, v11, v49);

      *(v27 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[UserNotifier] notification request: %{public}s does not contain a (valid) deep-link URL", v27, 0xCu);
      sub_10008E7BC(v28);

LABEL_33:
      v40 = _s21PriceDropNotificationVMa(0);
      return (*(*(v40 - 8) + 56))(a2, 1, 1, v40);
    }

LABEL_21:

    goto LABEL_33;
  }

  v42 = *(v8 + 32);
  v42(v10, v6, v7);
  v43 = *(a1 + 2);
  *v49 = *(a1 + 1);
  v48[0] = v43;
  v50 = *(a1 + 3);
  sub_10008EC2C(v49, v47);
  sub_10008EC2C(v48, v47);
  sub_10008EC2C(&v50, v47);
  sub_10008EA24(a1);
  *a2 = v45;
  *(a2 + 8) = *v49;
  *(a2 + 24) = v48[0];
  *(a2 + 40) = v50;
  v44 = _s21PriceDropNotificationVMa(0);
  v42((a2 + *(v44 + 32)), v10, v7);
  return (*(*(v44 - 8) + 56))(a2, 0, 1, v44);
}

uint64_t sub_10008D524@<X0>(unint64_t *a2@<X8>)
{
  sub_10008E704();
  v4._countAndFlagsBits = sub_1001C61D8();
  sub_1001C6138(v4);

  *a2 = 0xD000000000000035;
  a2[1] = 0x80000001001FE420;
  return result;
}

Swift::Int sub_10008D5BC(uint64_t *a1)
{
  v2 = *(_s21PriceDropNotificationVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AAC74(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10008D664(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10008D664(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s21PriceDropNotificationVMa(0);
        v6 = sub_1001C62D8();
        v6[2] = v5;
      }

      v7 = *(_s21PriceDropNotificationVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10008D988(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10008D790(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10008D790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = _s21PriceDropNotificationVMa(0);
  v8 = __chkstk_darwin(v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v27 - v12);
  result = __chkstk_darwin(v11);
  v17 = (&v27 - v16);
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10008E644(v23, v17);
      sub_10008E644(v20, v13);
      v24 = *v17;
      v25 = *v13;
      sub_10008E6A8(v13);
      result = sub_10008E6A8(v17);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_10008E758(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10008E758(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10008D988(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v106 = a1;
  v119 = _s21PriceDropNotificationVMa(0);
  v113 = *(v119 - 8);
  v7 = __chkstk_darwin(v119);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v102 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = (&v102 - v12);
  result = __chkstk_darwin(v11);
  v16 = (&v102 - v15);
  v115 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v117;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = sub_1001A97CC(v19);
      v19 = result;
    }

    v120 = v19;
    v98 = *(v19 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v19[16 * v98];
        v100 = *&v19[16 * v98 + 24];
        sub_10008E1C8(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v19[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v4);
        if (v13)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1001A97CC(v19);
        }

        if (v98 - 2 >= *(v19 + 2))
        {
          goto LABEL_124;
        }

        v101 = &v19[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v120 = v19;
        result = sub_1001A9740(v98 - 1);
        v19 = v120;
        v98 = *(v120 + 2);
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v104 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v110 = v13;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v21 = *v115;
      v22 = *(v113 + 72);
      v4 = *v115 + v22 * (v18 + 1);
      sub_10008E644(v4, v16);
      sub_10008E644(v21 + v22 * v18, v13);
      v23 = *v16;
      v111 = *v13;
      v112 = v23;
      sub_10008E6A8(v13);
      result = sub_10008E6A8(v16);
      v105 = v18;
      v24 = v18 + 2;
      v114 = v22;
      v25 = v21 + v22 * (v18 + 2);
      while (v17 != v24)
      {
        LODWORD(v116) = v112 < v111;
        sub_10008E644(v25, v16);
        v26 = v16;
        v27 = v110;
        sub_10008E644(v4, v110);
        v28 = *v26;
        v29 = v17;
        v30 = v19;
        v31 = *v27;
        v32 = v27;
        v16 = v26;
        sub_10008E6A8(v32);
        result = sub_10008E6A8(v26);
        v33 = v28 < v31;
        v19 = v30;
        v17 = v29;
        v34 = !v33;
        ++v24;
        v25 += v114;
        v4 += v114;
        if (((v116 ^ v34) & 1) == 0)
        {
          v17 = v24 - 1;
          break;
        }
      }

      v13 = v110;
      v20 = v105;
      if (v112 < v111)
      {
        if (v17 < v105)
        {
          goto LABEL_127;
        }

        if (v105 < v17)
        {
          v103 = v19;
          v35 = v114 * (v17 - 1);
          v36 = v17 * v114;
          v37 = v17;
          v38 = v105 * v114;
          do
          {
            if (v20 != --v37)
            {
              v116 = v37;
              v4 = *v115;
              if (!*v115)
              {
                goto LABEL_133;
              }

              sub_10008E758(v4 + v38, v109);
              if (v38 < v35 || v4 + v38 >= v4 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
                v37 = v116;
              }

              else
              {
                v37 = v116;
                if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10008E758(v109, v4 + v35);
            }

            ++v20;
            v35 -= v114;
            v36 -= v114;
            v38 += v114;
          }

          while (v20 < v37);
          v19 = v103;
          v20 = v105;
        }
      }
    }

    v39 = v115[1];
    if (v17 < v39)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v104)
      {
        if (__OFADD__(v20, v104))
        {
          goto LABEL_128;
        }

        if (v20 + v104 >= v39)
        {
          v40 = v115[1];
        }

        else
        {
          v40 = v20 + v104;
        }

        if (v40 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v40)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v42 = *(v19 + 2);
    v41 = *(v19 + 3);
    v4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1000AD9F0((v41 > 1), v42 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v4;
    v43 = &v19[16 * v42];
    *(v43 + 4) = v20;
    *(v43 + 5) = v18;
    v44 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    if (v42)
    {
      while (1)
      {
        v45 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v46 = *(v19 + 4);
          v47 = *(v19 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_114;
          }

          v62 = &v19[16 * v4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_117;
          }

          v68 = &v19[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_121;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v19[16 * v4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_116;
        }

        v75 = &v19[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_119;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v83 = v45 - 1;
        if (v45 - 1 >= v4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v115)
        {
          goto LABEL_132;
        }

        v84 = *&v19[16 * v83 + 32];
        v4 = *&v19[16 * v45 + 40];
        v85 = v117;
        sub_10008E1C8(*v115 + *(v113 + 72) * v84, *v115 + *(v113 + 72) * *&v19[16 * v45 + 32], *v115 + *(v113 + 72) * v4, v44);
        v117 = v85;
        if (v85)
        {
        }

        if (v4 < v84)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1001A97CC(v19);
        }

        if (v83 >= *(v19 + 2))
        {
          goto LABEL_111;
        }

        v86 = &v19[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v4;
        v120 = v19;
        result = sub_1001A9740(v45);
        v19 = v120;
        v4 = *(v120 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v19[16 * v4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_112;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_113;
      }

      v57 = &v19[16 * v4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_115;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_118;
      }

      if (v61 >= v53)
      {
        v79 = &v19[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v48 < v82)
        {
          v45 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v17 = v115[1];
    if (v18 >= v17)
    {
      goto LABEL_98;
    }
  }

  v103 = v19;
  v87 = v17;
  v88 = *v115;
  v89 = *(v113 + 72);
  v90 = *v115 + v89 * (v87 - 1);
  v91 = v20;
  v92 = -v89;
  v105 = v91;
  v93 = v91 - v87;
  v116 = v87;
  v107 = v89;
  v108 = v40;
  v4 = v88 + v87 * v89;
LABEL_88:
  v111 = v4;
  v112 = v93;
  v114 = v90;
  while (1)
  {
    sub_10008E644(v4, v16);
    sub_10008E644(v90, v13);
    v94 = *v16;
    v95 = *v13;
    sub_10008E6A8(v13);
    result = sub_10008E6A8(v16);
    if (v94 >= v95)
    {
LABEL_87:
      v18 = v108;
      v90 = v114 + v107;
      v93 = v112 - 1;
      v4 = v111 + v107;
      if (++v116 != v108)
      {
        goto LABEL_88;
      }

      v19 = v103;
      v20 = v105;
      if (v108 < v105)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v88)
    {
      break;
    }

    v96 = v118;
    sub_10008E758(v4, v118);
    swift_arrayInitWithTakeFrontToBack();
    sub_10008E758(v96, v90);
    v90 += v92;
    v4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_10008E1C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = _s21PriceDropNotificationVMa(0);
  v8 = __chkstk_darwin(v42);
  v44 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v8);
  v43 = (&v36 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        while (1)
        {
          if (v26 <= a1)
          {
            v47 = v26;
            v45 = v36;
            goto LABEL_58;
          }

          v28 = a3;
          v37 = v23;
          a3 += v24;
          v29 = v25 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_10008E644(v30, v43);
          v32 = v27;
          v33 = v44;
          sub_10008E644(v27, v44);
          v34 = *v31;
          v35 = *v33;
          sub_10008E6A8(v33);
          sub_10008E6A8(v31);
          if (v34 < v35)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v32;
            v24 = v38;
            a1 = v39;
          }

          else
          {
            v27 = v32;
            v24 = v38;
            a1 = v39;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          v26 = v41;
          if (v29 <= v40)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v28 < v41 || a3 >= v41)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v32;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        sub_10008E644(a2, v43);
        v20 = v44;
        sub_10008E644(a4, v44);
        v21 = *v19;
        v22 = *v20;
        sub_10008E6A8(v20);
        sub_10008E6A8(v19);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_58:
  sub_1001A97E0(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_10008E644(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E6A8(uint64_t a1)
{
  v2 = _s21PriceDropNotificationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008E704()
{
  result = qword_10026F278;
  if (!qword_10026F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F278);
  }

  return result;
}

uint64_t sub_10008E758(uint64_t a1, uint64_t a2)
{
  v4 = _s21PriceDropNotificationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008E7BC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10008E808(uint64_t a1, unint64_t a2)
{
  v19._object = 0x80000001001FE420;
  v19._countAndFlagsBits = 0xD000000000000035;
  if (!sub_1001C61B8(v19))
  {
    goto LABEL_9;
  }

  v4 = sub_1001C60F8();
  sub_10016A8A8(v4, a1, a2);

  v5 = sub_1001C60B8();
  v7 = v6;

  v8 = sub_1000D9058(v5, v7);
  if ((v9 & 1) == 0)
  {
    v16 = v8;

    return v16;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1001C5148();
  sub_100083274(v10, qword_100281898);

  v11 = sub_1001C5128();
  v12 = sub_1001C6598();

  if (!os_log_type_enabled(v11, v12))
  {

LABEL_9:

    return 0;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v18 = v14;
  *v13 = 136446210;
  v15 = sub_1001874E8(a1, a2, &v18);

  *(v13 + 4) = v15;
  _os_log_impl(&_mh_execute_header, v11, v12, "[UserNotifier] notification request: %{public}s has correct prefix, but does not contain a (valid) suffix", v13, 0xCu);
  sub_10008E7BC(v14);

  return 0;
}

uint64_t sub_10008EBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSObject *sub_10008ECA4()
{
  v1 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService;
  v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  }

  else
  {
    *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 1;
    v4 = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"com.apple.ibooks.ReadingHistoryService.lifetime"];
    v5 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager);
    v6 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext);
    v7 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider);
    v8 = objc_allocWithZone(sub_100084528(&unk_10026F810, &qword_1001F3220));
    v9 = sub_100099410(v5, v6, v7, v8);
    v10 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingGoalsService);
    v11 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryServiceContext);
    v12 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager_viewStateChangeHandler);
    objc_allocWithZone(type metadata accessor for ReadingHistoryService());
    swift_unknownObjectRetain();
    v13 = v10;

    v14 = v4;
    v15 = v4;
    v16 = v0;
    v17 = sub_1000F1C1C(v13, v9, v11, v15, v12);

    swift_unknownObjectRelease();
    v18 = *(v16 + v1);
    *(v16 + v1) = v17;
    v3 = v17;

    ReadingHistoryService.setEnableCloudSync(_:)(*(v16 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync));
    v2 = 0;
  }

  v19 = v2;
  return v3;
}

char *ReadingHistoryServiceManager.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v55 = a1;
  v56 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_1001C6638();
  __chkstk_darwin(v5);
  v6 = sub_1001C5688();
  __chkstk_darwin(v6 - 8);
  v52 = sub_1001C6668();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext;
  v54 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCoherenceContext;
  *&v3[v10] = sub_10008366C();
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService] = 0;
  v3[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync] = 0;
  v53 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue;
  v58 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v49[1] = "al cache at %@ error=%@";
  v51 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v50 = *(v7 + 104);
  v50(v9);
  sub_1001C5668();
  aBlock = _swiftEmptyArrayStorage;
  v49[0] = sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v11 = sub_1001C66A8();
  v12 = v52;
  *&v3[v53] = v11;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount] = 0;
  v53 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue;
  (v50)(v9, v51, v12);
  sub_1001C5668();
  aBlock = _swiftEmptyArrayStorage;
  sub_1001C68C8();
  *&v3[v53] = sub_1001C66A8();
  v3[OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty] = 0;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer] = 0;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimout] = 0x403E000000000000;
  v14 = v55;
  v13 = v56;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_readingGoalsService] = v55;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider] = v13;
  *&v3[OBJC_IVAR___BDSReadingHistoryServiceManager_viewStateChangeHandler] = v59;
  v15 = *&v3[v54];
  v16 = objc_opt_self();
  swift_unknownObjectRetain();
  v17 = v15;
  v18 = v13;
  v58 = v14;
  v19 = [v16 sharedInstance];
  sub_100098D64();
  v21 = v20;
  aBlock = sub_1001C69E8();
  v61 = v22;
  v68._countAndFlagsBits = 45;
  v68._object = 0xE100000000000000;
  sub_1001C6138(v68);
  v67 = type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v69._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v69);

  v23 = objc_allocWithZone(BCCloudDataSource);
  v24 = sub_1001C5FE8();

  v25 = [v23 initWithManagedObjectModel:v21 nameOnDisk:v24];

  v26 = objc_allocWithZone(sub_100084528(&qword_10026F338, &unk_1001F0D10));
  *&v4[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager] = sub_100099F0C(v19, v17, v25, v18, v26);
  type metadata accessor for ReadingHistoryServiceContext();
  v27 = swift_allocObject();
  v27[2] = 0xD000000000000029;
  v27[3] = 0x80000001001FE5F0;
  v27[4] = 0xD000000000000029;
  v27[5] = 0x80000001001FE620;
  v27[6] = 0xD000000000000031;
  v27[7] = 0x80000001001FE650;
  v27[8] = v18;
  *&v4[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryServiceContext] = v27;
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v28 = v18;
  v29 = objc_msgSendSuper2(&v66, "init");
  v30 = *&v29[OBJC_IVAR___BDSReadingHistoryServiceManager_transactionProvider];
  v31 = v29;
  [v30 setDelegate:v31];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = objc_allocWithZone(BUCoalescingCallBlock);
  v64 = sub_10009A418;
  v65 = v32;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000991BC;
  v63 = &unk_100242578;
  v34 = _Block_copy(&aBlock);
  v35 = v31;

  v36 = sub_1001C5FE8();
  v37 = [v33 initWithNotifyBlock:v34 blockDescription:v36];

  _Block_release(v34);

  [v37 setCoalescingDelay:30.0];
  v38 = *&v35[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer];
  *&v35[OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer] = v37;
  v39 = v37;

  v40 = OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager;
  *(*&v35[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager] + qword_100281A00 + 8) = &off_100242848;
  swift_unknownObjectWeakAssign();

  v41 = *&v35[v40];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v41;

  v44 = *&v43[qword_100273F40];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = sub_10009A438;
  v46[4] = v42;
  v64 = sub_10009A440;
  v65 = v46;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1000982D4;
  v63 = &unk_1002425F0;
  v47 = _Block_copy(&aBlock);
  swift_retain_n();

  [v44 cloudDataWithPredicate:0 sortDescriptors:0 completion:v47];
  _Block_release(v47);

  swift_unknownObjectRelease();

  return v35;
}

uint64_t sub_10008F768(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10008F7D8();
  }

  return a1();
}

uint64_t sub_10008F7D8()
{
  v21 = 0;
  v1 = *&v0[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v21;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10009B1A4;
  *(v3 + 24) = v2;
  v19 = sub_10009B264;
  v20 = v3;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000906F4;
  v18 = &unk_1002431B8;
  v4 = _Block_copy(&aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v21 == 1)
  {
    v6 = sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_4:
      sub_1001C5118(v6, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager Service still dirty. Skip teardown", 63, 2, _swiftEmptyArrayStorage);
    }

LABEL_8:
    v14 = v6;
    swift_once();
    v6 = v14;
    goto LABEL_4;
  }

  v8 = *&v5[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10009B1BC;
  *(v10 + 24) = v9;
  v19 = sub_10009B264;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000906F4;
  v18 = &unk_100243230;
  v11 = _Block_copy(&aBlock);
  v12 = v5;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10008FAE4(void *a1, uint64_t a2)
{
  v3 = sub_1001C5648();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v11 - 8);
  v13 = (v23 - v12);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = a1;
      sub_1000BC0EC(v13);
      if (sub_10008FFA8(v13, 0xD000000000000014, 0x80000001001FF010))
      {
        v27 = *&v15[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        aBlock[4] = sub_10009B1C4;
        aBlock[5] = v17;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000DD4AC;
        aBlock[3] = &unk_100243280;
        v25 = _Block_copy(aBlock);
        v26 = v15;
        sub_1001C5668();
        v28 = _swiftEmptyArrayStorage;
        v23[1] = sub_10009A514(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100084528(&unk_10026F360, &qword_1001F13F0);
        v24 = v16;
        sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
        sub_1001C68C8();
        v18 = v25;
        sub_1001C6698();
        _Block_release(v18);

        (*(v4 + 8))(v6, v3);
        (*(v8 + 8))(v10, v7);
        sub_10008875C(v13, &unk_10026F410, &unk_1001F0E40);
      }

      else
      {
        sub_10008875C(v13, &unk_10026F410, &unk_1001F0E40);
      }
    }

    else
    {
      v20 = sub_1001C6598();
      if (qword_10026EBE8 != -1)
      {
        v22 = v20;
        swift_once();
        v20 = v22;
      }

      sub_1001C5118(v20, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager cloudData is nil", 45, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v19 = sub_1001C6598();
    if (qword_10026EBE8 != -1)
    {
      v21 = v19;
      swift_once();
      v19 = v21;
    }

    sub_1001C5118(v19, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager cloudData: self is nil", 51, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10008FFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v6 = __chkstk_darwin(v5 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = (&v42 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v42 - v15);
  __chkstk_darwin(v14);
  v47 = &v42 - v17;
  sub_10012FA70((&v42 - v17));
  v44 = a1;
  sub_10009ADF0(a1, v16, &unk_10026F410, &unk_1001F0E40);
  v18 = type metadata accessor for CRDTModelRevisionInfo(0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v16, 1, v18) == 1)
  {
    sub_10008875C(v16, &unk_10026F410, &unk_1001F0E40);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = *v16;
    v21 = v16[1];

    sub_10009B0DC(v16, type metadata accessor for CRDTModelRevisionInfo);
  }

  sub_10009ADF0(v47, v13, &unk_10026F410, &unk_1001F0E40);
  if (v19(v13, 1, v18) == 1)
  {
    sub_10008875C(v13, &unk_10026F410, &unk_1001F0E40);
    if (!v21)
    {
      goto LABEL_18;
    }

LABEL_16:

    v26 = 1;
    goto LABEL_19;
  }

  v23 = *v13;
  v22 = v13[1];

  sub_10009B0DC(v13, type metadata accessor for CRDTModelRevisionInfo);
  if (v21)
  {
    if (v22)
    {
      if (v20 != v23 || v21 != v22)
      {
        v25 = sub_1001C6D08();

        v26 = v25 ^ 1;
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_18:
  v26 = 0;
LABEL_19:
  v43 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v42 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001F0CF0;
  *(v27 + 56) = &type metadata for String;
  v28 = sub_100084570();
  *(v27 + 64) = v28;
  *(v27 + 32) = a2;
  v29 = v44;
  *(v27 + 40) = v45;
  *(v27 + 96) = &type metadata for Bool;
  *(v27 + 104) = &protocol witness table for Bool;
  *(v27 + 72) = v26 & 1;
  sub_10009ADF0(v29, v10, &unk_10026F410, &unk_1001F0E40);
  v30 = v19(v10, 1, v18);

  if (v30 == 1)
  {
    sub_10008875C(v10, &unk_10026F410, &unk_1001F0E40);
    v31 = (v27 + 112);
    *(v27 + 136) = &type metadata for String;
    *(v27 + 144) = v28;
  }

  else
  {
    v32 = CRDTModelRevisionInfo.description.getter();
    v34 = v33;
    sub_10009B0DC(v10, type metadata accessor for CRDTModelRevisionInfo);
    v31 = (v27 + 112);
    *(v27 + 136) = &type metadata for String;
    *(v27 + 144) = v28;
    if (v34)
    {
      *v31 = v32;
      goto LABEL_26;
    }
  }

  *v31 = 7104878;
  v34 = 0xE300000000000000;
LABEL_26:
  v36 = v46;
  v35 = v47;
  *(v27 + 120) = v34;
  sub_10009ADF0(v35, v36, &unk_10026F410, &unk_1001F0E40);
  if (v19(v36, 1, v18) == 1)
  {
    sub_10008875C(v36, &unk_10026F410, &unk_1001F0E40);
    v37 = (v27 + 152);
    *(v27 + 176) = &type metadata for String;
    *(v27 + 184) = v28;
LABEL_30:
    *v37 = 7104878;
    v40 = 0xE300000000000000;
    goto LABEL_31;
  }

  v38 = CRDTModelRevisionInfo.description.getter();
  v40 = v39;
  sub_10009B0DC(v36, type metadata accessor for CRDTModelRevisionInfo);
  v37 = (v27 + 152);
  *(v27 + 176) = &type metadata for String;
  *(v27 + 184) = v28;
  if (!v40)
  {
    goto LABEL_30;
  }

  *v37 = v38;
LABEL_31:
  *(v27 + 160) = v40;
  sub_1001C5118(v43, &_mh_execute_header, v42, "ReadingHistoryServiceManager %@: changed = %{BOOL}d,\n  - cloudRevision = %@,\n  - lastCloudRevisionSaved = %@", 108, 2, v27);

  sub_10008875C(v47, &unk_10026F410, &unk_1001F0E40);
  return v26 & 1;
}

id ReadingHistoryServiceManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_10008F7D8();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10009071C(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager Teardown service", 45, 2, _swiftEmptyArrayStorage);
  v3 = OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService;
  v4 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  v6 = v4;
  if (v4)
  {
    v4 = *&v4[OBJC_IVAR___BDSReadingHistoryService_lifetimeTransaction];
  }

  *(a1 + v3) = 0;
}

void ReadingHistoryServiceManager.clearDate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  v7 = sub_1001C5118(v6, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager clearDate", 38, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v7);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearDate(_:completionHandler:)(a1, a2, a3);
}

void sub_100090EC8(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v11 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v13 = v11;
    swift_once();
    v11 = v13;
  }

  v12 = sub_1001C5118(v11, &_mh_execute_header, qword_1002711E8, a3, a4, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v12);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  a6(a1, a2);
}

uint64_t ReadingHistoryServiceManager.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v9 - 8);
  v11 = (v20 - v10);
  v12 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v19 = v12;
    swift_once();
    v12 = v19;
  }

  v13 = sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager handleSyncFileChange", 49, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v13);
  v20[-2] = v4;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v14 = v20[1];
  if (!a1)
  {
    v17 = type metadata accessor for CRDTModelSyncVersion(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v15 = a1;
  static CRDTModelSyncVersion.fromInfo(_:)(v15, v11);

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v16 = [a2 update];
LABEL_8:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v11, v16, a3, a4);

  return sub_10008875C(v11, &unk_10026F350, &qword_1001F31E0);
}

void ReadingHistoryServiceManager.increment(date:by:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v10 = v8;
    swift_once();
    v8 = v10;
  }

  v9 = sub_1001C5118(v8, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager increment", 38, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v9);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.increment(date:by:completionHandler:)(a1, a2, a3, a4);
}

uint64_t ReadingHistoryServiceManager.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v66 = a4;
  v67 = a5;
  v64 = a2;
  v65 = a3;
  v7 = sub_1001C5648();
  v72 = *(v7 - 8);
  v73 = v7;
  __chkstk_darwin(v7);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C5688();
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1001C4CA8();
  v11 = *(v61 - 8);
  v12 = __chkstk_darwin(v61);
  v63 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v60 = &v56 - v15;
  v62 = v16;
  __chkstk_darwin(v14);
  v74 = &v56 - v17;
  v18 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v55 = v18;
    swift_once();
    v18 = v55;
  }

  v19 = qword_1002711E8;
  v20 = sub_1001C5118(v18, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager readingHistoryStateInfo", 52, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v20);
  *(&v56 - 2) = v5;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v21 = aBlock[0];
  v22 = sub_1001C65B8();
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001F0680;
  v24 = sub_1001C4C08();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  v27 = sub_100084570();
  v57 = a1;
  v28 = v27;
  *(v23 + 64) = v27;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  v29 = v64;
  v30 = sub_1001C4C08();
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v28;
  *(v23 + 72) = v30;
  *(v23 + 80) = v31;
  v32 = v65;
  v33 = sub_1001C4C08();
  *(v23 + 136) = &type metadata for String;
  *(v23 + 144) = v28;
  *(v23 + 112) = v33;
  *(v23 + 120) = v34;
  sub_1001C5118(v22, &_mh_execute_header, v19, "ReadingHistoryService readingHistoryStateInfo (range: (%@ -> %@), currentTime: %@)", 82, 2, v23);

  v35 = v21;
  v58 = v21;
  v59 = *&v21[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v36 = *(v11 + 16);
  v37 = v61;
  v36(v74, v57, v61);
  v38 = v60;
  v36(v60, v29, v37);
  v39 = v63;
  v36(v63, v32, v37);
  v40 = *(v11 + 80);
  v41 = (v40 + 24) & ~v40;
  v42 = (v62 + v40 + v41) & ~v40;
  v43 = (v62 + v40 + v42) & ~v40;
  v44 = (v62 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  v46 = *(v11 + 32);
  v46(v45 + v41, v74, v37);
  v46(v45 + v42, v38, v37);
  v46(v45 + v43, v39, v37);
  v47 = (v45 + v44);
  v48 = v67;
  *v47 = v66;
  v47[1] = v48;
  aBlock[4] = sub_10009A464;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100242640;
  v49 = _Block_copy(aBlock);
  v50 = v58;

  v51 = v68;
  sub_1001C5668();
  v75 = _swiftEmptyArrayStorage;
  sub_10009A514(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v52 = v71;
  v53 = v73;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v49);
  (*(v72 + 8))(v52, v53);
  (*(v69 + 8))(v51, v70);
}

BDSReadingHistoryServiceStatusInfo __swiftcall ReadingHistoryServiceManager.serviceStatusInfo()()
{
  v16 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:0];
  v1 = *(v0 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = &v16;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10009A55C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10009A564;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_1002426B8;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v7 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F0670;
  v9 = v16;
  *(v8 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v8 + 64) = sub_10009A58C();
  *(v8 + 32) = v9;
  v10 = v9;
  sub_1001C5118(isEscapingClosureAtFileLocation, &_mh_execute_header, v7, "ReadingHistoryServiceManager serviceStatusInfo: %@", 50, 2, v8);

  v11 = v16;

  v13 = v11;
  result._status = v12;
  result.super.isa = v13;
  return result;
}

void sub_10009228C(uint64_t a1, void **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
      v8 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v9 = qword_1002711E8;
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001F0670;
      *(v10 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
      *(v10 + 64) = sub_10009A58C();
      *(v10 + 32) = v7;
      v11 = v7;
      sub_1001C5118(v8, &_mh_execute_header, v9, "ReadingHistoryService serviceStatusInfo: %@", 43, 2, v10);

      v12 = *a2;
      *a2 = v11;
    }
  }
}

Swift::Void __swiftcall ReadingHistoryServiceManager.setEnableCloudSync(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v5 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001F0670;
  *(v6 + 56) = &type metadata for Bool;
  *(v6 + 64) = &protocol witness table for Bool;
  v7 = a1;
  *(v6 + 32) = a1;
  sub_1001C5118(v4, &_mh_execute_header, v5, "ReadingHistoryServiceManager setEnableCloudSync: %d", LODWORD(v16[0]));

  v8 = *&v2[OBJC_IVAR___BDSReadingHistoryServiceManager_readingHistoryCloudDataManager];
  v9 = *(v8 + qword_100281A08);
  *(v8 + qword_100281A08) = a1;
  if (v9 != a1)
  {
    sub_1000F1254(a1);
  }

  v10 = *&v2[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10009A5F4;
  *(v12 + 24) = v11;
  v16[4] = sub_10009B264;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000906F4;
  v16[3] = &unk_100242730;
  v13 = _Block_copy(v16);
  v14 = v2;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_100092698(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceEnableCloudSync) = a2;
  v2 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v2)
  {
    v4 = v2;
    ReadingHistoryService.setEnableCloudSync(_:)(a2 & 1);
  }
}

id ReadingHistoryServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1000927F4(void *a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  sub_1000BC0EC((aBlock - v5));
  v7 = sub_10008FFA8(v6, 0xD000000000000011, 0x80000001001FEDB0);
  v8 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryServiceAccessQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  *(v9 + 32) = v7 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10009AC8C;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10009B264;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100242D08;
  v11 = _Block_copy(aBlock);
  v12 = v2;
  v13 = a1;

  dispatch_sync(v8, v11);
  _Block_release(v11);
  sub_10008875C(v6, &unk_10026F410, &unk_1001F0E40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100092A04(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager__readingHistoryService);
  if (v3)
  {
    v9 = *(v3 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
    sub_100092B10(a2);
    v5 = v9;
LABEL_5:

    return;
  }

  if (a3)
  {
    v5 = sub_10008ECA4();
    goto LABEL_5;
  }

  v6 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  v7 = qword_1002711E8;

  sub_1001C5118(v6, &_mh_execute_header, v7, "ReadingHistoryServiceManager resolvedCloudData skip service setup", 65, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100092B10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for ReadingHistoryModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v38 - v11;
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  sub_1000BC0EC((&v38 - v16));
  v18 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8);
  if (v18 >> 60 == 15)
  {
    v22 = sub_1001C5128();
    v23 = sub_1001C6598();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v24, 2u);
    }

    sub_100097144(v17);
    return sub_10008875C(v17, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    v39 = v8;
    v40 = v2;
    v19 = *(a1 + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData);
    v20 = *&v2[qword_10026FB18];
    sub_10009AD88(v19, v18);
    sub_10009AD88(v19, v18);
    sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
    v21 = v20;
    v41 = v19;
    sub_1001C5C88();
    v25 = v39 + 56;
    (*(v39 + 7))(v6, 0, 1, v7);
    v26 = v44;
    sub_10009B13C(v6, v44, type metadata accessor for ReadingHistoryModel);
    v27 = v40;
    v38 = *&v40[qword_10026FB10];
    v39 = type metadata accessor for ReadingHistoryModel;
    v28 = v43;
    sub_10009B074(v26, v43, type metadata accessor for ReadingHistoryModel);
    sub_10009ADF0(v17, v15, &unk_10026F410, &unk_1001F0E40);
    v29 = (v25[24] + 16) & ~v25[24];
    v30 = (v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (*(v42 + 80) + v30 + 8) & ~*(v42 + 80);
    v32 = swift_allocObject();
    sub_10009B13C(v28, v32 + v29, type metadata accessor for ReadingHistoryModel);
    *(v32 + v30) = v27;
    sub_10009AE58(v15, v32 + v31, &unk_10026F410, &unk_1001F0E40);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_10009AEC0;
    *(v33 + 24) = v32;
    aBlock[4] = sub_10009B264;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100243028;
    v34 = _Block_copy(aBlock);
    v35 = v27;

    dispatch_sync(v38, v34);
    _Block_release(v34);
    sub_1000887BC(v41, v18);
    sub_10009B0DC(v44, v39);
    sub_10008875C(v17, &unk_10026F410, &unk_1001F0E40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingHistoryServiceManager.transactionDidBegin(withName:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10009A600;
  *(v5 + 24) = v4;
  v10[4] = sub_10009B264;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_1002427A8;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100093234(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount;
  v6 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  v2 = a1;
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount) = v7;
  if (a2)
  {
    v4 = sub_1001C6148();
    v3 = v8;
    v7 = *(v2 + v5);
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  LOBYTE(v5) = sub_1001C6588();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315394;
    v12 = sub_1001874E8(v4, v3, &v14);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v5, "ReadingHistoryServiceManager transactionDidBegin %s, count: %ld", v10, 0x16u);
    sub_10008E7BC(v11);
  }

  else
  {
  }

  *(v2 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 1;
  return result;
}

uint64_t ReadingHistoryServiceManager.transactionWillEnd(withName:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = 0x403E000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10009A608;
  *(v5 + 24) = v4;
  v10[4] = sub_10009B264;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242820;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100093694(uint64_t a1, uint64_t a2, double a3)
{
  v9 = OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount;
  v10 = *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  v3 = a1;
  *(a1 + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCount) = v12;
  if (v12 > 0)
  {
    return;
  }

  v8 = a3;
  *(a1 + v9) = 0;
  if (a2)
  {
    v5 = sub_1001C6148();
    v4 = v13;
    v7 = *(v3 + v9);
  }

  else
  {
    v7 = 0;
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  v6 = sub_1001C6588();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v14 = qword_1002711E8;
  if (os_log_type_enabled(qword_1002711E8, v6))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136315394;
    v17 = sub_1001874E8(v5, v4, v23);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v14, v6, "ReadingHistoryServiceManager transactionWillEnd %s, count: %ld", v15, 0x16u);
    sub_10008E7BC(v16);
  }

  else
  {
  }

  *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager_serviceDirty) = 0;
  v18 = sub_1001C65B8();
  if (os_log_type_enabled(v14, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v14, v18, "ReadingHistoryServiceManager Schedule teardown service in %f secs", v19, 0xCu);
  }

  v20 = *(v3 + OBJC_IVAR___BDSReadingHistoryServiceManager_teardownServiceTimer);
  if (v20)
  {
    v23[4] = MarkedAsFinishedMechanism.rawValue.getter;
    v23[5] = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_1000DD4AC;
    v23[3] = &unk_100243140;
    v21 = _Block_copy(v23);
    v22 = v20;
    [v22 signalWithCompletion:v21];
    _Block_release(v21);
  }
}

uint64_t sub_100093ADC(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = v1[3];
  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager bookWidgetReadingHistoryStateInfo", 62, 2, _swiftEmptyArrayStorage);
  *(swift_task_alloc() + 16) = v3;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v1[4] = v1[2];
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = sub_100093C40;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

uint64_t sub_100093C40(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_100093ED8(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100093F50, 0, 0);
}

uint64_t sub_100093F50(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v3 = v1[3];
  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager bookWidgetReadingHistoryStateInfo", 62, 2, _swiftEmptyArrayStorage);
  *(swift_task_alloc() + 16) = v3;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v1[5] = v1[2];
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_1000940B4;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

uint64_t sub_1000940B4(void *a1, char a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v10 = *v2;

  (v6)[2](v6, a1, a2 & 1);
  _Block_release(v6);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100094248(uint64_t a1)
{
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  v3 = v1[3];
  v4 = qword_1002711E8;
  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager mergeMovedReadingHistoryData", 57, 2, _swiftEmptyArrayStorage);
  *(swift_task_alloc() + 16) = v3;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v1[4] = v1[2];
  v5 = sub_1001C65B8();
  sub_1001C5118(v5, &_mh_execute_header, v4, "ReadingHistoryService mergeMovedReadingHistoryData", 50, 2, _swiftEmptyArrayStorage);
  v6 = swift_task_alloc();
  v1[5] = v6;
  *v6 = v1;
  v6[1] = sub_1000943E8;

  return sub_1000E0774();
}

uint64_t sub_1000943E8(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100094674(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10009471C;

  return ReadingHistoryServiceManager.mergeMovedReadingHistoryData()();
}

uint64_t sub_10009471C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1001C4A18();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t ReadingHistoryServiceManager.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_1000948D0, 0, 0);
}

uint64_t sub_1000948D0()
{
  v1 = v0[5];
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[6] = v0[2];
  v0[7] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000949DC;
  v4 = v0[3];
  v3 = v0[4];

  return ReadingHistoryBackupManager.backup(name:)(v4, v3);
}

uint64_t sub_1000949DC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100094B28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3(1);
  }
}

uint64_t sub_100094B28()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100094D20(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1001C6018();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100094E04;

  return ReadingHistoryServiceManager.backup(name:)(a1, v7);
}

uint64_t sub_100094E04(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);

  if (v3)
  {
    v10 = sub_1001C4A18();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100094FCC()
{
  v1 = v0[3];
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[4] = v0[2];
  v0[5] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000950CC;

  return sub_100133D3C();
}

uint64_t sub_1000950CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_100095268;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_1000951FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000951FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2, 1);
}

uint64_t sub_100095268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009544C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000954F4;

  return ReadingHistoryServiceManager.listBackup()();
}

uint64_t sub_1000954F4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  v8 = *(v5 + 24);
  if (v2)
  {
    v9 = sub_1001C4A18();

    (v8)[2](v8, 0, 0, v9);

    _Block_release(v8);
  }

  else
  {
    isa = sub_1001C6288().super.isa;
    (v8)[2](v8, isa, a2 & 1, 0);

    _Block_release(v8);
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t ReadingHistoryServiceManager.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_1000956E0, 0, 0);
}

uint64_t sub_1000956E0()
{
  v1 = v0[5];
  *(swift_task_alloc() + 16) = v1;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();

  v0[6] = v0[2];
  v0[7] = sub_1000E0060();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000957EC;
  v4 = v0[3];
  v3 = v0[4];

  return ReadingHistoryBackupManager.restore(name:)(v4, v3);
}

uint64_t sub_1000957EC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009B2F4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3(1);
  }
}

uint64_t sub_100095AC0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1001C6018();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100095B94;

  return ReadingHistoryServiceManager.restore(name:)(v5, v7);
}

uint64_t sub_100095B94(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1001C4A18();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void *sub_100095D48(void *a1, uint64_t a2)
{
  v3 = sub_1001C5688();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1001C5638();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    aBlock[4] = sub_10009AD50;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100242DD0;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    v16 = v12;
    sub_1001C5668();
    sub_1001C6698();
    _Block_release(v14);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100095FA4(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v117 = a2;
  v3 = sub_1001C5AC8();
  v109 = *(v3 - 8);
  v110 = v3;
  __chkstk_darwin(v3);
  v108 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100084528(&qword_10026FCA0, &unk_1001F0E70);
  __chkstk_darwin(v5 - 8);
  v115 = &v103 - v6;
  v7 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v103 - v11;
  v13 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v13);
  v15 = &v103 - v14;
  v116 = type metadata accessor for ReadingHistoryModel(0);
  v114 = *(v116 - 8);
  v16 = __chkstk_darwin(v116);
  v107 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v106 = &v103 - v19;
  v20 = __chkstk_darwin(v18);
  v112 = &v103 - v21;
  v22 = __chkstk_darwin(v20);
  v113 = &v103 - v23;
  __chkstk_darwin(v22);
  v25 = &v103 - v24;
  v118 = qword_10026FB20;

  v111 = v13;
  sub_1001C6688();

  sub_10009B074(v15, v25, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
  v26 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v119 = v25;
  if (!v117)
  {
LABEL_10:
    v47 = sub_1001C5128();
    v48 = sub_1001C65B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "CRDTModelSyncManager Init: empty cloudData", v49, 2u);
    }

    v50 = *(isEscapingClosureAtFileLocation + v118);
    __chkstk_darwin(v51);
    *(&v103 - 2) = v25;
    *(&v103 - 1) = v12;
    v52 = *(v50 + 16);
    v53 = swift_allocObject();
    v53[2] = sub_10009AD74;
    v53[3] = &v103 - 4;
    v53[4] = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_10009AD7C;
    *(v54 + 24) = v53;
    v124 = sub_10009B264;
    v125 = v54;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1000906F4;
    v123 = &unk_100242E48;
    v55 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v52, v55);
    _Block_release(v55);
    LODWORD(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      goto LABEL_25;
    }

LABEL_13:
    sub_10008875C(v12, &unk_10026F410, &unk_1001F0E40);
    return sub_10009B0DC(v119, type metadata accessor for ReadingHistoryModel);
  }

  v27 = v117;
  sub_1000BC0EC(v10);
  sub_10008875C(v12, &unk_10026F410, &unk_1001F0E40);
  sub_10009AE58(v10, v12, &unk_10026F410, &unk_1001F0E40);
  v28 = sub_1001C5128();
  v29 = sub_1001C65B8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "CRDTModelSyncManager Init: About to deserialize existing data", v30, 2u);
  }

  v117 = v27;
  v31 = &v27[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData];
  v32 = *&v27[OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData + 8];
  if (v32 >> 60 == 15)
  {
    v38 = sub_1001C5128();
    v39 = sub_1001C6598();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "CRDTModelSyncManager Init: couldn't deserialize existing data", v40, 2u);
    }

    v41 = *(isEscapingClosureAtFileLocation + v118);
    __chkstk_darwin(v42);
    *(&v103 - 2) = v119;
    *(&v103 - 1) = v12;
    v43 = *(v41 + 16);
    v44 = swift_allocObject();
    v44[2] = sub_10009B2F8;
    v44[3] = &v103 - 4;
    v44[4] = v41;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_10009B304;
    *(v45 + 24) = v44;
    v124 = sub_10009B264;
    v125 = v45;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1000906F4;
    v123 = &unk_100242EC0;
    v46 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v43, v46);
    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

  v33 = *v31;
  v34 = *(isEscapingClosureAtFileLocation + qword_10026FB18);
  sub_10009AD88(*v31, v32);
  sub_10009AD88(v33, v32);
  sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v35 = v34;
  v37 = v115;
  v36 = v116;
  sub_1001C5C88();
  v103 = v33;
  v104 = v32;
  (*(v114 + 56))(v37, 0, 1, v36);
  v57 = v113;
  sub_10009B13C(v37, v113, type metadata accessor for ReadingHistoryModel);
  v58 = v36;
  v59 = isEscapingClosureAtFileLocation;

  sub_1001C6688();

  v60 = v112;
  sub_10009B074(v15, v112, type metadata accessor for ReadingHistoryModel);
  sub_10008875C(v15, &unk_10026F420, &unk_1001F0E50);
  v61 = sub_1001C5C38();
  sub_10009B0DC(v60, type metadata accessor for ReadingHistoryModel);
  v105 = v59;
  if (v61)
  {
    v62 = v57;
    v63 = v106;
    sub_10009B074(v62, v106, type metadata accessor for ReadingHistoryModel);
    v64 = sub_1001C5128();
    v65 = sub_1001C65B8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v66 = 136315394;
      v67 = ReadingHistoryModel.description.getter();
      v69 = v68;
      sub_10009B0DC(v63, type metadata accessor for ReadingHistoryModel);
      v70 = sub_1001874E8(v67, v69, &aBlock);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = v119;
      swift_beginAccess();
      v72 = v71;
      v73 = v112;
      sub_10009B074(v72, v112, type metadata accessor for ReadingHistoryModel);
      v74 = ReadingHistoryModel.description.getter();
      v76 = v75;
      sub_10009B0DC(v73, type metadata accessor for ReadingHistoryModel);
      v77 = sub_1001874E8(v74, v76, &aBlock);

      *(v66 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v64, v65, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v66, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v63, type metadata accessor for ReadingHistoryModel);
    }

    v89 = v104;
    v90 = v119;
    swift_beginAccess();
    sub_10009A514(&unk_10026FC60, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
    v91 = v108;
    v92 = v113;
    sub_1001C5AB8();
    swift_endAccess();

    sub_1000887BC(v103, v89);
    (*(v109 + 8))(v91, v110);
    v93 = sub_10009B0DC(v92, type metadata accessor for ReadingHistoryModel);
    v79 = *(v105 + v118);
    __chkstk_darwin(v93);
    *(&v103 - 2) = v90;
    *(&v103 - 1) = v12;
    isa = v79[2].isa;
    v95 = swift_allocObject();
    v95[2] = sub_10009B2F8;
    v95[3] = &v103 - 4;
    v95[4] = v79;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_10009B304;
    *(v78 + 24) = v95;
    v124 = sub_10009B264;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_1000906F4;
    v123 = &unk_100242FB0;
    v96 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(isa, v96);
    _Block_release(v96);
    LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

    if ((isa & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v78 = v107;
    sub_10009B074(v57, v107, type metadata accessor for ReadingHistoryModel);
    v58 = v57;
    v79 = sub_1001C5128();
    v80 = sub_1001C65B8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v78;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 136315138;
      v84 = ReadingHistoryModel.description.getter();
      v86 = v85;
      sub_10009B0DC(v81, type metadata accessor for ReadingHistoryModel);
      v87 = sub_1001874E8(v84, v86, &aBlock);

      *(v82 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v80, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v82, 0xCu);
      sub_10008E7BC(v83);

      sub_1000887BC(v103, v104);
      v88 = v57;
      goto LABEL_23;
    }
  }

  sub_1000887BC(v103, v104);
  sub_10009B0DC(v78, type metadata accessor for ReadingHistoryModel);
  v88 = v58;
LABEL_23:
  v97 = sub_10009B0DC(v88, type metadata accessor for ReadingHistoryModel);
  v98 = *(v105 + v118);
  __chkstk_darwin(v97);
  *(&v103 - 2) = v119;
  *(&v103 - 1) = v12;
  v99 = *(v98 + 16);
  v100 = swift_allocObject();
  v100[2] = sub_10009B2F8;
  v100[3] = &v103 - 4;
  v100[4] = v98;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_10009B304;
  *(v101 + 24) = v100;
  v124 = sub_10009B264;
  v125 = v101;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_1000906F4;
  v123 = &unk_100242F38;
  v102 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v99, v102);
  _Block_release(v102);
  LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

  if ((v99 & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100097144(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  __chkstk_darwin(v3);
  v5 = &aBlock[-1] - v4;
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = type metadata accessor for CRDTModelRevisionInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v8, &unk_10026F410, &unk_1001F0E40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = &unk_10026F410;
    v14 = &unk_1001F0E40;
    v15 = v8;
    return sub_10008875C(v15, v13, v14);
  }

  sub_10009B13C(v8, v12, type metadata accessor for CRDTModelRevisionInfo);
  v16 = qword_10026FB20;

  v17 = v1;
  sub_1001C6688();

  v18 = *(v3 + 52);
  sub_10008875C(&v5[v18], &unk_10026F410, &unk_1001F0E40);
  sub_10009B074(v12, &v5[v18], type metadata accessor for CRDTModelRevisionInfo);
  v19 = (*(v10 + 56))(&v5[v18], 0, 1, v9);
  v20 = *(v17 + v16);
  __chkstk_darwin(v19);
  *(&v26 - 2) = v5;
  v21 = *(v20 + 16);
  v22 = swift_allocObject();
  v22[2] = sub_10009B258;
  v22[3] = &v26 - 4;
  v22[4] = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10009B304;
  *(v23 + 24) = v22;
  aBlock[4] = sub_10009B264;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100243118;
  v24 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v21, v24);
  _Block_release(v24);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    sub_10009B0DC(v12, type metadata accessor for CRDTModelRevisionInfo);
    v13 = &unk_10026F420;
    v14 = &unk_1001F0E50;
    v15 = v5;
    return sub_10008875C(v15, v13, v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009756C(char *a1, char *a2, uint64_t a3)
{
  v100 = a3;
  v103 = a1;
  v4 = sub_1001C5AC8();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_100084528(&unk_10026F480, &qword_1001F0E88);
  __chkstk_darwin(v91);
  v90 = &v84[-v6];
  v7 = sub_100084528(&unk_10026F420, &unk_1001F0E50);
  v8 = __chkstk_darwin(v7);
  v97 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v84[-v10];
  v12 = type metadata accessor for ReadingHistoryModel(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v84[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v99 = &v84[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v84[-v19];
  __chkstk_darwin(v18);
  v22 = &v84[-v21];
  v101 = qword_10026FB20;

  v98 = v7;
  sub_1001C6688();

  sub_10009B074(v11, v22, type metadata accessor for ReadingHistoryModel);
  v96 = v11;
  v23 = v103;
  sub_10008875C(v11, &unk_10026F420, &unk_1001F0E50);
  sub_10009A514(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v92 = v12;
  LOBYTE(v12) = sub_1001C5C38();
  sub_10009B0DC(v22, type metadata accessor for ReadingHistoryModel);
  v102 = qword_1002818C0;
  if (v12)
  {
    sub_10009B074(v23, v20, type metadata accessor for ReadingHistoryModel);
    sub_10009B074(v23, v99, type metadata accessor for ReadingHistoryModel);
    v24 = a2;
    v25 = sub_1001C5128();
    v26 = sub_1001C65B8();
    v88 = v24;

    v27 = a2;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v28 = 136315650;
      v86 = v25;
      v29 = ReadingHistoryModel.description.getter();
      v89 = a2;
      v31 = v30;
      sub_10009B0DC(v20, type metadata accessor for ReadingHistoryModel);
      v32 = sub_1001874E8(v29, v31, aBlock);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;

      v85 = v26;
      v33 = v96;
      v34 = v98;
      sub_1001C6688();

      sub_10009B074(v33, v22, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
      v35 = ReadingHistoryModel.description.getter();
      v37 = v36;
      sub_10009B0DC(v22, type metadata accessor for ReadingHistoryModel);
      v38 = sub_1001874E8(v35, v37, aBlock);

      *(v28 + 14) = v38;
      *(v28 + 22) = 2080;

      sub_1001C6688();
      v39 = v34;

      sub_10009B074(v33, v22, type metadata accessor for ReadingHistoryModel);
      v27 = v89;
      sub_10008875C(v33, &unk_10026F420, &unk_1001F0E50);
      sub_10009A514(&qword_10026F490, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
      v40 = v99;
      sub_1001C5CB8();
      sub_10009B0DC(v22, type metadata accessor for ReadingHistoryModel);
      v41 = sub_1001C6098();
      v43 = v42;
      sub_10009B0DC(v40, type metadata accessor for ReadingHistoryModel);
      v44 = v41;
      v45 = v101;
      v46 = sub_1001874E8(v44, v43, aBlock);

      *(v28 + 24) = v46;
      v47 = v86;
      _os_log_impl(&_mh_execute_header, v86, v85, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v99, type metadata accessor for ReadingHistoryModel);
      sub_10009B0DC(v20, type metadata accessor for ReadingHistoryModel);
      v39 = v98;
      v45 = v101;
    }

    v62 = v97;
    sub_1001C6688();
    v99 = 0;

    sub_10009A514(&unk_10026FC60, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
    v63 = v93;
    v64 = v103;
    sub_1001C5AB8();
    (*(v94 + 8))(v63, v95);
    v65 = *(v39 + 48);
    sub_10008875C(&v62[v65], &unk_10026FC40, &qword_1001F0E90);
    sub_10009B074(v64, &v62[v65], type metadata accessor for ReadingHistoryModel);
    v66 = sub_100084528(&qword_100270A40, &unk_1001F0E60);
    (*(*(v66 - 8) + 56))(&v62[v65], 0, 2, v66);
    v67 = sub_10009AFA8(v100, &v62[*(v39 + 52)]);
    v68 = *&v27[v45];
    __chkstk_darwin(v67);
    *&v84[-16] = v62;
    v69 = *(v68 + 16);
    v70 = swift_allocObject();
    v70[2] = sub_10009B018;
    v70[3] = &v84[-32];
    v70[4] = v68;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_10009B304;
    *(v71 + 24) = v70;
    aBlock[4] = sub_10009B264;
    aBlock[5] = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_1002430A0;
    v72 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v69, v72);
    _Block_release(v72);
    LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

    if (v69)
    {
      __break(1u);
    }

    else
    {
      v74 = v88;
      v75 = sub_1001C5128();
      v76 = sub_1001C65B8();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        aBlock[0] = v78;
        *v77 = 136315138;

        v79 = v96;
        sub_1001C6688();

        sub_10009B074(v79, v22, type metadata accessor for ReadingHistoryModel);
        sub_10008875C(v79, &unk_10026F420, &unk_1001F0E50);
        v80 = ReadingHistoryModel.description.getter();
        v82 = v81;
        sub_10009B0DC(v22, type metadata accessor for ReadingHistoryModel);
        v83 = sub_1001874E8(v80, v82, aBlock);

        *(v77 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v75, v76, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v77, 0xCu);
        sub_10008E7BC(v78);
      }

      return sub_10008875C(v97, &unk_10026F420, &unk_1001F0E50);
    }
  }

  else
  {
    sub_10009B074(v23, v15, type metadata accessor for ReadingHistoryModel);
    v48 = a2;
    v49 = sub_1001C5128();
    v50 = sub_1001C65B8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v103 = v48;
      v52 = v51;
      v102 = swift_slowAlloc();
      aBlock[0] = v102;
      *v52 = 136315394;
      LODWORD(v99) = v50;
      v53 = ReadingHistoryModel.description.getter();
      v55 = v54;
      sub_10009B0DC(v15, type metadata accessor for ReadingHistoryModel);
      v56 = sub_1001874E8(v53, v55, aBlock);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;

      v57 = v96;
      sub_1001C6688();

      sub_10009B074(v57, v22, type metadata accessor for ReadingHistoryModel);
      sub_10008875C(v57, &unk_10026F420, &unk_1001F0E50);
      v58 = ReadingHistoryModel.description.getter();
      v60 = v59;
      sub_10009B0DC(v22, type metadata accessor for ReadingHistoryModel);
      v61 = sub_1001874E8(v58, v60, aBlock);

      *(v52 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v49, v99, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10009B0DC(v15, type metadata accessor for ReadingHistoryModel);
    }

    return sub_100097144(v100);
  }

  return result;
}

uint64_t sub_1000982D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void *sub_100098354(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v14 = sub_1001C6668();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C6638();
  __chkstk_darwin(v6);
  v7 = sub_1001C5688();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v13[1] = "DataStoreService";
  v13[2] = v8;
  sub_1001C5668();
  v16 = _swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v9 = *(v3 + 104);
  v10 = v14;
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v1[2] = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  v1[3] = sub_1001C66A8();
  v1[4] = &_swiftEmptyDictionarySingleton;
  v11 = v2 + *(*v2 + 128);
  *(v11 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_10009AE58(v15, v2 + *(*v2 + 120), &unk_10026F420, &unk_1001F0E50);
  return v2;
}

void *sub_1000986B8(uint64_t a1)
{
  v2 = v1;
  v15 = a1;
  v14 = sub_1001C6668();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001C6638();
  __chkstk_darwin(v6);
  v7 = sub_1001C5688();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v13[1] = "DataStoreService";
  v13[2] = v8;
  sub_1001C5668();
  v16 = _swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v9 = *(v3 + 104);
  v10 = v14;
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v1[2] = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v9(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  v1[3] = sub_1001C66A8();
  v1[4] = &_swiftEmptyDictionarySingleton;
  v11 = v2 + *(*v2 + 128);
  *(v11 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  sub_10009B13C(v15, v2 + *(*v2 + 120), type metadata accessor for CRDTModelSyncVersion);
  return v2;
}

uint64_t sub_100098A20(uint64_t a1, int a2, double a3)
{
  v17 = a2;
  v16 = a1;
  v15 = sub_1001C6668();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C6638();
  __chkstk_darwin(v8);
  v9 = sub_1001C5688();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v14[0] = "DataStoreService";
  v14[1] = v10;
  sub_1001C5668();
  v18 = _swiftEmptyArrayStorage;
  sub_10009A514(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v11 = *(v5 + 104);
  v12 = v15;
  v11(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *(v3 + 16) = sub_1001C66A8();
  sub_1001C5678();
  sub_1001C6628();
  v11(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  *(v3 + 24) = sub_1001C66A8();
  *(v3 + 32) = &_swiftEmptyDictionarySingleton;
  *(v3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v3 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 40) = v16;
  *(v3 + 48) = a3;
  *(v3 + 56) = v17;
  return v3;
}