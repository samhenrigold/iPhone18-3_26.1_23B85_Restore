unsigned __int8 *sub_275DFCA40(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 176);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 184);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 192);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v18, v20, a3);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 280);
  *a2 = 37;
  *(a2 + 1) = v24;
  a2 += 5;
  if ((v5 & 8) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 200);
    *a2 = 42;
    v26 = *(v25 + 5);
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = a2 + 3;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v27;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        a2[2] = v28;
        v27 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v26;
      v27 = a2 + 2;
    }

    a2 = TSP::Point::_InternalSerialize(v25, v27, a3);
  }

LABEL_50:
  v31 = *(a1 + 40);
  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v33 = *(*(a1 + 48) + 8 * i + 8);
      *a2 = 50;
      v34 = *(v33 + 5);
      if (v34 > 0x7F)
      {
        a2[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v35 = a2 + 3;
          do
          {
            *(v35 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++v35;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(v35 - 1) = v37;
        }

        else
        {
          a2[2] = v36;
          v35 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v34;
        v35 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v33, v35, a3);
    }
  }

  if ((v5 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 284);
    *a2 = 61;
    *(a2 + 1) = v39;
    a2 += 5;
    if ((v5 & 0x10) == 0)
    {
LABEL_64:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_84;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_64;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v40 = *(a1 + 208);
  *a2 = 66;
  v41 = *(v40 + 5);
  if (v41 > 0x7F)
  {
    a2[1] = v41 | 0x80;
    v43 = v41 >> 7;
    if (v41 >> 14)
    {
      v42 = a2 + 3;
      do
      {
        *(v42 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++v42;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(v42 - 1) = v44;
    }

    else
    {
      a2[2] = v43;
      v42 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v41;
    v42 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v40, v42, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_65:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_87;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v46 = *(a1 + 288);
  *a2 = 77;
  *(a2 + 1) = v46;
  a2 += 5;
  if ((v5 & 0x20) == 0)
  {
LABEL_66:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(a1 + 216);
  *a2 = 82;
  v48 = *(v47 + 5);
  if (v48 > 0x7F)
  {
    a2[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = a2 + 3;
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      a2[2] = v50;
      v49 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v48;
    v49 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v47, v49, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_67:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v53 = *(a1 + 224);
  *a2 = 90;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    a2[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = a2 + 3;
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      a2[2] = v56;
      v55 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v54;
    v55 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v53, v55, a3);
  if ((v5 & 0x40000) == 0)
  {
LABEL_68:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_110;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v59 = *(a1 + 300);
  *a2 = 96;
  a2[1] = v59;
  a2 += 2;
  if ((v5 & 0x10000) == 0)
  {
LABEL_69:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_113;
  }

LABEL_110:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(a1 + 292);
  *a2 = 109;
  *(a2 + 1) = v60;
  a2 += 5;
  if ((v5 & 0x20000) != 0)
  {
LABEL_113:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v61 = *(a1 + 296);
    *a2 = 117;
    *(a2 + 1) = v61;
    a2 += 5;
  }

LABEL_116:
  v62 = *(a1 + 64);
  if (v62)
  {
    for (j = 0; j != v62; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v64 = *(*(a1 + 72) + 8 * j + 8);
      *a2 = 122;
      v65 = *(v64 + 11);
      if (v65 > 0x7F)
      {
        a2[1] = v65 | 0x80;
        v67 = v65 >> 7;
        if (v65 >> 14)
        {
          v66 = a2 + 3;
          do
          {
            *(v66 - 1) = v67 | 0x80;
            v68 = v67 >> 7;
            ++v66;
            v69 = v67 >> 14;
            v67 >>= 7;
          }

          while (v69);
          *(v66 - 1) = v68;
        }

        else
        {
          a2[2] = v67;
          v66 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v65;
        v66 = a2 + 2;
      }

      a2 = TSCH::ChartUIState::_InternalSerialize(v64, v66, a3);
    }
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v70 = *(a1 + 301);
    *a2 = 384;
    a2[2] = v70;
    a2 += 3;
    if ((v5 & 0x100000) == 0)
    {
LABEL_130:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_138;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_130;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v71 = *(a1 + 302);
  *a2 = 392;
  a2[2] = v71;
  a2 += 3;
  if ((v5 & 0x200000) != 0)
  {
LABEL_138:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v72 = *(a1 + 303);
    *a2 = 400;
    a2[2] = v72;
    a2 += 3;
  }

LABEL_141:
  v73 = *(a1 + 88);
  if (v73)
  {
    for (k = 0; k != v73; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v75 = *(*(a1 + 96) + 8 * k + 8);
      *a2 = 410;
      v76 = *(v75 + 5);
      if (v76 > 0x7F)
      {
        a2[2] = v76 | 0x80;
        v78 = v76 >> 7;
        if (v76 >> 14)
        {
          v77 = a2 + 4;
          do
          {
            *(v77 - 1) = v78 | 0x80;
            v79 = v78 >> 7;
            ++v77;
            v80 = v78 >> 14;
            v78 >>= 7;
          }

          while (v80);
          *(v77 - 1) = v79;
        }

        else
        {
          a2[3] = v78;
          v77 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v76;
        v77 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v75, v77, a3);
    }
  }

  if ((v5 & 0x4000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v81 = *(a1 + 317);
    *a2 = 416;
    a2[2] = v81;
    a2 += 3;
    if ((v5 & 0x80) == 0)
    {
LABEL_155:
      if ((v5 & 0x400000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_175;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_155;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v82 = *(a1 + 232);
  *a2 = 426;
  v83 = *(v82 + 5);
  if (v83 > 0x7F)
  {
    a2[2] = v83 | 0x80;
    v85 = v83 >> 7;
    if (v83 >> 14)
    {
      v84 = a2 + 4;
      do
      {
        *(v84 - 1) = v85 | 0x80;
        v86 = v85 >> 7;
        ++v84;
        v87 = v85 >> 14;
        v85 >>= 7;
      }

      while (v87);
      *(v84 - 1) = v86;
    }

    else
    {
      a2[3] = v85;
      v84 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v83;
    v84 = a2 + 3;
  }

  a2 = TSP::Point::_InternalSerialize(v82, v84, a3);
  if ((v5 & 0x400000) == 0)
  {
LABEL_156:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_178;
  }

LABEL_175:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v88 = *(a1 + 304);
  *a2 = 437;
  *(a2 + 2) = v88;
  a2 += 6;
  if ((v5 & 0x800000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_181;
  }

LABEL_178:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v89 = *(a1 + 308);
  *a2 = 445;
  *(a2 + 2) = v89;
  a2 += 6;
  if ((v5 & 0x100) == 0)
  {
LABEL_158:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_191;
  }

LABEL_181:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v90 = *(a1 + 240);
  *a2 = 450;
  v91 = *(v90 + 5);
  if (v91 > 0x7F)
  {
    a2[2] = v91 | 0x80;
    v93 = v91 >> 7;
    if (v91 >> 14)
    {
      v92 = a2 + 4;
      do
      {
        *(v92 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v92;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v92 - 1) = v94;
    }

    else
    {
      a2[3] = v93;
      v92 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v91;
    v92 = a2 + 3;
  }

  a2 = TSP::Size::_InternalSerialize(v90, v92, a3);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_159:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_194;
  }

LABEL_191:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v96 = *(a1 + 312);
  *a2 = 461;
  *(a2 + 2) = v96;
  a2 += 6;
  if ((v5 & 0x200) == 0)
  {
LABEL_160:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_204;
  }

LABEL_194:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v97 = *(a1 + 248);
  *a2 = 466;
  v98 = *(v97 + 5);
  if (v98 > 0x7F)
  {
    a2[2] = v98 | 0x80;
    v100 = v98 >> 7;
    if (v98 >> 14)
    {
      v99 = a2 + 4;
      do
      {
        *(v99 - 1) = v100 | 0x80;
        v101 = v100 >> 7;
        ++v99;
        v102 = v100 >> 14;
        v100 >>= 7;
      }

      while (v102);
      *(v99 - 1) = v101;
    }

    else
    {
      a2[3] = v100;
      v99 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v98;
    v99 = a2 + 3;
  }

  a2 = TSP::Point::_InternalSerialize(v97, v99, a3);
  if ((v5 & 0x10000000) != 0)
  {
LABEL_204:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v103 = *(a1 + 319);
    *a2 = 472;
    a2[2] = v103;
    a2 += 3;
  }

LABEL_207:
  v104 = *(a1 + 112);
  if (v104)
  {
    for (m = 0; m != v104; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v106 = *(*(a1 + 120) + 8 * m + 8);
      *a2 = 482;
      v107 = *(v106 + 5);
      if (v107 > 0x7F)
      {
        a2[2] = v107 | 0x80;
        v109 = v107 >> 7;
        if (v107 >> 14)
        {
          v108 = a2 + 4;
          do
          {
            *(v108 - 1) = v109 | 0x80;
            v110 = v109 >> 7;
            ++v108;
            v111 = v109 >> 14;
            v109 >>= 7;
          }

          while (v111);
          *(v108 - 1) = v110;
        }

        else
        {
          a2[3] = v109;
          v108 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v107;
        v108 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v106, v108, a3);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v112 = *(a1 + 256);
    *a2 = 490;
    v113 = *(v112 + 10);
    if (v113 > 0x7F)
    {
      a2[2] = v113 | 0x80;
      v115 = v113 >> 7;
      if (v113 >> 14)
      {
        v114 = a2 + 4;
        do
        {
          *(v114 - 1) = v115 | 0x80;
          v116 = v115 >> 7;
          ++v114;
          v117 = v115 >> 14;
          v115 >>= 7;
        }

        while (v117);
        *(v114 - 1) = v116;
      }

      else
      {
        a2[3] = v115;
        v114 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v113;
      v114 = a2 + 3;
    }

    a2 = TSK::SelectionPathArchive::_InternalSerialize(v112, v114, a3);
  }

  v118 = *(a1 + 136);
  if (v118)
  {
    for (n = 0; n != v118; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v120 = *(*(a1 + 144) + 8 * n + 8);
      *a2 = 498;
      v121 = *(v120 + 5);
      if (v121 > 0x7F)
      {
        a2[2] = v121 | 0x80;
        v123 = v121 >> 7;
        if (v121 >> 14)
        {
          v122 = a2 + 4;
          do
          {
            *(v122 - 1) = v123 | 0x80;
            v124 = v123 >> 7;
            ++v122;
            v125 = v123 >> 14;
            v123 >>= 7;
          }

          while (v125);
          *(v122 - 1) = v124;
        }

        else
        {
          a2[3] = v123;
          v122 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v121;
        v122 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v120, v122, a3);
    }
  }

  if ((v5 & 0x8000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v126 = *(a1 + 318);
    *a2 = 504;
    a2[2] = v126;
    a2 += 3;
  }

  if ((v5 & 0x20000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v127 = *(a1 + 320);
    *a2 = 645;
    *(a2 + 2) = v127;
    a2 += 6;
  }

  v128 = *(a1 + 160);
  if (v128)
  {
    for (ii = 0; ii != v128; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v130 = *(*(a1 + 168) + 8 * ii + 8);
      *a2 = 650;
      v131 = *(v130 + 5);
      if (v131 > 0x7F)
      {
        a2[2] = v131 | 0x80;
        v133 = v131 >> 7;
        if (v131 >> 14)
        {
          v132 = a2 + 4;
          do
          {
            *(v132 - 1) = v133 | 0x80;
            v134 = v133 >> 7;
            ++v132;
            v135 = v133 >> 14;
            v133 >>= 7;
          }

          while (v135);
          *(v132 - 1) = v134;
        }

        else
        {
          a2[3] = v133;
          v132 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v131;
        v132 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v130, v132, a3);
    }
  }

  if ((v5 & 0x80000000) == 0)
  {
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_268;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v136 = *(a1 + 328);
  *a2 = 656;
  a2[2] = v136;
  a2 += 3;
  if ((v5 & 0x40000000) != 0)
  {
LABEL_268:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v137 = *(a1 + 324);
    *a2 = 669;
    *(a2 + 2) = v137;
    a2 += 6;
  }

LABEL_271:
  if (*(a1 + 20))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v138 = *(a1 + 329);
    *a2 = 672;
    a2[2] = v138;
    a2 += 3;
  }

  v139 = *(a1 + 16);
  if ((v139 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v140 = *(a1 + 264);
    *a2 = 682;
    v141 = *(v140 + 5);
    if (v141 > 0x7F)
    {
      a2[2] = v141 | 0x80;
      v143 = v141 >> 7;
      if (v141 >> 14)
      {
        v142 = a2 + 4;
        do
        {
          *(v142 - 1) = v143 | 0x80;
          v144 = v143 >> 7;
          ++v142;
          v145 = v143 >> 14;
          v143 >>= 7;
        }

        while (v145);
        *(v142 - 1) = v144;
      }

      else
      {
        a2[3] = v143;
        v142 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v141;
      v142 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v140, v142, a3);
    if ((v139 & 0x1000) == 0)
    {
LABEL_277:
      if ((v139 & 0x2000000) == 0)
      {
        goto LABEL_302;
      }

      goto LABEL_299;
    }
  }

  else if ((v139 & 0x1000) == 0)
  {
    goto LABEL_277;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v146 = *(a1 + 272);
  *a2 = 690;
  v147 = *(v146 + 5);
  if (v147 > 0x7F)
  {
    a2[2] = v147 | 0x80;
    v149 = v147 >> 7;
    if (v147 >> 14)
    {
      v148 = a2 + 4;
      do
      {
        *(v148 - 1) = v149 | 0x80;
        v150 = v149 >> 7;
        ++v148;
        v151 = v149 >> 14;
        v149 >>= 7;
      }

      while (v151);
      *(v148 - 1) = v150;
    }

    else
    {
      a2[3] = v149;
      v148 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v147;
    v148 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v146, v148, a3);
  if ((v139 & 0x2000000) != 0)
  {
LABEL_299:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v152 = *(a1 + 316);
    *a2 = 696;
    a2[2] = v152;
    a2 += 3;
  }

LABEL_302:
  v153 = *(a1 + 20);
  if ((v153 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v154 = *(a1 + 330);
    *a2 = 704;
    a2[2] = v154;
    a2 += 3;
    if ((v153 & 4) == 0)
    {
LABEL_304:
      if ((v153 & 8) == 0)
      {
        goto LABEL_315;
      }

      goto LABEL_312;
    }
  }

  else if ((v153 & 4) == 0)
  {
    goto LABEL_304;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v155 = *(a1 + 331);
  *a2 = 712;
  a2[2] = v155;
  a2 += 3;
  if ((v153 & 8) != 0)
  {
LABEL_312:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v156 = *(a1 + 332);
    *a2 = 725;
    *(a2 + 2) = v156;
    a2 += 6;
  }

LABEL_315:
  v157 = *(a1 + 8);
  if ((v157 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v157 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275DFDBA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 64);
  v9 = v2 + v8;
  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSCH::ChartUIState::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 88);
  v16 = v9 + 2 * v15;
  v17 = *(a1 + 96);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 112);
  v23 = v16 + 2 * v22;
  v24 = *(a1 + 120);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 136);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 144);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Reference::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 160);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 168);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSP::Reference::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_49;
  }

  if (v43)
  {
    v53 = TSP::Reference::ByteSizeLong(*(a1 + 176));
    v37 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 2) == 0)
    {
LABEL_42:
      if ((v43 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_111;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_42;
  }

  v54 = TSP::Reference::ByteSizeLong(*(a1 + 184));
  v37 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 4) == 0)
  {
LABEL_43:
    if ((v43 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_112;
  }

LABEL_111:
  v55 = TSP::Size::ByteSizeLong(*(a1 + 192));
  v37 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 8) == 0)
  {
LABEL_44:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_113;
  }

LABEL_112:
  v56 = TSP::Point::ByteSizeLong(*(a1 + 200));
  v37 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x10) == 0)
  {
LABEL_45:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_114:
    v58 = TSP::Point::ByteSizeLong(*(a1 + 216));
    v37 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 0x40) == 0)
    {
LABEL_47:
      if ((v43 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_115;
  }

LABEL_113:
  v57 = TSP::Point::ByteSizeLong(*(a1 + 208));
  v37 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_114;
  }

LABEL_46:
  if ((v43 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_115:
  v59 = TSP::Reference::ByteSizeLong(*(a1 + 224));
  v37 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x80) != 0)
  {
LABEL_48:
    v44 = TSP::Point::ByteSizeLong(*(a1 + 232));
    v37 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_49:
  if ((v43 & 0xFF00) == 0)
  {
    goto LABEL_63;
  }

  if ((v43 & 0x100) != 0)
  {
    v60 = TSP::Size::ByteSizeLong(*(a1 + 240));
    v37 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v43 & 0x200) == 0)
    {
LABEL_52:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_119;
    }
  }

  else if ((v43 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  v61 = TSP::Point::ByteSizeLong(*(a1 + 248));
  v37 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x400) == 0)
  {
LABEL_53:
    if ((v43 & 0x800) == 0)
    {
      goto LABEL_54;
    }

LABEL_120:
    v63 = TSP::Reference::ByteSizeLong(*(a1 + 264));
    v37 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_119:
  v62 = TSK::SelectionPathArchive::ByteSizeLong(*(a1 + 256));
  v37 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x800) != 0)
  {
    goto LABEL_120;
  }

LABEL_54:
  if ((v43 & 0x1000) != 0)
  {
LABEL_55:
    v45 = TSP::Reference::ByteSizeLong(*(a1 + 272));
    v37 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_56:
  v46 = v37 + 5;
  if ((v43 & 0x2000) == 0)
  {
    v46 = v37;
  }

  if ((v43 & 0x4000) != 0)
  {
    v46 += 5;
  }

  if ((v43 & 0x8000) != 0)
  {
    v37 = v46 + 5;
  }

  else
  {
    v37 = v46;
  }

LABEL_63:
  if ((v43 & 0xFF0000) != 0)
  {
    v47 = v37 + 5;
    if ((v43 & 0x10000) == 0)
    {
      v47 = v37;
    }

    if ((v43 & 0x20000) != 0)
    {
      v47 += 5;
    }

    v48 = v47 + ((v43 >> 17) & 2);
    if ((v43 & 0x80000) != 0)
    {
      v48 += 3;
    }

    if ((v43 & 0x100000) != 0)
    {
      v48 += 3;
    }

    if ((v43 & 0x200000) != 0)
    {
      v48 += 3;
    }

    if ((v43 & 0x400000) != 0)
    {
      v48 += 6;
    }

    if ((v43 & 0x800000) != 0)
    {
      v37 = v48 + 6;
    }

    else
    {
      v37 = v48;
    }
  }

  if (BYTE3(v43))
  {
    v49 = v37 + 6;
    if ((v43 & 0x1000000) == 0)
    {
      v49 = v37;
    }

    if ((v43 & 0x2000000) != 0)
    {
      v49 += 3;
    }

    if ((v43 & 0x4000000) != 0)
    {
      v49 += 3;
    }

    if ((v43 & 0x8000000) != 0)
    {
      v49 += 3;
    }

    if ((v43 & 0x10000000) != 0)
    {
      v49 += 3;
    }

    if ((v43 & 0x20000000) != 0)
    {
      v49 += 6;
    }

    if ((v43 & 0x40000000) != 0)
    {
      v49 += 6;
    }

    if ((v43 & 0x80000000) == 0)
    {
      v37 = v49;
    }

    else
    {
      v37 = v49 + 3;
    }
  }

  v50 = *(a1 + 20);
  if ((v50 & 0xF) != 0)
  {
    v51 = v37 + 3;
    if ((v50 & 1) == 0)
    {
      v51 = v37;
    }

    if ((v50 & 2) != 0)
    {
      v51 += 3;
    }

    if ((v50 & 4) != 0)
    {
      v51 += 3;
    }

    if ((v50 & 8) != 0)
    {
      v37 = v51 + 6;
    }

    else
    {
      v37 = v51;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v37, a1 + 24);
  }

  else
  {
    *(a1 + 24) = v37;
    return v37;
  }
}

uint64_t sub_275DFE1D8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7EF8, 0);
  if (v4)
  {

    return sub_275DFE280(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DFE280(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    v6 = *(a2 + 48);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 32));
    result = sub_275E226E8((v3 + 32), v7, (v6 + 8), v5, **(v3 + 48) - *(v3 + 40));
    v8 = *(v3 + 40) + v5;
    *(v3 + 40) = v8;
    v9 = *(v3 + 48);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    v11 = *(a2 + 72);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 56));
    result = sub_275E234C8((v3 + 56), v12, (v11 + 8), v10, **(v3 + 72) - *(v3 + 64));
    v13 = *(v3 + 64) + v10;
    *(v3 + 64) = v13;
    v14 = *(v3 + 72);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 88);
  if (v15)
  {
    v16 = *(a2 + 96);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 80));
    result = sub_275E226E8((v3 + 80), v17, (v16 + 8), v15, **(v3 + 96) - *(v3 + 88));
    v18 = *(v3 + 88) + v15;
    *(v3 + 88) = v18;
    v19 = *(v3 + 96);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 112);
  if (v20)
  {
    v21 = *(a2 + 120);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 104));
    result = sub_275E226E8((v3 + 104), v22, (v21 + 8), v20, **(v3 + 120) - *(v3 + 112));
    v23 = *(v3 + 112) + v20;
    *(v3 + 112) = v23;
    v24 = *(v3 + 120);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 136);
  if (v25)
  {
    v26 = *(a2 + 144);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 128));
    result = sub_275E226E8((v3 + 128), v27, (v26 + 8), v25, **(v3 + 144) - *(v3 + 136));
    v28 = *(v3 + 136) + v25;
    *(v3 + 136) = v28;
    v29 = *(v3 + 144);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 160);
  if (v30)
  {
    v31 = *(a2 + 168);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 152));
    result = sub_275E226E8((v3 + 152), v32, (v31 + 8), v30, **(v3 + 168) - *(v3 + 160));
    v33 = *(v3 + 160) + v30;
    *(v3 + 160) = v33;
    v34 = *(v3 + 168);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 16);
  if (!v35)
  {
    goto LABEL_96;
  }

  v36 = MEMORY[0x277D80A18];
  if (v35)
  {
    *(v3 + 16) |= 1u;
    v37 = *(v3 + 176);
    if (!v37)
    {
      v38 = *(v3 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = MEMORY[0x277C8F050](v38);
      *(v3 + 176) = v37;
    }

    if (*(a2 + 176))
    {
      v39 = *(a2 + 176);
    }

    else
    {
      v39 = v36;
    }

    result = TSP::Reference::MergeFrom(v37, v39);
    if ((v35 & 2) == 0)
    {
LABEL_24:
      if ((v35 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }
  }

  else if ((v35 & 2) == 0)
  {
    goto LABEL_24;
  }

  *(v3 + 16) |= 2u;
  v40 = *(v3 + 184);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277C8F050](v41);
    *(v3 + 184) = v40;
  }

  if (*(a2 + 184))
  {
    v42 = *(a2 + 184);
  }

  else
  {
    v42 = v36;
  }

  result = TSP::Reference::MergeFrom(v40, v42);
  if ((v35 & 4) != 0)
  {
LABEL_42:
    *(v3 + 16) |= 4u;
    v43 = *(v3 + 192);
    if (!v43)
    {
      v44 = *(v3 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277C8EFF0](v44);
      *(v3 + 192) = v43;
    }

    if (*(a2 + 192))
    {
      v45 = *(a2 + 192);
    }

    else
    {
      v45 = MEMORY[0x277D809D8];
    }

    result = TSP::Size::MergeFrom(v43, v45);
  }

LABEL_50:
  v46 = MEMORY[0x277D809F0];
  if ((v35 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v47 = *(v3 + 200);
    if (!v47)
    {
      v48 = *(v3 + 8);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x277C8F020](v48);
      *(v3 + 200) = v47;
    }

    if (*(a2 + 200))
    {
      v49 = *(a2 + 200);
    }

    else
    {
      v49 = v46;
    }

    result = TSP::Point::MergeFrom(v47, v49);
    if ((v35 & 0x10) == 0)
    {
LABEL_52:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_53;
      }

LABEL_72:
      *(v3 + 16) |= 0x20u;
      v53 = *(v3 + 216);
      if (!v53)
      {
        v54 = *(v3 + 8);
        if (v54)
        {
          v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
        }

        v53 = MEMORY[0x277C8F020](v54);
        *(v3 + 216) = v53;
      }

      if (*(a2 + 216))
      {
        v55 = *(a2 + 216);
      }

      else
      {
        v55 = v46;
      }

      result = TSP::Point::MergeFrom(v53, v55);
      if ((v35 & 0x40) == 0)
      {
LABEL_54:
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_88;
      }

      goto LABEL_80;
    }
  }

  else if ((v35 & 0x10) == 0)
  {
    goto LABEL_52;
  }

  *(v3 + 16) |= 0x10u;
  v50 = *(v3 + 208);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C8F020](v51);
    *(v3 + 208) = v50;
  }

  if (*(a2 + 208))
  {
    v52 = *(a2 + 208);
  }

  else
  {
    v52 = v46;
  }

  result = TSP::Point::MergeFrom(v50, v52);
  if ((v35 & 0x20) != 0)
  {
    goto LABEL_72;
  }

LABEL_53:
  if ((v35 & 0x40) == 0)
  {
    goto LABEL_54;
  }

LABEL_80:
  *(v3 + 16) |= 0x40u;
  v56 = *(v3 + 224);
  if (!v56)
  {
    v57 = *(v3 + 8);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = MEMORY[0x277C8F050](v57);
    *(v3 + 224) = v56;
  }

  if (*(a2 + 224))
  {
    v58 = *(a2 + 224);
  }

  else
  {
    v58 = v36;
  }

  result = TSP::Reference::MergeFrom(v56, v58);
  if ((v35 & 0x80) != 0)
  {
LABEL_88:
    *(v3 + 16) |= 0x80u;
    v59 = *(v3 + 232);
    if (!v59)
    {
      v60 = *(v3 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = MEMORY[0x277C8F020](v60);
      *(v3 + 232) = v59;
    }

    if (*(a2 + 232))
    {
      v61 = *(a2 + 232);
    }

    else
    {
      v61 = v46;
    }

    result = TSP::Point::MergeFrom(v59, v61);
  }

LABEL_96:
  if ((v35 & 0xFF00) == 0)
  {
    goto LABEL_107;
  }

  if ((v35 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v63 = *(v3 + 240);
    if (!v63)
    {
      v64 = *(v3 + 8);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = MEMORY[0x277C8EFF0](v64);
      *(v3 + 240) = v63;
    }

    if (*(a2 + 240))
    {
      v65 = *(a2 + 240);
    }

    else
    {
      v65 = MEMORY[0x277D809D8];
    }

    result = TSP::Size::MergeFrom(v63, v65);
    if ((v35 & 0x200) == 0)
    {
LABEL_99:
      if ((v35 & 0x400) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_152;
    }
  }

  else if ((v35 & 0x200) == 0)
  {
    goto LABEL_99;
  }

  *(v3 + 16) |= 0x200u;
  v66 = *(v3 + 248);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C8F020](v67);
    *(v3 + 248) = v66;
  }

  if (*(a2 + 248))
  {
    v68 = *(a2 + 248);
  }

  else
  {
    v68 = MEMORY[0x277D809F0];
  }

  result = TSP::Point::MergeFrom(v66, v68);
  if ((v35 & 0x400) == 0)
  {
LABEL_100:
    if ((v35 & 0x800) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_160;
  }

LABEL_152:
  *(v3 + 16) |= 0x400u;
  v69 = *(v3 + 256);
  if (!v69)
  {
    v70 = *(v3 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C8EFC0](v70);
    *(v3 + 256) = v69;
  }

  if (*(a2 + 256))
  {
    v71 = *(a2 + 256);
  }

  else
  {
    v71 = MEMORY[0x277D80750];
  }

  result = TSK::SelectionPathArchive::MergeFrom(v69, v71);
  if ((v35 & 0x800) == 0)
  {
LABEL_101:
    if ((v35 & 0x1000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_168;
  }

LABEL_160:
  *(v3 + 16) |= 0x800u;
  v72 = *(v3 + 264);
  if (!v72)
  {
    v73 = *(v3 + 8);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x277C8F050](v73);
    *(v3 + 264) = v72;
  }

  if (*(a2 + 264))
  {
    v74 = *(a2 + 264);
  }

  else
  {
    v74 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v72, v74);
  if ((v35 & 0x1000) == 0)
  {
LABEL_102:
    if ((v35 & 0x2000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_176;
  }

LABEL_168:
  *(v3 + 16) |= 0x1000u;
  v75 = *(v3 + 272);
  if (!v75)
  {
    v76 = *(v3 + 8);
    if (v76)
    {
      v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
    }

    v75 = MEMORY[0x277C8F050](v76);
    *(v3 + 272) = v75;
  }

  if (*(a2 + 272))
  {
    v77 = *(a2 + 272);
  }

  else
  {
    v77 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v75, v77);
  if ((v35 & 0x2000) == 0)
  {
LABEL_103:
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_104;
    }

LABEL_177:
    *(v3 + 284) = *(a2 + 284);
    if ((v35 & 0x8000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

LABEL_176:
  *(v3 + 280) = *(a2 + 280);
  if ((v35 & 0x4000) != 0)
  {
    goto LABEL_177;
  }

LABEL_104:
  if ((v35 & 0x8000) != 0)
  {
LABEL_105:
    *(v3 + 288) = *(a2 + 288);
  }

LABEL_106:
  *(v3 + 16) |= v35;
LABEL_107:
  if ((v35 & 0xFF0000) == 0)
  {
    goto LABEL_118;
  }

  if ((v35 & 0x10000) != 0)
  {
    *(v3 + 292) = *(a2 + 292);
    if ((v35 & 0x20000) == 0)
    {
LABEL_110:
      if ((v35 & 0x40000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_181;
    }
  }

  else if ((v35 & 0x20000) == 0)
  {
    goto LABEL_110;
  }

  *(v3 + 296) = *(a2 + 296);
  if ((v35 & 0x40000) == 0)
  {
LABEL_111:
    if ((v35 & 0x80000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_182;
  }

LABEL_181:
  *(v3 + 300) = *(a2 + 300);
  if ((v35 & 0x80000) == 0)
  {
LABEL_112:
    if ((v35 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_183;
  }

LABEL_182:
  *(v3 + 301) = *(a2 + 301);
  if ((v35 & 0x100000) == 0)
  {
LABEL_113:
    if ((v35 & 0x200000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_184;
  }

LABEL_183:
  *(v3 + 302) = *(a2 + 302);
  if ((v35 & 0x200000) == 0)
  {
LABEL_114:
    if ((v35 & 0x400000) == 0)
    {
      goto LABEL_115;
    }

LABEL_185:
    *(v3 + 304) = *(a2 + 304);
    if ((v35 & 0x800000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

LABEL_184:
  *(v3 + 303) = *(a2 + 303);
  if ((v35 & 0x400000) != 0)
  {
    goto LABEL_185;
  }

LABEL_115:
  if ((v35 & 0x800000) != 0)
  {
LABEL_116:
    *(v3 + 308) = *(a2 + 308);
  }

LABEL_117:
  *(v3 + 16) |= v35;
LABEL_118:
  if (!HIBYTE(v35))
  {
    goto LABEL_128;
  }

  if ((v35 & 0x1000000) != 0)
  {
    *(v3 + 312) = *(a2 + 312);
    if ((v35 & 0x2000000) == 0)
    {
LABEL_121:
      if ((v35 & 0x4000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_193;
    }
  }

  else if ((v35 & 0x2000000) == 0)
  {
    goto LABEL_121;
  }

  *(v3 + 316) = *(a2 + 316);
  if ((v35 & 0x4000000) == 0)
  {
LABEL_122:
    if ((v35 & 0x8000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v3 + 317) = *(a2 + 317);
  if ((v35 & 0x8000000) == 0)
  {
LABEL_123:
    if ((v35 & 0x10000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_195;
  }

LABEL_194:
  *(v3 + 318) = *(a2 + 318);
  if ((v35 & 0x10000000) == 0)
  {
LABEL_124:
    if ((v35 & 0x20000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_196;
  }

LABEL_195:
  *(v3 + 319) = *(a2 + 319);
  if ((v35 & 0x20000000) == 0)
  {
LABEL_125:
    if ((v35 & 0x40000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_197:
    *(v3 + 324) = *(a2 + 324);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

LABEL_198:
    *(v3 + 328) = *(a2 + 328);
    goto LABEL_127;
  }

LABEL_196:
  *(v3 + 320) = *(a2 + 320);
  if ((v35 & 0x40000000) != 0)
  {
    goto LABEL_197;
  }

LABEL_126:
  if ((v35 & 0x80000000) != 0)
  {
    goto LABEL_198;
  }

LABEL_127:
  *(v3 + 16) |= v35;
LABEL_128:
  v62 = *(a2 + 20);
  if ((v62 & 0xF) == 0)
  {
    return result;
  }

  if (v62)
  {
    *(v3 + 329) = *(a2 + 329);
    if ((v62 & 2) == 0)
    {
LABEL_131:
      if ((v62 & 4) == 0)
      {
        goto LABEL_132;
      }

LABEL_189:
      *(v3 + 331) = *(a2 + 331);
      if ((v62 & 8) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }
  }

  else if ((v62 & 2) == 0)
  {
    goto LABEL_131;
  }

  *(v3 + 330) = *(a2 + 330);
  if ((v62 & 4) != 0)
  {
    goto LABEL_189;
  }

LABEL_132:
  if ((v62 & 8) != 0)
  {
LABEL_133:
    *(v3 + 332) = *(a2 + 332);
  }

LABEL_134:
  *(v3 + 20) |= v62;
  return result;
}

google::protobuf::UnknownFieldSet *sub_275DFEAAC(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DFB684(result);

    return sub_275DFE1D8(v4, a2);
  }

  return result;
}

uint64_t sub_275DFEAF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 48) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 64);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSCH::ChartUIState::IsInitialized(*(*(a1 + 72) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 88);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(a1 + 96) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 112);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(a1 + 120) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 136);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSP::Reference::IsInitialized(*(*(a1 + 144) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(a1 + 160);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(a1 + 168) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 4) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 8) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x10) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x20) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x80) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x100) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x200) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x400) != 0)
  {
    result = TSK::SelectionPathArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x800) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v21 = *(a1 + 16);
  }

  if ((v21 & 0x1000) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 272));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275DFED54(uint64_t *a1)
{
  if (a1 != &qword_2812EB360)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275DFF548(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C403A6EF0B4);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DFEDB8(uint64_t *a1)
{
  sub_275DFED54(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275DFEDF8(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_275DFEE54(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DFEE54(uint64_t a1)
{
  result = sub_275E223D8(a1 + 24);
  if (*(a1 + 16))
  {
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  v4 = *(a1 + 8);
  v3 = a1 + 8;
  *(v3 + 68) = 1;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DFEEC4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v16, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v16 + 1);
    v7 = *v16;
    if (*v16 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v8 - 128));
        v16 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v14;
        goto LABEL_7;
      }

      v6 = (v16 + 2);
    }

    v16 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = sub_275E2036C(v12);
        *(a1 + 24) = v11;
        v6 = v16;
      }

      v10 = sub_275E5CBBC(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275DFF00C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_275DFFB30(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_275DFF0FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_275DFFEFC(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275DFF188(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F10, 0);
  if (v4)
  {

    return sub_275DFF230(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DFF230(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E2036C(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = qword_2812EB380;
    }

    return sub_275DFF2D8(v6, v8);
  }

  return result;
}

uint64_t sub_275DFF2D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E22D44((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 52) = *(a2 + 52);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 56) = *(a2 + 56);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 64) = *(a2 + 64);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 72) = *(a2 + 72);
    if ((v10 & 0x20) == 0)
    {
LABEL_13:
      if ((v10 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 73) = *(a2 + 73);
    if ((v10 & 0x40) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v10;
        goto LABEL_17;
      }

LABEL_15:
      *(v3 + 75) = *(a2 + 75);
      goto LABEL_16;
    }

LABEL_26:
    *(v3 + 74) = *(a2 + 74);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:
  if ((v10 & 0x100) != 0)
  {
    v11 = *(a2 + 76);
    *(v3 + 16) |= 0x100u;
    *(v3 + 76) = v11;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275DFF428(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DFEDF8(result);

    return sub_275DFF188(v4, a2);
  }

  return result;
}

void *sub_275DFF4B4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D6258;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA160, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0x100000000;
  return a1;
}

uint64_t sub_275DFF548(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E22CA8((a1 + 24));
  return a1;
}

void sub_275DFF588(uint64_t a1)
{
  sub_275DFF548(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275DFF5C8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v58 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v58, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v58 + 1);
      v8 = *v58;
      if ((*v58 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v58, (v9 - 128));
      v58 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_105;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 57)
            {
              v22 = *v7;
              v21 = (v7 + 8);
              v5 |= 4u;
              *(a1 + 56) = v22;
LABEL_61:
              v58 = v21;
              goto LABEL_87;
            }

            goto LABEL_80;
          }

          if (v8 != 48)
          {
            goto LABEL_80;
          }

          v5 |= 0x20u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_53:
            v58 = v29;
            *(a1 + 73) = v28 != 0;
            goto LABEL_87;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v58 = v48;
          *(a1 + 73) = v49 != 0;
          if (!v48)
          {
            goto LABEL_105;
          }
        }

        else
        {
          if (v10 == 8)
          {
            if (v8 == 65)
            {
              v34 = *v7;
              v21 = (v7 + 8);
              v5 |= 8u;
              *(a1 + 64) = v34;
              goto LABEL_61;
            }

            goto LABEL_80;
          }

          if (v10 == 9)
          {
            if (v8 != 72)
            {
              goto LABEL_80;
            }

            v5 |= 0x40u;
            v43 = (v7 + 1);
            v42 = *v7;
            if ((v42 & 0x8000000000000000) == 0)
            {
              goto LABEL_79;
            }

            v44 = *v43;
            v42 = (v44 << 7) + v42 - 128;
            if ((v44 & 0x80000000) == 0)
            {
              v43 = (v7 + 2);
LABEL_79:
              v58 = v43;
              *(a1 + 74) = v42 != 0;
              goto LABEL_87;
            }

            v56 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v58 = v56;
            *(a1 + 74) = v57 != 0;
            if (!v56)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v10 != 10 || v8 != 80)
            {
              goto LABEL_80;
            }

            v5 |= 0x80u;
            v15 = (v7 + 1);
            v14 = *v7;
            if ((v14 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            v16 = *v15;
            v14 = (v16 << 7) + v14 - 128;
            if ((v16 & 0x80000000) == 0)
            {
              v15 = (v7 + 2);
LABEL_25:
              v58 = v15;
              *(a1 + 75) = v14 != 0;
              goto LABEL_87;
            }

            v54 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            v58 = v54;
            *(a1 + 75) = v55 != 0;
            if (!v54)
            {
              goto LABEL_105;
            }
          }
        }
      }

      else if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v26 = (v7 + 1);
            v25 = *v7;
            if ((v25 & 0x8000000000000000) == 0)
            {
              goto LABEL_46;
            }

            v27 = *v26;
            v25 = (v27 << 7) + v25 - 128;
            if (v27 < 0)
            {
              v58 = google::protobuf::internal::VarintParseSlow64(v7, v25);
              if (!v58)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v26 = (v7 + 2);
LABEL_46:
              v58 = v26;
            }

            if ((v25 - 1) > 4)
            {
              sub_275E5F76C();
            }

            else
            {
              *(a1 + 16) |= 0x100u;
              *(a1 + 76) = v25;
            }

            goto LABEL_87;
          }

LABEL_80:
          if (v8)
          {
            v45 = (v8 & 7) == 4;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v58 = google::protobuf::internal::UnknownFieldParse();
          if (!v58)
          {
LABEL_105:
            v58 = 0;
            goto LABEL_2;
          }

          goto LABEL_87;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_80;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_35:
          v58 = v18;
          *(a1 + 48) = v19;
          goto LABEL_87;
        }

        v46 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v58 = v46;
        *(a1 + 48) = v47;
        if (!v46)
        {
          goto LABEL_105;
        }
      }

      else if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_80;
        }

        v5 |= 2u;
        v31 = (v7 + 1);
        LODWORD(v32) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        v33 = *v31;
        v32 = (v32 + (v33 << 7) - 128);
        if ((v33 & 0x80000000) == 0)
        {
          v31 = (v7 + 2);
LABEL_58:
          v58 = v31;
          *(a1 + 52) = v32;
          goto LABEL_87;
        }

        v50 = google::protobuf::internal::VarintParseSlow32(v7, v32);
        v58 = v50;
        *(a1 + 52) = v51;
        if (!v50)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_80;
          }

          v35 = v7 - 1;
          while (2)
          {
            v58 = (v35 + 1);
            v36 = *(a1 + 40);
            if (!v36)
            {
              goto LABEL_69;
            }

            v37 = *(a1 + 32);
            v38 = *v36;
            if (v37 < *v36)
            {
              *(a1 + 32) = v37 + 1;
              goto LABEL_71;
            }

            if (v38 == *(a1 + 36))
            {
LABEL_69:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v36 = *(a1 + 40);
              v38 = *v36;
            }

            *v36 = v38 + 1;
            v39 = sub_275D5EFD8(*(a1 + 24));
            v40 = *(a1 + 32);
            v41 = *(a1 + 40) + 8 * v40;
            *(a1 + 32) = v40 + 1;
            *(v41 + 8) = v39;
LABEL_71:
            v35 = google::protobuf::internal::InlineGreedyStringParser();
            v58 = v35;
            if (!v35)
            {
              goto LABEL_105;
            }

            if (*a3 <= v35 || *v35 != 34)
            {
              goto LABEL_87;
            }

            continue;
          }
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_80;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          v58 = v12;
          *(a1 + 72) = v11 != 0;
          goto LABEL_87;
        }

        v52 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v58 = v52;
        *(a1 + 72) = v53 != 0;
        if (!v52)
        {
          goto LABEL_105;
        }
      }

LABEL_87:
      if (sub_275E221E8(a3, &v58, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v58 + 2);
LABEL_6:
    v58 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v58;
}

unsigned __int8 *sub_275DFFB30(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x100) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v8 = *(a1 + 76);
    *v4 = 8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if (v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if (v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if (v6)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v15 = *(a1 + 48);
  *v4 = 16;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 2) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v7 = *(a1 + 52);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_35:
  v19 = *(a1 + 32);
  if (v19 >= 1)
  {
    v20 = 8;
    do
    {
      v4 = sub_275DF6DE4(this, 4, *(*(a1 + 40) + v20), v4);
      v20 += 8;
      --v19;
    }

    while (v19);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v21 = *(a1 + 72);
    *v4 = 40;
    v4[1] = v21;
    v4 += 2;
    if ((v6 & 0x20) == 0)
    {
LABEL_40:
      if ((v6 & 4) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_40;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v22 = *(a1 + 73);
  *v4 = 48;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_41:
    if ((v6 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_51:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v23 = *(a1 + 56);
  *v4 = 57;
  *(v4 + 1) = v23;
  v4 += 9;
  if ((v6 & 8) == 0)
  {
LABEL_42:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_57;
  }

LABEL_54:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v24 = *(a1 + 64);
  *v4 = 65;
  *(v4 + 1) = v24;
  v4 += 9;
  if ((v6 & 0x40) == 0)
  {
LABEL_43:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_57:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v25 = *(a1 + 74);
  *v4 = 72;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 0x80) != 0)
  {
LABEL_60:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v26 = *(a1 + 75);
    *v4 = 80;
    v4[1] = v26;
    v4 += 2;
  }

LABEL_63:
  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, this);
}

uint64_t sub_275DFFEFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 < 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v2 = (*(a1 + 40) + 8);
    v3 = *(a1 + 32);
    do
    {
      v4 = *v2++;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      --v1;
    }

    while (v1);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (v7)
    {
      v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v7 & 2) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 = v3 + 9;
    if ((v7 & 4) == 0)
    {
      v8 = v3;
    }

    if ((v7 & 8) != 0)
    {
      v8 += 9;
    }

    v9.i64[0] = 0x200000002;
    v9.i64[1] = 0x200000002;
    v3 = v8 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v7), xmmword_275E712D0), v9));
  }

  if ((v7 & 0x100) != 0)
  {
    v10 = *(a1 + 76);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v11;
  }

  if (*(a1 + 8))
  {
    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_275E0004C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F28, 0);
  if (v4)
  {

    return sub_275DFF2D8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void *sub_275E000F4(void *result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DFEE54(result);

    return sub_275E0004C(v4, a2);
  }

  return result;
}

uint64_t sub_275E00180(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6308;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 104) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (atomic_load_explicit(dword_2812EA090, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

void sub_275E00234(_Unwind_Exception *a1)
{
  v7 = v4;
  sub_275E22664(v7);
  sub_275E22664(v6);
  sub_275E22664(v5);
  sub_275E23588(v3);
  if (*(v2 + 44) >= 1)
  {
    v9 = *(v2 + 48);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  sub_275E22664(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275E002A0(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E22664((a1 + 128));
  sub_275E22664((a1 + 104));
  sub_275E22664((a1 + 80));
  sub_275E23588((a1 + 56));
  if (*(a1 + 44) >= 1)
  {
    v2 = *(a1 + 48);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_275E22664((a1 + 16));
  return a1;
}

void sub_275E0032C(uint64_t a1)
{
  sub_275E002A0(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E0036C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  *(v1 + 40) = 0;
  v5 = *(v1 + 64);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 72) + 8);
    do
    {
      v7 = *v6++;
      result = TSP::IndexSet::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 64) = 0;
  }

  v8 = *(v1 + 88);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 96) + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 88) = 0;
  }

  v11 = *(v1 + 112);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 120) + 8);
    do
    {
      v13 = *v12++;
      result = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 112) = 0;
  }

  v14 = *(v1 + 136);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 144) + 8);
    do
    {
      v16 = *v15++;
      result = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 136) = 0;
  }

  v18 = *(v1 + 8);
  v17 = (v1 + 8);
  if (v18)
  {

    return sub_275E224D0(v17);
  }

  return result;
}

google::protobuf::internal *sub_275E0048C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v61 = a2;
  if (sub_275E221E8(a3, &v61, *(a3 + 92)))
  {
    return v61;
  }

  while (1)
  {
    v6 = (v61 + 1);
    v7 = *v61;
    if ((*v61 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v61 + 2);
LABEL_6:
      v61 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v8 - 128));
    v61 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v58;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v9 != 4)
      {
        if (v9 != 5)
        {
          if (v9 != 6 || v7 != 50)
          {
            goto LABEL_100;
          }

          v19 = v6 - 1;
          while (1)
          {
            v20 = (v19 + 1);
            v61 = (v19 + 1);
            v21 = *(a1 + 144);
            if (!v21)
            {
              goto LABEL_33;
            }

            v26 = *(a1 + 136);
            v22 = *v21;
            if (v26 < *v21)
            {
              *(a1 + 136) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
              goto LABEL_37;
            }

            if (v22 == *(a1 + 140))
            {
LABEL_33:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 128));
              v21 = *(a1 + 144);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = MEMORY[0x277C8F050](*(a1 + 128));
            v24 = *(a1 + 136);
            v25 = *(a1 + 144) + 8 * v24;
            *(a1 + 136) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v61;
LABEL_37:
            v19 = sub_275E5B9DC(a3, v23, v20);
            v61 = v19;
            if (!v19)
            {
              return 0;
            }

            if (*a3 <= v19 || *v19 != 50)
            {
              goto LABEL_108;
            }
          }
        }

        if (v7 != 42)
        {
          goto LABEL_100;
        }

        v49 = v6 - 1;
        while (1)
        {
          v50 = (v49 + 1);
          v61 = (v49 + 1);
          v51 = *(a1 + 120);
          if (!v51)
          {
            goto LABEL_86;
          }

          v56 = *(a1 + 112);
          v52 = *v51;
          if (v56 < *v51)
          {
            *(a1 + 112) = v56 + 1;
            v53 = *&v51[2 * v56 + 2];
            goto LABEL_90;
          }

          if (v52 == *(a1 + 116))
          {
LABEL_86:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
            v51 = *(a1 + 120);
            v52 = *v51;
          }

          *v51 = v52 + 1;
          v53 = MEMORY[0x277C8F050](*(a1 + 104));
          v54 = *(a1 + 112);
          v55 = *(a1 + 120) + 8 * v54;
          *(a1 + 112) = v54 + 1;
          *(v55 + 8) = v53;
          v50 = v61;
LABEL_90:
          v49 = sub_275E5B9DC(a3, v53, v50);
          v61 = v49;
          if (!v49)
          {
            return 0;
          }

          if (*a3 <= v49 || *v49 != 42)
          {
            goto LABEL_108;
          }
        }
      }

      if (v7 != 34)
      {
        goto LABEL_100;
      }

      v35 = v6 - 1;
      while (1)
      {
        v36 = (v35 + 1);
        v61 = (v35 + 1);
        v37 = *(a1 + 96);
        if (!v37)
        {
          goto LABEL_59;
        }

        v42 = *(a1 + 88);
        v38 = *v37;
        if (v42 < *v37)
        {
          *(a1 + 88) = v42 + 1;
          v39 = *&v37[2 * v42 + 2];
          goto LABEL_63;
        }

        if (v38 == *(a1 + 92))
        {
LABEL_59:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80));
          v37 = *(a1 + 96);
          v38 = *v37;
        }

        *v37 = v38 + 1;
        v39 = MEMORY[0x277C8F050](*(a1 + 80));
        v40 = *(a1 + 88);
        v41 = *(a1 + 96) + 8 * v40;
        *(a1 + 88) = v40 + 1;
        *(v41 + 8) = v39;
        v36 = v61;
LABEL_63:
        v35 = sub_275E5B9DC(a3, v39, v36);
        v61 = v35;
        if (!v35)
        {
          return 0;
        }

        if (*a3 <= v35 || *v35 != 34)
        {
          goto LABEL_108;
        }
      }
    }

    if (v9 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_100;
      }

      v27 = v6 - 1;
      while (1)
      {
        v28 = (v27 + 1);
        v61 = (v27 + 1);
        v29 = *(a1 + 32);
        if (!v29)
        {
          goto LABEL_46;
        }

        v34 = *(a1 + 24);
        v30 = *v29;
        if (v34 < *v29)
        {
          *(a1 + 24) = v34 + 1;
          v31 = *&v29[2 * v34 + 2];
          goto LABEL_50;
        }

        if (v30 == *(a1 + 28))
        {
LABEL_46:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
          v29 = *(a1 + 32);
          v30 = *v29;
        }

        *v29 = v30 + 1;
        v31 = MEMORY[0x277C8F050](*(a1 + 16));
        v32 = *(a1 + 24);
        v33 = *(a1 + 32) + 8 * v32;
        *(a1 + 24) = v32 + 1;
        *(v33 + 8) = v31;
        v28 = v61;
LABEL_50:
        v27 = sub_275E5B9DC(a3, v31, v28);
        v61 = v27;
        if (!v27)
        {
          return 0;
        }

        if (*a3 <= v27 || *v27 != 10)
        {
          goto LABEL_108;
        }
      }
    }

    if (v9 != 2)
    {
      if (v9 != 3 || v7 != 26)
      {
        goto LABEL_100;
      }

      v11 = v6 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v61 = (v11 + 1);
        v13 = *(a1 + 72);
        if (!v13)
        {
          goto LABEL_17;
        }

        v18 = *(a1 + 64);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 64) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_21;
        }

        if (v14 == *(a1 + 68))
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
          v13 = *(a1 + 72);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = MEMORY[0x277C8F040](*(a1 + 56));
        v16 = *(a1 + 64);
        v17 = *(a1 + 72) + 8 * v16;
        *(a1 + 64) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v61;
LABEL_21:
        v11 = sub_275E5CC8C(a3, v15, v12);
        v61 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 26)
        {
          goto LABEL_108;
        }
      }
    }

    if (v7 == 16)
    {
      break;
    }

    if (v7 == 18)
    {
      v59 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_107;
    }

LABEL_100:
    if (v7)
    {
      v60 = (v7 & 7) == 4;
    }

    else
    {
      v60 = 1;
    }

    if (v60)
    {
      *(a3 + 80) = v7 - 1;
      return v61;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v59 = google::protobuf::internal::UnknownFieldParse();
LABEL_107:
    v61 = v59;
    if (!v59)
    {
      return 0;
    }

LABEL_108:
    if (sub_275E221E8(a3, &v61, *(a3 + 92)))
    {
      return v61;
    }
  }

  v43 = v6 - 1;
  while (1)
  {
    v61 = (v43 + 1);
    v44 = v43[1];
    if (v43[1] < 0)
    {
      v45 = v44 + (v43[2] << 7);
      v44 = v45 - 128;
      if (v43[2] < 0)
      {
        v43 = google::protobuf::internal::VarintParseSlow32((v43 + 1), (v45 - 128));
        v44 = v46;
      }

      else
      {
        v43 += 3;
      }
    }

    else
    {
      v43 += 2;
    }

    v61 = v43;
    v47 = *(a1 + 40);
    if (v47 == *(a1 + 44))
    {
      v48 = v47 + 1;
      sub_275D98CF0((a1 + 40), v47 + 1);
      *(*(a1 + 48) + 4 * v47) = v44;
      v43 = v61;
    }

    else
    {
      *(*(a1 + 48) + 4 * v47) = v44;
      v48 = v47 + 1;
    }

    *(a1 + 40) = v48;
    if (!v43)
    {
      return 0;
    }

    if (*a3 <= v43 || *v43 != 16)
    {
      goto LABEL_108;
    }
  }
}

unsigned __int8 *sub_275E00A9C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(a1 + 40);
  if (v13 >= 1)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(a1 + 48) + 4 * j);
      *a2 = 16;
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++a2;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(a2 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v15;
        a2 += 2;
      }
    }
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(a1 + 72) + 8 * k + 8);
      *a2 = 26;
      v22 = *(v21 + 10);
      if (v22 > 0x7F)
      {
        a2[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = a2 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          a2[2] = v24;
          v23 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v22;
        v23 = a2 + 2;
      }

      a2 = TSP::IndexSet::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 88);
  if (v27)
  {
    for (m = 0; m != v27; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(a1 + 96) + 8 * m + 8);
      *a2 = 34;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(a1 + 112);
  if (v35)
  {
    for (n = 0; n != v35; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(a1 + 120) + 8 * n + 8);
      *a2 = 42;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        a2[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = a2 + 3;
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          a2[2] = v40;
          v39 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v38;
        v39 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v37, v39, a3);
    }
  }

  v43 = *(a1 + 136);
  if (v43)
  {
    for (ii = 0; ii != v43; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v45 = *(*(a1 + 144) + 8 * ii + 8);
      *a2 = 50;
      v46 = *(v45 + 5);
      if (v46 > 0x7F)
      {
        a2[1] = v46 | 0x80;
        v48 = v46 >> 7;
        if (v46 >> 14)
        {
          v47 = a2 + 3;
          do
          {
            *(v47 - 1) = v48 | 0x80;
            v49 = v48 >> 7;
            ++v47;
            v50 = v48 >> 14;
            v48 >>= 7;
          }

          while (v50);
          *(v47 - 1) = v49;
        }

        else
        {
          a2[2] = v48;
          v47 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v46;
        v47 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v45, v47, a3);
    }
  }

  v51 = *(a1 + 8);
  if ((v51 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v51 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275E00F34(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v9 = *(a1 + 64);
  v10 = v8 + v2 + *(a1 + 40) + v9;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TSP::IndexSet::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 88);
  v17 = v10 + v16;
  v18 = *(a1 + 96);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = TSP::Reference::ByteSizeLong(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  v23 = *(a1 + 112);
  v24 = v17 + v23;
  v25 = *(a1 + 120);
  if (v25)
  {
    v26 = (v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  if (v23)
  {
    v27 = 8 * v23;
    do
    {
      v28 = *v26++;
      v29 = TSP::Reference::ByteSizeLong(v28);
      v24 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      v27 -= 8;
    }

    while (v27);
  }

  v30 = *(a1 + 136);
  v31 = v24 + v30;
  v32 = *(a1 + 144);
  if (v32)
  {
    v33 = (v32 + 8);
  }

  else
  {
    v33 = 0;
  }

  if (v30)
  {
    v34 = 8 * v30;
    do
    {
      v35 = *v33++;
      v36 = TSP::Reference::ByteSizeLong(v35);
      v31 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6);
      v34 -= 8;
    }

    while (v34);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v31, a1 + 152);
  }

  else
  {
    *(a1 + 152) = v31;
    return v31;
  }
}

char *sub_275E01140(char *a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F40, 0);
  if (v4)
  {

    return sub_275E011E8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

char *sub_275E011E8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484(result + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275E226E8(v3 + 2, v7, (v6 + 8), v5, **(v3 + 4) - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = *(v3 + 4);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 40);
  if (v10)
  {
    v11 = *(v3 + 10);
    sub_275D98CF0(v3 + 10, v11 + v10);
    v12 = *(v3 + 6);
    *(v3 + 10) += *(a2 + 40);
    result = memcpy((v12 + 4 * v11), *(a2 + 48), 4 * *(a2 + 40));
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a2 + 72);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 56));
    result = sub_275E2360C(v3 + 7, v15, (v14 + 8), v13, **(v3 + 9) - *(v3 + 16));
    v16 = *(v3 + 16) + v13;
    *(v3 + 16) = v16;
    v17 = *(v3 + 9);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a2 + 96);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 80));
    result = sub_275E226E8(v3 + 10, v20, (v19 + 8), v18, **(v3 + 12) - *(v3 + 22));
    v21 = *(v3 + 22) + v18;
    *(v3 + 22) = v21;
    v22 = *(v3 + 12);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 112);
  if (v23)
  {
    v24 = *(a2 + 120);
    v25 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 104));
    result = sub_275E226E8(v3 + 13, v25, (v24 + 8), v23, **(v3 + 15) - *(v3 + 28));
    v26 = *(v3 + 28) + v23;
    *(v3 + 28) = v26;
    v27 = *(v3 + 15);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  v28 = *(a2 + 136);
  if (v28)
  {
    v29 = *(a2 + 144);
    v30 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 128));
    result = sub_275E226E8(v3 + 16, v30, (v29 + 8), v28, **(v3 + 18) - *(v3 + 34));
    v31 = *(v3 + 34) + v28;
    *(v3 + 34) = v31;
    v32 = *(v3 + 18);
    if (*v32 < v31)
    {
      *v32 = v31;
    }
  }

  return result;
}

char *sub_275E0143C(char *result, char *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0036C(result);

    return sub_275E01140(v4, a2);
  }

  return result;
}

BOOL sub_275E01488(uint64_t a1)
{
  v2 = *(a1 + 24);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 64);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::IndexSet::IsInitialized(*(*(a1 + 72) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 88);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(a1 + 96) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 112);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(a1 + 120) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(a1 + 136);
  do
  {
    v14 = v16 < 1;
    if (v16 < 1)
    {
      break;
    }

    v17 = v16 - 1;
    v18 = TSP::Reference::IsInitialized(*(*(a1 + 144) + 8 * v16));
    v16 = v17;
  }

  while ((v18 & 1) != 0);
  return v14;
}

uint64_t sub_275E015B8(uint64_t result, uint64_t a2)
{
  *result = &unk_2884D63B8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void sub_275E0160C(uint64_t a1)
{
  sub_275DE4968((a1 + 8));

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E01664(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  if (v2)
  {
    return sub_275E224D0(result);
  }

  return result;
}

uint64_t sub_275E01674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    return MEMORY[0x2821EAC40]((v3 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
  }

  else
  {
    return a2;
  }
}

uint64_t sub_275E01690(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, 0, v1 + 8);
  }

  *(v1 + 8) = 0;
  return 0;
}

void *sub_275E016B0(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F58, 0);
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_275E22484((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }

  return result;
}

_BYTE *sub_275E01770(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = (result + 8);
    if (v6)
    {
      sub_275E224D0(v5);
    }

    return sub_275E016B0(v4, lpsrc);
  }

  return result;
}

void *sub_275E01804(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D6468;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA808, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275E01874(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EB488 && a1[4])
  {
    v3 = MEMORY[0x277C8E820]();
    MEMORY[0x277C8F960](v3, 0x10A1C405E354A75);
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E01914(void *a1)
{
  sub_275E01874(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E01954(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSD::PathSourceArchive::Clear(*(result + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275E019E8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  for (i = *(a3 + 92); (sub_275E221E8(a3, &v17, i) & 1) == 0; i = *(a3 + 92))
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v17 + 2);
LABEL_6:
      v17 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v15;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C8EFB0](v13);
          *(a1 + 32) = v12;
          v6 = v17;
        }

        v11 = sub_275E5B76C(a3, v12, v6);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_26;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 80) = v7 - 1;
      return v17;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275E01B88(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSD::PathSourceArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275E01CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275E01D4C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_275E01CAC(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSD::PathSourceArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v8, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275E01E2C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F70, 0);
  if (v4)
  {

    return sub_275E01ED4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E01ED4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8EFB0](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = MEMORY[0x277D804C8];
      }

      return TSD::PathSourceArchive::MergeFrom(v6, v8);
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275E01FC0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E01954(result);

    return sub_275E01E2C(v4, a2);
  }

  return result;
}

uint64_t sub_275E0200C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSD::PathSourceArchive::IsInitialized(*(a1 + 32));
  }
}

uint64_t sub_275E02064(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6518;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 96) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (atomic_load_explicit(dword_2812EA7D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 120) = MEMORY[0x277D80A90];
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return a1;
}

void sub_275E02120(_Unwind_Exception *a1)
{
  sub_275E22664(v4);
  sub_275E236CC(v3);
  sub_275E22664(v2);
  sub_275E22664(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275E02160(uint64_t *a1)
{
  sub_275E021C4(a1);
  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 12);
  sub_275E236CC(a1 + 9);
  sub_275E22664(a1 + 6);
  sub_275E22664(a1 + 3);
  return a1;
}

TSP::Reference *sub_275E021C4(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 15);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EB4B0)
  {
    if (*(v1 + 16))
    {
      v3 = MEMORY[0x277C8EB50]();
      MEMORY[0x277C8F960](v3, 0x10A1C401B5AB65DLL);
    }

    v4 = *(v1 + 17);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C8F960]();
    }

    v5 = *(v1 + 18);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 19);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E022B8(uint64_t *a1)
{
  sub_275E02160(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E022F8()
{
  if (atomic_load_explicit(dword_2812EA7D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB4B0;
}

google::protobuf::UnknownFieldSet *sub_275E02338(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_275E01954(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 16);
  if ((v14 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if (v14)
  {
    v17 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v17 + 23) < 0)
    {
      **v17 = 0;
      *(v17 + 8) = 0;
      if ((v14 & 2) != 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      *v17 = 0;
      *(v17 + 23) = 0;
      if ((v14 & 2) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_20:
    if ((v14 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    result = TSP::Reference::Clear(*(v1 + 136));
    if ((v14 & 8) == 0)
    {
LABEL_22:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if ((v14 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_32:
  result = TSS::ThemeArchive::Clear(*(v1 + 128));
  if ((v14 & 4) != 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v14 & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  result = TSP::Reference::Clear(*(v1 + 144));
  if ((v14 & 0x10) != 0)
  {
LABEL_23:
    result = TSP::Reference::Clear(*(v1 + 152));
  }

LABEL_24:
  v16 = *(v1 + 8);
  v15 = v1 + 8;
  *(v15 + 152) = 0;
  *(v15 + 8) = 0;
  if (v16)
  {

    return sub_275E224D0(v15);
  }

  return result;
}

google::protobuf::internal *sub_275E024B4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v59 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v59, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v59 + 1);
      v8 = *v59;
      if ((*v59 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v59, (v9 - 128));
      v59 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_120;
      }

      v7 = TagFallback;
      v8 = v34;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 26)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v37 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_114;
            }

            goto LABEL_107;
          }

          if (v10 != 4)
          {
            if (v10 == 5 && v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v11 = *(a1 + 136);
              if (!v11)
              {
                v12 = *(a1 + 8);
                if (v12)
                {
                  v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                }

                v11 = MEMORY[0x277C8F050](v12);
                *(a1 + 136) = v11;
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            goto LABEL_107;
          }

          if (v8 == 34)
          {
            v47 = v7 - 1;
            while (1)
            {
              v48 = (v47 + 1);
              v59 = (v47 + 1);
              v49 = *(a1 + 64);
              if (!v49)
              {
                goto LABEL_90;
              }

              v54 = *(a1 + 56);
              v50 = *v49;
              if (v54 < *v49)
              {
                *(a1 + 56) = v54 + 1;
                v51 = *&v49[2 * v54 + 2];
                goto LABEL_94;
              }

              if (v50 == *(a1 + 60))
              {
LABEL_90:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                v49 = *(a1 + 64);
                v50 = *v49;
              }

              *v49 = v50 + 1;
              v51 = MEMORY[0x277C8F050](*(a1 + 48));
              v52 = *(a1 + 56);
              v53 = *(a1 + 64) + 8 * v52;
              *(a1 + 56) = v52 + 1;
              *(v53 + 8) = v51;
              v48 = v59;
LABEL_94:
              v47 = sub_275E5B9DC(a3, v51, v48);
              v59 = v47;
              if (!v47)
              {
                goto LABEL_120;
              }

              if (*a3 <= v47 || *v47 != 34)
              {
                goto LABEL_115;
              }
            }
          }

LABEL_107:
          if (v8)
          {
            v56 = (v8 & 7) == 4;
          }

          else
          {
            v56 = 1;
          }

          if (v56)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v37 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_114;
        }

        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 2u;
            v35 = *(a1 + 128);
            if (!v35)
            {
              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v35 = MEMORY[0x277C8F070](v36);
              *(a1 + 128) = v35;
              v7 = v59;
            }

            v37 = sub_275E5CE60(a3, v35, v7);
            goto LABEL_114;
          }

          goto LABEL_107;
        }

        if (v10 != 2 || v8 != 18)
        {
          goto LABEL_107;
        }

        v22 = v7 - 1;
        while (2)
        {
          v23 = (v22 + 1);
          v59 = (v22 + 1);
          v24 = *(a1 + 40);
          if (!v24)
          {
LABEL_42:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v24 = *(a1 + 40);
            v25 = *v24;
            goto LABEL_43;
          }

          v29 = *(a1 + 32);
          v25 = *v24;
          if (v29 >= *v24)
          {
            if (v25 == *(a1 + 36))
            {
              goto LABEL_42;
            }

LABEL_43:
            *v24 = v25 + 1;
            v26 = MEMORY[0x277C8F050](*(a1 + 24));
            v27 = *(a1 + 32);
            v28 = *(a1 + 40) + 8 * v27;
            *(a1 + 32) = v27 + 1;
            *(v28 + 8) = v26;
            v23 = v59;
          }

          else
          {
            *(a1 + 32) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
          }

          v22 = sub_275E5B9DC(a3, v26, v23);
          v59 = v22;
          if (!v22)
          {
            goto LABEL_120;
          }

          if (*a3 <= v22 || *v22 != 18)
          {
            goto LABEL_115;
          }

          continue;
        }
      }

      if (v8 >> 3 > 7)
      {
        if (v10 != 8)
        {
          if (v10 == 9)
          {
            if (v8 == 74)
            {
              *(a1 + 16) |= 0x10u;
              v11 = *(a1 + 152);
              if (!v11)
              {
                v55 = *(a1 + 8);
                if (v55)
                {
                  v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
                }

                v11 = MEMORY[0x277C8F050](v55);
                *(a1 + 152) = v11;
                goto LABEL_105;
              }

              goto LABEL_106;
            }

            goto LABEL_107;
          }

          if (v10 != 10 || v8 != 82)
          {
            goto LABEL_107;
          }

          v13 = v7 - 1;
          while (2)
          {
            v14 = (v13 + 1);
            v59 = (v13 + 1);
            v15 = *(a1 + 112);
            if (!v15)
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v15 = *(a1 + 112);
              v16 = *v15;
              goto LABEL_25;
            }

            v20 = *(a1 + 104);
            v16 = *v15;
            if (v20 >= *v15)
            {
              if (v16 == *(a1 + 108))
              {
                goto LABEL_24;
              }

LABEL_25:
              *v15 = v16 + 1;
              v17 = MEMORY[0x277C8F050](*(a1 + 96));
              v18 = *(a1 + 104);
              v19 = *(a1 + 112) + 8 * v18;
              *(a1 + 104) = v18 + 1;
              *(v19 + 8) = v17;
              v14 = v59;
            }

            else
            {
              *(a1 + 104) = v20 + 1;
              v17 = *&v15[2 * v20 + 2];
            }

            v13 = sub_275E5B9DC(a3, v17, v14);
            v59 = v13;
            if (!v13)
            {
              goto LABEL_120;
            }

            if (*a3 <= v13 || *v13 != 82)
            {
              goto LABEL_115;
            }

            continue;
          }
        }

        if (v8 != 66)
        {
          goto LABEL_107;
        }

        v39 = (v7 - 1);
        while (2)
        {
          v40 = (v39 + 1);
          v59 = (v39 + 1);
          v41 = *(a1 + 88);
          if (!v41)
          {
LABEL_77:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v41 = *(a1 + 88);
            v42 = *v41;
            goto LABEL_78;
          }

          v46 = *(a1 + 80);
          v42 = *v41;
          if (v46 >= *v41)
          {
            if (v42 == *(a1 + 84))
            {
              goto LABEL_77;
            }

LABEL_78:
            *v41 = v42 + 1;
            v43 = sub_275E204F4(*(a1 + 72));
            v44 = *(a1 + 80);
            v45 = *(a1 + 88) + 8 * v44;
            *(a1 + 80) = v44 + 1;
            *(v45 + 8) = v43;
            v40 = v59;
          }

          else
          {
            *(a1 + 80) = v46 + 1;
            v43 = *&v41[2 * v46 + 2];
          }

          v39 = sub_275E5CF30(a3, v43, v40);
          v59 = v39;
          if (!v39)
          {
            goto LABEL_120;
          }

          if (*a3 <= v39 || *v39 != 66)
          {
            goto LABEL_115;
          }

          continue;
        }
      }

      if (v10 == 6)
      {
        if (v8 == 50)
        {
          *(a1 + 16) |= 8u;
          v11 = *(a1 + 144);
          if (!v11)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = MEMORY[0x277C8F050](v38);
            *(a1 + 144) = v11;
LABEL_105:
            v7 = v59;
          }

LABEL_106:
          v37 = sub_275E5B9DC(a3, v11, v7);
LABEL_114:
          v59 = v37;
          if (!v37)
          {
            goto LABEL_120;
          }

          goto LABEL_115;
        }

        goto LABEL_107;
      }

      if (v10 != 7 || v8 != 56)
      {
        goto LABEL_107;
      }

      v5 |= 0x20u;
      v31 = (v7 + 1);
      v30 = *v7;
      if ((v30 & 0x8000000000000000) == 0)
      {
        goto LABEL_58;
      }

      v32 = *v31;
      v30 = (v32 << 7) + v30 - 128;
      if ((v32 & 0x80000000) == 0)
      {
        v31 = (v7 + 2);
LABEL_58:
        v59 = v31;
        *(a1 + 160) = v30 != 0;
        goto LABEL_115;
      }

      v57 = google::protobuf::internal::VarintParseSlow64(v7, v30);
      v59 = v57;
      *(a1 + 160) = v58 != 0;
      if (!v57)
      {
LABEL_120:
        v59 = 0;
        goto LABEL_2;
      }

LABEL_115:
      if (sub_275E221E8(a3, &v59, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v59 + 2);
LABEL_6:
    v59 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v59;
}

unsigned __int8 *sub_275E02B34(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 128);
    *v4 = 10;
    v8 = *(v7 + 11);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSS::ThemeArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v4 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          v4[2] = v18;
          v17 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v16;
        v17 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  if (v6)
  {
    v4 = sub_275DE5774(a3, 3, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
      v24 = *(v23 + 5);
      if (v24 > 0x7F)
      {
        v4[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = v4 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          v4[2] = v26;
          v25 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v24;
        v25 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v23, v25, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(a1 + 136);
    *v4 = 42;
    v30 = *(v29 + 5);
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        v4[2] = v32;
        v31 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v30;
      v31 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v29, v31, a3);
    if ((v6 & 8) == 0)
    {
LABEL_40:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_40;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 144);
  *v4 = 50;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x20) != 0)
  {
LABEL_62:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(a1 + 160);
    *v4 = 56;
    v4[1] = v41;
    v4 += 2;
  }

LABEL_65:
  v42 = *(a1 + 80);
  if (v42)
  {
    for (k = 0; k != v42; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v44 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 66;
      v45 = *(v44 + 20);
      if (v45 > 0x7F)
      {
        v4[1] = v45 | 0x80;
        v47 = v45 >> 7;
        if (v45 >> 14)
        {
          v46 = v4 + 3;
          do
          {
            *(v46 - 1) = v47 | 0x80;
            v48 = v47 >> 7;
            ++v46;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
          *(v46 - 1) = v48;
        }

        else
        {
          v4[2] = v47;
          v46 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v45;
        v46 = v4 + 2;
      }

      v4 = sub_275E01B88(v44, v46, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v50 = *(a1 + 152);
    *v4 = 74;
    v51 = *(v50 + 5);
    if (v51 > 0x7F)
    {
      v4[1] = v51 | 0x80;
      v53 = v51 >> 7;
      if (v51 >> 14)
      {
        v52 = v4 + 3;
        do
        {
          *(v52 - 1) = v53 | 0x80;
          v54 = v53 >> 7;
          ++v52;
          v55 = v53 >> 14;
          v53 >>= 7;
        }

        while (v55);
        *(v52 - 1) = v54;
      }

      else
      {
        v4[2] = v53;
        v52 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v51;
      v52 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v50, v52, a3);
  }

  v56 = *(a1 + 104);
  if (v56)
  {
    for (m = 0; m != v56; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v58 = *(*(a1 + 112) + 8 * m + 8);
      *v4 = 82;
      v59 = *(v58 + 5);
      if (v59 > 0x7F)
      {
        v4[1] = v59 | 0x80;
        v61 = v59 >> 7;
        if (v59 >> 14)
        {
          v60 = v4 + 3;
          do
          {
            *(v60 - 1) = v61 | 0x80;
            v62 = v61 >> 7;
            ++v60;
            v63 = v61 >> 14;
            v61 >>= 7;
          }

          while (v63);
          *(v60 - 1) = v62;
        }

        else
        {
          v4[2] = v61;
          v60 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v59;
        v60 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v58, v60, a3);
    }
  }

  v64 = *(a1 + 8);
  if ((v64 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v64 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_275E03150(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = TSS::ThemeArchive::ByteSizeLong(*(a1 + 128));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 80);
  v19 = v12 + v18;
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_275E01D4C(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 104);
  v26 = v19 + v25;
  v27 = *(a1 + 112);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::Reference::ByteSizeLong(v30);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(a1 + 16);
  if (v32)
  {
    v33 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v26 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v32 & 0x3C) != 0)
  {
    if ((v32 & 4) != 0)
    {
      v38 = TSP::Reference::ByteSizeLong(*(a1 + 136));
      v26 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v32 & 8) == 0)
      {
LABEL_35:
        if ((v32 & 0x10) == 0)
        {
LABEL_37:
          v26 += (v32 >> 4) & 2;
          goto LABEL_38;
        }

LABEL_36:
        v36 = TSP::Reference::ByteSizeLong(*(a1 + 152));
        v26 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_37;
      }
    }

    else if ((v32 & 8) == 0)
    {
      goto LABEL_35;
    }

    v39 = TSP::Reference::ByteSizeLong(*(a1 + 144));
    v26 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_38:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v26, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v26;
    return v26;
  }
}

uint64_t sub_275E03424(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7F88, 0);
  if (v4)
  {

    return sub_275E034CC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E034CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_275E226E8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275E23750((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275E226E8((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 16);
  if ((v25 & 0x3F) != 0)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v25 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v26 = *(v3 + 128);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C8F070](v27);
        *(v3 + 128) = v26;
      }

      if (*(a2 + 128))
      {
        v28 = *(a2 + 128);
      }

      else
      {
        v28 = MEMORY[0x277D80BD8];
      }

      result = TSS::ThemeArchive::MergeFrom(v26, v28);
    }

    v29 = MEMORY[0x277D80A18];
    if ((v25 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v30 = *(v3 + 136);
      if (!v30)
      {
        v31 = *(v3 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x277C8F050](v31);
        *(v3 + 136) = v30;
      }

      if (*(a2 + 136))
      {
        v32 = *(a2 + 136);
      }

      else
      {
        v32 = v29;
      }

      result = TSP::Reference::MergeFrom(v30, v32);
      if ((v25 & 8) == 0)
      {
LABEL_29:
        if ((v25 & 0x10) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_50;
      }
    }

    else if ((v25 & 8) == 0)
    {
      goto LABEL_29;
    }

    *(v3 + 16) |= 8u;
    v33 = *(v3 + 144);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C8F050](v34);
      *(v3 + 144) = v33;
    }

    if (*(a2 + 144))
    {
      v35 = *(a2 + 144);
    }

    else
    {
      v35 = v29;
    }

    result = TSP::Reference::MergeFrom(v33, v35);
    if ((v25 & 0x10) == 0)
    {
LABEL_30:
      if ((v25 & 0x20) == 0)
      {
LABEL_32:
        *(v3 + 16) |= v25;
        return result;
      }

LABEL_31:
      *(v3 + 160) = *(a2 + 160);
      goto LABEL_32;
    }

LABEL_50:
    *(v3 + 16) |= 0x10u;
    v36 = *(v3 + 152);
    if (!v36)
    {
      v37 = *(v3 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = MEMORY[0x277C8F050](v37);
      *(v3 + 152) = v36;
    }

    if (*(a2 + 152))
    {
      v38 = *(a2 + 152);
    }

    else
    {
      v38 = v29;
    }

    result = TSP::Reference::MergeFrom(v36, v38);
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275E03808(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E02338(result);

    return sub_275E03424(v4, a2);
  }

  return result;
}

uint64_t sub_275E03854(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_275E03964(a1 + 72);
  if (result)
  {
    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = TSP::Reference::IsInitialized(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 16);
    if ((v12 & 2) != 0)
    {
      result = TSS::ThemeArchive::IsInitialized(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 152));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275E03964(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSD::PathSourceArchive::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

void *sub_275E03A04(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D65C8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA798, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275E03A90(void *a1)
{
  if (a1 != qword_2812EB558)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 3);
  return a1;
}

void sub_275E03B00(void *a1)
{
  sub_275E03A90(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::UnknownFieldSet *sub_275E03B40(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    result = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275E03BD0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_275E221E8(a3, &v25, i))
    {
      return v25;
    }

    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      break;
    }

    if (v7 >> 3 != 1 || v7 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 48);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C8F050](v21);
      *(a1 + 48) = v20;
      v6 = v25;
    }

    v11 = sub_275E5B9DC(a3, v20, v6);
LABEL_37:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }

LABEL_38:
    ;
  }

  if (v7 == 18)
  {
    v12 = v6 - 1;
    while (1)
    {
      v13 = (v12 + 1);
      v25 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_26;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = MEMORY[0x277C8F050](*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v25;
LABEL_26:
      v12 = sub_275E5B9DC(a3, v16, v13);
      v25 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_12:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_37;
  }

  *(a3 + 80) = v7 - 1;
  return v25;
}

unsigned __int8 *sub_275E03DF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275E03FB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E0409C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7FA0, 0);
  if (v4)
  {

    return sub_275E04144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E04144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C8F050](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_275E04254(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E03B40(result);

    return sub_275E0409C(v4, a2);
  }

  return result;
}

uint64_t sub_275E042A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0433C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6678;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 96) = xmmword_275E712E0;
  *(a1 + 112) = 0x408C200000000000;
  return a1;
}

uint64_t *sub_275E043D4(uint64_t *a1)
{
  sub_275E04408(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

TSP::Reference *sub_275E04408(TSP::Reference *result)
{
  if (result != &unk_2812EB590)
  {
    v1 = result;
    v2 = *(result + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = *(v1 + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      v5 = sub_275E03A90(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C40D196C376);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Size::~Size(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = *(v1 + 7);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C8F960]();
    }

    v8 = *(v1 + 8);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C8F960]();
    }

    v9 = *(v1 + 9);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 10);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E0451C(uint64_t *a1)
{
  sub_275E043D4(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E0455C()
{
  if (atomic_load_explicit(dword_2812EA588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB590;
}

google::protobuf::UnknownFieldSet *sub_275E0459C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSP::Reference::Clear(*(result + 3));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_275E03B40(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = TSP::Size::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = TSP::Reference::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = TSP::Reference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = TSP::Reference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::Reference::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 88) = 0;
    *(v1 + 96) = xmmword_275E712E0;
    *(v1 + 112) = 0x408C200000000000;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E04698(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v52 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v52, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v52 + 1);
      v8 = *v52;
      if (*v52 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v52, (v9 - 128));
          v52 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_111;
          }

          v7 = TagFallback;
          v8 = v13;
          goto LABEL_7;
        }

        v7 = (v52 + 2);
      }

      v52 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (v10)
          {
            goto LABEL_77;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v11);
          *(a1 + 24) = v10;
          goto LABEL_76;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10)
          {
            goto LABEL_77;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v27);
          *(a1 + 32) = v10;
          goto LABEL_76;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = sub_275E2060C(v19);
            *(a1 + 40) = v18;
            v7 = v52;
          }

          v20 = sub_275E5D000(a3, v18, v7);
          goto LABEL_78;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 8u;
          v36 = *(a1 + 48);
          if (!v36)
          {
            v37 = *(a1 + 8);
            if (v37)
            {
              v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x277C8EFF0](v37);
            *(a1 + 48) = v36;
            v7 = v52;
          }

          v20 = sub_275E5C60C(a3, v36, v7);
          goto LABEL_78;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x10u;
          v10 = *(a1 + 56);
          if (v10)
          {
            goto LABEL_77;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v38);
          *(a1 + 56) = v10;
          goto LABEL_76;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_92;
          }

          v5 |= 0x200u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            v52 = v44;
            *(a1 + 92) = v45 != 0;
            if (!v44)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_34:
            v52 = v22;
            *(a1 + 92) = v21 != 0;
          }

          goto LABEL_90;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x20u;
          v10 = *(a1 + 64);
          if (v10)
          {
            goto LABEL_77;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v28);
          *(a1 + 64) = v10;
          goto LABEL_76;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_92;
          }

          v5 |= 0x400u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v48 = google::protobuf::internal::VarintParseSlow64(v7, v29);
            v52 = v48;
            *(a1 + 93) = v49 != 0;
            if (!v48)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_54:
            v52 = v30;
            *(a1 + 93) = v29 != 0;
          }

          goto LABEL_90;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_92;
          }

          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            if (!v52)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_87:
            v52 = v41;
          }

          if (v40 > 2)
          {
            sub_275E5F7A8();
          }

          else
          {
            *(a1 + 16) |= 0x100u;
            *(a1 + 88) = v40;
          }

          goto LABEL_90;
        case 0xAu:
          if (v8 != 81)
          {
            goto LABEL_92;
          }

          v39 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 96) = v39;
          goto LABEL_82;
        case 0xBu:
          if (v8 != 89)
          {
            goto LABEL_92;
          }

          v16 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x4000u;
          *(a1 + 104) = v16;
          goto LABEL_82;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_92;
          }

          v5 |= 0x800u;
          v25 = (v7 + 1);
          v24 = *v7;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v46 = google::protobuf::internal::VarintParseSlow64(v7, v24);
            v52 = v46;
            *(a1 + 94) = v47 != 0;
            if (!v46)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v25 = (v7 + 2);
LABEL_39:
            v52 = v25;
            *(a1 + 94) = v24 != 0;
          }

          goto LABEL_90;
        case 0x10u:
          if (v8 != 129)
          {
            goto LABEL_92;
          }

          v17 = *v7;
          v15 = (v7 + 8);
          v5 |= 0x8000u;
          *(a1 + 112) = v17;
LABEL_82:
          v52 = v15;
          goto LABEL_90;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x40u;
          v10 = *(a1 + 72);
          if (v10)
          {
            goto LABEL_77;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v14);
          *(a1 + 72) = v10;
          goto LABEL_76;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_92;
          }

          v5 |= 0x1000u;
          v33 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow64(v7, v32);
            v52 = v50;
            *(a1 + 95) = v51 != 0;
            if (!v50)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_59:
            v52 = v33;
            *(a1 + 95) = v32 != 0;
          }

          goto LABEL_90;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x80u;
          v10 = *(a1 + 80);
          if (v10)
          {
            goto LABEL_77;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C8F050](v35);
          *(a1 + 80) = v10;
LABEL_76:
          v7 = v52;
LABEL_77:
          v20 = sub_275E5B9DC(a3, v10, v7);
          goto LABEL_78;
        default:
LABEL_92:
          if (v8)
          {
            v43 = (v8 & 7) == 4;
          }

          else
          {
            v43 = 1;
          }

          if (v43)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_78:
          v52 = v20;
          if (!v20)
          {
LABEL_111:
            v52 = 0;
            goto LABEL_2;
          }

LABEL_90:
          if (sub_275E221E8(a3, &v52, *(a3 + 92)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v52;
}

unsigned __int8 *sub_275E04CF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 20);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = sub_275E03DF4(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 48);
  *a2 = 34;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_58:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(a1 + 56);
  *a2 = 42;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = a2 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      a2[2] = v33;
      v32 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v31;
    v32 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(a1 + 92);
  *a2 = 48;
  a2[1] = v36;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(a1 + 64);
  *a2 = 58;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    a2[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = a2 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++v39;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(v39 - 1) = v41;
    }

    else
    {
      a2[2] = v40;
      v39 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v38;
    v39 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_84:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v44 = *(a1 + 88);
    *a2 = 72;
    if (v44 > 0x7F)
    {
      a2[1] = v44 | 0x80;
      v45 = v44 >> 7;
      if (v44 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v45 | 0x80;
          v46 = v45 >> 7;
          ++a2;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
        *(a2 - 1) = v46;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_95;
        }
      }

      else
      {
        a2[2] = v45;
        a2 += 3;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
      a2[1] = v44;
      a2 += 2;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_95;
      }
    }

LABEL_11:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_98;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(a1 + 93);
  *a2 = 64;
  a2[1] = v43;
  a2 += 2;
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_84;
  }

LABEL_10:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_11;
  }

LABEL_95:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(a1 + 96);
  *a2 = 81;
  *(a2 + 1) = v48;
  a2 += 9;
  if ((v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_101;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(a1 + 104);
  *a2 = 89;
  *(a2 + 1) = v49;
  a2 += 9;
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_104;
  }

LABEL_101:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(a1 + 94);
  *a2 = 120;
  a2[1] = v50;
  a2 += 2;
  if ((v5 & 0x8000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_107;
  }

LABEL_104:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(a1 + 112);
  *a2 = 385;
  *(a2 + 2) = v51;
  a2 += 10;
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v52 = *(a1 + 72);
  *a2 = 394;
  v53 = *(v52 + 5);
  if (v53 > 0x7F)
  {
    a2[2] = v53 | 0x80;
    v55 = v53 >> 7;
    if (v53 >> 14)
    {
      v54 = a2 + 4;
      do
      {
        *(v54 - 1) = v55 | 0x80;
        v56 = v55 >> 7;
        ++v54;
        v57 = v55 >> 14;
        v55 >>= 7;
      }

      while (v57);
      *(v54 - 1) = v56;
    }

    else
    {
      a2[3] = v55;
      v54 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v53;
    v54 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v52, v54, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v58 = *(a1 + 95);
  *a2 = 400;
  a2[2] = v58;
  a2 += 3;
  if ((v5 & 0x80) != 0)
  {
LABEL_120:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v59 = *(a1 + 80);
    *a2 = 410;
    v60 = *(v59 + 5);
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v62 = v60 >> 7;
      if (v60 >> 14)
      {
        v61 = a2 + 4;
        do
        {
          *(v61 - 1) = v62 | 0x80;
          v63 = v62 >> 7;
          ++v61;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
        *(v61 - 1) = v63;
      }

      else
      {
        a2[3] = v62;
        v61 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v60;
      v61 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v59, v61, a3);
  }

LABEL_130:
  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v65 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_275E05434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = sub_275E03FB0(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v8 = TSP::Size::ByteSizeLong(*(a1 + 48));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x10) != 0)
  {
LABEL_8:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275E05538(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1E) != 0)
  {
    v9 = sub_275E05434(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 = sub_275E03FB0(*(a1 + 40));
    v4 = TSP::Size::ByteSizeLong(*(a1 + 48));
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v9 = v2 + v4 + v3 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL)) + v5 + 4;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v9 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v10 & 0xE0) != 0)
  {
    if ((v10 & 0x20) != 0)
    {
      v18 = TSP::Reference::ByteSizeLong(*(a1 + 64));
      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 0x40) == 0)
      {
LABEL_9:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v10 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    v19 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x80) != 0)
    {
LABEL_10:
      v12 = TSP::Reference::ByteSizeLong(*(a1 + 80));
      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

LABEL_11:
  if ((v10 & 0xFF00) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v13 = *(a1 + 88);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v9 += v15;
    }

    v16 = v9 + ((v10 >> 9) & 2) + ((v10 >> 8) & 2) + ((v10 >> 10) & 2);
    if ((v10 & 0x1000) != 0)
    {
      v16 += 3;
    }

    if ((v10 & 0x2000) != 0)
    {
      v16 += 9;
    }

    if ((v10 & 0x4000) != 0)
    {
      v16 += 9;
    }

    if ((v10 & 0x8000) != 0)
    {
      v9 = v16 + 10;
    }

    else
    {
      v9 = v16;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v9, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v9;
    return v9;
  }
}