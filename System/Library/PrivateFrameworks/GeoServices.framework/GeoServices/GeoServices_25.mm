uint64_t GEOStepIsValid(void *a1)
{
  v118 = objc_msgSend_position(a1);
  v119 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v116) = 0;
      v6 = objc_msgSend_position(a1, v116) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v116 & 0x7F) << v3;
      if ((v116 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    switch((v10 >> 3))
    {
      case 1u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v35 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v36 = objc_msgSend_position(a1, v116) + 1;
          if (v36 >= objc_msgSend_position(a1) && (v37 = objc_msgSend_position(a1) + 1, v37 <= [a1 length]))
          {
            v38 = [a1 data];
            [v38 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v35++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v46 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v47 = objc_msgSend_position(a1, v116) + 1;
          if (v47 >= objc_msgSend_position(a1) && (v48 = objc_msgSend_position(a1) + 1, v48 <= [a1 length]))
          {
            v49 = [a1 data];
            [v49 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v46++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 3u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v50 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v51 = objc_msgSend_position(a1, v116) + 1;
          if (v51 >= objc_msgSend_position(a1) && (v52 = objc_msgSend_position(a1) + 1, v52 <= [a1 length]))
          {
            v53 = [a1 data];
            [v53 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v50++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 4u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v67 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v68 = objc_msgSend_position(a1, v116) + 1;
          if (v68 >= objc_msgSend_position(a1) && (v69 = objc_msgSend_position(a1) + 1, v69 <= [a1 length]))
          {
            v70 = [a1 data];
            [v70 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v67++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 5u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v54 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v55 = objc_msgSend_position(a1, v116) + 1;
          if (v55 >= objc_msgSend_position(a1) && (v56 = objc_msgSend_position(a1) + 1, v56 <= [a1 length]))
          {
            v57 = [a1 data];
            [v57 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v54++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 6u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v63 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v64 = objc_msgSend_position(a1, v116) + 1;
          if (v64 >= objc_msgSend_position(a1) && (v65 = objc_msgSend_position(a1) + 1, v65 <= [a1 length]))
          {
            v66 = [a1 data];
            [v66 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v63++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 7u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v75 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v76 = objc_msgSend_position(a1, v116) + 1;
          if (v76 >= objc_msgSend_position(a1) && (v77 = objc_msgSend_position(a1) + 1, v77 <= [a1 length]))
          {
            v78 = [a1 data];
            [v78 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v75++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 8u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEONameInfoListIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0xAu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v30 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v31 = objc_msgSend_position(a1, v116) + 1;
          if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
          {
            v33 = [a1 data];
            [v33 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v30++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0xBu:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOJunctionElementIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0xCu:
      case 0x13u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEONameInfoIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0xDu:
        if (v11 != 5)
        {
          goto LABEL_310;
        }

        LODWORD(v116) = 0;
        v40 = objc_msgSend_position(a1, v116) + 4;
        if (v40 >= objc_msgSend_position(a1) && (v41 = objc_msgSend_position(a1) + 4, v41 <= [a1 length]))
        {
          v113 = [a1 data];
          [v113 getBytes:&v116 range:{objc_msgSend_position(a1), 4}];

          [a1 setPosition:objc_msgSend_position(a1) + 4];
        }

        else
        {
          [a1 _setError];
        }

        continue;
      case 0x10u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v25 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v26 = objc_msgSend_position(a1, v116) + 1;
          if (v26 >= objc_msgSend_position(a1) && (v27 = objc_msgSend_position(a1) + 1, v27 <= [a1 length]))
          {
            v28 = [a1 data];
            [v28 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v25++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x11u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v83 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v84 = objc_msgSend_position(a1, v116) + 1;
          if (v84 >= objc_msgSend_position(a1) && (v85 = objc_msgSend_position(a1) + 1, v85 <= [a1 length]))
          {
            v86 = [a1 data];
            [v86 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v83++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x12u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v87 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v88 = objc_msgSend_position(a1, v116) + 1;
          if (v88 >= objc_msgSend_position(a1) && (v89 = objc_msgSend_position(a1) + 1, v89 <= [a1 length]))
          {
            v90 = [a1 data];
            [v90 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v87++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x14u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v100 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v101 = objc_msgSend_position(a1, v116) + 1;
          if (v101 >= objc_msgSend_position(a1) && (v102 = objc_msgSend_position(a1) + 1, v102 <= [a1 length]))
          {
            v103 = [a1 data];
            [v103 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v100++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x15u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v92 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v93 = objc_msgSend_position(a1, v116) + 1;
          if (v93 >= objc_msgSend_position(a1) && (v94 = objc_msgSend_position(a1) + 1, v94 <= [a1 length]))
          {
            v95 = [a1 data];
            [v95 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v92++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x16u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v21 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v22 = objc_msgSend_position(a1, v116) + 1;
          if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
          {
            v24 = [a1 data];
            [v24 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v21++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x18u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v42 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v43 = objc_msgSend_position(a1, v116) + 1;
          if (v43 >= objc_msgSend_position(a1) && (v44 = objc_msgSend_position(a1) + 1, v44 <= [a1 length]))
          {
            v45 = [a1 data];
            [v45 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v42++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x1Eu:
        if (v11 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_310;
      case 0x1Fu:
        if (v11 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_310;
      case 0x20u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOTimeCheckpointsIsValid(a1, v39))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x21u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOInstructionSetIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x22u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v71 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v72 = objc_msgSend_position(a1, v116) + 1;
          if (v72 >= objc_msgSend_position(a1) && (v73 = objc_msgSend_position(a1) + 1, v73 <= [a1 length]))
          {
            v74 = [a1 data];
            [v74 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v71++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x23u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOGuidanceEventIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x24u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v108 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v109 = objc_msgSend_position(a1, v116) + 1;
          if (v109 >= objc_msgSend_position(a1) && (v110 = objc_msgSend_position(a1) + 1, v110 <= [a1 length]))
          {
            v111 = [a1 data];
            [v111 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v108++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x25u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v104 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v105 = objc_msgSend_position(a1, v116) + 1;
          if (v105 >= objc_msgSend_position(a1) && (v106 = objc_msgSend_position(a1) + 1, v106 <= [a1 length]))
          {
            v107 = [a1 data];
            [v107 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v104++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x26u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOEVStateInfoIsValid(a1, v34))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x29u:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOEVStepInfoIsValid(a1, v58))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x2Au:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOEVChargeInfoIsValid(a1, v91))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x2Bu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v59 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v60 = objc_msgSend_position(a1, v116) + 1;
          if (v60 >= objc_msgSend_position(a1) && (v61 = objc_msgSend_position(a1) + 1, v61 <= [a1 length]))
          {
            v62 = [a1 data];
            [v62 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v59++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x2Cu:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOPBTransitArtworkIsValid(a1))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x2Du:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEOStopWaypointIsValid(a1, v29))
        {
          goto LABEL_310;
        }

        goto LABEL_306;
      case 0x2Eu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v96 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v97 = objc_msgSend_position(a1, v116) + 1;
          if (v97 >= objc_msgSend_position(a1) && (v98 = objc_msgSend_position(a1) + 1, v98 <= [a1 length]))
          {
            v99 = [a1 data];
            [v99 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v96++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x2Fu:
        if (v11 != 2)
        {
          goto LABEL_310;
        }

        v116 = 0;
        v117 = 0;
        if (!PBReaderPlaceMark() || !GEORoadDescriptionIsValid(a1, v112))
        {
          goto LABEL_310;
        }

LABEL_306:
        PBReaderRecallMark();
        continue;
      case 0x30u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v17 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v18 = objc_msgSend_position(a1, v116) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x31u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v79 = 0;
        while (1)
        {
          LOBYTE(v116) = 0;
          v80 = objc_msgSend_position(a1, v116) + 1;
          if (v80 >= objc_msgSend_position(a1) && (v81 = objc_msgSend_position(a1) + 1, v81 <= [a1 length]))
          {
            v82 = [a1 data];
            [v82 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v116 & 0x80000000) == 0)
          {
            goto LABEL_302;
          }

          v16 = v79++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 0x32u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_310;
        }

        v12 = 0;
        break;
      default:
LABEL_280:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_310:
        PBReaderRecallMark();
        return 0;
    }

    while (1)
    {
      LOBYTE(v116) = 0;
      v13 = objc_msgSend_position(a1, v116) + 1;
      if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
      {
        v15 = [a1 data];
        [v15 getBytes:&v116 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((v116 & 0x80000000) == 0)
      {
        break;
      }

      v16 = v12++ > 8;
      if (v16)
      {
        goto LABEL_2;
      }
    }

LABEL_302:
    [a1 hasError];
  }

  v114 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v114;
}

uint64_t GEOSpokenGuidanceIsValid(void *a1)
{
  v50 = objc_msgSend_position(a1);
  v51 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v6 = objc_msgSend_position(a1, v48) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v48 & 0x7F) << v3;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v12 <= 8)
      {
        if (v12 == 6)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_121;
          }

          v30 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v31 = objc_msgSend_position(a1, v48) + 1;
            if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
            {
              v33 = [a1 data];
              [v33 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              break;
            }

            v17 = v30++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
        }

        else
        {
          if (v12 != 7)
          {
            goto LABEL_120;
          }

          if ((v10 & 7) != 0)
          {
            goto LABEL_121;
          }

          v26 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v27 = objc_msgSend_position(a1, v48) + 1;
            if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
            {
              v29 = [a1 data];
              [v29 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              break;
            }

            v17 = v26++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
        }

        goto LABEL_115;
      }

      if (v12 == 9)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_121;
        }

        v38 = 0;
        while (1)
        {
          LOBYTE(v48) = 0;
          v39 = objc_msgSend_position(a1, v48) + 1;
          if (v39 >= objc_msgSend_position(a1) && (v40 = objc_msgSend_position(a1) + 1, v40 <= [a1 length]))
          {
            v41 = [a1 data];
            [v41 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          v17 = v38++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 == 10)
      {
        if (v11 != 2 || (v48 = 0, v49 = 0, !PBReaderPlaceMark()) || !GEOTimeGapIsValid(a1))
        {
LABEL_121:
          PBReaderRecallMark();
          return 0;
        }

        goto LABEL_119;
      }

      if (v12 != 11)
      {
        goto LABEL_120;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_121;
      }

      v18 = 0;
      while (1)
      {
        LOBYTE(v48) = 0;
        v19 = objc_msgSend_position(a1, v48) + 1;
        if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
        {
          v21 = [a1 data];
          [v21 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v48 & 0x80000000) == 0)
        {
          break;
        }

        v17 = v18++ > 8;
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_115:
      [a1 hasError];
    }

    else if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          goto LABEL_120;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_121;
        }

        v22 = 0;
        while (1)
        {
          LOBYTE(v48) = 0;
          v23 = objc_msgSend_position(a1, v48) + 1;
          if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
          {
            v25 = [a1 data];
            [v25 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_115;
          }

          v17 = v22++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v11 != 2)
      {
        goto LABEL_121;
      }

      v48 = 0;
      v49 = 0;
      if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
      {
        goto LABEL_121;
      }

LABEL_119:
      PBReaderRecallMark();
    }

    else
    {
      switch(v12)
      {
        case 3:
          if ((v10 & 7) != 0)
          {
            goto LABEL_121;
          }

          v34 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v35 = objc_msgSend_position(a1, v48) + 1;
            if (v35 >= objc_msgSend_position(a1) && (v36 = objc_msgSend_position(a1) + 1, v36 <= [a1 length]))
            {
              v37 = [a1 data];
              [v37 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_115;
            }

            v17 = v34++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }

        case 4:
          if ((v10 & 7) != 0)
          {
            goto LABEL_121;
          }

          v42 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v43 = objc_msgSend_position(a1, v48) + 1;
            if (v43 >= objc_msgSend_position(a1) && (v44 = objc_msgSend_position(a1) + 1, v44 <= [a1 length]))
            {
              v45 = [a1 data];
              [v45 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_115;
            }

            v17 = v42++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }

        case 5:
          if ((v10 & 7) != 0)
          {
            goto LABEL_121;
          }

          v13 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v14 = objc_msgSend_position(a1, v48) + 1;
            if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
            {
              v16 = [a1 data];
              [v16 getBytes:&v48 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v48 & 0x80000000) == 0)
            {
              goto LABEL_115;
            }

            v17 = v13++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
      }

LABEL_120:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_121;
      }
    }
  }

  v46 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v46;
}

uint64_t GEOEnrouteNoticeIsValid(void *a1)
{
  v47 = objc_msgSend_position(a1);
  v48 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v45) = 0;
      v6 = objc_msgSend_position(a1, v45) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v45 & 0x7F) << v3;
      if ((v45 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v12 > 7)
      {
        switch(v12)
        {
          case 8:
            if ((v10 & 7) != 0)
            {
              goto LABEL_113;
            }

            v31 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v32 = objc_msgSend_position(a1, v45) + 1;
              if (v32 >= objc_msgSend_position(a1) && (v33 = objc_msgSend_position(a1) + 1, v33 <= [a1 length]))
              {
                v34 = [a1 data];
                [v34 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v45 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v31++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 9:
            if ((v10 & 7) != 0)
            {
              goto LABEL_113;
            }

            v39 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v40 = objc_msgSend_position(a1, v45) + 1;
              if (v40 >= objc_msgSend_position(a1) && (v41 = objc_msgSend_position(a1) + 1, v41 <= [a1 length]))
              {
                v42 = [a1 data];
                [v42 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v45 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v39++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 0xA:
            if ((v10 & 7) != 0)
            {
              goto LABEL_113;
            }

            v18 = 0;
            while (1)
            {
              LOBYTE(v45) = 0;
              v19 = objc_msgSend_position(a1, v45) + 1;
              if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
              {
                v21 = [a1 data];
                [v21 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v45 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v18++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          default:
            goto LABEL_112;
        }

        goto LABEL_111;
      }

      if (v12 == 6)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_113;
        }

        v27 = 0;
        while (1)
        {
          LOBYTE(v45) = 0;
          v28 = objc_msgSend_position(a1, v45) + 1;
          if (v28 >= objc_msgSend_position(a1) && (v29 = objc_msgSend_position(a1) + 1, v29 <= [a1 length]))
          {
            v30 = [a1 data];
            [v30 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_111;
          }

          v17 = v27++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 != 7)
      {
        goto LABEL_112;
      }

      if (v11 != 2 || (v45 = 0, v46 = 0, !PBReaderPlaceMark()) || !GEORouteAnnotationIsValid(a1, v22))
      {
LABEL_113:
        PBReaderRecallMark();
        return 0;
      }

LABEL_80:
      PBReaderRecallMark();
    }

    else if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 == 2 && v11 != 2)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_113;
      }

      v23 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v24 = objc_msgSend_position(a1, v45) + 1;
        if (v24 >= objc_msgSend_position(a1) && (v25 = objc_msgSend_position(a1) + 1, v25 <= [a1 length]))
        {
          v26 = [a1 data];
          [v26 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v45 & 0x80000000) == 0)
        {
          break;
        }

        v17 = v23++ > 8;
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_111:
      [a1 hasError];
    }

    else
    {
      switch(v12)
      {
        case 3:
          if (v11 != 2)
          {
            goto LABEL_113;
          }

          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !GEOGuidanceEventIsValid(a1))
          {
            goto LABEL_113;
          }

          goto LABEL_80;
        case 4:
          if ((v10 & 7) != 0)
          {
            goto LABEL_113;
          }

          v35 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v36 = objc_msgSend_position(a1, v45) + 1;
            if (v36 >= objc_msgSend_position(a1) && (v37 = objc_msgSend_position(a1) + 1, v37 <= [a1 length]))
            {
              v38 = [a1 data];
              [v38 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v45 & 0x80000000) == 0)
            {
              goto LABEL_111;
            }

            v17 = v35++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }

        case 5:
          if ((v10 & 7) != 0)
          {
            goto LABEL_113;
          }

          v13 = 0;
          while (1)
          {
            LOBYTE(v45) = 0;
            v14 = objc_msgSend_position(a1, v45) + 1;
            if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
            {
              v16 = [a1 data];
              [v16 getBytes:&v45 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v45 & 0x80000000) == 0)
            {
              goto LABEL_111;
            }

            v17 = v13++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
      }

LABEL_112:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_113;
      }
    }
  }

  v43 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v43;
}

uint64_t GEOGenericSubstitutesIsValid(void *a1)
{
  v18[2] = objc_msgSend_position(a1);
  v18[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_37;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v6 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v18[0] & 0x7F) << v3;
          if ((v18[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_37:
          v16 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v16;
        }

        if ((v10 >> 3) != 2)
        {
          break;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_39;
        }

        v11 = 0;
        while (1)
        {
          LOBYTE(v18[0]) = 0;
          v12 = objc_msgSend_position(a1, v18[0]) + 1;
          if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
          {
            v14 = [a1 data];
            [v14 getBytes:v18 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v18[0]) & 0x80000000) == 0)
          {
            break;
          }

          if (v11++ > 8)
          {
            goto LABEL_2;
          }
        }

        [a1 hasError];
      }

      if ((v10 >> 3) == 1)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_39:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOGenericStringDataIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_46;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v23 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v23 & 0x7F) << v3;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_46:
        v21 = [a1 hasError] ^ 1;
        goto LABEL_47;
      }

      v11 = v10 >> 3;
      if ((v10 >> 3) != 4)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_48;
      }

      v17 = 0;
      while (1)
      {
        v23 = 0;
        v18 = objc_msgSend_position(a1) + 1;
        if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
        {
          v20 = [a1 data];
          [v20 getBytes:&v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v23 & 0x80000000) == 0)
        {
          break;
        }

        v16 = v17++ > 8;
        if (v16)
        {
          goto LABEL_2;
        }
      }

LABEL_45:
      [a1 hasError];
    }

    if (v11 == 2)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v12 = 0;
      while (1)
      {
        v23 = 0;
        v13 = objc_msgSend_position(a1) + 1;
        if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
        {
          v15 = [a1 data];
          [v15 getBytes:&v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v16 = v12++ > 8;
        if (v16)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((v11 != 1 || (v10 & 7) == 2) && (PBReaderSkipValueWithTag() & 1) != 0);
LABEL_48:
  v21 = 0;
LABEL_47:
  PBReaderRecallMark();
  return v21;
}

uint64_t GEOConditionalFormattedStringIsValid(void *a1)
{
  v16 = objc_msgSend_position(a1);
  v17 = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v14) = 0;
      v6 = objc_msgSend_position(a1, v14) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v14 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v14 & 0x7F) << v3;
      if ((v14 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    if ((v10 >> 3) == 2)
    {
      if (v11 != 2 || (v14 = 0, v15 = 0, !PBReaderPlaceMark()) || !GEOConditionIsValid(a1))
      {
LABEL_29:
        PBReaderRecallMark();
        return 0;
      }

LABEL_27:
      PBReaderRecallMark();
    }

    else
    {
      if ((v10 >> 3) == 1)
      {
        if (v11 != 2)
        {
          goto LABEL_29;
        }

        v14 = 0;
        v15 = 0;
        if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v12;
}

uint64_t GEORouteLineStyleInfoIsValid(void *a1)
{
  v36 = objc_msgSend_position(a1);
  v37 = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_82;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v6 = objc_msgSend_position(a1, v34) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v34 & 0x7F) << v3;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_82:
        v32 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v32;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      switch(v12)
      {
        case 1:
          if ((v10 & 7) != 0)
          {
            goto LABEL_84;
          }

          v20 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v21 = objc_msgSend_position(a1, v34) + 1;
            if (v21 >= objc_msgSend_position(a1) && (v22 = objc_msgSend_position(a1) + 1, v22 <= [a1 length]))
            {
              v23 = [a1 data];
              [v23 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v34 & 0x80000000) == 0)
            {
              break;
            }

            v18 = v20++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }

          break;
        case 2:
          if ((v10 & 7) != 0)
          {
            goto LABEL_84;
          }

          v28 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v29 = objc_msgSend_position(a1, v34) + 1;
            if (v29 >= objc_msgSend_position(a1) && (v30 = objc_msgSend_position(a1) + 1, v30 <= [a1 length]))
            {
              v31 = [a1 data];
              [v31 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v34 & 0x80000000) == 0)
            {
              break;
            }

            v18 = v28++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }

          break;
        case 3:
          if ((v10 & 7) != 0)
          {
            goto LABEL_84;
          }

          v14 = 0;
          while (1)
          {
            LOBYTE(v34) = 0;
            v15 = objc_msgSend_position(a1, v34) + 1;
            if (v15 >= objc_msgSend_position(a1) && (v16 = objc_msgSend_position(a1) + 1, v16 <= [a1 length]))
            {
              v17 = [a1 data];
              [v17 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v34 & 0x80000000) == 0)
            {
              break;
            }

            v18 = v14++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }

          break;
        default:
          goto LABEL_55;
      }

LABEL_81:
      [a1 hasError];
    }

    if (v12 > 5)
    {
      break;
    }

    if (v12 == 4)
    {
      if (v11 != 2)
      {
        goto LABEL_84;
      }

      v34 = 0;
      v35 = 0;
      if (!PBReaderPlaceMark() || !GEOStyleAttributesIsValid(a1))
      {
        goto LABEL_84;
      }

LABEL_60:
      PBReaderRecallMark();
    }

    else
    {
      if (v12 == 5)
      {
        if (v11 != 2)
        {
          goto LABEL_84;
        }

        v34 = 0;
        v35 = 0;
        if (!PBReaderPlaceMark() || !GEOLabelInfoIsValid(a1, v13))
        {
          goto LABEL_84;
        }

        goto LABEL_60;
      }

LABEL_55:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_84;
      }
    }
  }

  if (v12 == 6)
  {
    if ((v10 & 7) != 0)
    {
      goto LABEL_84;
    }

    v24 = 0;
    while (1)
    {
      LOBYTE(v34) = 0;
      v25 = objc_msgSend_position(a1, v34) + 1;
      if (v25 >= objc_msgSend_position(a1) && (v26 = objc_msgSend_position(a1) + 1, v26 <= [a1 length]))
      {
        v27 = [a1 data];
        [v27 getBytes:&v34 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      v18 = v24++ > 8;
      if (v18)
      {
        goto LABEL_2;
      }
    }
  }

  if (v12 != 7)
  {
    goto LABEL_55;
  }

  if (v11 == 2)
  {
    v34 = 0;
    v35 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOLaneChangeInfoIsValid(a1, v19))
      {
        goto LABEL_60;
      }
    }
  }

LABEL_84:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOWaypointRouteFeaturesIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v27 = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v27 & 0x7F) << v3;
      if ((v27 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    v11 = v10 >> 3;
    if ((v10 >> 3) == 3)
    {
      if ((v10 & 7) != 0)
      {
        goto LABEL_53;
      }

      v21 = 0;
      while (1)
      {
        v27 = 0;
        v22 = objc_msgSend_position(a1) + 1;
        if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
        {
          v24 = [a1 data];
          [v24 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v27 & 0x80000000) == 0)
        {
          break;
        }

        v16 = v21++ > 8;
        if (v16)
        {
          goto LABEL_2;
        }
      }

LABEL_51:
      [a1 hasError];
    }

    else
    {
      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_53;
        }

        v17 = 0;
        while (1)
        {
          v27 = 0;
          v18 = objc_msgSend_position(a1) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      if (v11 == 1)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_53;
        }

        v12 = 0;
        while (1)
        {
          v27 = 0;
          v13 = objc_msgSend_position(a1) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_53:
        v25 = 0;
        goto LABEL_55;
      }
    }
  }

  v25 = [a1 hasError] ^ 1;
LABEL_55:
  PBReaderRecallMark();
  return v25;
}

uint64_t GEORouteInformationIsValid(void *a1)
{
  v15[2] = objc_msgSend_position(a1);
  v15[3] = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v15[0]) = 0;
      v6 = objc_msgSend_position(a1, v15[0]) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:v15 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v15[0] & 0x7F) << v3;
      if ((v15[0] & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v12 != 1 && v12 != 2)
      {
        goto LABEL_30;
      }

LABEL_26:
      if (v11 != 2 || (v15[0] = 0, v15[1] = 0, !PBReaderPlaceMark()) || !GEOFormattedStringIsValid(a1))
      {
LABEL_31:
        PBReaderRecallMark();
        return 0;
      }

      PBReaderRecallMark();
    }

    else
    {
      if (v12 == 3 || v12 == 4)
      {
        goto LABEL_26;
      }

      if (v12 == 5 && v11 != 2)
      {
        goto LABEL_31;
      }

LABEL_30:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v13 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v13;
}

uint64_t GEOLabelActionIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

uint64_t GEOLatLngIsValid(void *a1)
{
  v31[1] = objc_msgSend_position(a1);
  v31[2] = [a1 length];
  v31[0] = 0;
  v2 = objc_msgSend_position(a1);
  v3 = 0;
  if (v2 < [a1 length])
  {
    while (1)
    {
      if ([a1 hasError])
      {
        goto LABEL_53;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v7 = objc_msgSend_position(a1) + 1;
        if (v7 >= objc_msgSend_position(a1) && (v8 = objc_msgSend_position(a1) + 1, v8 <= [a1 length]))
        {
          v9 = [a1 data];
          [v9 getBytes:&v32 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v6 |= (v32 & 0x7F) << v4;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a1 hasError] ? 0 : v6;
LABEL_15:
      if (([a1 hasError] & 1) != 0 || (v12 = v11 & 7, v12 == 4))
      {
LABEL_53:
        v3 = LODWORD(v31[0]) != 0;
        goto LABEL_54;
      }

      v13 = v11 >> 3;
      if ((v11 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        goto LABEL_47;
      }

      if (v13 != 100)
      {
LABEL_37:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      if ((v11 & 7) != 0)
      {
        goto LABEL_55;
      }

      v18 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v19 = objc_msgSend_position(a1) + 1;
        if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
        {
          v21 = [a1 data];
          [v21 getBytes:&v32 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v32 & 0x80000000) == 0)
        {
          break;
        }

        if (v18++ > 8)
        {
          goto LABEL_52;
        }
      }

      [a1 hasError];
LABEL_52:
      v29 = objc_msgSend_position(a1);
      if (v29 >= [a1 length])
      {
        goto LABEL_53;
      }
    }

    if (v13 == 1)
    {
      v23 = v31 + 1;
      v24 = 1;
      while (1)
      {
        v25 = v24;
        if (!*v23)
        {
          break;
        }

        if (*v23 == 1)
        {
          goto LABEL_55;
        }

        v24 = 0;
        v17 = 0;
        v23 = v31;
        if ((v25 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      *v23 = 1;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_37;
      }

      v14 = v31 + 1;
      v15 = 1;
      while (1)
      {
        v16 = v15;
        if (!*v14)
        {
          break;
        }

        if (*v14 == 2)
        {
          goto LABEL_55;
        }

        v15 = 0;
        v17 = 0;
        v14 = v31;
        if ((v16 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      *v14 = 2;
    }

LABEL_47:
    if (v12 != 1)
    {
LABEL_55:
      v17 = 0;
      goto LABEL_56;
    }

    v32 = 0;
    v26 = objc_msgSend_position(a1) + 8;
    if (v26 >= objc_msgSend_position(a1) && (v27 = objc_msgSend_position(a1) + 8, v27 <= [a1 length]))
    {
      v28 = [a1 data];
      [v28 getBytes:&v32 range:{objc_msgSend_position(a1), 8}];

      [a1 setPosition:objc_msgSend_position(a1) + 8];
    }

    else
    {
      [a1 _setError];
    }

    goto LABEL_52;
  }

LABEL_54:
  v17 = ([a1 hasError] ^ 1) & v3;
LABEL_56:
  PBReaderRecallMark();
  return v17;
}

uint64_t GEOMapRegionIsValid(void *a1)
{
  v27[2] = objc_msgSend_position(a1);
  v27[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_64;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v6 = objc_msgSend_position(a1, v27[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v27[0] & 0x7F) << v3;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
        {
LABEL_64:
          v25 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v25;
        }

        v12 = v10 >> 3;
        if ((v10 >> 3) > 8)
        {
          break;
        }

        if (v12 > 6)
        {
          if (v12 != 7 && v12 != 8)
          {
            goto LABEL_60;
          }
        }

        else if (v12 != 5 && v12 != 6)
        {
          goto LABEL_60;
        }

        if (v11 != 1)
        {
          goto LABEL_66;
        }

        v18 = objc_msgSend_position(a1, 0) + 8;
        if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 8, v19 <= [a1 length]))
        {
          v24 = [a1 data];
          [v24 getBytes:v27 range:{objc_msgSend_position(a1), 8}];

          [a1 setPosition:objc_msgSend_position(a1) + 8];
        }

        else
        {
          [a1 _setError];
        }
      }

      if (v12 > 10)
      {
        break;
      }

      if (v12 == 9)
      {
        if (v11 != 2)
        {
          goto LABEL_66;
        }

        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !GEOLatLngIsValid(a1))
        {
          goto LABEL_66;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v12 == 10)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_66;
          }

          v13 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v14 = objc_msgSend_position(a1, v27[0]) + 1;
            if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
            {
              v16 = [a1 data];
              [v16 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
            {
              goto LABEL_62;
            }

            v17 = v13++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_60:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_66;
        }
      }
    }

    if (v12 != 11)
    {
      break;
    }

    if ((v10 & 7) != 0)
    {
      goto LABEL_66;
    }

    v20 = 0;
    while (1)
    {
      LOBYTE(v27[0]) = 0;
      v21 = objc_msgSend_position(a1, v27[0]) + 1;
      if (v21 >= objc_msgSend_position(a1) && (v22 = objc_msgSend_position(a1) + 1, v22 <= [a1 length]))
      {
        v23 = [a1 data];
        [v23 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
      {
        break;
      }

      v17 = v20++ > 8;
      if (v17)
      {
        goto LABEL_2;
      }
    }

LABEL_62:
    [a1 hasError];
  }

  if (v12 != 12 || v11 == 2)
  {
    goto LABEL_60;
  }

LABEL_66:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOCommonResponseAttributesIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_32;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v18 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v18 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v18 & 0x7F) << v3;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_32:
        v16 = [a1 hasError] ^ 1;
        goto LABEL_33;
      }

      if ((v10 >> 3) != 1)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_34;
      }

      v11 = 0;
      while (1)
      {
        v18 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v18 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v18 & 0x80000000) == 0)
        {
          break;
        }

        if (v11++ > 8)
        {
          goto LABEL_2;
        }
      }

      [a1 hasError];
    }
  }

  while (PBReaderSkipValueWithTag());
LABEL_34:
  v16 = 0;
LABEL_33:
  PBReaderRecallMark();
  return v16;
}

void *GEOETATrafficUpdateResponseReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 156))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETATrafficUpdateResponseReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 160));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 152) = objc_msgSend_position(v8);
  *(a1 + 156) = [v8 length];
  if (a3)
  {
    v9 = &GEOETATrafficUpdateResponseReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETATrafficUpdateResponseReadAllFrom_initialTag;
  }

  Specified = GEOETATrafficUpdateResponseReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETATrafficUpdateResponseCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 160));
  return Specified;
}

void *GEOETATrafficUpdateWaypointRouteReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETATrafficUpdateWaypointRouteReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 88));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 80) = objc_msgSend_position(v8);
  *(a1 + 84) = [v8 length];
  if (a3)
  {
    v9 = &GEOETATrafficUpdateWaypointRouteReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETATrafficUpdateWaypointRouteReadAllFrom_initialTag;
  }

  Specified = GEOETATrafficUpdateWaypointRouteReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETATrafficUpdateWaypointRouteCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOETATrafficUpdateWaypointRouteReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 88));
  [v3 setLength:*(a1 + 84)];
  [v3 seekToOffset:*(a1 + 80)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 100) >> 2) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 100)), 0xFFF8FFFDFFF7FFF9), 0x1000100010001)) + ((*(a1 + 100) >> 5) & 1) + ((*(a1 + 100) >> 4) & 1) + ((*(a1 + 100) >> 6) & 1));
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 > 4;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v59) = v14;
  HIDWORD(v59) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v60 = (v16 == 0) | v15;
  v61 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v59);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_132:
      v26 = 1;
      goto LABEL_135;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v62 & 0x7F) << v18;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_135;
    }

    v27 = v20 >> 3;
    v28 = v61;
    if ((v60 & 1) == 0)
    {
      v29 = v16;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 > 5)
    {
      break;
    }

    if (v27 > 3)
    {
      if (v27 != 4)
      {
        if (!v28 || (*(a1 + 100) & 8) != 0)
        {
LABEL_115:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_134;
          }

          goto LABEL_116;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_134;
        }

        v33 = objc_alloc_init(GEORouteIncident);
        if (!GEORouteIncidentReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_133;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateWaypointRoute *)a1 _addNoFlagsIncidentsOnUserWaypointRoute:v33];
        goto LABEL_98;
      }

      if (!v28)
      {
        goto LABEL_115;
      }

      if ((*(a1 + 100) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_134;
        }

        v52 = *(a1 + 100) << 6;
LABEL_131:
        v6 += v52 >> 15;
        goto LABEL_116;
      }

      v62 = 0;
      v63 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_134;
      }

      v33 = objc_alloc_init(GEOTraversalTimes);
      if (!GEOTraversalTimesReadAllFrom(v33, v3))
      {
        goto LABEL_133;
      }

      PBReaderRecallMark();
      v41 = 72;
      goto LABEL_92;
    }

    if (v27 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_115;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 100) |= 1u;
      while (1)
      {
        LOBYTE(v62) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v62 & 0x7F) << v34;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v24 = v35++ >= 9;
        if (v24)
        {
          v40 = 0;
          goto LABEL_121;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v36;
      }

LABEL_121:
      v51 = 92;
LABEL_126:
      *(a1 + v51) = v40;
      goto LABEL_116;
    }

    if (v27 == 2)
    {
      if (!v28 || (*(a1 + 100) & 0x80) != 0)
      {
        goto LABEL_115;
      }

      v62 = 0;
      v63 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_134;
      }

      v33 = objc_alloc_init(GEOETARoute);
      if (!GEOETARouteReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_133;
      }

      PBReaderRecallMark();
      [(GEOETATrafficUpdateWaypointRoute *)a1 _addNoFlagsRouteLeg:v33];
      goto LABEL_98;
    }

LABEL_109:
    if ((v59 & 1) == 0 || (*(a1 + 100) & 4) != 0)
    {
      goto LABEL_115;
    }

    if (!*(a1 + 16))
    {
      v49 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v50 = *(a1 + 16);
      *(a1 + 16) = v49;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v58 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
      goto LABEL_136;
    }

LABEL_116:
    if (!(BYTE4(v59) & 1 | (v6 != 0)))
    {
      goto LABEL_132;
    }
  }

  if (v27 > 7)
  {
    switch(v27)
    {
      case 8:
        if (!v28)
        {
          goto LABEL_115;
        }

        if ((*(a1 + 100) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_134;
          }

          v52 = *(a1 + 100) << 11;
          goto LABEL_131;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_134;
        }

        v33 = objc_alloc_init(GEONavigabilityInfo);
        if (!GEONavigabilityInfoReadAllFrom(v33, v3))
        {
          goto LABEL_133;
        }

        PBReaderRecallMark();
        v41 = 32;
LABEL_92:
        v42 = *(a1 + v41);
        *(a1 + v41) = v33;

        --v6;
        goto LABEL_116;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_115;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 100) |= 2u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v46 = objc_msgSend_position(v3) + 1;
          if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
          {
            v48 = [v3 data];
            [v48 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v45 |= (v62 & 0x7F) << v43;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v24 = v44++ >= 9;
          if (v24)
          {
            v40 = 0;
            goto LABEL_125;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v45;
        }

LABEL_125:
        v51 = 96;
        goto LABEL_126;
      case 0xA:
        if (!v28 || (*(a1 + 100) & 0x40) != 0)
        {
          goto LABEL_115;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_134;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_133;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateWaypointRoute *)a1 _addNoFlagsRouteGeniusDescription:v33];
        goto LABEL_98;
    }

    goto LABEL_109;
  }

  if (v27 != 6)
  {
    if (!v28 || (*(a1 + 100) & 0x20) != 0)
    {
      goto LABEL_115;
    }

    v62 = 0;
    v63 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_134;
    }

    v33 = objc_alloc_init(GEOWaypointRoute);
    if (!GEOWaypointRouteReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_133;
    }

    PBReaderRecallMark();
    [(GEOETATrafficUpdateWaypointRoute *)a1 _addNoFlagsNewWaypointRoutes:v33];
    goto LABEL_98;
  }

  if (!v28 || (*(a1 + 100) & 0x100) != 0)
  {
    goto LABEL_115;
  }

  v62 = 0;
  v63 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_134;
  }

  v33 = objc_alloc_init(GEOTrafficBannerText);
  if (GEOTrafficBannerTextReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOETATrafficUpdateWaypointRoute *)a1 _addNoFlagsTrafficBannerText:v33];
LABEL_98:

    goto LABEL_116;
  }

LABEL_133:

LABEL_134:
  v26 = 0;
LABEL_135:
  v58 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
  if ((v59 & 1) == 0)
  {
    goto LABEL_137;
  }

LABEL_136:
  *(a1 + v58[407]) |= 4u;
LABEL_137:
  if (v61 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v58[407]) |= 0x80u;
    *(a1 + v58[407]) |= 0x200u;
    *(a1 + v58[407]) |= 8u;
    *(a1 + v58[407]) |= 0x100u;
    *(a1 + v58[407]) |= 0x20u;
    *(a1 + v58[407]) |= 0x10u;
    *(a1 + v58[407]) |= 0x40u;
    goto LABEL_159;
  }

  if (v16)
  {
    while (1)
    {
LABEL_140:
      v54 = *v16++;
      v53 = v54;
      if (v54 > 5)
      {
        if (v53 > 7)
        {
          if (v53 == 8)
          {
            v55 = 16;
          }

          else
          {
            if (v53 != 10)
            {
              continue;
            }

            v55 = 64;
          }
        }

        else if (v53 == 6)
        {
          v55 = 256;
        }

        else
        {
          if (v53 != 7)
          {
            continue;
          }

          v55 = 32;
        }

        goto LABEL_157;
      }

      if (v53 > 3)
      {
        break;
      }

      if (v53 == 2)
      {
        v55 = 128;
LABEL_157:
        *(a1 + v58[407]) |= v55;
        continue;
      }

      if (!v53)
      {
        goto LABEL_159;
      }
    }

    if (v53 == 4)
    {
      v55 = 512;
    }

    else
    {
      if (v53 != 5)
      {
        goto LABEL_140;
      }

      v55 = 8;
    }

    goto LABEL_157;
  }

LABEL_159:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v61)
  {
    v56 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOUUIDReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_50;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v34 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34 & 0x7F) << v5;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_50;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v36 & 0x7F) << v15;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOUUID__high;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOUUID__high;
LABEL_45:
          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v17;
          }

LABEL_48:
          *(a1 + *v23) = v22;
          goto LABEL_49;
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_49:
        v31 = objc_msgSend_position(v3);
        if (v31 >= [v3 length])
        {
          goto LABEL_50;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v35 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v35 & 0x7F) << v24;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          v22 = 0;
          v23 = &OBJC_IVAR___GEOUUID__low;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOUUID__low;
      goto LABEL_45;
    }

LABEL_50:
    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

uint64_t GEOCommonResponseAttributesReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_36;
            }
          }

          if ([v3 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_36:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_39;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_39:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

void *GEOETAStepReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 80);
  v12 = vld1_dup_s16(v11);
  v13 = vand_s8(vshl_u16(v12, 0xFFFBFFF9FFFAFFF8), 0x1000100010001);
  v13.i16[0] = vaddv_s16(v13);
  v14 = v13.i32[0];
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 1;
  v17 = v16 & ~v10 | v8;
  v18 = v10 | v16;
  LODWORD(v80) = v17;
  HIDWORD(v80) = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v81 = (v19 == 0) | v18;
  v82 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3, v80);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_154:
      v29 = 1;
      goto LABEL_155;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v83) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v83 & 0x7F) << v21;
      if ((v83 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_155;
    }

    v30 = v23 >> 3;
    v31 = v82;
    if ((v81 & 1) == 0)
    {
      v32 = v19;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v30 > 4)
    {
      break;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_123;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 80) |= 0x10u;
        while (1)
        {
          LOBYTE(v83) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v83 & 0x7F) << v63;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v27 = v64++ >= 9;
          if (v27)
          {
            v42 = 0;
            goto LABEL_136;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v65;
        }

LABEL_136:
        v72 = 76;
        goto LABEL_145;
      }

      if (!v31)
      {
        goto LABEL_123;
      }

      if ((*(a1 + 80) & 0x100) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_176;
        }

        v73 = *(a1 + 80) << 7;
        goto LABEL_152;
      }

      v83 = 0;
      v84 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_176;
      }

      v43 = objc_alloc_init(GEOTimeCheckpoints);
      if (!GEOTimeCheckpointsReadAllFrom(v43, v3, v9 & 1))
      {
        goto LABEL_175;
      }

      PBReaderRecallMark();
      v44 = 40;
      goto LABEL_116;
    }

    if (v30 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_123;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      *(a1 + 80) |= 4u;
      while (1)
      {
        LOBYTE(v83) = 0;
        v54 = objc_msgSend_position(v3) + 1;
        if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
        {
          v56 = [v3 data];
          [v56 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v53 |= (v83 & 0x7F) << v51;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v51 += 7;
        v27 = v52++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_128;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v53;
      }

LABEL_128:
      v72 = 68;
      goto LABEL_145;
    }

    if (v30 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_123;
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 80) |= 2u;
      while (1)
      {
        LOBYTE(v83) = 0;
        v39 = objc_msgSend_position(v3) + 1;
        if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
        {
          v41 = [v3 data];
          [v41 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v38 |= (v83 & 0x7F) << v36;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v27 = v37++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_140;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v38;
      }

LABEL_140:
      v72 = 64;
LABEL_145:
      *(a1 + v72) = v42;
      goto LABEL_153;
    }

LABEL_117:
    if ((v80 & 1) == 0 || (*(a1 + 80) & 0x20) != 0)
    {
LABEL_123:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_153;
    }

    if (!*(a1 + 16))
    {
      v70 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v71 = *(a1 + 16);
      *(a1 + 16) = v70;
    }

    if (!PBUnknownFieldAdd())
    {
      v29 = 0;
      v79 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
      goto LABEL_156;
    }

LABEL_153:
    if (!(BYTE4(v80) & 1 | (v6 != 0)))
    {
      goto LABEL_154;
    }
  }

  if (v30 <= 6)
  {
    if (v30 == 5)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_123;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      *(a1 + 80) |= 8u;
      while (1)
      {
        LOBYTE(v83) = 0;
        v60 = objc_msgSend_position(v3) + 1;
        if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 1, v61 <= [v3 length]))
        {
          v62 = [v3 data];
          [v62 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v59 |= (v83 & 0x7F) << v57;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v57 += 7;
        v27 = v58++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_132;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v59;
      }

LABEL_132:
      v72 = 72;
      goto LABEL_145;
    }

    if (!v31)
    {
      goto LABEL_123;
    }

    if ((*(a1 + 80) & 0x40) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_176;
      }

      v73 = *(a1 + 80) << 9;
      goto LABEL_152;
    }

    v83 = 0;
    v84 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_176;
    }

    v43 = objc_alloc_init(GEOStopStepEVInfo);
    if (!GEOStopStepEVInfoReadAllFrom(v43, v3))
    {
      goto LABEL_175;
    }

    PBReaderRecallMark();
    v44 = 24;
    goto LABEL_116;
  }

  if (v30 != 7)
  {
    if (v30 == 8)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_123;
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      *(a1 + 80) |= 1u;
      while (1)
      {
        LOBYTE(v83) = 0;
        v48 = objc_msgSend_position(v3) + 1;
        if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
        {
          v50 = [v3 data];
          [v50 getBytes:&v83 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v47 |= (v83 & 0x7F) << v45;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v45 += 7;
        v27 = v46++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_144;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v47;
      }

LABEL_144:
      v72 = 60;
      goto LABEL_145;
    }

    goto LABEL_117;
  }

  if (!v31)
  {
    goto LABEL_123;
  }

  if ((*(a1 + 80) & 0x80) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_176;
    }

    v73 = *(a1 + 80) << 8;
LABEL_152:
    v6 += v73 >> 15;
    goto LABEL_153;
  }

  v83 = 0;
  v84 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_176;
  }

  v43 = objc_alloc_init(GEOEVStateInfo);
  if (GEOEVStateInfoReadAllFrom(v43, v3))
  {
    PBReaderRecallMark();
    v44 = 32;
LABEL_116:
    v69 = *(a1 + v44);
    *(a1 + v44) = v43;

    --v6;
    goto LABEL_153;
  }

LABEL_175:

LABEL_176:
  v29 = 0;
LABEL_155:
  v79 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
  if ((v80 & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_156:
  *(a1 + v79[326]) |= 0x20u;
LABEL_157:
  if (v82 & 1 | ((v29 & 1) == 0))
  {
    *(a1 + v79[326]) |= 0x100u;
    *(a1 + v79[326]) |= 0x40u;
    *(a1 + v79[326]) |= 0x80u;
    goto LABEL_169;
  }

  if (v19)
  {
    while (2)
    {
      while (1)
      {
        v75 = *v19++;
        v74 = v75;
        if (v75 > 5)
        {
          break;
        }

        if (v74 == 4)
        {
          v76 = 256;
LABEL_167:
          *(a1 + v79[326]) |= v76;
          continue;
        }

        if (!v74)
        {
          goto LABEL_169;
        }
      }

      if (v74 == 7)
      {
        v76 = 128;
      }

      else
      {
        if (v74 != 6)
        {
          continue;
        }

        v76 = 64;
      }

      goto LABEL_167;
    }
  }

LABEL_169:
  if (v29)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v82)
  {
    v77 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOWaypointInfoReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 112));
  [v3 setLength:*(a1 + 108)];
  [v3 seekToOffset:*(a1 + 104)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 120);
  v12 = vand_s8(vshl_u16(vdup_n_s16(v11), 0xFFFCFFF7FFF8FFF9), 0x1000100010001);
  v12.i16[0] = vaddv_s16(v12);
  v13 = v12.i32[0] + ((v11 >> 5) & 1);
  v14 = vand_s8(vdup_n_s32(v11), 0xFFFF0000FFFFLL);
  v15.i32[0] = (v11 >> 2) & 1;
  v15.i32[1] = v13;
  v16 = vadd_s32(vadd_s32(vand_s8(vshl_u32(v14, 0xFFFFFFFDFFFFFFF5), 0x100000001), vand_s8(vshl_u32(v14, 0xFFFFFFFAFFFFFFF6), 0x100000001)), v15);
  v17 = v16.i32[0] + v16.u16[2];
  while (1)
  {
    v18 = a3[v6];
    if (v18 > -3)
    {
      break;
    }

    if (v18 == -4)
    {
      ++v17;
      v8 = 1;
      goto LABEL_15;
    }

    if (v18 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v17;
LABEL_15:
    ++v6;
  }

  if (v18 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v18 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v19 = v17 > 6;
  v64 = v9;
  v65 = v19 & ~v10 | v8;
  v20 = v10 | v19;
  v66 = v20 | v8;
  if ((v20 | v7))
  {
    v21 = 0;
  }

  else
  {
    v21 = a3;
  }

  v67 = (v21 == 0) | v20;
  v68 = v20;
  while (1)
  {
    v22 = objc_msgSend_position(v3);
    if (v22 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_155:
      v31 = 1;
      goto LABEL_158;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v69) = 0;
      v26 = objc_msgSend_position(v3) + 1;
      if (v26 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3) + 1, v27 <= [v3 length]))
      {
        v28 = [v3 data];
        [v28 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v25 |= (v69 & 0x7F) << v23;
      if ((v69 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v29 = v24++ >= 9;
      if (v29)
      {
        v25 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v25 = 0;
    }

LABEL_33:
    v30 = [v3 hasError];
    v31 = 1;
    if ((v30 & 1) != 0 || (v25 & 7) == 4)
    {
      goto LABEL_158;
    }

    v32 = v25 >> 3;
    v33 = v68;
    if ((v67 & 1) == 0)
    {
      v34 = v21;
      do
      {
        v36 = *v34++;
        v35 = v36;
        v33 = v36 != 0;
        if (v36)
        {
          v37 = v35 == v32;
        }

        else
        {
          v37 = 1;
        }
      }

      while (!v37);
    }

    if (v32 <= 5)
    {
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          if (!v33)
          {
            goto LABEL_125;
          }

          if ((*(a1 + 120) & 0x100) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_157;
            }

            v58 = *(a1 + 120) << 7;
            goto LABEL_153;
          }

          v69 = 0;
          v70 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_157;
          }

          v45 = objc_alloc_init(GEOLatLng);
          if (!GEOLatLngReadAllFrom(v45, v3))
          {
            goto LABEL_156;
          }

          PBReaderRecallMark();
          v46 = 72;
        }

        else if (v32 == 4)
        {
          if (!v33)
          {
            goto LABEL_125;
          }

          if ((*(a1 + 120) & 0x200) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_157;
            }

            v58 = *(a1 + 120) << 6;
            goto LABEL_153;
          }

          v69 = 0;
          v70 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_157;
          }

          v45 = objc_alloc_init(GEOStyleAttributes);
          if (!GEOStyleAttributesReadAllFrom(v45, v3))
          {
            goto LABEL_156;
          }

          PBReaderRecallMark();
          v46 = 80;
        }

        else
        {
          if (!v33)
          {
            goto LABEL_125;
          }

          if ((*(a1 + 120) & 0x10) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_157;
            }

            v58 = *(a1 + 120) << 11;
            goto LABEL_153;
          }

          v69 = 0;
          v70 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_157;
          }

          v45 = objc_alloc_init(GEOPBTransitArtwork);
          if (!GEOPBTransitArtworkReadAllFrom(v45, v3, v64 & 1))
          {
            goto LABEL_156;
          }

          PBReaderRecallMark();
          v46 = 32;
        }

LABEL_117:
        v48 = *(a1 + v46);
        *(a1 + v46) = v45;
        goto LABEL_118;
      }

      if (v32 == 1)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_125;
        }

        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 120) |= 1u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v52 = objc_msgSend_position(v3) + 1;
          if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
          {
            v54 = [v3 data];
            [v54 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v51 |= (v69 & 0x7F) << v49;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v29 = v50++ >= 9;
          if (v29)
          {
            v55 = 0;
            goto LABEL_130;
          }
        }

        if ([v3 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v51;
        }

LABEL_130:
        *(a1 + 56) = v55;
        goto LABEL_154;
      }

      if (v32 == 2)
      {
        if (!v33)
        {
          goto LABEL_125;
        }

        if ((*(a1 + 120) & 0x80) == 0)
        {
          v47 = PBReaderReadString();
          v48 = *(a1 + 64);
          *(a1 + 64) = v47;
LABEL_118:

          --v6;
          goto LABEL_154;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_157;
        }

        v58 = *(a1 + 120) << 8;
LABEL_153:
        v6 += v58 >> 15;
        goto LABEL_154;
      }

      goto LABEL_119;
    }

    if (v32 > 8)
    {
      break;
    }

    if (v32 == 6)
    {
      if (!v33)
      {
        goto LABEL_125;
      }

      if ((*(a1 + 120) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_157;
        }

        v58 = *(a1 + 120) << 10;
        goto LABEL_153;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_157;
      }

      v45 = objc_alloc_init(GEOEVChargingInfo);
      if (!GEOEVChargingInfoReadAllFrom(v45, v3, v64 & 1))
      {
        goto LABEL_156;
      }

      PBReaderRecallMark();
      v46 = 40;
      goto LABEL_117;
    }

    if (v32 == 7)
    {
      if (!v33)
      {
        goto LABEL_125;
      }

      if ((*(a1 + 120) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_157;
        }

        v58 = *(a1 + 120) << 12;
        goto LABEL_153;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_157;
      }

      v45 = objc_alloc_init(GEOARInfo);
      if (!GEOARInfoReadAllFrom(v45, v3))
      {
        goto LABEL_156;
      }

      PBReaderRecallMark();
      v46 = 24;
      goto LABEL_117;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_125;
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    *(a1 + 120) |= 2u;
    while (1)
    {
      LOBYTE(v69) = 0;
      v41 = objc_msgSend_position(v3) + 1;
      if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
      {
        v43 = [v3 data];
        [v43 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v40 |= (v69 & 0x7F) << v38;
      if ((v69 & 0x80) == 0)
      {
        break;
      }

      v38 += 7;
      v29 = v39++ >= 9;
      if (v29)
      {
        v44 = 0;
        goto LABEL_134;
      }
    }

    if ([v3 hasError])
    {
      v44 = 0;
    }

    else
    {
      v44 = v40;
    }

LABEL_134:
    *(a1 + 116) = v44;
LABEL_154:
    if (!(v66 & 1 | (v6 != 0)))
    {
      goto LABEL_155;
    }
  }

  if (v32 != 9)
  {
    if (v32 == 10)
    {
      if (!v33)
      {
        goto LABEL_125;
      }

      if ((*(a1 + 120) & 0x400) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_157;
        }

        v58 = 32 * *(a1 + 120);
        goto LABEL_153;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_157;
      }

      v45 = objc_alloc_init(GEOWaypointUUID);
      if (!GEOWaypointUUIDReadAllFrom(v45, v3))
      {
        goto LABEL_156;
      }

      PBReaderRecallMark();
      v46 = 88;
      goto LABEL_117;
    }

    if (v32 == 11)
    {
      if (!v33)
      {
        goto LABEL_125;
      }

      if ((*(a1 + 120) & 0x800) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_157;
        }

        v58 = 16 * *(a1 + 120);
        goto LABEL_153;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_157;
      }

      v45 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v45, v3, v64 & 1))
      {
        goto LABEL_156;
      }

      PBReaderRecallMark();
      v46 = 96;
      goto LABEL_117;
    }

LABEL_119:
    if ((v65 & 1) == 0 || (*(a1 + 120) & 4) != 0)
    {
LABEL_125:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_154;
    }

    if (!*(a1 + 16))
    {
      v56 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v57 = *(a1 + 16);
      *(a1 + 16) = v56;
    }

    if (!PBUnknownFieldAdd())
    {
      v31 = 0;
      goto LABEL_159;
    }

    goto LABEL_154;
  }

  if (!v33)
  {
    goto LABEL_125;
  }

  if ((*(a1 + 120) & 0x40) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_157;
    }

    v58 = *(a1 + 120) << 9;
    goto LABEL_153;
  }

  v69 = 0;
  v70 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_157;
  }

  v45 = objc_alloc_init(GEOAddress);
  if (GEOAddressReadAllFrom(v45, v3, v64 & 1))
  {
    PBReaderRecallMark();
    v46 = 48;
    goto LABEL_117;
  }

LABEL_156:

LABEL_157:
  v31 = 0;
LABEL_158:
  if ((v65 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_159:
  *(a1 + 120) |= 4u;
LABEL_160:
  if (v68 || (v31 & 1) == 0)
  {
    *(a1 + 120) |= 0x80u;
    *(a1 + 120) |= 0x100u;
    *(a1 + 120) |= 0x200u;
    *(a1 + 120) |= 0x10u;
    *(a1 + 120) |= 0x20u;
    *(a1 + 120) |= 8u;
    *(a1 + 120) |= 0x40u;
    *(a1 + 120) |= 0x400u;
    *(a1 + 120) |= 0x800u;
    goto LABEL_186;
  }

  if (v21)
  {
    while (1)
    {
      v60 = *v21++;
      v59 = v60;
      if (v60 > 5)
      {
        if (v59 <= 8)
        {
          if (v59 == 6)
          {
            v61 = 32;
          }

          else
          {
            if (v59 != 7)
            {
              continue;
            }

            v61 = 8;
          }
        }

        else
        {
          switch(v59)
          {
            case 9:
              v61 = 64;
              break;
            case 10:
              v61 = 1024;
              break;
            case 11:
              v61 = 2048;
              break;
            default:
              continue;
          }
        }

        goto LABEL_184;
      }

      if (v59 > 3)
      {
        if (v59 == 4)
        {
          v61 = 512;
        }

        else
        {
          if (v59 != 5)
          {
            continue;
          }

          v61 = 16;
        }

        goto LABEL_184;
      }

      if (v59 == 2)
      {
        break;
      }

      if (v59 == 3)
      {
        v61 = 256;
LABEL_184:
        *(a1 + 120) |= v61;
        continue;
      }

      if (!v59)
      {
        goto LABEL_186;
      }
    }

    v61 = 128;
    goto LABEL_184;
  }

LABEL_186:
  if (v31)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v68)
  {
    v62 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOTraversalTimesReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v49 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v49 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v49 & 0x7F) << v5;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        v14 = v7 >> 3;
        if (v14 <= 2)
        {
          if (v14 == 1)
          {
            v39 = 0;
            v40 = 0;
            v17 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v54 = 0;
              v41 = objc_msgSend_position(v3);
              if (v41 + 1 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3), v42 + 1 <= [v3 length]))
              {
                v43 = [v3 data];
                [v43 getBytes:&v54 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v54 & 0x7F) << v39;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v21 = v40++ > 8;
              if (v21)
              {
                v22 = 0;
                v23 = &OBJC_IVAR___GEOTraversalTimes__estimatedSeconds;
                goto LABEL_82;
              }
            }

            v23 = &OBJC_IVAR___GEOTraversalTimes__estimatedSeconds;
            goto LABEL_79;
          }

          if (v14 == 2)
          {
            v24 = 0;
            v25 = 0;
            v17 = 0;
            *(a1 + 36) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v26 = objc_msgSend_position(v3);
              if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
              {
                v28 = [v3 data];
                [v28 getBytes:&v53 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v53 & 0x7F) << v24;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v21 = v25++ > 8;
              if (v21)
              {
                v22 = 0;
                v23 = &OBJC_IVAR___GEOTraversalTimes__historicalEstimatedSeconds;
                goto LABEL_82;
              }
            }

            v23 = &OBJC_IVAR___GEOTraversalTimes__historicalEstimatedSeconds;
LABEL_79:
            if ([v3 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v17;
            }

LABEL_82:
            *(a1 + *v23) = v22;
            goto LABEL_83;
          }
        }

        else
        {
          switch(v14)
          {
            case 3:
              v29 = 0;
              v30 = 0;
              v17 = 0;
              *(a1 + 36) |= 8u;
              while (1)
              {
                v52 = 0;
                v31 = objc_msgSend_position(v3);
                if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
                {
                  v33 = [v3 data];
                  [v33 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v17 |= (v52 & 0x7F) << v29;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v21 = v30++ > 8;
                if (v21)
                {
                  v22 = 0;
                  v23 = &OBJC_IVAR___GEOTraversalTimes__freeflowEstimatedSeconds;
                  goto LABEL_82;
                }
              }

              v23 = &OBJC_IVAR___GEOTraversalTimes__freeflowEstimatedSeconds;
              goto LABEL_79;
            case 4:
              v34 = 0;
              v35 = 0;
              v17 = 0;
              *(a1 + 36) |= 1u;
              while (1)
              {
                v51 = 0;
                v36 = objc_msgSend_position(v3);
                if (v36 + 1 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3), v37 + 1 <= [v3 length]))
                {
                  v38 = [v3 data];
                  [v38 getBytes:&v51 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v17 |= (v51 & 0x7F) << v34;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v34 += 7;
                v21 = v35++ > 8;
                if (v21)
                {
                  v22 = 0;
                  v23 = &OBJC_IVAR___GEOTraversalTimes__aggressiveEstimatedSeconds;
                  goto LABEL_82;
                }
              }

              v23 = &OBJC_IVAR___GEOTraversalTimes__aggressiveEstimatedSeconds;
              goto LABEL_79;
            case 5:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 36) |= 2u;
              while (1)
              {
                v50 = 0;
                v18 = objc_msgSend_position(v3);
                if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
                {
                  v20 = [v3 data];
                  [v20 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v17 |= (v50 & 0x7F) << v15;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v21 = v16++ > 8;
                if (v21)
                {
                  v22 = 0;
                  v23 = &OBJC_IVAR___GEOTraversalTimes__conservativeEstimatedSeconds;
                  goto LABEL_82;
                }
              }

              v23 = &OBJC_IVAR___GEOTraversalTimes__conservativeEstimatedSeconds;
              goto LABEL_79;
          }
        }

        if (!*(a1 + 8))
        {
          v44 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v45 = *(a1 + 8);
          *(a1 + 8) = v44;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_85;
        }

LABEL_83:
        v46 = objc_msgSend_position(v3);
      }

      while (v46 < [v3 length]);
    }

    v47 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_85:
    v47 = 0;
  }

  objc_sync_exit(v3);

  return v47;
}

void *GEOWaypointRouteReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 156))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOWaypointRouteReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 160));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 152) = objc_msgSend_position(v8);
  *(a1 + 156) = [v8 length];
  if (a3)
  {
    v9 = &GEOWaypointRouteReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOWaypointRouteReadAllFrom_initialTag;
  }

  Specified = GEOWaypointRouteReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOWaypointRouteCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 160));
  return Specified;
}

void *GEOWaypointRouteReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 160));
  [v3 setLength:*(a1 + 156)];
  [v3 seekToOffset:*(a1 + 152)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 188);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDA20), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBDA30), v13)), vandq_s8(vshlq_u32(v12, xmmword_187FBDA40), v13))) + (HIWORD(v11) & 1) + ((v11 >> 7) & 1) + ((v11 >> 6) & 1);
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 0xA;
  v99 = v9;
  v100 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  if ((v10 | v16 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v19 = objc_msgSend_position(v3);
  if (v19 >= [v3 length])
  {
LABEL_247:
    v28 = 1;
    goto LABEL_248;
  }

  v101 = v17 | v8;
  v102 = (v18 == 0) | v17;
  v103 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_247;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v104) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v104 & 0x7F) << v20;
      if ((v104 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    v17 = v103;
    if (v27)
    {
      goto LABEL_248;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_248;
    }

    v30 = v22 >> 3;
    v31 = v103;
    if ((v102 & 1) == 0)
    {
      v32 = v18;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    switch(v30)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 188) |= 4u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v39 = objc_msgSend_position(v3) + 1;
          if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
          {
            v41 = [v3 data];
            [v41 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v38 |= (v104 & 0x7F) << v36;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v26 = v37++ >= 9;
          if (v26)
          {
            v42 = 0;
LABEL_210:
            v86 = 172;
            goto LABEL_215;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

        goto LABEL_210;
      case 2:
        if (!v31 || (*(a1 + 189) & 0x40) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEORoute);
        if (!GEORouteReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsRouteLeg:v43];
        goto LABEL_176;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 188) |= 8u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v54 = objc_msgSend_position(v3) + 1;
          if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
          {
            v56 = [v3 data];
            [v56 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v53 |= (v104 & 0x7F) << v51;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v26 = v52++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_202;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v53;
        }

LABEL_202:
        v86 = 176;
        goto LABEL_215;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 188) |= 2u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v60 = objc_msgSend_position(v3) + 1;
          if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 1, v61 <= [v3 length]))
          {
            v62 = [v3 data];
            [v62 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v59 |= (v104 & 0x7F) << v57;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v26 = v58++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_206;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v59;
        }

LABEL_206:
        v86 = 168;
        goto LABEL_215;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 188) |= 0x10u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v48 = objc_msgSend_position(v3) + 1;
          if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
          {
            v50 = [v3 data];
            [v50 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v47 |= (v104 & 0x7F) << v45;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v26 = v46++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_198;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v47;
        }

LABEL_198:
        v86 = 180;
        goto LABEL_215;
      case 6:
        if (!v31 || (*(a1 + 189) & 8) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEONameInfo);
        if (!GEONameInfoReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsName:v43];
        goto LABEL_176;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 188) |= 1u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v75 = objc_msgSend_position(v3) + 1;
          if (v75 >= objc_msgSend_position(v3) && (v76 = objc_msgSend_position(v3) + 1, v76 <= [v3 length]))
          {
            v77 = [v3 data];
            [v77 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v74 |= (v104 & 0x7F) << v72;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v26 = v73++ >= 9;
          if (v26)
          {
            v42 = 0;
            goto LABEL_214;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v74;
        }

LABEL_214:
        v86 = 164;
LABEL_215:
        *(a1 + v86) = v42;
        goto LABEL_216;
      case 8:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 190) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 12) >> 31;
          goto LABEL_231;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOTraversalTimes);
        if (!GEOTraversalTimesReadAllFrom(v43, v3))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        v44 = 136;
        goto LABEL_182;
      case 9:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 189) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 22) >> 31;
LABEL_231:
          v6 += v87;
LABEL_232:
          if (!(v101 & 1 | (v6 != 0)))
          {
            goto LABEL_247;
          }

          v88 = objc_msgSend_position(v3);
          if (v88 >= [v3 length])
          {
            goto LABEL_247;
          }

          continue;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOWaypointRouteFeatures);
        if (GEOWaypointRouteFeaturesReadAllFrom(v43, v3))
        {
          PBReaderRecallMark();
          v44 = 56;
LABEL_182:
          v78 = *(a1 + v44);
          *(a1 + v44) = v43;

          --v6;
          goto LABEL_232;
        }

LABEL_275:

LABEL_276:
        v28 = 0;
LABEL_248:
        if (v100)
        {
LABEL_249:
          *(a1 + 188) |= 0x40u;
        }

        if (v17 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 188) |= 0x4000u;
          *(a1 + 188) |= 0x800u;
          *(a1 + 188) |= 0x80000u;
          *(a1 + 188) |= 0x100000u;
          *(a1 + 188) |= 0x200u;
          *(a1 + 188) |= 0x8000u;
          *(a1 + 188) |= 0x100u;
          *(a1 + 188) |= 0x40000u;
          *(a1 + 188) |= 0x20000u;
          *(a1 + 188) |= 0x400u;
          *(a1 + 188) |= 0x2000u;
          *(a1 + 188) |= 0x1000u;
          *(a1 + 188) |= 0x10000u;
          *(a1 + 188) |= 0x80u;
        }

        else if (v18)
        {
          while (1)
          {
            v96 = *v18++;
            v95 = 0x4000;
            switch(v96)
            {
              case 0:
                goto LABEL_269;
              case 2:
                goto LABEL_267;
              case 6:
                v95 = 2048;
                goto LABEL_267;
              case 8:
                v95 = 0x80000;
                goto LABEL_267;
              case 9:
                v95 = 512;
                goto LABEL_267;
              case 10:
                v95 = 0x8000;
                goto LABEL_267;
              case 11:
                v95 = 256;
                goto LABEL_267;
              case 12:
                v95 = 0x40000;
                goto LABEL_267;
              case 13:
                v95 = 0x20000;
                goto LABEL_267;
              case 14:
                v95 = 1024;
                goto LABEL_267;
              case 15:
                v95 = 0x2000;
                goto LABEL_267;
              case 16:
                v95 = 4096;
                goto LABEL_267;
              case 17:
                v95 = 0x10000;
                goto LABEL_267;
              case 18:
                v95 = 128;
                goto LABEL_267;
              case 19:
                v95 = 0x100000;
LABEL_267:
                *(a1 + 188) |= v95;
                break;
              default:
                continue;
            }
          }
        }

LABEL_269:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v17 & 1) == 0)
          {
            return v3;
          }

LABEL_273:
          v97 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v17)
          {
            goto LABEL_273;
          }
        }

        return v3;
      case 10:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 189) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 16) >> 31;
          goto LABEL_231;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEORoutePlanningInfo);
        if (!GEORoutePlanningInfoReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        v44 = 104;
        goto LABEL_182;
      case 11:
        if (!v31 || (*(a1 + 189) & 1) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOArrivalParameters);
        if (!GEOArrivalParametersReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsArrivalParameters:v43];
        goto LABEL_176;
      case 12:
        if (!v31 || (*(a1 + 190) & 4) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOTrafficSignal);
        if (!GEOTrafficSignalReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsTrafficSignal:v43];
        goto LABEL_176;
      case 13:
        if (!v31 || (*(a1 + 190) & 2) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOTrafficCamera);
        if (!GEOTrafficCameraReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsTrafficCamera:v43];
        goto LABEL_176;
      case 14:
        if (!v31 || (*(a1 + 189) & 4) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEORouteIncident);
        if (!GEORouteIncidentReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsIncidentsOnRouteLegs:v43];
        goto LABEL_176;
      case 15:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 189) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 18) >> 31;
          goto LABEL_231;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEORestrictionZoneInfo);
        if (!GEORestrictionZoneInfoReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        v44 = 88;
        goto LABEL_182;
      case 16:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 189) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 19) >> 31;
          goto LABEL_231;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOOutOfMapsAlertsInfo);
        if (!GEOOutOfMapsAlertsInfoReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        v44 = 80;
        goto LABEL_182;
      case 17:
        if (!v31 || (*(a1 + 190) & 1) != 0)
        {
          goto LABEL_193;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOTrafficBannerText);
        if (!GEOTrafficBannerTextReadAllFrom(v43, v3, v99 & 1))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        [(GEOWaypointRoute *)a1 _addNoFlagsTrafficBannerText:v43];
LABEL_176:

        goto LABEL_232;
      case 18:
        if (!v31 || (*(a1 + 188) & 0x80) != 0)
        {
          goto LABEL_193;
        }

        if (v29 == 2)
        {
          v104 = 0;
          v105 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_276;
          }

          while (1)
          {
            v63 = objc_msgSend_position(v3);
            if (v63 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v64 = 0;
            v65 = 0;
            v66 = 0;
            while (1)
            {
              v106 = 0;
              v67 = objc_msgSend_position(v3) + 1;
              if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 1, v68 <= [v3 length]))
              {
                v69 = [v3 data];
                [v69 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v66 |= (v106 & 0x7F) << v64;
              if ((v106 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              v26 = v65++ >= 9;
              if (v26)
              {
                goto LABEL_139;
              }
            }

            [v3 hasError];
LABEL_139:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          while (1)
          {
            LOBYTE(v104) = 0;
            v92 = objc_msgSend_position(v3) + 1;
            if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
            {
              v94 = [v3 data];
              [v94 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v91 |= (v104 & 0x7F) << v89;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v89 += 7;
            v26 = v90++ >= 9;
            if (v26)
            {
              goto LABEL_246;
            }
          }

          [v3 hasError];
LABEL_246:
          PBRepeatedInt32Add();
        }

LABEL_216:
        v17 = v103;
        goto LABEL_232;
      case 19:
        if (!v31)
        {
          goto LABEL_193;
        }

        if ((*(a1 + 190) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }

          v87 = (*(a1 + 188) << 11) >> 31;
          goto LABEL_231;
        }

        v104 = 0;
        v105 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_276;
        }

        v43 = objc_alloc_init(GEOTraversalTimes);
        if (!GEOTraversalTimesReadAllFrom(v43, v3))
        {
          goto LABEL_275;
        }

        PBReaderRecallMark();
        v44 = 144;
        goto LABEL_182;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_193;
        }

        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 188) |= 0x20u;
        while (1)
        {
          LOBYTE(v104) = 0;
          v82 = objc_msgSend_position(v3) + 1;
          if (v82 >= objc_msgSend_position(v3) && (v83 = objc_msgSend_position(v3) + 1, v83 <= [v3 length]))
          {
            v84 = [v3 data];
            [v84 getBytes:&v104 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v81 |= (v104 & 0x7F) << v79;
          if ((v104 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v26 = v80++ >= 9;
          if (v26)
          {
            v85 = 0;
            goto LABEL_218;
          }
        }

        v85 = (v81 != 0) & ~[v3 hasError];
LABEL_218:
        *(a1 + 184) = v85;
        goto LABEL_216;
      default:
        if ((v100 & 1) == 0 || (*(a1 + 188) & 0x40) != 0)
        {
LABEL_193:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_276;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v70 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v71 = *(a1 + 16);
            *(a1 + 16) = v70;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_249;
          }
        }

        goto LABEL_232;
    }
  }
}

void *GEORoutePlanningInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 116))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORoutePlanningInfoReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 120));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 112) = objc_msgSend_position(v8);
  *(a1 + 116) = [v8 length];
  if (a3)
  {
    v9 = &GEORoutePlanningInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORoutePlanningInfoReadAllFrom_initialTag;
  }

  Specified = GEORoutePlanningInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORoutePlanningInfoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 120));
  return Specified;
}

void *GEOPBTransitArtworkReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPBTransitArtworkReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOPBTransitArtworkReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPBTransitArtworkReadAllFrom_initialTag;
  }

  Specified = GEOPBTransitArtworkReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPBTransitArtworkCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOFormatArgumentReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 148))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOFormatArgumentReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 152));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 144) = objc_msgSend_position(v8);
  *(a1 + 148) = [v8 length];
  if (a3)
  {
    v9 = &GEOFormatArgumentReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOFormatArgumentReadAllFrom_initialTag;
  }

  Specified = GEOFormatArgumentReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOFormatArgumentCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 152));
  return Specified;
}

uint64_t GEOWaypointRouteFeaturesReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_59;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v39 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v39 & 0x7F) << v5;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          goto LABEL_59;
        }

        v14 = v7 >> 3;
        if (v14 == 3)
        {
          v29 = 0;
          v30 = 0;
          v17 = 0;
          *(a1 + 20) |= 4u;
          while (1)
          {
            v40 = 0;
            v31 = objc_msgSend_position(v3);
            if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
            {
              v33 = [v3 data];
              [v33 getBytes:&v40 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v40 & 0x7F) << v29;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v21 = v30++ > 8;
            if (v21)
            {
              LOBYTE(v22) = 0;
              v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsTraffic;
              goto LABEL_57;
            }
          }

          v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsTraffic;
          goto LABEL_56;
        }

        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v42 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v42 & 0x7F) << v15;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v21 = v16++ > 8;
            if (v21)
            {
              LOBYTE(v22) = 0;
              v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsTolls;
              goto LABEL_57;
            }
          }

          v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsTolls;
          goto LABEL_56;
        }

        if (!*(a1 + 8))
        {
          v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v35 = *(a1 + 8);
          *(a1 + 8) = v34;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_58:
        v36 = objc_msgSend_position(v3);
        if (v36 >= [v3 length])
        {
          goto LABEL_59;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 20) |= 1u;
      while (1)
      {
        v41 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          LOBYTE(v22) = 0;
          v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsHighways;
          goto LABEL_57;
        }
      }

      v23 = &OBJC_IVAR___GEOWaypointRouteFeatures__avoidsHighways;
LABEL_56:
      v22 = (v17 != 0) & ~[v3 hasError];
LABEL_57:
      *(a1 + *v23) = v22;
      goto LABEL_58;
    }

LABEL_59:
    v37 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_60:
    v37 = 0;
  }

  objc_sync_exit(v3);

  return v37;
}

id GEOGetGEORouteBuilderLog()
{
  if (GEOGetGEORouteBuilderLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGEORouteBuilderLog::onceToken, &__block_literal_global_106848);
  }

  v1 = GEOGetGEORouteBuilderLog::log;

  return v1;
}

void *GEORouteReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 508))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORouteReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 512));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 504) = objc_msgSend_position(v8);
  *(a1 + 508) = [v8 length];
  if (a3)
  {
    v9 = &GEORouteReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORouteReadAllFrom_initialTag;
  }

  Specified = GEORouteReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORouteCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 512));
  return Specified;
}

void *GEORouteReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 512));
  [v3 setLength:*(a1 + 508)];
  [v3 seekToOffset:*(a1 + 504)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 580);
  v12 = vdupq_n_s64(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vdupq_n_s32(v11);
  v15 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD8F0), vshlq_u64(v12, xmmword_187FBD8E0)), v13), vandq_s8(vshlq_u32(v14, xmmword_187FBD900), v13)), vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD920), vshlq_u64(v12, xmmword_187FBD910)), v13), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD940), vshlq_u64(v12, xmmword_187FBD930)), v13)))) + ((v11 >> 28) & 1);
  v16 = vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD980), vshlq_u64(v12, xmmword_187FBD970)), v13), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD960), vshlq_u64(v12, xmmword_187FBD950)), v13)));
  *v12.i8 = vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD990)), 0x100000001), vand_s8(vshl_u32(*v14.i8, 0xFFFFFFE6FFFFFFEALL), 0x100000001)), vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD9A0)), 0x100000001), vand_s8(vshl_u32(*v14.i8, 0xFFFFFFECFFFFFFEBLL), 0x100000001)));
  v17 = v15 + ((v11 >> 45) & 1) + ((v11 >> 46) & 1) + ((v11 >> 25) & 1) + ((v11 >> 54) & 1) + ((v11 >> 39) & 1) + ((v11 >> 29) & 1) + vadd_s32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0] + ((v11 >> 19) & 1) + ((v11 >> 43) & 1) + ((v11 >> 33) & 1) + ((v11 & 0x200000000000000) != 0) + ((v11 >> 18) & 1) + (*(a1 + 588) & 1) + ((*(a1 + 588) >> 2) & 1) + ((*(a1 + 588) >> 1) & 1) + (v11 >> 63) + (v11 >> 31) + v16;
  while (1)
  {
    v18 = a3[v6];
    if (v18 > -3)
    {
      break;
    }

    if (v18 == -4)
    {
      ++v17;
      v8 = 1;
      goto LABEL_15;
    }

    if (v18 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v17;
LABEL_15:
    ++v6;
  }

  if (v18 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v18 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v241 = v9;
  v242 = v7;
  v19 = v17 > 0x25;
  v243 = v19 & ~v10 | v8;
  v20 = v10 | v19;
  if ((v10 | v19 | v7))
  {
    v21 = 0;
  }

  else
  {
    v21 = a3;
  }

  v22 = objc_msgSend_position(v3);
  if (v22 >= [v3 length])
  {
LABEL_728:
    v31 = 1;
    goto LABEL_729;
  }

  v244 = v20 | v8;
  v245 = (v21 == 0) | v20;
  v246 = v20;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_728;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v247) = 0;
      v26 = objc_msgSend_position(v3) + 1;
      if (v26 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3) + 1, v27 <= [v3 length]))
      {
        v28 = [v3 data];
        [v28 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v25 |= (v247 & 0x7F) << v23;
      if ((v247 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v29 = v24++ >= 9;
      if (v29)
      {
        v25 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v25 = 0;
    }

LABEL_33:
    v30 = [v3 hasError];
    v31 = 1;
    v20 = v246;
    if (v30)
    {
      goto LABEL_729;
    }

    v32 = v25 & 7;
    if (v32 == 4)
    {
      goto LABEL_729;
    }

    v33 = v25 >> 3;
    v34 = v246;
    if ((v245 & 1) == 0)
    {
      v35 = v21;
      do
      {
        v37 = *v35++;
        v36 = v37;
        v34 = v37 != 0;
        if (v37)
        {
          v38 = v36 == v33;
        }

        else
        {
          v38 = 1;
        }
      }

      while (!v38);
    }

    switch(v33)
    {
      case 1:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 580) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v42 = objc_msgSend_position(v3) + 1;
          if (v42 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3) + 1, v43 <= [v3 length]))
          {
            v44 = [v3 data];
            [v44 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v41 |= (v247 & 0x7F) << v39;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v29 = v40++ >= 9;
          if (v29)
          {
            v45 = 0;
LABEL_590:
            v198 = 564;
            goto LABEL_622;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v41;
        }

        goto LABEL_590;
      case 2:
        if (!v34 || (*(a1 + 587) & 0x10) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOStep);
        if (!GEOStepReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsStep:v46];
        goto LABEL_517;
      case 3:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 4) == 0)
        {
          v53 = PBReaderReadString();
          v54 = 304;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 21;
        goto LABEL_666;
      case 4:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 0x80) == 0)
        {
          v53 = PBReaderReadString();
          v54 = 344;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 16;
        goto LABEL_666;
      case 5:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 580) |= 8uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v134 = objc_msgSend_position(v3) + 1;
          if (v134 >= objc_msgSend_position(v3) && (v135 = objc_msgSend_position(v3) + 1, v135 <= [v3 length]))
          {
            v136 = [v3 data];
            [v136 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v133 |= (v247 & 0x7F) << v131;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v29 = v132++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_601;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v133;
        }

LABEL_601:
        v198 = 528;
        goto LABEL_622;
      case 6:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 580) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v146 = objc_msgSend_position(v3) + 1;
          if (v146 >= objc_msgSend_position(v3) && (v147 = objc_msgSend_position(v3) + 1, v147 <= [v3 length]))
          {
            v148 = [v3 data];
            [v148 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v145 |= (v247 & 0x7F) << v143;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v29 = v144++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_609;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v145;
        }

LABEL_609:
        v198 = 540;
        goto LABEL_622;
      case 7:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 586) & 4) == 0)
        {
          v53 = PBReaderReadData();
          v54 = 368;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 13;
        goto LABEL_666;
      case 8:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 580) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v71 = objc_msgSend_position(v3) + 1;
          if (v71 >= objc_msgSend_position(v3) && (v72 = objc_msgSend_position(v3) + 1, v72 <= [v3 length]))
          {
            v73 = [v3 data];
            [v73 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v70 |= (v247 & 0x7F) << v68;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v29 = v69++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_570;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v70;
        }

LABEL_570:
        v198 = 552;
        goto LABEL_622;
      case 9:
        if (!v34 || (*(a1 + 588) & 4) != 0)
        {
          goto LABEL_553;
        }

        v46 = PBReaderReadData();
        if (v46)
        {
          [(GEORoute *)a1 _addNoFlagsZilchPoints:v46];
        }

        goto LABEL_517;
      case 10:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 580) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v152 = objc_msgSend_position(v3) + 1;
          if (v152 >= objc_msgSend_position(v3) && (v153 = objc_msgSend_position(v3) + 1, v153 <= [v3 length]))
          {
            v154 = [v3 data];
            [v154 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v151 |= (v247 & 0x7F) << v149;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v29 = v150++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_613;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v151;
        }

LABEL_613:
        v198 = 532;
        goto LABEL_622;
      case 16:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 583) & 0x40) == 0)
        {
          v53 = PBReaderReadData();
          v54 = 208;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 33;
        goto LABEL_666;
      case 17:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 580) |= 4uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v122 = objc_msgSend_position(v3) + 1;
          if (v122 >= objc_msgSend_position(v3) && (v123 = objc_msgSend_position(v3) + 1, v123 <= [v3 length]))
          {
            v124 = [v3 data];
            [v124 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v121 |= (v247 & 0x7F) << v119;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v29 = v120++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_594;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v121;
        }

LABEL_594:
        v198 = 524;
        goto LABEL_622;
      case 18:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 583) & 8) == 0)
        {
          v53 = PBReaderReadData();
          v54 = 184;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 36;
        goto LABEL_666;
      case 19:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 580) |= 1uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v65 = objc_msgSend_position(v3) + 1;
          if (v65 >= objc_msgSend_position(v3) && (v66 = objc_msgSend_position(v3) + 1, v66 <= [v3 length]))
          {
            v67 = [v3 data];
            [v67 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v64 |= (v247 & 0x7F) << v62;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v29 = v63++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_566;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v64;
        }

LABEL_566:
        v198 = 516;
        goto LABEL_622;
      case 20:
        if (!v34 || (*(a1 + 583) & 0x10) != 0)
        {
          goto LABEL_553;
        }

        v46 = PBReaderReadData();
        if (v46)
        {
          [(GEORoute *)a1 _addNoFlagsBasicPoints:v46];
        }

        goto LABEL_517;
      case 21:
        if (!v34 || (*(a1 + 583) & 2) != 0)
        {
          goto LABEL_553;
        }

        v46 = PBReaderReadString();
        if (v46)
        {
          [(GEORoute *)a1 _addNoFlagsAdvisoryNotice:v46];
        }

        goto LABEL_517;
      case 22:
        if (!v34 || (*(a1 + 583) & 1) != 0)
        {
          goto LABEL_553;
        }

        if (v32 != 2)
        {
          v220 = 0;
          v221 = 0;
          v222 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v223 = objc_msgSend_position(v3) + 1;
            if (v223 >= objc_msgSend_position(v3) && (v224 = objc_msgSend_position(v3) + 1, v224 <= [v3 length]))
            {
              v225 = [v3 data];
              [v225 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v222 |= (v247 & 0x7F) << v220;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_715;
            }

            v220 += 7;
            v29 = v221++ >= 9;
            if (v29)
            {
              goto LABEL_716;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_790;
        }

        while (1)
        {
          v168 = objc_msgSend_position(v3);
          if (v168 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_552;
          }

          v169 = 0;
          v170 = 0;
          v171 = 0;
          while (1)
          {
            v249 = 0;
            v172 = objc_msgSend_position(v3) + 1;
            if (v172 >= objc_msgSend_position(v3) && (v173 = objc_msgSend_position(v3) + 1, v173 <= [v3 length]))
            {
              v174 = [v3 data];
              [v174 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v171 |= (v249 & 0x7F) << v169;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v169 += 7;
            v29 = v170++ >= 9;
            if (v29)
            {
              goto LABEL_413;
            }
          }

          [v3 hasError];
LABEL_413:
          PBRepeatedUInt32Add();
        }

      case 23:
        if (!v34 || (*(a1 + 582) & 0x80) != 0)
        {
          goto LABEL_553;
        }

        if (v32 != 2)
        {
          v214 = 0;
          v215 = 0;
          v216 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v217 = objc_msgSend_position(v3) + 1;
            if (v217 >= objc_msgSend_position(v3) && (v218 = objc_msgSend_position(v3) + 1, v218 <= [v3 length]))
            {
              v219 = [v3 data];
              [v219 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v216 |= (v247 & 0x7F) << v214;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_715;
            }

            v214 += 7;
            v29 = v215++ >= 9;
            if (v29)
            {
              goto LABEL_716;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_790;
        }

        while (1)
        {
          v155 = objc_msgSend_position(v3);
          if (v155 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_552;
          }

          v156 = 0;
          v157 = 0;
          v158 = 0;
          while (1)
          {
            v249 = 0;
            v159 = objc_msgSend_position(v3) + 1;
            if (v159 >= objc_msgSend_position(v3) && (v160 = objc_msgSend_position(v3) + 1, v160 <= [v3 length]))
            {
              v161 = [v3 data];
              [v161 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v158 |= (v249 & 0x7F) << v156;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v156 += 7;
            v29 = v157++ >= 9;
            if (v29)
            {
              goto LABEL_386;
            }
          }

          [v3 hasError];
LABEL_386:
          PBRepeatedUInt32Add();
        }

      case 25:
        if (!v34 || (*(a1 + 586) & 8) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORouteName);
        if (!GEORouteNameReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRouteName:v46];
        goto LABEL_517;
      case 26:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 580) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v116 = objc_msgSend_position(v3) + 1;
          if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 1, v117 <= [v3 length]))
          {
            v118 = [v3 data];
            [v118 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v115 |= (v247 & 0x7F) << v113;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v29 = v114++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_586;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v115;
        }

LABEL_586:
        v198 = 544;
        goto LABEL_622;
      case 28:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v182 = 0;
        v183 = 0;
        v184 = 0;
        *(a1 + 580) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v185 = objc_msgSend_position(v3) + 1;
          if (v185 >= objc_msgSend_position(v3) && (v186 = objc_msgSend_position(v3) + 1, v186 <= [v3 length]))
          {
            v187 = [v3 data];
            [v187 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v184 |= (v247 & 0x7F) << v182;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v182 += 7;
          v29 = v183++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_621;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v184;
        }

LABEL_621:
        v198 = 568;
        goto LABEL_622;
      case 29:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 580) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v247 & 0x7F) << v56;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v29 = v57++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_562;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v58;
        }

LABEL_562:
        v198 = 572;
        goto LABEL_622;
      case 30:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 580) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v110 = objc_msgSend_position(v3) + 1;
          if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
          {
            v112 = [v3 data];
            [v112 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v109 |= (v247 & 0x7F) << v107;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v29 = v108++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_582;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v109;
        }

LABEL_582:
        v198 = 556;
        goto LABEL_622;
      case 31:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 580) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v84 = objc_msgSend_position(v3) + 1;
          if (v84 >= objc_msgSend_position(v3) && (v85 = objc_msgSend_position(v3) + 1, v85 <= [v3 length]))
          {
            v86 = [v3 data];
            [v86 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v83 |= (v247 & 0x7F) << v81;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v29 = v82++ >= 9;
          if (v29)
          {
            v80 = 0;
            goto LABEL_574;
          }
        }

        v80 = (v83 != 0) & ~[v3 hasError];
LABEL_574:
        v199 = 577;
        goto LABEL_597;
      case 32:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 580) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v128 = objc_msgSend_position(v3) + 1;
          if (v128 >= objc_msgSend_position(v3) && (v129 = objc_msgSend_position(v3) + 1, v129 <= [v3 length]))
          {
            v130 = [v3 data];
            [v130 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v127 |= (v247 & 0x7F) << v125;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v29 = v126++ >= 9;
          if (v29)
          {
            v80 = 0;
            goto LABEL_596;
          }
        }

        v80 = (v127 != 0) & ~[v3 hasError];
LABEL_596:
        v199 = 576;
        goto LABEL_597;
      case 33:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 580) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v77 = objc_msgSend_position(v3) + 1;
          if (v77 >= objc_msgSend_position(v3) && (v78 = objc_msgSend_position(v3) + 1, v78 <= [v3 length]))
          {
            v79 = [v3 data];
            [v79 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v76 |= (v247 & 0x7F) << v74;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v29 = v75++ >= 9;
          if (v29)
          {
            v80 = 0;
            goto LABEL_572;
          }
        }

        v80 = (v76 != 0) & ~[v3 hasError];
LABEL_572:
        v199 = 578;
LABEL_597:
        *(a1 + v199) = v80;
        goto LABEL_623;
      case 34:
        if (!v34 || (*(a1 + 584) & 0x10) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOEnrouteNotice);
        if (!GEOEnrouteNoticeReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsEnrouteNotice:v46];
        goto LABEL_517;
      case 50:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 588) & 1) == 0)
        {
          v53 = PBReaderReadData();
          v54 = 480;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v6 -= *(a1 + 588) & 1;
        goto LABEL_667;
      case 51:
        if (!v34 || (*(a1 + 582) & 0x40) != 0)
        {
          goto LABEL_553;
        }

        if (v32 != 2)
        {
          v202 = 0;
          v203 = 0;
          v204 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v205 = objc_msgSend_position(v3) + 1;
            if (v205 >= objc_msgSend_position(v3) && (v206 = objc_msgSend_position(v3) + 1, v206 <= [v3 length]))
            {
              v207 = [v3 data];
              [v207 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v204 |= (v247 & 0x7F) << v202;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_715;
            }

            v202 += 7;
            v29 = v203++ >= 9;
            if (v29)
            {
              goto LABEL_716;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_790;
        }

        while (1)
        {
          v93 = objc_msgSend_position(v3);
          if (v93 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_552;
          }

          v94 = 0;
          v95 = 0;
          v96 = 0;
          while (1)
          {
            v249 = 0;
            v97 = objc_msgSend_position(v3) + 1;
            if (v97 >= objc_msgSend_position(v3) && (v98 = objc_msgSend_position(v3) + 1, v98 <= [v3 length]))
            {
              v99 = [v3 data];
              [v99 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v96 |= (v249 & 0x7F) << v94;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v29 = v95++ >= 9;
            if (v29)
            {
              goto LABEL_209;
            }
          }

          [v3 hasError];
LABEL_209:
          PBRepeatedUInt32Add();
        }

      case 52:
        if (!v34 || (*(a1 + 582) & 0x20) != 0)
        {
          goto LABEL_553;
        }

        if (v32 != 2)
        {
          v208 = 0;
          v209 = 0;
          v210 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v211 = objc_msgSend_position(v3) + 1;
            if (v211 >= objc_msgSend_position(v3) && (v212 = objc_msgSend_position(v3) + 1, v212 <= [v3 length]))
            {
              v213 = [v3 data];
              [v213 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v210 |= (v247 & 0x7F) << v208;
            if ((v247 & 0x80) == 0)
            {
              goto LABEL_715;
            }

            v208 += 7;
            v29 = v209++ >= 9;
            if (v29)
            {
              goto LABEL_716;
            }
          }
        }

        v247 = 0;
        v248 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_790;
        }

        while (1)
        {
          v100 = objc_msgSend_position(v3);
          if (v100 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_552;
          }

          v101 = 0;
          v102 = 0;
          v103 = 0;
          while (1)
          {
            v249 = 0;
            v104 = objc_msgSend_position(v3) + 1;
            if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
            {
              v106 = [v3 data];
              [v106 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v103 |= (v249 & 0x7F) << v101;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v101 += 7;
            v29 = v102++ >= 9;
            if (v29)
            {
              goto LABEL_234;
            }
          }

          [v3 hasError];
LABEL_234:
          PBRepeatedUInt32Add();
        }

      case 53:
        if (!v34)
        {
          goto LABEL_553;
        }

        if (*(a1 + 587))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 7;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORouteInformation);
        if (!GEORouteInformationReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 416;
        goto LABEL_510;
      case 54:
        if (!v34 || (*(a1 + 586) & 0x20) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRouteDescription:v46];
        goto LABEL_517;
      case 55:
        if (!v34 || (*(a1 + 587) & 4) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsStartingRouteInstruction:v46];
        goto LABEL_517;
      case 56:
        if (!v34 || (*(a1 + 584) & 8) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsEndingRouteInstruction:v46];
        goto LABEL_517;
      case 57:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 580) & 0x8000000000000000) == 0)
        {
          v53 = PBReaderReadString();
          v54 = 472;
LABEL_489:
          v195 = *(a1 + v54);
          *(a1 + v54) = v53;
          goto LABEL_511;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580);
        goto LABEL_666;
      case 58:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 587) & 0x40) == 0)
        {
          v53 = PBReaderReadString();
          v54 = 464;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = 2 * *(a1 + 580);
        goto LABEL_666;
      case 59:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 583) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 37;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOAlertNonRecommendedRouteText);
        if (!GEOAlertNonRecommendedRouteTextReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 176;
        goto LABEL_510;
      case 60:
        if (!v34 || (*(a1 + 584) & 0x20) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOGuidanceEvent);
        if (!GEOGuidanceEventReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsGuidanceEvent:v46];
        goto LABEL_517;
      case 61:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 22;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOLaunchAndGoCardText);
        if (!GEOLaunchAndGoCardTextReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 296;
        goto LABEL_510;
      case 62:
        if (!v34 || (*(a1 + 586) & 2) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORoadComplexity);
        if (!GEORoadComplexityReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRoadComplexity:v46];
        goto LABEL_517;
      case 63:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 580) |= 2uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v90 = objc_msgSend_position(v3) + 1;
          if (v90 >= objc_msgSend_position(v3) && (v91 = objc_msgSend_position(v3) + 1, v91 <= [v3 length]))
          {
            v92 = [v3 data];
            [v92 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v89 |= (v247 & 0x7F) << v87;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v29 = v88++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_578;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v89;
        }

LABEL_578:
        v198 = 520;
        goto LABEL_622;
      case 64:
        if (!v34 || (*(a1 + 585) & 1) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOLaneWidth);
        if (!GEOLaneWidthReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsLaneWidth:v46];
        goto LABEL_517;
      case 65:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 583) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 34;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOClickableAdvisory);
        if (!GEOClickableAdvisoryReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 200;
        goto LABEL_510;
      case 66:
        if (!v34 || (*(a1 + 586) & 1) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORestrictedZoneId);
        if (!GEORestrictedZoneIdReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRestrictedZoneIds:v46];
        goto LABEL_517;
      case 67:
        if (!v34 || (*(a1 + 587) & 8) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOStepGroup);
        if (!GEOStepGroupReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsStepGroup:v46];
        goto LABEL_517;
      case 68:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 586) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 9;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 400;
        goto LABEL_510;
      case 69:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 584) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 29;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOElevationProfile);
        if (!GEOElevationProfileReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 240;
        goto LABEL_510;
      case 70:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 584) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 24;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 280;
        goto LABEL_510;
      case 71:
        if (!v34 || (*(a1 + 587) & 0x20) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOTrafficColorInfo);
        if (!GEOTrafficColorInfoReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsTrafficColorInfo:v46];
        goto LABEL_517;
      case 72:
        if (!v34 || (*(a1 + 584) & 0x40) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOIncidentOnRouteInfo);
        if (!GEOIncidentOnRouteInfoReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsIncidentOnRouteInfo:v46];
        goto LABEL_517;
      case 73:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 580) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v50 = objc_msgSend_position(v3) + 1;
          if (v50 >= objc_msgSend_position(v3) && (v51 = objc_msgSend_position(v3) + 1, v51 <= [v3 length]))
          {
            v52 = [v3 data];
            [v52 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v49 |= (v247 & 0x7F) << v47;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v29 = v48++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_558;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v49;
        }

LABEL_558:
        v198 = 548;
        goto LABEL_622;
      case 74:
        if (!v34 || (*(a1 + 588) & 2) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOUpdateLocation);
        if (!GEOUpdateLocationReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsUpdateLocation:v46];
        goto LABEL_517;
      case 75:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 19;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOWaypointInfo);
        if (!GEOWaypointInfoReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 320;
        goto LABEL_510;
      case 76:
        if (!v34)
        {
          goto LABEL_553;
        }

        if (*(a1 + 584))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 31;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOWaypointInfo);
        if (!GEOWaypointInfoReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 224;
        goto LABEL_510;
      case 77:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 580) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v140 = objc_msgSend_position(v3) + 1;
          if (v140 >= objc_msgSend_position(v3) && (v141 = objc_msgSend_position(v3) + 1, v141 <= [v3 length]))
          {
            v142 = [v3 data];
            [v142 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v139 |= (v247 & 0x7F) << v137;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v29 = v138++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_605;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v139;
        }

LABEL_605:
        v198 = 536;
        goto LABEL_622;
      case 78:
        if ((v242 & 1) == 0)
        {
          goto LABEL_553;
        }

        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 580) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v247) = 0;
          v165 = objc_msgSend_position(v3) + 1;
          if (v165 >= objc_msgSend_position(v3) && (v166 = objc_msgSend_position(v3) + 1, v166 <= [v3 length]))
          {
            v167 = [v3 data];
            [v167 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v164 |= (v247 & 0x7F) << v162;
          if ((v247 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v29 = v163++ >= 9;
          if (v29)
          {
            v45 = 0;
            goto LABEL_617;
          }
        }

        if ([v3 hasError])
        {
          v45 = 0;
        }

        else
        {
          v45 = v164;
        }

LABEL_617:
        v198 = 560;
LABEL_622:
        *(a1 + v198) = v45;
        goto LABEL_623;
      case 79:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 0x20) == 0)
        {
          v53 = PBReaderReadData();
          v54 = 328;
          goto LABEL_489;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_790;
        }

        v200 = *(a1 + 580) << 18;
        goto LABEL_666;
      case 80:
        if (!v34 || (*(a1 + 582) & 0x10) != 0)
        {
          goto LABEL_553;
        }

        if (v32 == 2)
        {
          v247 = 0;
          v248 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_790;
          }

          while (1)
          {
            v188 = objc_msgSend_position(v3);
            if (v188 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v189 = 0;
            v190 = 0;
            v191 = 0;
            while (1)
            {
              v249 = 0;
              v192 = objc_msgSend_position(v3) + 1;
              if (v192 >= objc_msgSend_position(v3) && (v193 = objc_msgSend_position(v3) + 1, v193 <= [v3 length]))
              {
                v194 = [v3 data];
                [v194 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v191 |= (v249 & 0x7F) << v189;
              if ((v249 & 0x80) == 0)
              {
                break;
              }

              v189 += 7;
              v29 = v190++ >= 9;
              if (v29)
              {
                goto LABEL_472;
              }
            }

            [v3 hasError];
LABEL_472:
            PBRepeatedInt32Add();
          }

LABEL_552:
          PBReaderRecallMark();
        }

        else
        {
          v232 = 0;
          v233 = 0;
          v234 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v235 = objc_msgSend_position(v3) + 1;
            if (v235 >= objc_msgSend_position(v3) && (v236 = objc_msgSend_position(v3) + 1, v236 <= [v3 length]))
            {
              v237 = [v3 data];
              [v237 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v234 |= (v247 & 0x7F) << v232;
            if ((v247 & 0x80) == 0)
            {
              break;
            }

            v232 += 7;
            v29 = v233++ >= 9;
            if (v29)
            {
              goto LABEL_727;
            }
          }

          [v3 hasError];
LABEL_727:
          PBRepeatedInt32Add();
        }

LABEL_623:
        v20 = v246;
        goto LABEL_667;
      case 81:
        if (!v34 || (*(a1 + 582) & 8) != 0)
        {
          goto LABEL_553;
        }

        if (v32 != 2)
        {
          v226 = 0;
          v227 = 0;
          v228 = 0;
          while (1)
          {
            LOBYTE(v247) = 0;
            v229 = objc_msgSend_position(v3) + 1;
            if (v229 >= objc_msgSend_position(v3) && (v230 = objc_msgSend_position(v3) + 1, v230 <= [v3 length]))
            {
              v231 = [v3 data];
              [v231 getBytes:&v247 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v228 |= (v247 & 0x7F) << v226;
            if ((v247 & 0x80) == 0)
            {
              break;
            }

            v226 += 7;
            v29 = v227++ >= 9;
            if (v29)
            {
              goto LABEL_716;
            }
          }

LABEL_715:
          [v3 hasError];
LABEL_716:
          PBRepeatedUInt32Add();
          goto LABEL_623;
        }

        v247 = 0;
        v248 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_790;
        }

        while (1)
        {
          v175 = objc_msgSend_position(v3);
          if (v175 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_552;
          }

          v176 = 0;
          v177 = 0;
          v178 = 0;
          while (1)
          {
            v249 = 0;
            v179 = objc_msgSend_position(v3) + 1;
            if (v179 >= objc_msgSend_position(v3) && (v180 = objc_msgSend_position(v3) + 1, v180 <= [v3 length]))
            {
              v181 = [v3 data];
              [v181 getBytes:&v249 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v178 |= (v249 & 0x7F) << v176;
            if ((v249 & 0x80) == 0)
            {
              break;
            }

            v176 += 7;
            v29 = v177++ >= 9;
            if (v29)
            {
              goto LABEL_435;
            }
          }

          [v3 hasError];
LABEL_435:
          PBRepeatedUInt32Add();
        }

      case 82:
        if (!v34 || (*(a1 + 586) & 0x80) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORouteLineStyleInfo);
        if (!GEORouteLineStyleInfoReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRouteLineStyleInfo:v46];
        goto LABEL_517;
      case 83:
        if (!v34 || (*(a1 + 586) & 0x10) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEORouteLineStyleInfo);
        if (!GEORouteLineStyleInfoReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsRouteCameraInputInfo:v46];
        goto LABEL_517;
      case 86:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 20;
LABEL_666:
          v6 += v200 >> 63;
LABEL_667:
          if (!(v244 & 1 | (v6 != 0)))
          {
            goto LABEL_728;
          }

          v201 = objc_msgSend_position(v3);
          if (v201 >= [v3 length])
          {
            goto LABEL_728;
          }

          continue;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEODrivingWalkingInstruction);
        if (GEODrivingWalkingInstructionReadAllFrom(v46, v3, v241 & 1))
        {
          PBReaderRecallMark();
          v55 = 312;
LABEL_510:
          v195 = *(a1 + v55);
          *(a1 + v55) = v46;
LABEL_511:

          --v6;
          goto LABEL_667;
        }

LABEL_789:

LABEL_790:
        v31 = 0;
LABEL_729:
        if (v243)
        {
LABEL_730:
          *(a1 + 580) |= 0x40000uLL;
        }

        if (v20 & 1 | ((v31 & 1) == 0))
        {
          *(a1 + 580) |= 0x1004840000000000uLL;
          *(a1 + 588) |= 4u;
          *(a1 + 580) |= 0x20D860907B800000uLL;
          *(a1 + 588) |= 1u;
          *(a1 + 580) |= 0xCD23036C04600000;
          *(a1 + 588) |= 2u;
          *(a1 + 580) |= 0x200180380180000uLL;
        }

        else if (v21)
        {
          while (2)
          {
            v238 = *v21++;
            switch(v238)
            {
              case 0:
                break;
              case 2:
                *(a1 + 580) |= 0x1000000000000000uLL;
                continue;
              case 3:
                *(a1 + 580) |= 0x40000000000uLL;
                continue;
              case 4:
                *(a1 + 580) |= 0x800000000000uLL;
                continue;
              case 7:
                *(a1 + 580) |= 0x4000000000000uLL;
                continue;
              case 9:
                *(a1 + 588) |= 4u;
                continue;
              case 16:
                *(a1 + 580) |= 0x40000000uLL;
                continue;
              case 18:
                *(a1 + 580) |= 0x8000000uLL;
                continue;
              case 20:
                *(a1 + 580) |= 0x10000000uLL;
                continue;
              case 21:
                *(a1 + 580) |= 0x2000000uLL;
                continue;
              case 22:
                *(a1 + 580) |= 0x1000000uLL;
                continue;
              case 23:
                *(a1 + 580) |= 0x800000uLL;
                continue;
              case 25:
                *(a1 + 580) |= 0x8000000000000uLL;
                continue;
              case 34:
                *(a1 + 580) |= 0x1000000000uLL;
                continue;
              case 50:
                *(a1 + 588) |= 1u;
                continue;
              case 51:
                *(a1 + 580) |= 0x400000uLL;
                continue;
              case 52:
                *(a1 + 580) |= 0x200000uLL;
                continue;
              case 53:
                *(a1 + 580) |= 0x100000000000000uLL;
                continue;
              case 54:
                *(a1 + 580) |= 0x20000000000000uLL;
                continue;
              case 55:
                *(a1 + 580) |= 0x400000000000000uLL;
                continue;
              case 56:
                *(a1 + 580) |= 0x800000000uLL;
                continue;
              case 57:
                *(a1 + 580) |= 0x8000000000000000;
                continue;
              case 58:
                *(a1 + 580) |= 0x4000000000000000uLL;
                continue;
              case 59:
                *(a1 + 580) |= 0x4000000uLL;
                continue;
              case 60:
                *(a1 + 580) |= 0x2000000000uLL;
                continue;
              case 61:
                *(a1 + 580) |= 0x20000000000uLL;
                continue;
              case 62:
                *(a1 + 580) |= 0x2000000000000uLL;
                continue;
              case 64:
                *(a1 + 580) |= 0x10000000000uLL;
                continue;
              case 65:
                *(a1 + 580) |= 0x20000000uLL;
                continue;
              case 66:
                *(a1 + 580) |= 0x1000000000000uLL;
                continue;
              case 67:
                *(a1 + 580) |= 0x800000000000000uLL;
                continue;
              case 68:
                *(a1 + 580) |= 0x40000000000000uLL;
                continue;
              case 69:
                *(a1 + 580) |= 0x400000000uLL;
                continue;
              case 70:
                *(a1 + 580) |= 0x8000000000uLL;
                continue;
              case 71:
                *(a1 + 580) |= 0x2000000000000000uLL;
                continue;
              case 72:
                *(a1 + 580) |= 0x4000000000uLL;
                continue;
              case 74:
                *(a1 + 588) |= 2u;
                continue;
              case 75:
                *(a1 + 580) |= 0x100000000000uLL;
                continue;
              case 76:
                *(a1 + 580) |= 0x100000000uLL;
                continue;
              case 79:
                *(a1 + 580) |= 0x200000000000uLL;
                continue;
              case 80:
                *(a1 + 580) |= 0x100000uLL;
                continue;
              case 81:
                *(a1 + 580) |= 0x80000uLL;
                continue;
              case 82:
                *(a1 + 580) |= 0x80000000000000uLL;
                continue;
              case 83:
                *(a1 + 580) |= 0x10000000000000uLL;
                continue;
              case 86:
                *(a1 + 580) |= 0x80000000000uLL;
                continue;
              case 87:
                *(a1 + 580) |= 0x80000000uLL;
                continue;
              case 88:
                *(a1 + 580) |= 0x400000000000uLL;
                continue;
              case 89:
                *(a1 + 580) |= 0x200000000uLL;
                continue;
              case 90:
                *(a1 + 580) |= 0x200000000000000uLL;
                continue;
              default:
                continue;
            }

            break;
          }
        }

        if (v31)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v20 & 1) == 0)
          {
            return v3;
          }

LABEL_787:
          v239 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v20)
          {
            goto LABEL_787;
          }
        }

        return v3;
      case 87:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 583) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 32;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEODrivingWalkingInstruction);
        if (!GEODrivingWalkingInstructionReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 216;
        goto LABEL_510;
      case 88:
        if (!v34)
        {
          goto LABEL_553;
        }

        if ((*(a1 + 585) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }

          v200 = *(a1 + 580) << 17;
          goto LABEL_666;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOPathMapMatcherInstructions);
        if (!GEOPathMapMatcherInstructionsReadAllFrom(v46, v3))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        v55 = 336;
        goto LABEL_510;
      case 89:
        if (!v34 || (*(a1 + 584) & 2) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEODirectedRoadSegment);
        if (!GEODirectedRoadSegmentReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsDirectedRoadSegment:v46];
        goto LABEL_517;
      case 90:
        if (!v34 || (*(a1 + 587) & 2) != 0)
        {
          goto LABEL_553;
        }

        v247 = 0;
        v248 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_790;
        }

        v46 = objc_alloc_init(GEOSegmentNameInfo);
        if (!GEOSegmentNameInfoReadAllFrom(v46, v3, v241 & 1))
        {
          goto LABEL_789;
        }

        PBReaderRecallMark();
        [(GEORoute *)a1 _addNoFlagsSegmentNameInfo:v46];
LABEL_517:

        goto LABEL_667;
      default:
        if ((v243 & 1) == 0 || (*(a1 + 582) & 4) != 0)
        {
LABEL_553:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_790;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v196 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v197 = *(a1 + 16);
            *(a1 + 16) = v196;
          }

          if (!PBUnknownFieldAdd())
          {
            v31 = 0;
            goto LABEL_730;
          }
        }

        goto LABEL_667;
    }
  }
}