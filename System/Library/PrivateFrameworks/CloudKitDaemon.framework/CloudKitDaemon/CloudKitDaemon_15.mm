uint64_t sub_22536431C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 != 2)
      {
        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v83 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v83 & 0x7F) << v33;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_48;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_48:
        v77 = 16;
        goto LABEL_49;
      }

      v54 = PBReaderReadString();
      v55 = *(a1 + 24);
      *(a1 + 24) = v54;

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v82 = 0;
      v59 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
      {
        v67 = objc_msgSend_data(a2, v62, v63);
        v70 = objc_msgSend_position(a2, v68, v69);
        objc_msgSend_getBytes_range_(v67, v71, &v82, v70, 1);

        v74 = objc_msgSend_position(a2, v72, v73);
        objc_msgSend_setPosition_(a2, v75, v74 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v62, v63);
      }

      v58 |= (v82 & 0x7F) << v56;
      if ((v82 & 0x80) == 0)
      {
        break;
      }

      v56 += 7;
      v30 = v57++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_44;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v58;
    }

LABEL_44:
    v77 = 8;
LABEL_49:
    *(a1 + v77) = v53;
    goto LABEL_50;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225364DEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v74 = PBReaderReadString();
        v75 = *(a1 + 24);
        *(a1 + 24) = v74;
      }

      else
      {
        if (v32 == 2)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v82 = 0;
            v57 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
            {
              v65 = objc_msgSend_data(a2, v60, v61);
              v68 = objc_msgSend_position(a2, v66, v67);
              objc_msgSend_getBytes_range_(v65, v69, &v82, v68, 1);

              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_setPosition_(a2, v73, v72 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v60, v61);
            }

            v56 |= (v82 & 0x7F) << v54;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v30 = v55++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_44;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v56;
          }

LABEL_44:
          v77 = 16;
        }

        else
        {
          if (v32 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v83 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v83 & 0x7F) << v33;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_48;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_48:
          v77 = 8;
        }

        *(a1 + v77) = v53;
      }

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
    }

    while (v78 < objc_msgSend_length(a2, v79, v80));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225365898(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v81 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81 & 0x7F) << v10;
        if ((v81 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 != 2)
      {
        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v83 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v83, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v83 & 0x7F) << v33;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_48;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_48:
        v77 = 8;
        goto LABEL_49;
      }

      v54 = PBReaderReadString();
      v55 = *(a1 + 24);
      *(a1 + 24) = v54;

LABEL_50:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      v82 = 0;
      v59 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
      {
        v67 = objc_msgSend_data(a2, v62, v63);
        v70 = objc_msgSend_position(a2, v68, v69);
        objc_msgSend_getBytes_range_(v67, v71, &v82, v70, 1);

        v74 = objc_msgSend_position(a2, v72, v73);
        objc_msgSend_setPosition_(a2, v75, v74 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v62, v63);
      }

      v58 |= (v82 & 0x7F) << v56;
      if ((v82 & 0x80) == 0)
      {
        break;
      }

      v56 += 7;
      v30 = v57++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_44;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v58;
    }

LABEL_44:
    v77 = 16;
LABEL_49:
    *(a1 + v77) = v53;
    goto LABEL_50;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225366D9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    v10 = 0x277CBC000uLL;
    v11 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v12 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v162) = 0;
        v17 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v17 >= objc_msgSend_position(a2, v18, v19) && (v22 = objc_msgSend_position(a2, v20, v21) + 1, v22 <= objc_msgSend_length(a2, v23, v24)))
        {
          v25 = objc_msgSend_data(a2, v20, v21);
          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_getBytes_range_(v25, v29, &v162, v28, 1);

          v32 = objc_msgSend_position(a2, v30, v31);
          objc_msgSend_setPosition_(a2, v33, v32 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v21);
        }

        v16 |= (v162 & 0x7F) << v14;
        if ((v162 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v34 = v15++ >= 9;
        if (v34)
        {
          v35 = 0;
          goto LABEL_16;
        }
      }

      v35 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v16;
LABEL_16:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v35 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v36 = (v35 >> 3);
      if ((v35 >> 3) <= 4)
      {
        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v91 = 0;
            v92 = 0;
            v93 = 0;
            *(a1 + v12[109]) |= 2u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v94 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v94 >= objc_msgSend_position(a2, v95, v96) && (v99 = objc_msgSend_position(a2, v97, v98) + 1, v99 <= objc_msgSend_length(a2, v100, v101)))
              {
                v102 = objc_msgSend_data(a2, v97, v98);
                v105 = objc_msgSend_position(a2, v103, v104);
                objc_msgSend_getBytes_range_(v102, v106, &v162, v105, 1);

                v109 = objc_msgSend_position(a2, v107, v108);
                objc_msgSend_setPosition_(a2, v110, v109 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v97, v98);
              }

              v93 |= (v162 & 0x7F) << v91;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              v34 = v92++ >= 9;
              if (v34)
              {
                v58 = 0;
                goto LABEL_96;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v58 = 0;
            }

            else
            {
              v58 = v93;
            }

LABEL_96:
            v135 = 64;
            goto LABEL_97;
          }

          if (v36 == 4)
          {
            if (v9 == 2)
            {
              v162 = 0;
              v163 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v62 = objc_msgSend_position(a2, v60, v61);
                if (v62 >= objc_msgSend_length(a2, v63, v64) || (objc_msgSend_hasError(a2, v65, v66) & 1) != 0)
                {
                  break;
                }

                v69 = 0;
                v70 = 0;
                v71 = 0;
                while (1)
                {
                  v164 = 0;
                  v72 = objc_msgSend_position(a2, v67, v68) + 1;
                  if (v72 >= objc_msgSend_position(a2, v73, v74) && (v77 = objc_msgSend_position(a2, v75, v76) + 1, v77 <= objc_msgSend_length(a2, v78, v79)))
                  {
                    v80 = objc_msgSend_data(a2, v75, v76);
                    v83 = objc_msgSend_position(a2, v81, v82);
                    objc_msgSend_getBytes_range_(v80, v84, &v164, v83, 1);

                    v87 = objc_msgSend_position(a2, v85, v86);
                    objc_msgSend_setPosition_(a2, v88, v87 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v75, v76);
                  }

                  v71 |= (v164 & 0x7F) << v69;
                  if ((v164 & 0x80) == 0)
                  {
                    break;
                  }

                  v69 += 7;
                  v34 = v70++ >= 9;
                  if (v34)
                  {
                    goto LABEL_54;
                  }
                }

                objc_msgSend_hasError(a2, v67, v68);
LABEL_54:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v136 = v12;
              v137 = v11;
              v138 = v10;
              v139 = 0;
              v140 = 0;
              v141 = 0;
              while (1)
              {
                LOBYTE(v162) = 0;
                v142 = objc_msgSend_position(a2, v36, v9) + 1;
                if (v142 >= objc_msgSend_position(a2, v143, v144) && (v147 = objc_msgSend_position(a2, v145, v146) + 1, v147 <= objc_msgSend_length(a2, v148, v149)))
                {
                  v150 = objc_msgSend_data(a2, v145, v146);
                  v153 = objc_msgSend_position(a2, v151, v152);
                  objc_msgSend_getBytes_range_(v150, v154, &v162, v153, 1);

                  v157 = objc_msgSend_position(a2, v155, v156);
                  objc_msgSend_setPosition_(a2, v158, v157 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v145, v146);
                }

                v141 |= (v162 & 0x7F) << v139;
                if ((v162 & 0x80) == 0)
                {
                  break;
                }

                v139 += 7;
                v34 = v140++ >= 9;
                if (v34)
                {
                  goto LABEL_111;
                }
              }

              objc_msgSend_hasError(a2, v36, v9);
LABEL_111:
              PBRepeatedInt32Add();
              v10 = v138;
              v11 = v137;
              v12 = v136;
              v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
            }

            goto LABEL_112;
          }
        }

        else
        {
          if (v36 == 1)
          {
            v37 = objc_alloc_init(*(v10 + 592));
            objc_storeStrong((a1 + v11[108]), v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
LABEL_115:

              return 0;
            }

            goto LABEL_77;
          }

          if (v36 == 2)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + v12[109]) |= 1u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v41 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, &v162, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v162 & 0x7F) << v38;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v34 = v39++ >= 9;
              if (v34)
              {
                v58 = 0;
                goto LABEL_92;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v58 = 0;
            }

            else
            {
              v58 = v40;
            }

LABEL_92:
            v135 = v13[110];
LABEL_97:
            *(a1 + v135) = v58;
            goto LABEL_112;
          }
        }
      }

      else if (v36 <= 6)
      {
        if (v36 == 5)
        {
          v37 = objc_alloc_init(CKDPSubscriptionNotification);
          objc_storeStrong((a1 + 56), v37);
          v162 = 0;
          v163 = 0;
          if (!PBReaderPlaceMark() || !sub_22536967C(v37, a2, v113))
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        }

        if (v36 == 6)
        {
          v37 = objc_alloc_init(CKDPQueryFilter);
          objc_msgSend_addFilters_(a1, v89, v37);
          v162 = 0;
          v163 = 0;
          if (!PBReaderPlaceMark() || !sub_22531338C(v37, a2, v90))
          {
            goto LABEL_115;
          }

          goto LABEL_77;
        }
      }

      else
      {
        switch(v36)
        {
          case 7:
            v37 = objc_alloc_init(CKDPRecordType);
            objc_msgSend_addRecordTypes_(a1, v111, v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v37, a2, v112))
            {
              goto LABEL_115;
            }

            goto LABEL_77;
          case 8:
            v114 = 0;
            v115 = 0;
            v116 = 0;
            *(a1 + v12[109]) |= 4u;
            while (1)
            {
              LOBYTE(v162) = 0;
              v117 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v117 >= objc_msgSend_position(a2, v118, v119) && (v122 = objc_msgSend_position(a2, v120, v121) + 1, v122 <= objc_msgSend_length(a2, v123, v124)))
              {
                v125 = objc_msgSend_data(a2, v120, v121);
                v128 = objc_msgSend_position(a2, v126, v127);
                objc_msgSend_getBytes_range_(v125, v129, &v162, v128, 1);

                v132 = objc_msgSend_position(a2, v130, v131);
                objc_msgSend_setPosition_(a2, v133, v132 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v120, v121);
              }

              v116 |= (v162 & 0x7F) << v114;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              v34 = v115++ >= 9;
              if (v34)
              {
                LOBYTE(v134) = 0;
                goto LABEL_99;
              }
            }

            v134 = (v116 != 0) & ~objc_msgSend_hasError(a2, v36, v9);
LABEL_99:
            *(a1 + 88) = v134;
            goto LABEL_112;
          case 0xA:
            v37 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 80), v37);
            v162 = 0;
            v163 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_115;
            }

LABEL_77:
            PBReaderRecallMark();

            goto LABEL_112;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_112:
      v159 = objc_msgSend_position(a2, v36, v9);
    }

    while (v159 < objc_msgSend_length(a2, v160, v161));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253684C4()
{
  v0 = qword_280D584A8;
  qword_280D584A8 = &unk_2838C97C8;
}

uint64_t sub_225368614(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSubscription);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225366D9C(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225368BA8()
{
  v0 = qword_280D584B8;
  qword_280D584B8 = &unk_2838C97F0;
}

uint64_t sub_225368CF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536967C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v104[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v104[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v104, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v104[0] & 0x7F) << v10;
        if ((v104[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v41 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, v104, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v104[0] & 0x7F) << v38;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v30 = v39++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_61;
              }
            }

            v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_61:
            v99 = 33;
            goto LABEL_66;
          case 5:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v82 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
              {
                v90 = objc_msgSend_data(a2, v85, v86);
                v93 = objc_msgSend_position(a2, v91, v92);
                objc_msgSend_getBytes_range_(v90, v94, v104, v93, 1);

                v97 = objc_msgSend_position(a2, v95, v96);
                objc_msgSend_setPosition_(a2, v98, v97 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v85, v86);
              }

              v81 |= (v104[0] & 0x7F) << v79;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v30 = v80++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_65;
              }
            }

            v58 = (v81 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_65:
            v99 = 34;
            goto LABEL_66;
          case 6:
            v35 = PBReaderReadString();
            v36 = *(a1 + 24);
            *(a1 + 24) = v35;

            goto LABEL_67;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v34 = objc_alloc_init(CKDPSubscriptionNotificationAlert);
            objc_storeStrong((a1 + 16), v34);
            v104[0] = 0;
            v104[1] = 0;
            if (!PBReaderPlaceMark() || !sub_22536AB64(v34, a2, v37))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_30;
          case 2:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              LOBYTE(v104[0]) = 0;
              v62 = objc_msgSend_position(a2, v32, v9, v104[0]) + 1;
              if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
              {
                v70 = objc_msgSend_data(a2, v65, v66);
                v73 = objc_msgSend_position(a2, v71, v72);
                objc_msgSend_getBytes_range_(v70, v74, v104, v73, 1);

                v77 = objc_msgSend_position(a2, v75, v76);
                objc_msgSend_setPosition_(a2, v78, v77 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v65, v66);
              }

              v61 |= (v104[0] & 0x7F) << v59;
              if ((v104[0] & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v30 = v60++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_63;
              }
            }

            v58 = (v61 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_63:
            v99 = 32;
LABEL_66:
            *(a1 + v99) = v58;
            goto LABEL_67;
          case 3:
            v34 = PBReaderReadString();
            if (v34)
            {
              objc_msgSend_addAdditionalFields_(a1, v33, v34);
            }

LABEL_30:

            goto LABEL_67;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_67:
      v100 = objc_msgSend_position(a2, v32, v9);
    }

    while (v100 < objc_msgSend_length(a2, v101, v102));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536AB64(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v44 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      switch((v31 >> 3))
      {
        case 1u:
          v32 = PBReaderReadString();
          v33 = 80;
          goto LABEL_36;
        case 2u:
          v32 = PBReaderReadString();
          v33 = 40;
          goto LABEL_36;
        case 3u:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addLocalizedArguments_(a1, v37, v35);
          }

          goto LABEL_37;
        case 4u:
          v32 = PBReaderReadString();
          v33 = 8;
          goto LABEL_36;
        case 5u:
          v32 = PBReaderReadString();
          v33 = 24;
          goto LABEL_36;
        case 6u:
          v32 = PBReaderReadString();
          v33 = 48;
          goto LABEL_36;
        case 7u:
          v32 = PBReaderReadString();
          v33 = 16;
          goto LABEL_36;
        case 8u:
          v32 = PBReaderReadString();
          v33 = 88;
          goto LABEL_36;
        case 9u:
          v32 = PBReaderReadString();
          v33 = 104;
          goto LABEL_36;
        case 0xAu:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addTitleLocalizedArguments_(a1, v36, v35);
          }

          goto LABEL_37;
        case 0xBu:
          v32 = PBReaderReadString();
          v33 = 56;
          goto LABEL_36;
        case 0xCu:
          v32 = PBReaderReadString();
          v33 = 72;
LABEL_36:
          v35 = *&a1[v33];
          *&a1[v33] = v32;
          goto LABEL_37;
        case 0xDu:
          v35 = PBReaderReadString();
          if (v35)
          {
            objc_msgSend_addSubtitleLocalizedArguments_(a1, v34, v35);
          }

LABEL_37:

          goto LABEL_38;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

LABEL_38:
          v40 = objc_msgSend_position(a2, v38, v39);
          if (v40 >= objc_msgSend_length(a2, v41, v42))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          break;
      }
    }
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22536C06C()
{
  v0 = qword_280D584C8;
  qword_280D584C8 = &unk_2838C9818;
}

uint64_t sub_22536C1BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536C8AC(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSubscription);
        objc_msgSend_addSubscriptions_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225366D9C(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536EBA4(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v41 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = a1[1];
        a1[1] = v32;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadString();
    if (v33)
    {
      objc_msgSend_addValues_(a1, v34, v33);
    }

    goto LABEL_22;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22536F5DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63 & 0x7F) << v10;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPThrottlingConfigRateLimit);
          objc_storeStrong((a1 + 24), v33);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !sub_225372BFC(v33, a2, v58))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_39;
        }

        if (v32 == 10)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v63) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v63) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v63, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v63 & 0x7F) << v35;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_43:
          *(a1 + 32) = v55;
          goto LABEL_44;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = PBReaderReadString();
          v57 = *(a1 + 16);
          *(a1 + 16) = v56;

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPThrottlingConfigCriteria);
          objc_storeStrong((a1 + 8), v33);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !sub_225371870(v33, a2, v34))
          {
            goto LABEL_46;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225371870(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v102 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v102, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v102 & 0x7F) << v10;
        if ((v102 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            *(a1 + 80) |= 4u;
            while (1)
            {
              v104 = 0;
              v79 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
              {
                v87 = objc_msgSend_data(a2, v82, v83);
                v90 = objc_msgSend_position(a2, v88, v89);
                objc_msgSend_getBytes_range_(v87, v91, &v104, v90, 1);

                v94 = objc_msgSend_position(a2, v92, v93);
                objc_msgSend_setPosition_(a2, v95, v94 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v82, v83);
              }

              v78 |= (v104 & 0x7F) << v76;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v76 += 7;
              v30 = v77++ >= 9;
              if (v30)
              {
                v55 = 0;
                goto LABEL_76;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v55 = 0;
            }

            else
            {
              v55 = v78;
            }

LABEL_76:
            v98 = 64;
          }

          else
          {
            if (v32 != 4)
            {
              goto LABEL_63;
            }

            v56 = 0;
            v57 = 0;
            v58 = 0;
            *(a1 + 80) |= 2u;
            while (1)
            {
              v103 = 0;
              v59 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
              {
                v67 = objc_msgSend_data(a2, v62, v63);
                v70 = objc_msgSend_position(a2, v68, v69);
                objc_msgSend_getBytes_range_(v67, v71, &v103, v70, 1);

                v74 = objc_msgSend_position(a2, v72, v73);
                objc_msgSend_setPosition_(a2, v75, v74 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v62, v63);
              }

              v58 |= (v103 & 0x7F) << v56;
              if ((v103 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v30 = v57++ >= 9;
              if (v30)
              {
                v55 = 0;
                goto LABEL_72;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v55 = 0;
            }

            else
            {
              v55 = v58;
            }

LABEL_72:
            v98 = 32;
          }

          goto LABEL_77;
        }

        if (v32 != 1)
        {
          if (v32 != 2)
          {
            goto LABEL_63;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 80) |= 1u;
          while (1)
          {
            v105 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v105, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v105 & 0x7F) << v35;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_68;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_68:
          v98 = 16;
LABEL_77:
          *(a1 + v98) = v55;
          goto LABEL_78;
        }

        v33 = PBReaderReadString();
        v34 = 24;
      }

      else if (v32 <= 9)
      {
        if (v32 == 5)
        {
          v33 = PBReaderReadString();
          v34 = 72;
        }

        else
        {
          if (v32 != 6)
          {
LABEL_63:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_78;
          }

          v33 = PBReaderReadString();
          v34 = 56;
        }
      }

      else
      {
        switch(v32)
        {
          case 0xA:
            v33 = PBReaderReadString();
            v34 = 48;
            break;
          case 0xB:
            v33 = PBReaderReadString();
            v34 = 40;
            break;
          case 0xC:
            v33 = PBReaderReadString();
            v34 = 8;
            break;
          default:
            goto LABEL_63;
        }
      }

      v96 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_78:
      v99 = objc_msgSend_position(a2, v32, v9);
    }

    while (v99 < objc_msgSend_length(a2, v100, v101));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225372BFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v141 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v141, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v141 & 0x7F) << v10;
        if ((v141 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      switch(v32)
      {
        case 3:
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 36) |= 0x10u;
          while (1)
          {
            v142 = 0;
            v78 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v78 >= objc_msgSend_position(a2, v79, v80) && (v83 = objc_msgSend_position(a2, v81, v82) + 1, v83 <= objc_msgSend_length(a2, v84, v85)))
            {
              v86 = objc_msgSend_data(a2, v81, v82);
              v89 = objc_msgSend_position(a2, v87, v88);
              objc_msgSend_getBytes_range_(v86, v90, &v142, v89, 1);

              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_setPosition_(a2, v94, v93 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v81, v82);
            }

            v77 |= (v142 & 0x7F) << v75;
            if ((v142 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v30 = v76++ >= 9;
            if (v30)
            {
              v74 = 0;
              goto LABEL_73;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v74 = 0;
          }

          else
          {
            v74 = v77;
          }

LABEL_73:
          v136 = 32;
LABEL_91:
          *(a1 + v136) = v74;
          goto LABEL_92;
        case 4:
          v95 = 0;
          v96 = 0;
          v97 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v146 = 0;
            v98 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v98 >= objc_msgSend_position(a2, v99, v100) && (v103 = objc_msgSend_position(a2, v101, v102) + 1, v103 <= objc_msgSend_length(a2, v104, v105)))
            {
              v106 = objc_msgSend_data(a2, v101, v102);
              v109 = objc_msgSend_position(a2, v107, v108);
              objc_msgSend_getBytes_range_(v106, v110, &v146, v109, 1);

              v113 = objc_msgSend_position(a2, v111, v112);
              objc_msgSend_setPosition_(a2, v114, v113 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v101, v102);
            }

            v97 |= (v146 & 0x7F) << v95;
            if ((v146 & 0x80) == 0)
            {
              break;
            }

            v95 += 7;
            v30 = v96++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_77;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v97;
          }

LABEL_77:
          v137 = 16;
          break;
        case 5:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v145 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v145, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v145 & 0x7F) << v33;
            if ((v145 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_85;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_85:
          v137 = 8;
          break;
        default:
          goto LABEL_68;
      }

      *(a1 + v137) = v53;
LABEL_92:
      v138 = objc_msgSend_position(a2, v32, v9);
      if (v138 >= objc_msgSend_length(a2, v139, v140))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v144 = 0;
        v118 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v118 >= objc_msgSend_position(a2, v119, v120) && (v123 = objc_msgSend_position(a2, v121, v122) + 1, v123 <= objc_msgSend_length(a2, v124, v125)))
        {
          v126 = objc_msgSend_data(a2, v121, v122);
          v129 = objc_msgSend_position(a2, v127, v128);
          objc_msgSend_getBytes_range_(v126, v130, &v144, v129, 1);

          v133 = objc_msgSend_position(a2, v131, v132);
          objc_msgSend_setPosition_(a2, v134, v133 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v121, v122);
        }

        v117 |= (v144 & 0x7F) << v115;
        if ((v144 & 0x80) == 0)
        {
          break;
        }

        v115 += 7;
        v30 = v116++ >= 9;
        if (v30)
        {
          v74 = 0;
          goto LABEL_81;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v74 = 0;
      }

      else
      {
        v74 = v117;
      }

LABEL_81:
      v136 = 28;
    }

    else
    {
      if (v32 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_92;
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v143 = 0;
        v57 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, &v143, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v143 & 0x7F) << v54;
        if ((v143 & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          v74 = 0;
          goto LABEL_90;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v74 = 0;
      }

      else
      {
        v74 = v56;
      }

LABEL_90:
      v136 = 24;
    }

    goto LABEL_91;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225373CC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v82 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v83 = 0;
            v61 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
            {
              v69 = objc_msgSend_data(a2, v64, v65);
              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_getBytes_range_(v69, v73, &v83, v72, 1);

              v76 = objc_msgSend_position(a2, v74, v75);
              objc_msgSend_setPosition_(a2, v77, v76 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v64, v65);
            }

            v60 |= (v83 & 0x7F) << v58;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v30 = v59++ >= 9;
            if (v30)
            {
              v78 = 0;
              goto LABEL_50;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

LABEL_50:
          *(a1 + 8) = v78;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v84 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v84, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v84 & 0x7F) << v35;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              LOBYTE(v55) = 0;
              goto LABEL_46;
            }
          }

          v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_46:
          *(a1 + 32) = v55;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = 24;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_32;
          }

          v33 = PBReaderReadString();
          v34 = 16;
        }

        v57 = *(a1 + v34);
        *(a1 + v34) = v33;
      }

LABEL_51:
      v79 = objc_msgSend_position(a2, v32, v9);
    }

    while (v79 < objc_msgSend_length(a2, v80, v81));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253746B0()
{
  v0 = qword_280D584D8;
  qword_280D584D8 = &unk_2838C9840;
}

uint64_t sub_225374800(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPTokenRegistrationBody);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225373CC8(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225374DA8()
{
  v0 = qword_280D584E8;
  qword_280D584E8 = &unk_2838C9868;
}

uint64_t sub_225374EF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPTokenRegistrationBody);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225373CC8(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253761F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225376688()
{
  v0 = qword_280D550B8;
  qword_280D550B8 = &unk_2838C9890;
}

uint64_t sub_225376B78(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    v10 = 0x277CBC000uLL;
    v11 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v12 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        LOBYTE(v139) = 0;
        v17 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v17 >= objc_msgSend_position(a2, v18, v19) && (v22 = objc_msgSend_position(a2, v20, v21) + 1, v22 <= objc_msgSend_length(a2, v23, v24)))
        {
          v25 = objc_msgSend_data(a2, v20, v21);
          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_getBytes_range_(v25, v29, &v139, v28, 1);

          v32 = objc_msgSend_position(a2, v30, v31);
          objc_msgSend_setPosition_(a2, v33, v32 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v20, v21);
        }

        v16 |= (v139 & 0x7F) << v14;
        if ((v139 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v34 = v15++ >= 9;
        if (v34)
        {
          v35 = 0;
          goto LABEL_16;
        }
      }

      v35 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v16;
LABEL_16:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v35 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v36 = (v35 >> 3);
      if ((v35 >> 3) > 3)
      {
        switch(v36)
        {
          case 4:
            v60 = PBReaderReadString();
            v61 = a1[5];
            a1[5] = v60;

            goto LABEL_85;
          case 5:
            if (v9 == 2)
            {
              v139 = 0;
              v140 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              while (1)
              {
                v86 = objc_msgSend_position(a2, v84, v85);
                if (v86 >= objc_msgSend_length(a2, v87, v88) || (objc_msgSend_hasError(a2, v89, v90) & 1) != 0)
                {
                  break;
                }

                v93 = 0;
                v94 = 0;
                v95 = 0;
                while (1)
                {
                  v141 = 0;
                  v96 = objc_msgSend_position(a2, v91, v92) + 1;
                  if (v96 >= objc_msgSend_position(a2, v97, v98) && (v101 = objc_msgSend_position(a2, v99, v100) + 1, v101 <= objc_msgSend_length(a2, v102, v103)))
                  {
                    v104 = objc_msgSend_data(a2, v99, v100);
                    v107 = objc_msgSend_position(a2, v105, v106);
                    objc_msgSend_getBytes_range_(v104, v108, &v141, v107, 1);

                    v111 = objc_msgSend_position(a2, v109, v110);
                    objc_msgSend_setPosition_(a2, v112, v111 + 1);
                  }

                  else
                  {
                    objc_msgSend__setError(a2, v99, v100);
                  }

                  v95 |= (v141 & 0x7F) << v93;
                  if ((v141 & 0x80) == 0)
                  {
                    break;
                  }

                  v93 += 7;
                  v34 = v94++ >= 9;
                  if (v34)
                  {
                    goto LABEL_66;
                  }
                }

                objc_msgSend_hasError(a2, v91, v92);
LABEL_66:
                PBRepeatedInt64Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v113 = v12;
              v114 = v11;
              v115 = v10;
              v116 = 0;
              v117 = 0;
              v118 = 0;
              while (1)
              {
                LOBYTE(v139) = 0;
                v119 = objc_msgSend_position(a2, v36, v9) + 1;
                if (v119 >= objc_msgSend_position(a2, v120, v121) && (v124 = objc_msgSend_position(a2, v122, v123) + 1, v124 <= objc_msgSend_length(a2, v125, v126)))
                {
                  v127 = objc_msgSend_data(a2, v122, v123);
                  v130 = objc_msgSend_position(a2, v128, v129);
                  objc_msgSend_getBytes_range_(v127, v131, &v139, v130, 1);

                  v134 = objc_msgSend_position(a2, v132, v133);
                  objc_msgSend_setPosition_(a2, v135, v134 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v122, v123);
                }

                v118 |= (v139 & 0x7F) << v116;
                if ((v139 & 0x80) == 0)
                {
                  break;
                }

                v116 += 7;
                v34 = v117++ >= 9;
                if (v34)
                {
                  goto LABEL_84;
                }
              }

              objc_msgSend_hasError(a2, v36, v9);
LABEL_84:
              PBRepeatedInt64Add();
              v10 = v115;
              v11 = v114;
              v12 = v113;
              v13 = &OBJC_IVAR___CKDPResponseOperation__shareAccessResponse;
            }

            goto LABEL_85;
          case 6:
            v59 = PBReaderReadString();
            if (v59)
            {
              objc_msgSend_addPackagePutReceipts_(a1, v58, v59);
            }

LABEL_39:

            goto LABEL_85;
        }
      }

      else
      {
        switch(v36)
        {
          case 1:
            v59 = objc_alloc_init(*(v10 + 616));
            objc_storeStrong((a1 + v11[174]), v59);
            v139 = 0;
            v140 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_39;
          case 2:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            *(a1 + v12[175]) |= 2u;
            while (1)
            {
              LOBYTE(v139) = 0;
              v65 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v65 >= objc_msgSend_position(a2, v66, v67) && (v70 = objc_msgSend_position(a2, v68, v69) + 1, v70 <= objc_msgSend_length(a2, v71, v72)))
              {
                v73 = objc_msgSend_data(a2, v68, v69);
                v76 = objc_msgSend_position(a2, v74, v75);
                objc_msgSend_getBytes_range_(v73, v77, &v139, v76, 1);

                v80 = objc_msgSend_position(a2, v78, v79);
                objc_msgSend_setPosition_(a2, v81, v80 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v68, v69);
              }

              v64 |= (v139 & 0x7F) << v62;
              if ((v139 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v34 = v63++ >= 9;
              if (v34)
              {
                LOBYTE(v82) = 0;
                goto LABEL_72;
              }
            }

            v82 = (v64 != 0) & ~objc_msgSend_hasError(a2, v36, v9);
LABEL_72:
            *(a1 + v13[176]) = v82;
            goto LABEL_85;
          case 3:
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + v12[175]) |= 1u;
            while (1)
            {
              LOBYTE(v139) = 0;
              v40 = objc_msgSend_position(a2, v36, v9) + 1;
              if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
              {
                v48 = objc_msgSend_data(a2, v43, v44);
                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v139, v51, 1);

                v55 = objc_msgSend_position(a2, v53, v54);
                objc_msgSend_setPosition_(a2, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v43, v44);
              }

              v39 |= (v139 & 0x7F) << v37;
              if ((v139 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v34 = v38++ >= 9;
              if (v34)
              {
                v57 = 0;
                goto LABEL_70;
              }
            }

            if (objc_msgSend_hasError(a2, v36, v9))
            {
              v57 = 0;
            }

            else
            {
              v57 = v39;
            }

LABEL_70:
            a1[4] = v57;
            goto LABEL_85;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v136 = objc_msgSend_position(a2, v36, v9);
    }

    while (v136 < objc_msgSend_length(a2, v137, v138));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225378098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v33 = PBReaderReadString();
            v34 = 32;
            goto LABEL_38;
          case 5:
            v56 = objc_alloc_init(CKDPProtectionInfo);
            objc_storeStrong((a1 + 40), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v56, a2, v59))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_46;
          case 6:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v38 = objc_msgSend_position(a2, v32, v9, v64) + 1;
              if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
              {
                v46 = objc_msgSend_data(a2, v41, v42);
                v49 = objc_msgSend_position(a2, v47, v48);
                objc_msgSend_getBytes_range_(v46, v50, &v64, v49, 1);

                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_setPosition_(a2, v54, v53 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v41, v42);
              }

              v37 |= (v64 & 0x7F) << v35;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v30 = v36++ >= 9;
              if (v30)
              {
                LOBYTE(v55) = 0;
                goto LABEL_48;
              }
            }

            v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_48:
            *(a1 + 48) = v55;
            goto LABEL_49;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v56 = objc_alloc_init(MEMORY[0x277CBC250]);
            objc_storeStrong((a1 + 24), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPIdentifierReadFrom())
            {
              goto LABEL_51;
            }

            goto LABEL_46;
          case 2:
            v56 = objc_alloc_init(CKDPUserAlias);
            objc_storeStrong((a1 + 8), v56);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !sub_225378F44(v56, a2, v58))
            {
              goto LABEL_51;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_49;
          case 3:
            v33 = PBReaderReadString();
            v34 = 16;
LABEL_38:
            v57 = *(a1 + v34);
            *(a1 + v34) = v33;

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225378F44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253795F0()
{
  v0 = qword_280D584F8;
  qword_280D584F8 = &unk_2838C98B8;
}

uint64_t sub_2253798F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPUserInformationBlockedRequestAccessReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 16);
        *(a1 + 16) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPContactInformation);
    objc_storeStrong((a1 + 8), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPContactInformationReadFrom(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPUserInformationRequestAccessReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 16);
        *(a1 + 16) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPContactInformation);
    objc_storeStrong((a1 + 8), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPContactInformationReadFrom(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537AD58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_30;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_30:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537B228()
{
  v0 = qword_280D58508;
  qword_280D58508 = &unk_2838C98E0;
}

uint64_t sub_22537B690(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUserPrivacySettingsBatchLookupResponseContainerPrivacySettings);
        objc_msgSend_addContainerPrivacySettings_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22537C170(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537C170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v54 = PBReaderReadString();
          if (v54)
          {
            objc_msgSend_addApplicationBundle_(a1, v58, v54);
          }

LABEL_39:

          goto LABEL_44;
        }

        if (v32 == 4)
        {
          v54 = objc_alloc_init(CKDPUserPrivacySettings);
          objc_storeStrong((a1 + 32), v54);
          v63[0] = 0;
          v63[1] = 0;
          if (!PBReaderPlaceMark() || !sub_22537AD58(v54, a2, v55))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_39;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = PBReaderReadString();
          v57 = *(a1 + 16);
          *(a1 + 16) = v56;

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v63, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v63[0] & 0x7F) << v33;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_43;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_43:
          *(a1 + 24) = v53;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537CD3C()
{
  v0 = qword_280D58518;
  qword_280D58518 = &unk_2838C9908;
}

void sub_22537D05C()
{
  v0 = qword_280D58528;
  qword_280D58528 = &unk_2838C9930;
}

uint64_t sub_22537D3F4(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUserPrivacySettings);
        objc_storeStrong(a1 + 2, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22537AD58(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadString();
    if (v32)
    {
      objc_msgSend_addApplicationBundle_(a1, v34, v32);
    }

LABEL_24:

    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537DC80()
{
  v0 = qword_280D550C8;
  qword_280D550C8 = &unk_2838C9958;
}

uint64_t sub_22537DE08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPUserPrivacySettings);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_22537AD58(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537E598()
{
  v0 = qword_280D550D8;
  qword_280D550D8 = &unk_2838C9980;
}

uint64_t sub_22537E9EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v58 = PBReaderReadString();
          v59 = *(a1 + 16);
          *(a1 + 16) = v58;

          goto LABEL_42;
        }

        if (v32 == 4)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v64) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, &v64, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v64 & 0x7F) << v36;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              LOBYTE(v56) = 0;
              goto LABEL_41;
            }
          }

          v56 = (v38 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_41:
          *(a1 + 32) = v56;
          goto LABEL_42;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPUserAlias);
          objc_storeStrong((a1 + 8), v33);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !sub_225378F44(v33, a2, v57))
          {
LABEL_44:

            return 0;
          }

          goto LABEL_38;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPQuerySort);
          objc_msgSend_addSortedBy_(a1, v34, v33);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !sub_225315FB0(v33, a2, v35))
          {
            goto LABEL_44;
          }

LABEL_38:
          PBReaderRecallMark();

          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22537F6DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPUser);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225378098(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22537FB20()
{
  v0 = qword_280D58538;
  qword_280D58538 = &unk_2838C99A8;
}

uint64_t sub_22537FDD4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecord);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225380218()
{
  v0 = qword_280D550E8;
  qword_280D550E8 = &unk_2838C99D0;
}

uint64_t sub_2253803F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            LOBYTE(v55) = 0;
            goto LABEL_32;
          }
        }

        v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_32:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225380BD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPWebAuthTokenRetrieveResponse__containerScopedUserId;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPWebAuthTokenRetrieveResponse__token;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538168C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v51) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v51, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v51 & 0x7F) << v10;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      if (v11++ >= 9)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    switch((v31 >> 3))
    {
      case 1u:
        v32 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 96), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && CKDPRecordZoneIdentifierReadFrom())
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      case 3u:
        v32 = objc_alloc_init(CKDPProtectionInfo);
        v41 = 32;
        goto LABEL_38;
      case 6u:
        v32 = objc_alloc_init(CKDPProtectionInfo);
        v41 = 48;
LABEL_38:
        objc_storeStrong((a1 + v41), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPProtectionInfoReadFrom(v32, a2, v42))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 8u:
        v32 = objc_alloc_init(CKDPRecordStableUrl);
        objc_storeStrong((a1 + 80), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordStableUrlReadFrom(v32, a2, v38))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 9u:
        v32 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 64), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v32, a2, v34))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xAu:
        v32 = PBReaderReadData();
        if (v32)
        {
          objc_msgSend_addProtectionInfoKeysToRemove_(a1, v36, v32);
        }

        goto LABEL_54;
      case 0xBu:
        v32 = objc_alloc_init(CKDPStorageExpiration);
        objc_storeStrong((a1 + 88), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_2253624AC(v32, a2, v43))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xCu:
        v32 = objc_alloc_init(CKDPZoneSignedCryptoRequirements);
        objc_storeStrong((a1 + 72), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_225392808(v32, a2, v44))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0xDu:
        v32 = objc_alloc_init(CKDPZoneCryptoFeatureSet);
        objc_storeStrong((a1 + 8), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && sub_225387834(v32, a2, v46))
        {
          goto LABEL_53;
        }

        goto LABEL_57;
      case 0xEu:
        v32 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v33 = 104;
        goto LABEL_48;
      case 0xFu:
        v32 = objc_alloc_init(CKDPProtectionInfoKeysToRemove);
        v33 = 56;
LABEL_48:
        objc_storeStrong((a1 + v33), v32);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !sub_2253101B8(v32, a2, v45))
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      case 0x10u:
        v32 = objc_alloc_init(CKDPZoneZoneReference);
        objc_storeStrong((a1 + 24), v32);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && sub_225394710(v32, a2, v37))
        {
LABEL_53:
          PBReaderRecallMark();
LABEL_54:

LABEL_55:
          v47 = objc_msgSend_position(a2, v39, v40);
          if (v47 >= objc_msgSend_length(a2, v48, v49))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_57:

        return 0;
      case 0x11u:
        v35 = PBReaderReadString();
        v32 = *(a1 + 16);
        *(a1 + 16) = v35;
        goto LABEL_54;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
    }
  }
}

uint64_t sub_225383170(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v160 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v160, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v160 & 0x7F) << v10;
        if ((v160 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        switch(v32)
        {
          case 5:
            v94 = 0;
            v95 = 0;
            v96 = 0;
            *(a1 + 20) |= 1u;
            while (1)
            {
              v166 = 0;
              v97 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v97 >= objc_msgSend_position(a2, v98, v99) && (v102 = objc_msgSend_position(a2, v100, v101) + 1, v102 <= objc_msgSend_length(a2, v103, v104)))
              {
                v105 = objc_msgSend_data(a2, v100, v101);
                v108 = objc_msgSend_position(a2, v106, v107);
                objc_msgSend_getBytes_range_(v105, v109, &v166, v108, 1);

                v112 = objc_msgSend_position(a2, v110, v111);
                objc_msgSend_setPosition_(a2, v113, v112 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v100, v101);
              }

              v96 |= (v166 & 0x7F) << v94;
              if ((v166 & 0x80) == 0)
              {
                break;
              }

              v94 += 7;
              v30 = v95++ >= 9;
              if (v30)
              {
                v114 = 0;
                goto LABEL_85;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v114 = 0;
            }

            else
            {
              v114 = v96;
            }

LABEL_85:
            *(a1 + 8) = v114;
            goto LABEL_95;
          case 6:
            v136 = 0;
            v137 = 0;
            v138 = 0;
            *(a1 + 20) |= 0x20u;
            while (1)
            {
              v162 = 0;
              v139 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v139 >= objc_msgSend_position(a2, v140, v141) && (v144 = objc_msgSend_position(a2, v142, v143) + 1, v144 <= objc_msgSend_length(a2, v145, v146)))
              {
                v147 = objc_msgSend_data(a2, v142, v143);
                v150 = objc_msgSend_position(a2, v148, v149);
                objc_msgSend_getBytes_range_(v147, v151, &v162, v150, 1);

                v154 = objc_msgSend_position(a2, v152, v153);
                objc_msgSend_setPosition_(a2, v155, v154 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v142, v143);
              }

              v138 |= (v162 & 0x7F) << v136;
              if ((v162 & 0x80) == 0)
              {
                break;
              }

              v136 += 7;
              v30 = v137++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_93;
              }
            }

            v53 = (v138 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_93:
            v156 = 16;
            break;
          case 7:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 20) |= 0x10u;
            while (1)
            {
              v161 = 0;
              v57 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
              {
                v65 = objc_msgSend_data(a2, v60, v61);
                v68 = objc_msgSend_position(a2, v66, v67);
                objc_msgSend_getBytes_range_(v65, v69, &v161, v68, 1);

                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_setPosition_(a2, v73, v72 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v60, v61);
              }

              v56 |= (v161 & 0x7F) << v54;
              if ((v161 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v30 = v55++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_89;
              }
            }

            v53 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_89:
            v156 = 15;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_95;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 20) |= 2u;
            while (1)
            {
              v165 = 0;
              v77 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v77 >= objc_msgSend_position(a2, v78, v79) && (v82 = objc_msgSend_position(a2, v80, v81) + 1, v82 <= objc_msgSend_length(a2, v83, v84)))
              {
                v85 = objc_msgSend_data(a2, v80, v81);
                v88 = objc_msgSend_position(a2, v86, v87);
                objc_msgSend_getBytes_range_(v85, v89, &v165, v88, 1);

                v92 = objc_msgSend_position(a2, v90, v91);
                objc_msgSend_setPosition_(a2, v93, v92 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v80, v81);
              }

              v76 |= (v165 & 0x7F) << v74;
              if ((v165 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v30 = v75++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_81;
              }
            }

            v53 = (v76 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_81:
            v156 = 12;
            break;
          case 2:
            v116 = 0;
            v117 = 0;
            v118 = 0;
            *(a1 + 20) |= 8u;
            while (1)
            {
              v164 = 0;
              v119 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v119 >= objc_msgSend_position(a2, v120, v121) && (v124 = objc_msgSend_position(a2, v122, v123) + 1, v124 <= objc_msgSend_length(a2, v125, v126)))
              {
                v127 = objc_msgSend_data(a2, v122, v123);
                v130 = objc_msgSend_position(a2, v128, v129);
                objc_msgSend_getBytes_range_(v127, v131, &v164, v130, 1);

                v134 = objc_msgSend_position(a2, v132, v133);
                objc_msgSend_setPosition_(a2, v135, v134 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v122, v123);
              }

              v118 |= (v164 & 0x7F) << v116;
              if ((v164 & 0x80) == 0)
              {
                break;
              }

              v116 += 7;
              v30 = v117++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_91;
              }
            }

            v53 = (v118 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_91:
            v156 = 14;
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 20) |= 4u;
            while (1)
            {
              v163 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v163, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v163 & 0x7F) << v33;
              if ((v163 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_87;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_87:
            v156 = 13;
            break;
          default:
            goto LABEL_60;
        }
      }

      *(a1 + v156) = v53;
LABEL_95:
      v157 = objc_msgSend_position(a2, v32, v9);
    }

    while (v157 < objc_msgSend_length(a2, v158, v159));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253840E4()
{
  v0 = qword_280D550F8;
  qword_280D550F8 = &unk_2838C99F8;
}

uint64_t sub_2253844F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v82[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v82, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v82[0] & 0x7F) << v33;
            if ((v82[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_49;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_49:
          v77 = 20;
LABEL_54:
          *(a1 + v77) = v53;
          goto LABEL_55;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v74 = objc_alloc_init(MEMORY[0x277CBC278]);
      objc_storeStrong((a1 + 24), v74);
      v82[0] = 0;
      v82[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v75 = PBReaderReadData();
      v76 = *(a1 + 8);
      *(a1 + 8) = v75;

      goto LABEL_55;
    }

    if (v32 == 4)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v57 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, v82, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v82[0] & 0x7F) << v54;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          v53 = 0;
          goto LABEL_53;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v53 = 0;
      }

      else
      {
        v53 = v56;
      }

LABEL_53:
      v77 = 16;
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253852C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v63[0] & 0x7F) << v38;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            LOBYTE(v58) = 0;
            goto LABEL_36;
          }
        }

        v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_36:
        *(a1 + 24) = v58;
      }

      else if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v37 = *(a1 + 16);
        *(a1 + 16) = v36;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneChildrenRetrieveResponseChildZoneInfo);
        objc_msgSend_addChildren_(a1, v34, v33);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225387834(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225387CE4()
{
  v0 = qword_280D55108;
  qword_280D55108 = &unk_2838C9A20;
}

uint64_t sub_225387F70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v54 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 16), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
LABEL_46:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 4)
        {
          v54 = objc_alloc_init(CKDPAncestryEtag);
          objc_storeStrong((a1 + 8), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !sub_2252D9FA4(v54, a2, v55))
          {
            goto LABEL_46;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v54 = objc_alloc_init(MEMORY[0x277CBC278]);
          objc_storeStrong((a1 + 24), v54);
          v60 = 0;
          v61 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
          {
            goto LABEL_46;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v60) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v60, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v60 & 0x7F) << v33;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_43;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_43:
          *(a1 + 32) = v53;
          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225388C28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253890D8()
{
  v0 = qword_280D55118;
  qword_280D55118 = &unk_2838C9A48;
}

uint64_t sub_2253892CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v59[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59[0] & 0x7F) << v10;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v37 = objc_msgSend_position(a2, v32, v9, v59[0]) + 1;
          if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
          {
            v45 = objc_msgSend_data(a2, v40, v41);
            v48 = objc_msgSend_position(a2, v46, v47);
            objc_msgSend_getBytes_range_(v45, v49, v59, v48, 1);

            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_setPosition_(a2, v53, v52 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v40, v41);
          }

          v36 |= (v59[0] & 0x7F) << v34;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v30 = v35++ >= 9;
          if (v30)
          {
            LOBYTE(v54) = 0;
            goto LABEL_34;
          }
        }

        v54 = (v36 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        *(a1 + 16) = v54;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 8), v33);
        v59[0] = 0;
        v59[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225389C94(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPZoneRetrieveAncestorsResponseZoneAncestor);
        objc_msgSend_addAncestors_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22538A4CC(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538A4CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPZoneRetrieveResponseZoneSummary);
        objc_storeStrong((a1 + 16), v32);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || !sub_22538F79C(v32, a2, v33))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPRecord);
    objc_storeStrong((a1 + 8), v32);
    v41 = 0;
    v42 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22538AAE8()
{
  v0 = qword_280D55128;
  qword_280D55128 = &unk_2838C9A70;
}

uint64_t sub_22538ACC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 8) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadData();
        v34 = *(a1 + 16);
        *(a1 + 16) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538C520(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v104) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v104) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v104, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v104 & 0x7F) << v10;
        if ((v104 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v75 = objc_alloc_init(MEMORY[0x277CBC278]);
            v76 = 32;
LABEL_46:
            objc_storeStrong((a1 + v76), v75);
            v104 = 0;
            v105 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_79;
            }

LABEL_56:
            PBReaderRecallMark();

            goto LABEL_77;
          case 2:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v104) = 0;
              v82 = objc_msgSend_position(a2, v32, v9, v104) + 1;
              if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
              {
                v90 = objc_msgSend_data(a2, v85, v86);
                v93 = objc_msgSend_position(a2, v91, v92);
                objc_msgSend_getBytes_range_(v90, v94, &v104, v93, 1);

                v97 = objc_msgSend_position(a2, v95, v96);
                objc_msgSend_setPosition_(a2, v98, v97 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v85, v86);
              }

              v81 |= (v104 & 0x7F) << v79;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v30 = v80++ >= 9;
              if (v30)
              {
                v74 = 0;
                goto LABEL_75;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v74 = 0;
            }

            else
            {
              v74 = v81;
            }

LABEL_75:
            v99 = 24;
            goto LABEL_76;
          case 3:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v104) = 0;
              v57 = objc_msgSend_position(a2, v32, v9, v104) + 1;
              if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
              {
                v65 = objc_msgSend_data(a2, v60, v61);
                v68 = objc_msgSend_position(a2, v66, v67);
                objc_msgSend_getBytes_range_(v65, v69, &v104, v68, 1);

                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_setPosition_(a2, v73, v72 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v60, v61);
              }

              v56 |= (v104 & 0x7F) << v54;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v30 = v55++ >= 9;
              if (v30)
              {
                v74 = 0;
                goto LABEL_71;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v74 = 0;
            }

            else
            {
              v74 = v56;
            }

LABEL_71:
            v99 = 28;
LABEL_76:
            *(a1 + v99) = v74;
            goto LABEL_77;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v75 = objc_alloc_init(CKDPAnonymousZoneInfo);
          objc_storeStrong((a1 + 8), v75);
          v104 = 0;
          v105 = 0;
          if (!PBReaderPlaceMark() || !sub_2252DC8D4(v75, a2, v78))
          {
LABEL_79:

            return 0;
          }

          goto LABEL_56;
        }

        if (v32 == 7)
        {
          v75 = objc_alloc_init(MEMORY[0x277CBC278]);
          v76 = 40;
          goto LABEL_46;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v75 = objc_alloc_init(CKDPZoneCapabilities);
          objc_storeStrong((a1 + 16), v75);
          v104 = 0;
          v105 = 0;
          if (!PBReaderPlaceMark() || !sub_225383170(v75, a2, v77))
          {
            goto LABEL_79;
          }

          goto LABEL_56;
        }

        if (v32 == 5)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            LOBYTE(v104) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v104) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v104, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v104 & 0x7F) << v33;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_67;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_67:
          *(a1 + 48) = v53;
          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v100 = objc_msgSend_position(a2, v32, v9);
    }

    while (v100 < objc_msgSend_length(a2, v101, v102));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22538D408()
{
  v0 = qword_280D55138;
  qword_280D55138 = &unk_2838C9A98;
}

uint64_t sub_22538D6D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v82[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v82, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v82[0] & 0x7F) << v33;
            if ((v82[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_47;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_47:
          v77 = 24;
LABEL_50:
          *(a1 + v77) = v53;
          goto LABEL_51;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v74 = objc_alloc_init(MEMORY[0x277CBC278]);
      objc_storeStrong((a1 + 16), v74);
      v82[0] = 0;
      v82[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v75 = PBReaderReadData();
      v76 = *(a1 + 8);
      *(a1 + 8) = v75;

      goto LABEL_51;
    }

    if (v32 == 4)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v57 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, v82, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v82[0] & 0x7F) << v54;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          LOBYTE(v53) = 0;
          goto LABEL_49;
        }
      }

      v53 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_49:
      v77 = 25;
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538E5FC(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v45) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v45, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v45 & 0x7F) << v10;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v33 = a1[2];
        a1[2] = v36;
        goto LABEL_27;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneRetrieveResponseZoneSummary);
        objc_msgSend_addZoneSummary_(a1, v34, v33);
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark() || !sub_22538F79C(v33, a2, v35))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v41 = objc_msgSend_position(a2, v39, v40);
      if (v41 >= objc_msgSend_length(a2, v42, v43))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPAnonymousZoneInfo);
    objc_msgSend_addAnonymousZoneInfo_(a1, v37, v33);
    v45 = 0;
    v46 = 0;
    if (!PBReaderPlaceMark() || !sub_2252DC8D4(v33, a2, v38))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538F79C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v169) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v169) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v169, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v169 & 0x7F) << v10;
      if ((v169 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = objc_alloc_init(CKDPZone);
        objc_storeStrong((a1 + 64), v33);
        v169 = 0;
        v170 = 0;
        if (PBReaderPlaceMark() && sub_22538168C(v33, a2, v34))
        {
          goto LABEL_79;
        }

        goto LABEL_111;
      case 2u:
        v35 = PBReaderReadData();
        v36 = 40;
        goto LABEL_63;
      case 3u:
        v35 = PBReaderReadData();
        v36 = 32;
        goto LABEL_63;
      case 4u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 92) |= 4u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v103 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v103 >= objc_msgSend_position(a2, v104, v105) && (v108 = objc_msgSend_position(a2, v106, v107) + 1, v108 <= objc_msgSend_length(a2, v109, v110)))
          {
            v111 = objc_msgSend_data(a2, v106, v107);
            v114 = objc_msgSend_position(a2, v112, v113);
            objc_msgSend_getBytes_range_(v111, v115, &v169, v114, 1);

            v118 = objc_msgSend_position(a2, v116, v117);
            objc_msgSend_setPosition_(a2, v119, v118 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v106, v107);
          }

          v102 |= (v169 & 0x7F) << v100;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v30 = v101++ >= 9;
          if (v30)
          {
            v120 = 0;
            goto LABEL_103;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v120 = 0;
        }

        else
        {
          v120 = v102;
        }

LABEL_103:
        *(a1 + 48) = v120;
        goto LABEL_109;
      case 5u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 92) |= 1u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v169, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v169 & 0x7F) << v37;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_92;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v39;
        }

LABEL_92:
        v163 = 8;
        goto LABEL_97;
      case 6u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 92) |= 2u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v62 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
          {
            v70 = objc_msgSend_data(a2, v65, v66);
            v73 = objc_msgSend_position(a2, v71, v72);
            objc_msgSend_getBytes_range_(v70, v74, &v169, v73, 1);

            v77 = objc_msgSend_position(a2, v75, v76);
            objc_msgSend_setPosition_(a2, v78, v77 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v65, v66);
          }

          v61 |= (v169 & 0x7F) << v59;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v30 = v60++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_96;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v61;
        }

LABEL_96:
        v163 = 16;
LABEL_97:
        *(a1 + v163) = v57;
        goto LABEL_109;
      case 7u:
        v33 = objc_alloc_init(CKDPZoneCapabilities);
        objc_storeStrong((a1 + 24), v33);
        v169 = 0;
        v170 = 0;
        if (!PBReaderPlaceMark() || !sub_225383170(v33, a2, v122))
        {
          goto LABEL_111;
        }

        goto LABEL_79;
      case 8u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 92) |= 0x20u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v126 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v126 >= objc_msgSend_position(a2, v127, v128) && (v131 = objc_msgSend_position(a2, v129, v130) + 1, v131 <= objc_msgSend_length(a2, v132, v133)))
          {
            v134 = objc_msgSend_data(a2, v129, v130);
            v137 = objc_msgSend_position(a2, v135, v136);
            objc_msgSend_getBytes_range_(v134, v138, &v169, v137, 1);

            v141 = objc_msgSend_position(a2, v139, v140);
            objc_msgSend_setPosition_(a2, v142, v141 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v129, v130);
          }

          v125 |= (v169 & 0x7F) << v123;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v30 = v124++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_105;
          }
        }

        v99 = (v125 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_105:
        v164 = 90;
        goto LABEL_108;
      case 9u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 92) |= 0x10u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v146 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v146 >= objc_msgSend_position(a2, v147, v148) && (v151 = objc_msgSend_position(a2, v149, v150) + 1, v151 <= objc_msgSend_length(a2, v152, v153)))
          {
            v154 = objc_msgSend_data(a2, v149, v150);
            v157 = objc_msgSend_position(a2, v155, v156);
            objc_msgSend_getBytes_range_(v154, v158, &v169, v157, 1);

            v161 = objc_msgSend_position(a2, v159, v160);
            objc_msgSend_setPosition_(a2, v162, v161 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v149, v150);
          }

          v145 |= (v169 & 0x7F) << v143;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v30 = v144++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_107;
          }
        }

        v99 = (v145 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_107:
        v164 = 89;
        goto LABEL_108;
      case 0xAu:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v58 = 80;
        goto LABEL_77;
      case 0xBu:
        v35 = PBReaderReadString();
        v36 = 72;
LABEL_63:
        v121 = *(a1 + v36);
        *(a1 + v36) = v35;

        goto LABEL_109;
      case 0xDu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 92) |= 8u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v82 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
          {
            v90 = objc_msgSend_data(a2, v85, v86);
            v93 = objc_msgSend_position(a2, v91, v92);
            objc_msgSend_getBytes_range_(v90, v94, &v169, v93, 1);

            v97 = objc_msgSend_position(a2, v95, v96);
            objc_msgSend_setPosition_(a2, v98, v97 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v85, v86);
          }

          v81 |= (v169 & 0x7F) << v79;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v30 = v80++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_99;
          }
        }

        v99 = (v81 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_99:
        v164 = 88;
LABEL_108:
        *(a1 + v164) = v99;
        goto LABEL_109;
      case 0xEu:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v58 = 56;
LABEL_77:
        objc_storeStrong((a1 + v58), v33);
        v169 = 0;
        v170 = 0;
        if (PBReaderPlaceMark() && CKDPDateReadFrom())
        {
LABEL_79:
          PBReaderRecallMark();

LABEL_109:
          v165 = objc_msgSend_position(a2, v32, v9);
          if (v165 >= objc_msgSend_length(a2, v166, v167))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_111:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_109;
    }
  }
}

void sub_225390FA8()
{
  v0 = qword_280D55148;
  qword_280D55148 = &unk_2838C9AC0;
}

uint64_t sub_2253911D0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v34 = objc_alloc_init(CKDPAncestryEtag);
          v35 = 8;
LABEL_30:
          objc_storeStrong((a1 + v35), v34);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_2252D9FA4(v34, a2, v39))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v32 == 5)
        {
          v34 = objc_alloc_init(CKDPAncestryEtag);
          v35 = 16;
          goto LABEL_30;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v34 = objc_alloc_init(CKDPZone);
          objc_storeStrong((a1 + 24), v34);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_22538168C(v34, a2, v38))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = *(a1 + 32);
          *(a1 + 32) = v33;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v40 = objc_msgSend_position(a2, v36, v37);
    }

    while (v40 < objc_msgSend_length(a2, v41, v42));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225391C78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v62) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v56 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 24), v56);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v32 == 5)
        {
          v54 = PBReaderReadString();
          v55 = *(a1 + 16);
          *(a1 + 16) = v54;

          goto LABEL_42;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = objc_alloc_init(CKDPZoneCapabilities);
          objc_storeStrong((a1 + 8), v56);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_225383170(v56, a2, v57))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v32 == 3)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v62, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v62 & 0x7F) << v33;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_41;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_41:
          *(a1 + 32) = v53;
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225392808(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v54 = PBReaderReadData();
        v55 = 8;
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 1)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v62, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_37;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_37:
            *(a1 + 24) = v53;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v54 = PBReaderReadData();
        v55 = 16;
      }

      v56 = *(a1 + v55);
      *(a1 + v55) = v54;

LABEL_38:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225393D60()
{
  v0 = qword_280D58548;
  qword_280D58548 = &unk_2838C9AE8;
}

uint64_t sub_225393EB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225360D24(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225394710(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v59[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59[0] & 0x7F) << v10;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v37 = objc_msgSend_position(a2, v32, v9, v59[0]) + 1;
          if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
          {
            v45 = objc_msgSend_data(a2, v40, v41);
            v48 = objc_msgSend_position(a2, v46, v47);
            objc_msgSend_getBytes_range_(v45, v49, v59, v48, 1);

            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_setPosition_(a2, v53, v52 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v40, v41);
          }

          v36 |= (v59[0] & 0x7F) << v34;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v30 = v35++ >= 9;
          if (v30)
          {
            v54 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v54 = 0;
        }

        else
        {
          v54 = v36;
        }

LABEL_36:
        *(a1 + 8) = v54;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 16), v33);
        v59[0] = 0;
        v59[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225395498(uint64_t a1, const char *a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBFF8];
  v8[0] = *MEMORY[0x277CBC030];
  v8[1] = v2;
  v3 = *MEMORY[0x277CBBFF0];
  v8[2] = *MEMORY[0x277CBC008];
  v8[3] = v3;
  v4 = *MEMORY[0x277CBC000];
  v8[4] = *MEMORY[0x277CBC010];
  v8[5] = v4;
  v5 = *MEMORY[0x277CBC028];
  v8[6] = *MEMORY[0x277CBC048];
  v8[7] = v5;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v8, 8);
  v7 = qword_280D58558;
  qword_280D58558 = v6;
}

void sub_225395578(uint64_t a1, const char *a2)
{
  v11[7] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC030];
  v10[0] = @"recordID";
  v10[1] = @"creationDate";
  v3 = *MEMORY[0x277CBBFF0];
  v11[0] = v2;
  v11[1] = v3;
  v4 = *MEMORY[0x277CBC010];
  v10[2] = @"modificationDate";
  v10[3] = @"creatorUserRecordID";
  v5 = *MEMORY[0x277CBBFF8];
  v11[2] = v4;
  v11[3] = v5;
  v6 = *MEMORY[0x277CBC008];
  v10[4] = @"lastModifiedUserRecordID";
  v10[5] = @"recordChangeTag";
  v7 = *MEMORY[0x277CBC000];
  v11[4] = v6;
  v11[5] = v7;
  v10[6] = @"shareID";
  v11[6] = *MEMORY[0x277CBC048];
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, v10, 7);
  v9 = qword_280D58568;
  qword_280D58568 = v8;
}

uint64_t sub_225395698(unsigned int a1)
{
  if (a1 >= 3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC360]);
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected reference type", v1, v2);
    objc_exception_throw(v6);
  }

  return 2 - a1;
}

uint64_t sub_2253956DC(int a1)
{
  v3 = a1 - 1;
  if ((a1 - 1) >= 0x10 || ((0x80F7u >> v3) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBC360]);
    v7 = objc_msgSend_initWithCode_format_(v5, v6, 12, @"Unexpected filter type", v1, v2);
    objc_exception_throw(v7);
  }

  return qword_225447E60[v3];
}

void *sub_225395734(void *a1, void *a2)
{
  v233 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  if (objc_msgSend_hasError(v4, v6, v7))
  {
    v10 = objc_msgSend_error(v4, v8, v9);
    hasErrorKey = objc_msgSend_hasErrorKey(v10, v11, v12);

    if (hasErrorKey)
    {
      v16 = objc_msgSend_error(v4, v14, v15);
      v19 = objc_msgSend_errorKey(v16, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v20, v19, @"errorKey");
    }

    v21 = objc_msgSend_error(v4, v14, v15);
    hasErrorDescription = objc_msgSend_hasErrorDescription(v21, v22, v23);

    if (hasErrorDescription)
    {
      v27 = objc_msgSend_error(v4, v25, v26);
      v30 = objc_msgSend_errorDescription(v27, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v31, v30, *MEMORY[0x277CCA450]);

      v34 = objc_msgSend_error(v4, v32, v33);
      v37 = objc_msgSend_errorDescription(v34, v35, v36);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v38, v37, *MEMORY[0x277CBBF70]);
    }

    v39 = objc_msgSend_error(v4, v25, v26);
    hasRetryAfterSeconds = objc_msgSend_hasRetryAfterSeconds(v39, v40, v41);

    if (hasRetryAfterSeconds)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = objc_msgSend_error(v4, v43, v44);
      v49 = objc_msgSend_retryAfterSeconds(v46, v47, v48);
      v51 = objc_msgSend_numberWithInt_(v45, v50, v49);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v52, v51, *MEMORY[0x277CBBF68]);
    }

    v53 = objc_msgSend_error(v4, v43, v44);
    if (objc_msgSend_hasExtensionError(v53, v54, v55))
    {
      v58 = objc_msgSend_error(v4, v56, v57);
      v61 = objc_msgSend_extensionError(v58, v59, v60);
      hasTypeCode = objc_msgSend_hasTypeCode(v61, v62, v63);

      if (hasTypeCode)
      {
        v67 = objc_opt_new();
        v70 = objc_msgSend_error(v4, v68, v69);
        v73 = objc_msgSend_extensionError(v70, v71, v72);
        v76 = objc_msgSend_extensionName(v73, v74, v75);

        if (!objc_msgSend_length(v76, v77, v78))
        {

          v76 = @"CKPluginUnknownDomain";
        }

        v81 = objc_msgSend_error(v4, v79, v80);
        v84 = objc_msgSend_errorDescription(v81, v82, v83);

        if (!objc_msgSend_length(v84, v85, v86))
        {

          v84 = @"Error, details unknown";
        }

        objc_msgSend_setObject_forKeyedSubscript_(v67, v87, v84, *MEMORY[0x277CBBF70]);
        objc_msgSend_setObject_forKeyedSubscript_(v67, v88, v84, *MEMORY[0x277CCA450]);
        v91 = objc_msgSend_error(v4, v89, v90);
        v94 = objc_msgSend_extensionError(v91, v92, v93);
        hasExtensionPayload = objc_msgSend_hasExtensionPayload(v94, v95, v96);

        if (hasExtensionPayload)
        {
          v100 = objc_msgSend_error(v4, v98, v99);
          v103 = objc_msgSend_extensionError(v100, v101, v102);
          v106 = objc_msgSend_extensionPayload(v103, v104, v105);
          objc_msgSend_setObject_forKeyedSubscript_(v67, v107, v106, *MEMORY[0x277CBBF80]);
        }

        v108 = MEMORY[0x277CCA9B8];
        v109 = objc_msgSend_error(v4, v98, v99);
        v112 = objc_msgSend_extensionError(v109, v110, v111);
        v115 = objc_msgSend_typeCode(v112, v113, v114);
        v117 = objc_msgSend_errorWithDomain_code_userInfo_(v108, v116, v76, v115, v67);

        objc_msgSend_setObject_forKeyedSubscript_(v5, v118, v117, *MEMORY[0x277CCA7E8]);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v119, v117, *MEMORY[0x277CBC130]);

        goto LABEL_17;
      }
    }

    else
    {
    }

    v120 = objc_msgSend_error(v4, v65, v66);
    hasAuxiliaryError = objc_msgSend_hasAuxiliaryError(v120, v121, v122);

    if (hasAuxiliaryError)
    {
      v124 = objc_msgSend_error(v4, v8, v9);
      v67 = objc_msgSend_auxiliaryError(v124, v125, v126);

      if (objc_msgSend_hasDomain(v67, v127, v128))
      {
        v76 = objc_msgSend_domain(v67, v129, v130);
        if (!objc_msgSend_length(v76, v131, v132) || (objc_msgSend_hasCode(v67, v133, v134) & 1) == 0)
        {
          goto LABEL_18;
        }

        v137 = objc_msgSend_code(v67, v135, v136);

        if (v137)
        {
          if (!objc_msgSend_userInfosCount(v67, v138, v139))
          {
            v76 = 0;
            goto LABEL_63;
          }

          v142 = objc_alloc(MEMORY[0x277CBEB38]);
          v145 = objc_msgSend_userInfosCount(v67, v143, v144);
          v226 = v67;
          v227 = objc_msgSend_initWithCapacity_(v142, v146, v145);
          v228 = 0u;
          v229 = 0u;
          v230 = 0u;
          v231 = 0u;
          v149 = objc_msgSend_userInfos(v67, v147, v148);
          v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v150, &v228, v232, 16);
          if (!v151)
          {
            goto LABEL_48;
          }

          v154 = v151;
          v155 = *v229;
          while (1)
          {
            for (i = 0; i != v154; ++i)
            {
              if (*v229 != v155)
              {
                objc_enumerationMutation(v149);
              }

              v157 = *(*(&v228 + 1) + 8 * i);
              if (objc_msgSend_hasKey(v157, v152, v153))
              {
                v158 = objc_msgSend_key(v157, v152, v153);
                if (objc_msgSend_length(v158, v159, v160))
                {
                  hasValue = objc_msgSend_hasValue(v157, v161, v162);

                  if (!hasValue)
                  {
                    continue;
                  }

                  v158 = objc_msgSend_value(v157, v152, v153);
                  if (objc_msgSend_hasDoubleValue(v158, v164, v165))
                  {
                    v168 = MEMORY[0x277CCABB0];
                    objc_msgSend_doubleValue(v158, v166, v167);
                    v171 = objc_msgSend_numberWithDouble_(v168, v169, v170);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasInt64Value(v158, v166, v167))
                  {
                    v176 = MEMORY[0x277CCABB0];
                    v177 = objc_msgSend_int64Value(v158, v174, v175);
                    v171 = objc_msgSend_numberWithInteger_(v176, v178, v177);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasBoolValue(v158, v174, v175))
                  {
                    v181 = MEMORY[0x277CCABB0];
                    v182 = objc_msgSend_BOOLValue(v158, v179, v180);
                    v171 = objc_msgSend_numberWithBool_(v181, v183, v182);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasStringValue(v158, v179, v180))
                  {
                    v171 = objc_msgSend_stringValue(v158, v184, v185);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasBytesValue(v158, v184, v185))
                  {
                    v171 = objc_msgSend_bytesValue(v158, v186, v187);
LABEL_44:
                    v188 = v171;
                    v189 = objc_msgSend_key(v157, v172, v173);
                    objc_msgSend_setObject_forKeyedSubscript_(v227, v190, v188, v189);
                  }
                }

                continue;
              }
            }

            v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v152, &v228, v232, 16);
            if (!v154)
            {
LABEL_48:

              v76 = v227;
              if (!objc_msgSend_count(v227, v191, v192))
              {

                v76 = 0;
              }

              v67 = v226;
LABEL_63:
              v218 = MEMORY[0x277CCA9B8];
              v219 = objc_msgSend_domain(v67, v140, v141);
              v222 = objc_msgSend_code(v67, v220, v221);
              v84 = objc_msgSend_errorWithDomain_code_userInfo_(v218, v223, v219, v222, v76);

              objc_msgSend_setObject_forKeyedSubscript_(v5, v224, v84, *MEMORY[0x277CCA7E8]);
              objc_msgSend_setObject_forKeyedSubscript_(v5, v225, v84, *MEMORY[0x277CBC130]);
LABEL_17:

LABEL_18:
              break;
            }
          }
        }
      }
    }
  }

  v193 = objc_msgSend_requestUUID(v3, v8, v9);

  if (v193)
  {
    v196 = objc_msgSend_requestUUID(v3, v194, v195);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v197, v196, *MEMORY[0x277CBC078]);
  }

  v198 = objc_msgSend_operation(v3, v194, v195);
  v201 = objc_msgSend_topmostParentOperation(v198, v199, v200);
  v204 = objc_msgSend_operationID(v201, v202, v203);

  if (v204)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v205, v204, *MEMORY[0x277CBBF60]);
  }

  v207 = objc_msgSend_container(v3, v205, v206);
  v210 = objc_msgSend_containerID(v207, v208, v209);

  if (v210)
  {
    v213 = objc_msgSend_containerIdentifier(v210, v211, v212);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v214, v213, *MEMORY[0x277CBBF18]);
  }

  if (objc_msgSend_count(v5, v211, v212))
  {
    v215 = v5;
  }

  else
  {
    v215 = 0;
  }

  v216 = v215;

  return v215;
}