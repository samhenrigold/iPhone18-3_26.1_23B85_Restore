double sub_29D784264(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2A1A24660 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF28);
    v5 = sub_29D937878();
    v6 = sub_29D93A2A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29[0] = v8;
      v29[1] = ObjectType;
      *v7 = 136446210;
      swift_getMetatypeMetadata();
      v9 = sub_29D939DA8();
      v11 = sub_29D6C2364(v9, v10, v29);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Updating view with new cache object", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    *(v2 + OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject) = a1;

    sub_29D935E88();
    v12 = sub_29D784064();
    v2 = v12;
    if (v12 >> 62)
    {
      break;
    }

    ObjectType = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!ObjectType)
    {
      goto LABEL_18;
    }

LABEL_6:
    v13 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x29ED6AE30](v13, v2);
      }

      else
      {
        if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v14 = *(v2 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_29D72EAE8(a1);
      v17 = sub_29D761F30();
      sub_29D72D070();
      v19 = v18;
      [v17 setImage_];

      v20 = sub_29D76200C();
      sub_29D72D448();
      v22 = v21;
      v24 = v23;
      v25 = sub_29D72D530();
      sub_29D7B9688(v22, v24, v25, v26);

      ++v13;
      if (v16 == ObjectType)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

  ObjectType = sub_29D93A928();
  if (ObjectType)
  {
    goto LABEL_6;
  }

LABEL_18:

  return result;
}

void sub_29D784540()
{
  v174 = MEMORY[0x29EDCA190];
  v0 = 4;
  sub_29D93AAD8();
  v1 = 0;
  v2 = 1;
  v3 = 0x29EDC7000uLL;
  while (1)
  {
    if (v1)
    {
      goto LABEL_213;
    }

    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    sub_29D93AAB8();
    sub_29D93AAE8();
    sub_29D93AAF8();
    sub_29D93AAC8();
    v1 = v2 == 4;
    if (v2 != 4)
    {
      break;
    }

    v2 = 0;
LABEL_3:
    if (!--v0)
    {
      goto LABEL_9;
    }
  }

  if (!__OFADD__(v2++, 1))
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_9:
  v7 = v174;
  v8 = sub_29D784064();
  if (v8 >> 62)
  {
    sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
    v9 = sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
    v9 = v8;
  }

  sub_29D88BF24(v10);
  if (v9 >> 62)
  {
    v11 = sub_29D93A928();
    if (!v11)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x29ED6AE30](i, v9);
        }

        else
        {
          v13 = *(v9 + 8 * i + 32);
        }

        v14 = v13;
        [v172 addSubview_];
      }

      goto LABEL_21;
    }

    goto LABEL_209;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_21:

  sub_29D6A0C58();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29D947690;
  v16 = OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews;
  v17 = *&v172[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews];
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_29D935E88();
    v18 = MEMORY[0x29ED6AE30](0, v17);

LABEL_24:
    v19 = [v18 topAnchor];

    v20 = [v172 topAnchor];
    v2 = &off_29F357000;
    v21 = [v19 constraintEqualToAnchor_];

    *(v15 + 32) = v21;
    v22 = *&v172[v16];
    if ((v22 & 0xC000000000000001) != 0)
    {
      sub_29D935E88();
      v23 = MEMORY[0x29ED6AE30](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_164:
        v31 = MEMORY[0x29ED6AE30](0, v174);
LABEL_33:
        v32 = v31;
        v33 = [v31 heightAnchor];

        HKUIOnePixel();
        v34 = [v33 constraintEqualToConstant_];

        *(v15 + 56) = v34;
        if (v3)
        {
          v35 = MEMORY[0x29ED6AE30](0, v174);
        }

        else
        {
          v35 = *(v174 + 32);
        }

        v36 = v35;
        v25 = [v35 topAnchor];

        v26 = *&v172[v16];
        if ((v26 & 0xC000000000000001) == 0)
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_170:
            sub_29D935E88();
            v51 = MEMORY[0x29ED6AE30](1, v25);

LABEL_51:
            v52 = [v51 topAnchor];

            if (v3)
            {
              v53 = MEMORY[0x29ED6AE30](0, v174);
            }

            else
            {
              v53 = *(v174 + 32);
            }

            v54 = v53;
            v55 = [v53 bottomAnchor];

            v56 = [v52 *(v2 + 1024)];
            *(v15 + 88) = v56;
            v28 = *&v172[v16];
            if ((v28 & 0xC000000000000001) == 0)
            {
              if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                __break(1u);
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v57 = *(v28 + 40);
LABEL_57:
              v58 = [v57 leadingAnchor];

              v52 = [v172 leadingAnchor];
              v55 = [v58 *(v2 + 1024)];

              *(v15 + 96) = v55;
              v48 = *&v172[v16];
              if ((v48 & 0xC000000000000001) != 0)
              {
                goto LABEL_174;
              }

              if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
              {
                v59 = *(v48 + 40);
                goto LABEL_60;
              }

              goto LABEL_176;
            }

LABEL_172:
            sub_29D935E88();
            v57 = MEMORY[0x29ED6AE30](1, v28);

            goto LABEL_57;
          }

          v37 = *(v26 + 4);
LABEL_39:
          v38 = [v37 bottomAnchor];

          v39 = [v25 *(v2 + 1024)];
          *(v15 + 64) = v39;
          if (v3)
          {
            v40 = MEMORY[0x29ED6AE30](0, v174);
          }

          else
          {
            v40 = *(v174 + 32);
          }

          v41 = v40;
          v28 = [v40 leadingAnchor];

          v30 = *&v172[v16];
          if ((v30 & 0xC000000000000001) != 0)
          {
            goto LABEL_168;
          }

          if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v42 = *(v30 + 4);
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_172;
        }

LABEL_166:
        sub_29D935E88();
        v37 = MEMORY[0x29ED6AE30](0, v26);

        goto LABEL_39;
      }

      v23 = *(v22 + 32);
    }

    v24 = [v23 leadingAnchor];

    v25 = [v172 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v15 + 40) = v26;
    v17 = *&v172[v16];
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_162;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 32);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_166;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 32);
    goto LABEL_24;
  }

  __break(1u);
LABEL_162:
  sub_29D935E88();
  v27 = MEMORY[0x29ED6AE30](0, v17);

LABEL_30:
  v28 = [v27 trailingAnchor];

  v29 = [v172 trailingAnchor];
  v30 = [v28 *(v2 + 1024)];

  *(v15 + 48) = v30;
  v3 = v174 & 0xC000000000000001;
  if ((v174 & 0xC000000000000001) != 0)
  {
    goto LABEL_164;
  }

  if (*(v174 + 16))
  {
    v31 = *(v174 + 32);
    goto LABEL_33;
  }

  __break(1u);
LABEL_168:
  sub_29D935E88();
  v42 = MEMORY[0x29ED6AE30](0, v30);

LABEL_45:
  v43 = sub_29D76200C();
  v44 = [v43 leadingAnchor];

  v45 = [v28 *(v2 + 1024)];
  *(v15 + 72) = v45;
  if (v3)
  {
    v46 = MEMORY[0x29ED6AE30](0, v174);
  }

  else
  {
    v46 = *(v174 + 32);
  }

  v47 = v46;
  v48 = [v46 trailingAnchor];

  v49 = [v172 trailingAnchor];
  v50 = [v48 *(v2 + 1024)];

  *(v15 + 80) = v50;
  v25 = *&v172[v16];
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_170;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v51 = *(v25 + 40);
    goto LABEL_51;
  }

  __break(1u);
LABEL_174:
  sub_29D935E88();
  v59 = MEMORY[0x29ED6AE30](1, v48);

LABEL_60:
  v60 = [v59 trailingAnchor];

  v61 = [v172 trailingAnchor];
  v62 = [v60 *(v2 + 1024)];

  *(v15 + 104) = v62;
  if (v3)
  {
    v63 = MEMORY[0x29ED6AE30](1, v174);
    goto LABEL_64;
  }

  if (*(v174 + 16) < 2uLL)
  {
    goto LABEL_210;
  }

  v63 = *(v174 + 40);
LABEL_64:
  v64 = v63;
  v65 = [v63 heightAnchor];

  HKUIOnePixel();
  v66 = [v65 constraintEqualToConstant_];

  *(v15 + 112) = v66;
  if (v3)
  {
    v67 = MEMORY[0x29ED6AE30](1, v174);
  }

  else
  {
    v67 = *(v174 + 40);
  }

  v68 = v67;
  v52 = [v67 topAnchor];

  v55 = *&v172[v16];
  if ((v55 & 0xC000000000000001) != 0)
  {
LABEL_177:
    sub_29D935E88();
    v69 = MEMORY[0x29ED6AE30](1, v55);

LABEL_70:
    v70 = [v69 bottomAnchor];

    v71 = [v52 *(v2 + 1024)];
    *(v15 + 120) = v71;
    if (v3)
    {
      v72 = MEMORY[0x29ED6AE30](1, v174);
    }

    else
    {
      v72 = *(v174 + 40);
    }

    v73 = v72;
    v74 = [v72 leadingAnchor];

    v75 = *&v172[v16];
    if ((v75 & 0xC000000000000001) != 0)
    {
      sub_29D935E88();
      v76 = MEMORY[0x29ED6AE30](1, v75);
    }

    else
    {
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_182:
        sub_29D935E88();
        v91 = MEMORY[0x29ED6AE30](2, v74);

LABEL_88:
        v92 = [v91 leadingAnchor];

        v86 = [v172 leadingAnchor];
        v89 = [v92 *(v2 + 1024)];

        *(v15 + 152) = v89;
        v82 = *&v172[v16];
        if ((v82 & 0xC000000000000001) == 0)
        {
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
          {
            goto LABEL_186;
          }

          v93 = *(v82 + 48);
          goto LABEL_91;
        }

LABEL_184:
        sub_29D935E88();
        v93 = MEMORY[0x29ED6AE30](2, v82);

LABEL_91:
        v94 = [v93 trailingAnchor];

        v95 = [v172 trailingAnchor];
        v96 = [v94 *(v2 + 1024)];

        *(v15 + 160) = v96;
        if (v3)
        {
          v97 = MEMORY[0x29ED6AE30](2, v174);
        }

        else
        {
          if (*(v174 + 16) < 3uLL)
          {
            goto LABEL_211;
          }

          v97 = *(v174 + 48);
        }

        v98 = v97;
        v99 = [v97 heightAnchor];

        HKUIOnePixel();
        v100 = [v99 constraintEqualToConstant_];

        *(v15 + 168) = v100;
        if (v3)
        {
          v101 = MEMORY[0x29ED6AE30](2, v174);
        }

        else
        {
          v101 = *(v174 + 48);
        }

        v102 = v101;
        v86 = [v101 topAnchor];

        v89 = *&v172[v16];
        if ((v89 & 0xC000000000000001) != 0)
        {
          goto LABEL_187;
        }

        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
        {
          v103 = *(v89 + 48);
          goto LABEL_101;
        }

        __break(1u);
        goto LABEL_190;
      }

      v76 = *(v75 + 40);
    }

    v77 = sub_29D76200C();
    v78 = [v77 leadingAnchor];

    v79 = [v74 *(v2 + 1024)];
    *(v15 + 128) = v79;
    if (v3)
    {
      v80 = MEMORY[0x29ED6AE30](1, v174);
    }

    else
    {
      v80 = *(v174 + 40);
    }

    v81 = v80;
    v82 = [v80 trailingAnchor];

    v83 = [v172 trailingAnchor];
    v84 = [v82 *(v2 + 1024)];

    *(v15 + 136) = v84;
    v52 = *&v172[v16];
    if ((v52 & 0xC000000000000001) != 0)
    {
      goto LABEL_180;
    }

    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v85 = *(v52 + 48);
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_184;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v69 = *(v55 + 40);
    goto LABEL_70;
  }

  __break(1u);
LABEL_180:
  sub_29D935E88();
  v85 = MEMORY[0x29ED6AE30](2, v52);

LABEL_82:
  v86 = [v85 topAnchor];

  if (v3)
  {
    v87 = MEMORY[0x29ED6AE30](1, v174);
  }

  else
  {
    v87 = *(v174 + 40);
  }

  v88 = v87;
  v89 = [v87 bottomAnchor];

  v90 = [v86 *(v2 + 1024)];
  *(v15 + 144) = v90;
  v74 = *&v172[v16];
  if ((v74 & 0xC000000000000001) != 0)
  {
    goto LABEL_182;
  }

  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v91 = *(v74 + 48);
    goto LABEL_88;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  sub_29D935E88();
  v103 = MEMORY[0x29ED6AE30](2, v89);

LABEL_101:
  v104 = [v103 bottomAnchor];

  v105 = [v86 *(v2 + 1024)];
  *(v15 + 176) = v105;
  if (v3)
  {
    v106 = MEMORY[0x29ED6AE30](2, v174);
  }

  else
  {
    v106 = *(v174 + 48);
  }

  v107 = v106;
  v108 = [v106 leadingAnchor];

  v109 = *&v172[v16];
  if ((v109 & 0xC000000000000001) != 0)
  {
    sub_29D935E88();
    v110 = MEMORY[0x29ED6AE30](2, v109);

LABEL_107:
    v111 = sub_29D76200C();
    v112 = [v111 leadingAnchor];

    v113 = [v108 *(v2 + 1024)];
    *(v15 + 184) = v113;
    if (v3)
    {
      v114 = MEMORY[0x29ED6AE30](2, v174);
    }

    else
    {
      v114 = *(v174 + 48);
    }

    v115 = v114;
    v116 = [v114 trailingAnchor];

    v117 = [v172 trailingAnchor];
    v118 = [v116 *(v2 + 1024)];

    *(v15 + 192) = v118;
    v86 = *&v172[v16];
    if ((v86 & 0xC000000000000001) == 0)
    {
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        __break(1u);
        goto LABEL_194;
      }

      v119 = *(v86 + 56);
LABEL_113:
      v120 = [v119 topAnchor];

      if (v3)
      {
        v121 = MEMORY[0x29ED6AE30](2, v174);
      }

      else
      {
        v121 = *(v174 + 48);
      }

      v122 = v121;
      v123 = [v121 bottomAnchor];

      v124 = [v120 *(v2 + 1024)];
      *(v15 + 200) = v124;
      v108 = *&v172[v16];
      if ((v108 & 0xC000000000000001) != 0)
      {
        goto LABEL_192;
      }

      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v125 = *(v108 + 56);
        goto LABEL_119;
      }

      __break(1u);
      goto LABEL_196;
    }

LABEL_190:
    sub_29D935E88();
    v119 = MEMORY[0x29ED6AE30](3, v86);

    goto LABEL_113;
  }

  if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v110 = *(v109 + 48);
    goto LABEL_107;
  }

  __break(1u);
LABEL_192:
  sub_29D935E88();
  v125 = MEMORY[0x29ED6AE30](3, v108);

LABEL_119:
  v126 = [v125 leadingAnchor];

  v120 = [v172 leadingAnchor];
  v123 = [v126 *(v2 + 1024)];

  *(v15 + 208) = v123;
  v116 = *&v172[v16];
  if ((v116 & 0xC000000000000001) != 0)
  {
LABEL_194:
    sub_29D935E88();
    v127 = MEMORY[0x29ED6AE30](3, v116);

LABEL_122:
    v128 = [v127 trailingAnchor];

    v129 = [v172 trailingAnchor];
    v130 = [v128 *(v2 + 1024)];

    *(v15 + 216) = v130;
    if (v3)
    {
      v131 = MEMORY[0x29ED6AE30](3, v174);
    }

    else
    {
      if (*(v174 + 16) < 4uLL)
      {
        goto LABEL_212;
      }

      v131 = *(v174 + 56);
    }

    v132 = v131;
    v133 = [v131 heightAnchor];

    HKUIOnePixel();
    v134 = [v133 constraintEqualToConstant_];

    *(v15 + 224) = v134;
    if (v3)
    {
      v135 = MEMORY[0x29ED6AE30](3, v174);
    }

    else
    {
      v135 = *(v174 + 56);
    }

    v136 = v135;
    v120 = [v135 topAnchor];

    v123 = *&v172[v16];
    if ((v123 & 0xC000000000000001) != 0)
    {
      goto LABEL_197;
    }

    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v137 = *(v123 + 56);
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_200;
  }

  if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v127 = *(v116 + 56);
    goto LABEL_122;
  }

LABEL_196:
  __break(1u);
LABEL_197:
  sub_29D935E88();
  v137 = MEMORY[0x29ED6AE30](3, v123);

LABEL_132:
  v138 = [v137 bottomAnchor];

  v139 = [v120 *(v2 + 1024)];
  *(v15 + 232) = v139;
  if (v3)
  {
    v140 = MEMORY[0x29ED6AE30](3, v174);
  }

  else
  {
    v140 = *(v174 + 56);
  }

  v141 = v140;
  v142 = [v140 leadingAnchor];

  v143 = *&v172[v16];
  if ((v143 & 0xC000000000000001) != 0)
  {
    sub_29D935E88();
    v144 = MEMORY[0x29ED6AE30](3, v143);

LABEL_138:
    v145 = sub_29D76200C();
    v146 = [v145 leadingAnchor];

    v147 = [v142 *(v2 + 1024)];
    *(v15 + 240) = v147;
    if (v3)
    {
      v148 = MEMORY[0x29ED6AE30](3, v174);
    }

    else
    {
      v148 = *(v174 + 56);
    }

    v149 = v148;
    v150 = [v148 trailingAnchor];

    v151 = [v172 trailingAnchor];
    v152 = [v150 *(v2 + 1024)];

    *(v15 + 248) = v152;
    v120 = *&v172[v16];
    if ((v120 & 0xC000000000000001) == 0)
    {
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        __break(1u);
        goto LABEL_204;
      }

      v153 = *(v120 + 64);
      goto LABEL_144;
    }

LABEL_200:
    sub_29D935E88();
    v153 = MEMORY[0x29ED6AE30](4, v120);

LABEL_144:
    v154 = [v153 topAnchor];

    if (v3)
    {
      v155 = MEMORY[0x29ED6AE30](3, v174);
    }

    else
    {
      v155 = *(v174 + 56);
    }

    v156 = v155;

    v157 = [v156 bottomAnchor];

    v158 = [v154 *(v2 + 1024)];
    *(v15 + 256) = v158;
    v7 = *&v172[v16];
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_202;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v159 = *(v7 + 64);
      goto LABEL_150;
    }

    __break(1u);
LABEL_206:
    sub_29D935E88();
    v167 = MEMORY[0x29ED6AE30](4, v154);

    goto LABEL_156;
  }

  if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
  {
    v144 = *(v143 + 56);
    goto LABEL_138;
  }

  __break(1u);
LABEL_202:
  sub_29D935E88();
  v159 = MEMORY[0x29ED6AE30](4, v7);

LABEL_150:
  v160 = [v159 bottomAnchor];

  v161 = [v172 bottomAnchor];
  v162 = [v160 *(v2 + 1024)];

  *(v15 + 264) = v162;
  v7 = *&v172[v16];
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v163 = *(v7 + 64);
      goto LABEL_153;
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    return;
  }

LABEL_204:
  sub_29D935E88();
  v163 = MEMORY[0x29ED6AE30](4, v7);

LABEL_153:
  v164 = [v163 leadingAnchor];

  v165 = [v172 leadingAnchor];
  v166 = [v164 *(v2 + 1024)];

  *(v15 + 272) = v166;
  v154 = *&v172[v16];
  if ((v154 & 0xC000000000000001) != 0)
  {
    goto LABEL_206;
  }

  if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
  {
    goto LABEL_208;
  }

  v167 = *(v154 + 64);
LABEL_156:
  v168 = objc_opt_self();
  v169 = [v167 trailingAnchor];

  v170 = [v172 trailingAnchor];
  v171 = [v169 *(v2 + 1024)];

  *(v15 + 280) = v171;
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v173 = sub_29D939F18();

  [v168 activateConstraints_];
}

id sub_29D785E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D785F2C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = sub_29D938808();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v80 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v79 = *(v5 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29D938ED8();
  v69 = *(v70 - 8);
  MEMORY[0x2A1C7C4A8](v70, v8);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D938BC8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D78D2A8;
  v64 = sub_29D78DE34;
  sub_29D78E588(0, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
  v16 = v15;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v62 - v18;
  sub_29D78DE9C(0);
  v71 = v20;
  v72 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v63 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E1C0(0);
  v73 = v23;
  v74 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v67 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29D78E8CC;
  sub_29D78DD1C(0, &qword_2A17B46B0, sub_29D78E8CC, MEMORY[0x29EDBC918]);
  v75 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v68 = &v62 - v28;
  v85 = v1;
  sub_29D78D3A4(0);
  sub_29D78F9B4(&qword_2A17B45D0, sub_29D78D3A4, MEMORY[0x29EDBCC30]);
  sub_29D939258();
  sub_29D78D2DC(0);
  v30 = &v19[*(v29 + 36)];
  *v30 = xmmword_29D947700;
  *(v30 + 1) = xmmword_29D947700;
  v30[32] = 0;
  sub_29D938BB8();
  sub_29D78D2A8(0);
  v32 = *(v31 + 36);
  (*(v11 + 16))(&v19[v32], v14, v10);
  v33 = *(v11 + 56);
  v33(&v19[v32], 0, 1, v10);
  KeyPath = swift_getKeyPath();
  v35 = v16;
  v36 = &v19[*(v16 + 36)];
  sub_29D78DE34(0);
  v38 = *(v37 + 28);
  (*(v11 + 32))(v36 + v38, v14, v10);
  v33(v36 + v38, 0, 1, v10);
  *v36 = KeyPath;
  v39 = sub_29D9390E8();
  v40 = v66;
  sub_29D938EC8();
  v41 = sub_29D78DF50();
  v42 = v63;
  MEMORY[0x29ED697D0](v39, 0, 0, v40, v35, v41);
  (*(v69 + 8))(v40, v70);
  sub_29D78EBE4(v19, &qword_2A17B44D0, v65, v64, sub_29D78E588);
  v43 = v62;
  v84 = v62;
  sub_29D78E32C(0);
  v45 = v44;
  v86 = v35;
  v87 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_29D78E3E0(255);
  v48 = v47;
  v49 = sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
  v86 = v48;
  v87 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v67;
  v52 = v71;
  sub_29D9394C8();
  (*(v72 + 8))(v42, v52);
  v86 = v52;
  v87 = v45;
  v88 = OpaqueTypeConformance2;
  v89 = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v68;
  v54 = v73;
  sub_29D939458();
  (*(v74 + 8))(v51, v54);
  v55 = v77;
  sub_29D78F178(v43, v77, type metadata accessor for BloodPressureJournalAddDataView);
  v56 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v57 = swift_allocObject();
  sub_29D78EC4C(v55, v57 + v56);
  v58 = (v53 + *(v75 + 36));
  *v58 = sub_29D78ECB0;
  v58[1] = v57;
  v58[2] = 0;
  v58[3] = 0;
  sub_29D78F178(v43, v55, type metadata accessor for BloodPressureJournalAddDataView);
  v59 = swift_allocObject();
  sub_29D78EC4C(v55, v59 + v56);
  v60 = v80;
  sub_29D9387F8();
  sub_29D78EEF4();
  sub_29D9394F8();

  (*(v82 + 8))(v60, v83);
  return sub_29D78EBE4(v53, &qword_2A17B46B0, v76, MEMORY[0x29EDBC918], sub_29D78DD1C);
}

uint64_t sub_29D786828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_29D78DD1C(0, &qword_2A17B45C8, type metadata accessor for FooterTextView, MEMORY[0x29EDBC428]);
  v63 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v60 - v5;
  sub_29D78D814(0);
  v66 = v7;
  v71 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v65 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v70 = &v60 - v12;
  sub_29D78D648(0);
  v64 = v13;
  v61 = *(v13 - 8);
  v14 = v61;
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v69 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v20 = &v60 - v19;
  sub_29D78D460(0);
  v22 = v21 - 8;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v68 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v60 - v27;
  sub_29D786E48(&v60 - v27);
  v29 = [objc_opt_self() systemGroupedBackgroundColor];
  v74 = sub_29D939528();
  v30 = sub_29D939778();
  sub_29D78D494(0);
  *&v28[*(v31 + 36)] = v30;
  v32 = &v28[*(v22 + 44)];
  v62 = v28;
  v32[32] = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v73 = a1;
  sub_29D78D6AC(0);
  v33 = MEMORY[0x29EDBBE80];
  sub_29D78DB54(255, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
  v35 = v34;
  v36 = sub_29D9339F8();
  v37 = sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, v33, MEMORY[0x29EDBBE88]);
  v38 = sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v74 = v35;
  v75 = v36;
  v76 = v37;
  v77 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v20;
  v60 = v20;
  sub_29D939818();
  v72 = a1;
  sub_29D788B60(v6);
  v40 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 36));
  v41 = *v40;
  v42 = v40[1];
  v43 = &v6[*(type metadata accessor for FooterTextView(0) + 20)];
  *v43 = v41;
  v43[1] = v42;
  *&v6[*(v63 + 36)] = xmmword_29D947710;
  sub_29D695554(v41, v42);
  sub_29D78D8A8(0);
  sub_29D78F9B4(&qword_2A17B46C8, sub_29D78D8A8, MEMORY[0x29EDBCC30]);
  sub_29D78F20C();
  v44 = v70;
  sub_29D939828();
  v45 = v68;
  sub_29D78F178(v28, v68, sub_29D78D460);
  v46 = *(v14 + 16);
  v47 = v69;
  v48 = v64;
  v46(v69, v39, v64);
  v49 = *(v71 + 16);
  v50 = v65;
  v51 = v44;
  v52 = v66;
  v49(v65, v51, v66);
  v53 = v45;
  v54 = v67;
  sub_29D78F178(v53, v67, sub_29D78D460);
  sub_29D78D3D8(0);
  v56 = v55;
  v46((v54 + *(v55 + 48)), v47, v48);
  v49((v54 + *(v56 + 64)), v50, v52);
  v57 = *(v71 + 8);
  v57(v70, v52);
  v58 = *(v61 + 8);
  v58(v60, v48);
  sub_29D78FB8C(v62, sub_29D78D460);
  v57(v50, v52);
  v58(v69, v48);
  return sub_29D78FB8C(v68, sub_29D78D460);
}

__n128 sub_29D786E48@<Q0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v3 = sub_29D939D18();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - v10;
  v26 = sub_29D939A18();
  v12 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A2BE98;
  (*(v4 + 16))(v8, v11, v3);
  sub_29D935E88();
  v17 = v16;
  sub_29D933A98();
  sub_29D939D98();
  (*(v4 + 8))(v11, v3);
  v18 = [objc_opt_self() systemPinkColor];
  sub_29D939A08();
  sub_29D9398A8();
  sub_29D9388E8();
  v19 = v27;
  (*(v12 + 32))(v27, v15, v26);
  sub_29D78DD1C(0, &qword_2A17B4510, MEMORY[0x29EDC4348], MEMORY[0x29EDBC5F8]);
  v21 = v19 + *(v20 + 36);
  v22 = v33;
  *(v21 + 64) = v32;
  *(v21 + 80) = v22;
  *(v21 + 96) = v34;
  v23 = v29;
  *v21 = v28;
  *(v21 + 16) = v23;
  result = v31;
  *(v21 + 32) = v30;
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_29D7871C8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v68 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v59 = *(v68 - 8);
  MEMORY[0x2A1C7C4A8](v68, v1);
  v60 = v2;
  v61 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D9339F8();
  v63 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67, v3);
  v62 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29D938E18();
  v52[2] = *(v58 - 8);
  MEMORY[0x2A1C7C4A8](v58, v5);
  v57 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F3F4(0);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v54 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F790(0, &qword_2A17B3370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v66 = v52 - v12;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v14 = v13;
  v65 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v52 - v16;
  v18 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v20 = sub_29D939D18();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = v52 - v27;
  sub_29D78DB54(0, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
  v55 = *(v29 - 8);
  v56 = v29;
  MEMORY[0x2A1C7C4A8](v29, v30);
  v53 = v52 - v31;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v32 = qword_2A1A2BE98;
  (*(v21 + 16))(v25, v28, v20);
  sub_29D935E88();
  v33 = v32;
  sub_29D933A98();
  v34 = sub_29D939D98();
  v36 = v35;
  (*(v21 + 8))(v28, v20);
  v70 = v34;
  v71 = v36;
  v37 = v69;
  sub_29D939858();
  swift_getKeyPath();
  sub_29D939878();

  (*(v65 + 8))(v17, v14);
  v38 = *(v68 + 28);
  v39 = sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  v40 = v67;
  result = sub_29D939CF8();
  if (result)
  {
    v42 = v63;
    v65 = *(v63 + 16);
    (v65)(v54, v37 + v38, v40);
    sub_29D78F790(0, &qword_2A17B4740, MEMORY[0x29EDBC000], MEMORY[0x29EDC9E90]);
    v52[1] = v14;
    v68 = v39;
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_29D93F680;
    sub_29D938E08();
    sub_29D938DF8();
    v72[0] = v43;
    sub_29D78F9B4(&qword_2A17B4748, MEMORY[0x29EDBC000], MEMORY[0x29EDBC008]);
    sub_29D78F488(0);
    sub_29D78F9B4(&unk_2A17B4758, sub_29D78F488, MEMORY[0x29EDC9A70]);
    sub_29D93A888();
    sub_29D69AB60();
    v44 = v53;
    sub_29D938608();
    sub_29D939848();
    v45 = v70;
    swift_getKeyPath();
    v70 = v45;
    sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
    sub_29D933E18();

    v46 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
    swift_beginAccess();
    v47 = v62;
    (v65)(v62, v45 + v46, v40);

    v48 = v61;
    sub_29D78F178(v37, v61, type metadata accessor for BloodPressureJournalAddDataView);
    v49 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v50 = swift_allocObject();
    sub_29D78EC4C(v48, v50 + v49);
    sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, MEMORY[0x29EDBBE80], MEMORY[0x29EDBBE88]);
    v51 = v56;
    sub_29D9394E8();

    (*(v42 + 8))(v47, v40);
    return (*(v55 + 8))(v44, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D787B5C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  sub_29D78DA08(0);
  v42 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78D940(0);
  v9 = v8;
  v45 = *(v8 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v44 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v43 = v36 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v41 = v36 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v37 = v36 - v20;
  sub_29D787F90(v7);
  v21 = (a1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 20));
  v40 = *v21;
  v39 = *(v21 + 1);
  v38 = v21[16];
  LOBYTE(v50) = v40;
  v51 = v39;
  v52 = v38;
  sub_29D78D090(0);
  v36[2] = v22;
  sub_29D938648();
  v50 = v47;
  v51 = v48;
  v52 = v49;
  LOBYTE(v47) = 0;
  sub_29D78E71C(0, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
  v36[1] = v23;
  sub_29D78DC6C();
  sub_29D78D118();
  v24 = v42;
  sub_29D9394B8();

  v25 = *(v4 + 8);
  v36[0] = v4 + 8;
  v25(v7, v24);
  sub_29D788578(v7);
  LOBYTE(v50) = v40;
  v51 = v39;
  v52 = v38;
  sub_29D938648();
  v50 = v47;
  v51 = v48;
  v52 = v49;
  LOBYTE(v47) = 1;
  v26 = v41;
  sub_29D9394B8();

  v25(v7, v24);
  v27 = v45;
  v28 = *(v45 + 16);
  v29 = v43;
  v30 = v37;
  v28(v43, v37, v9);
  v31 = v44;
  v28(v44, v26, v9);
  v32 = v46;
  v28(v46, v29, v9);
  sub_29D78D8DC(0);
  v28(&v32[*(v33 + 48)], v31, v9);
  v34 = *(v27 + 8);
  v34(v26, v9);
  v34(v30, v9);
  v34(v31, v9);
  return (v34)(v29, v9);
}

uint64_t sub_29D787F90@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v47 = v1;
  v49 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v2);
  v44 = &v38 - v3;
  v4 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v38 - v13;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2BE98;
  v41 = qword_2A1A2BE98;
  v40 = unk_2A1A2BEA0;
  v16 = qword_2A1A2BEA8;
  v43 = *(v7 + 16);
  v43(v11, v14, v6);
  v38 = v16;
  sub_29D935E88();
  v42 = v15;
  sub_29D933A98();
  v45 = sub_29D939D98();
  v46 = v17;
  v39 = *(v7 + 8);
  v39(v14, v6);
  v18 = v44;
  v19 = v47;
  sub_29D939858();
  swift_getKeyPath();
  v48 = v6;
  sub_29D939878();

  (v49[1])(v18, v19);
  v20 = v62;
  v21 = v63;
  v22 = v64;
  swift_getKeyPath();
  v59 = v20;
  v60 = v21;
  v61 = v22;
  sub_29D78F790(0, &qword_2A17B46F0, sub_29D78F314, MEMORY[0x29EDBCB78]);
  sub_29D939788();

  v24 = v55;
  v23 = v56;
  v47 = v57;
  LODWORD(v44) = v58;

  sub_29D939D08();
  v25 = v48;
  v43(v11, v14, v48);
  sub_29D935E88();
  v26 = v42;
  sub_29D933A98();
  v27 = sub_29D939D98();
  v29 = v28;
  v30 = (v39)(v14, v25);
  v49 = &v38;
  v31 = v46;
  v53 = v45;
  v54 = v46;
  MEMORY[0x2A1C7C4A8](v30, v32);
  *(&v38 - 8) = v33;
  *(&v38 - 7) = v31;
  *(&v38 - 6) = v24;
  *(&v38 - 5) = v23;
  *(&v38 - 4) = v47;
  *(&v38 - 24) = v44;
  *(&v38 - 2) = v27;
  *(&v38 - 1) = v29;
  sub_29D78E4C8(0, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4, MEMORY[0x29EDBC130]);
  sub_29D78DAAC(255);
  v35 = v34;
  v36 = sub_29D78DBB4();
  sub_29D935E88();
  v51 = v35;
  v52 = v36;
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  sub_29D9387A8();
}

uint64_t sub_29D788578@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  v47 = v1;
  v49 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v2);
  v44 = &v38 - v3;
  v4 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v38 - v13;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2BE98;
  v41 = qword_2A1A2BE98;
  v40 = unk_2A1A2BEA0;
  v16 = qword_2A1A2BEA8;
  v43 = *(v7 + 16);
  v43(v11, v14, v6);
  v38 = v16;
  sub_29D935E88();
  v42 = v15;
  sub_29D933A98();
  v45 = sub_29D939D98();
  v46 = v17;
  v39 = *(v7 + 8);
  v39(v14, v6);
  v18 = v44;
  v19 = v47;
  sub_29D939858();
  swift_getKeyPath();
  v48 = v6;
  sub_29D939878();

  (v49[1])(v18, v19);
  v20 = v62;
  v21 = v63;
  v22 = v64;
  swift_getKeyPath();
  v59 = v20;
  v60 = v21;
  v61 = v22;
  sub_29D78F790(0, &qword_2A17B46F0, sub_29D78F314, MEMORY[0x29EDBCB78]);
  sub_29D939788();

  v24 = v55;
  v23 = v56;
  v47 = v57;
  LODWORD(v44) = v58;

  sub_29D939D08();
  v25 = v48;
  v43(v11, v14, v48);
  sub_29D935E88();
  v26 = v42;
  sub_29D933A98();
  v27 = sub_29D939D98();
  v29 = v28;
  v30 = (v39)(v14, v25);
  v49 = &v38;
  v31 = v46;
  v53 = v45;
  v54 = v46;
  MEMORY[0x2A1C7C4A8](v30, v32);
  *(&v38 - 8) = v33;
  *(&v38 - 7) = v31;
  *(&v38 - 6) = v24;
  *(&v38 - 5) = v23;
  *(&v38 - 4) = v47;
  *(&v38 - 24) = v44;
  *(&v38 - 2) = v27;
  *(&v38 - 1) = v29;
  sub_29D78E4C8(0, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4, MEMORY[0x29EDBC130]);
  sub_29D78DAAC(255);
  v35 = v34;
  v36 = sub_29D78DBB4();
  sub_29D935E88();
  v51 = v35;
  v52 = v36;
  swift_getOpaqueTypeConformance2();
  sub_29D69AB60();
  sub_29D9387A8();
}

uint64_t sub_29D788B60@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_29D9334C8();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9333A8();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29D9333B8();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v7);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9333D8();
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F2E0(0);
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  v52 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v20 = sub_29D939D18();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v47 - v27;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v29 = qword_2A1A2BE98;
  v49 = unk_2A1A2BEA0;
  v30 = *(v21 + 16);
  v30(v25, v28, v20);
  sub_29D935E88();
  v50 = v29;
  sub_29D933A98();
  v48 = sub_29D939D98();
  v51 = v31;
  v32 = *(v21 + 8);
  v32(v28, v20);
  sub_29D939D08();
  v30(v25, v28, v20);
  sub_29D935E88();
  v33 = v50;
  sub_29D933A98();
  v34 = v48;
  v35 = sub_29D939D98();
  v37 = v36;
  v32(v28, v20);
  v38 = v51;
  v39 = sub_29D939E08();
  v41 = v40;
  v62 = v34;
  v63 = v38;
  sub_29D935E88();
  MEMORY[0x29ED6A240](23328, 0xE200000000000000);
  MEMORY[0x29ED6A240](v35, v37);

  MEMORY[0x29ED6A240](10333, 0xE200000000000000);
  MEMORY[0x29ED6A240](v39, v41);

  MEMORY[0x29ED6A240](41, 0xE100000000000000);
  v42 = sub_29D9336F8();
  (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
  (*(v55 + 104))(v56, *MEMORY[0x29EDB9A10], v57);
  (*(v59 + 104))(v58, *MEMORY[0x29EDB9A08], v60);
  sub_29D9333C8();
  v43 = v52;
  sub_29D933458();

  v44 = sub_29D933468();
  v45 = *(v44 - 8);
  (*(v45 + 56))(v43, 0, 1, v44);
  return (*(v45 + 32))(v61, v43, v44);
}

uint64_t sub_29D7892C0(uint64_t a1)
{
  v2 = sub_29D938E68();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D78E3E0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D938E58();
  v16 = a1;
  sub_29D78E4C8(0, &qword_2A17B4650, sub_29D78E554, sub_29D78E76C, MEMORY[0x29EDBC168]);
  sub_29D78E554(255);
  v11 = v10;
  v12 = sub_29D78E76C();
  v17 = v11;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_29D9386E8();
  v13 = sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
  MEMORY[0x29ED69290](v9, v5, v13);
  return (*(v6 + 8))(v9, v5);
}

void sub_29D7894D0(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = sub_29D9388B8();
  v30 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v8);
  v9 = sub_29D9385D8();
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E5FC(0);
  v14 = v13;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78E554(0);
  v29[1] = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9385C8();
  sub_29D78F178(v1, v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressureJournalAddDataView);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_29D78EC4C(v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  MEMORY[0x29ED69AD0](v12, sub_29D78F104, v23);
  LOBYTE(v12) = sub_29D78A52C();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v12 & 1) == 0;
  v26 = &v17[*(v14 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_29D74D334;
  v26[2] = v25;
  v33 = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243DA90);
  v27 = sub_29D939F18();
  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    sub_29D78E81C();
    sub_29D939438();

    sub_29D78FB8C(v17, sub_29D78E5FC);
    sub_29D9388A8();
    sub_29D78E76C();
    sub_29D939408();
    (*(v30 + 8))(v4, v32);
    sub_29D78FB8C(v21, sub_29D78E554);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D7898D4(uint64_t a1)
{
  type metadata accessor for BloodPressureJournalAddDataView(0);
  sub_29D78D090(0);
  return sub_29D938638();
}

void *sub_29D789940(uint64_t a1)
{
  type metadata accessor for BloodPressureJournalAddDataView(0);
  sub_29D78D090(0);
  result = sub_29D938628();
  if (v2 != 2)
  {
    return sub_29D938638();
  }

  return result;
}

uint64_t sub_29D789A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v4 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  v5 = sub_29D9339F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_29D789AF8(uint64_t a1)
{
  v2 = sub_29D9339F8();
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return sub_29D7B0F3C(v5);
}

uint64_t sub_29D789BC4(uint64_t a1)
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  v6 = v14;
  type metadata accessor for BloodPressureJournalAddDataView(0);
  sub_29D939848();
  v7 = v14;
  swift_getKeyPath();
  v14 = v7;
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v8 = OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__logDate;
  swift_beginAccess();
  (*(v2 + 16))(v5, v7 + v8, v1);

  sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
  LOBYTE(v8) = sub_29D939CF8();
  (*(v2 + 8))(v5, v1);
  v9 = (v8 ^ 1) & 1;
  if (v9 == *(v6 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate))
  {
    *(v6 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x2A1C7C4A8](KeyPath, v12);
    v13[-2] = v6;
    LOBYTE(v13[-1]) = v9;
    v13[2] = v6;
    sub_29D933E08();
  }
}

id sub_29D789EC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_29D789F80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_29D7B0A9C(v1);
}

double sub_29D789FB0(id a1)
{
  if (a1)
  {
    [a1 _value];
  }

  return result;
}

void sub_29D789FF0(uint64_t a1, id *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_self() millimeterOfMercuryUnit];
    v5 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v3];
  }

  *a2 = v5;
}

id sub_29D78A094@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_29D78A14C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_29D7B0CC4(v1);
}

uint64_t sub_29D78A17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v39 = a7;
  v40 = a8;
  v36 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a1;
  v41 = a9;
  v38 = sub_29D933658();
  v11 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v15 - 8, v16);
  sub_29D78F380(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  sub_29D78DAAC(0);
  v37 = v25;
  MEMORY[0x2A1C7C4A8](v25, v26);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v33;
  v49 = a2;
  v44 = a3;
  v45 = v34;
  v46 = v35;
  v47 = v36 & 1;

  sub_29D935E88();
  sub_29D933A78();
  sub_29D74D930();
  sub_29D9335B8();
  sub_29D933648();
  MEMORY[0x29ED639E0](v14, v18);
  (*(v11 + 8))(v14, v38);
  (*(v19 + 8))(v23, v18);
  v42 = v39;
  v43 = v40;
  sub_29D69AB60();
  sub_29D935E88();
  sub_29D9392F8();
  sub_29D78F9B4(&qword_2A17B4720, sub_29D78F380, MEMORY[0x29EDB9AD8]);
  sub_29D9398D8();
  KeyPath = swift_getKeyPath();
  v30 = &v28[*(v37 + 36)];
  *v30 = KeyPath;
  v30[8] = 2;
  sub_29D78DBB4();
  sub_29D9393B8();
  return sub_29D78FB8C(v28, sub_29D78DAAC);
}

BOOL sub_29D78A52C()
{
  v1 = v0;
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  sub_29D939848();
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v2 = *(v15 + 48);
  v3 = v2;

  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v5 = v4;
  if (!v2)
  {
LABEL_5:

    return 0;
  }

  v6 = *(v1 + *(type metadata accessor for BloodPressureJournalAddDataView(0) + 24));
  v7 = v3;
  v8 = [v6 validateQuantity:v7 ofType:v5];

  if (v8 != 2)
  {
    sub_29D939848();
    swift_getKeyPath();
    sub_29D933E18();

    v9 = *(v15 + 56);
    v10 = v9;

    v4 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
    v11 = v4;
    if (v9)
    {
      v12 = v10;
      v13 = [v6 validateQuantity:v12 ofType:v11];

      return v13 != 2;
    }

    goto LABEL_5;
  }

  return 0;
}

id sub_29D78A78C(uint64_t a1)
{
  v65 = a1;
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v85 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69AC2C(0);
  v83 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933418();
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  MEMORY[0x2A1C7C4A8](v7, v9);
  v80 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9333F8();
  v69 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11, v12);
  v78 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v77 = &v60 - v16;
  v17 = sub_29D933428();
  v79 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F920(0);
  v22 = v21 - 8;
  MEMORY[0x2A1C7C4A8](v21, v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D933468();
  v66 = *(v26 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v26, v27);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v31);
  v63 = &v60 - v32;
  v33 = [objc_allocWithZone(MEMORY[0x29EDC7D60]) init];
  [v33 setEditable_];
  [v33 setScrollEnabled_];
  [v33 setSelectable_];
  [v33 _setInteractiveTextSelectionDisabled_];
  [v33 setAdjustsFontForContentSizeCategory_];
  v34 = objc_opt_self();
  v35 = v33;
  v67 = v34;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor_];
  v62 = v35;

  v37 = *(v66 + 16);
  v64 = v26;
  v37(v30, v84, v26);
  v84 = v30;
  sub_29D933438();
  v38 = v79;
  (*(v79 + 16))(v25, v20, v17);
  v39 = *(v22 + 44);
  v40 = v61;
  v41 = v25;
  v42 = sub_29D78F9B4(&qword_2A17B47A0, MEMORY[0x29EDB9A50], MEMORY[0x29EDB9A58]);
  sub_29D93A148();
  (*(v38 + 8))(v20, v17);
  v79 = v82 + 8;
  v72 = (v69 + 2);
  v71 = (v69 + 4);
  v70 = *MEMORY[0x29EDC80F8];
  ++v69;
  v75 = v25;
  v76 = v17;
  v74 = v39;
  v73 = v42;
  v68 = v11;
  while (1)
  {
    v43 = v80;
    sub_29D93A158();
    sub_29D78F9B4(&qword_2A17B47A8, MEMORY[0x29EDB9A40], MEMORY[0x29EDB9A48]);
    v44 = v81;
    v45 = sub_29D939CF8();
    (*v79)(v43, v44);
    if (v45)
    {
      break;
    }

    v46 = sub_29D93A178();
    v47 = v77;
    (*v72)(v77);
    v46(v88, 0);
    sub_29D93A168();
    v48 = v78;
    (*v71)(v78, v47, v11);
    sub_29D9333E8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
    v87 = sub_29D93A658();
    v82 = sub_29D78F9B4(&qword_2A17B16D0, sub_29D69AC2C, MEMORY[0x29EDC9C40]);
    v49 = sub_29D933498();
    sub_29D933388();
    sub_29D78F9B4(&qword_2A17B47C0, MEMORY[0x29EDC7748], MEMORY[0x29EDC7740]);
    v50 = v40;
    v51 = sub_29D9334E8();
    sub_29D78F9FC(0);
    sub_29D78FA90();
    sub_29D933618();
    v51(v86, 0);
    v40 = v50;

    v49(v88, 0);
    v52 = v85;
    sub_29D78FB8C(v50, sub_29D69AC2C);
    sub_29D78FAE4();
    sub_29D933408();
    v53 = sub_29D9336F8();
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
      sub_29D78FB8C(v85, sub_29D6D22BC);
      sub_29D9333E8();
      swift_getKeyPath();
      swift_getKeyPath();
      v87 = [v67 secondaryLabelColor];
      v54 = sub_29D933498();
      v55 = sub_29D9334E8();
      sub_29D78FB38();
      sub_29D933618();
      v55(v86, 0);

      v54(v88, 0);
      sub_29D78FB8C(v40, sub_29D69AC2C);
      v11 = v68;
      (*v69)(v48, v68);
    }

    else
    {
      v11 = v68;
      (*v69)(v48, v68);
      sub_29D78FB8C(v85, sub_29D6D22BC);
    }

    v41 = v75;
  }

  sub_29D69567C(0, &qword_2A17B47E8, 0x29EDB9F30);
  sub_29D78FB8C(v41, sub_29D78F920);
  (*(v66 + 32))(v63, v84, v64);
  v56 = sub_29D93A4D8();
  v57 = v62;
  [v62 setAttributedText_];

  sub_29D78FBEC(0);
  sub_29D938FB8();
  v58 = v88[0];
  [v57 setDelegate_];

  return v57;
}

uint64_t sub_29D78B294(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_29D93AD58();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a2 & 1) == 0)
  {
    v14 = *&a1;
    [a5 sizeThatFits_];
    v17 = v16;
    if (v15 <= *&a1)
    {
      v14 = v15;
    }

    (*(v9 + 104))(v12, *MEMORY[0x29EDC9EC0], v8);
    v18 = [a5 traitCollection];
    [v18 displayScale];
    sub_29D851BB8(v12, v19, v14);

    v20 = [a5 traitCollection];
    [v20 displayScale];
    sub_29D851BB8(v12, v21, v17);

    (*(v9 + 8))(v12, v8);
    return a1;
  }

  return result;
}

void sub_29D78B450(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtCV5HeartP33_EC6B7D1F88CF0668023BACCC5A7C26EA14FooterTextView11Coordinator_linkAction);
    v4 = *(Strong + OBJC_IVAR____TtCV5HeartP33_EC6B7D1F88CF0668023BACCC5A7C26EA14FooterTextView11Coordinator_linkAction + 8);
    v5 = Strong;
    sub_29D695554(v3, v4);

    if (v3)
    {
      v3();
      sub_29D694784(v3, v4);
    }
  }
}

id sub_29D78B690@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = type metadata accessor for FooterTextView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV5HeartP33_EC6B7D1F88CF0668023BACCC5A7C26EA14FooterTextView11Coordinator_linkAction];
  *v9 = v5;
  v9[1] = v6;
  sub_29D695554(v5, v6);
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_29D78B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView, &unk_29D947A10);

  return MEMORY[0x2A1C5CF40](a1, a2, a3, v6);
}

uint64_t sub_29D78B7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView, &unk_29D947A10);

  return MEMORY[0x2A1C5CF08](a1, a2, a3, v6);
}

void sub_29D78B88C(uint64_t a1)
{
  sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView, &unk_29D947A10);
  sub_29D938DB8();
  __break(1u);
}

id sub_29D78B8E4()
{
  v1 = qword_2A17B4460;
  v2 = *(v0 + qword_2A17B4460);
  if (v2)
  {
    v3 = *(v0 + qword_2A17B4460);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelButtonTapped_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D78B96C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v5 = (v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (v1 + qword_2A17B4430);
  *v9 = 0;
  v9[1] = 0;
  v10 = qword_2A17B4450;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v1 + v10) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v11 = qword_2A17B4458;
  *(v1 + v11) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(v1 + qword_2A17B4460) = 0;
  *(v1 + qword_2A17B4438) = a1;
  v12 = objc_allocWithZone(MEMORY[0x29EDC4740]);

  v13 = [v12 init];
  v14 = qword_2A17B4440;
  *(v2 + qword_2A17B4440) = v13;
  v15 = *(a1 + 16);
  type metadata accessor for BloodPressureSampleFormatter();
  swift_allocObject();
  *(v2 + qword_2A17B4448) = sub_29D7C07C4(v15);
  v16 = *(v2 + v14);
  type metadata accessor for BloodPressureJournalLoggingModel(0);
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);

  v17 = v16;
  sub_29D939868();
  sub_29D78D1B4();
  sub_29D938658();
  *&v8[v5[8]] = v17;
  sub_29D9339A8();
  v18 = &v8[v5[10]];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v8[v5[11]];
  *v19 = 0;
  v19[1] = 0;
  v20 = sub_29D938CF8();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v20;

  v23 = sub_29D938D08();
  v25 = (v24 + v5[10]);
  v26 = *v25;
  v27 = v25[1];
  *v25 = sub_29D78F4F4;
  v25[1] = v21;
  sub_29D694784(v26, v27);
  v23(v35, 0);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = sub_29D938D08();
  v31 = (v30 + v5[11]);
  v32 = *v31;
  v33 = v31[1];
  *v31 = sub_29D78F4FC;
  v31[1] = v28;
  sub_29D694784(v32, v33);
  v29(v35, 0);

  return v22;
}

void sub_29D78BCC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D78C00C();
  }
}

void sub_29D78BD14(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + qword_2A17B4430);
    v3 = Strong;
    swift_unknownObjectRetain();

    if (v2)
    {
      sub_29D74109C(3);
      sub_29D936978();
    }
  }
}

void sub_29D78BDB4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BloodPressureJournalAddDataMainViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  v2 = sub_29D78B8E4();
  [v1 setLeftBarButtonItem_];

  v3 = *&v0[qword_2A17B4460];
  sub_29D88BBC8(&unk_2A243DB70);
  v4 = sub_29D939F18();
  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v6 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D78BF10(void *a1)
{
  v1 = a1;
  sub_29D78BDB4();
}

uint64_t sub_29D78BF58(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_29D93A868();
  sub_29D936978();
  sub_29D7B2224(2, 0);
  if (*&v4[qword_2A17B4430])
  {
    swift_unknownObjectRetain();
    sub_29D741688(1, 0, 0, 0);

    sub_29D936978();
  }

  else
  {
  }

  return sub_29D69417C(v6);
}

void sub_29D78C00C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v59 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6, v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v51 - v12;
  v14 = *&v0[qword_2A17B4438];
  swift_getKeyPath();
  v61 = v14;
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  v15 = *(v14 + 48);
  if (!v15)
  {
    goto LABEL_8;
  }

  v58 = v5;
  swift_getKeyPath();
  v61 = v14;
  v16 = v15;
  sub_29D933E18();

  v17 = *(v14 + 56);
  if (!v17)
  {

LABEL_8:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v30 = sub_29D937898();
    sub_29D69C6C0(v30, qword_2A1A2C008);
    v31 = sub_29D937878();
    v32 = sub_29D93A288();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136315138;
      v35 = sub_29D93AF08();
      v37 = sub_29D6C2364(v35, v36, &v61);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29D677000, v31, v32, "[%s] User has inputted nil values; unable to go to next page", v33, 0xCu);
      sub_29D69417C(v34);
      MEMORY[0x29ED6BE30](v34, -1, -1);
      MEMORY[0x29ED6BE30](v33, -1, -1);
    }

    return;
  }

  v56 = v6;
  v18 = *&v1[qword_2A17B4440];
  v19 = *&v1[qword_2A17B4450];
  v20 = v17;
  v21 = [v18 validateQuantity:v16 ofType:v19];
  v22 = [v18 validateQuantity:v20 ofType:*&v1[qword_2A17B4458]];
  v57 = v16;
  v23 = sub_29D7C08CC(v16);
  v25 = v24;
  ObjectType = v20;
  v26 = sub_29D7C08CC(v20);
  if (v21 == 1 || v22 == 1)
  {
    v52 = v26;
    v53 = v27;
    v54 = v23;
    v55 = v25;
    sub_29D939D08();
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    v38 = qword_2A1A2BE98;
    v39 = v59;
    v40 = v56;
    (*(v59 + 16))(v10, v13, v56);
    sub_29D935E88();
    v41 = v38;
    sub_29D933A98();
    sub_29D939D98();
    (*(v39 + 8))(v13, v40);
    sub_29D78F790(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_29D93F680;
    v43 = MEMORY[0x29EDC99B0];
    *(v42 + 56) = MEMORY[0x29EDC99B0];
    v44 = sub_29D69AD24();
    v45 = v55;
    *(v42 + 32) = v54;
    *(v42 + 40) = v45;
    *(v42 + 96) = v43;
    *(v42 + 104) = v44;
    v47 = v52;
    v46 = v53;
    *(v42 + 64) = v44;
    *(v42 + 72) = v47;
    *(v42 + 80) = v46;
    v28 = sub_29D939D38();
    v29 = v48;

    goto LABEL_16;
  }

  if (v22 | v21)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
LABEL_16:
    v49 = v57;
    sub_29D78C5E4(v28, v29);

LABEL_17:

    return;
  }

  sub_29D7B2224(2, 3u);
  v50 = *&v1[qword_2A17B4430];
  v49 = v57;
  if (!v50)
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  sub_29D831B0C(v1, v50);

  sub_29D936978();
}

void sub_29D78C5E4(uint64_t a1, void *a2)
{
  v43 = a2;
  v42 = a1;
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D939D18();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v35 - v13;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2BE98;
  v16 = v7 + 16;
  v46 = *(v7 + 16);
  v47 = unk_2A1A2BEA0;
  v46(v11, v14, v6);
  sub_29D935E88();
  v41 = v15;
  sub_29D933A98();
  sub_29D939D98();
  v39 = v11;
  v45 = *(v7 + 8);
  v40 = v7 + 8;
  v45(v14, v6);
  v17 = sub_29D939D28();
  v18 = sub_29D939D28();

  v37 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  sub_29D939D08();
  v19 = v39;
  v42 = v16;
  v46(v39, v14, v6);
  sub_29D935E88();
  v38 = v41;
  sub_29D933A98();
  v43 = v15;
  v41 = v5;
  sub_29D939D98();
  v45(v14, v6);
  v20 = swift_allocObject();
  v21 = v44;
  *(v20 + 16) = v44;
  v36 = v21;
  v22 = sub_29D939D28();

  aBlock[4] = sub_29D78F770;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D799960;
  aBlock[3] = &unk_2A2444D98;
  v23 = _Block_copy(aBlock);

  v44 = objc_opt_self();
  v24 = [v44 actionWithTitle:v22 style:0 handler:v23];
  _Block_release(v23);

  aBlock[0] = &unk_2A243D870;
  sub_29D88BBC8(&unk_2A243DAD0);
  v25 = sub_29D939F18();
  v26 = HKUIJoinStringsForAutomationIdentifier();

  if (v26)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v27 = sub_29D939D28();

    [v24 setAccessibilityIdentifier_];

    sub_29D939D08();
    v46(v19, v14, v6);
    sub_29D935E88();
    v28 = v38;
    sub_29D933A98();
    sub_29D939D98();
    v45(v14, v6);
    v29 = sub_29D939D28();

    v30 = [v44 actionWithTitle:v29 style:1 handler:0];

    aBlock[0] = &unk_2A243D870;
    sub_29D88BBC8(&unk_2A243DB20);
    v31 = sub_29D939F18();
    v32 = HKUIJoinStringsForAutomationIdentifier();

    if (v32)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v33 = sub_29D939D28();

      [v30 setAccessibilityIdentifier_];

      v34 = v37;
      [v37 addAction_];
      [v34 addAction_];
      [v36 presentViewController:v34 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29D78CCA4(uint64_t a1, char *a2)
{
  result = sub_29D7B2224(2, 3u);
  v4 = *&a2[qword_2A17B4430];
  if (v4)
  {
    swift_unknownObjectRetain();
    sub_29D831B0C(a2, v4);

    return sub_29D936978();
  }

  return result;
}

void sub_29D78CD80()
{
  sub_29D936978();

  v1 = *(v0 + qword_2A17B4460);
}

id sub_29D78CE28(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D78CE68(uint64_t a1)
{
  sub_29D936978();

  v2 = *(a1 + qword_2A17B4460);
}

void sub_29D78CF54(uint64_t a1)
{
  sub_29D78F790(319, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  if (v1 <= 0x3F)
  {
    sub_29D78D090(319);
    if (v2 <= 0x3F)
    {
      sub_29D69567C(319, &qword_2A17B44B8, 0x29EDC4740);
      if (v3 <= 0x3F)
      {
        sub_29D9339F8();
        if (v4 <= 0x3F)
        {
          sub_29D78F790(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D78D090(uint64_t a1)
{
  if (!qword_2A17B4498)
  {
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78D118();
    v1 = sub_29D938668();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4498);
    }
  }
}

unint64_t sub_29D78D118()
{
  result = qword_2A17B44A8;
  if (!qword_2A17B44A8)
  {
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78D1B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44A8);
  }

  return result;
}

unint64_t sub_29D78D1B4()
{
  result = qword_2A17B44B0;
  if (!qword_2A17B44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44B0);
  }

  return result;
}

unint64_t sub_29D78D238()
{
  result = qword_2A17B44C8;
  if (!qword_2A17B44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B44C8);
  }

  return result;
}

uint64_t sub_29D78D28C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B4430);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

void sub_29D78D310(uint64_t a1)
{
  if (!qword_2A17B44E8)
  {
    sub_29D78D3A4(255);
    sub_29D78F9B4(&qword_2A17B45D0, sub_29D78D3A4, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939268();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B44E8);
    }
  }
}

void sub_29D78D3D8(uint64_t a1)
{
  if (!qword_2A17B44F8)
  {
    sub_29D78D460(255);
    sub_29D78D648(255);
    sub_29D78D814(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B44F8);
    }
  }
}

void sub_29D78D494(uint64_t a1)
{
  if (!qword_2A17B4508)
  {
    sub_29D78DD1C(255, &qword_2A17B4510, MEMORY[0x29EDC4348], MEMORY[0x29EDBC5F8]);
    sub_29D78D520(255);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4508);
    }
  }
}

void sub_29D78D520(uint64_t a1)
{
  if (!qword_2A17B4518)
  {
    sub_29D938F68();
    sub_29D78F9B4(&qword_2A17B4520, MEMORY[0x29EDBC078], MEMORY[0x29EDBC070]);
    v1 = sub_29D938EB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4518);
    }
  }
}

void sub_29D78D5B4(uint64_t a1)
{
  if (!qword_2A17B4528)
  {
    sub_29D938E78();
    sub_29D78F9B4(&qword_2A17B4530, MEMORY[0x29EDBC020], MEMORY[0x29EDBC018]);
    v1 = sub_29D938EB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4528);
    }
  }
}

void sub_29D78D648(uint64_t a1)
{
  if (!qword_2A17B4538)
  {
    sub_29D78D6AC(255);
    v1 = sub_29D939838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4538);
    }
  }
}

void sub_29D78D6AC(uint64_t a1)
{
  if (!qword_2A17B4540)
  {
    v1 = MEMORY[0x29EDBBE80];
    sub_29D78DB54(255, &qword_2A17B2FC0, MEMORY[0x29EDBBE80]);
    sub_29D9339F8();
    sub_29D78D7D0(&qword_2A17B4550, &qword_2A17B2FC0, v1, MEMORY[0x29EDBBE88]);
    sub_29D78F9B4(&qword_2A17B4C90, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4540);
    }
  }
}

uint64_t sub_29D78D7D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D78DB54(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D78D814(uint64_t a1)
{
  if (!qword_2A17B4560)
  {
    sub_29D78D8A8(255);
    sub_29D78DD1C(255, &qword_2A17B45C8, type metadata accessor for FooterTextView, MEMORY[0x29EDBC428]);
    v1 = sub_29D939838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4560);
    }
  }
}

void sub_29D78D8DC(uint64_t a1)
{
  if (!qword_2A17B4570)
  {
    sub_29D78D940(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B4570);
    }
  }
}

void sub_29D78D940(uint64_t a1)
{
  if (!qword_2A17B4578)
  {
    sub_29D78DA08(255);
    sub_29D78E71C(255, &qword_2A17B44A0, &type metadata for BloodPressureJournalAddDataView.FocusedField, MEMORY[0x29EDC9C68]);
    sub_29D78DC6C();
    sub_29D78D118();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4578);
    }
  }
}

void sub_29D78DA08(uint64_t a1)
{
  if (!qword_2A17B4580)
  {
    sub_29D78E4C8(255, &qword_2A17B4588, sub_29D78DAAC, sub_29D78DBB4, MEMORY[0x29EDBC130]);
    v1 = sub_29D9387B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4580);
    }
  }
}

void sub_29D78DAAC(uint64_t a1)
{
  if (!qword_2A17B4590)
  {
    sub_29D78DB54(255, &qword_2A17B4598, MEMORY[0x29EDBC2D0]);
    sub_29D78E71C(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4590);
    }
  }
}

void sub_29D78DB54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D78DBB4()
{
  result = qword_2A17B45A8;
  if (!qword_2A17B45A8)
  {
    sub_29D78DAAC(255);
    sub_29D78D7D0(&unk_2A17B45B0, &qword_2A17B4598, MEMORY[0x29EDBC2D0], MEMORY[0x29EDBC2D8]);
    sub_29D6F8E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B45A8);
  }

  return result;
}

unint64_t sub_29D78DC6C()
{
  result = qword_2A17B45C0;
  if (!qword_2A17B45C0)
  {
    sub_29D78DA08(255);
    sub_29D78DAAC(255);
    sub_29D78DBB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B45C0);
  }

  return result;
}

void sub_29D78DD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D78DDA0(uint64_t a1)
{
  if (!qword_2A17B45D8)
  {
    sub_29D938FA8();
    sub_29D78F9B4(&qword_2A17B45E0, MEMORY[0x29EDBC088], MEMORY[0x29EDBC080]);
    v1 = sub_29D938EB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B45D8);
    }
  }
}

void sub_29D78DE9C(uint64_t a1)
{
  if (!qword_2A17B45F8)
  {
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B45F8);
    }
  }
}

unint64_t sub_29D78DF50()
{
  result = qword_2A17B4600;
  if (!qword_2A17B4600)
  {
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78E030();
    sub_29D78F9B4(&qword_2A17B4630, sub_29D78DE34, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4600);
  }

  return result;
}

unint64_t sub_29D78E030()
{
  result = qword_2A17B4608;
  if (!qword_2A17B4608)
  {
    sub_29D78D2A8(255);
    sub_29D78E0E0();
    sub_29D78F9B4(&qword_2A17B4628, sub_29D78DDA0, MEMORY[0x29EDBC850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4608);
  }

  return result;
}

unint64_t sub_29D78E0E0()
{
  result = qword_2A17B4610;
  if (!qword_2A17B4610)
  {
    sub_29D78D2DC(255);
    sub_29D78F9B4(&qword_2A17B4618, sub_29D78D310, MEMORY[0x29EDBC0D0]);
    sub_29D78F9B4(&qword_2A17B4620, sub_29D78D5B4, MEMORY[0x29EDBC850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4610);
  }

  return result;
}

void sub_29D78E1C0(uint64_t a1)
{
  if (!qword_2A17B4638)
  {
    sub_29D78DE9C(255);
    sub_29D78E32C(255);
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0(255);
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4638);
    }
  }
}

void sub_29D78E32C(uint64_t a1)
{
  if (!qword_2A17B4640)
  {
    sub_29D78E3E0(255);
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B4640);
    }
  }
}

void sub_29D78E3E0(uint64_t a1)
{
  if (!qword_2A17B4648)
  {
    sub_29D78E4C8(255, &qword_2A17B4650, sub_29D78E554, sub_29D78E76C, MEMORY[0x29EDBC168]);
    sub_29D78E554(255);
    sub_29D78E76C();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29D9386F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4648);
    }
  }
}

void sub_29D78E4C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D78E588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D78E5FC(uint64_t a1)
{
  if (!qword_2A17B4660)
  {
    sub_29D78E688(255);
    sub_29D78E71C(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4660);
    }
  }
}

void sub_29D78E688(uint64_t a1)
{
  if (!qword_2A17B4668)
  {
    sub_29D938BA8();
    sub_29D78F9B4(&unk_2A17B4670, MEMORY[0x29EDBBFC8], MEMORY[0x29EDBBFC0]);
    v1 = sub_29D939718();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4668);
    }
  }
}

void sub_29D78E71C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D78E76C()
{
  result = qword_2A17B4680;
  if (!qword_2A17B4680)
  {
    sub_29D78E554(255);
    sub_29D78E81C();
    sub_29D78F9B4(&qword_2A17B46A0, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC0A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4680);
  }

  return result;
}

unint64_t sub_29D78E81C()
{
  result = qword_2A17B4688;
  if (!qword_2A17B4688)
  {
    sub_29D78E5FC(255);
    sub_29D78F9B4(&unk_2A17B4690, sub_29D78E688, MEMORY[0x29EDBC278]);
    sub_29D72883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4688);
  }

  return result;
}

void sub_29D78E8CC(uint64_t a1)
{
  if (!qword_2A17B46B8)
  {
    sub_29D78E1C0(255);
    sub_29D78DE9C(255);
    sub_29D78E32C(255);
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0(255);
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B46B8);
    }
  }
}

uint64_t sub_29D78EA70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D78F9B4(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel, &unk_29D948F98);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__didChangeDate);
  return result;
}

uint64_t sub_29D78EB48(uint64_t a1)
{
  sub_29D78DE68(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D78F178(a1, v5, sub_29D78DE68);
  return MEMORY[0x29ED68E30](v5);
}

uint64_t sub_29D78EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29D78EC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAddDataView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D78ECC8()
{
  v1 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_29D78F790(0, &unk_2A17B4478, type metadata accessor for BloodPressureJournalLoggingModel, MEMORY[0x29EDBCBA8]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[7];
  v7 = sub_29D9339F8();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  if (*(v0 + v3 + v1[8]))
  {
  }

  if (*(v0 + v3 + v1[9]))
  {
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D78EE80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BloodPressureJournalAddDataView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_29D78EEF4()
{
  result = qword_2A17B46C0;
  if (!qword_2A17B46C0)
  {
    sub_29D78DD1C(255, &qword_2A17B46B0, sub_29D78E8CC, MEMORY[0x29EDBC918]);
    sub_29D78E1C0(255);
    sub_29D78DE9C(255);
    sub_29D78E32C(255);
    sub_29D78E588(255, &qword_2A17B44D0, sub_29D78D2A8, sub_29D78DE34);
    sub_29D78DF50();
    swift_getOpaqueTypeConformance2();
    sub_29D78E3E0(255);
    sub_29D78F9B4(&qword_2A17B46A8, sub_29D78E3E0, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B46C0);
  }

  return result;
}

uint64_t sub_29D78F104()
{
  v1 = type metadata accessor for BloodPressureJournalAddDataView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_29D78F178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29D78F20C()
{
  result = qword_2A17B46D0;
  if (!qword_2A17B46D0)
  {
    sub_29D78DD1C(255, &qword_2A17B45C8, type metadata accessor for FooterTextView, MEMORY[0x29EDBC428]);
    sub_29D78F9B4(&unk_2A17B46D8, type metadata accessor for FooterTextView, &unk_29D947AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B46D0);
  }

  return result;
}

void sub_29D78F314(uint64_t a1)
{
  if (!qword_2A17B46F8)
  {
    sub_29D69567C(255, &qword_2A17B4700, 0x29EDBACF8);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B46F8);
    }
  }
}

void sub_29D78F380(uint64_t a1)
{
  if (!qword_2A17B4710)
  {
    sub_29D74D930();
    v1 = sub_29D9335F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4710);
    }
  }
}

void sub_29D78F3F4(uint64_t a1)
{
  if (!qword_2A17B4728)
  {
    sub_29D9339F8();
    sub_29D78F9B4(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v1 = sub_29D93ABC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4728);
    }
  }
}

uint64_t sub_29D78F504()
{
  v0 = sub_29D93A1A8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D93A1B8();
  v5 = (*(v1 + 88))(v4, v0);
  v6 = *MEMORY[0x29EDC7880];
  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v5 == v6)
  {
    sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    return sub_29D93A738();
  }

  return result;
}

void sub_29D78F690()
{
  v1 = (v0 + qword_2A17B4430);
  *v1 = 0;
  v1[1] = 0;
  v2 = qword_2A17B4450;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(v0 + v2) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA890]);
  v3 = qword_2A17B4458;
  *(v0 + v3) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  *(v0 + qword_2A17B4460) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D78F778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D78F790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D78F824(uint64_t a1)
{
  sub_29D933468();
  if (v1 <= 0x3F)
  {
    sub_29D78F790(319, &qword_2A17B44C0, sub_29D71DF70, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D78F920(uint64_t a1)
{
  if (!qword_2A17B4798)
  {
    sub_29D933428();
    sub_29D78F9B4(&qword_2A17B47A0, MEMORY[0x29EDB9A50], MEMORY[0x29EDB9A58]);
    v1 = sub_29D93AB18();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B4798);
    }
  }
}

uint64_t sub_29D78F9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D78F9FC(uint64_t a1)
{
  if (!qword_2A17B47C8)
  {
    sub_29D933388();
    sub_29D78F9B4(&qword_2A17B47C0, MEMORY[0x29EDC7748], MEMORY[0x29EDC7740]);
    v1 = sub_29D933628();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B47C8);
    }
  }
}

unint64_t sub_29D78FA90()
{
  result = qword_2A17B47D0;
  if (!qword_2A17B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47D0);
  }

  return result;
}

unint64_t sub_29D78FAE4()
{
  result = qword_2A17B47D8;
  if (!qword_2A17B47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47D8);
  }

  return result;
}

unint64_t sub_29D78FB38()
{
  result = qword_2A17B47E0;
  if (!qword_2A17B47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B47E0);
  }

  return result;
}

uint64_t sub_29D78FB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D78FBEC(uint64_t a1)
{
  if (!qword_2A17B47F0)
  {
    type metadata accessor for FooterTextView(255);
    sub_29D78F9B4(&unk_2A17B4780, type metadata accessor for FooterTextView, &unk_29D947A10);
    v1 = sub_29D938FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B47F0);
    }
  }
}

uint64_t sub_29D78FC84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29D939968();
  v30 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D939998();
  v10 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A17D0DB8);

  v15 = sub_29D937878();
  v16 = sub_29D93A2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v10;
    v19 = a2;
    v20 = a1;
    v21 = v18;
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D947B80, aBlock);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_29D6C2364(*(v3 + 16), *(v3 + 24), aBlock);
    _os_log_impl(&dword_29D677000, v15, v16, "[%s] Failing test with name %s", v17, 0x16u);
    swift_arrayDestroy();
    v22 = v21;
    a1 = v20;
    a2 = v19;
    v10 = v28;
    MEMORY[0x29ED6BE30](v22, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v23 = sub_29D93A468();
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  aBlock[4] = sub_29D798968;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2444EE8;
  v25 = _Block_copy(aBlock);

  sub_29D935E88();

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D798910();
  sub_29D798A4C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v13, v9, v25);
  _Block_release(v25);

  (*(v30 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v29);
}

uint64_t sub_29D7900B4(const char *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v5 = v3;
  v6 = sub_29D939968();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D939998();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v16 = sub_29D937898();
  sub_29D69C6C0(v16, qword_2A17D0DB8);

  v17 = sub_29D937878();
  v18 = sub_29D93A2A8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31 = v6;
    v22 = v12;
    v23 = v7;
    v24 = a1;
    v25 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_29D6C2364(0xD000000000000020, 0x800000029D947B80, aBlock);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_29D6C2364(*(v5 + 16), *(v5 + 24), aBlock);
    v26 = v24;
    v7 = v23;
    v12 = v22;
    v6 = v31;
    _os_log_impl(&dword_29D677000, v17, v18, v26, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v25, -1, -1);
    v27 = v20;
    v11 = v32;
    MEMORY[0x29ED6BE30](v27, -1, -1);
  }

  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v28 = sub_29D93A468();
  aBlock[4] = v33;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v34;
  v29 = _Block_copy(aBlock);

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D798910();
  sub_29D798A4C(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v15, v10, v29);
  _Block_release(v29);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_29D7904B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_29D9377B8();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  v15 = a3;
  sub_29D9377A8();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter, v14, v10);
  v21 = 0xD000000000000029;
  v22 = 0x800000029D9617F0;
  sub_29D93A9A8();
  if (!*(a4 + 16) || (v16 = sub_29D6908F8(v23), (v17 & 1) == 0))
  {

    sub_29D69466C(v23);
LABEL_8:
    *(v5 + 40) = 0;
    return v5;
  }

  sub_29D694294(*(a4 + 56) + 32 * v16, v24);
  sub_29D69466C(v23);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_8;
  }

  if (v21 == 5457241 && v22 == 0xE300000000000000)
  {

    v18 = 1;
  }

  else
  {
    v18 = sub_29D93AD78();
  }

  *(v5 + 40) = v18 & 1;
  return v5;
}

uint64_t sub_29D790700(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29D933CC8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_29D933CE8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v2[10] = swift_task_alloc();
  v5 = sub_29D9331D8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_29D9339F8();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79093C, 0, 0);
}

uint64_t sub_29D79093C(uint64_t a1)
{
  v2 = v1[15];
  v14 = v1[14];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[4];
  sub_29D9339E8();
  sub_29D933C88();
  (*(v7 + 104))(v8, *MEMORY[0x29EDB9CA0], v9);
  sub_29D933C38();
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  result = (*(v2 + 48))(v3, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v1[15] + 16))(v1[16], v1[17], v1[14]);
    sub_29D933188();
    v11 = swift_task_alloc();
    v1[18] = v11;
    *v11 = v1;
    v11[1] = sub_29D790AF0;
    v12 = v1[13];
    v13 = v1[2];

    return sub_29D7920B0(v12, v13);
  }

  return result;
}

uint64_t sub_29D790AF0()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7915C4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_29D790C64;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D792C80(v5, v4);
  }
}

uint64_t sub_29D790C64()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7916B4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[22] = v3;
    *v3 = v2;
    v3[1] = sub_29D790DD8;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D792F94(v5, v4);
  }
}

uint64_t sub_29D790DD8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D7917A4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[24] = v3;
    *v3 = v2;
    v3[1] = sub_29D790F4C;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D7931B4(v5, v4);
  }
}

uint64_t sub_29D790F4C()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791894, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_29D7910C0;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D7933D4(v5, v4);
  }
}

uint64_t sub_29D7910C0()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791984, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[28] = v3;
    *v3 = v2;
    v3[1] = sub_29D791234;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D7935F4(v5, v4);
  }
}

uint64_t sub_29D791234()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29D791A74, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[30] = v3;
    *v3 = v2;
    v3[1] = sub_29D7913A8;
    v4 = v2[2];
    v5 = v2[13];

    return sub_29D793814(v5, v4);
  }
}

uint64_t sub_29D7913A8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_29D791B64;
  }

  else
  {
    v2 = sub_29D7914BC;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7914BC()
{
  sub_29D796C04(*(v0 + 16));
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D7915C4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D7916B4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D7917A4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D791894()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D791984()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D791A74()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D791B64()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D791C54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 88) = a1;
  *(v2 + 96) = v3;
  return MEMORY[0x2A1C73D48](sub_29D791C98, 0, 0);
}

uint64_t sub_29D791C98()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_29D791D44;
  v3 = swift_continuation_init();
  sub_29D7952B0(v3, v2, v1);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D791D44(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    *(*v1 + 104) = *(*v1 + 80);

    return MEMORY[0x2A1C73D48](sub_29D791E90, 0, 0);
  }
}

uint64_t sub_29D791E90()
{
  v22 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A17D0DB8);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = sub_29D93AF08();
    v12 = sub_29D6C2364(v10, v11, &v21);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = v7;
    v14 = [v13 description];
    v15 = sub_29D939D68();
    v17 = v16;

    v18 = sub_29D6C2364(v15, v17, &v21);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Got result during preWarm %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_29D7920B0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[20] = a2;
  v3[21] = v4;
  v3[19] = a1;
  v5 = sub_29D933B68();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_29D933BA8();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = sub_29D933B28();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = sub_29D9339F8();
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v9 = sub_29D933CE8();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v10 = MEMORY[0x29EDC9C68];
  sub_29D798A4C(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v3[37] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v10);
  v3[38] = swift_task_alloc();
  v11 = sub_29D933318();
  v3[39] = v11;
  v3[40] = *(v11 - 8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D792410, 0, 0);
}

uint64_t sub_29D792410()
{
  v43 = v0;
  v1 = v0[37];
  (*(v0[35] + 56))(v0[38], 1, 1, v0[34]);
  v2 = sub_29D933D38();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  LOBYTE(v35) = 1;
  LOBYTE(v34) = 1;
  LOBYTE(v33) = 1;
  LOBYTE(v32) = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v30) = 0;
  LOBYTE(v29) = 1;
  LOBYTE(v28) = 0;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  LOBYTE(v25) = 1;
  sub_29D933308();
  v0[18] = MEMORY[0x29EDCA190];
  sub_29D933C88();
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A17D0DB8);
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136315138;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v42);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29D677000, v4, v5, "[%s] Injecting AFib Burden data", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v36 = v0[36];
  v41 = v0[33];
  v11 = v0[30];
  v38 = v0[32];
  v39 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[26];
  v15 = v0[27];
  v16 = v0[25];
  v37 = v0[24];
  v18 = v0[22];
  v17 = v0[23];
  v19 = v0[19];
  v40 = v0[20];
  sub_29D9331A8();
  (*(v12 + 104))(v11, *MEMORY[0x29EDB9C88], v13);
  v20 = swift_task_alloc();
  v20[2] = v19;
  v20[3] = v36;
  v20[4] = v0 + 18;
  (*(v14 + 104))(v15, *MEMORY[0x29EDB9C98], v16);
  (*(v17 + 104))(v37, *MEMORY[0x29EDB9C90], v18);
  sub_29D933B58();
  (*(v17 + 8))(v37, v18);
  (*(v14 + 8))(v15, v16);
  (*(v12 + 8))(v11, v13);
  (*(v38 + 8))(v41, v39);

  v0[42] = v0[18];
  sub_29D69567C(0, &qword_2A17B4878, 0x29EDBACB0);
  v21 = sub_29D939F18();
  v0[43] = v21;
  v0[2] = v0;
  v0[3] = sub_29D792924;
  v22 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0, MEMORY[0x29EDCA180] + 8);
  v0[17] = v23;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D806FD4;
  v0[13] = &unk_2A2444F88;
  v0[14] = v22;
  [v40 saveObjects:v21 withCompletion:{0, v25, 8, v26, 0, v27, 0, v28, 0, v29, 2, v30, 0, v31, 0, v32, 0, v33, 0, v34, 0, v35}];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D792924()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_29D792B54;
  }

  else
  {
    v2 = sub_29D792A34;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D792A34()
{
  v1 = v0[43];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[35];
  (*(v0[40] + 8))(v0[41], v0[39]);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D792B54(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[41];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[35];
  v7 = v1[36];
  v8 = v1[34];
  swift_willThrow();
  (*(v5 + 8))(v3, v4);

  (*(v6 + 8))(v7, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_29D792C80(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D792CC8, 0, 0);
}

uint64_t sub_29D792CC8()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting sleep data", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_29D792EA0;
  v11 = v0[2];
  v10 = v0[3];

  return sub_29D796158(v11, v10, sub_29D794864, 0);
}

uint64_t sub_29D792EA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29D792F94(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D792FDC, 0, 0);
}

uint64_t sub_29D792FDC()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting mindfulness data", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_29D798B98;
  v11 = v0[2];
  v10 = v0[3];

  return sub_29D796158(v11, v10, sub_29D794C88, 0);
}

uint64_t sub_29D7931B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D7931FC, 0, 0);
}

uint64_t sub_29D7931FC()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting Exercise Minute data", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_29D798B98;
  v11 = v0[2];
  v10 = v0[3];

  return sub_29D796158(v11, v10, sub_29D794DF4, 0);
}

uint64_t sub_29D7933D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D79341C, 0, 0);
}

uint64_t sub_29D79341C()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting Body Mass data", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_29D798B98;
  v11 = v0[2];
  v10 = v0[3];

  return sub_29D796158(v11, v10, sub_29D79515C, 0);
}

uint64_t sub_29D7935F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29D79363C, 0, 0);
}

uint64_t sub_29D79363C()
{
  v14 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Injecting alcoholic data", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_29D798B98;
  v11 = v0[2];
  v10 = v0[3];

  return sub_29D796158(v11, v10, sub_29D79517C, 0);
}

uint64_t sub_29D793814(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[19] = a2;
  v3[20] = v4;
  v3[18] = a1;
  sub_29D9339F8();
  v3[21] = swift_task_alloc();
  v5 = sub_29D939BD8();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_29D933CE8();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D793990, 0, 0);
}

uint64_t sub_29D793990()
{
  v24 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v22 = v0[22];
  v7 = [objc_allocWithZone(MEMORY[0x29EDC51E0]) initWithHealthStore_];
  v0[29] = v7;
  sub_29D933C88();
  sub_29D933178();
  (*(v4 + 16))(v2, v1, v3);
  sub_29D939BB8();
  v8 = sub_29D939BC8();
  (*(v6 + 8))(v5, v22);
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v9 = sub_29D937898();
  sub_29D69C6C0(v9, qword_2A17D0DB8);
  v10 = sub_29D937878();
  v11 = sub_29D93A2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29D677000, v10, v11, "[%s] Injecting tachograms", v12, 0xCu);
    sub_29D69417C(v13);
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);
  }

  if (__OFSUB__(v8, 44))
  {
    __break(1u);
  }

  else
  {
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v18 = sub_29D93A6E8();
    v0[30] = v18;
    v0[2] = v0;
    v0[7] = v0 + 32;
    v0[3] = sub_29D793CC0;
    v19 = swift_continuation_init();
    sub_29D7989D8(0, &qword_2A17B1910, MEMORY[0x29EDC9A98]);
    v0[17] = v20;
    v0[10] = MEMORY[0x29EDCA5F8];
    v0[11] = 1107296256;
    v0[12] = sub_29D8D0FE0;
    v0[13] = &unk_2A2444F38;
    v0[14] = v19;
    [v7 addTachogramsForStartDayIndex:v8 - 44 endDayIndex:v8 chanceOfAFib:0 chanceOfWrite:0 minutesBetweenSamples:v18 startingHour:0 endingHour:0 completion:v0 + 10];
    v17 = v0 + 2;
  }

  return MEMORY[0x2A1C73CC0](v17);
}

uint64_t sub_29D793CC0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_29D793E98;
  }

  else
  {
    v2 = sub_29D793DD0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D793DD0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D793E98(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  v4 = v1[29];
  v5 = v1[26];
  v6 = v1[25];
  swift_willThrow();

  (*(v5 + 8))(v3, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_29D793F6C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(char *, uint64_t), void *a6)
{
  v71 = a5;
  v9 = sub_29D933D38();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v16 = &v62 - v15;
  v17 = sub_29D9339F8();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v72 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v25 = &v62 - v24;
  MEMORY[0x2A1C7C4A8](v23, v26);
  v28 = &v62 - v27;
  sub_29D6A0A20(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_29D6A0D34(v16);
  }

  (*(v18 + 32))(v28, v16, v17);
  sub_29D933178();
  v30 = sub_29D933978();
  v31 = *(v18 + 8);
  v31(v25, v17);
  if (v30)
  {
    v66 = v31;
    v67 = a6;
    v32 = sub_29D933958();
    v33 = v71;
    v34 = sub_29D933BB8();
    v35 = HKHRAFibBurdenPreviousWeekDayIndexRange();
    v37 = v36;

    v38 = objc_opt_self();
    v39 = v33;
    v40 = sub_29D933BB8();
    v68 = [v38 hk:v35 dateOnDayIndex:0 atHour:v40 calendar:?];

    v41 = __OFADD__(v35, v37);
    v42 = v35 + v37;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      v63 = v28;
      v43 = sub_29D933BB8();
      v44 = [v38 hk:v42 dateOnDayIndex:0 atHour:v43 calendar:?];

      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v64 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
      v45 = [objc_opt_self() percentUnit];
      v46 = [objc_opt_self() quantityWithUnit:v45 doubleValue:0.5];

      sub_29D933998();
      v65 = v44;
      sub_29D933998();
      sub_29D798A4C(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D93DDB0;
      *(inited + 32) = sub_29D939D68();
      *(inited + 40) = v48;
      sub_29D933CA8();
      v49 = sub_29D933D08();
      (*(v69 + 8))(v12, v70);
      v50 = [v49 name];

      v51 = sub_29D939D68();
      v53 = v52;

      *(inited + 72) = MEMORY[0x29EDC99B0];
      *(inited + 48) = v51;
      *(inited + 56) = v53;
      sub_29D73F010(inited);
      swift_setDeallocating();
      sub_29D798AB0(inited + 32);
      v54 = sub_29D933958();
      v55 = v72;
      v56 = sub_29D933958();
      v57 = sub_29D939C58();

      v58 = objc_opt_self();
      v59 = v64;
      v60 = [v58 quantitySampleWithType:v64 quantity:v46 startDate:v54 endDate:v56 metadata:v57];

      v39 = v66;
      v66(v55, v17);
      v39(v25, v17);
      v38 = v60;
      v61 = v67;
      MEMORY[0x29ED6A300]();
      if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_6:
        sub_29D939FA8();

        return (v39)(v63, v17);
      }
    }

    sub_29D939F78();
    goto LABEL_6;
  }

  result = (v31)(v28, v17);
  *a3 = 1;
  return result;
}

uint64_t sub_29D7945BC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v28 = a5;
  v29 = a3;
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = sub_29D9339F8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v28 - v22;
  sub_29D6A0A20(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_29D6A0D34(v14);
  }

  (*(v16 + 32))(v23, v14, v15);
  sub_29D933178();
  v25 = sub_29D933978();
  v26 = *(v16 + 8);
  v26(v20, v15);
  if (v25)
  {
    v27 = v28(v23, a7);
    MEMORY[0x29ED6A300]();
    if (*((*a8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();

    return (v26)(v23, v15);
  }

  else
  {
    result = (v26)(v23, v15);
    *v29 = 1;
  }

  return result;
}

id sub_29D794864(uint64_t a1, uint64_t a2)
{
  v3 = sub_29D933CC8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v37 - v13;
  v15 = sub_29D9339F8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v39 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v46 = &v37 - v21;
  v22 = *(v4 + 104);
  v42 = *MEMORY[0x29EDB9CC8];
  v41 = v22;
  v22(v7);
  v45 = a2;
  sub_29D933C38();
  v23 = *(v4 + 8);
  v24 = v3;
  v44 = v4 + 8;
  v40 = v23;
  v23(v7, v3);
  v25 = *(v16 + 48);
  v26 = v15;
  result = v25(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = v16;
    v28 = *(v16 + 32);
    v28(v46, v14, v15);
    v41(v7, v42, v24);
    v29 = v43;
    sub_29D933C38();
    v40(v7, v24);
    result = v25(v29, 1, v15);
    if (result != 1)
    {
      v30 = v39;
      v28(v39, v29, v15);
      sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
      v31 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4D0]);
      v32 = v46;
      v33 = sub_29D933958();
      v34 = sub_29D933958();
      v35 = [objc_opt_self() categorySampleWithType:v31 value:1 startDate:v33 endDate:v34];

      v36 = *(v38 + 8);
      v36(v30, v26);
      v36(v32, v26);
      return v35;
    }
  }

  __break(1u);
  return result;
}

id sub_29D794C88()
{
  v0 = sub_29D9339F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  v5 = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
  sub_29D933948();
  v6 = sub_29D933958();
  v7 = sub_29D933958();
  v8 = [objc_opt_self() categorySampleWithType:v5 value:0 startDate:v6 endDate:v7];

  (*(v1 + 8))(v4, v0);
  return v8;
}

id sub_29D794DF4(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v24[1] = a2;
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D798A4C(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = v24 - v9;
  v11 = sub_29D9339F8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v16 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
  v17 = [objc_opt_self() minuteUnit];
  v18 = [objc_opt_self() quantityWithUnit:v17 doubleValue:30.0];

  (*(v12 + 16))(v15, v24[0], v11);
  (*(v3 + 104))(v6, *MEMORY[0x29EDB9CE0], v2);
  sub_29D933C38();
  (*(v3 + 8))(v6, v2);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = sub_29D933958();
    v21 = sub_29D933958();
    v22 = [objc_opt_self() quantitySampleWithType:v16 quantity:v18 startDate:v20 endDate:v21];

    v23 = *(v12 + 8);
    v23(v15, v11);
    v23(v10, v11);
    return v22;
  }

  return result;
}

id sub_29D795194(double a1, uint64_t a2, uint64_t a3, id *a4, SEL *a5)
{
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v8 = MEMORY[0x29ED6A6C0](*a4);
  v9 = [objc_opt_self() *a5];
  v10 = [objc_opt_self() quantityWithUnit:v9 doubleValue:a1];

  v11 = sub_29D933958();
  v12 = sub_29D933958();
  v13 = [objc_opt_self() quantitySampleWithType:v8 quantity:v10 startDate:v11 endDate:v12];

  return v13;
}

void sub_29D7952B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = objc_allocWithZone(MEMORY[0x29EDC51E8]);
  v10[4] = sub_29D7988C8;
  v10[5] = v6;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1107296256;
  v10[2] = sub_29D7A09D0;
  v10[3] = &unk_2A2444E70;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithResultsHandler_];
  _Block_release(v8);

  [a2 executeQuery_];
}

uint64_t sub_29D7953B8(int a1, void *a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a3;
    if (qword_2A17B0D08 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A17D0DB8);
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v39 = v12;
      *v11 = 136315138;
      v13 = sub_29D93AF08();
      v15 = sub_29D6C2364(v13, v14, &v39);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29D677000, v9, v10, "[%s] Resuming continuation throwing error", v11, 0xCu);
      sub_29D69417C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v16 = a3;
LABEL_7:

    return swift_continuation_throwingResumeWithError();
  }

  if (!a2)
  {
    if (qword_2A17B0D08 != -1)
    {
      swift_once();
    }

    v28 = sub_29D937898();
    sub_29D69C6C0(v28, qword_2A17D0DB8);
    v29 = sub_29D937878();
    v30 = sub_29D93A298();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29D677000, v29, v30, "[%s] No error but did not receive results as expected", v31, 0xCu);
      sub_29D69417C(v32);
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    sub_29D798874();
    v36 = swift_allocError();
    *v37 = 2;
    sub_29D6A0CD0();
    swift_allocError();
    *v38 = v36;
    goto LABEL_7;
  }

  v18 = qword_2A17B0D08;
  v19 = a2;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_29D937898();
  sub_29D69C6C0(v20, qword_2A17D0DB8);
  v21 = sub_29D937878();
  v22 = sub_29D93A2A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315138;
    v25 = sub_29D93AF08();
    v27 = sub_29D6C2364(v25, v26, &v39);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_29D677000, v21, v22, "[%s] Resuming continuation returning results", v23, 0xCu);
    sub_29D69417C(v24);
    MEMORY[0x29ED6BE30](v24, -1, -1);
    MEMORY[0x29ED6BE30](v23, -1, -1);
  }

  **(*(a4 + 64) + 40) = v19;

  return swift_continuation_throwingResume();
}

uint64_t sub_29D79581C()
{

  v1 = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
  v2 = sub_29D9377B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPDFExportPPTTestRunner(uint64_t a1)
{
  result = qword_2A17B4860;
  if (!qword_2A17B4860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D79591C(uint64_t a1)
{
  result = sub_29D9377B8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29D7959D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 32);
  v4 = sub_29D939D28();
  v5 = sub_29D939D28();
  [v3 failedTest:v4 withFailure:v5];
}

void sub_29D795A58(uint64_t a1)
{
  v1 = *(*a1 + 32);
  v2 = sub_29D939D28();
  sub_29D73F2CC(MEMORY[0x29EDCA190]);
  v3 = sub_29D939C58();

  [v1 finishedTest:v2 extraResults:v3];
}

void sub_29D795B04(uint64_t a1)
{
  v1 = *(*a1 + 32);
  v2 = sub_29D939D28();
  [v1 startedTest_];
}

uint64_t sub_29D795B64(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_29D9339F8();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D795C24, 0, 0);
}

uint64_t sub_29D795C24()
{
  sub_29D798A4C(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93DDB0;
  *(inited + 32) = sub_29D939D68();
  *(inited + 40) = v2;
  v3 = sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v4 = sub_29D93A6D8();
  *(inited + 72) = v3;
  *(inited + 48) = v4;
  sub_29D73F010(inited);
  swift_setDeallocating();
  sub_29D798AB0(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
  v6 = sub_29D939C58();

  v7 = [v5 initWithDictionary_];
  v0[32] = v7;

  v8 = sub_29D939D28();
  v0[33] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x29EDB9FD8]) init];
  v10 = sub_29D939D28();
  v11 = [v9 dateFromString_];

  if (v11)
  {
    v13 = v0[30];
    v12 = v0[31];
    v14 = v0[29];
    sub_29D933998();

    v11 = sub_29D933958();
    (*(v13 + 8))(v12, v14);
  }

  v0[34] = v11;
  v15 = v0[28];
  v0[2] = v0;
  v0[3] = sub_29D795F30;
  v16 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0, MEMORY[0x29EDCA180] + 8);
  v0[27] = v17;
  v0[20] = MEMORY[0x29EDCA5F8];
  v0[21] = 1107296256;
  v0[22] = sub_29D806FD4;
  v0[23] = &unk_2A2444FB0;
  v0[24] = v16;
  [v15 setCurrentOnboardingVersionCompletedForCountryCode:v8 countryCodeProvenance:101 date:v11 settings:v7 completion:v0 + 20];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D795F30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_29D7960C4;
  }

  else
  {
    v2 = sub_29D796040;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D796040()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D7960C4(uint64_t a1)
{
  v2 = v1[34];
  v4 = v1[32];
  v3 = v1[33];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_29D796158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_29D933B68();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_29D933BA8();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_29D933B28();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v8 = sub_29D9339F8();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v9 = sub_29D933CE8();
  v4[35] = v9;
  v4[36] = *(v9 - 8);
  v4[37] = swift_task_alloc();
  v10 = MEMORY[0x29EDC9C68];
  sub_29D798A4C(0, &qword_2A17B3428, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  v4[38] = swift_task_alloc();
  sub_29D798A4C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], v10);
  v4[39] = swift_task_alloc();
  v11 = sub_29D933318();
  v4[40] = v11;
  v4[41] = *(v11 - 8);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D796494, 0, 0);
}

uint64_t sub_29D796494()
{
  v1 = v0;
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v26 = *(v0 + 272);
  v32 = *(v0 + 264);
  v33 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v35 = *(v0 + 216);
  v36 = *(v0 + 232);
  v28 = *(v0 + 208);
  v29 = *(v0 + 224);
  v31 = *(v0 + 200);
  v6 = *(v0 + 192);
  v30 = *(v0 + 184);
  v7 = *(v0 + 152);
  v34 = *(v0 + 160);
  v27 = *(v0 + 168);
  (*(*(v0 + 288) + 56))(*(v0 + 312), 1, 1, *(v0 + 280));
  v8 = sub_29D933D38();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  LOBYTE(v25) = 1;
  LOBYTE(v24) = 1;
  LOBYTE(v23) = 1;
  LOBYTE(v22) = 1;
  LOBYTE(v21) = 1;
  LOBYTE(v20) = 1;
  LOBYTE(v19) = 1;
  LOBYTE(v18) = 0;
  LOBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  LOBYTE(v15) = 1;
  sub_29D933308();
  *(v0 + 144) = MEMORY[0x29EDCA190];
  sub_29D933C88();
  sub_29D9331A8();
  (*(v4 + 104))(v5, *MEMORY[0x29EDB9C88], v36);
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v27;
  *(v9 + 40) = v3;
  *(v9 + 48) = v0 + 144;
  (*(v35 + 104))(v29, *MEMORY[0x29EDB9C98], v28);
  (*(v6 + 104))(v31, *MEMORY[0x29EDB9C90], v30);
  sub_29D933B58();
  (*(v6 + 8))(v31, v30);
  (*(v35 + 8))(v29, v28);
  (*(v4 + 8))(v5, v36);
  (*(v32 + 8))(v26, v33);

  *(v0 + 344) = *(v0 + 144);
  sub_29D69567C(0, &qword_2A17B4878, 0x29EDBACB0);
  v10 = sub_29D939F18();
  *(v0 + 352) = v10;
  v11 = v0 + 16;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_29D7968A8;
  v12 = swift_continuation_init();
  sub_29D7989D8(0, &qword_2A17B72C0, MEMORY[0x29EDCA180] + 8);
  v1[17] = v13;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D806FD4;
  v1[13] = &unk_2A2444F60;
  v1[14] = v12;
  [v34 saveObjects:v10 withCompletion:{0, v15, 12, v16, 0, v17, 0, v18, 0, v19, 0, v20, 0, v21, 0, v22, 0, v23, 0, v24, 0, v25}];

  return MEMORY[0x2A1C73CC0](v11);
}

uint64_t sub_29D7968A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_29D796AD8;
  }

  else
  {
    v2 = sub_29D7969B8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D7969B8()
{
  v1 = v0[44];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  (*(v0[41] + 8))(v0[42], v0[40]);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D796AD8(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[42];
  v4 = v1[40];
  v5 = v1[41];
  v6 = v1[36];
  v7 = v1[37];
  v8 = v1[35];
  swift_willThrow();
  (*(v5 + 8))(v3, v4);

  (*(v6 + 8))(v7, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_29D796C04(void *a1)
{
  v31 = a1;
  v35[1] = *MEMORY[0x29EDCA608];
  v30 = sub_29D933CE8();
  v1 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30, v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933318();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D9339F8();
  v9 = *(v32 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v32, v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v29 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x29EDB9FD8]) init];
  v18 = sub_29D939D28();
  v19 = [v17 dateFromString_];

  if (!v19)
  {
    __break(1u);
  }

  sub_29D933998();

  v20 = v32;
  (*(v9 + 32))(v16, v13, v32);
  sub_29D933C88();
  v21 = sub_29D933BB8();
  (*(v1 + 8))(v4, v30);
  v22 = sub_29D933958();
  v23 = [v21 hk:v22 dateOfBirthDateComponentsWithDate:?];

  sub_29D933298();
  v24 = sub_29D933288();
  v35[0] = 0;
  LOBYTE(v23) = [v31 _setDateOfBirthComponents_error_];

  if (v23)
  {
    v25 = *(v33 + 8);
    v26 = v35[0];
    v25(v8, v34);
    return (*(v9 + 8))(v16, v20);
  }

  else
  {
    v28 = v35[0];
    sub_29D933598();

    swift_willThrow();
    (*(v33 + 8))(v8, v34);
    return (*(v9 + 8))(v16, v20);
  }
}

uint64_t sub_29D796FD8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v3 = sub_29D9377C8();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = sub_29D937788();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79714C, 0, 0);
}

uint64_t sub_29D79714C()
{
  v13 = v0;
  if (qword_2A17B0D08 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  v0[23] = sub_29D69C6C0(v1, qword_2A17D0DB8);
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = sub_29D93AF08();
    v8 = sub_29D6C2364(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_29D677000, v2, v3, "[%s] Starting test", v4, 0xCu);
    sub_29D69417C(v5);
    MEMORY[0x29ED6BE30](v5, -1, -1);
    MEMORY[0x29ED6BE30](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_29D797310;
  v10 = v0[10];

  return sub_29D790700(v10);
}

uint64_t sub_29D797310()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_29D7980F4;
  }

  else
  {
    v2 = sub_29D797424;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D797424(uint64_t a1)
{
  v40 = v1;
  if (*(v1[11] + 40) == 1)
  {
    v2 = sub_29D937878();
    v3 = sub_29D93A2A8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v39 = v5;
      *v4 = 136315138;
      v6 = sub_29D93AF08();
      v8 = sub_29D6C2364(v6, v7, &v39);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_29D677000, v2, v3, "[%s] Pre warming tachogram classification cache", v4, 0xCu);
      sub_29D69417C(v5);
      MEMORY[0x29ED6BE30](v5, -1, -1);
      MEMORY[0x29ED6BE30](v4, -1, -1);
    }

    v9 = swift_task_alloc();
    v1[26] = v9;
    *v9 = v1;
    v9[1] = sub_29D797904;
    v10 = v1[10];

    return sub_29D791C54(v10);
  }

  else
  {
    sub_29D7900B4("[%s] Starting test with name %s", sub_29D798974, &unk_2A2444F10);
    v1[28] = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
    sub_29D937778();
    v12 = sub_29D937798();
    v13 = sub_29D93A4F8();
    if (sub_29D93A7C8())
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_29D937768();
      _os_signpost_emit_with_name_impl(&dword_29D677000, v12, v13, v15, "AFibBurdenPDFExportLoad", "", v14, 2u);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    v16 = v1[22];
    v17 = v1[21];
    v18 = v1[17];
    v19 = v1[18];
    v20 = v1[10];

    (*(v19 + 16))(v17, v16, v18);
    sub_29D9377F8();
    swift_allocObject();
    v1[29] = sub_29D9377E8();
    v21 = *(v19 + 8);
    v1[30] = v21;
    v1[31] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v16, v18);
    type metadata accessor for AFibBurdenPDFProvider();
    v22 = swift_allocObject();
    v1[32] = v22;
    v22[2] = v20;
    v23 = sub_29D935EC8();
    v24 = v20;
    v25 = sub_29D935E98();
    v26 = MEMORY[0x29EDC24D0];
    v22[6] = v23;
    v22[7] = v26;
    v22[3] = v25;
    v27 = HKHRAFibBurdenLogForCategory();
    v28 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v27 healthDataSource:v24];

    v22[8] = v28;
    sub_29D75B008(v1 + 2);
    v29 = sub_29D937878();
    v30 = sub_29D93A2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      v33 = sub_29D93AF08();
      v35 = sub_29D6C2364(v33, v34, &v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29D677000, v29, v30, "[%s] Requesting PDF to be configured", v31, 0xCu);
      sub_29D69417C(v32);
      MEMORY[0x29ED6BE30](v32, -1, -1);
      MEMORY[0x29ED6BE30](v31, -1, -1);
    }

    v37 = v1[5];
    v36 = v1[6];
    sub_29D693E2C(v1 + 2, v37);
    v38 = swift_task_alloc();
    v1[33] = v38;
    *v38 = v1;
    v38[1] = sub_29D797DA4;

    return MEMORY[0x2A1C61600](v37, v36);
  }
}

uint64_t sub_29D797904()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_29D798318;
  }

  else
  {
    v2 = sub_29D797A18;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D797A18()
{
  v30 = v0;
  sub_29D7900B4("[%s] Starting test with name %s", sub_29D798974, &unk_2A2444F10);
  v0[28] = OBJC_IVAR____TtC5Heart32AFibBurdenPDFExportPPTTestRunner_signposter;
  sub_29D937778();
  v1 = sub_29D937798();
  v2 = sub_29D93A4F8();
  if (sub_29D93A7C8())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v1, v2, v4, "AFibBurdenPDFExportLoad", "", v3, 2u);
    MEMORY[0x29ED6BE30](v3, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[10];

  (*(v8 + 16))(v6, v5, v7);
  sub_29D9377F8();
  swift_allocObject();
  v0[29] = sub_29D9377E8();
  v10 = *(v8 + 8);
  v0[30] = v10;
  v0[31] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  type metadata accessor for AFibBurdenPDFProvider();
  v11 = swift_allocObject();
  v0[32] = v11;
  v11[2] = v9;
  v12 = sub_29D935EC8();
  v13 = v9;
  v14 = sub_29D935E98();
  v15 = MEMORY[0x29EDC24D0];
  v11[6] = v12;
  v11[7] = v15;
  v11[3] = v14;
  v16 = HKHRAFibBurdenLogForCategory();
  v17 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v16 healthDataSource:v13];

  v11[8] = v17;
  sub_29D75B008(v0 + 2);
  v18 = sub_29D937878();
  v19 = sub_29D93A2A8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v20 = 136315138;
    v22 = sub_29D93AF08();
    v24 = sub_29D6C2364(v22, v23, &v29);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29D677000, v18, v19, "[%s] Requesting PDF to be configured", v20, 0xCu);
    sub_29D69417C(v21);
    MEMORY[0x29ED6BE30](v21, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  v26 = v0[5];
  v25 = v0[6];
  sub_29D693E2C(v0 + 2, v26);
  v27 = swift_task_alloc();
  v0[33] = v27;
  *v27 = v0;
  v27[1] = sub_29D797DA4;

  return MEMORY[0x2A1C61600](v26, v25);
}

uint64_t sub_29D797DA4(uint64_t a1, unint64_t a2)
{
  *(*v3 + 272) = v2;

  if (v2)
  {
    v6 = sub_29D79850C;
  }

  else
  {
    sub_29D6AA284(a1, a2);
    v6 = sub_29D797ED4;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29D797ED4(uint64_t a1)
{
  v2 = sub_29D937798();
  sub_29D9377D8();
  v3 = sub_29D93A4E8();
  if (sub_29D93A7C8())
  {
    v4 = v1[16];
    v5 = v1[13];
    v6 = v1[14];

    sub_29D937808();

    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x29EDCA4A8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[14] + 8))(v1[16], v1[13]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v2, v3, v9, "AFibBurdenPDFExportLoad", v7, v8, 2u);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v10 = v1[30];
  v11 = v1[20];
  v12 = v1[17];

  v10(v11, v12);
  sub_29D7900B4("[%s] Finishing test with name %s", sub_29D7988E8, &unk_2A2444E98);

  sub_29D69417C(v1 + 2);

  v13 = v1[1];

  return v13();
}

uint64_t sub_29D7980F4()
{
  v20 = v0;
  v1 = v0[25];
  v2 = v1;
  v3 = sub_29D937878();
  v4 = sub_29D93A288();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315394;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[7] = v5;
    v11 = v5;
    sub_29D6A0CD0();
    v12 = sub_29D939DA8();
    v14 = sub_29D6C2364(v12, v13, v19);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29D677000, v3, v4, "[%s] Received failure, reporting error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v15 = v0[25];
  sub_29D798874();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_29D798318()
{
  v18 = v0;
  v1 = v0[27];
  v2 = v1;
  v3 = sub_29D937878();
  v4 = sub_29D93A288();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[9] = v5;
    v11 = v5;
    sub_29D6A0CD0();
    v12 = sub_29D939DA8();
    v14 = sub_29D6C2364(v12, v13, v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29D677000, v3, v4, "[%s] Received failure when preWarming cache, reporting error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_29D79850C()
{
  v30 = v0;
  v1 = v0[34];
  v2 = v1;
  v3 = sub_29D937878();
  v4 = sub_29D93A288();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315394;
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v29);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[8] = v5;
    v11 = v5;
    sub_29D6A0CD0();
    v12 = sub_29D939DA8();
    v14 = sub_29D6C2364(v12, v13, &v29);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_29D677000, v3, v4, "[%s] Received failure configuring PDF, reporting error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v15 = sub_29D937798();
  sub_29D9377D8();
  v16 = sub_29D93A4E8();
  if (sub_29D93A7C8())
  {
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];

    sub_29D937808();

    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x29EDCA4A8])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[14] + 8))(v0[15], v0[13]);
      v20 = "";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_29D937768();
    _os_signpost_emit_with_name_impl(&dword_29D677000, v15, v16, v22, "AFibBurdenPDFExportLoad", v20, v21, 2u);
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  v23 = v0[34];
  v24 = v0[30];
  v25 = v0[19];
  v26 = v0[17];

  v24(v25, v26);
  sub_29D78FC84(0xD000000000000027, 0x800000029D961850);

  sub_29D69417C(v0 + 2);

  v27 = v0[1];

  return v27();
}

unint64_t sub_29D798874()
{
  result = qword_2A17B4870;
  if (!qword_2A17B4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4870);
  }

  return result;
}

uint64_t sub_29D7988D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D798910()
{
  result = qword_2A1A249D0;
  if (!qword_2A1A249D0)
  {
    sub_29D939968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A249D0);
  }

  return result;
}

void sub_29D7989D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29D6A0CD0();
    v4 = sub_29D93A038();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D798A4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D798AB0(uint64_t a1)
{
  sub_29D74D460();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D798B20()
{
  result = qword_2A17B4880;
  if (!qword_2A17B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HypertensionNotificationsOnboardingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HypertensionNotificationsOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D798CFC()
{
  result = qword_2A17B4888;
  if (!qword_2A17B4888)
  {
    sub_29D798D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4888);
  }

  return result;
}

void sub_29D798D54()
{
  if (!qword_2A17B4890)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B4890);
    }
  }
}

unint64_t sub_29D798DB8()
{
  result = qword_2A17B4898;
  if (!qword_2A17B4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4898);
  }

  return result;
}

uint64_t sub_29D798E0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D9356F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D935C28();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_29D935348();
  MEMORY[0x2A1C7C4A8](v12, v13);
  (*(v15 + 104))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC1F40]);
  if ([objc_opt_self() isAppleInternalInstall])
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0xD000000000000044;
    v11[3] = 0x800000029D9619D0;
    v11[4] = 0x6572616853;
    v11[5] = 0xE500000000000000;
    v16 = MEMORY[0x29EDC2298];
  }

  else
  {
    v16 = MEMORY[0x29EDC22A0];
  }

  (*(v8 + 104))(v11, *v16, v7);
  (*(v3 + 104))(v6, *MEMORY[0x29EDC20B0], v2);
  v17 = sub_29D935368();
  v18 = MEMORY[0x29EDC1F50];
  a1[3] = v17;
  a1[4] = v18;
  sub_29D693F78(a1);

  return sub_29D935358();
}

uint64_t sub_29D7990D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v11[3] = &type metadata for BloodPressurePDFSectionProvider;
  v11[4] = sub_29D7996A4();
  v3 = swift_allocObject();
  v11[0] = v3;
  v4 = sub_29D935EC8();
  v5 = MEMORY[0x29EDC24D0];
  v3[6] = v4;
  v3[7] = v5;
  v3[2] = v2;
  v3[3] = v1;
  v3[8] = 0x416E285000000000;
  v6 = v2;

  v7 = sub_29D935E78();
  sub_29D69417C(v11);
  sub_29D79972C(0, &qword_2A17B3CC8, sub_29D7996F8, MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29D93DDB0;
  *(v8 + 32) = v7;
  v9 = sub_29D935E68();

  return v9;
}

uint64_t sub_29D7991E4()
{
  v27 = sub_29D933AB8();
  v1 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v26 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v25 = sub_29D9334A8();
  v23[1] = v8;
  v24 = sub_29D9356E8();
  v9 = *(v0 + 24);
  v30 = sub_29D935EC8();
  v31 = MEMORY[0x29EDC24D0];
  v29 = v9;
  sub_29D79972C(0, &qword_2A17B3C60, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v10 = sub_29D9357D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29D93F680;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x29EDC2138], v10);
  v16(v15 + v12, *MEMORY[0x29EDC2140], v10);

  sub_29D6E573C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = v27;
  (*(v1 + 104))(v4, *MEMORY[0x29EDB9C78], v27);
  sub_29D933AC8();
  (*(v1 + 8))(v4, v17);
  sub_29D935E88();
  v18 = v24;
  v19 = sub_29D9356D8();
  v30 = v18;
  v31 = MEMORY[0x29EDC20A0];
  v29 = v19;

  sub_29D798E0C(v28);
  v20 = objc_allocWithZone(sub_29D935BD8());
  v21 = sub_29D935BC8();
  sub_29D799648();
  swift_unknownObjectRetain();
  sub_29D935BB8();

  return v21;
}

uint64_t sub_29D7995B8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_29D799648()
{
  result = qword_2A17B48A0;
  if (!qword_2A17B48A0)
  {
    type metadata accessor for BloodPressurePDFProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48A0);
  }

  return result;
}

unint64_t sub_29D7996A4()
{
  result = qword_2A17B48A8;
  if (!qword_2A17B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48A8);
  }

  return result;
}

void sub_29D79972C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D799790()
{
  result = qword_2A17B3CD8;
  if (!qword_2A17B3CD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B3CD8);
  }

  return result;
}

uint64_t sub_29D7997F4()
{
  v1 = *(v0 + 16);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = v1;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v2[3] = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = v1;
  sub_29D6AA594(v5, v4);
}

void sub_29D79988C()
{
  v1 = *(v0 + 40);
  switch(v1)
  {
    case 10:
      v2 = 11;
      break;
    case 8:
      v2 = 9;
      break;
    case 1:
      v2 = 2;
      break;
    default:
      return;
  }

  v3 = *(v0 + 16);
  type metadata accessor for BloodPressureJournalInteractionAnalyticsUtilities();
  v4 = swift_allocObject();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = v3;
  type metadata accessor for BloodPressureJournalAnalyticsUtilities();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = 0;
  v4[3] = v5;
  v6 = *(v0 + 41);
  v7 = v3;
  sub_29D6AA594(v6, v2);
}

void sub_29D799960(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_29D7999C8(uint64_t a1, void *a2)
{
  sub_29D7C5854();

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29D799A14(void *a1, void *a2)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = sub_29D937878();
  v6 = sub_29D93A268();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_29D677000, v5, v6, "BPJ Notification Settings: Did tap to create a new journal", v7, 2u);
    MEMORY[0x29ED6BE30](v7, -1, -1);
  }

  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  v9 = a1;
  v10 = sub_29D89AE08(1, 3, 2, 7);
  [a2 presentViewController:v10 animated:1 completion:0];

  swift_setDeallocating();
}

void sub_29D799B7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_29D79A464(sub_29D79B1F4, v4);

  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong presentViewController:v5 animated:1 completion:0];
}

void sub_29D799C40(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_29D7C50E8();
    v4 = *(a2 + 40);
    swift_getKeyPath();
    sub_29D79B254(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);

    sub_29D933E18();

    LODWORD(a2) = *(v4 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally);

    if (a2 == 1)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_29D799D44(void *a1, char a2, void *a3)
{
  v29 = a3;
  v5 = sub_29D939968();
  v28 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D939998();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v9;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_29D677000, v15, v16, "BPJ Notification Settings: Did tap to export PDF", v18, 2u);
    v19 = v18;
    v9 = v17;
    MEMORY[0x29ED6BE30](v19, -1, -1);
  }

  sub_29D6FC794();
  v20 = sub_29D93A468();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a1;
  v23 = v29;
  *(v21 + 32) = v29;
  aBlock[4] = sub_29D79B1E4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24451C0;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v23;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D79B254(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6C2DFC(0);
  sub_29D79B254(&qword_2A1A24980, sub_29D6C2DFC, MEMORY[0x29EDC9A70]);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v13, v8, v24);
  _Block_release(v24);

  (*(v28 + 8))(v8, v5);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_29D79A0F8(void *a1, char a2)
{
  v4 = type metadata accessor for BloodPressurePDFProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  sub_29D935EC8();
  v6 = a1;
  *(v5 + 24) = sub_29D935E98();
  *(v5 + 32) = 0x416E285000000000;
  *(v5 + 40) = 8;
  *(v5 + 41) = a2;
  v8[3] = v4;
  v8[4] = sub_29D79B254(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider, &unk_29D947E8C);
  v8[0] = v5;
  sub_29D93A398();
  return sub_29D69417C(v8);
}

void sub_29D79A1F8(void *a1)
{
  v2 = sub_29D79AB4C(nullsub_1, 0);
  [a1 presentViewController:v2 animated:1 completion:0];
}

uint64_t sub_29D79A284()
{
  v0 = sub_29D9346B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC1718], v0);
  sub_29D9346A8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_29D79A38C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D79B254(&qword_2A17B32F8, type metadata accessor for BloodPressureJournalSettingsViewModel, &unk_29D94AF98);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart37BloodPressureJournalSettingsViewModel__isPresentedModally);
  return result;
}

id sub_29D79A464(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v50 = a1;
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v49 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v37 - v12;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A2BE98;
  v15 = unk_2A1A2BEA0;
  v16 = qword_2A1A2BEA8;
  v51 = *(v6 + 16);
  v51(v10, v13, v5);
  v48 = v6 + 16;
  sub_29D935E88();
  v41 = v14;
  sub_29D933A98();
  v45 = v15;
  v46 = v14;
  v42 = sub_29D939D98();
  v40 = v17;
  v18 = *(v6 + 8);
  v18(v13, v5);
  v44 = v18;
  v47 = v6 + 8;
  v37 = v13;
  sub_29D939D08();
  v38 = v10;
  v51(v10, v13, v5);
  v39 = v16;
  sub_29D935E88();
  v41 = v41;
  sub_29D933A98();
  sub_29D939D98();
  v19 = v37;
  v18(v37, v5);
  v20 = sub_29D939D28();

  v21 = sub_29D939D28();

  v42 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  sub_29D939D08();
  v22 = v38;
  v51(v38, v19, v5);
  sub_29D935E88();
  v41 = v41;
  sub_29D933A98();
  v23 = v22;
  sub_29D939D98();
  v44(v19, v5);
  v24 = swift_allocObject();
  v25 = v43;
  *(v24 + 16) = v50;
  *(v24 + 24) = v25;

  v26 = sub_29D939D28();

  v56 = sub_29D79B1FC;
  v57 = v24;
  aBlock = MEMORY[0x29EDCA5F8];
  v53 = 1107296256;
  v40 = &v54;
  v54 = sub_29D799960;
  v55 = &unk_2A2445238;
  v27 = _Block_copy(&aBlock);

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  sub_29D939D08();
  v51(v23, v19, v5);
  sub_29D935E88();
  v30 = v41;
  sub_29D933A98();
  sub_29D939D98();
  v44(v19, v5);
  v31 = swift_allocObject();
  *(v31 + 16) = v50;
  *(v31 + 24) = v25;

  v32 = sub_29D939D28();

  v56 = sub_29D79B228;
  v57 = v31;
  aBlock = MEMORY[0x29EDCA5F8];
  v53 = 1107296256;
  v54 = sub_29D799960;
  v55 = &unk_2A2445288;
  v33 = _Block_copy(&aBlock);

  v34 = [v28 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  v35 = v42;
  [v42 addAction_];
  [v35 addAction_];
  [v35 setPreferredAction_];

  return v35;
}

id sub_29D79AB4C(uint64_t a1, void *a2)
{
  v38 = a1;
  v39 = a2;
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D939D18();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v32 - v12;
  sub_29D939D08();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A2BE98;
  v43 = unk_2A1A2BEA0;
  v44 = qword_2A1A2BE98;
  v15 = *(v6 + 16);
  v40 = v6 + 16;
  v15(v10, v13, v5);
  v41 = v15;
  sub_29D935E88();
  v35 = v14;
  sub_29D933A98();
  v37 = sub_29D939D98();
  v16 = *(v6 + 8);
  v16(v13, v5);
  v34 = v16;
  sub_29D939D08();
  v33 = v10;
  v15(v10, v13, v5);
  sub_29D935E88();
  v35 = v35;
  sub_29D933A98();
  sub_29D939D98();
  v16(v13, v5);
  v17 = sub_29D939D28();

  v18 = sub_29D939D28();

  v37 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  sub_29D939D08();
  v19 = v33;
  v41(v33, v13, v5);
  sub_29D935E88();
  v35 = v35;
  sub_29D933A98();
  sub_29D939D98();
  v36 = v6 + 8;
  v20 = v34;
  v34(v13, v5);
  v21 = swift_allocObject();
  *(v21 + 16) = v38;
  *(v21 + 24) = v39;

  v22 = sub_29D939D28();

  v49 = sub_29D79B1A4;
  v50 = v21;
  aBlock = MEMORY[0x29EDCA5F8];
  v46 = 1107296256;
  v47 = sub_29D799960;
  v48 = &unk_2A2445148;
  v23 = _Block_copy(&aBlock);

  v24 = objc_opt_self();
  v39 = [v24 actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  sub_29D939D08();
  v41(v19, v13, v5);
  sub_29D935E88();
  v25 = v35;
  sub_29D933A98();
  sub_29D939D98();
  v20(v13, v5);
  v26 = sub_29D939D28();

  v49 = sub_29D79A284;
  v50 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v46 = 1107296256;
  v47 = sub_29D799960;
  v48 = &unk_2A2445170;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  v29 = v37;
  v30 = v39;
  [v37 addAction_];
  [v29 addAction_];
  [v29 setPreferredAction_];

  return v29;
}

uint64_t sub_29D79B1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D79B254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D79B2BC()
{
  v0 = sub_29D937B88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  sub_29D937AE8();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  qword_2A17D0A58 = v6;
  return result;
}

uint64_t sub_29D79B394(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  swift_beginAccess();
  sub_29D69F2FC(a1, v1 + v3);
  swift_endAccess();
  sub_29D79CF0C(v1 + v3, v10, &qword_2A17B1830, sub_29D69F188);
  if (v11)
  {
    sub_29D69F188();
    if (swift_dynamicCast())
    {
      v4 = *(v1 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel);
      v5 = sub_29D939D28();
      [v4 setText_];

      v6 = *(v1 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel);
      v7 = sub_29D939D28();
      [v6 setText_];
    }

    v8 = a1;
  }

  else
  {
    sub_29D79CFE4(a1, &qword_2A17B1830, sub_29D69F188);
    v8 = v10;
  }

  return sub_29D79CFE4(v8, &qword_2A17B1830, sub_29D69F188);
}

uint64_t (*sub_29D79B580(uint64_t *a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  *(v3 + 120) = v1;
  *(v3 + 128) = v4;
  swift_beginAccess();
  return sub_29D79B608;
}

void sub_29D79B608(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29D79CF0C(v3[15] + v3[16], (v3 + 10), &qword_2A17B1830, sub_29D69F188);
    if (v3[13])
    {
      sub_29D69F188();
      if (swift_dynamicCast())
      {
        v4 = v3[15];
        v5 = *(v4 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel);
        v6 = sub_29D939D28();
        [v5 setText_];

        v7 = *(v4 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel);
        v8 = sub_29D939D28();
        [v7 setText_];
      }
    }

    else
    {
      sub_29D79CFE4((v3 + 10), &qword_2A17B1830, sub_29D69F188);
    }
  }

  free(v3);
}

id sub_29D79B7B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

uint64_t sub_29D79B948(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  objc_msgSendSuper2(&v10, sel_setSelected_, v3 & 1);
  result = [v2 isSelected];
  if (result)
  {
    v5 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
    swift_beginAccess();
    sub_29D79CF0C(v2 + v5, v8, &qword_2A17B1830, sub_29D69F188);
    if (v9)
    {
      sub_29D69F188();
      result = swift_dynamicCast();
      if (result)
      {

        v7(v6);
      }
    }

    else
    {
      return sub_29D79CFE4(v8, &qword_2A17B1830, sub_29D69F188);
    }
  }

  return result;
}

id sub_29D79BA90(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v13 = sub_29D93A658();
  [v12 setFont_];

  v14 = [objc_opt_self() labelColor];
  [v12 setTextColor_];

  [v12 setNumberOfLines_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  *&v4[v11] = v12;
  v15 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  *&v4[v15] = sub_29D79B7B8();
  v16 = sub_29D93A658();
  v17 = [objc_opt_self() configurationWithFont:v16 scale:3];

  v18 = sub_29D939D28();
  v19 = [objc_opt_self() systemImageNamed_];

  if (v19)
  {
    v20 = [v19 imageWithConfiguration_];
  }

  else
  {
    v20 = 0;
  }

  v21 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  v22 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setContentMode_];

  LODWORD(v23) = 1148846080;
  [v22 setContentHuggingPriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v24];

  *&v5[v21] = v22;
  v27.receiver = v5;
  v27.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v25 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29D79BE10();

  return v25;
}

void sub_29D79BE10()
{
  v1 = v0;
  sub_29D69F37C(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v62 - v8;
  v10 = [v0 contentView];
  v11 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  [v10 addSubview_];

  v12 = [v1 contentView];
  v63 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  [v12 addSubview_];

  v13 = [v1 contentView];
  v14 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  [v13 addSubview_];

  sub_29D933E48();
  sub_29D93A668();
  sub_29D9379D8();
  v15 = sub_29D9379E8();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 0, 1, v15);
  v17 = MEMORY[0x29ED6A980](v9);
  MEMORY[0x29ED6A970](v17);
  if ((*(v16 + 48))(v6, 1, v15))
  {
    v18 = MEMORY[0x29EDC77B8];
    sub_29D79CF0C(v6, v9, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
    MEMORY[0x29ED6A980](v9);
    sub_29D79CFE4(v6, &qword_2A17B1848, v18);
  }

  else
  {
    v19 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
    sub_29D9379B8();
    MEMORY[0x29ED6A980](v6);
  }

  sub_29D6A0C58();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D941950;
  v21 = [*&v1[v14] topAnchor];
  v22 = [v1 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:16.0];
  *(v20 + 32) = v24;
  v25 = [*&v1[v14] leadingAnchor];
  v26 = [v1 contentView];
  v27 = [v26 leadingAnchor];

  if (qword_2A17B0C40 != -1)
  {
    swift_once();
  }

  v28 = *&qword_2A17D0A58;
  v29 = [v25 constraintEqualToAnchor:v27 constant:*&qword_2A17D0A58];

  *(v20 + 40) = v29;
  v30 = [*&v1[v11] topAnchor];
  v31 = [v1 contentView];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:16.0];
  *(v20 + 48) = v33;
  v34 = [*&v1[v11] leadingAnchor];
  v35 = [*&v1[v14] trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:5.0];

  *(v20 + 56) = v36;
  v37 = [v1 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [*&v1[v11] trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v28];

  *(v20 + 64) = v40;
  v41 = v63;
  v42 = [*&v1[v63] topAnchor];
  v43 = [*&v1[v11] bottomAnchor];
  v44 = [v42 &selRef_dataProvider + 6];

  *(v20 + 72) = v44;
  v45 = [*&v1[v41] leadingAnchor];
  v46 = [*&v1[v14] trailingAnchor];
  v47 = [v45 &selRef_dataProvider + 6];

  *(v20 + 80) = v47;
  v48 = [*&v1[v41] bottomAnchor];
  v49 = [v1 contentView];
  v50 = [v49 bottomAnchor];

  v51 = [v48 &selRef_dataProvider + 6];
  *(v20 + 88) = v51;
  v52 = [v1 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [*&v1[v41] trailingAnchor];
  v55 = [v53 &selRef_dataProvider + 6];

  *(v20 + 96) = v55;
  v56 = [v1 contentView];
  v57 = [v56 bottomAnchor];

  v58 = [*&v1[v41] bottomAnchor];
  v59 = [v57 &selRef_dataProvider + 6];

  *(v20 + 104) = v59;
  v60 = objc_opt_self();
  sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
  v61 = sub_29D939F18();

  [v60 activateConstraints_];
}

id sub_29D79C5CC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29D79C6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  swift_beginAccess();
  return sub_29D79CF0C(v1 + v3, a1, &qword_2A17B1830, sub_29D69F188);
}

void (*sub_29D79C724(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29D79B580(v2);
  return sub_29D69F0C0;
}

void sub_29D79C80C()
{
  v1 = v0;
  sub_29D69F37C(0, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v10 = aBlock - v9;
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = aBlock - v12;
  v14 = sub_29D937978();
  v15 = type metadata accessor for BloodPressureJournalTypeSelectionCell();
  v45.receiver = v1;
  v45.super_class = v15;
  objc_msgSendSuper2(&v45, sel__bridgedUpdateConfigurationUsingState_, v14);

  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v16 = sub_29D93A658();
  v17 = [objc_opt_self() configurationWithFont:v16 scale:3];

  if (([v1 isSelected] & 1) != 0 || objc_msgSend(v1, sel_isHighlighted))
  {
    MEMORY[0x29ED6A970]();
    v18 = sub_29D9379E8();
    if ((*(*(v18 - 8) + 48))(v13, 1, v18))
    {
      v19 = MEMORY[0x29EDC77B8];
      sub_29D79CF0C(v13, v10, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
      MEMORY[0x29ED6A980](v10);
      sub_29D79CFE4(v13, &qword_2A17B1848, v19);
    }

    else
    {
      v20 = [objc_opt_self() systemBlueColor];
      v21 = [v20 colorWithAlphaComponent_];

      sub_29D9379B8();
      MEMORY[0x29ED6A980](v13);
    }

    v22 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
    v23 = *&v1[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark];
    v24 = sub_29D939D28();
    v25 = [objc_opt_self() systemImageNamed_];

    if (v25)
    {
      v26 = [v25 imageWithConfiguration_];
    }

    else
    {
      v26 = 0;
    }

    [v23 setImage_];

    v27 = *&v1[v22];
    [v27 setTintColor_];
  }

  else
  {
    MEMORY[0x29ED6A970]();
    v28 = sub_29D9379E8();
    if ((*(*(v28 - 8) + 48))(v6, 1, v28))
    {
      v29 = MEMORY[0x29EDC77B8];
      sub_29D79CF0C(v6, v10, &qword_2A17B1848, MEMORY[0x29EDC77B8]);
      MEMORY[0x29ED6A980](v10);
      sub_29D79CFE4(v6, &qword_2A17B1848, v29);
    }

    else
    {
      v30 = objc_opt_self();
      v31 = [v30 systemGroupedBackgroundColor];
      v32 = [v30 secondarySystemGroupedBackgroundColor];
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v34 = objc_allocWithZone(MEMORY[0x29EDC7A00]);
      aBlock[4] = sub_29D79CFC4;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D861AC4;
      aBlock[3] = &unk_2A24452D8;
      v35 = _Block_copy(aBlock);
      [v34 initWithDynamicProvider_];
      _Block_release(v35);

      sub_29D9379B8();
      MEMORY[0x29ED6A980](v6);
    }

    v36 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
    v37 = *&v1[OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark];
    v38 = sub_29D939D28();
    v39 = [objc_opt_self() systemImageNamed_];

    if (v39)
    {
      v40 = [v39 imageWithConfiguration_];
    }

    else
    {
      v40 = 0;
    }

    [v37 setImage_];

    v41 = *&v1[v36];
    v42 = objc_opt_self();
    v43 = v41;
    v27 = [v42 secondaryLabelColor];
    [v43 setTintColor_];
  }
}

uint64_t sub_29D79CF0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D69F37C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D79CF78(uint64_t a1)
{
  v2 = sub_29D79D450();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D79CFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D79CFE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D69F37C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D79D040()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  sub_29D69567C(0, &qword_2A17B47B0, 0x29EDC76B0);
  v5 = sub_29D93A658();
  [v4 setFont_];

  v6 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_detailLabel;
  *(v0 + v7) = sub_29D79B7B8();
  v8 = sub_29D93A658();
  v9 = [objc_opt_self() configurationWithFont:v8 scale:3];

  v10 = sub_29D939D28();
  v11 = [objc_opt_self() systemImageNamed_];

  if (v11)
  {
    v12 = [v11 imageWithConfiguration_];
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC5Heart37BloodPressureJournalTypeSelectionCell_selectionMark;
  v14 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithImage_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setContentMode_];

  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v16];

  *(v1 + v13) = v14;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D79D34C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D79D394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D79D3FC()
{
  result = qword_2A17B48D0;
  if (!qword_2A17B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48D0);
  }

  return result;
}

unint64_t sub_29D79D450()
{
  result = qword_2A17B48D8;
  if (!qword_2A17B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalInteractionAnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureJournalInteractionAnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29D79D604(unsigned __int8 a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D79D70C(char a1)
{
  result = 0x5461746144646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 8:
      result = 0xD000000000000016;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6F69746163756465;
      break;
    case 7:
      result = 0x54736E6F6974706FLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_29D79D8C0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_29D79D70C(*a1);
  v5 = v4;
  if (v3 == sub_29D79D70C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D79D948()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D79D70C(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D79D9AC(uint64_t a1)
{
  sub_29D79D70C(*v1);
  sub_29D939E18();

  return result;
}

uint64_t sub_29D79DA00(uint64_t a1)
{
  v2 = *v1;
  sub_29D93AE58();
  sub_29D79D70C(v2);
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D79DA60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D79DD68(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_29D79DA90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29D79D70C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_29D79DAC0()
{
  result = qword_2A17B48E0;
  if (!qword_2A17B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48E0);
  }

  return result;
}

double sub_29D79DB28(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

unint64_t sub_29D79DC20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D79DDB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D79DC50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7573;
  v5 = 0xE700000000000000;
  v6 = 0x656C69666F7270;
  v7 = 0xEC0000006E6F6974;
  v8 = 0x6163696669746F6ELL;
  if (v2 != 4)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x686372616573;
  if (v2 != 1)
  {
    v10 = 0x676E6972616873;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_29D79DD14()
{
  result = qword_2A17B48E8;
  if (!qword_2A17B48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B48E8);
  }

  return result;
}

unint64_t sub_29D79DD68(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_29D79DDB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D93ABF8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for AFibBurdenPDFChartDailySumQuery(uint64_t a1)
{
  result = qword_2A17B48F8;
  if (!qword_2A17B48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D79DE7C(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    result = sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v3 <= 0x3F)
    {
      result = sub_29D69567C(319, &qword_2A1A24930, 0x29EDBAD78);
      if (v4 <= 0x3F)
      {
        result = sub_29D933318();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_29D79DF74()
{
  result = qword_2A17B4910;
  if (!qword_2A17B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4910);
  }

  return result;
}

uint64_t sub_29D79DFC8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x29EDCA190];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v6 = 0;
    v11 = MEMORY[0x29EDCA190];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x29ED6A300]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D939F78();
        }

        sub_29D939FA8();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x29EDCA190];
}

void *sub_29D79E174(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v34 = a1;
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v25 - v7;
  v33 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v28 = *(v33 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v33, v9);
  v32 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v27 = &v25 - v13;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    v15 = 0;
    v30 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = a3 & 0xC000000000000001;
    v16 = (v28 + 48);
    v17 = MEMORY[0x29EDCA190];
    v26 = a3;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v18 = MEMORY[0x29ED6AE30](v15, a3);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a3 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v35 = v18;
      v34(&v35);
      if (v3)
      {

        return v17;
      }

      if ((*v16)(v8, 1, v33) == 1)
      {
        sub_29D7A0CC0(v8, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
      }

      else
      {
        v21 = v27;
        sub_29D7A0F98(v8, v27, type metadata accessor for AFibBurdenPDFChartPoint);
        sub_29D7A0F98(v21, v32, type metadata accessor for AFibBurdenPDFChartPoint);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_29D68FC3C(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_29D68FC3C((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_29D7A0F98(v32, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for AFibBurdenPDFChartPoint);
        a3 = v26;
      }

      ++v15;
      if (v20 == v29)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x29EDCA190];
}

void *sub_29D79E4D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_29D7A0F44(0, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for HealthCalendarDayContent(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v33 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x29EDCA190];
  }

  v19 = *(sub_29D9339F8() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x29EDCA190];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_29D7A0CC0(v10, &qword_2A17B49A8, type metadata accessor for HealthCalendarDayContent);
    }

    else
    {
      v23 = v31;
      sub_29D7A0F98(v10, v31, type metadata accessor for HealthCalendarDayContent);
      sub_29D7A0F98(v23, v33, type metadata accessor for HealthCalendarDayContent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_29D69036C(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_29D69036C((v24 > 1), v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_29D7A0F98(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for HealthCalendarDayContent);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_29D79E810(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v3[25] = *(v7 + 64);
  v3[26] = swift_task_alloc();
  v8 = sub_29D9339F8();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[30] = v9;
  *v9 = v3;
  v9[1] = sub_29D79EA10;

  return sub_29D79F0B4(a1);
}

uint64_t sub_29D79EA10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D79EB7C, 0, 0);
  }
}

uint64_t sub_29D79EB7C()
{
  v1 = [*(v0 + 248) statistics];
  sub_29D69567C(0, &qword_2A17B4920, 0x29EDBAE18);
  v2 = sub_29D939F38();

  if (v2 >> 62)
  {
    sub_29D7A0B14();
    sub_29D935E88();
    sub_29D93AB48();
  }

  else
  {
    sub_29D935E88();
    sub_29D93AD88();
    sub_29D7A0B14();
  }

  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v31 = *(v0 + 208);
  v32 = *(v0 + 192);
  v6 = *(v0 + 144);
  v33 = *(v0 + 200);
  v34 = *(v0 + 136);

  v35 = objc_opt_self();
  sub_29D7A0B14();
  v7 = sub_29D939F18();

  sub_29D9331A8();
  v8 = sub_29D933958();
  (*(v3 + 8))(v4, v5);
  v9 = sub_29D933288();
  v10 = sub_29D933BB8();
  sub_29D7A0B78(v6, v31);
  v11 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v12 = swift_allocObject();
  sub_29D7A0F98(v31, v12 + v11, type metadata accessor for AFibBurdenPDFChartDailySumQuery);
  *(v12 + ((v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_29D7A0BDC;
  *(v13 + 24) = v12;
  *(v0 + 48) = sub_29D7A0CA0;
  *(v0 + 56) = v13;
  *(v0 + 16) = MEMORY[0x29EDCA5F8];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_29D7A0568;
  *(v0 + 40) = &unk_2A24455A0;
  v14 = _Block_copy((v0 + 16));
  v15 = v34;

  v16 = [v35 arrayByCoalescingObjects:v7 startDate:v8 intervalComponents:v9 calendar:v10 combiningBlock:v14];
  _Block_release(v14);

  if (v16)
  {
    v17 = sub_29D939F38();

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v0 + 168);
      v20 = v17 + 32;
      v21 = MEMORY[0x29EDCA190];
      do
      {
        v23 = *(v0 + 152);
        v22 = *(v0 + 160);
        sub_29D694294(v20, v0 + 64);
        sub_29D6940E0((v0 + 64), (v0 + 96));
        v24 = swift_dynamicCast();
        (*(v19 + 56))(v23, v24 ^ 1u, 1, v22);
        if ((*(v19 + 48))(v23, 1, v22) == 1)
        {
          sub_29D7A0CC0(*(v0 + 152), &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
        }

        else
        {
          sub_29D7A0F98(*(v0 + 152), *(v0 + 176), type metadata accessor for AFibBurdenPDFChartPoint);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_29D68FC3C(0, v21[2] + 1, 1, v21);
          }

          v26 = v21[2];
          v25 = v21[3];
          if (v26 >= v25 >> 1)
          {
            v21 = sub_29D68FC3C((v25 > 1), v26 + 1, 1, v21);
          }

          v27 = *(v0 + 176);
          v21[2] = v26 + 1;
          sub_29D7A0F98(v27, v21 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, type metadata accessor for AFibBurdenPDFChartPoint);
        }

        v20 += 32;
        --v18;
      }

      while (v18);
      v28 = *(v0 + 248);
    }

    else
    {
      v28 = *(v0 + 248);

      v21 = MEMORY[0x29EDCA190];
    }
  }

  else
  {

    v21 = MEMORY[0x29EDCA190];
  }

  v29 = *(v0 + 8);

  return v29(v21);
}

uint64_t sub_29D79F0B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v5 = sub_29D9339F8();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D79F1D8, 0, 0);
}

uint64_t sub_29D79F1D8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  v17 = *(v4 + *(v5 + 24));
  v15 = objc_opt_self();
  sub_29D9331A8();
  v6 = sub_29D933958();
  v7 = *(v2 + 8);
  v7(v1, v3);
  v16 = v7;
  sub_29D933178();
  v8 = sub_29D933958();
  v7(v1, v3);
  v9 = [v15 predicateForSamplesWithStartDate:v6 endDate:v8 options:0];

  if (*(v4 + *(v5 + 36)))
  {
    v10 = 64;
  }

  else
  {
    v10 = 16;
  }

  sub_29D933178();
  v11 = objc_allocWithZone(MEMORY[0x29EDBAE28]);
  v12 = sub_29D933958();
  v13 = sub_29D933288();
  v0[26] = [v11 initWithSampleType:v17 samplePredicate:v9 options:v10 anchorDate:v12 intervalComponents:v13];

  v16(v1, v3);

  return MEMORY[0x2A1C73D48](sub_29D79F3AC, 0, 0);
}

uint64_t sub_29D79F3AC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[26];
  v8 = v1[21];
  v7 = v1[22];
  v9 = v1[20];
  v17 = v1[19];
  v10 = v1[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_29D79F580;
  v11 = swift_continuation_init();
  sub_29D7A0B78(v10, v7);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_29D7A0F98(v7, v14 + v12, type metadata accessor for AFibBurdenPDFChartDailySumQuery);
  *(v14 + v13) = v11;
  v1[14] = sub_29D7A0E38;
  v1[15] = v14;
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D7A09D0;
  v1[13] = &unk_2A24455F0;
  v15 = _Block_copy(v4);

  [v6 setInitialResultsHandler_];
  _Block_release(v15);
  [*(v10 + *(v17 + 20)) executeQuery_];

  return MEMORY[0x2A1C73CC0](v3);
}

uint64_t sub_29D79F580(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 216) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_29D79F720;
  }

  else
  {
    *(v2 + 224) = *(v2 + 128);
    v4 = sub_29D79F6A4;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D79F6A4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 224);

  return v1(v2);
}

uint64_t sub_29D79F720()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29D79F798@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a5;
  v141 = a4;
  v139 = a3;
  v137 = a1;
  v8 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v140 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v136 = &v128 - v14;
  MEMORY[0x2A1C7C4A8](v13, v15);
  v130 = &v128 - v16;
  v17 = sub_29D9331D8();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v133 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A0F44(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v25);
  v27 = &v128 - v26;
  v28 = sub_29D9339F8();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v131 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v36 = &v128 - v35;
  v38 = MEMORY[0x2A1C7C4A8](v34, v37);
  v138 = &v128 - v39;
  MEMORY[0x2A1C7C4A8](v38, v40);
  v42 = &v128 - v41;
  sub_29D6A0A20(a2, v27);
  v43 = *(v29 + 48);
  if (v43(v27, 1, v28) == 1)
  {
    v24 = v27;
LABEL_5:
    sub_29D7A0CC0(v24, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
    v45 = v141;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v46 = sub_29D937898();
    sub_29D69C6C0(v46, qword_2A1A2BF28);
    v47 = v140;
    sub_29D7A0B78(v45, v140);
    v48 = sub_29D937878();
    v49 = sub_29D93A288();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = a6;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v142 = v8;
      v143[0] = v52;
      *v51 = 136446466;
      sub_29D7A0D78();
      v53 = sub_29D939DA8();
      v55 = sub_29D6C2364(v53, v54, v143);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v56 = [*(v47 + *(v8 + 24)) description];
      v57 = sub_29D939D68();
      v59 = v58;

      sub_29D7A0D1C(v47);
      v60 = sub_29D6C2364(v57, v59, v143);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_29D677000, v48, v49, "[%{public}s] Missing start/end date when computing weekly average for %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v52, -1, -1);
      v61 = v51;
      a6 = v50;
      MEMORY[0x29ED6BE30](v61, -1, -1);
    }

    else
    {

      sub_29D7A0D1C(v47);
    }

    v62 = type metadata accessor for AFibBurdenPDFChartPoint(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = a6;
    return v63(v64, 1, 1, v62);
  }

  v128 = v8;
  v129 = a6;
  v44 = *(v29 + 32);
  v44(v42, v27, v28);
  sub_29D6A0A20(v139, v24);
  if (v43(v24, 1, v28) == 1)
  {
    (*(v29 + 8))(v42, v28);
    v8 = v128;
    a6 = v129;
    goto LABEL_5;
  }

  v139 = v42;
  v140 = v29;
  v66 = v138;
  v44(v138, v24, v28);
  if (!v137 || (v67 = sub_29D838518(v137)) == 0)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v87 = sub_29D937898();
    sub_29D69C6C0(v87, qword_2A1A2BF28);
    v88 = v136;
    sub_29D7A0B78(v141, v136);
    v89 = sub_29D937878();
    v90 = sub_29D93A288();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 136446466;
      v93 = v128;
      v142 = v128;
      v143[0] = v92;
      sub_29D7A0D78();
      v94 = sub_29D939DA8();
      v96 = v28;
      v97 = sub_29D6C2364(v94, v95, v143);

      *(v91 + 4) = v97;
      *(v91 + 12) = 2080;
      v98 = [*(v88 + *(v93 + 24)) description];
      v99 = sub_29D939D68();
      v100 = v88;
      v101 = v66;
      v103 = v102;

      sub_29D7A0D1C(v100);
      v104 = sub_29D6C2364(v99, v103, v143);

      *(v91 + 14) = v104;
      _os_log_impl(&dword_29D677000, v89, v90, "[%{public}s] Missing statistics when computing weekly average for %s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v92, -1, -1);
      MEMORY[0x29ED6BE30](v91, -1, -1);

      v105 = *(v140 + 8);
      v105(v101, v96);
      v105(v139, v96);
    }

    else
    {

      v106 = *(v140 + 8);
      v106(v66, v28);
      v106(v139, v28);
      sub_29D7A0D1C(v88);
    }

    v107 = v129;
    v62 = type metadata accessor for AFibBurdenPDFChartPoint(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v107;
    return v63(v64, 1, 1, v62);
  }

  v68 = v67;
  v70 = v139;
  v69 = v140;
  v71 = *(v140 + 16);
  v71(v36, v139, v28);
  v71(v131, v66, v28);
  v72 = v133;
  v73 = sub_29D933188();
  MEMORY[0x2A1C7C4A8](v73, v74);
  v75 = v141;
  *(&v128 - 2) = v141;
  sub_29D79DFC8(sub_29D7A0DC0, (&v128 - 4), v68);

  v76 = objc_opt_self();
  sub_29D69567C(0, &qword_2A17B4700, 0x29EDBACF8);
  v77 = sub_29D939F18();

  v78 = v132;
  v79 = [v76 averageSumFromQuantities:v77 unit:v132];

  if (!v79)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v108 = sub_29D937898();
    sub_29D69C6C0(v108, qword_2A1A2BF28);
    v109 = v75;
    v110 = v130;
    sub_29D7A0B78(v109, v130);
    v111 = sub_29D937878();
    v112 = sub_29D93A288();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v141 = v114;
      *v113 = 136446466;
      v115 = v128;
      v142 = v128;
      v143[0] = v114;
      sub_29D7A0D78();
      v116 = sub_29D939DA8();
      v118 = sub_29D6C2364(v116, v117, v143);

      *(v113 + 4) = v118;
      *(v113 + 12) = 2080;
      v119 = [*(v110 + *(v115 + 24)) description];
      v120 = sub_29D939D68();
      v121 = v28;
      v123 = v122;

      sub_29D7A0D1C(v110);
      v124 = sub_29D6C2364(v120, v123, v143);

      *(v113 + 14) = v124;
      _os_log_impl(&dword_29D677000, v111, v112, "[%{public}s] Could not compute average sum for %s", v113, 0x16u);
      v125 = v141;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v125, -1, -1);
      MEMORY[0x29ED6BE30](v113, -1, -1);

      (*(v134 + 8))(v72, v135);
      v126 = *(v140 + 8);
      v126(v66, v121);
      v126(v139, v121);
    }

    else
    {

      (*(v134 + 8))(v72, v135);
      v127 = *(v140 + 8);
      v127(v66, v28);
      v127(v139, v28);
      sub_29D7A0D1C(v110);
    }

    v62 = type metadata accessor for AFibBurdenPDFChartPoint(0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v129;
    return v63(v64, 1, 1, v62);
  }

  [v79 doubleValueForUnit_];
  v81 = v80;
  v83 = v134;
  v82 = v135;
  v84 = v129;
  (*(v134 + 16))(v129, v72, v135);

  (*(v83 + 8))(v72, v82);
  v85 = *(v69 + 8);
  v85(v66, v28);
  v85(v70, v28);
  v86 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  *(v84 + *(v86 + 20)) = v81;
  *(v84 + *(v86 + 24)) = MEMORY[0x29EDCA1A0];
  return (*(*(v86 - 8) + 56))(v84, 0, 1, v86);
}

_OWORD *sub_29D7A0414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  sub_29D7A0F44(0, &qword_2A17B4918, type metadata accessor for AFibBurdenPDFChartPoint);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v17 - v12;
  a4(a1, a2, a3);
  v14 = type metadata accessor for AFibBurdenPDFChartPoint(0);
  result = (*(*(v14 - 8) + 48))(v13, 1, v14);
  if (result == 1)
  {
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {
    v18 = v14;
    v16 = sub_29D693F78(&v17);
    sub_29D7A0F98(v13, v16, type metadata accessor for AFibBurdenPDFChartPoint);
    return sub_29D6940E0(&v17, a5);
  }

  return result;
}

id sub_29D7A0568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D7A0F44(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = v29 - v14;
  v16 = *(a1 + 32);
  if (a2)
  {
    sub_29D7A0B14();
    a2 = sub_29D939F38();
  }

  if (a3)
  {
    sub_29D933998();
    v17 = sub_29D9339F8();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v18 = sub_29D9339F8();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  }

  if (a4)
  {
    sub_29D933998();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_29D9339F8();
  (*(*(v20 - 8) + 56))(v12, v19, 1, v20);

  v16(v29, a2, v15, v12);

  v21 = MEMORY[0x29EDB9BC8];
  sub_29D7A0CC0(v12, &qword_2A1A25780, MEMORY[0x29EDB9BC8]);
  sub_29D7A0CC0(v15, &qword_2A1A25780, v21);
  v22 = v30;
  if (v30)
  {
    v23 = sub_29D693E2C(v29, v30);
    v24 = *(v22 - 8);
    MEMORY[0x2A1C7C4A8](v23, v23);
    v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v26);
    v27 = sub_29D93AD68();
    (*(v24 + 8))(v26, v22);
    sub_29D69417C(v29);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t sub_29D7A0894(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a4 + *(type metadata accessor for AFibBurdenPDFChartDailySumQuery(0) + 20)) stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_29D8F3B8C(MEMORY[0x29EDCA190]);
      sub_29D7A0EEC();
      sub_29D933578();
      v10 = v13;
    }

    sub_29D6A0CD0();
    swift_allocError();
    *v11 = v10;
    v12 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

void sub_29D7A09D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_29D7A0A70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D68E20C;

  return sub_29D79E810(a1, a2);
}

unint64_t sub_29D7A0B14()
{
  result = qword_2A17B4928;
  if (!qword_2A17B4928)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B4928);
  }

  return result;
}

uint64_t sub_29D7A0B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D7A0BDC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AFibBurdenPDFChartDailySumQuery(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D79F798(a1, a2, a3, v4 + v10, v11, a4);
}

uint64_t sub_29D7A0CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D7A0CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D7A0F44(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D7A0D1C(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenPDFChartDailySumQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D7A0D78()
{
  result = qword_2A17B4998;
  if (!qword_2A17B4998)
  {
    type metadata accessor for AFibBurdenPDFChartDailySumQuery(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B4998);
  }

  return result;
}

id sub_29D7A0DC0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  if (*(v4 + *(type metadata accessor for AFibBurdenPDFChartDailySumQuery(0) + 36)))
  {
    v6 = &selRef_duration;
  }

  else
  {
    v6 = &selRef_sumQuantity;
  }

  result = [v5 *v6];
  *a2 = result;
  return result;
}

uint64_t sub_29D7A0E38(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for AFibBurdenPDFChartDailySumQuery(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D7A0894(a1, a2, a3, v3 + v8, v9);
}

unint64_t sub_29D7A0EEC()
{
  result = qword_2A17B1328;
  if (!qword_2A17B1328)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1328);
  }

  return result;
}

void sub_29D7A0F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D7A0F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D7A1068(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D7A5BCC(0, &qword_2A17B4A98, sub_29D7A5980, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.OpenKnowledgeBaseArticleCodingKeys, MEMORY[0x29EDC9E88]);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v65 = &v49 - v5;
  sub_29D7A5BCC(0, &qword_2A17B4AA0, sub_29D7A59D4, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHeartRateSettingsCodingKeys, v2);
  v63 = v6;
  v61 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v60 = &v49 - v8;
  sub_29D7A5BCC(0, &qword_2A17B4AA8, sub_29D7A5A28, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v2);
  v66 = v9;
  v64 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v62 = &v49 - v11;
  sub_29D7A5BCC(0, &qword_2A17B4AB0, sub_29D7A5A7C, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v2);
  v57 = v12;
  v53 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v52 = &v49 - v14;
  sub_29D7A5BCC(0, &qword_2A17B4AB8, sub_29D7A5AD0, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v2);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v56 = &v49 - v17;
  v69 = type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
  v19 = MEMORY[0x2A1C7C4A8](v69, v18);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v55 = &v49 - v22;
  sub_29D7A5BCC(0, &qword_2A17B4AC0, sub_29D7A5B24, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v2);
  v51 = v23;
  v50 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = &v49 - v25;
  v27 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7A5BCC(0, &qword_2A17B4AC8, sub_29D7A5B78, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v2);
  v32 = v31;
  v71 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v49 - v34;
  sub_29D693E2C(a1, a1[3]);
  sub_29D7A5B78();
  v70 = v35;
  sub_29D93AED8();
  sub_29D7A5C34(v72, v30, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v75 = 2;
      sub_29D7A5A7C();
      v46 = v52;
      v47 = v70;
      sub_29D93ACA8();
      (*(v53 + 8))(v46, v57);
      return (*(v71 + 8))(v47, v32);
    }

    v37 = v32;
    if (EnumCaseMultiPayload == 4)
    {
      v77 = 4;
      sub_29D7A59D4();
      v43 = v60;
      v44 = v70;
      sub_29D93ACA8();
      (*(v61 + 8))(v43, v63);
    }

    else
    {
      v78 = 5;
      sub_29D7A5980();
      v48 = v65;
      v44 = v70;
      sub_29D93ACA8();
      (*(v67 + 8))(v48, v68);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v38 = v55;
      sub_29D7A4ADC(v30, v55, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v74 = 1;
      sub_29D7A5AD0();
      v39 = v56;
      v37 = v32;
      v40 = v70;
      sub_29D93ACA8();
      sub_29D7A48AC(&qword_2A17B4AD0, type metadata accessor for CardioFitnessHealthChecklistSettingsState, &unk_29D95258C);
      v41 = v59;
      sub_29D93AD18();
      v42 = v58;
      goto LABEL_9;
    }

    v37 = v32;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = v54;
      sub_29D7A4ADC(v30, v54, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      v76 = 3;
      sub_29D7A5A28();
      v39 = v62;
      v40 = v70;
      sub_29D93ACA8();
      sub_29D7A48AC(&qword_2A17B4AD0, type metadata accessor for CardioFitnessHealthChecklistSettingsState, &unk_29D95258C);
      v41 = v66;
      sub_29D93AD18();
      v42 = v64;
LABEL_9:
      (*(v42 + 8))(v39, v41);
      sub_29D7A5D80(v38, type metadata accessor for CardioFitnessHealthChecklistSettingsState);
      return (*(v71 + 8))(v40, v37);
    }

    v73 = 0;
    sub_29D7A5B24();
    v44 = v70;
    sub_29D93ACA8();
    (*(v50 + 8))(v26, v51);
  }

  return (*(v71 + 8))(v44, v37);
}

uint64_t sub_29D7A19B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D7A5BCC(0, &qword_2A17B4A20, sub_29D7A5980, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.OpenKnowledgeBaseArticleCodingKeys, MEMORY[0x29EDC9E80]);
  v83 = v4;
  v79 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v90 = &v69 - v6;
  sub_29D7A5BCC(0, &qword_2A17B4A30, sub_29D7A59D4, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.DeepLinkToHeartRateSettingsCodingKeys, v3);
  v80 = v7;
  v78 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v8);
  v85 = &v69 - v9;
  sub_29D7A5BCC(0, &qword_2A17B4A40, sub_29D7A5A28, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PushEnabledFeatureSettingsCodingKeys, v3);
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v89 = &v69 - v12;
  sub_29D7A5BCC(0, &qword_2A17B4A50, sub_29D7A5A7C, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentHealthDetailsCodingKeys, v3);
  v76 = v13;
  v75 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v84 = &v69 - v15;
  sub_29D7A5BCC(0, &qword_2A17B4A60, sub_29D7A5AD0, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentFeatureSettingsCodingKeys, v3);
  v74 = v16;
  v77 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v88 = &v69 - v18;
  sub_29D7A5BCC(0, &qword_2A17B4A70, sub_29D7A5B24, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.PresentOnboardingCodingKeys, v3);
  v87 = v19;
  v73 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v86 = &v69 - v21;
  sub_29D7A5BCC(0, &qword_2A17B4A80, sub_29D7A5B78, &type metadata for CardioFitnessFeatureStatusActionHandlerUserData.TapAction.CodingKeys, v3);
  v23 = v22;
  v91 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v69 - v25;
  v27 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
  v29 = MEMORY[0x2A1C7C4A8](v27, v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v29, v32);
  v35 = &v69 - v34;
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v69 - v37;
  v39 = a1[3];
  v95 = a1;
  sub_29D693E2C(a1, v39);
  sub_29D7A5B78();
  v93 = v26;
  v40 = v94;
  sub_29D93AEC8();
  if (!v40)
  {
    v41 = v86;
    v94 = 0;
    v70 = v35;
    v71 = v31;
    v42 = v87;
    v43 = v88;
    v45 = v89;
    v44 = v90;
    v72 = v38;
    v46 = v92;
    v47 = sub_29D93AC98();
    v48 = (2 * *(v47 + 16)) | 1;
    v96 = v47;
    v97 = v47 + 32;
    v98 = 0;
    v99 = v48;
    v49 = sub_29D87285C();
    if (v49 == 6 || v98 != v99 >> 1)
    {
      v53 = sub_29D93AA78();
      swift_allocError();
      v55 = v54;
      sub_29D6CA748(0);
      *v55 = v27;
      v56 = v93;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v53 - 8) + 104))(v55, *MEMORY[0x29EDC9DB8], v53);
      swift_willThrow();
      (*(v91 + 8))(v56, v23);
LABEL_10:
      sub_29D936978();
      return sub_29D69417C(v95);
    }

    if (v49 <= 2u)
    {
      if (v49)
      {
        v50 = v94;
        if (v49 == 1)
        {
          v100 = 1;
          sub_29D7A5AD0();
          sub_29D93AC08();
          if (!v50)
          {
            type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
            sub_29D7A48AC(&qword_2A17B4A90, type metadata accessor for CardioFitnessHealthChecklistSettingsState, &unk_29D9525B4);
            v51 = v70;
            v52 = v74;
            sub_29D93AC88();
            (*(v77 + 8))(v43, v52);
            (*(v91 + 8))(v93, v23);
            sub_29D936978();
            swift_storeEnumTagMultiPayload();
            v68 = v51;
LABEL_27:
            v61 = v72;
            sub_29D7A4ADC(v68, v72, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v100 = 2;
        sub_29D7A5A7C();
        v66 = v84;
        sub_29D93AC08();
        if (v50)
        {
LABEL_22:
          (*(v91 + 8))(v93, v23);
          goto LABEL_10;
        }

        (*(v75 + 8))(v66, v76);
        (*(v91 + 8))(v93, v23);
        sub_29D936978();
        v61 = v72;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v100 = 0;
        sub_29D7A5B24();
        v62 = v94;
        sub_29D93AC08();
        if (v62)
        {
          goto LABEL_22;
        }

        (*(v73 + 8))(v41, v42);
        (*(v91 + 8))(v93, v23);
        sub_29D936978();
        v61 = v72;
        swift_storeEnumTagMultiPayload();
      }

LABEL_28:
      sub_29D7A4ADC(v61, v46, type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction);
      return sub_29D69417C(v95);
    }

    v58 = v91;
    if (v49 == 3)
    {
      v100 = 3;
      sub_29D7A5A28();
      v63 = v94;
      sub_29D93AC08();
      if (!v63)
      {
        type metadata accessor for CardioFitnessHealthChecklistSettingsState(0);
        sub_29D7A48AC(&qword_2A17B4A90, type metadata accessor for CardioFitnessHealthChecklistSettingsState, &unk_29D9525B4);
        v64 = v71;
        v65 = v82;
        sub_29D93AC88();
        (*(v81 + 8))(v45, v65);
        (*(v58 + 8))(v93, v23);
        sub_29D936978();
        swift_storeEnumTagMultiPayload();
        v68 = v64;
        goto LABEL_27;
      }
    }

    else if (v49 == 4)
    {
      v100 = 4;
      sub_29D7A59D4();
      v59 = v85;
      v60 = v94;
      sub_29D93AC08();
      if (!v60)
      {
        (*(v78 + 8))(v59, v80);
        (*(v58 + 8))(v93, v23);
        sub_29D936978();
        v61 = v72;
        swift_storeEnumTagMultiPayload();
        goto LABEL_28;
      }
    }

    else
    {
      v100 = 5;
      sub_29D7A5980();
      v67 = v94;
      sub_29D93AC08();
      if (!v67)
      {
        (*(v79 + 8))(v44, v83);
        (*(v58 + 8))(v93, v23);
        sub_29D936978();
        v61 = v72;
        swift_storeEnumTagMultiPayload();
        v46 = v92;
        goto LABEL_28;
      }
    }

    (*(v58 + 8))(v93, v23);
    goto LABEL_10;
  }

  return sub_29D69417C(v95);
}