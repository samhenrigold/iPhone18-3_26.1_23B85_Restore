uint64_t vt_Copy_yuvs_420v_avg_rotate_arm(const char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a2[1];
  v7 = *a2;
  if ((a3 & 0x1F) != 0)
  {
    return 1;
  }

  v8 = a6[1];
  v9 = *a6;
  if ((a5 & 0x1F) != 0 || (v9 & 0x1F) != 0 || (v8 & 0x1F) != 0)
  {
    return 1;
  }

  v10 = &a1[a5];
  v11 = (v7 + v9 * a4 - v9 + a3 - 16);
  v12 = (v11 - v9);
  v13 = (v6 + v8 * (a4 >> 1) - v8 + a3 - 16);
  v14 = a5 - 2 * a3;
  v15 = a3 - v9;
  v16 = a3 - v8;
  v17 = a3 >> 4;
  do
  {
    do
    {
      v21 = vld2q_s8(a1);
      a1 += 32;
      v22 = vld2q_s8(v10);
      v10 += 32;
      v21.val[0] = vrev64q_s8(v21.val[0]);
      v22.val[0] = vrev64q_s8(v22.val[0]);
      *v11-- = vextq_s8(v21.val[0], v21.val[0], 8uLL);
      *v12-- = vextq_s8(v22.val[0], v22.val[0], 8uLL);
      v21.val[1] = vrev64q_s16(vhaddq_u8(v21.val[1], v22.val[1]));
      *v13-- = vextq_s8(v21.val[1], v21.val[1], 8uLL);
      --v17;
    }

    while (v17);
    v18 = v10 - a1;
    a1 = &v10[v14];
    v10 += v14 + v18;
    v19 = v11 - v12;
    v11 = (v12 + v15);
    v12 = (v12 + v15 - v19);
    v13 = (v13 + v16);
    v17 = a3 >> 4;
    a4 -= 2;
  }

  while (a4);
  return 0;
}

uint64_t ProgressCallback(uint64_t result, float a2)
{
  if (a2 >= 1.0 || vabds_f32(*(result + 8), a2) >= 0.01)
  {
    *(result + 8) = fminf(a2, 1.0);
    result = *(result + 16);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id _computeCheckpoint(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    ModelSpecificPropertyListForModel = FigCreateModelSpecificPropertyListForModel();
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyListForModel();
  }

  else
  {
    ModelSpecificPropertyListForModel = FigCreateModelSpecificPropertyList();
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  }

  obj = ModelSpecificPropertyList;
  if (!ModelSpecificPropertyListForModel)
  {
    v4 = 0;
    goto LABEL_100;
  }

  v80 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [ModelSpecificPropertyListForModel objectForKeyedSubscript:@"VideoCodecs"];
  v78 = ModelSpecificPropertyListForModel;
  v6 = [ModelSpecificPropertyListForModel objectForKeyedSubscript:@"AudioCodecs"];
  v7 = MGCopyAnswer();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 intValue];

    v10 = v9 == 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = MGCopyAnswer();
  if (v11)
  {
    v12 = v11;
    [v11 intValue];
  }

  v13 = MGCopyAnswer();
  if (v13)
  {
    v14 = v13;
    [v13 intValue];
  }

  v15 = MGCopyAnswer();
  if (v15)
  {
    v16 = v15;
    [v15 intValue];
  }

  v17 = MGCopyAnswer();
  if (v17)
  {
    v18 = v17;
    [v17 intValue];
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 intValue];

    v22 = v21 > 41;
  }

  else
  {
    v22 = 0;
  }

  v23 = MGCopyAnswer();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 intValue];

    v26 = v25 > 49;
  }

  else
  {
    v26 = 0;
  }

  v27 = MGCopyAnswer();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 intValue];

    v30 = v29 > 50;
  }

  else
  {
    v30 = 0;
  }

  v31 = MGCopyAnswer();
  if (v31)
  {
    v32 = v31;
    v33 = [v31 intValue];

    v34 = v33 > 51;
  }

  else
  {
    v34 = 0;
  }

  v35 = MGCopyAnswer();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 intValue];

    v81 = v37 != 0;
  }

  else
  {
    v81 = 0;
  }

  v38 = MGCopyAnswer();
  if (v38)
  {
    v39 = v38;
    [v38 intValue];
  }

  if (!v10)
  {
    v40 = MGCopyAnswer();
    if (v40)
    {
      v41 = v40;
      [v40 intValue];
    }
  }

  v42 = MGCopyAnswer();
  if (v42)
  {
    v43 = v42;
    [v42 intValue];
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v44)
  {
    if (v34)
    {
      v45 = [v5 objectForKeyedSubscript:@"H.264_UHDVideo3"];
      if (v45)
      {
        [v44 setObject:v45 forKeyedSubscript:@"H.264"];
      }

      v46 = [v5 objectForKeyedSubscript:@"H.264M_UHDVideo3"];
      if (v46)
      {
        [v44 setObject:v46 forKeyedSubscript:@"H.264M"];
      }

      v47 = @"H.264H_UHDVideo3";
    }

    else if (v30)
    {
      v48 = [v5 objectForKeyedSubscript:@"H.264_UHDVideo2"];
      if (v48)
      {
        [v44 setObject:v48 forKeyedSubscript:@"H.264"];
      }

      v49 = [v5 objectForKeyedSubscript:@"H.264M_UHDVideo2"];
      if (v49)
      {
        [v44 setObject:v49 forKeyedSubscript:@"H.264M"];
      }

      v47 = @"H.264H_UHDVideo2";
    }

    else if (v26)
    {
      v50 = [v5 objectForKeyedSubscript:@"H.264_UHDVideo"];
      if (v50)
      {
        [v44 setObject:v50 forKeyedSubscript:@"H.264"];
      }

      v51 = [v5 objectForKeyedSubscript:@"H.264M_UHDVideo"];
      if (v51)
      {
        [v44 setObject:v51 forKeyedSubscript:@"H.264M"];
      }

      v47 = @"H.264H_UHDVideo";
    }

    else
    {
      if (!v22)
      {
LABEL_66:
        v55 = [v5 objectForKeyedSubscript:@"H.263"];
        if (v55)
        {
          [v44 setObject:v55 forKeyedSubscript:@"H.263"];
        }

        v56 = [v5 objectForKeyedSubscript:@"MPEG4"];
        if (v56)
        {
          [v44 setObject:v56 forKeyedSubscript:@"MPEG4"];
        }

        [v4 setObject:v44 forKeyedSubscript:@"VideoCodecs"];
        goto LABEL_71;
      }

      v52 = [v5 objectForKeyedSubscript:@"H.264_HDVideo42"];
      if (v52)
      {
        [v44 setObject:v52 forKeyedSubscript:@"H.264"];
      }

      v53 = [v5 objectForKeyedSubscript:@"H.264M_HDVideo42"];
      if (v53)
      {
        [v44 setObject:v53 forKeyedSubscript:@"H.264M"];
      }

      v47 = @"H.264H_HDVideo42";
    }

    v54 = [v5 objectForKeyedSubscript:v47];
    if (v54)
    {
      [v44 setObject:v54 forKeyedSubscript:@"H.264H"];
    }

    goto LABEL_66;
  }

LABEL_71:

  v57 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
  v58 = v57;
  ModelSpecificPropertyListForModel = v78;
  if (v6)
  {
    if (!v81)
    {
      [v57 removeObjectForKey:@"AC3"];
      [v58 removeObjectForKey:@"EnhancedAC3"];
    }

    [v4 setObject:v58 forKeyedSubscript:@"AudioCodecs"];
  }

  if (obj && v4)
  {
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v59 = v80;
    v82 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v82)
    {
      v79 = *v85;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v85 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v84 + 1) + 8 * i);
          [v61 stringByAppendingFormat:@".plist"];
          if (v59)
          {
            v62 = FigCreateModelSpecificPropertyListForModel();
          }

          else
          {
            v62 = FigCreateModelSpecificPropertyList();
          }

          v63 = v62;
          v64 = [obj objectForKeyedSubscript:v61];
          v65 = [v64 objectForKeyedSubscript:@"VideoCodecs"];
          if (v65)
          {
            v66 = v65;
            if ([v65 count])
            {
              v67 = 0;
              do
              {
                v68 = [v66 objectAtIndexedSubscript:v67];
                v69 = [objc_msgSend(v63 objectForKeyedSubscript:{@"VideoCodecs", "objectForKeyedSubscript:", v68}];
                v70 = [v4 objectForKeyedSubscript:@"VideoCodecs"];
                if (v69)
                {
                  [v70 setObject:v69 forKey:v68];
                }

                ++v67;
              }

              while (v67 < [v66 count]);
            }
          }

          v71 = [v64 objectForKeyedSubscript:@"AudioCodecs"];
          if (v71)
          {
            v72 = v71;
            if ([v71 count])
            {
              v73 = 0;
              do
              {
                v74 = [v72 objectAtIndexedSubscript:v73];
                v75 = [objc_msgSend(v63 objectForKeyedSubscript:{@"AudioCodecs", "objectForKeyedSubscript:", v74}];
                v76 = [v4 objectForKeyedSubscript:@"AudioCodecs"];
                if (v75)
                {
                  [v76 setObject:v75 forKey:v74];
                }

                ++v73;
              }

              while (v73 < [v72 count]);
            }
          }

          v59 = v80;
        }

        v82 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
      }

      while (v82);
    }

    ModelSpecificPropertyListForModel = v78;
  }

LABEL_100:

  return v4;
}