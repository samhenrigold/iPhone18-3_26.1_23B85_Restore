unsigned __int8 *sub_2763A798C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 32);
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v5, v7, this);
  }

  if ((*(a1 + 20) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v11 = *(a1 + 328);
    *a2 = 16;
    a2[1] = v11;
    a2 += 2;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 40);
    *a2 = 26;
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

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v12, v14, this);
  }

  if ((*(a1 + 20) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v18 = *(a1 + 329);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v19 = *(a1 + 48);
    *a2 = 42;
    v20 = *(v19 + 5);
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = a2 + 3;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v21;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v21 - 1) = v23;
      }

      else
      {
        a2[2] = v22;
        v21 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v20;
      v21 = a2 + 2;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v19, v21, this);
  }

  if ((*(a1 + 20) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v25 = *(a1 + 330);
    *a2 = 48;
    a2[1] = v25;
    a2 += 2;
  }

  if ((*(a1 + 16) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v26 = *(a1 + 56);
    *a2 = 58;
    v27 = *(v26 + 20);
    if (v27 > 0x7F)
    {
      a2[1] = v27 | 0x80;
      v29 = v27 >> 7;
      if (v27 >> 14)
      {
        v28 = a2 + 3;
        do
        {
          *(v28 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++v28;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(v28 - 1) = v30;
      }

      else
      {
        a2[2] = v29;
        v28 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v27;
      v28 = a2 + 2;
    }

    a2 = sub_276397274(v26, v28, this);
  }

  if (*(a1 + 21))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v32 = *(a1 + 331);
    *a2 = 64;
    a2[1] = v32;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v33 = *(a1 + 64);
    *a2 = 74;
    v34 = *(v33 + 20);
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

    a2 = sub_276397274(v33, v35, this);
  }

  if ((*(a1 + 21) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v39 = *(a1 + 332);
    *a2 = 80;
    a2[1] = v39;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v40 = *(a1 + 72);
    *a2 = 90;
    v41 = *(v40 + 20);
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

    a2 = sub_276397274(v40, v42, this);
  }

  if ((*(a1 + 21) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v46 = *(a1 + 333);
    *a2 = 96;
    a2[1] = v46;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v47 = *(a1 + 80);
    *a2 = 106;
    v48 = *(v47 + 20);
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

    a2 = sub_276397274(v47, v49, this);
  }

  if ((*(a1 + 21) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v53 = *(a1 + 334);
    *a2 = 112;
    a2[1] = v53;
    a2 += 2;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v54 = *(a1 + 88);
    *a2 = 122;
    v55 = *(v54 + 20);
    if (v55 > 0x7F)
    {
      a2[1] = v55 | 0x80;
      v57 = v55 >> 7;
      if (v55 >> 14)
      {
        v56 = a2 + 3;
        do
        {
          *(v56 - 1) = v57 | 0x80;
          v58 = v57 >> 7;
          ++v56;
          v59 = v57 >> 14;
          v57 >>= 7;
        }

        while (v59);
        *(v56 - 1) = v58;
      }

      else
      {
        a2[2] = v57;
        v56 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v55;
      v56 = a2 + 2;
    }

    a2 = sub_276397274(v54, v56, this);
  }

  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v60 = *(a1 + 335);
    *a2 = 384;
    a2[2] = v60;
    a2 += 3;
  }

  if (*(a1 + 17))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v61 = *(a1 + 96);
    *a2 = 394;
    v62 = *(v61 + 20);
    if (v62 > 0x7F)
    {
      a2[2] = v62 | 0x80;
      v64 = v62 >> 7;
      if (v62 >> 14)
      {
        v63 = a2 + 4;
        do
        {
          *(v63 - 1) = v64 | 0x80;
          v65 = v64 >> 7;
          ++v63;
          v66 = v64 >> 14;
          v64 >>= 7;
        }

        while (v66);
        *(v63 - 1) = v65;
      }

      else
      {
        a2[3] = v64;
        v63 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v62;
      v63 = a2 + 3;
    }

    a2 = sub_276397274(v61, v63, this);
  }

  if ((*(a1 + 21) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v67 = *(a1 + 336);
    *a2 = 400;
    a2[2] = v67;
    a2 += 3;
  }

  if ((*(a1 + 17) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v68 = *(a1 + 104);
    *a2 = 410;
    v69 = *(v68 + 20);
    if (v69 > 0x7F)
    {
      a2[2] = v69 | 0x80;
      v71 = v69 >> 7;
      if (v69 >> 14)
      {
        v70 = a2 + 4;
        do
        {
          *(v70 - 1) = v71 | 0x80;
          v72 = v71 >> 7;
          ++v70;
          v73 = v71 >> 14;
          v71 >>= 7;
        }

        while (v73);
        *(v70 - 1) = v72;
      }

      else
      {
        a2[3] = v71;
        v70 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v69;
      v70 = a2 + 3;
    }

    a2 = sub_276397274(v68, v70, this);
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v74 = *(a1 + 337);
    *a2 = 416;
    a2[2] = v74;
    a2 += 3;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v75 = *(a1 + 112);
    *a2 = 426;
    v76 = *(v75 + 20);
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

    a2 = sub_276397274(v75, v77, this);
  }

  if ((*(a1 + 21) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v81 = *(a1 + 338);
    *a2 = 432;
    a2[2] = v81;
    a2 += 3;
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v82 = *(a1 + 120);
    *a2 = 442;
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v82, v84, this);
  }

  if (*(a1 + 22))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v88 = *(a1 + 339);
    *a2 = 448;
    a2[2] = v88;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v89 = *(a1 + 128);
    *a2 = 458;
    v90 = *(v89 + 5);
    if (v90 > 0x7F)
    {
      a2[2] = v90 | 0x80;
      v92 = v90 >> 7;
      if (v90 >> 14)
      {
        v91 = a2 + 4;
        do
        {
          *(v91 - 1) = v92 | 0x80;
          v93 = v92 >> 7;
          ++v91;
          v94 = v92 >> 14;
          v92 >>= 7;
        }

        while (v94);
        *(v91 - 1) = v93;
      }

      else
      {
        a2[3] = v92;
        v91 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v90;
      v91 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v89, v91, this);
  }

  if ((*(a1 + 22) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v95 = *(a1 + 340);
    *a2 = 464;
    a2[2] = v95;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v96 = *(a1 + 136);
    *a2 = 474;
    v97 = *(v96 + 5);
    if (v97 > 0x7F)
    {
      a2[2] = v97 | 0x80;
      v99 = v97 >> 7;
      if (v97 >> 14)
      {
        v98 = a2 + 4;
        do
        {
          *(v98 - 1) = v99 | 0x80;
          v100 = v99 >> 7;
          ++v98;
          v101 = v99 >> 14;
          v99 >>= 7;
        }

        while (v101);
        *(v98 - 1) = v100;
      }

      else
      {
        a2[3] = v99;
        v98 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v97;
      v98 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v96, v98, this);
  }

  if ((*(a1 + 22) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v102 = *(a1 + 341);
    *a2 = 480;
    a2[2] = v102;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v103 = *(a1 + 144);
    *a2 = 490;
    v104 = *(v103 + 5);
    if (v104 > 0x7F)
    {
      a2[2] = v104 | 0x80;
      v106 = v104 >> 7;
      if (v104 >> 14)
      {
        v105 = a2 + 4;
        do
        {
          *(v105 - 1) = v106 | 0x80;
          v107 = v106 >> 7;
          ++v105;
          v108 = v106 >> 14;
          v106 >>= 7;
        }

        while (v108);
        *(v105 - 1) = v107;
      }

      else
      {
        a2[3] = v106;
        v105 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v104;
      v105 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v103, v105, this);
  }

  if ((*(a1 + 22) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v109 = *(a1 + 342);
    *a2 = 496;
    a2[2] = v109;
    a2 += 3;
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v110 = *(a1 + 152);
    *a2 = 506;
    v111 = *(v110 + 5);
    if (v111 > 0x7F)
    {
      a2[2] = v111 | 0x80;
      v113 = v111 >> 7;
      if (v111 >> 14)
      {
        v112 = a2 + 4;
        do
        {
          *(v112 - 1) = v113 | 0x80;
          v114 = v113 >> 7;
          ++v112;
          v115 = v113 >> 14;
          v113 >>= 7;
        }

        while (v115);
        *(v112 - 1) = v114;
      }

      else
      {
        a2[3] = v113;
        v112 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v111;
      v112 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v110, v112, this);
  }

  if ((*(a1 + 22) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v116 = *(a1 + 343);
    *a2 = 640;
    a2[2] = v116;
    a2 += 3;
  }

  if (*(a1 + 18))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v117 = *(a1 + 160);
    *a2 = 650;
    v118 = *(v117 + 5);
    if (v118 > 0x7F)
    {
      a2[2] = v118 | 0x80;
      v120 = v118 >> 7;
      if (v118 >> 14)
      {
        v119 = a2 + 4;
        do
        {
          *(v119 - 1) = v120 | 0x80;
          v121 = v120 >> 7;
          ++v119;
          v122 = v120 >> 14;
          v120 >>= 7;
        }

        while (v122);
        *(v119 - 1) = v121;
      }

      else
      {
        a2[3] = v120;
        v119 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v118;
      v119 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v117, v119, this);
  }

  if ((*(a1 + 22) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v123 = *(a1 + 344);
    *a2 = 656;
    a2[2] = v123;
    a2 += 3;
  }

  if ((*(a1 + 18) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v124 = *(a1 + 168);
    *a2 = 666;
    v125 = *(v124 + 5);
    if (v125 > 0x7F)
    {
      a2[2] = v125 | 0x80;
      v127 = v125 >> 7;
      if (v125 >> 14)
      {
        v126 = a2 + 4;
        do
        {
          *(v126 - 1) = v127 | 0x80;
          v128 = v127 >> 7;
          ++v126;
          v129 = v127 >> 14;
          v127 >>= 7;
        }

        while (v129);
        *(v126 - 1) = v128;
      }

      else
      {
        a2[3] = v127;
        v126 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v125;
      v126 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v124, v126, this);
  }

  if ((*(a1 + 22) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v130 = *(a1 + 345);
    *a2 = 672;
    a2[2] = v130;
    a2 += 3;
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 176);
    *a2 = 682;
    v132 = *(v131 + 5);
    if (v132 > 0x7F)
    {
      a2[2] = v132 | 0x80;
      v134 = v132 >> 7;
      if (v132 >> 14)
      {
        v133 = a2 + 4;
        do
        {
          *(v133 - 1) = v134 | 0x80;
          v135 = v134 >> 7;
          ++v133;
          v136 = v134 >> 14;
          v134 >>= 7;
        }

        while (v136);
        *(v133 - 1) = v135;
      }

      else
      {
        a2[3] = v134;
        v133 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v132;
      v133 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v131, v133, this);
  }

  if ((*(a1 + 22) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v137 = *(a1 + 346);
    *a2 = 688;
    a2[2] = v137;
    a2 += 3;
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v138 = *(a1 + 184);
    *a2 = 698;
    v139 = *(v138 + 5);
    if (v139 > 0x7F)
    {
      a2[2] = v139 | 0x80;
      v141 = v139 >> 7;
      if (v139 >> 14)
      {
        v140 = a2 + 4;
        do
        {
          *(v140 - 1) = v141 | 0x80;
          v142 = v141 >> 7;
          ++v140;
          v143 = v141 >> 14;
          v141 >>= 7;
        }

        while (v143);
        *(v140 - 1) = v142;
      }

      else
      {
        a2[3] = v141;
        v140 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v139;
      v140 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v138, v140, this);
  }

  if (*(a1 + 23))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v144 = *(a1 + 347);
    *a2 = 704;
    a2[2] = v144;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v145 = *(a1 + 192);
    *a2 = 714;
    v146 = *(v145 + 5);
    if (v146 > 0x7F)
    {
      a2[2] = v146 | 0x80;
      v148 = v146 >> 7;
      if (v146 >> 14)
      {
        v147 = a2 + 4;
        do
        {
          *(v147 - 1) = v148 | 0x80;
          v149 = v148 >> 7;
          ++v147;
          v150 = v148 >> 14;
          v148 >>= 7;
        }

        while (v150);
        *(v147 - 1) = v149;
      }

      else
      {
        a2[3] = v148;
        v147 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v146;
      v147 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v145, v147, this);
  }

  if ((*(a1 + 23) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v151 = *(a1 + 348);
    *a2 = 720;
    a2[2] = v151;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v152 = *(a1 + 200);
    *a2 = 730;
    v153 = *(v152 + 5);
    if (v153 > 0x7F)
    {
      a2[2] = v153 | 0x80;
      v155 = v153 >> 7;
      if (v153 >> 14)
      {
        v154 = a2 + 4;
        do
        {
          *(v154 - 1) = v155 | 0x80;
          v156 = v155 >> 7;
          ++v154;
          v157 = v155 >> 14;
          v155 >>= 7;
        }

        while (v157);
        *(v154 - 1) = v156;
      }

      else
      {
        a2[3] = v155;
        v154 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v153;
      v154 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v152, v154, this);
  }

  if ((*(a1 + 23) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v158 = *(a1 + 349);
    *a2 = 736;
    a2[2] = v158;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v159 = *(a1 + 208);
    *a2 = 746;
    v160 = *(v159 + 5);
    if (v160 > 0x7F)
    {
      a2[2] = v160 | 0x80;
      v162 = v160 >> 7;
      if (v160 >> 14)
      {
        v161 = a2 + 4;
        do
        {
          *(v161 - 1) = v162 | 0x80;
          v163 = v162 >> 7;
          ++v161;
          v164 = v162 >> 14;
          v162 >>= 7;
        }

        while (v164);
        *(v161 - 1) = v163;
      }

      else
      {
        a2[3] = v162;
        v161 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v160;
      v161 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v159, v161, this);
  }

  if ((*(a1 + 23) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v165 = *(a1 + 350);
    *a2 = 752;
    a2[2] = v165;
    a2 += 3;
  }

  if ((*(a1 + 18) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v166 = *(a1 + 216);
    *a2 = 762;
    v167 = *(v166 + 5);
    if (v167 > 0x7F)
    {
      a2[2] = v167 | 0x80;
      v169 = v167 >> 7;
      if (v167 >> 14)
      {
        v168 = a2 + 4;
        do
        {
          *(v168 - 1) = v169 | 0x80;
          v170 = v169 >> 7;
          ++v168;
          v171 = v169 >> 14;
          v169 >>= 7;
        }

        while (v171);
        *(v168 - 1) = v170;
      }

      else
      {
        a2[3] = v169;
        v168 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v167;
      v168 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v166, v168, this);
  }

  if ((*(a1 + 23) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v172 = *(a1 + 351);
    *a2 = 896;
    a2[2] = v172;
    a2 += 3;
  }

  if (*(a1 + 19))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v173 = *(a1 + 224);
    *a2 = 906;
    v174 = *(v173 + 5);
    if (v174 > 0x7F)
    {
      a2[2] = v174 | 0x80;
      v176 = v174 >> 7;
      if (v174 >> 14)
      {
        v175 = a2 + 4;
        do
        {
          *(v175 - 1) = v176 | 0x80;
          v177 = v176 >> 7;
          ++v175;
          v178 = v176 >> 14;
          v176 >>= 7;
        }

        while (v178);
        *(v175 - 1) = v177;
      }

      else
      {
        a2[3] = v176;
        v175 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v174;
      v175 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v173, v175, this);
  }

  if ((*(a1 + 23) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v179 = *(a1 + 352);
    *a2 = 912;
    a2[2] = v179;
    a2 += 3;
  }

  if ((*(a1 + 19) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v180 = *(a1 + 232);
    *a2 = 922;
    v181 = *(v180 + 5);
    if (v181 > 0x7F)
    {
      a2[2] = v181 | 0x80;
      v183 = v181 >> 7;
      if (v181 >> 14)
      {
        v182 = a2 + 4;
        do
        {
          *(v182 - 1) = v183 | 0x80;
          v184 = v183 >> 7;
          ++v182;
          v185 = v183 >> 14;
          v183 >>= 7;
        }

        while (v185);
        *(v182 - 1) = v184;
      }

      else
      {
        a2[3] = v183;
        v182 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v181;
      v182 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v180, v182, this);
  }

  if ((*(a1 + 23) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v186 = *(a1 + 353);
    *a2 = 928;
    a2[2] = v186;
    a2 += 3;
  }

  if ((*(a1 + 19) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v187 = *(a1 + 240);
    *a2 = 938;
    v188 = *(v187 + 5);
    if (v188 > 0x7F)
    {
      a2[2] = v188 | 0x80;
      v190 = v188 >> 7;
      if (v188 >> 14)
      {
        v189 = a2 + 4;
        do
        {
          *(v189 - 1) = v190 | 0x80;
          v191 = v190 >> 7;
          ++v189;
          v192 = v190 >> 14;
          v190 >>= 7;
        }

        while (v192);
        *(v189 - 1) = v191;
      }

      else
      {
        a2[3] = v190;
        v189 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v188;
      v189 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v187, v189, this);
  }

  if ((*(a1 + 20) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v193 = *(a1 + 354);
    *a2 = 944;
    a2[2] = v193;
    a2 += 3;
  }

  if ((*(a1 + 19) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v194 = *(a1 + 248);
    *a2 = 954;
    v195 = *(v194 + 5);
    if (v195 > 0x7F)
    {
      a2[2] = v195 | 0x80;
      v197 = v195 >> 7;
      if (v195 >> 14)
      {
        v196 = a2 + 4;
        do
        {
          *(v196 - 1) = v197 | 0x80;
          v198 = v197 >> 7;
          ++v196;
          v199 = v197 >> 14;
          v197 >>= 7;
        }

        while (v199);
        *(v196 - 1) = v198;
      }

      else
      {
        a2[3] = v197;
        v196 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v195;
      v196 = a2 + 3;
    }

    a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v194, v196, this);
  }

  if (*(a1 + 24))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v200 = *(a1 + 355);
    *a2 = 960;
    a2[2] = v200;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v201 = *(a1 + 256);
    *a2 = 970;
    v202 = *(v201 + 5);
    if (v202 > 0x7F)
    {
      a2[2] = v202 | 0x80;
      v204 = v202 >> 7;
      if (v202 >> 14)
      {
        v203 = a2 + 4;
        do
        {
          *(v203 - 1) = v204 | 0x80;
          v205 = v204 >> 7;
          ++v203;
          v206 = v204 >> 14;
          v204 >>= 7;
        }

        while (v206);
        *(v203 - 1) = v205;
      }

      else
      {
        a2[3] = v204;
        v203 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v202;
      v203 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v201, v203, this);
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v207 = *(a1 + 356);
    *a2 = 976;
    a2[2] = v207;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v208 = *(a1 + 264);
    *a2 = 986;
    v209 = *(v208 + 5);
    if (v209 > 0x7F)
    {
      a2[2] = v209 | 0x80;
      v211 = v209 >> 7;
      if (v209 >> 14)
      {
        v210 = a2 + 4;
        do
        {
          *(v210 - 1) = v211 | 0x80;
          v212 = v211 >> 7;
          ++v210;
          v213 = v211 >> 14;
          v211 >>= 7;
        }

        while (v213);
        *(v210 - 1) = v212;
      }

      else
      {
        a2[3] = v211;
        v210 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v209;
      v210 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v208, v210, this);
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v214 = *(a1 + 357);
    *a2 = 992;
    a2[2] = v214;
    a2 += 3;
  }

  if ((*(a1 + 19) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v215 = *(a1 + 272);
    *a2 = 1002;
    v216 = *(v215 + 5);
    if (v216 > 0x7F)
    {
      a2[2] = v216 | 0x80;
      v218 = v216 >> 7;
      if (v216 >> 14)
      {
        v217 = a2 + 4;
        do
        {
          *(v217 - 1) = v218 | 0x80;
          v219 = v218 >> 7;
          ++v217;
          v220 = v218 >> 14;
          v218 >>= 7;
        }

        while (v220);
        *(v217 - 1) = v219;
      }

      else
      {
        a2[3] = v218;
        v217 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v216;
      v217 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v215, v217, this);
  }

  if ((*(a1 + 24) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v221 = *(a1 + 358);
    *a2 = 1008;
    a2[2] = v221;
    a2 += 3;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v222 = *(a1 + 280);
    *a2 = 1018;
    v223 = *(v222 + 20);
    if (v223 > 0x7F)
    {
      a2[2] = v223 | 0x80;
      v225 = v223 >> 7;
      if (v223 >> 14)
      {
        v224 = a2 + 4;
        do
        {
          *(v224 - 1) = v225 | 0x80;
          v226 = v225 >> 7;
          ++v224;
          v227 = v225 >> 14;
          v225 >>= 7;
        }

        while (v227);
        *(v224 - 1) = v226;
      }

      else
      {
        a2[3] = v225;
        v224 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v223;
      v224 = a2 + 3;
    }

    a2 = sub_2763983D0(v222, v224, this);
  }

  if ((*(a1 + 24) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v228 = *(a1 + 359);
    *a2 = 1152;
    a2[2] = v228;
    a2 += 3;
  }

  if (*(a1 + 20))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v229 = *(a1 + 288);
    *a2 = 1162;
    v230 = *(v229 + 20);
    if (v230 > 0x7F)
    {
      a2[2] = v230 | 0x80;
      v232 = v230 >> 7;
      if (v230 >> 14)
      {
        v231 = a2 + 4;
        do
        {
          *(v231 - 1) = v232 | 0x80;
          v233 = v232 >> 7;
          ++v231;
          v234 = v232 >> 14;
          v232 >>= 7;
        }

        while (v234);
        *(v231 - 1) = v233;
      }

      else
      {
        a2[3] = v232;
        v231 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v230;
      v231 = a2 + 3;
    }

    a2 = sub_2763983D0(v229, v231, this);
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v235 = *(a1 + 360);
    *a2 = 1168;
    a2[2] = v235;
    a2 += 3;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v236 = *(a1 + 296);
    *a2 = 1178;
    v237 = *(v236 + 20);
    if (v237 > 0x7F)
    {
      a2[2] = v237 | 0x80;
      v239 = v237 >> 7;
      if (v237 >> 14)
      {
        v238 = a2 + 4;
        do
        {
          *(v238 - 1) = v239 | 0x80;
          v240 = v239 >> 7;
          ++v238;
          v241 = v239 >> 14;
          v239 >>= 7;
        }

        while (v241);
        *(v238 - 1) = v240;
      }

      else
      {
        a2[3] = v239;
        v238 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v237;
      v238 = a2 + 3;
    }

    a2 = sub_2763989B4(v236, v238, this);
  }

  if ((*(a1 + 24) & 0x40) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v242 = *(a1 + 361);
    *a2 = 1184;
    a2[2] = v242;
    a2 += 3;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v243 = *(a1 + 304);
    *a2 = 1194;
    v244 = *(v243 + 5);
    if (v244 > 0x7F)
    {
      a2[2] = v244 | 0x80;
      v246 = v244 >> 7;
      if (v244 >> 14)
      {
        v245 = a2 + 4;
        do
        {
          *(v245 - 1) = v246 | 0x80;
          v247 = v246 >> 7;
          ++v245;
          v248 = v246 >> 14;
          v246 >>= 7;
        }

        while (v248);
        *(v245 - 1) = v247;
      }

      else
      {
        a2[3] = v246;
        v245 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v244;
      v245 = a2 + 3;
    }

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v243, v245, this);
  }

  if ((*(a1 + 24) & 0x80) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v249 = *(a1 + 362);
    *a2 = 1200;
    a2[2] = v249;
    a2 += 3;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v250 = *(a1 + 312);
    *a2 = 1210;
    v251 = *(v250 + 5);
    if (v251 > 0x7F)
    {
      a2[2] = v251 | 0x80;
      v253 = v251 >> 7;
      if (v251 >> 14)
      {
        v252 = a2 + 4;
        do
        {
          *(v252 - 1) = v253 | 0x80;
          v254 = v253 >> 7;
          ++v252;
          v255 = v253 >> 14;
          v253 >>= 7;
        }

        while (v255);
        *(v252 - 1) = v254;
      }

      else
      {
        a2[3] = v253;
        v252 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v251;
      v252 = a2 + 3;
    }

    a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v250, v252, this);
  }

  if (*(a1 + 25))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v256 = *(a1 + 363);
    *a2 = 1216;
    a2[2] = v256;
    a2 += 3;
  }

  if ((*(a1 + 20) & 0x10) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v257 = *(a1 + 320);
    *a2 = 1226;
    v258 = *(v257 + 5);
    if (v258 > 0x7F)
    {
      a2[2] = v258 | 0x80;
      v260 = v258 >> 7;
      if (v258 >> 14)
      {
        v259 = a2 + 4;
        do
        {
          *(v259 - 1) = v260 | 0x80;
          v261 = v260 >> 7;
          ++v259;
          v262 = v260 >> 14;
          v260 >>= 7;
        }

        while (v262);
        *(v259 - 1) = v261;
      }

      else
      {
        a2[3] = v260;
        v259 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v258;
      v259 = a2 + 3;
    }

    a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v257, v259, this);
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v263 = *(a1 + 364);
    *a2 = 1232;
    a2[2] = v263;
    a2 += 3;
  }

  v264 = *(a1 + 8);
  if ((v264 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v264 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_2763A97F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v20 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 48));
    v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_127;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v21 = sub_276397364(*(a1 + 56));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_128;
  }

LABEL_127:
  v22 = sub_276397364(*(a1 + 64));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_129;
  }

LABEL_128:
  v23 = sub_276397364(*(a1 + 72));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_129:
  v24 = sub_276397364(*(a1 + 80));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = sub_276397364(*(a1 + 88));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v25 = sub_276397364(*(a1 + 96));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_133;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v26 = sub_276397364(*(a1 + 104));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_134;
  }

LABEL_133:
  v27 = sub_276397364(*(a1 + 112));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_135;
  }

LABEL_134:
  v28 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 120));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_136;
  }

LABEL_135:
  v29 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 128));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_137;
  }

LABEL_136:
  v30 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 136));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_137:
  v31 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 144));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 152));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v32 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 160));
    v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_141;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v33 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 168));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_142;
  }

LABEL_141:
  v34 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 176));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_143;
  }

LABEL_142:
  v35 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 184));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_144;
  }

LABEL_143:
  v36 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 192));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_145;
  }

LABEL_144:
  v37 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 200));
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_145:
  v38 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 208));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 216));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v43 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 224));
    v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_154;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v44 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 232));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_155;
  }

LABEL_154:
  v45 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 240));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_156;
  }

LABEL_155:
  v46 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(a1 + 248));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_157;
  }

LABEL_156:
  v47 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 256));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_158:
    v49 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 272));
    v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_159;
  }

LABEL_157:
  v48 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 264));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_158;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_159:
  v50 = sub_2763984C0(*(a1 + 280));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_52;
  }

  if (v9)
  {
    v39 = sub_2763984C0(*(a1 + 288));
    v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_149;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v40 = sub_276398AA4(*(a1 + 296));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

LABEL_150:
    v42 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 312));
    v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_149:
  v41 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 304));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) != 0)
  {
    goto LABEL_150;
  }

LABEL_49:
  if ((v9 & 0x10) != 0)
  {
LABEL_50:
    v10 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 320));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_51:
  v3 += ((v9 >> 5) & 2) + ((v9 >> 4) & 2) + ((v9 >> 6) & 2);
LABEL_52:
  if ((v9 & 0xFF00) != 0)
  {
    v11.i64[0] = 0x200000002;
    v11.i64[1] = 0x200000002;
    v12 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_2764D7180), v11));
    if ((v9 & 0x1000) != 0)
    {
      v12 += 3;
    }

    if ((v9 & 0x2000) != 0)
    {
      v12 += 3;
    }

    if ((v9 & 0x4000) != 0)
    {
      v12 += 3;
    }

    if ((v9 & 0x8000) != 0)
    {
      v3 = v12 + 3;
    }

    else
    {
      v3 = v12;
    }
  }

  if ((v9 & 0xFF0000) != 0)
  {
    v13 = v3 + 3;
    if ((v9 & 0x10000) == 0)
    {
      v13 = v3;
    }

    if ((v9 & 0x20000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x40000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x80000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x100000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x200000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x400000) != 0)
    {
      v13 += 3;
    }

    if ((v9 & 0x800000) != 0)
    {
      v3 = v13 + 3;
    }

    else
    {
      v3 = v13;
    }
  }

  if (HIBYTE(v9))
  {
    v14 = v3 + 3;
    if ((v9 & 0x1000000) == 0)
    {
      v14 = v3;
    }

    if ((v9 & 0x2000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x4000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x8000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x10000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x20000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x40000000) != 0)
    {
      v14 += 3;
    }

    if ((v9 & 0x80000000) == 0)
    {
      v3 = v14;
    }

    else
    {
      v3 = v14 + 3;
    }
  }

  v15 = *(a1 + 24);
  if (v15)
  {
    v16 = v3 + 3;
    if ((v15 & 1) == 0)
    {
      v16 = v3;
    }

    if ((v15 & 2) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 4) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 8) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x10) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x20) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x40) != 0)
    {
      v16 += 3;
    }

    if ((v15 & 0x80) != 0)
    {
      v3 = v16 + 3;
    }

    else
    {
      v3 = v16;
    }
  }

  v17 = v3 + 3;
  if ((v15 & 0x100) == 0)
  {
    v17 = v3;
  }

  if ((v15 & 0x200) != 0)
  {
    v17 += 3;
  }

  if ((v15 & 0x300) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 28) = v18;
    return v18;
  }
}

uint64_t sub_2763AA1EC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288520090, 0);
  if (v4)
  {

    return sub_2763AA294(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763AA294(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_78;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97C60](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v6, v8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  v9 = *(v3 + 40);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C97C20](v10);
    *(v3 + 40) = v9;
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 40);
  }

  else
  {
    v11 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v9, v11);
  if ((v5 & 4) != 0)
  {
LABEL_24:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97C40](v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v12, v14);
  }

LABEL_32:
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 56);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_2763D3EE8(v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = &qword_2812EE780;
    }

    result = sub_276397498(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_34:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_35;
      }

LABEL_54:
      *(v3 + 16) |= 0x20u;
      v21 = *(v3 + 72);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = sub_2763D3EE8(v22);
        *(v3 + 72) = v21;
      }

      if (*(a2 + 72))
      {
        v23 = *(a2 + 72);
      }

      else
      {
        v23 = &qword_2812EE780;
      }

      result = sub_276397498(v21, v23);
      if ((v5 & 0x40) == 0)
      {
LABEL_36:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_70;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_34;
  }

  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 64);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = sub_2763D3EE8(v19);
    *(v3 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v20 = *(a2 + 64);
  }

  else
  {
    v20 = &qword_2812EE780;
  }

  result = sub_276397498(v18, v20);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_35:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_36;
  }

LABEL_62:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 80);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = sub_2763D3EE8(v25);
    *(v3 + 80) = v24;
  }

  if (*(a2 + 80))
  {
    v26 = *(a2 + 80);
  }

  else
  {
    v26 = &qword_2812EE780;
  }

  result = sub_276397498(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 88);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = sub_2763D3EE8(v28);
      *(v3 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = &qword_2812EE780;
    }

    result = sub_276397498(v27, v29);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v30 = *(v3 + 96);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = sub_2763D3EE8(v31);
      *(v3 + 96) = v30;
    }

    if (*(a2 + 96))
    {
      v32 = *(a2 + 96);
    }

    else
    {
      v32 = &qword_2812EE780;
    }

    result = sub_276397498(v30, v32);
    if ((v5 & 0x200) == 0)
    {
LABEL_81:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(v3 + 16) |= 0x200u;
  v33 = *(v3 + 104);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = sub_2763D3EE8(v34);
    *(v3 + 104) = v33;
  }

  if (*(a2 + 104))
  {
    v35 = *(a2 + 104);
  }

  else
  {
    v35 = &qword_2812EE780;
  }

  result = sub_276397498(v33, v35);
  if ((v5 & 0x400) == 0)
  {
LABEL_82:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x400u;
  v36 = *(v3 + 112);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = sub_2763D3EE8(v37);
    *(v3 + 112) = v36;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = &qword_2812EE780;
  }

  result = sub_276397498(v36, v38);
  if ((v5 & 0x800) == 0)
  {
LABEL_83:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x800u;
  v39 = *(v3 + 120);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97C60](v40);
    *(v3 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v41 = *(a2 + 120);
  }

  else
  {
    v41 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v39, v41);
  if ((v5 & 0x1000) == 0)
  {
LABEL_84:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x1000u;
  v42 = *(v3 + 128);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C97C60](v43);
    *(v3 + 128) = v42;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v42, v44);
  if ((v5 & 0x2000) == 0)
  {
LABEL_85:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x2000u;
  v45 = *(v3 + 136);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C97C60](v46);
    *(v3 + 136) = v45;
  }

  if (*(a2 + 136))
  {
    v47 = *(a2 + 136);
  }

  else
  {
    v47 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v45, v47);
  if ((v5 & 0x4000) == 0)
  {
LABEL_86:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(v3 + 16) |= 0x4000u;
  v48 = *(v3 + 144);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C97C60](v49);
    *(v3 + 144) = v48;
  }

  if (*(a2 + 144))
  {
    v50 = *(a2 + 144);
  }

  else
  {
    v50 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v48, v50);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v51 = *(v3 + 152);
    if (!v51)
    {
      v52 = *(v3 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = MEMORY[0x277C97C60](v52);
      *(v3 + 152) = v51;
    }

    if (*(a2 + 152))
    {
      v53 = *(a2 + 152);
    }

    else
    {
      v53 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v51, v53);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v54 = *(v3 + 160);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C97C60](v55);
      *(v3 + 160) = v54;
    }

    if (*(a2 + 160))
    {
      v56 = *(a2 + 160);
    }

    else
    {
      v56 = MEMORY[0x277D80C18];
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v54, v56);
    if ((v5 & 0x20000) == 0)
    {
LABEL_155:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_178;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(v3 + 16) |= 0x20000u;
  v57 = *(v3 + 168);
  if (!v57)
  {
    v58 = *(v3 + 8);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = MEMORY[0x277C97C60](v58);
    *(v3 + 168) = v57;
  }

  if (*(a2 + 168))
  {
    v59 = *(a2 + 168);
  }

  else
  {
    v59 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v57, v59);
  if ((v5 & 0x40000) == 0)
  {
LABEL_156:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_186;
  }

LABEL_178:
  *(v3 + 16) |= 0x40000u;
  v60 = *(v3 + 176);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C97C60](v61);
    *(v3 + 176) = v60;
  }

  if (*(a2 + 176))
  {
    v62 = *(a2 + 176);
  }

  else
  {
    v62 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v60, v62);
  if ((v5 & 0x80000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_194;
  }

LABEL_186:
  *(v3 + 16) |= 0x80000u;
  v63 = *(v3 + 184);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C97C60](v64);
    *(v3 + 184) = v63;
  }

  if (*(a2 + 184))
  {
    v65 = *(a2 + 184);
  }

  else
  {
    v65 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v63, v65);
  if ((v5 & 0x100000) == 0)
  {
LABEL_158:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_202;
  }

LABEL_194:
  *(v3 + 16) |= 0x100000u;
  v66 = *(v3 + 192);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C97C20](v67);
    *(v3 + 192) = v66;
  }

  if (*(a2 + 192))
  {
    v68 = *(a2 + 192);
  }

  else
  {
    v68 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v66, v68);
  if ((v5 & 0x200000) == 0)
  {
LABEL_159:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_210;
  }

LABEL_202:
  *(v3 + 16) |= 0x200000u;
  v69 = *(v3 + 200);
  if (!v69)
  {
    v70 = *(v3 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C97C40](v70);
    *(v3 + 200) = v69;
  }

  if (*(a2 + 200))
  {
    v71 = *(a2 + 200);
  }

  else
  {
    v71 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v69, v71);
  if ((v5 & 0x400000) == 0)
  {
LABEL_160:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_218;
  }

LABEL_210:
  *(v3 + 16) |= 0x400000u;
  v72 = *(v3 + 208);
  if (!v72)
  {
    v73 = *(v3 + 8);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x277C97C60](v73);
    *(v3 + 208) = v72;
  }

  if (*(a2 + 208))
  {
    v74 = *(a2 + 208);
  }

  else
  {
    v74 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v72, v74);
  if ((v5 & 0x800000) != 0)
  {
LABEL_218:
    *(v3 + 16) |= 0x800000u;
    v75 = *(v3 + 216);
    if (!v75)
    {
      v76 = *(v3 + 8);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = MEMORY[0x277C97C20](v76);
      *(v3 + 216) = v75;
    }

    if (*(a2 + 216))
    {
      v77 = *(a2 + 216);
    }

    else
    {
      v77 = MEMORY[0x277D80BF8];
    }

    result = TSSSOS::SpecBoolArchive::MergeFrom(v75, v77);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_300;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v78 = *(v3 + 224);
    if (!v78)
    {
      v79 = *(v3 + 8);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = MEMORY[0x277C97C40](v79);
      *(v3 + 224) = v78;
    }

    if (*(a2 + 224))
    {
      v80 = *(a2 + 224);
    }

    else
    {
      v80 = MEMORY[0x277D80C08];
    }

    result = TSSSOS::SpecDoubleArchive::MergeFrom(v78, v80);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_252;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
  }

  *(v3 + 16) |= 0x2000000u;
  v81 = *(v3 + 232);
  if (!v81)
  {
    v82 = *(v3 + 8);
    if (v82)
    {
      v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
    }

    v81 = MEMORY[0x277C97C60](v82);
    *(v3 + 232) = v81;
  }

  if (*(a2 + 232))
  {
    v83 = *(a2 + 232);
  }

  else
  {
    v83 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v81, v83);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_260;
  }

LABEL_252:
  *(v3 + 16) |= 0x4000000u;
  v84 = *(v3 + 240);
  if (!v84)
  {
    v85 = *(v3 + 8);
    if (v85)
    {
      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    v84 = MEMORY[0x277C97C40](v85);
    *(v3 + 240) = v84;
  }

  if (*(a2 + 240))
  {
    v86 = *(a2 + 240);
  }

  else
  {
    v86 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v84, v86);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_268;
  }

LABEL_260:
  *(v3 + 16) |= 0x8000000u;
  v87 = *(v3 + 248);
  if (!v87)
  {
    v88 = *(v3 + 8);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277C97C40](v88);
    *(v3 + 248) = v87;
  }

  if (*(a2 + 248))
  {
    v89 = *(a2 + 248);
  }

  else
  {
    v89 = MEMORY[0x277D80C08];
  }

  result = TSSSOS::SpecDoubleArchive::MergeFrom(v87, v89);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_276;
  }

LABEL_268:
  *(v3 + 16) |= 0x10000000u;
  v90 = *(v3 + 256);
  if (!v90)
  {
    v91 = *(v3 + 8);
    if (v91)
    {
      v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
    }

    v90 = MEMORY[0x277C97C20](v91);
    *(v3 + 256) = v90;
  }

  if (*(a2 + 256))
  {
    v92 = *(a2 + 256);
  }

  else
  {
    v92 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v90, v92);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_284;
  }

LABEL_276:
  *(v3 + 16) |= 0x20000000u;
  v93 = *(v3 + 264);
  if (!v93)
  {
    v94 = *(v3 + 8);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x277C97C20](v94);
    *(v3 + 264) = v93;
  }

  if (*(a2 + 264))
  {
    v95 = *(a2 + 264);
  }

  else
  {
    v95 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v93, v95);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_234:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_292;
  }

LABEL_284:
  *(v3 + 16) |= 0x40000000u;
  v96 = *(v3 + 272);
  if (!v96)
  {
    v97 = *(v3 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = MEMORY[0x277C97C20](v97);
    *(v3 + 272) = v96;
  }

  if (*(a2 + 272))
  {
    v98 = *(a2 + 272);
  }

  else
  {
    v98 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v96, v98);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_292:
    *(v3 + 16) |= 0x80000000;
    v99 = *(v3 + 280);
    if (!v99)
    {
      v100 = *(v3 + 8);
      if (v100)
      {
        v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
      }

      v99 = sub_2763D414C(v100);
      *(v3 + 280) = v99;
    }

    if (*(a2 + 280))
    {
      v101 = *(a2 + 280);
    }

    else
    {
      v101 = &qword_2812EE7E0;
    }

    result = sub_2763985F4(v99, v101);
  }

LABEL_300:
  v102 = *(a2 + 20);
  if (!v102)
  {
    goto LABEL_311;
  }

  if (v102)
  {
    *(v3 + 20) |= 1u;
    v104 = *(v3 + 288);
    if (!v104)
    {
      v105 = *(v3 + 8);
      if (v105)
      {
        v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
      }

      v104 = sub_2763D414C(v105);
      *(v3 + 288) = v104;
    }

    if (*(a2 + 288))
    {
      v106 = *(a2 + 288);
    }

    else
    {
      v106 = &qword_2812EE7E0;
    }

    result = sub_2763985F4(v104, v106);
    if ((v102 & 2) == 0)
    {
LABEL_303:
      if ((v102 & 4) == 0)
      {
        goto LABEL_304;
      }

      goto LABEL_377;
    }
  }

  else if ((v102 & 2) == 0)
  {
    goto LABEL_303;
  }

  *(v3 + 20) |= 2u;
  v107 = *(v3 + 296);
  if (!v107)
  {
    v108 = *(v3 + 8);
    if (v108)
    {
      v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
    }

    v107 = sub_2763D4218(v108);
    *(v3 + 296) = v107;
  }

  if (*(a2 + 296))
  {
    v109 = *(a2 + 296);
  }

  else
  {
    v109 = &qword_2812EE800;
  }

  result = sub_276398BD8(v107, v109);
  if ((v102 & 4) == 0)
  {
LABEL_304:
    if ((v102 & 8) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_385;
  }

LABEL_377:
  *(v3 + 20) |= 4u;
  v110 = *(v3 + 304);
  if (!v110)
  {
    v111 = *(v3 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = MEMORY[0x277C97C60](v111);
    *(v3 + 304) = v110;
  }

  if (*(a2 + 304))
  {
    v112 = *(a2 + 304);
  }

  else
  {
    v112 = MEMORY[0x277D80C18];
  }

  result = TSSSOS::SpecIntegerArchive::MergeFrom(v110, v112);
  if ((v102 & 8) == 0)
  {
LABEL_305:
    if ((v102 & 0x10) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_393;
  }

LABEL_385:
  *(v3 + 20) |= 8u;
  v113 = *(v3 + 312);
  if (!v113)
  {
    v114 = *(v3 + 8);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x277C97C20](v114);
    *(v3 + 312) = v113;
  }

  if (*(a2 + 312))
  {
    v115 = *(a2 + 312);
  }

  else
  {
    v115 = MEMORY[0x277D80BF8];
  }

  result = TSSSOS::SpecBoolArchive::MergeFrom(v113, v115);
  if ((v102 & 0x10) == 0)
  {
LABEL_306:
    if ((v102 & 0x20) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_401;
  }

LABEL_393:
  *(v3 + 20) |= 0x10u;
  v116 = *(v3 + 320);
  if (!v116)
  {
    v117 = *(v3 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = MEMORY[0x277C97C50](v117);
    *(v3 + 320) = v116;
  }

  if (*(a2 + 320))
  {
    v118 = *(a2 + 320);
  }

  else
  {
    v118 = MEMORY[0x277D80C10];
  }

  result = TSSSOS::SpecStringArchive::MergeFrom(v116, v118);
  if ((v102 & 0x20) == 0)
  {
LABEL_307:
    if ((v102 & 0x40) == 0)
    {
      goto LABEL_308;
    }

LABEL_402:
    *(v3 + 329) = *(a2 + 329);
    if ((v102 & 0x80) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_309;
  }

LABEL_401:
  *(v3 + 328) = *(a2 + 328);
  if ((v102 & 0x40) != 0)
  {
    goto LABEL_402;
  }

LABEL_308:
  if ((v102 & 0x80) != 0)
  {
LABEL_309:
    *(v3 + 330) = *(a2 + 330);
  }

LABEL_310:
  *(v3 + 20) |= v102;
LABEL_311:
  if ((v102 & 0xFF00) == 0)
  {
    goto LABEL_322;
  }

  if ((v102 & 0x100) != 0)
  {
    *(v3 + 331) = *(a2 + 331);
    if ((v102 & 0x200) == 0)
    {
LABEL_314:
      if ((v102 & 0x400) == 0)
      {
        goto LABEL_315;
      }

      goto LABEL_406;
    }
  }

  else if ((v102 & 0x200) == 0)
  {
    goto LABEL_314;
  }

  *(v3 + 332) = *(a2 + 332);
  if ((v102 & 0x400) == 0)
  {
LABEL_315:
    if ((v102 & 0x800) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_407;
  }

LABEL_406:
  *(v3 + 333) = *(a2 + 333);
  if ((v102 & 0x800) == 0)
  {
LABEL_316:
    if ((v102 & 0x1000) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_408;
  }

LABEL_407:
  *(v3 + 334) = *(a2 + 334);
  if ((v102 & 0x1000) == 0)
  {
LABEL_317:
    if ((v102 & 0x2000) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_409;
  }

LABEL_408:
  *(v3 + 335) = *(a2 + 335);
  if ((v102 & 0x2000) == 0)
  {
LABEL_318:
    if ((v102 & 0x4000) == 0)
    {
      goto LABEL_319;
    }

LABEL_410:
    *(v3 + 337) = *(a2 + 337);
    if ((v102 & 0x8000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_320;
  }

LABEL_409:
  *(v3 + 336) = *(a2 + 336);
  if ((v102 & 0x4000) != 0)
  {
    goto LABEL_410;
  }

LABEL_319:
  if ((v102 & 0x8000) != 0)
  {
LABEL_320:
    *(v3 + 338) = *(a2 + 338);
  }

LABEL_321:
  *(v3 + 20) |= v102;
LABEL_322:
  if ((v102 & 0xFF0000) == 0)
  {
    goto LABEL_333;
  }

  if ((v102 & 0x10000) != 0)
  {
    *(v3 + 339) = *(a2 + 339);
    if ((v102 & 0x20000) == 0)
    {
LABEL_325:
      if ((v102 & 0x40000) == 0)
      {
        goto LABEL_326;
      }

      goto LABEL_414;
    }
  }

  else if ((v102 & 0x20000) == 0)
  {
    goto LABEL_325;
  }

  *(v3 + 340) = *(a2 + 340);
  if ((v102 & 0x40000) == 0)
  {
LABEL_326:
    if ((v102 & 0x80000) == 0)
    {
      goto LABEL_327;
    }

    goto LABEL_415;
  }

LABEL_414:
  *(v3 + 341) = *(a2 + 341);
  if ((v102 & 0x80000) == 0)
  {
LABEL_327:
    if ((v102 & 0x100000) == 0)
    {
      goto LABEL_328;
    }

    goto LABEL_416;
  }

LABEL_415:
  *(v3 + 342) = *(a2 + 342);
  if ((v102 & 0x100000) == 0)
  {
LABEL_328:
    if ((v102 & 0x200000) == 0)
    {
      goto LABEL_329;
    }

    goto LABEL_417;
  }

LABEL_416:
  *(v3 + 343) = *(a2 + 343);
  if ((v102 & 0x200000) == 0)
  {
LABEL_329:
    if ((v102 & 0x400000) == 0)
    {
      goto LABEL_330;
    }

LABEL_418:
    *(v3 + 345) = *(a2 + 345);
    if ((v102 & 0x800000) == 0)
    {
      goto LABEL_332;
    }

    goto LABEL_331;
  }

LABEL_417:
  *(v3 + 344) = *(a2 + 344);
  if ((v102 & 0x400000) != 0)
  {
    goto LABEL_418;
  }

LABEL_330:
  if ((v102 & 0x800000) != 0)
  {
LABEL_331:
    *(v3 + 346) = *(a2 + 346);
  }

LABEL_332:
  *(v3 + 20) |= v102;
LABEL_333:
  if (!HIBYTE(v102))
  {
    goto LABEL_343;
  }

  if ((v102 & 0x1000000) != 0)
  {
    *(v3 + 347) = *(a2 + 347);
    if ((v102 & 0x2000000) == 0)
    {
LABEL_336:
      if ((v102 & 0x4000000) == 0)
      {
        goto LABEL_337;
      }

      goto LABEL_430;
    }
  }

  else if ((v102 & 0x2000000) == 0)
  {
    goto LABEL_336;
  }

  *(v3 + 348) = *(a2 + 348);
  if ((v102 & 0x4000000) == 0)
  {
LABEL_337:
    if ((v102 & 0x8000000) == 0)
    {
      goto LABEL_338;
    }

    goto LABEL_431;
  }

LABEL_430:
  *(v3 + 349) = *(a2 + 349);
  if ((v102 & 0x8000000) == 0)
  {
LABEL_338:
    if ((v102 & 0x10000000) == 0)
    {
      goto LABEL_339;
    }

    goto LABEL_432;
  }

LABEL_431:
  *(v3 + 350) = *(a2 + 350);
  if ((v102 & 0x10000000) == 0)
  {
LABEL_339:
    if ((v102 & 0x20000000) == 0)
    {
      goto LABEL_340;
    }

    goto LABEL_433;
  }

LABEL_432:
  *(v3 + 351) = *(a2 + 351);
  if ((v102 & 0x20000000) == 0)
  {
LABEL_340:
    if ((v102 & 0x40000000) == 0)
    {
      goto LABEL_341;
    }

LABEL_434:
    *(v3 + 353) = *(a2 + 353);
    if ((v102 & 0x80000000) == 0)
    {
      goto LABEL_342;
    }

LABEL_435:
    *(v3 + 354) = *(a2 + 354);
    goto LABEL_342;
  }

LABEL_433:
  *(v3 + 352) = *(a2 + 352);
  if ((v102 & 0x40000000) != 0)
  {
    goto LABEL_434;
  }

LABEL_341:
  if ((v102 & 0x80000000) != 0)
  {
    goto LABEL_435;
  }

LABEL_342:
  *(v3 + 20) |= v102;
LABEL_343:
  v103 = *(a2 + 24);
  if (!v103)
  {
    goto LABEL_354;
  }

  if (v103)
  {
    *(v3 + 355) = *(a2 + 355);
    if ((v103 & 2) == 0)
    {
LABEL_346:
      if ((v103 & 4) == 0)
      {
        goto LABEL_347;
      }

      goto LABEL_422;
    }
  }

  else if ((v103 & 2) == 0)
  {
    goto LABEL_346;
  }

  *(v3 + 356) = *(a2 + 356);
  if ((v103 & 4) == 0)
  {
LABEL_347:
    if ((v103 & 8) == 0)
    {
      goto LABEL_348;
    }

    goto LABEL_423;
  }

LABEL_422:
  *(v3 + 357) = *(a2 + 357);
  if ((v103 & 8) == 0)
  {
LABEL_348:
    if ((v103 & 0x10) == 0)
    {
      goto LABEL_349;
    }

    goto LABEL_424;
  }

LABEL_423:
  *(v3 + 358) = *(a2 + 358);
  if ((v103 & 0x10) == 0)
  {
LABEL_349:
    if ((v103 & 0x20) == 0)
    {
      goto LABEL_350;
    }

    goto LABEL_425;
  }

LABEL_424:
  *(v3 + 359) = *(a2 + 359);
  if ((v103 & 0x20) == 0)
  {
LABEL_350:
    if ((v103 & 0x40) == 0)
    {
      goto LABEL_351;
    }

LABEL_426:
    *(v3 + 361) = *(a2 + 361);
    if ((v103 & 0x80) == 0)
    {
      goto LABEL_353;
    }

    goto LABEL_352;
  }

LABEL_425:
  *(v3 + 360) = *(a2 + 360);
  if ((v103 & 0x40) != 0)
  {
    goto LABEL_426;
  }

LABEL_351:
  if ((v103 & 0x80) != 0)
  {
LABEL_352:
    *(v3 + 362) = *(a2 + 362);
  }

LABEL_353:
  *(v3 + 24) |= v103;
LABEL_354:
  if ((v103 & 0x300) != 0)
  {
    if ((v103 & 0x100) != 0)
    {
      *(v3 + 363) = *(a2 + 363);
    }

    if ((v103 & 0x200) != 0)
    {
      *(v3 + 364) = *(a2 + 364);
    }

    *(v3 + 24) |= v103;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2763AB134(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763A5914(result);

    return sub_2763AA1EC(v4, a2);
  }

  return result;
}

uint64_t sub_2763AB180(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_27639758C(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_27639758C(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = sub_27639758C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = sub_27639758C(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_27639758C(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = sub_27639758C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = sub_27639758C(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = sub_27639758C(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = sub_2763986E8(*(a1 + 280)), result))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      result = sub_2763986E8(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 2) != 0)
    {
      result = sub_276398CCC(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 4) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 8) != 0)
    {
      result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10) == 0)
    {
      return 1;
    }

    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 320));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_2763AB4C0(uint64_t *a1)
{
  sub_2763AB4F4(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763AB4F4(uint64_t *result)
{
  if (result != &qword_2812EECA8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = sub_276397BCC(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    if (v1[4])
    {
      v4 = MEMORY[0x277C979D0]();
      MEMORY[0x277C98580](v4, 0x10A1C40D4912B22);
    }

    if (v1[5])
    {
      v5 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v5, 0x10A1C40D4912B22);
    }

    if (v1[6])
    {
      v6 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v6, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v7 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v7, 0x10A1C40D4912B22);
    }

    result = v1[8];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763AB5C8(uint64_t *a1)
{
  sub_2763AB4C0(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763AB608(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result = sub_276397C70(*(result + 3));
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

  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 64));
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 72) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 74) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_2763AB6D8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v56, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if ((*v56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
      v56 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_115;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 6)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 == 10)
          {
            if (v8 != 80)
            {
              goto LABEL_92;
            }

            v5 |= 0x400u;
            v32 = (v7 + 1);
            v31 = *v7;
            if ((v31 & 0x8000000000000000) == 0)
            {
              goto LABEL_68;
            }

            v33 = *v32;
            v31 = (v33 << 7) + v31 - 128;
            if ((v33 & 0x80000000) == 0)
            {
              v32 = (v7 + 2);
LABEL_68:
              v56 = v32;
              *(a1 + 76) = v31 != 0;
              goto LABEL_100;
            }

            v50 = google::protobuf::internal::VarintParseSlow64(v7, v31);
            v56 = v50;
            *(a1 + 76) = v51 != 0;
            if (!v50)
            {
              goto LABEL_115;
            }
          }

          else
          {
            if (v10 == 11)
            {
              if (v8 == 90)
              {
                *(a1 + 16) |= 0x20u;
                v41 = *(a1 + 64);
                if (!v41)
                {
                  v42 = *(a1 + 8);
                  if (v42)
                  {
                    v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v41 = MEMORY[0x277C97C60](v42);
                  *(a1 + 64) = v41;
                  v7 = v56;
                }

                v14 = sub_2764A9458(a3, v41, v7);
                goto LABEL_99;
              }

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
                sub_2763D4E10((a1 + 8));
              }

              v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_99:
              v56 = v14;
              if (!v14)
              {
                goto LABEL_115;
              }

              goto LABEL_100;
            }

            if (v10 != 12 || v8 != 96)
            {
              goto LABEL_92;
            }

            v5 |= 0x800u;
            v21 = (v7 + 1);
            v20 = *v7;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_45;
            }

            v22 = *v21;
            v20 = (v22 << 7) + v20 - 128;
            if ((v22 & 0x80000000) == 0)
            {
              v21 = (v7 + 2);
LABEL_45:
              v56 = v21;
              *(a1 + 77) = v20 != 0;
              goto LABEL_100;
            }

            v46 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v56 = v46;
            *(a1 + 77) = v47 != 0;
            if (!v46)
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_92;
            }

            *(a1 + 16) |= 8u;
            v15 = *(a1 + 48);
            if (v15)
            {
              goto LABEL_85;
            }

            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C97C20](v27);
            *(a1 + 48) = v15;
            goto LABEL_84;
          }

          if (v10 != 8)
          {
            if (v10 != 9 || v8 != 74)
            {
              goto LABEL_92;
            }

            *(a1 + 16) |= 0x10u;
            v15 = *(a1 + 56);
            if (v15)
            {
              goto LABEL_85;
            }

            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C97C20](v16);
            *(a1 + 56) = v15;
LABEL_84:
            v7 = v56;
            goto LABEL_85;
          }

          if (v8 != 64)
          {
            goto LABEL_92;
          }

          v5 |= 0x200u;
          v38 = (v7 + 1);
          v37 = *v7;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_78;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if ((v39 & 0x80000000) == 0)
          {
            v38 = (v7 + 2);
LABEL_78:
            v56 = v38;
            *(a1 + 75) = v37 != 0;
            goto LABEL_100;
          }

          v54 = google::protobuf::internal::VarintParseSlow64(v7, v37);
          v56 = v54;
          *(a1 + 75) = v55 != 0;
          if (!v54)
          {
LABEL_115:
            v56 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_92;
          }

          v5 |= 0x80u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_63:
            v56 = v29;
            *(a1 + 73) = v28 != 0;
            goto LABEL_100;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v56 = v48;
          *(a1 + 73) = v49 != 0;
          if (!v48)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_92;
            }

            *(a1 + 16) |= 4u;
            v15 = *(a1 + 40);
            if (!v15)
            {
              v40 = *(a1 + 8);
              if (v40)
              {
                v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277C97C20](v40);
              *(a1 + 40) = v15;
              goto LABEL_84;
            }

LABEL_85:
            v14 = sub_2764A95F8(a3, v15, v7);
            goto LABEL_99;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_92;
          }

          v5 |= 0x100u;
          v18 = (v7 + 1);
          v17 = *v7;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_37:
            v56 = v18;
            *(a1 + 74) = v17 != 0;
            goto LABEL_100;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v7, v17);
          v56 = v44;
          *(a1 + 74) = v45 != 0;
          if (!v44)
          {
            goto LABEL_115;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 24);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = sub_2763D4080(v26);
              *(a1 + 24) = v25;
              v7 = v56;
            }

            v14 = sub_2764A9798(a3, v25, v7);
            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v10 != 2)
        {
          if (v10 == 3 && v8 == 26)
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

              v12 = MEMORY[0x277C97C50](v13);
              *(a1 + 32) = v12;
              v7 = v56;
            }

            v14 = sub_2764A96C8(a3, v12, v7);
            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v8 != 16)
        {
          goto LABEL_92;
        }

        v5 |= 0x40u;
        v35 = (v7 + 1);
        v34 = *v7;
        if ((v34 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

        v36 = *v35;
        v34 = (v36 << 7) + v34 - 128;
        if ((v36 & 0x80000000) == 0)
        {
          v35 = (v7 + 2);
LABEL_73:
          v56 = v35;
          *(a1 + 72) = v34 != 0;
          goto LABEL_100;
        }

        v52 = google::protobuf::internal::VarintParseSlow64(v7, v34);
        v56 = v52;
        *(a1 + 72) = v53 != 0;
        if (!v52)
        {
          goto LABEL_115;
        }
      }

LABEL_100:
      if (sub_2763D4D98(a3, &v56, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v56 + 2);
LABEL_6:
    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *sub_2763ABCC0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = sub_276397E14(v6, v8, this);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 72);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 26;
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

  a2 = TSSSOS::SpecStringArchive::_InternalSerialize(v13, v15, this);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v19 = *(a1 + 73);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v20 = *(a1 + 40);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v20, v22, this);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v26 = *(a1 + 74);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_53:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v27 = *(a1 + 48);
  *a2 = 58;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v27, v29, this);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v33 = *(a1 + 75);
  *a2 = 64;
  a2[1] = v33;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v34 = *(a1 + 56);
  *a2 = 74;
  v35 = *(v34 + 5);
  if (v35 > 0x7F)
  {
    a2[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = a2 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v36;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v36 - 1) = v38;
    }

    else
    {
      a2[2] = v37;
      v36 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v35;
    v36 = a2 + 2;
  }

  a2 = TSSSOS::SpecBoolArchive::_InternalSerialize(v34, v36, this);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

LABEL_76:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v40 = *(a1 + 76);
  *a2 = 80;
  a2[1] = v40;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_89;
  }

LABEL_79:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v41 = *(a1 + 64);
  *a2 = 90;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = a2 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      a2[2] = v44;
      v43 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v42;
    v43 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v41, v43, this);
  if ((v5 & 0x800) != 0)
  {
LABEL_89:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v47 = *(a1 + 77);
    *a2 = 96;
    a2[1] = v47;
    a2 += 2;
  }

LABEL_92:
  v48 = *(a1 + 8);
  if ((v48 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v48 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_2763AC208(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v5 = sub_276397F04(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSSSOS::SpecStringArchive::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v10 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

LABEL_20:
      v12 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 56));
      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v11 = TSSSOS::SpecBoolArchive::ByteSizeLong(*(a1 + 48));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 64));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v4 = v3 + ((v2 >> 6) & 2) + ((v2 >> 5) & 2);
LABEL_14:
  if ((v2 & 0xF00) != 0)
  {
    v8.i64[0] = 0x200000002;
    v8.i64[1] = 0x200000002;
    v4 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2764D7180), v8));
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

void sub_2763AC3F8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885200A8, 0);
  if (v4)
  {

    sub_2763AC4A0(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_2763AC4A0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(result + 16) |= 1u;
      v6 = *(result + 24);
      if (!v6)
      {
        v7 = *(result + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_2763D4080(v7);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812EE7C0;
      }

      sub_276398038(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(result + 16) |= 2u;
      v9 = *(result + 32);
      if (!v9)
      {
        v10 = *(result + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C97C50](v10);
        *(result + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D80C10];
      }

      TSSSOS::SpecStringArchive::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D80BF8];
    if ((v5 & 4) != 0)
    {
      *(result + 16) |= 4u;
      v13 = *(result + 40);
      if (!v13)
      {
        v14 = *(result + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C97C20](v14);
        *(result + 40) = v13;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = v12;
      }

      TSSSOS::SpecBoolArchive::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_54;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(result + 16) |= 8u;
    v16 = *(result + 48);
    if (!v16)
    {
      v17 = *(result + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97C20](v17);
      *(result + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = v12;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_62;
    }

LABEL_54:
    *(result + 16) |= 0x10u;
    v19 = *(result + 56);
    if (!v19)
    {
      v20 = *(result + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C97C20](v20);
      *(result + 56) = v19;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = v12;
    }

    TSSSOS::SpecBoolArchive::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_26:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_70;
    }

LABEL_62:
    *(result + 16) |= 0x20u;
    v22 = *(result + 64);
    if (!v22)
    {
      v23 = *(result + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277C97C60](v23);
      *(result + 64) = v22;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = MEMORY[0x277D80C18];
    }

    TSSSOS::SpecIntegerArchive::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
LABEL_29:
        *(result + 16) |= v5;
        goto LABEL_30;
      }

LABEL_28:
      *(result + 73) = *(a2 + 73);
      goto LABEL_29;
    }

LABEL_70:
    *(result + 72) = *(a2 + 72);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_30:
  if ((v5 & 0xF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    *(result + 74) = *(a2 + 74);
    if ((v5 & 0x200) == 0)
    {
LABEL_33:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_34;
      }

LABEL_74:
      *(result + 76) = *(a2 + 76);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_33;
  }

  *(result + 75) = *(a2 + 75);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_74;
  }

LABEL_34:
  if ((v5 & 0x800) != 0)
  {
LABEL_35:
    *(result + 77) = *(a2 + 77);
  }

LABEL_36:
  *(result + 16) |= v5;
}

void sub_2763AC738(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    sub_2763AB608(result);

    sub_2763AC3F8(result, a2);
  }
}

uint64_t sub_2763AC784(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if ((*(v3 + 16) & 1) != 0 && (*(*(v3 + 24) + 16) & 2) == 0)
    {
      return 0;
    }
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecStringArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSSSOS::SpecBoolArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2763AC868(uint64_t *a1)
{
  sub_2763AC89C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763AC89C(uint64_t *result)
{
  if (result != &qword_2812EECF8)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v2, 0x10A1C40D4912B22);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C97850]();
      MEMORY[0x277C98580](v3, 0x10A1C4034CD354FLL);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C97890]();
      MEMORY[0x277C98580](v4, 0x10A1C4030AC051BLL);
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763AC960(uint64_t *a1)
{
  sub_2763AC868(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763AC9A0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = TSDSOS::SpecShadowArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(result + 3));
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_2763ACA3C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v43, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v43 + 1);
      v8 = *v43;
      if ((*v43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v9 - 128));
      v43 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_86;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v26 = *(a1 + 48);
              if (!v26)
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = MEMORY[0x277C97C60](v33);
                *(a1 + 48) = v26;
LABEL_65:
                v7 = v43;
              }

LABEL_66:
              v30 = sub_2764A9458(a3, v26, v7);
LABEL_74:
              v43 = v30;
              if (!v30)
              {
                goto LABEL_86;
              }

              goto LABEL_75;
            }

LABEL_67:
            if (v8)
            {
              v34 = (v8 & 7) == 4;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v30 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_74;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_67;
          }

          v5 |= 0x80u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_40:
            v43 = v22;
            *(a1 + 59) = v21 != 0;
            goto LABEL_75;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v43 = v41;
          *(a1 + 59) = v42 != 0;
          if (!v41)
          {
LABEL_86:
            v43 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v28 = *(a1 + 40);
              if (!v28)
              {
                v29 = *(a1 + 8);
                if (v29)
                {
                  v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
                }

                v28 = MEMORY[0x277C97C00](v29);
                *(a1 + 40) = v28;
                v7 = v43;
              }

              v30 = sub_2764A9868(a3, v28, v7);
              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_67;
          }

          v5 |= 0x40u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v43 = v16;
            *(a1 + 58) = v15 != 0;
            goto LABEL_75;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v43 = v37;
          *(a1 + 58) = v38 != 0;
          if (!v37)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v31 = *(a1 + 32);
            if (!v31)
            {
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = MEMORY[0x277C97BF0](v32);
              *(a1 + 32) = v31;
              v7 = v43;
            }

            v30 = sub_2764A9938(a3, v31, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_67;
        }

        v5 |= 0x20u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_33:
          v43 = v19;
          *(a1 + 57) = v18 != 0;
          goto LABEL_75;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v43 = v39;
        *(a1 + 57) = v40 != 0;
        if (!v39)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C97C60](v27);
              *(a1 + 24) = v26;
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_67;
        }

        v5 |= 0x10u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v43 = v13;
          *(a1 + 56) = v12 != 0;
          goto LABEL_75;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v43 = v35;
        *(a1 + 56) = v36 != 0;
        if (!v35)
        {
          goto LABEL_86;
        }
      }

LABEL_75:
      if (sub_2763D4D98(a3, &v43, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v43 + 2);
LABEL_6:
    v43 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}

unsigned __int8 *sub_2763ACE98(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 56);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_23:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 26;
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

  a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v13, v15, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 57);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 40);
  *a2 = 42;
  v21 = *(v20 + 5);
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = a2 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      a2[2] = v23;
      v22 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v21;
    v22 = a2 + 2;
  }

  a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v20, v22, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(a1 + 58);
  *a2 = 48;
  a2[1] = v26;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(a1 + 48);
  *a2 = 58;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = TSSSOS::SpecIntegerArchive::_InternalSerialize(v27, v29, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_59:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(a1 + 59);
    *a2 = 64;
    a2[1] = v33;
    a2 += 2;
  }

LABEL_62:
  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2763AD240(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v5 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v10 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v2 & 8) != 0)
  {
LABEL_10:
    v7 = TSSSOS::SpecIntegerArchive::ByteSizeLong(*(a1 + 48));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v4 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_2764D7190), v8));
LABEL_12:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_2763AD3A8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885200C0, 0);
  if (v4)
  {

    return sub_2763AD450(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2763AD450(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = MEMORY[0x277D80C18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C97C60](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSSSOS::SpecIntegerArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97BF0](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = MEMORY[0x277D80538];
    }

    result = TSDSOS::SpecShadowArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97C00](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = MEMORY[0x277D80540];
    }

    result = TSDSOS::SpecStrokeArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97C60](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = v6;
    }

    result = TSSSOS::SpecIntegerArchive::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(v3 + 57) = *(a2 + 57);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_12:
      *(v3 + 59) = *(a2 + 59);
      goto LABEL_13;
    }

LABEL_49:
    *(v3 + 58) = *(a2 + 58);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2763AD624(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2763AC9A0(result);

    return sub_2763AD3A8(v4, a2);
  }

  return result;
}

uint64_t sub_2763AD670(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSSSOS::SpecIntegerArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2763AD71C(uint64_t *a1)
{
  sub_2763AD750(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_2763AD750(uint64_t *result)
{
  if (result != &qword_2812EED38)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      v3 = sub_276398188(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    v4 = v1[7];
    if (v4)
    {
      v5 = sub_27639876C(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40D4912B22);
    }

    v6 = v1[8];
    if (v6)
    {
      v7 = sub_27639876C(v6);
      MEMORY[0x277C98580](v7, 0x10A1C40D4912B22);
    }

    if (v1[9])
    {
      v8 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    if (v1[10])
    {
      v9 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v9, 0x10A1C40D4912B22);
    }

    v10 = v1[11];
    if (v10)
    {
      v11 = sub_276398188(v10);
      MEMORY[0x277C98580](v11, 0x10A1C40D4912B22);
    }

    v12 = v1[12];
    if (v12)
    {
      v13 = sub_276398188(v12);
      MEMORY[0x277C98580](v13, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v14 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v14, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v15 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v15, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v16 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v16, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v17 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v17, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v18 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v18, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v19 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v19, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v20 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v20, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v21 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v21, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v22 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v22, 0x10A1C40D4912B22);
    }

    v23 = v1[22];
    if (v23)
    {
      v24 = sub_276397610(v23);
      MEMORY[0x277C98580](v24, 0x10A1C40D4912B22);
    }

    v25 = v1[23];
    if (v25)
    {
      v26 = sub_276397610(v25);
      MEMORY[0x277C98580](v26, 0x10A1C40D4912B22);
    }

    v27 = v1[24];
    if (v27)
    {
      v28 = sub_276397610(v27);
      MEMORY[0x277C98580](v28, 0x10A1C40D4912B22);
    }

    v29 = v1[25];
    if (v29)
    {
      v30 = sub_276397610(v29);
      MEMORY[0x277C98580](v30, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v31 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v31, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v32 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v32, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v33 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v33, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v34 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v34, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v35 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v35, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v36 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v36, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v37 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v37, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v38 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v38, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v39 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v39, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v40 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v40, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v41 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v41, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v42 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v42, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v43 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v43, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v44 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v44, 0x10A1C40D4912B22);
    }

    if (v1[40])
    {
      v45 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v45, 0x10A1C40D4912B22);
    }

    if (v1[41])
    {
      v46 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v46, 0x10A1C40D4912B22);
    }

    v47 = v1[42];
    if (v47)
    {
      v48 = sub_27639876C(v47);
      MEMORY[0x277C98580](v48, 0x10A1C40D4912B22);
    }

    v49 = v1[43];
    if (v49)
    {
      v50 = sub_27639876C(v49);
      MEMORY[0x277C98580](v50, 0x10A1C40D4912B22);
    }

    if (v1[44])
    {
      v51 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v51, 0x10A1C40D4912B22);
    }

    if (v1[45])
    {
      v52 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v52, 0x10A1C40D4912B22);
    }

    v53 = v1[46];
    if (v53)
    {
      v54 = sub_27639876C(v53);
      MEMORY[0x277C98580](v54, 0x10A1C40D4912B22);
    }

    if (v1[47])
    {
      v55 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v55, 0x10A1C40D4912B22);
    }

    if (v1[48])
    {
      v56 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v56, 0x10A1C40D4912B22);
    }

    if (v1[49])
    {
      v57 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v57, 0x10A1C40D4912B22);
    }

    if (v1[50])
    {
      v58 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v58, 0x10A1C40D4912B22);
    }

    if (v1[51])
    {
      v59 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v59, 0x10A1C40D4912B22);
    }

    if (v1[52])
    {
      v60 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v60, 0x10A1C40D4912B22);
    }

    if (v1[53])
    {
      v61 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v61, 0x10A1C40D4912B22);
    }

    if (v1[54])
    {
      v62 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v62, 0x10A1C40D4912B22);
    }

    if (v1[55])
    {
      v63 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v63, 0x10A1C40D4912B22);
    }

    if (v1[56])
    {
      v64 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v64, 0x10A1C40D4912B22);
    }

    if (v1[57])
    {
      v65 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v65, 0x10A1C40D4912B22);
    }

    if (v1[58])
    {
      v66 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v66, 0x10A1C40D4912B22);
    }

    if (v1[59])
    {
      v67 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v67, 0x10A1C40D4912B22);
    }

    if (v1[60])
    {
      v68 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v68, 0x10A1C40D4912B22);
    }

    if (v1[61])
    {
      v69 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v69, 0x10A1C40D4912B22);
    }

    if (v1[62])
    {
      v70 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v70, 0x10A1C40D4912B22);
    }

    if (v1[63])
    {
      v71 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v71, 0x10A1C40D4912B22);
    }

    if (v1[64])
    {
      v72 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v72, 0x10A1C40D4912B22);
    }

    if (v1[65])
    {
      v73 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v73, 0x10A1C40D4912B22);
    }

    if (v1[66])
    {
      v74 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v74, 0x10A1C40D4912B22);
    }

    if (v1[67])
    {
      v75 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v75, 0x10A1C40D4912B22);
    }

    if (v1[68])
    {
      v76 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v76, 0x10A1C40D4912B22);
    }

    if (v1[69])
    {
      v77 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v77, 0x10A1C40D4912B22);
    }

    if (v1[70])
    {
      v78 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v78, 0x10A1C40D4912B22);
    }

    if (v1[71])
    {
      v79 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v79, 0x10A1C40D4912B22);
    }

    if (v1[72])
    {
      v80 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v80, 0x10A1C40D4912B22);
    }

    if (v1[73])
    {
      v81 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v81, 0x10A1C40D4912B22);
    }

    if (v1[74])
    {
      v82 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v82, 0x10A1C40D4912B22);
    }

    if (v1[75])
    {
      v83 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v83, 0x10A1C40D4912B22);
    }

    if (v1[76])
    {
      v84 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v84, 0x10A1C40D4912B22);
    }

    if (v1[77])
    {
      v85 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v85, 0x10A1C40D4912B22);
    }

    if (v1[78])
    {
      v86 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v86, 0x10A1C40D4912B22);
    }

    if (v1[79])
    {
      v87 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v87, 0x10A1C40D4912B22);
    }

    if (v1[80])
    {
      v88 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v88, 0x10A1C40D4912B22);
    }

    if (v1[81])
    {
      v89 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v89, 0x10A1C40D4912B22);
    }

    if (v1[82])
    {
      v90 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v90, 0x10A1C40D4912B22);
    }

    if (v1[83])
    {
      v91 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v91, 0x10A1C40D4912B22);
    }

    if (v1[84])
    {
      v92 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v92, 0x10A1C40D4912B22);
    }

    if (v1[85])
    {
      v93 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v93, 0x10A1C40D4912B22);
    }

    if (v1[86])
    {
      v94 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v94, 0x10A1C40D4912B22);
    }

    if (v1[87])
    {
      v95 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v95, 0x10A1C40D4912B22);
    }

    if (v1[88])
    {
      v96 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v96, 0x10A1C40D4912B22);
    }

    if (v1[89])
    {
      v97 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v97, 0x10A1C40D4912B22);
    }

    if (v1[90])
    {
      v98 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v98, 0x10A1C40D4912B22);
    }

    if (v1[91])
    {
      v99 = MEMORY[0x277C979D0]();
      MEMORY[0x277C98580](v99, 0x10A1C40D4912B22);
    }

    if (v1[92])
    {
      v100 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v100, 0x10A1C40D4912B22);
    }

    if (v1[93])
    {
      v101 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v101, 0x10A1C40D4912B22);
    }

    if (v1[94])
    {
      v102 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v102, 0x10A1C40D4912B22);
    }

    if (v1[95])
    {
      v103 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v103, 0x10A1C40D4912B22);
    }

    if (v1[96])
    {
      v104 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v104, 0x10A1C40D4912B22);
    }

    if (v1[97])
    {
      v105 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v105, 0x10A1C40D4912B22);
    }

    if (v1[98])
    {
      v106 = MEMORY[0x277C97910]();
      MEMORY[0x277C98580](v106, 0x10A1C40D4912B22);
    }

    if (v1[99])
    {
      v107 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v107, 0x10A1C40D4912B22);
    }

    if (v1[100])
    {
      v108 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v108, 0x10A1C40D4912B22);
    }

    if (v1[101])
    {
      v109 = MEMORY[0x277C97A10]();
      MEMORY[0x277C98580](v109, 0x10A1C40D4912B22);
    }

    if (v1[102])
    {
      v110 = MEMORY[0x277C97990]();
      MEMORY[0x277C98580](v110, 0x10A1C40D4912B22);
    }

    result = v1[103];
    if (result)
    {
      MEMORY[0x277C97A10]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2763ADF54(uint64_t *a1)
{
  sub_2763AD71C(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::UnknownFieldSet *sub_2763ADF94(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = result + 16;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = sub_27639822C(*(result + 6));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_155;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_276398810(*(v1 + 56));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_156;
  }

LABEL_155:
  result = sub_276398810(*(v1 + 64));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_157;
  }

LABEL_156:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 72));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_158:
    result = sub_27639822C(*(v1 + 88));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_159;
  }

LABEL_157:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 80));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_158;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_159:
  result = sub_27639822C(*(v1 + 96));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 104));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 112));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_163;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 120));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_164;
  }

LABEL_163:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 128));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_165;
  }

LABEL_164:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 136));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_166;
  }

LABEL_165:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 144));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_167;
  }

LABEL_166:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 152));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_167:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 160));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 168));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = sub_2763976B4(*(v1 + 176));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_171;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = sub_2763976B4(*(v1 + 184));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_172;
  }

LABEL_171:
  result = sub_2763976B4(*(v1 + 192));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_173;
  }

LABEL_172:
  result = sub_2763976B4(*(v1 + 200));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_174;
  }

LABEL_173:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 208));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_175;
  }

LABEL_174:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 216));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_175:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 224));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 232));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 240));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_227;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 248));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_228;
  }

LABEL_227:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 256));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_229;
  }

LABEL_228:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 264));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_230;
  }

LABEL_229:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 272));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_231:
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 288));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_232;
  }

LABEL_230:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 280));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_231;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_232:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 296));
LABEL_40:
  v4 = *(v1 + 20);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 304));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_179;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 312));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_180;
  }

LABEL_179:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 320));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_181;
  }

LABEL_180:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 328));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_182;
  }

LABEL_181:
  result = sub_276398810(*(v1 + 336));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_183;
  }

LABEL_182:
  result = sub_276398810(*(v1 + 344));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_183:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 352));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 360));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = sub_276398810(*(v1 + 368));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_187;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 376));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_188;
  }

LABEL_187:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 384));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_189;
  }

LABEL_188:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 392));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_190;
  }

LABEL_189:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 400));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_191;
  }

LABEL_190:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 408));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_191:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 416));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 424));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 432));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_195;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 440));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_196;
  }

LABEL_195:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 448));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_197;
  }

LABEL_196:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 456));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_198;
  }

LABEL_197:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 464));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_199;
  }

LABEL_198:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 472));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_199:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 480));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 488));
  }

LABEL_70:
  if (!HIBYTE(v4))
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 496));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_235;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 504));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_236;
  }

LABEL_235:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 512));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_237;
  }

LABEL_236:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 520));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_238;
  }

LABEL_237:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 528));
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_239:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 544));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_240;
  }

LABEL_238:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 536));
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_239;
  }

LABEL_78:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_240:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 552));
LABEL_79:
  v5 = *(v1 + 24);
  if (!v5)
  {
    goto LABEL_89;
  }

  if (v5)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 560));
    if ((v5 & 2) == 0)
    {
LABEL_82:
      if ((v5 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_203;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_82;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 568));
  if ((v5 & 4) == 0)
  {
LABEL_83:
    if ((v5 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_204;
  }

LABEL_203:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 576));
  if ((v5 & 8) == 0)
  {
LABEL_84:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_205;
  }

LABEL_204:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 584));
  if ((v5 & 0x10) == 0)
  {
LABEL_85:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_206;
  }

LABEL_205:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 592));
  if ((v5 & 0x20) == 0)
  {
LABEL_86:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_207;
  }

LABEL_206:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 600));
  if ((v5 & 0x40) == 0)
  {
LABEL_87:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_207:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 608));
  if ((v5 & 0x80) != 0)
  {
LABEL_88:
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 616));
  }

LABEL_89:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 624));
    if ((v5 & 0x200) == 0)
    {
LABEL_92:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_211;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 632));
  if ((v5 & 0x400) == 0)
  {
LABEL_93:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_212;
  }

LABEL_211:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 640));
  if ((v5 & 0x800) == 0)
  {
LABEL_94:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_213;
  }

LABEL_212:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 648));
  if ((v5 & 0x1000) == 0)
  {
LABEL_95:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_214;
  }

LABEL_213:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 656));
  if ((v5 & 0x2000) == 0)
  {
LABEL_96:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_215;
  }

LABEL_214:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 664));
  if ((v5 & 0x4000) == 0)
  {
LABEL_97:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_215:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 672));
  if ((v5 & 0x8000) != 0)
  {
LABEL_98:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 680));
  }

LABEL_99:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 688));
    if ((v5 & 0x20000) == 0)
    {
LABEL_102:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_219;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 696));
  if ((v5 & 0x40000) == 0)
  {
LABEL_103:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_220;
  }

LABEL_219:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 704));
  if ((v5 & 0x80000) == 0)
  {
LABEL_104:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_221;
  }

LABEL_220:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 712));
  if ((v5 & 0x100000) == 0)
  {
LABEL_105:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_222;
  }

LABEL_221:
  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 720));
  if ((v5 & 0x200000) == 0)
  {
LABEL_106:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_223;
  }

LABEL_222:
  result = TSSSOS::SpecStringArchive::Clear(*(v1 + 728));
  if ((v5 & 0x400000) == 0)
  {
LABEL_107:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_223:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 736));
  if ((v5 & 0x800000) != 0)
  {
LABEL_108:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 744));
  }

LABEL_109:
  if (!HIBYTE(v5))
  {
    goto LABEL_118;
  }

  if ((v5 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 752));
    if ((v5 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_243;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 760));
  if ((v5 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_244;
  }

LABEL_243:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 768));
  if ((v5 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_245;
  }

LABEL_244:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 776));
  if ((v5 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_246;
  }

LABEL_245:
  result = TSSSOS::SpecBoolArchive::Clear(*(v1 + 784));
  if ((v5 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_247:
    result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 800));
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_248;
  }

LABEL_246:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 792));
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_247;
  }

LABEL_117:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_248:
  result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 808));
LABEL_118:
  v6 = *(v1 + 28);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      result = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 816));
    }

    if ((v6 & 2) != 0)
    {
      result = TSSSOS::SpecIntegerArchive::Clear(*(v1 + 824));
    }
  }

  if ((v6 & 0xFC) != 0)
  {
    *(v1 + 836) = 0;
    *(v1 + 832) = 0;
  }

  if ((v6 & 0xFF00) != 0)
  {
    *(v2 + 822) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(v2 + 830) = 0;
  }

  if (HIBYTE(v6))
  {
    *(v2 + 838) = 0;
  }

  v7 = *(v1 + 32);
  if (v7)
  {
    *(v2 + 846) = 0;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(v2 + 854) = 0;
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(v2 + 862) = 0;
  }

  if (HIBYTE(v7))
  {
    *(v2 + 870) = 0;
  }

  v8 = *(v1 + 36);
  if (v8)
  {
    *(v2 + 878) = 0;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(v2 + 886) = 0;
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(v2 + 894) = 0;
  }

  if (HIBYTE(v8))
  {
    *(v2 + 902) = 0;
  }

  if ((*(v1 + 40) & 0xF) != 0)
  {
    *(v2 + 910) = 0;
  }

  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  v10 = *(v1 + 8);
  v9 = (v1 + 8);
  if (v10)
  {

    return sub_2763D4FD4(v9);
  }

  return result;
}

google::protobuf::internal *sub_2763AE738(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v606 = a2;
  if ((sub_2763D4D98(a3, &v606, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v606 + 1);
      LODWORD(v7) = *v606;
      if (*v606 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v606, v7);
          v606 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v606 + 2);
      }

      v606 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 1u;
          v563 = *(a1 + 48);
          if (v563)
          {
            goto LABEL_1201;
          }

          v564 = *(a1 + 8);
          if (v564)
          {
            v564 = *(v564 & 0xFFFFFFFFFFFFFFFELL);
          }

          v563 = sub_2763D414C(v564);
          *(a1 + 48) = v563;
          goto LABEL_1200;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 4u;
          v9 = (v6 + 1);
          v8 = *v6;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v10 = *v9;
          v8 = (v10 << 7) + v8 - 128;
          if (v10 < 0)
          {
            v453 = google::protobuf::internal::VarintParseSlow64(v6, v8);
            v606 = v453;
            *(a1 + 832) = v454 != 0;
            if (!v453)
            {
              return 0;
            }
          }

          else
          {
            v9 = (v6 + 2);
LABEL_12:
            v606 = v9;
            *(a1 + 832) = v8 != 0;
          }

          goto LABEL_1188;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 2u;
          v499 = *(a1 + 56);
          if (v499)
          {
            goto LABEL_1113;
          }

          v500 = *(a1 + 8);
          if (v500)
          {
            v500 = *(v500 & 0xFFFFFFFFFFFFFFFELL);
          }

          v499 = sub_2763D4218(v500);
          *(a1 + 56) = v499;
          goto LABEL_1112;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 8u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v303 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v606 = v303;
            *(a1 + 833) = v304 != 0;
            if (!v303)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v606 = v13;
            *(a1 + 833) = v12 != 0;
          }

          goto LABEL_1188;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 4u;
          v499 = *(a1 + 64);
          if (v499)
          {
            goto LABEL_1113;
          }

          v532 = *(a1 + 8);
          if (v532)
          {
            v532 = *(v532 & 0xFFFFFFFFFFFFFFFELL);
          }

          v499 = sub_2763D4218(v532);
          *(a1 + 64) = v499;
          goto LABEL_1112;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x10u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v319 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v606 = v319;
            *(a1 + 834) = v320 != 0;
            if (!v319)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_59:
            v606 = v37;
            *(a1 + 834) = v36 != 0;
          }

          goto LABEL_1188;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 8u;
          v503 = *(a1 + 72);
          if (v503)
          {
            goto LABEL_1130;
          }

          v528 = *(a1 + 8);
          if (v528)
          {
            v528 = *(v528 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v528);
          *(a1 + 72) = v503;
          goto LABEL_1129;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x20u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v321 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v606 = v321;
            *(a1 + 835) = v322 != 0;
            if (!v321)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_64:
            v606 = v40;
            *(a1 + 835) = v39 != 0;
          }

          goto LABEL_1188;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x10u;
          v503 = *(a1 + 80);
          if (v503)
          {
            goto LABEL_1130;
          }

          v504 = *(a1 + 8);
          if (v504)
          {
            v504 = *(v504 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v504);
          *(a1 + 80) = v503;
          goto LABEL_1129;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x40u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v339 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v606 = v339;
            *(a1 + 836) = v340 != 0;
            if (!v339)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_109:
            v606 = v67;
            *(a1 + 836) = v66 != 0;
          }

          goto LABEL_1188;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x20u;
          v563 = *(a1 + 88);
          if (v563)
          {
            goto LABEL_1201;
          }

          v604 = *(a1 + 8);
          if (v604)
          {
            v604 = *(v604 & 0xFFFFFFFFFFFFFFFELL);
          }

          v563 = sub_2763D414C(v604);
          *(a1 + 88) = v563;
          goto LABEL_1200;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x80u;
          v298 = (v6 + 1);
          v297 = *v6;
          if ((v297 & 0x8000000000000000) == 0)
          {
            goto LABEL_494;
          }

          v299 = *v298;
          v297 = (v299 << 7) + v297 - 128;
          if (v299 < 0)
          {
            v495 = google::protobuf::internal::VarintParseSlow64(v6, v297);
            v606 = v495;
            *(a1 + 837) = v496 != 0;
            if (!v495)
            {
              return 0;
            }
          }

          else
          {
            v298 = (v6 + 2);
LABEL_494:
            v606 = v298;
            *(a1 + 837) = v297 != 0;
          }

          goto LABEL_1188;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x40u;
          v563 = *(a1 + 96);
          if (v563)
          {
            goto LABEL_1201;
          }

          v603 = *(a1 + 8);
          if (v603)
          {
            v603 = *(v603 & 0xFFFFFFFFFFFFFFFELL);
          }

          v563 = sub_2763D414C(v603);
          *(a1 + 96) = v563;
LABEL_1200:
          v6 = v606;
LABEL_1201:
          v549 = sub_2764A92B8(a3, v563, v6);
          goto LABEL_1187;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x100u;
          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v315 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            v606 = v315;
            *(a1 + 838) = v316 != 0;
            if (!v315)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_49:
            v606 = v31;
            *(a1 + 838) = v30 != 0;
          }

          goto LABEL_1188;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x80u;
          v501 = *(a1 + 104);
          if (v501)
          {
            goto LABEL_1186;
          }

          v546 = *(a1 + 8);
          if (v546)
          {
            v546 = *(v546 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v546);
          *(a1 + 104) = v501;
          goto LABEL_1185;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x200u;
          v49 = (v6 + 1);
          v48 = *v6;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v327 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v606 = v327;
            *(a1 + 839) = v328 != 0;
            if (!v327)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_79:
            v606 = v49;
            *(a1 + 839) = v48 != 0;
          }

          goto LABEL_1188;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x100u;
          v501 = *(a1 + 112);
          if (v501)
          {
            goto LABEL_1186;
          }

          v509 = *(a1 + 8);
          if (v509)
          {
            v509 = *(v509 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v509);
          *(a1 + 112) = v501;
          goto LABEL_1185;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x400u;
          v235 = (v6 + 1);
          v234 = *v6;
          if ((v234 & 0x8000000000000000) == 0)
          {
            goto LABEL_389;
          }

          v236 = *v235;
          v234 = (v236 << 7) + v234 - 128;
          if (v236 < 0)
          {
            v451 = google::protobuf::internal::VarintParseSlow64(v6, v234);
            v606 = v451;
            *(a1 + 840) = v452 != 0;
            if (!v451)
            {
              return 0;
            }
          }

          else
          {
            v235 = (v6 + 2);
LABEL_389:
            v606 = v235;
            *(a1 + 840) = v234 != 0;
          }

          goto LABEL_1188;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x200u;
          v501 = *(a1 + 120);
          if (v501)
          {
            goto LABEL_1186;
          }

          v582 = *(a1 + 8);
          if (v582)
          {
            v582 = *(v582 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v582);
          *(a1 + 120) = v501;
          goto LABEL_1185;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x800u;
          v202 = (v6 + 1);
          v201 = *v6;
          if ((v201 & 0x8000000000000000) == 0)
          {
            goto LABEL_334;
          }

          v203 = *v202;
          v201 = (v203 << 7) + v201 - 128;
          if (v203 < 0)
          {
            v429 = google::protobuf::internal::VarintParseSlow64(v6, v201);
            v606 = v429;
            *(a1 + 841) = v430 != 0;
            if (!v429)
            {
              return 0;
            }
          }

          else
          {
            v202 = (v6 + 2);
LABEL_334:
            v606 = v202;
            *(a1 + 841) = v201 != 0;
          }

          goto LABEL_1188;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x400u;
          v501 = *(a1 + 128);
          if (v501)
          {
            goto LABEL_1186;
          }

          v534 = *(a1 + 8);
          if (v534)
          {
            v534 = *(v534 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v534);
          *(a1 + 128) = v501;
          goto LABEL_1185;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x1000u;
          v247 = (v6 + 1);
          v246 = *v6;
          if ((v246 & 0x8000000000000000) == 0)
          {
            goto LABEL_409;
          }

          v248 = *v247;
          v246 = (v248 << 7) + v246 - 128;
          if (v248 < 0)
          {
            v461 = google::protobuf::internal::VarintParseSlow64(v6, v246);
            v606 = v461;
            *(a1 + 842) = v462 != 0;
            if (!v461)
            {
              return 0;
            }
          }

          else
          {
            v247 = (v6 + 2);
LABEL_409:
            v606 = v247;
            *(a1 + 842) = v246 != 0;
          }

          goto LABEL_1188;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x800u;
          v501 = *(a1 + 136);
          if (v501)
          {
            goto LABEL_1186;
          }

          v502 = *(a1 + 8);
          if (v502)
          {
            v502 = *(v502 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v502);
          *(a1 + 136) = v501;
          goto LABEL_1185;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x2000u;
          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v329 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v606 = v329;
            *(a1 + 843) = v330 != 0;
            if (!v329)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_84:
            v606 = v52;
            *(a1 + 843) = v51 != 0;
          }

          goto LABEL_1188;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x1000u;
          v501 = *(a1 + 144);
          if (v501)
          {
            goto LABEL_1186;
          }

          v519 = *(a1 + 8);
          if (v519)
          {
            v519 = *(v519 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v519);
          *(a1 + 144) = v501;
          goto LABEL_1185;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x4000u;
          v268 = (v6 + 1);
          v267 = *v6;
          if ((v267 & 0x8000000000000000) == 0)
          {
            goto LABEL_444;
          }

          v269 = *v268;
          v267 = (v269 << 7) + v267 - 128;
          if (v269 < 0)
          {
            v475 = google::protobuf::internal::VarintParseSlow64(v6, v267);
            v606 = v475;
            *(a1 + 844) = v476 != 0;
            if (!v475)
            {
              return 0;
            }
          }

          else
          {
            v268 = (v6 + 2);
LABEL_444:
            v606 = v268;
            *(a1 + 844) = v267 != 0;
          }

          goto LABEL_1188;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x2000u;
          v501 = *(a1 + 152);
          if (v501)
          {
            goto LABEL_1186;
          }

          v602 = *(a1 + 8);
          if (v602)
          {
            v602 = *(v602 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v602);
          *(a1 + 152) = v501;
          goto LABEL_1185;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x8000u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v369 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v606 = v369;
            *(a1 + 845) = v370 != 0;
            if (!v369)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_184:
            v606 = v112;
            *(a1 + 845) = v111 != 0;
          }

          goto LABEL_1188;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x4000u;
          v501 = *(a1 + 160);
          if (v501)
          {
            goto LABEL_1186;
          }

          v600 = *(a1 + 8);
          if (v600)
          {
            v600 = *(v600 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v600);
          *(a1 + 160) = v501;
          goto LABEL_1185;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x10000u;
          v301 = (v6 + 1);
          v300 = *v6;
          if ((v300 & 0x8000000000000000) == 0)
          {
            goto LABEL_499;
          }

          v302 = *v301;
          v300 = (v302 << 7) + v300 - 128;
          if (v302 < 0)
          {
            v497 = google::protobuf::internal::VarintParseSlow64(v6, v300);
            v606 = v497;
            *(a1 + 846) = v498 != 0;
            if (!v497)
            {
              return 0;
            }
          }

          else
          {
            v301 = (v6 + 2);
LABEL_499:
            v606 = v301;
            *(a1 + 846) = v300 != 0;
          }

LABEL_1188:
          if (sub_2763D4D98(a3, &v606, *(a3 + 92)))
          {
            return v606;
          }

          break;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x8000u;
          v501 = *(a1 + 168);
          if (v501)
          {
            goto LABEL_1186;
          }

          v506 = *(a1 + 8);
          if (v506)
          {
            v506 = *(v506 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v506);
          *(a1 + 168) = v501;
          goto LABEL_1185;
        case 0x20u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x20000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v305 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v606 = v305;
            *(a1 + 847) = v306 != 0;
            if (!v305)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v606 = v16;
            *(a1 + 847) = v15 != 0;
          }

          goto LABEL_1188;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x10000u;
          v517 = *(a1 + 176);
          if (v517)
          {
            goto LABEL_1169;
          }

          v524 = *(a1 + 8);
          if (v524)
          {
            v524 = *(v524 & 0xFFFFFFFFFFFFFFFELL);
          }

          v517 = sub_2763D3FB4(v524);
          *(a1 + 176) = v517;
          goto LABEL_1168;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x40000u;
          v277 = (v6 + 1);
          v276 = *v6;
          if ((v276 & 0x8000000000000000) == 0)
          {
            goto LABEL_459;
          }

          v278 = *v277;
          v276 = (v278 << 7) + v276 - 128;
          if (v278 < 0)
          {
            v481 = google::protobuf::internal::VarintParseSlow64(v6, v276);
            v606 = v481;
            *(a1 + 848) = v482 != 0;
            if (!v481)
            {
              return 0;
            }
          }

          else
          {
            v277 = (v6 + 2);
LABEL_459:
            v606 = v277;
            *(a1 + 848) = v276 != 0;
          }

          goto LABEL_1188;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x20000u;
          v517 = *(a1 + 184);
          if (v517)
          {
            goto LABEL_1169;
          }

          v599 = *(a1 + 8);
          if (v599)
          {
            v599 = *(v599 & 0xFFFFFFFFFFFFFFFELL);
          }

          v517 = sub_2763D3FB4(v599);
          *(a1 + 184) = v517;
          goto LABEL_1168;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x80000u;
          v289 = (v6 + 1);
          v288 = *v6;
          if ((v288 & 0x8000000000000000) == 0)
          {
            goto LABEL_479;
          }

          v290 = *v289;
          v288 = (v290 << 7) + v288 - 128;
          if (v290 < 0)
          {
            v489 = google::protobuf::internal::VarintParseSlow64(v6, v288);
            v606 = v489;
            *(a1 + 849) = v490 != 0;
            if (!v489)
            {
              return 0;
            }
          }

          else
          {
            v289 = (v6 + 2);
LABEL_479:
            v606 = v289;
            *(a1 + 849) = v288 != 0;
          }

          goto LABEL_1188;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x40000u;
          v517 = *(a1 + 192);
          if (v517)
          {
            goto LABEL_1169;
          }

          v597 = *(a1 + 8);
          if (v597)
          {
            v597 = *(v597 & 0xFFFFFFFFFFFFFFFELL);
          }

          v517 = sub_2763D3FB4(v597);
          *(a1 + 192) = v517;
          goto LABEL_1168;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x100000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v307 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v606 = v307;
            *(a1 + 850) = v308 != 0;
            if (!v307)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v606 = v19;
            *(a1 + 850) = v18 != 0;
          }

          goto LABEL_1188;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x80000u;
          v517 = *(a1 + 200);
          if (v517)
          {
            goto LABEL_1169;
          }

          v518 = *(a1 + 8);
          if (v518)
          {
            v518 = *(v518 & 0xFFFFFFFFFFFFFFFELL);
          }

          v517 = sub_2763D3FB4(v518);
          *(a1 + 200) = v517;
LABEL_1168:
          v6 = v606;
LABEL_1169:
          v549 = sub_2764A9CAC(a3, v517, v6);
          goto LABEL_1187;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x200000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v311 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v606 = v311;
            *(a1 + 851) = v312 != 0;
            if (!v311)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v606 = v25;
            *(a1 + 851) = v24 != 0;
          }

          goto LABEL_1188;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x100000u;
          v503 = *(a1 + 208);
          if (v503)
          {
            goto LABEL_1130;
          }

          v514 = *(a1 + 8);
          if (v514)
          {
            v514 = *(v514 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v514);
          *(a1 + 208) = v503;
          goto LABEL_1129;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x400000u;
          v220 = (v6 + 1);
          v219 = *v6;
          if ((v219 & 0x8000000000000000) == 0)
          {
            goto LABEL_364;
          }

          v221 = *v220;
          v219 = (v221 << 7) + v219 - 128;
          if (v221 < 0)
          {
            v441 = google::protobuf::internal::VarintParseSlow64(v6, v219);
            v606 = v441;
            *(a1 + 852) = v442 != 0;
            if (!v441)
            {
              return 0;
            }
          }

          else
          {
            v220 = (v6 + 2);
LABEL_364:
            v606 = v220;
            *(a1 + 852) = v219 != 0;
          }

          goto LABEL_1188;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x200000u;
          v503 = *(a1 + 216);
          if (v503)
          {
            goto LABEL_1130;
          }

          v592 = *(a1 + 8);
          if (v592)
          {
            v592 = *(v592 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v592);
          *(a1 + 216) = v503;
          goto LABEL_1129;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x800000u;
          v295 = (v6 + 1);
          v294 = *v6;
          if ((v294 & 0x8000000000000000) == 0)
          {
            goto LABEL_489;
          }

          v296 = *v295;
          v294 = (v296 << 7) + v294 - 128;
          if (v296 < 0)
          {
            v493 = google::protobuf::internal::VarintParseSlow64(v6, v294);
            v606 = v493;
            *(a1 + 853) = v494 != 0;
            if (!v493)
            {
              return 0;
            }
          }

          else
          {
            v295 = (v6 + 2);
LABEL_489:
            v606 = v295;
            *(a1 + 853) = v294 != 0;
          }

          goto LABEL_1188;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x400000u;
          v503 = *(a1 + 224);
          if (v503)
          {
            goto LABEL_1130;
          }

          v580 = *(a1 + 8);
          if (v580)
          {
            v580 = *(v580 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v580);
          *(a1 + 224) = v503;
          goto LABEL_1129;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x1000000u;
          v217 = (v6 + 1);
          v216 = *v6;
          if ((v216 & 0x8000000000000000) == 0)
          {
            goto LABEL_359;
          }

          v218 = *v217;
          v216 = (v218 << 7) + v216 - 128;
          if (v218 < 0)
          {
            v439 = google::protobuf::internal::VarintParseSlow64(v6, v216);
            v606 = v439;
            *(a1 + 854) = v440 != 0;
            if (!v439)
            {
              return 0;
            }
          }

          else
          {
            v217 = (v6 + 2);
LABEL_359:
            v606 = v217;
            *(a1 + 854) = v216 != 0;
          }

          goto LABEL_1188;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x800000u;
          v503 = *(a1 + 232);
          if (v503)
          {
            goto LABEL_1130;
          }

          v508 = *(a1 + 8);
          if (v508)
          {
            v508 = *(v508 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v508);
          *(a1 + 232) = v503;
          goto LABEL_1129;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x2000000u;
          v265 = (v6 + 1);
          v264 = *v6;
          if ((v264 & 0x8000000000000000) == 0)
          {
            goto LABEL_439;
          }

          v266 = *v265;
          v264 = (v266 << 7) + v264 - 128;
          if (v266 < 0)
          {
            v473 = google::protobuf::internal::VarintParseSlow64(v6, v264);
            v606 = v473;
            *(a1 + 855) = v474 != 0;
            if (!v473)
            {
              return 0;
            }
          }

          else
          {
            v265 = (v6 + 2);
LABEL_439:
            v606 = v265;
            *(a1 + 855) = v264 != 0;
          }

          goto LABEL_1188;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x1000000u;
          v501 = *(a1 + 240);
          if (v501)
          {
            goto LABEL_1186;
          }

          v585 = *(a1 + 8);
          if (v585)
          {
            v585 = *(v585 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v585);
          *(a1 + 240) = v501;
          goto LABEL_1185;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x4000000u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v309 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v606 = v309;
            *(a1 + 856) = v310 != 0;
            if (!v309)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v606 = v22;
            *(a1 + 856) = v21 != 0;
          }

          goto LABEL_1188;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x2000000u;
          v501 = *(a1 + 248);
          if (v501)
          {
            goto LABEL_1186;
          }

          v594 = *(a1 + 8);
          if (v594)
          {
            v594 = *(v594 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v594);
          *(a1 + 248) = v501;
          goto LABEL_1185;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x8000000u;
          v145 = (v6 + 1);
          v144 = *v6;
          if ((v144 & 0x8000000000000000) == 0)
          {
            goto LABEL_239;
          }

          v146 = *v145;
          v144 = (v146 << 7) + v144 - 128;
          if (v146 < 0)
          {
            v391 = google::protobuf::internal::VarintParseSlow64(v6, v144);
            v606 = v391;
            *(a1 + 857) = v392 != 0;
            if (!v391)
            {
              return 0;
            }
          }

          else
          {
            v145 = (v6 + 2);
LABEL_239:
            v606 = v145;
            *(a1 + 857) = v144 != 0;
          }

          goto LABEL_1188;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x4000000u;
          v503 = *(a1 + 256);
          if (v503)
          {
            goto LABEL_1130;
          }

          v533 = *(a1 + 8);
          if (v533)
          {
            v533 = *(v533 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v533);
          *(a1 + 256) = v503;
          goto LABEL_1129;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x10000000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v331 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v606 = v331;
            *(a1 + 858) = v332 != 0;
            if (!v331)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_89:
            v606 = v55;
            *(a1 + 858) = v54 != 0;
          }

          goto LABEL_1188;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x8000000u;
          v503 = *(a1 + 264);
          if (v503)
          {
            goto LABEL_1130;
          }

          v505 = *(a1 + 8);
          if (v505)
          {
            v505 = *(v505 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v505);
          *(a1 + 264) = v503;
          goto LABEL_1129;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x20000000u;
          v250 = (v6 + 1);
          v249 = *v6;
          if ((v249 & 0x8000000000000000) == 0)
          {
            goto LABEL_414;
          }

          v251 = *v250;
          v249 = (v251 << 7) + v249 - 128;
          if (v251 < 0)
          {
            v463 = google::protobuf::internal::VarintParseSlow64(v6, v249);
            v606 = v463;
            *(a1 + 859) = v464 != 0;
            if (!v463)
            {
              return 0;
            }
          }

          else
          {
            v250 = (v6 + 2);
LABEL_414:
            v606 = v250;
            *(a1 + 859) = v249 != 0;
          }

          goto LABEL_1188;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x10000000u;
          v501 = *(a1 + 272);
          if (v501)
          {
            goto LABEL_1186;
          }

          v590 = *(a1 + 8);
          if (v590)
          {
            v590 = *(v590 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v590);
          *(a1 + 272) = v501;
          goto LABEL_1185;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x40000000u;
          v280 = (v6 + 1);
          v279 = *v6;
          if ((v279 & 0x8000000000000000) == 0)
          {
            goto LABEL_464;
          }

          v281 = *v280;
          v279 = (v281 << 7) + v279 - 128;
          if (v281 < 0)
          {
            v483 = google::protobuf::internal::VarintParseSlow64(v6, v279);
            v606 = v483;
            *(a1 + 860) = v484 != 0;
            if (!v483)
            {
              return 0;
            }
          }

          else
          {
            v280 = (v6 + 2);
LABEL_464:
            v606 = v280;
            *(a1 + 860) = v279 != 0;
          }

          goto LABEL_1188;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x20000000u;
          v501 = *(a1 + 280);
          if (v501)
          {
            goto LABEL_1186;
          }

          v507 = *(a1 + 8);
          if (v507)
          {
            v507 = *(v507 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v507);
          *(a1 + 280) = v501;
          goto LABEL_1185;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 0x80000000;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v347 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v606 = v347;
            *(a1 + 861) = v348 != 0;
            if (!v347)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_129:
            v606 = v79;
            *(a1 + 861) = v78 != 0;
          }

          goto LABEL_1188;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x40000000u;
          v503 = *(a1 + 288);
          if (v503)
          {
            goto LABEL_1130;
          }

          v586 = *(a1 + 8);
          if (v586)
          {
            v586 = *(v586 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v586);
          *(a1 + 288) = v503;
          goto LABEL_1129;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 1u;
          v292 = (v6 + 1);
          v291 = *v6;
          if ((v291 & 0x8000000000000000) == 0)
          {
            goto LABEL_484;
          }

          v293 = *v292;
          v291 = (v293 << 7) + v291 - 128;
          if (v293 < 0)
          {
            v491 = google::protobuf::internal::VarintParseSlow64(v6, v291);
            v606 = v491;
            *(a1 + 862) = v492 != 0;
            if (!v491)
            {
              return 0;
            }
          }

          else
          {
            v292 = (v6 + 2);
LABEL_484:
            v606 = v292;
            *(a1 + 862) = v291 != 0;
          }

          goto LABEL_1188;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 16) |= 0x80000000;
          v501 = *(a1 + 296);
          if (v501)
          {
            goto LABEL_1186;
          }

          v601 = *(a1 + 8);
          if (v601)
          {
            v601 = *(v601 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v601);
          *(a1 + 296) = v501;
          goto LABEL_1185;
        case 0x40u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 2u;
          v283 = (v6 + 1);
          v282 = *v6;
          if ((v282 & 0x8000000000000000) == 0)
          {
            goto LABEL_469;
          }

          v284 = *v283;
          v282 = (v284 << 7) + v282 - 128;
          if (v284 < 0)
          {
            v485 = google::protobuf::internal::VarintParseSlow64(v6, v282);
            v606 = v485;
            *(a1 + 863) = v486 != 0;
            if (!v485)
            {
              return 0;
            }
          }

          else
          {
            v283 = (v6 + 2);
LABEL_469:
            v606 = v283;
            *(a1 + 863) = v282 != 0;
          }

          goto LABEL_1188;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 1u;
          v501 = *(a1 + 304);
          if (v501)
          {
            goto LABEL_1186;
          }

          v531 = *(a1 + 8);
          if (v531)
          {
            v531 = *(v531 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v531);
          *(a1 + 304) = v501;
          goto LABEL_1185;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 4u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v365 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v606 = v365;
            *(a1 + 864) = v366 != 0;
            if (!v365)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_174:
            v606 = v106;
            *(a1 + 864) = v105 != 0;
          }

          goto LABEL_1188;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 2u;
          v501 = *(a1 + 312);
          if (v501)
          {
            goto LABEL_1186;
          }

          v595 = *(a1 + 8);
          if (v595)
          {
            v595 = *(v595 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v595);
          *(a1 + 312) = v501;
          goto LABEL_1185;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 8u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v351 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v606 = v351;
            *(a1 + 865) = v352 != 0;
            if (!v351)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_139:
            v606 = v85;
            *(a1 + 865) = v84 != 0;
          }

          goto LABEL_1188;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 4u;
          v501 = *(a1 + 320);
          if (v501)
          {
            goto LABEL_1186;
          }

          v530 = *(a1 + 8);
          if (v530)
          {
            v530 = *(v530 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v530);
          *(a1 + 320) = v501;
          goto LABEL_1185;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x10u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v341 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v606 = v341;
            *(a1 + 866) = v342 != 0;
            if (!v341)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_114:
            v606 = v70;
            *(a1 + 866) = v69 != 0;
          }

          goto LABEL_1188;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 8u;
          v501 = *(a1 + 328);
          if (v501)
          {
            goto LABEL_1186;
          }

          v598 = *(a1 + 8);
          if (v598)
          {
            v598 = *(v598 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v598);
          *(a1 + 328) = v501;
          goto LABEL_1185;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x20u;
          v244 = (v6 + 1);
          v243 = *v6;
          if ((v243 & 0x8000000000000000) == 0)
          {
            goto LABEL_404;
          }

          v245 = *v244;
          v243 = (v245 << 7) + v243 - 128;
          if (v245 < 0)
          {
            v459 = google::protobuf::internal::VarintParseSlow64(v6, v243);
            v606 = v459;
            *(a1 + 867) = v460 != 0;
            if (!v459)
            {
              return 0;
            }
          }

          else
          {
            v244 = (v6 + 2);
LABEL_404:
            v606 = v244;
            *(a1 + 867) = v243 != 0;
          }

          goto LABEL_1188;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x10u;
          v499 = *(a1 + 336);
          if (v499)
          {
            goto LABEL_1113;
          }

          v513 = *(a1 + 8);
          if (v513)
          {
            v513 = *(v513 & 0xFFFFFFFFFFFFFFFELL);
          }

          v499 = sub_2763D4218(v513);
          *(a1 + 336) = v499;
          goto LABEL_1112;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x40u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v313 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v606 = v313;
            *(a1 + 868) = v314 != 0;
            if (!v313)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v606 = v28;
            *(a1 + 868) = v27 != 0;
          }

          goto LABEL_1188;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x20u;
          v499 = *(a1 + 344);
          if (v499)
          {
            goto LABEL_1113;
          }

          v584 = *(a1 + 8);
          if (v584)
          {
            v584 = *(v584 & 0xFFFFFFFFFFFFFFFELL);
          }

          v499 = sub_2763D4218(v584);
          *(a1 + 344) = v499;
          goto LABEL_1112;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x80u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v345 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v606 = v345;
            *(a1 + 869) = v346 != 0;
            if (!v345)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_124:
            v606 = v76;
            *(a1 + 869) = v75 != 0;
          }

          goto LABEL_1188;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x40u;
          v501 = *(a1 + 352);
          if (v501)
          {
            goto LABEL_1186;
          }

          v573 = *(a1 + 8);
          if (v573)
          {
            v573 = *(v573 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v573);
          *(a1 + 352) = v501;
          goto LABEL_1185;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x100u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v317 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v606 = v317;
            *(a1 + 870) = v318 != 0;
            if (!v317)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_54:
            v606 = v34;
            *(a1 + 870) = v33 != 0;
          }

          goto LABEL_1188;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x80u;
          v501 = *(a1 + 360);
          if (v501)
          {
            goto LABEL_1186;
          }

          v553 = *(a1 + 8);
          if (v553)
          {
            v553 = *(v553 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v553);
          *(a1 + 360) = v501;
          goto LABEL_1185;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x200u;
          v214 = (v6 + 1);
          v213 = *v6;
          if ((v213 & 0x8000000000000000) == 0)
          {
            goto LABEL_354;
          }

          v215 = *v214;
          v213 = (v215 << 7) + v213 - 128;
          if (v215 < 0)
          {
            v437 = google::protobuf::internal::VarintParseSlow64(v6, v213);
            v606 = v437;
            *(a1 + 871) = v438 != 0;
            if (!v437)
            {
              return 0;
            }
          }

          else
          {
            v214 = (v6 + 2);
LABEL_354:
            v606 = v214;
            *(a1 + 871) = v213 != 0;
          }

          goto LABEL_1188;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x100u;
          v499 = *(a1 + 368);
          if (v499)
          {
            goto LABEL_1113;
          }

          v589 = *(a1 + 8);
          if (v589)
          {
            v589 = *(v589 & 0xFFFFFFFFFFFFFFFELL);
          }

          v499 = sub_2763D4218(v589);
          *(a1 + 368) = v499;
LABEL_1112:
          v6 = v606;
LABEL_1113:
          v549 = sub_2764A9388(a3, v499, v6);
          goto LABEL_1187;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x400u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v337 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v606 = v337;
            *(a1 + 872) = v338 != 0;
            if (!v337)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_104:
            v606 = v64;
            *(a1 + 872) = v63 != 0;
          }

          goto LABEL_1188;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x200u;
          v501 = *(a1 + 376);
          if (v501)
          {
            goto LABEL_1186;
          }

          v527 = *(a1 + 8);
          if (v527)
          {
            v527 = *(v527 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v527);
          *(a1 + 376) = v501;
          goto LABEL_1185;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x800u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_69;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v323 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v606 = v323;
            *(a1 + 873) = v324 != 0;
            if (!v323)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_69:
            v606 = v43;
            *(a1 + 873) = v42 != 0;
          }

          goto LABEL_1188;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x400u;
          v510 = *(a1 + 384);
          if (v510)
          {
            goto LABEL_1152;
          }

          v565 = *(a1 + 8);
          if (v565)
          {
            v565 = *(v565 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v565);
          *(a1 + 384) = v510;
          goto LABEL_1151;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x1000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v325 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v606 = v325;
            *(a1 + 874) = v326 != 0;
            if (!v325)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_74:
            v606 = v46;
            *(a1 + 874) = v45 != 0;
          }

          goto LABEL_1188;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x800u;
          v510 = *(a1 + 392);
          if (v510)
          {
            goto LABEL_1152;
          }

          v591 = *(a1 + 8);
          if (v591)
          {
            v591 = *(v591 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v591);
          *(a1 + 392) = v510;
          goto LABEL_1151;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x2000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v333 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v606 = v333;
            *(a1 + 875) = v334 != 0;
            if (!v333)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_94:
            v606 = v58;
            *(a1 + 875) = v57 != 0;
          }

          goto LABEL_1188;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x1000u;
          v510 = *(a1 + 400);
          if (v510)
          {
            goto LABEL_1152;
          }

          v511 = *(a1 + 8);
          if (v511)
          {
            v511 = *(v511 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v511);
          *(a1 + 400) = v510;
          goto LABEL_1151;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x4000u;
          v253 = (v6 + 1);
          v252 = *v6;
          if ((v252 & 0x8000000000000000) == 0)
          {
            goto LABEL_419;
          }

          v254 = *v253;
          v252 = (v254 << 7) + v252 - 128;
          if (v254 < 0)
          {
            v465 = google::protobuf::internal::VarintParseSlow64(v6, v252);
            v606 = v465;
            *(a1 + 876) = v466 != 0;
            if (!v465)
            {
              return 0;
            }
          }

          else
          {
            v253 = (v6 + 2);
LABEL_419:
            v606 = v253;
            *(a1 + 876) = v252 != 0;
          }

          goto LABEL_1188;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x2000u;
          v510 = *(a1 + 408);
          if (v510)
          {
            goto LABEL_1152;
          }

          v525 = *(a1 + 8);
          if (v525)
          {
            v525 = *(v525 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v525);
          *(a1 + 408) = v510;
          goto LABEL_1151;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x8000u;
          v271 = (v6 + 1);
          v270 = *v6;
          if ((v270 & 0x8000000000000000) == 0)
          {
            goto LABEL_449;
          }

          v272 = *v271;
          v270 = (v272 << 7) + v270 - 128;
          if (v272 < 0)
          {
            v477 = google::protobuf::internal::VarintParseSlow64(v6, v270);
            v606 = v477;
            *(a1 + 877) = v478 != 0;
            if (!v477)
            {
              return 0;
            }
          }

          else
          {
            v271 = (v6 + 2);
LABEL_449:
            v606 = v271;
            *(a1 + 877) = v270 != 0;
          }

          goto LABEL_1188;
        case 0x5Du:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x4000u;
          v510 = *(a1 + 416);
          if (v510)
          {
            goto LABEL_1152;
          }

          v515 = *(a1 + 8);
          if (v515)
          {
            v515 = *(v515 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v515);
          *(a1 + 416) = v510;
          goto LABEL_1151;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x10000u;
          v115 = (v6 + 1);
          v114 = *v6;
          if ((v114 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v116 = *v115;
          v114 = (v116 << 7) + v114 - 128;
          if (v116 < 0)
          {
            v371 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v606 = v371;
            *(a1 + 878) = v372 != 0;
            if (!v371)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_189:
            v606 = v115;
            *(a1 + 878) = v114 != 0;
          }

          goto LABEL_1188;
        case 0x5Fu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x8000u;
          v510 = *(a1 + 424);
          if (v510)
          {
            goto LABEL_1152;
          }

          v554 = *(a1 + 8);
          if (v554)
          {
            v554 = *(v554 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v554);
          *(a1 + 424) = v510;
          goto LABEL_1151;
        case 0x60u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x20000u;
          v94 = (v6 + 1);
          v93 = *v6;
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v95 = *v94;
          v93 = (v95 << 7) + v93 - 128;
          if (v95 < 0)
          {
            v357 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v606 = v357;
            *(a1 + 879) = v358 != 0;
            if (!v357)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_154:
            v606 = v94;
            *(a1 + 879) = v93 != 0;
          }

          goto LABEL_1188;
        case 0x61u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x10000u;
          v510 = *(a1 + 432);
          if (v510)
          {
            goto LABEL_1152;
          }

          v512 = *(a1 + 8);
          if (v512)
          {
            v512 = *(v512 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v512);
          *(a1 + 432) = v510;
          goto LABEL_1151;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x40000u;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v335 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v606 = v335;
            *(a1 + 880) = v336 != 0;
            if (!v335)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_99:
            v606 = v61;
            *(a1 + 880) = v60 != 0;
          }

          goto LABEL_1188;
        case 0x63u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x20000u;
          v510 = *(a1 + 440);
          if (v510)
          {
            goto LABEL_1152;
          }

          v568 = *(a1 + 8);
          if (v568)
          {
            v568 = *(v568 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v568);
          *(a1 + 440) = v510;
          goto LABEL_1151;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x80000u;
          v262 = (v6 + 1);
          v261 = *v6;
          if ((v261 & 0x8000000000000000) == 0)
          {
            goto LABEL_434;
          }

          v263 = *v262;
          v261 = (v263 << 7) + v261 - 128;
          if (v263 < 0)
          {
            v471 = google::protobuf::internal::VarintParseSlow64(v6, v261);
            v606 = v471;
            *(a1 + 881) = v472 != 0;
            if (!v471)
            {
              return 0;
            }
          }

          else
          {
            v262 = (v6 + 2);
LABEL_434:
            v606 = v262;
            *(a1 + 881) = v261 != 0;
          }

          goto LABEL_1188;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x40000u;
          v510 = *(a1 + 448);
          if (v510)
          {
            goto LABEL_1152;
          }

          v543 = *(a1 + 8);
          if (v543)
          {
            v543 = *(v543 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v543);
          *(a1 + 448) = v510;
          goto LABEL_1151;
        case 0x66u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x100000u;
          v100 = (v6 + 1);
          v99 = *v6;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v101 = *v100;
          v99 = (v101 << 7) + v99 - 128;
          if (v101 < 0)
          {
            v361 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v606 = v361;
            *(a1 + 882) = v362 != 0;
            if (!v361)
            {
              return 0;
            }
          }

          else
          {
            v100 = (v6 + 2);
LABEL_164:
            v606 = v100;
            *(a1 + 882) = v99 != 0;
          }

          goto LABEL_1188;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x80000u;
          v510 = *(a1 + 456);
          if (v510)
          {
            goto LABEL_1152;
          }

          v577 = *(a1 + 8);
          if (v577)
          {
            v577 = *(v577 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v577);
          *(a1 + 456) = v510;
          goto LABEL_1151;
        case 0x68u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x200000u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v343 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v606 = v343;
            *(a1 + 883) = v344 != 0;
            if (!v343)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_119:
            v606 = v73;
            *(a1 + 883) = v72 != 0;
          }

          goto LABEL_1188;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x100000u;
          v510 = *(a1 + 464);
          if (v510)
          {
            goto LABEL_1152;
          }

          v551 = *(a1 + 8);
          if (v551)
          {
            v551 = *(v551 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v551);
          *(a1 + 464) = v510;
          goto LABEL_1151;
        case 0x6Au:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x400000u;
          v286 = (v6 + 1);
          v285 = *v6;
          if ((v285 & 0x8000000000000000) == 0)
          {
            goto LABEL_474;
          }

          v287 = *v286;
          v285 = (v287 << 7) + v285 - 128;
          if (v287 < 0)
          {
            v487 = google::protobuf::internal::VarintParseSlow64(v6, v285);
            v606 = v487;
            *(a1 + 884) = v488 != 0;
            if (!v487)
            {
              return 0;
            }
          }

          else
          {
            v286 = (v6 + 2);
LABEL_474:
            v606 = v286;
            *(a1 + 884) = v285 != 0;
          }

          goto LABEL_1188;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x200000u;
          v510 = *(a1 + 472);
          if (v510)
          {
            goto LABEL_1152;
          }

          v596 = *(a1 + 8);
          if (v596)
          {
            v596 = *(v596 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v596);
          *(a1 + 472) = v510;
          goto LABEL_1151;
        case 0x6Cu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x800000u;
          v274 = (v6 + 1);
          v273 = *v6;
          if ((v273 & 0x8000000000000000) == 0)
          {
            goto LABEL_454;
          }

          v275 = *v274;
          v273 = (v275 << 7) + v273 - 128;
          if (v275 < 0)
          {
            v479 = google::protobuf::internal::VarintParseSlow64(v6, v273);
            v606 = v479;
            *(a1 + 885) = v480 != 0;
            if (!v479)
            {
              return 0;
            }
          }

          else
          {
            v274 = (v6 + 2);
LABEL_454:
            v606 = v274;
            *(a1 + 885) = v273 != 0;
          }

          goto LABEL_1188;
        case 0x6Du:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x400000u;
          v510 = *(a1 + 480);
          if (v510)
          {
            goto LABEL_1152;
          }

          v535 = *(a1 + 8);
          if (v535)
          {
            v535 = *(v535 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v535);
          *(a1 + 480) = v510;
          goto LABEL_1151;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x1000000u;
          v223 = (v6 + 1);
          v222 = *v6;
          if ((v222 & 0x8000000000000000) == 0)
          {
            goto LABEL_369;
          }

          v224 = *v223;
          v222 = (v224 << 7) + v222 - 128;
          if (v224 < 0)
          {
            v443 = google::protobuf::internal::VarintParseSlow64(v6, v222);
            v606 = v443;
            *(a1 + 886) = v444 != 0;
            if (!v443)
            {
              return 0;
            }
          }

          else
          {
            v223 = (v6 + 2);
LABEL_369:
            v606 = v223;
            *(a1 + 886) = v222 != 0;
          }

          goto LABEL_1188;
        case 0x6Fu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x800000u;
          v510 = *(a1 + 488);
          if (v510)
          {
            goto LABEL_1152;
          }

          v520 = *(a1 + 8);
          if (v520)
          {
            v520 = *(v520 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v520);
          *(a1 + 488) = v510;
          goto LABEL_1151;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x2000000u;
          v259 = (v6 + 1);
          v258 = *v6;
          if ((v258 & 0x8000000000000000) == 0)
          {
            goto LABEL_429;
          }

          v260 = *v259;
          v258 = (v260 << 7) + v258 - 128;
          if (v260 < 0)
          {
            v469 = google::protobuf::internal::VarintParseSlow64(v6, v258);
            v606 = v469;
            *(a1 + 887) = v470 != 0;
            if (!v469)
            {
              return 0;
            }
          }

          else
          {
            v259 = (v6 + 2);
LABEL_429:
            v606 = v259;
            *(a1 + 887) = v258 != 0;
          }

          goto LABEL_1188;
        case 0x71u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x1000000u;
          v510 = *(a1 + 496);
          if (v510)
          {
            goto LABEL_1152;
          }

          v523 = *(a1 + 8);
          if (v523)
          {
            v523 = *(v523 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v523);
          *(a1 + 496) = v510;
          goto LABEL_1151;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x4000000u;
          v148 = (v6 + 1);
          v147 = *v6;
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v149 = *v148;
          v147 = (v149 << 7) + v147 - 128;
          if (v149 < 0)
          {
            v393 = google::protobuf::internal::VarintParseSlow64(v6, v147);
            v606 = v393;
            *(a1 + 888) = v394 != 0;
            if (!v393)
            {
              return 0;
            }
          }

          else
          {
            v148 = (v6 + 2);
LABEL_244:
            v606 = v148;
            *(a1 + 888) = v147 != 0;
          }

          goto LABEL_1188;
        case 0x73u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x2000000u;
          v510 = *(a1 + 504);
          if (v510)
          {
            goto LABEL_1152;
          }

          v526 = *(a1 + 8);
          if (v526)
          {
            v526 = *(v526 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v526);
          *(a1 + 504) = v510;
          goto LABEL_1151;
        case 0x74u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x8000000u;
          v91 = (v6 + 1);
          v90 = *v6;
          if ((v90 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v92 = *v91;
          v90 = (v92 << 7) + v90 - 128;
          if (v92 < 0)
          {
            v355 = google::protobuf::internal::VarintParseSlow64(v6, v90);
            v606 = v355;
            *(a1 + 889) = v356 != 0;
            if (!v355)
            {
              return 0;
            }
          }

          else
          {
            v91 = (v6 + 2);
LABEL_149:
            v606 = v91;
            *(a1 + 889) = v90 != 0;
          }

          goto LABEL_1188;
        case 0x75u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x4000000u;
          v510 = *(a1 + 512);
          if (v510)
          {
            goto LABEL_1152;
          }

          v521 = *(a1 + 8);
          if (v521)
          {
            v521 = *(v521 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v521);
          *(a1 + 512) = v510;
          goto LABEL_1151;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x10000000u;
          v256 = (v6 + 1);
          v255 = *v6;
          if ((v255 & 0x8000000000000000) == 0)
          {
            goto LABEL_424;
          }

          v257 = *v256;
          v255 = (v257 << 7) + v255 - 128;
          if (v257 < 0)
          {
            v467 = google::protobuf::internal::VarintParseSlow64(v6, v255);
            v606 = v467;
            *(a1 + 890) = v468 != 0;
            if (!v467)
            {
              return 0;
            }
          }

          else
          {
            v256 = (v6 + 2);
LABEL_424:
            v606 = v256;
            *(a1 + 890) = v255 != 0;
          }

          goto LABEL_1188;
        case 0x77u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x8000000u;
          v510 = *(a1 + 520);
          if (v510)
          {
            goto LABEL_1152;
          }

          v516 = *(a1 + 8);
          if (v516)
          {
            v516 = *(v516 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v516);
          *(a1 + 520) = v510;
          goto LABEL_1151;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x20000000u;
          v88 = (v6 + 1);
          v87 = *v6;
          if ((v87 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v89 = *v88;
          v87 = (v89 << 7) + v87 - 128;
          if (v89 < 0)
          {
            v353 = google::protobuf::internal::VarintParseSlow64(v6, v87);
            v606 = v353;
            *(a1 + 891) = v354 != 0;
            if (!v353)
            {
              return 0;
            }
          }

          else
          {
            v88 = (v6 + 2);
LABEL_144:
            v606 = v88;
            *(a1 + 891) = v87 != 0;
          }

          goto LABEL_1188;
        case 0x79u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x10000000u;
          v510 = *(a1 + 528);
          if (v510)
          {
            goto LABEL_1152;
          }

          v581 = *(a1 + 8);
          if (v581)
          {
            v581 = *(v581 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v581);
          *(a1 + 528) = v510;
          goto LABEL_1151;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x40000000u;
          v151 = (v6 + 1);
          v150 = *v6;
          if ((v150 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v152 = *v151;
          v150 = (v152 << 7) + v150 - 128;
          if (v152 < 0)
          {
            v395 = google::protobuf::internal::VarintParseSlow64(v6, v150);
            v606 = v395;
            *(a1 + 892) = v396 != 0;
            if (!v395)
            {
              return 0;
            }
          }

          else
          {
            v151 = (v6 + 2);
LABEL_249:
            v606 = v151;
            *(a1 + 892) = v150 != 0;
          }

          goto LABEL_1188;
        case 0x7Bu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x20000000u;
          v510 = *(a1 + 536);
          if (v510)
          {
            goto LABEL_1152;
          }

          v588 = *(a1 + 8);
          if (v588)
          {
            v588 = *(v588 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v588);
          *(a1 + 536) = v510;
          goto LABEL_1151;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 32) |= 0x80000000;
          v208 = (v6 + 1);
          v207 = *v6;
          if ((v207 & 0x8000000000000000) == 0)
          {
            goto LABEL_344;
          }

          v209 = *v208;
          v207 = (v209 << 7) + v207 - 128;
          if (v209 < 0)
          {
            v433 = google::protobuf::internal::VarintParseSlow64(v6, v207);
            v606 = v433;
            *(a1 + 893) = v434 != 0;
            if (!v433)
            {
              return 0;
            }
          }

          else
          {
            v208 = (v6 + 2);
LABEL_344:
            v606 = v208;
            *(a1 + 893) = v207 != 0;
          }

          goto LABEL_1188;
        case 0x7Du:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x40000000u;
          v510 = *(a1 + 544);
          if (v510)
          {
            goto LABEL_1152;
          }

          v539 = *(a1 + 8);
          if (v539)
          {
            v539 = *(v539 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v539);
          *(a1 + 544) = v510;
          goto LABEL_1151;
        case 0x7Eu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 1u;
          v229 = (v6 + 1);
          v228 = *v6;
          if ((v228 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v230 = *v229;
          v228 = (v230 << 7) + v228 - 128;
          if (v230 < 0)
          {
            v447 = google::protobuf::internal::VarintParseSlow64(v6, v228);
            v606 = v447;
            *(a1 + 894) = v448 != 0;
            if (!v447)
            {
              return 0;
            }
          }

          else
          {
            v229 = (v6 + 2);
LABEL_379:
            v606 = v229;
            *(a1 + 894) = v228 != 0;
          }

          goto LABEL_1188;
        case 0x7Fu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 20) |= 0x80000000;
          v510 = *(a1 + 552);
          if (v510)
          {
            goto LABEL_1152;
          }

          v593 = *(a1 + 8);
          if (v593)
          {
            v593 = *(v593 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v593);
          *(a1 + 552) = v510;
          goto LABEL_1151;
        case 0x80u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 2u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v379 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v606 = v379;
            *(a1 + 895) = v380 != 0;
            if (!v379)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_209:
            v606 = v127;
            *(a1 + 895) = v126 != 0;
          }

          goto LABEL_1188;
        case 0x81u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 1u;
          v510 = *(a1 + 560);
          if (v510)
          {
            goto LABEL_1152;
          }

          v587 = *(a1 + 8);
          if (v587)
          {
            v587 = *(v587 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v587);
          *(a1 + 560) = v510;
          goto LABEL_1151;
        case 0x82u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 4u;
          v121 = (v6 + 1);
          v120 = *v6;
          if ((v120 & 0x8000000000000000) == 0)
          {
            goto LABEL_199;
          }

          v122 = *v121;
          v120 = (v122 << 7) + v120 - 128;
          if (v122 < 0)
          {
            v375 = google::protobuf::internal::VarintParseSlow64(v6, v120);
            v606 = v375;
            *(a1 + 896) = v376 != 0;
            if (!v375)
            {
              return 0;
            }
          }

          else
          {
            v121 = (v6 + 2);
LABEL_199:
            v606 = v121;
            *(a1 + 896) = v120 != 0;
          }

          goto LABEL_1188;
        case 0x83u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 2u;
          v510 = *(a1 + 568);
          if (v510)
          {
            goto LABEL_1152;
          }

          v536 = *(a1 + 8);
          if (v536)
          {
            v536 = *(v536 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v536);
          *(a1 + 568) = v510;
          goto LABEL_1151;
        case 0x84u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 8u;
          v163 = (v6 + 1);
          v162 = *v6;
          if ((v162 & 0x8000000000000000) == 0)
          {
            goto LABEL_269;
          }

          v164 = *v163;
          v162 = (v164 << 7) + v162 - 128;
          if (v164 < 0)
          {
            v403 = google::protobuf::internal::VarintParseSlow64(v6, v162);
            v606 = v403;
            *(a1 + 897) = v404 != 0;
            if (!v403)
            {
              return 0;
            }
          }

          else
          {
            v163 = (v6 + 2);
LABEL_269:
            v606 = v163;
            *(a1 + 897) = v162 != 0;
          }

          goto LABEL_1188;
        case 0x85u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 4u;
          v510 = *(a1 + 576);
          if (v510)
          {
            goto LABEL_1152;
          }

          v537 = *(a1 + 8);
          if (v537)
          {
            v537 = *(v537 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v537);
          *(a1 + 576) = v510;
          goto LABEL_1151;
        case 0x86u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x10u;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v367 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v606 = v367;
            *(a1 + 898) = v368 != 0;
            if (!v367)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_179:
            v606 = v109;
            *(a1 + 898) = v108 != 0;
          }

          goto LABEL_1188;
        case 0x87u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 8u;
          v501 = *(a1 + 584);
          if (v501)
          {
            goto LABEL_1186;
          }

          v583 = *(a1 + 8);
          if (v583)
          {
            v583 = *(v583 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v583);
          *(a1 + 584) = v501;
          goto LABEL_1185;
        case 0x88u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x20u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_309;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v419 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v606 = v419;
            *(a1 + 899) = v420 != 0;
            if (!v419)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_309:
            v606 = v187;
            *(a1 + 899) = v186 != 0;
          }

          goto LABEL_1188;
        case 0x89u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x10u;
          v510 = *(a1 + 592);
          if (v510)
          {
            goto LABEL_1152;
          }

          v575 = *(a1 + 8);
          if (v575)
          {
            v575 = *(v575 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v575);
          *(a1 + 592) = v510;
          goto LABEL_1151;
        case 0x8Au:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x40u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_219;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v383 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v606 = v383;
            *(a1 + 900) = v384 != 0;
            if (!v383)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_219:
            v606 = v133;
            *(a1 + 900) = v132 != 0;
          }

          goto LABEL_1188;
        case 0x8Bu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x20u;
          v510 = *(a1 + 600);
          if (v510)
          {
            goto LABEL_1152;
          }

          v522 = *(a1 + 8);
          if (v522)
          {
            v522 = *(v522 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v522);
          *(a1 + 600) = v510;
          goto LABEL_1151;
        case 0x8Cu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x80u;
          v118 = (v6 + 1);
          v117 = *v6;
          if ((v117 & 0x8000000000000000) == 0)
          {
            goto LABEL_194;
          }

          v119 = *v118;
          v117 = (v119 << 7) + v117 - 128;
          if (v119 < 0)
          {
            v373 = google::protobuf::internal::VarintParseSlow64(v6, v117);
            v606 = v373;
            *(a1 + 901) = v374 != 0;
            if (!v373)
            {
              return 0;
            }
          }

          else
          {
            v118 = (v6 + 2);
LABEL_194:
            v606 = v118;
            *(a1 + 901) = v117 != 0;
          }

          goto LABEL_1188;
        case 0x8Du:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x40u;
          v510 = *(a1 + 608);
          if (v510)
          {
            goto LABEL_1152;
          }

          v566 = *(a1 + 8);
          if (v566)
          {
            v566 = *(v566 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v566);
          *(a1 + 608) = v510;
          goto LABEL_1151;
        case 0x8Eu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x100u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v349 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v606 = v349;
            *(a1 + 902) = v350 != 0;
            if (!v349)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_134:
            v606 = v82;
            *(a1 + 902) = v81 != 0;
          }

          goto LABEL_1188;
        case 0x8Fu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x80u;
          v510 = *(a1 + 616);
          if (v510)
          {
            goto LABEL_1152;
          }

          v571 = *(a1 + 8);
          if (v571)
          {
            v571 = *(v571 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v571);
          *(a1 + 616) = v510;
          goto LABEL_1151;
        case 0x90u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x200u;
          v211 = (v6 + 1);
          v210 = *v6;
          if ((v210 & 0x8000000000000000) == 0)
          {
            goto LABEL_349;
          }

          v212 = *v211;
          v210 = (v212 << 7) + v210 - 128;
          if (v212 < 0)
          {
            v435 = google::protobuf::internal::VarintParseSlow64(v6, v210);
            v606 = v435;
            *(a1 + 903) = v436 != 0;
            if (!v435)
            {
              return 0;
            }
          }

          else
          {
            v211 = (v6 + 2);
LABEL_349:
            v606 = v211;
            *(a1 + 903) = v210 != 0;
          }

          goto LABEL_1188;
        case 0x91u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x100u;
          v510 = *(a1 + 624);
          if (v510)
          {
            goto LABEL_1152;
          }

          v578 = *(a1 + 8);
          if (v578)
          {
            v578 = *(v578 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v578);
          *(a1 + 624) = v510;
          goto LABEL_1151;
        case 0x92u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x400u;
          v97 = (v6 + 1);
          v96 = *v6;
          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v98 = *v97;
          v96 = (v98 << 7) + v96 - 128;
          if (v98 < 0)
          {
            v359 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v606 = v359;
            *(a1 + 904) = v360 != 0;
            if (!v359)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_159:
            v606 = v97;
            *(a1 + 904) = v96 != 0;
          }

          goto LABEL_1188;
        case 0x93u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x200u;
          v510 = *(a1 + 632);
          if (v510)
          {
            goto LABEL_1152;
          }

          v561 = *(a1 + 8);
          if (v561)
          {
            v561 = *(v561 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v561);
          *(a1 + 632) = v510;
          goto LABEL_1151;
        case 0x94u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x800u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v399 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v606 = v399;
            *(a1 + 905) = v400 != 0;
            if (!v399)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_259:
            v606 = v157;
            *(a1 + 905) = v156 != 0;
          }

          goto LABEL_1188;
        case 0x95u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x400u;
          v510 = *(a1 + 640);
          if (v510)
          {
            goto LABEL_1152;
          }

          v544 = *(a1 + 8);
          if (v544)
          {
            v544 = *(v544 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v544);
          *(a1 + 640) = v510;
          goto LABEL_1151;
        case 0x96u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x1000u;
          v241 = (v6 + 1);
          v240 = *v6;
          if ((v240 & 0x8000000000000000) == 0)
          {
            goto LABEL_399;
          }

          v242 = *v241;
          v240 = (v242 << 7) + v240 - 128;
          if (v242 < 0)
          {
            v457 = google::protobuf::internal::VarintParseSlow64(v6, v240);
            v606 = v457;
            *(a1 + 906) = v458 != 0;
            if (!v457)
            {
              return 0;
            }
          }

          else
          {
            v241 = (v6 + 2);
LABEL_399:
            v606 = v241;
            *(a1 + 906) = v240 != 0;
          }

          goto LABEL_1188;
        case 0x97u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x800u;
          v510 = *(a1 + 648);
          if (v510)
          {
            goto LABEL_1152;
          }

          v550 = *(a1 + 8);
          if (v550)
          {
            v550 = *(v550 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v550);
          *(a1 + 648) = v510;
          goto LABEL_1151;
        case 0x98u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x2000u;
          v175 = (v6 + 1);
          v174 = *v6;
          if ((v174 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v176 = *v175;
          v174 = (v176 << 7) + v174 - 128;
          if (v176 < 0)
          {
            v411 = google::protobuf::internal::VarintParseSlow64(v6, v174);
            v606 = v411;
            *(a1 + 907) = v412 != 0;
            if (!v411)
            {
              return 0;
            }
          }

          else
          {
            v175 = (v6 + 2);
LABEL_289:
            v606 = v175;
            *(a1 + 907) = v174 != 0;
          }

          goto LABEL_1188;
        case 0x99u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x1000u;
          v510 = *(a1 + 656);
          if (v510)
          {
            goto LABEL_1152;
          }

          v541 = *(a1 + 8);
          if (v541)
          {
            v541 = *(v541 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v541);
          *(a1 + 656) = v510;
          goto LABEL_1151;
        case 0x9Au:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x4000u;
          v166 = (v6 + 1);
          v165 = *v6;
          if ((v165 & 0x8000000000000000) == 0)
          {
            goto LABEL_274;
          }

          v167 = *v166;
          v165 = (v167 << 7) + v165 - 128;
          if (v167 < 0)
          {
            v405 = google::protobuf::internal::VarintParseSlow64(v6, v165);
            v606 = v405;
            *(a1 + 908) = v406 != 0;
            if (!v405)
            {
              return 0;
            }
          }

          else
          {
            v166 = (v6 + 2);
LABEL_274:
            v606 = v166;
            *(a1 + 908) = v165 != 0;
          }

          goto LABEL_1188;
        case 0x9Bu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x2000u;
          v501 = *(a1 + 664);
          if (v501)
          {
            goto LABEL_1186;
          }

          v579 = *(a1 + 8);
          if (v579)
          {
            v579 = *(v579 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v579);
          *(a1 + 664) = v501;
          goto LABEL_1185;
        case 0x9Cu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x8000u;
          v238 = (v6 + 1);
          v237 = *v6;
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_394;
          }

          v239 = *v238;
          v237 = (v239 << 7) + v237 - 128;
          if (v239 < 0)
          {
            v455 = google::protobuf::internal::VarintParseSlow64(v6, v237);
            v606 = v455;
            *(a1 + 909) = v456 != 0;
            if (!v455)
            {
              return 0;
            }
          }

          else
          {
            v238 = (v6 + 2);
LABEL_394:
            v606 = v238;
            *(a1 + 909) = v237 != 0;
          }

          goto LABEL_1188;
        case 0x9Du:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x4000u;
          v501 = *(a1 + 672);
          if (v501)
          {
            goto LABEL_1186;
          }

          v574 = *(a1 + 8);
          if (v574)
          {
            v574 = *(v574 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v574);
          *(a1 + 672) = v501;
          goto LABEL_1185;
        case 0x9Eu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x10000u;
          v103 = (v6 + 1);
          v102 = *v6;
          if ((v102 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v104 = *v103;
          v102 = (v104 << 7) + v102 - 128;
          if (v104 < 0)
          {
            v363 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v606 = v363;
            *(a1 + 910) = v364 != 0;
            if (!v363)
            {
              return 0;
            }
          }

          else
          {
            v103 = (v6 + 2);
LABEL_169:
            v606 = v103;
            *(a1 + 910) = v102 != 0;
          }

          goto LABEL_1188;
        case 0x9Fu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x8000u;
          v501 = *(a1 + 680);
          if (v501)
          {
            goto LABEL_1186;
          }

          v529 = *(a1 + 8);
          if (v529)
          {
            v529 = *(v529 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v529);
          *(a1 + 680) = v501;
          goto LABEL_1185;
        case 0xA0u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x20000u;
          v232 = (v6 + 1);
          v231 = *v6;
          if ((v231 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v233 = *v232;
          v231 = (v233 << 7) + v231 - 128;
          if (v233 < 0)
          {
            v449 = google::protobuf::internal::VarintParseSlow64(v6, v231);
            v606 = v449;
            *(a1 + 911) = v450 != 0;
            if (!v449)
            {
              return 0;
            }
          }

          else
          {
            v232 = (v6 + 2);
LABEL_384:
            v606 = v232;
            *(a1 + 911) = v231 != 0;
          }

          goto LABEL_1188;
        case 0xA1u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x10000u;
          v501 = *(a1 + 688);
          if (v501)
          {
            goto LABEL_1186;
          }

          v538 = *(a1 + 8);
          if (v538)
          {
            v538 = *(v538 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v538);
          *(a1 + 688) = v501;
          goto LABEL_1185;
        case 0xA2u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x40000u;
          v142 = (v6 + 1);
          v141 = *v6;
          if ((v141 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v143 = *v142;
          v141 = (v143 << 7) + v141 - 128;
          if (v143 < 0)
          {
            v389 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v606 = v389;
            *(a1 + 912) = v390 != 0;
            if (!v389)
            {
              return 0;
            }
          }

          else
          {
            v142 = (v6 + 2);
LABEL_234:
            v606 = v142;
            *(a1 + 912) = v141 != 0;
          }

          goto LABEL_1188;
        case 0xA3u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x20000u;
          v501 = *(a1 + 696);
          if (v501)
          {
            goto LABEL_1186;
          }

          v555 = *(a1 + 8);
          if (v555)
          {
            v555 = *(v555 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v555);
          *(a1 + 696) = v501;
          goto LABEL_1185;
        case 0xA4u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x80000u;
          v193 = (v6 + 1);
          v192 = *v6;
          if ((v192 & 0x8000000000000000) == 0)
          {
            goto LABEL_319;
          }

          v194 = *v193;
          v192 = (v194 << 7) + v192 - 128;
          if (v194 < 0)
          {
            v423 = google::protobuf::internal::VarintParseSlow64(v6, v192);
            v606 = v423;
            *(a1 + 913) = v424 != 0;
            if (!v423)
            {
              return 0;
            }
          }

          else
          {
            v193 = (v6 + 2);
LABEL_319:
            v606 = v193;
            *(a1 + 913) = v192 != 0;
          }

          goto LABEL_1188;
        case 0xA5u:
          if (v7 != 42)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x40000u;
          v501 = *(a1 + 704);
          if (v501)
          {
            goto LABEL_1186;
          }

          v542 = *(a1 + 8);
          if (v542)
          {
            v542 = *(v542 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v542);
          *(a1 + 704) = v501;
          goto LABEL_1185;
        case 0xA6u:
          if (v7 != 48)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x100000u;
          v205 = (v6 + 1);
          v204 = *v6;
          if ((v204 & 0x8000000000000000) == 0)
          {
            goto LABEL_339;
          }

          v206 = *v205;
          v204 = (v206 << 7) + v204 - 128;
          if (v206 < 0)
          {
            v431 = google::protobuf::internal::VarintParseSlow64(v6, v204);
            v606 = v431;
            *(a1 + 914) = v432 != 0;
            if (!v431)
            {
              return 0;
            }
          }

          else
          {
            v205 = (v6 + 2);
LABEL_339:
            v606 = v205;
            *(a1 + 914) = v204 != 0;
          }

          goto LABEL_1188;
        case 0xA7u:
          if (v7 != 58)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x80000u;
          v503 = *(a1 + 712);
          if (v503)
          {
            goto LABEL_1130;
          }

          v576 = *(a1 + 8);
          if (v576)
          {
            v576 = *(v576 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v576);
          *(a1 + 712) = v503;
          goto LABEL_1129;
        case 0xA8u:
          if (v7 != 64)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x200000u;
          v124 = (v6 + 1);
          v123 = *v6;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }

          v125 = *v124;
          v123 = (v125 << 7) + v123 - 128;
          if (v125 < 0)
          {
            v377 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v606 = v377;
            *(a1 + 915) = v378 != 0;
            if (!v377)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_204:
            v606 = v124;
            *(a1 + 915) = v123 != 0;
          }

          goto LABEL_1188;
        case 0xA9u:
          if (v7 != 74)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x100000u;
          v503 = *(a1 + 720);
          if (v503)
          {
            goto LABEL_1130;
          }

          v567 = *(a1 + 8);
          if (v567)
          {
            v567 = *(v567 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v567);
          *(a1 + 720) = v503;
          goto LABEL_1129;
        case 0xAAu:
          if (v7 != 80)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x400000u;
          v226 = (v6 + 1);
          v225 = *v6;
          if ((v225 & 0x8000000000000000) == 0)
          {
            goto LABEL_374;
          }

          v227 = *v226;
          v225 = (v227 << 7) + v225 - 128;
          if (v227 < 0)
          {
            v445 = google::protobuf::internal::VarintParseSlow64(v6, v225);
            v606 = v445;
            *(a1 + 916) = v446 != 0;
            if (!v445)
            {
              return 0;
            }
          }

          else
          {
            v226 = (v6 + 2);
LABEL_374:
            v606 = v226;
            *(a1 + 916) = v225 != 0;
          }

          goto LABEL_1188;
        case 0xABu:
          if (v7 != 90)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x200000u;
          v547 = *(a1 + 728);
          if (!v547)
          {
            v548 = *(a1 + 8);
            if (v548)
            {
              v548 = *(v548 & 0xFFFFFFFFFFFFFFFELL);
            }

            v547 = MEMORY[0x277C97C50](v548);
            *(a1 + 728) = v547;
            v6 = v606;
          }

          v549 = sub_2764A96C8(a3, v547, v6);
          goto LABEL_1187;
        case 0xACu:
          if (v7 != 96)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x800000u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_214;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v381 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v606 = v381;
            *(a1 + 917) = v382 != 0;
            if (!v381)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_214:
            v606 = v130;
            *(a1 + 917) = v129 != 0;
          }

          goto LABEL_1188;
        case 0xADu:
          if (v7 != 106)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x400000u;
          v501 = *(a1 + 736);
          if (v501)
          {
            goto LABEL_1186;
          }

          v540 = *(a1 + 8);
          if (v540)
          {
            v540 = *(v540 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v540);
          *(a1 + 736) = v501;
          goto LABEL_1185;
        case 0xAEu:
          if (v7 != 112)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x1000000u;
          v196 = (v6 + 1);
          v195 = *v6;
          if ((v195 & 0x8000000000000000) == 0)
          {
            goto LABEL_324;
          }

          v197 = *v196;
          v195 = (v197 << 7) + v195 - 128;
          if (v197 < 0)
          {
            v425 = google::protobuf::internal::VarintParseSlow64(v6, v195);
            v606 = v425;
            *(a1 + 918) = v426 != 0;
            if (!v425)
            {
              return 0;
            }
          }

          else
          {
            v196 = (v6 + 2);
LABEL_324:
            v606 = v196;
            *(a1 + 918) = v195 != 0;
          }

          goto LABEL_1188;
        case 0xAFu:
          if (v7 != 122)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x800000u;
          v501 = *(a1 + 744);
          if (v501)
          {
            goto LABEL_1186;
          }

          v545 = *(a1 + 8);
          if (v545)
          {
            v545 = *(v545 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v545);
          *(a1 + 744) = v501;
          goto LABEL_1185;
        case 0xB0u:
          if (v7 != 128)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x2000000u;
          v136 = (v6 + 1);
          v135 = *v6;
          if ((v135 & 0x8000000000000000) == 0)
          {
            goto LABEL_224;
          }

          v137 = *v136;
          v135 = (v137 << 7) + v135 - 128;
          if (v137 < 0)
          {
            v385 = google::protobuf::internal::VarintParseSlow64(v6, v135);
            v606 = v385;
            *(a1 + 919) = v386 != 0;
            if (!v385)
            {
              return 0;
            }
          }

          else
          {
            v136 = (v6 + 2);
LABEL_224:
            v606 = v136;
            *(a1 + 919) = v135 != 0;
          }

          goto LABEL_1188;
        case 0xB1u:
          if (v7 != 138)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x1000000u;
          v503 = *(a1 + 752);
          if (v503)
          {
            goto LABEL_1130;
          }

          v552 = *(a1 + 8);
          if (v552)
          {
            v552 = *(v552 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v552);
          *(a1 + 752) = v503;
          goto LABEL_1129;
        case 0xB2u:
          if (v7 != 144)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x4000000u;
          v169 = (v6 + 1);
          v168 = *v6;
          if ((v168 & 0x8000000000000000) == 0)
          {
            goto LABEL_279;
          }

          v170 = *v169;
          v168 = (v170 << 7) + v168 - 128;
          if (v170 < 0)
          {
            v407 = google::protobuf::internal::VarintParseSlow64(v6, v168);
            v606 = v407;
            *(a1 + 920) = v408 != 0;
            if (!v407)
            {
              return 0;
            }
          }

          else
          {
            v169 = (v6 + 2);
LABEL_279:
            v606 = v169;
            *(a1 + 920) = v168 != 0;
          }

          goto LABEL_1188;
        case 0xB3u:
          if (v7 != 154)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x2000000u;
          v503 = *(a1 + 760);
          if (v503)
          {
            goto LABEL_1130;
          }

          v572 = *(a1 + 8);
          if (v572)
          {
            v572 = *(v572 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v572);
          *(a1 + 760) = v503;
          goto LABEL_1129;
        case 0xB4u:
          if (v7 != 160)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x8000000u;
          v139 = (v6 + 1);
          v138 = *v6;
          if ((v138 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v140 = *v139;
          v138 = (v140 << 7) + v138 - 128;
          if (v140 < 0)
          {
            v387 = google::protobuf::internal::VarintParseSlow64(v6, v138);
            v606 = v387;
            *(a1 + 921) = v388 != 0;
            if (!v387)
            {
              return 0;
            }
          }

          else
          {
            v139 = (v6 + 2);
LABEL_229:
            v606 = v139;
            *(a1 + 921) = v138 != 0;
          }

          goto LABEL_1188;
        case 0xB5u:
          if (v7 != 170)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x4000000u;
          v510 = *(a1 + 768);
          if (v510)
          {
            goto LABEL_1152;
          }

          v570 = *(a1 + 8);
          if (v570)
          {
            v570 = *(v570 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v570);
          *(a1 + 768) = v510;
          goto LABEL_1151;
        case 0xB6u:
          if (v7 != 176)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x10000000u;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v401 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v606 = v401;
            *(a1 + 922) = v402 != 0;
            if (!v401)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_264:
            v606 = v160;
            *(a1 + 922) = v159 != 0;
          }

          goto LABEL_1188;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x8000000u;
          v510 = *(a1 + 776);
          if (v510)
          {
            goto LABEL_1152;
          }

          v569 = *(a1 + 8);
          if (v569)
          {
            v569 = *(v569 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v569);
          *(a1 + 776) = v510;
          goto LABEL_1151;
        case 0xB8u:
          if (v7 != 192)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x20000000u;
          v199 = (v6 + 1);
          v198 = *v6;
          if ((v198 & 0x8000000000000000) == 0)
          {
            goto LABEL_329;
          }

          v200 = *v199;
          v198 = (v200 << 7) + v198 - 128;
          if (v200 < 0)
          {
            v427 = google::protobuf::internal::VarintParseSlow64(v6, v198);
            v606 = v427;
            *(a1 + 923) = v428 != 0;
            if (!v427)
            {
              return 0;
            }
          }

          else
          {
            v199 = (v6 + 2);
LABEL_329:
            v606 = v199;
            *(a1 + 923) = v198 != 0;
          }

          goto LABEL_1188;
        case 0xB9u:
          if (v7 != 202)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x10000000u;
          v510 = *(a1 + 784);
          if (v510)
          {
            goto LABEL_1152;
          }

          v558 = *(a1 + 8);
          if (v558)
          {
            v558 = *(v558 & 0xFFFFFFFFFFFFFFFELL);
          }

          v510 = MEMORY[0x277C97C20](v558);
          *(a1 + 784) = v510;
LABEL_1151:
          v6 = v606;
LABEL_1152:
          v549 = sub_2764A95F8(a3, v510, v6);
          goto LABEL_1187;
        case 0xBAu:
          if (v7 != 208)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x40000000u;
          v181 = (v6 + 1);
          v180 = *v6;
          if ((v180 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v182 = *v181;
          v180 = (v182 << 7) + v180 - 128;
          if (v182 < 0)
          {
            v415 = google::protobuf::internal::VarintParseSlow64(v6, v180);
            v606 = v415;
            *(a1 + 924) = v416 != 0;
            if (!v415)
            {
              return 0;
            }
          }

          else
          {
            v181 = (v6 + 2);
LABEL_299:
            v606 = v181;
            *(a1 + 924) = v180 != 0;
          }

          goto LABEL_1188;
        case 0xBBu:
          if (v7 != 218)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x20000000u;
          v501 = *(a1 + 792);
          if (v501)
          {
            goto LABEL_1186;
          }

          v562 = *(a1 + 8);
          if (v562)
          {
            v562 = *(v562 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v562);
          *(a1 + 792) = v501;
          goto LABEL_1185;
        case 0xBCu:
          if (v7 != 224)
          {
            goto LABEL_1202;
          }

          *(a1 + 36) |= 0x80000000;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v397 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v606 = v397;
            *(a1 + 925) = v398 != 0;
            if (!v397)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_254:
            v606 = v154;
            *(a1 + 925) = v153 != 0;
          }

          goto LABEL_1188;
        case 0xBDu:
          if (v7 != 234)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x40000000u;
          v501 = *(a1 + 800);
          if (v501)
          {
            goto LABEL_1186;
          }

          v556 = *(a1 + 8);
          if (v556)
          {
            v556 = *(v556 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v556);
          *(a1 + 800) = v501;
          goto LABEL_1185;
        case 0xBEu:
          if (v7 != 240)
          {
            goto LABEL_1202;
          }

          *(a1 + 40) |= 1u;
          v190 = (v6 + 1);
          v189 = *v6;
          if ((v189 & 0x8000000000000000) == 0)
          {
            goto LABEL_314;
          }

          v191 = *v190;
          v189 = (v191 << 7) + v189 - 128;
          if (v191 < 0)
          {
            v421 = google::protobuf::internal::VarintParseSlow64(v6, v189);
            v606 = v421;
            *(a1 + 926) = v422 != 0;
            if (!v421)
            {
              return 0;
            }
          }

          else
          {
            v190 = (v6 + 2);
LABEL_314:
            v606 = v190;
            *(a1 + 926) = v189 != 0;
          }

          goto LABEL_1188;
        case 0xBFu:
          if (v7 != 250)
          {
            goto LABEL_1202;
          }

          *(a1 + 24) |= 0x80000000;
          v501 = *(a1 + 808);
          if (v501)
          {
            goto LABEL_1186;
          }

          v560 = *(a1 + 8);
          if (v560)
          {
            v560 = *(v560 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v560);
          *(a1 + 808) = v501;
          goto LABEL_1185;
        case 0xC0u:
          if (v7)
          {
            goto LABEL_1202;
          }

          *(a1 + 40) |= 2u;
          v172 = (v6 + 1);
          v171 = *v6;
          if ((v171 & 0x8000000000000000) == 0)
          {
            goto LABEL_284;
          }

          v173 = *v172;
          v171 = (v173 << 7) + v171 - 128;
          if (v173 < 0)
          {
            v409 = google::protobuf::internal::VarintParseSlow64(v6, v171);
            v606 = v409;
            *(a1 + 927) = v410 != 0;
            if (!v409)
            {
              return 0;
            }
          }

          else
          {
            v172 = (v6 + 2);
LABEL_284:
            v606 = v172;
            *(a1 + 927) = v171 != 0;
          }

          goto LABEL_1188;
        case 0xC1u:
          if (v7 != 10)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 1u;
          v503 = *(a1 + 816);
          if (v503)
          {
            goto LABEL_1130;
          }

          v559 = *(a1 + 8);
          if (v559)
          {
            v559 = *(v559 & 0xFFFFFFFFFFFFFFFELL);
          }

          v503 = MEMORY[0x277C97C40](v559);
          *(a1 + 816) = v503;
LABEL_1129:
          v6 = v606;
LABEL_1130:
          v549 = sub_2764A9528(a3, v503, v6);
          goto LABEL_1187;
        case 0xC2u:
          if (v7 != 16)
          {
            goto LABEL_1202;
          }

          *(a1 + 40) |= 4u;
          v178 = (v6 + 1);
          v177 = *v6;
          if ((v177 & 0x8000000000000000) == 0)
          {
            goto LABEL_294;
          }

          v179 = *v178;
          v177 = (v179 << 7) + v177 - 128;
          if (v179 < 0)
          {
            v413 = google::protobuf::internal::VarintParseSlow64(v6, v177);
            v606 = v413;
            *(a1 + 928) = v414 != 0;
            if (!v413)
            {
              return 0;
            }
          }

          else
          {
            v178 = (v6 + 2);
LABEL_294:
            v606 = v178;
            *(a1 + 928) = v177 != 0;
          }

          goto LABEL_1188;
        case 0xC3u:
          if (v7 != 26)
          {
            goto LABEL_1202;
          }

          *(a1 + 28) |= 2u;
          v501 = *(a1 + 824);
          if (v501)
          {
            goto LABEL_1186;
          }

          v557 = *(a1 + 8);
          if (v557)
          {
            v557 = *(v557 & 0xFFFFFFFFFFFFFFFELL);
          }

          v501 = MEMORY[0x277C97C60](v557);
          *(a1 + 824) = v501;
LABEL_1185:
          v6 = v606;
LABEL_1186:
          v549 = sub_2764A9458(a3, v501, v6);
LABEL_1187:
          v606 = v549;
          if (v549)
          {
            goto LABEL_1188;
          }

          return 0;
        case 0xC4u:
          if (v7 != 32)
          {
            goto LABEL_1202;
          }

          *(a1 + 40) |= 8u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v417 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v606 = v417;
            *(a1 + 929) = v418 != 0;
            if (!v417)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_304:
            v606 = v184;
            *(a1 + 929) = v183 != 0;
          }

          goto LABEL_1188;
        default:
LABEL_1202:
          v605 = sub_2764A9FEC(v7, a3, (a1 + 8), &v606);
          if (!v605)
          {
            return v606;
          }

          if (v605 == 1)
          {
            return 0;
          }

          goto LABEL_1188;
      }
    }
  }

  return v606;
}