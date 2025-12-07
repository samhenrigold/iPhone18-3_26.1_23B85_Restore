char *sub_1BB65138C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BB6BB564();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v54 = MEMORY[0x1E69E7CC0];
    result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_68;
    }

    v5 = v54;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v55 = *(MEMORY[0x1BFB111F0](i, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MinX = CGRectGetMinX(v55);
        swift_unknownObjectRelease();
        v9 = *(v54 + 16);
        v8 = *(v54 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1BB5E58C0((v8 > 1), v9 + 1, 1);
        }

        *(v54 + 16) = v9 + 1;
        *(v54 + 8 * v9 + 32) = MinX;
      }
    }

    else
    {
      v31 = (a1 + 32);
      v32 = v2;
      do
      {
        v33 = CGRectGetMinX(*(*v31 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        v35 = *(v54 + 16);
        v34 = *(v54 + 24);
        if (v35 >= v34 >> 1)
        {
          v36 = v33;
          sub_1BB5E58C0((v34 > 1), v35 + 1, 1);
          v33 = v36;
        }

        *(v54 + 16) = v35 + 1;
        *(v54 + 8 * v35 + 32) = v33;
        ++v31;
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1BB5A1724(v5);
  v11 = v10;

  if (v11)
  {
    if (v2)
    {
      goto LABEL_14;
    }

LABEL_22:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_14:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v2; ++j)
    {
      v56 = *(MEMORY[0x1BFB111F0](j, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      MaxX = CGRectGetMaxX(v56);
      swift_unknownObjectRelease();
      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BB5E58C0((v15 > 1), v16 + 1, 1);
      }

      *(v3 + 16) = v16 + 1;
      *(v3 + 8 * v16 + 32) = MaxX;
    }
  }

  else
  {
    v37 = (a1 + 32);
    v38 = v2;
    do
    {
      v39 = CGRectGetMaxX(*(*v37 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
      v41 = *(v3 + 16);
      v40 = *(v3 + 24);
      if (v41 >= v40 >> 1)
      {
        v42 = v39;
        sub_1BB5E58C0((v40 > 1), v41 + 1, 1);
        v39 = v42;
      }

      *(v3 + 16) = v41 + 1;
      *(v3 + 8 * v41 + 32) = v39;
      ++v37;
      --v38;
    }

    while (v38);
  }

LABEL_23:
  sub_1BB5A1450(v12);
  v18 = v17;

  if (v18)
  {
    if (v2)
    {
      goto LABEL_25;
    }

LABEL_33:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  if (!v2)
  {
    goto LABEL_33;
  }

LABEL_25:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v19 = v3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (k = 0; k != v2; ++k)
    {
      v57 = *(MEMORY[0x1BFB111F0](k, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      MinY = CGRectGetMinY(v57);
      swift_unknownObjectRelease();
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BB5E58C0((v22 > 1), v23 + 1, 1);
      }

      *(v3 + 16) = v23 + 1;
      *(v3 + 8 * v23 + 32) = MinY;
    }
  }

  else
  {
    v43 = (a1 + 32);
    v44 = v2;
    do
    {
      v45 = CGRectGetMinY(*(*v43 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
      v47 = *(v3 + 16);
      v46 = *(v3 + 24);
      if (v47 >= v46 >> 1)
      {
        v48 = v45;
        sub_1BB5E58C0((v46 > 1), v47 + 1, 1);
        v45 = v48;
      }

      *(v3 + 16) = v47 + 1;
      *(v3 + 8 * v47 + 32) = v45;
      ++v43;
      --v44;
    }

    while (v44);
  }

LABEL_34:
  sub_1BB5A1724(v19);
  v25 = v24;

  if (v25)
  {
    if (v2)
    {
      goto LABEL_36;
    }

LABEL_44:
    v26 = MEMORY[0x1E69E7CC0];
LABEL_45:
    sub_1BB5A1450(v26);

    return a1;
  }

  if (!v2)
  {
    goto LABEL_44;
  }

LABEL_36:
  result = sub_1BB5E58C0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v26 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (m = 0; m != v2; ++m)
      {
        v58 = *(MEMORY[0x1BFB111F0](m, a1) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MaxY = CGRectGetMaxY(v58);
        swift_unknownObjectRelease();
        v30 = *(v3 + 16);
        v29 = *(v3 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1BB5E58C0((v29 > 1), v30 + 1, 1);
        }

        *(v3 + 16) = v30 + 1;
        *(v3 + 8 * v30 + 32) = MaxY;
      }
    }

    else
    {
      v49 = (a1 + 32);
      do
      {
        v50 = CGRectGetMaxY(*(*v49 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        v52 = *(v3 + 16);
        v51 = *(v3 + 24);
        if (v52 >= v51 >> 1)
        {
          v53 = v50;
          sub_1BB5E58C0((v51 > 1), v52 + 1, 1);
          v50 = v53;
        }

        *(v3 + 16) = v52 + 1;
        *(v3 + 8 * v52 + 32) = v50;
        ++v49;
        --v2;
      }

      while (v2);
    }

    goto LABEL_45;
  }

LABEL_70:
  __break(1u);
  return result;
}

void sub_1BB651994(unint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v188 = a4;
  v189 = a3;
  v191 = a2;
  v187 = sub_1BB6BAA34();
  v5 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v7 = v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_185;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v9 < v191)
  {
    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v186 = v7;
  v194 = a1;
  if (v9)
  {
    v202 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5900(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      goto LABEL_189;
    }

    v10 = v202;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x1BFB111F0](v12, v194);
        v14 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        MidX = CGRectGetMidX(*(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        MidY = CGRectGetMidY(*v14);
        v202 = v10;
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = MidY;
          sub_1BB5E5900((v17 > 1), v18 + 1, 1);
          MidY = v20;
          v10 = v202;
        }

        ++v12;
        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = sqrt((MidX + -0.5) * (MidX + -0.5) + (MidY + -0.5) * (MidY + -0.5));
        *(v19 + 40) = v13;
      }

      while (v9 != v12);
    }

    else
    {
      v21 = (a1 + 32);
      do
      {
        v22 = *v21;
        v23 = *v21 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);

        v207.origin.x = v24;
        v207.origin.y = v25;
        v207.size.width = v26;
        v207.size.height = v27;
        v28 = CGRectGetMidX(v207);
        v29 = CGRectGetMidY(*v23);
        v202 = v10;
        v31 = *(v10 + 16);
        v30 = *(v10 + 24);
        if (v31 >= v30 >> 1)
        {
          v33 = v29;
          sub_1BB5E5900((v30 > 1), v31 + 1, 1);
          v29 = v33;
          v10 = v202;
        }

        *(v10 + 16) = v31 + 1;
        v32 = v10 + 16 * v31;
        *(v32 + 32) = sqrt((v28 + -0.5) * (v28 + -0.5) + (v29 + -0.5) * (v29 + -0.5));
        *(v32 + 40) = v22;
        ++v21;
        --v9;
      }

      while (v9);
    }
  }

  v202 = v10;

  a1 = 0;
  sub_1BB6509B0(&v202);
  v180[1] = 0;

  v34 = v202;
  v204 = MEMORY[0x1E69E7CD0];
  v35 = v202[2];
  v7 = &unk_1BB6C5000;
  if (v35)
  {
    v200 = v8;
    v201 = v5;
    v36 = 0;
    v5 = (v202 + 4);
    v195 = MEMORY[0x1E69E7CC0];
    v8 = 24;
    while (1)
    {
      if (v36 >= *(v34 + 16))
      {
        goto LABEL_181;
      }

      v41 = v5 + 16 * v36;
      v42 = *v41;
      v7 = *(v41 + 8);
      v43 = v204;
      if (*(v204 + 16))
      {
        v44 = sub_1BB6BB914();
        v45 = -1 << *(v43 + 32);
        v46 = v44 & ~v45;
        if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (*(*(v43 + 48) + 8 * v46) != v42)
          {
            v46 = (v46 + 1) & v47;
            if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          goto LABEL_25;
        }
      }

LABEL_32:
      v48 = (v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      v49 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
      v50 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 8);
      v51 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 16);
      v52 = *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 24);

      v208.origin.x = v49;
      v208.origin.y = v50;
      v208.size.width = v51;
      v208.size.height = v52;
      v53 = CGRectGetMidX(v208);
      v54 = CGRectGetMidY(*v48);
      v55 = *(*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (fabs(v55) < 0.00001)
      {
        break;
      }

      v37 = 1.0 / v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_22:
      a1 = *(v195 + 2);
      v38 = *(v195 + 3);
      if (a1 >= v38 >> 1)
      {
        v195 = sub_1BB59DC6C((v38 > 1), a1 + 1, 1, v195);
      }

      v39 = v195;
      *(v195 + 2) = a1 + 1;
      v40 = &v39[24 * a1];
      v40[4] = v53;
      v40[5] = v54;
      v40[6] = v37;
      sub_1BB5AD468(&v202, v42);

LABEL_25:
      if (++v36 == v35)
      {

        v8 = v200;
        v5 = v201;
        v7 = 0x1BB6C5000;
        goto LABEL_37;
      }
    }

    if (v55 <= 0)
    {
      v37 = -100000.0;
    }

    else
    {
      v37 = 100000.0;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

LABEL_34:
    v195 = sub_1BB59DC6C(0, *(v195 + 2) + 1, 1, v195);
    goto LABEL_22;
  }

  v195 = MEMORY[0x1E69E7CC0];
LABEL_37:
  v11 = &v206;
  v58 = v194;
  if (v191 < 0)
  {
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);

    __break(1u);
    return;
  }

  v11 = *(v195 + 2);
  if (v11 < v191)
  {
    goto LABEL_187;
  }

  if (v11 != v191)
  {
    a1 = v195;
    sub_1BB650B0C(v195, (v195 + 32), 0, (2 * v191) | 1);
    v60 = v59;

    v195 = v60;
  }

  v11 = &v205;
  v61 = v189;
  if ((v189 & 0x8000000000000000) != 0)
  {
    goto LABEL_188;
  }

  v62 = MEMORY[0x1E69E7CC0];
  if (!v189)
  {
    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_168;
  }

  v193 = v58 & 0xFFFFFFFFFFFFFF8;
  if (v8)
  {
    v199 = sub_1BB6BB564();
  }

  else
  {
    v199 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = 0;
  v185 = "number of selected tracks are ";
  v184 = "ed. Ignoring body detection";
  v196 = v58 & 0xC000000000000001;
  v192 = v58 + 32;
  v183 = (v5 + 8);
  v182 = 8 * v191;
  *&v57 = 136315138;
  v181 = v57;
  v65 = *(v7 + 2352);
  while (1)
  {
    if (v64 >= v61)
    {
      goto LABEL_182;
    }

    v66 = __OFADD__(v64, 1);
    v67 = v64 + 1;
    if (v66)
    {
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      v9 = sub_1BB6BB564();
      goto LABEL_3;
    }

    v190 = v67;
    v68 = v191;
    if (v191)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF00, &qword_1BB6BD3E0);
      v69 = sub_1BB6BAE94();
      *(v69 + 16) = v68;
      memset_pattern16((v69 + 32), &unk_1E7FB3FB0, v182);
    }

    else
    {
      v69 = v62;
    }

    if (v199)
    {
      v70 = 0;
      v7 = *(v195 + 2);
      v198 = v195 + 48;
      v63 = v69;
      v200 = v7;
      while (1)
      {
        if (v196)
        {
          v8 = MEMORY[0x1BFB111F0](v70, v194);
          v66 = __OFADD__(v70++, 1);
          if (v66)
          {
            goto LABEL_175;
          }
        }

        else
        {
          if (v70 >= *(v193 + 16))
          {
            goto LABEL_179;
          }

          v8 = *&v192[8 * v70];

          v66 = __OFADD__(v70++, 1);
          if (v66)
          {
            goto LABEL_175;
          }
        }

        if (v7)
        {
          v201 = v63;
          v202 = v62;
          sub_1BB5E5760(0, v7, 0);
          v71 = v202;
          v72 = (v8 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
          v73 = v198;
          do
          {
            v75 = *(v73 - 2);
            v74 = *(v73 - 1);
            v76 = *v73;
            v77 = *v73 > 0.0;
            v78 = CGRectGetMidX(*v72);
            v79 = CGRectGetMidY(*v72);
            if (fabs(v76) < v65)
            {
              v76 = dbl_1BB6C5920[v77];
            }

            v202 = v71;
            v81 = *(v71 + 16);
            v80 = *(v71 + 24);
            v5 = v81 + 1;
            if (v81 >= v80 >> 1)
            {
              v82 = v79;
              sub_1BB5E5760((v80 > 1), v81 + 1, 1);
              v79 = v82;
              v71 = v202;
            }

            *(v71 + 16) = v5;
            *(v71 + 8 * v81 + 32) = sqrt((v75 - v78) * (v75 - v78) + (v74 - v79) * (v74 - v79)) / v76;
            v73 += 3;
            --v7;
          }

          while (v7);
          v63 = v201;
        }

        else
        {
          v71 = v62;
          v5 = *(v62 + 16);
          if (!v5)
          {

            a1 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_84;
          }
        }

        a1 = 0;
        v83 = 0;
        v84 = INFINITY;
        do
        {
          v85 = *(v71 + 8 * v83 + 32);
          if (v85 < v84)
          {
            a1 = v83;
          }

          v86 = (v83 + 1);
          if (v85 < v84)
          {
            v84 = *(v71 + 8 * v83 + 32);
          }

          ++v83;
        }

        while (v5 != v86);

        v87 = swift_isUniquelyReferenced_nonNull_native();
        v62 = MEMORY[0x1E69E7CC0];
        v7 = v200;
        if (v87)
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            goto LABEL_174;
          }

          goto LABEL_78;
        }

LABEL_84:
        v63 = sub_1BB6B1010(v63);
        if ((a1 & 0x8000000000000000) != 0)
        {
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

LABEL_78:
        if (a1 >= v63[2])
        {
          goto LABEL_176;
        }

        a1 = &v63[a1];
        MEMORY[0x1BFB10C80]();
        if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BB6BAE64();
          v7 = v200;
        }

        sub_1BB6BAEB4();

        if (v70 == v199)
        {
          goto LABEL_87;
        }
      }
    }

    v63 = v69;
LABEL_87:
    v198 = v63[2];
    if (v198)
    {
      v197 = v63 + 4;
      a1 = v195;

      v8 = 0;
      v201 = v63;
      while (1)
      {
        if (v8 >= v63[2])
        {
          goto LABEL_177;
        }

        v89 = v197[v8];
        if (v89 >> 62)
        {
          v7 = sub_1BB6BB564();
          if (v7 >= 1)
          {
LABEL_94:
            v200 = a1;
            v202 = v62;

            sub_1BB5E5760(0, v7, 0);
            v90 = 0;
            v91 = v202;
            v92 = v89 & 0xC000000000000001;
            do
            {
              if (v92)
              {
                v93 = MEMORY[0x1BFB111F0](v90, v89);
              }

              else
              {
              }

              v94 = *(*(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence) + 16);

              if (fabs(v94) >= v65)
              {
                v95 = v94;
              }

              else
              {
                v95 = dbl_1BB6C5920[v94 > 0];
              }

              v202 = v91;
              v97 = *(v91 + 16);
              v96 = *(v91 + 24);
              if (v97 >= v96 >> 1)
              {
                sub_1BB5E5760((v96 > 1), v97 + 1, 1);
                v91 = v202;
              }

              ++v90;
              *(v91 + 16) = v97 + 1;
              *(v91 + 8 * v97 + 32) = 1.0 / v95;
            }

            while (v7 != v90);
            if (v97 < 3)
            {
              v98 = 0;
              v99 = 0.0;
              v100 = MEMORY[0x1E69E7CC0];
              goto LABEL_109;
            }

            v98 = (v97 + 1) & 0x7FFFFFFFFFFFFFFCLL;
            v101 = (v91 + 48);
            v99 = 0.0;
            v102 = v98;
            v100 = MEMORY[0x1E69E7CC0];
            do
            {
              v99 = v99 + *(v101 - 2) + *(v101 - 1) + *v101 + v101[1];
              v101 += 4;
              v102 -= 4;
            }

            while (v102);
            if (v97 + 1 != v98)
            {
LABEL_109:
              v103 = v97 - v98 + 1;
              v104 = (v91 + 8 * v98 + 32);
              do
              {
                v105 = *v104++;
                v99 = v99 + v105;
                --v103;
              }

              while (v103);
            }

            v202 = v100;
            sub_1BB5E5760(0, v7, 0);
            v106 = 0;
            v107 = v202;
            do
            {
              if (v92)
              {
                v108 = MEMORY[0x1BFB111F0](v106, v89);
              }

              else
              {
                v108 = *(v89 + 8 * v106 + 32);
              }

              v109 = CGRectGetMidX(*(v108 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));

              v202 = v107;
              v111 = *(v107 + 16);
              v110 = *(v107 + 24);
              if (v111 >= v110 >> 1)
              {
                sub_1BB5E5760((v110 > 1), v111 + 1, 1);
                v107 = v202;
              }

              ++v106;
              *(v107 + 16) = v111 + 1;
              *(v107 + 8 * v111 + 32) = v109;
            }

            while (v7 != v106);
            if (v111 <= 2)
            {
              v112 = 0;
              v113 = 0.0;
              v114 = MEMORY[0x1E69E7CC0];
              goto LABEL_123;
            }

            v112 = (v111 + 1) & 0x7FFFFFFFFFFFFFFCLL;
            v115 = (v107 + 48);
            v113 = 0.0;
            v116 = v112;
            v114 = MEMORY[0x1E69E7CC0];
            do
            {
              v113 = v113 + *(v115 - 2) + *(v115 - 1) + *v115 + v115[1];
              v115 += 4;
              v116 -= 4;
            }

            while (v116);
            if (v111 + 1 != v112)
            {
LABEL_123:
              v117 = v111 - v112 + 1;
              v118 = (v107 + 8 * v112 + 32);
              do
              {
                v119 = *v118++;
                v113 = v113 + v119;
                --v117;
              }

              while (v117);
            }

            v120 = v7;
            v202 = v114;
            sub_1BB5E5760(0, v7, 0);
            v5 = 0;
            v121 = v202;
            do
            {
              if (v92)
              {
                v122 = MEMORY[0x1BFB111F0](v5, v89);
              }

              else
              {
                v122 = *(v89 + 8 * v5 + 32);
              }

              v123 = CGRectGetMidY(*(v122 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));

              v202 = v121;
              v125 = *(v121 + 16);
              v124 = *(v121 + 24);
              if (v125 >= v124 >> 1)
              {
                sub_1BB5E5760((v124 > 1), v125 + 1, 1);
                v121 = v202;
              }

              ++v5;
              *(v121 + 16) = v125 + 1;
              *(v121 + 8 * v125 + 32) = v123;
            }

            while (v7 != v5);

            v126 = *(v121 + 16);
            if (v126)
            {
              a1 = v200;
              v63 = v201;
              if (v126 <= 3)
              {
                v127 = 0;
                v128 = 0.0;
                v62 = MEMORY[0x1E69E7CC0];
                goto LABEL_140;
              }

              v127 = v126 & 0x7FFFFFFFFFFFFFFCLL;
              v131 = (v121 + 48);
              v128 = 0.0;
              v132 = v126 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v128 = v128 + *(v131 - 2) + *(v131 - 1) + *v131 + v131[1];
                v131 += 4;
                v132 -= 4;
              }

              while (v132);
              v62 = MEMORY[0x1E69E7CC0];
              if (v126 != v127)
              {
LABEL_140:
                v133 = v126 - v127;
                v134 = (v121 + 8 * v127 + 32);
                do
                {
                  v135 = *v134++;
                  v128 = v128 + v135;
                  --v133;
                }

                while (v133);
              }

              v129 = v128 / v120;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_143:
                if (v8 >= *(a1 + 16))
                {
                  goto LABEL_178;
                }

                v136 = (a1 + 24 * v8);
                v136[4] = v113 / v120;
                v136[5] = v129;
                v136[6] = v99;
                goto LABEL_90;
              }
            }

            else
            {

              v129 = 0.0 / v120;
              a1 = v200;
              v130 = swift_isUniquelyReferenced_nonNull_native();
              v63 = v201;
              v62 = MEMORY[0x1E69E7CC0];
              if (v130)
              {
                goto LABEL_143;
              }
            }

            a1 = sub_1BB6B0FFC(a1);
            goto LABEL_143;
          }
        }

        else
        {
          v7 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= 1)
          {
            goto LABEL_94;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1BB6B0FFC(a1);
        }

        if (v8 >= *(a1 + 16))
        {
          goto LABEL_180;
        }

        v88 = (a1 + 24 * v8);
        *(v88 + 4) = 0;
        *(v88 + 5) = 0;
        *(v88 + 6) = 0x3FF0000000000000;
LABEL_90:
        if (++v8 == v198)
        {
          goto LABEL_151;
        }
      }
    }

    a1 = v195;

LABEL_151:
    v137 = *(v195 + 2);
    v200 = a1;
    if (v137)
    {
      if (v137 > *(a1 + 16))
      {
        goto LABEL_184;
      }

      if (v137 >= 5)
      {
        v140 = v137 & 3;
        if ((v137 & 3) == 0)
        {
          v140 = 4;
        }

        v138 = v137 - v140;
        v141 = (v195 + 80);
        v142 = (a1 + 80);
        v139 = 0.0;
        v143 = v138;
        do
        {
          v144 = vsubq_f64(v141[-3], v142[-3]);
          v145 = vsubq_f64(v141[-2], v142[-2]);
          v146 = vsubq_f64(v141[-1], v142[-1]);
          v147 = vsubq_f64(*v141, *v142);
          v148 = vsubq_f64(v141[1], v142[1]);
          v149 = vsubq_f64(v141[2], v142[2]);
          v150 = vmulq_f64(v144, v144);
          v151 = vmulq_f64(v147, v147);
          v152 = vextq_s8(v150, vmulq_f64(v146, v146), 8uLL);
          v150.f64[1] = vmulq_f64(v145, v145).f64[1];
          v153 = vextq_s8(v151, vmulq_f64(v149, v149), 8uLL);
          v151.f64[1] = vmulq_f64(v148, v148).f64[1];
          v154 = vsqrtq_f64(vaddq_f64(v150, v152));
          v155 = vsqrtq_f64(vaddq_f64(v151, v153));
          v139 = v139 + v154.f64[0] + v154.f64[1] + v155.f64[0] + v155.f64[1];
          v141 += 6;
          v142 += 6;
          v143 -= 4;
        }

        while (v143);
      }

      else
      {
        v138 = 0;
        v139 = 0.0;
      }

      v156 = v137 - v138;
      v157 = 24 * v138;
      v158 = (a1 + 24 * v138 + 32);
      v159 = &v195[v157 + 32];
      do
      {
        v160 = *v159;
        v159 += 24;
        v161 = v160;
        v162 = *v158;
        v158 += 24;
        v163 = vsubq_f64(v161, v162);
        v139 = v139 + sqrt(vaddvq_f64(vmulq_f64(v163, v163)));
        --v156;
      }

      while (v156);
    }

    else
    {
      v139 = 0.0;
    }

    v202 = 0;
    v203 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000019, v185 | 0x8000000000000000);
    sub_1BB6BAFB4();
    v5 = v202;
    v8 = v203;
    v164 = sub_1BB6BB054();
    a1 = v186;
    sub_1BB6BAA24();
    v165 = sub_1BB6BAA14();
    if (os_log_type_enabled(v165, v164))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v202 = v167;
      *v166 = v181;
      *(v166 + 4) = sub_1BB6A0A5C(v5, v8, &v202);
      _os_log_impl(&dword_1BB58A000, v165, v164, "%s", v166, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v167);
      MEMORY[0x1BFB122F0](v167, -1, -1);
      MEMORY[0x1BFB122F0](v166, -1, -1);
    }

    (*v183)(a1, v187);

    v61 = v189;
    v62 = MEMORY[0x1E69E7CC0];
    v7 = v200;
    if (v139 < v188)
    {
      break;
    }

    v195 = v7;
    v64 = v190;
    if (v190 == v61)
    {
      goto LABEL_168;
    }
  }

LABEL_168:
  v168 = v63[2];
  if (v168)
  {
    v202 = MEMORY[0x1E69E7CC0];
    sub_1BB5E58E0(0, v168, 0);
    v169 = v202;
    v170 = v63 + 4;
    do
    {

      v172 = sub_1BB65138C(v171);
      v174 = v173;
      v176 = v175;

      v202 = v169;
      v178 = *(v169 + 16);
      v177 = *(v169 + 24);
      if (v178 >= v177 >> 1)
      {
        sub_1BB5E58E0((v177 > 1), v178 + 1, 1);
        v169 = v202;
      }

      *(v169 + 16) = v178 + 1;
      v179 = (v169 + 24 * v178);
      v179[4] = v172;
      v179[5] = v174;
      v179[6] = v176;
      ++v170;
      --v168;
    }

    while (v168);
  }
}

uint64_t sub_1BB652C44(unint64_t a1, double a2, double a3)
{
  v6 = sub_1BB65138C(a1);
  if (v8 > a3 || v7 > a2)
  {
    v15 = 3;
    sub_1BB6BB2F4();

    if (a1 >> 62)
    {
      sub_1BB6BB564();
    }

    v10 = sub_1BB6BB794();
    MEMORY[0x1BFB10B60](v10);

    v11 = sub_1BB6BB054();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v15, 0xD00000000000001ELL, 0x80000001BB6CDD60, v11);

    sub_1BB651994(a1, 2, 0x14uLL, 0.1);
    v13 = sub_1BB5A1494(v12);
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

uint64_t sub_1BB652DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BB652DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BB652E3C()
{
  result = qword_1EBC5DAF0;
  if (!qword_1EBC5DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DAF0);
  }

  return result;
}

uint64_t sub_1BB652E90()
{
  v1[6] = v0;
  v2 = sub_1BB6BA7F4();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB652F94, 0, 0);
}

void sub_1BB652F94()
{
  v45 = v3;
  v5 = v3[6];
  v6 = *(v5 + 40);
  v7 = *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition);
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex;
  if (*(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchIndex) == -1)
  {
    v9 = -1;
LABEL_6:
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v1 = v3[6];
      *(v5 + v8) = v11;
      v2 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchWaypoints;
      v12 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKSearchTask_searchWaypoints);
      v13 = *(v12 + 16);
      if (v11 == v13)
      {
        v14 = v3[11];
        v15 = v3[7];
        v16 = v3[8];
        v17 = *(v5 + 40);

        sub_1BB6BA724();
        (*(v16 + 56))(v14, 0, 1, v15);
        sub_1BB5BF3C4(v14, v17 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime);

        goto LABEL_20;
      }

      if (v11 < v13)
      {
        if (*(v7 + 16))
        {
          v0 = *(v12 + 16 * v11 + 40);
          v18 = *(v7 + 32);
          v19 = *(v0 + 2);
          if (v18 <= 6.28318531)
          {
            if (!v19)
            {
LABEL_32:
              __break(1u);
              return;
            }

            v4 = v18 + *(v0 + 4);
          }

          else
          {
            if (!v19)
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v4 = v18 - *(v0 + 4);
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_17:
            *(v0 + 4) = v4;
            v20 = *(v5 + v8);
            if ((v20 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else
            {
              v21 = *(v1 + v2);
              if (v20 < *(v21 + 16))
              {
                v23 = v3[8];
                v22 = v3[9];
                v24 = v3[7];
                v25 = *(v21 + 16 * v20 + 32);
                v26 = *(v3[6] + 48);
                (*(v23 + 16))(v22, v26 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v24);
                type metadata accessor for DKIntelligentTrackingCommand(0);
                v27 = swift_allocObject();
                (*(v23 + 32))(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v22, v24);
                v28 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
                *v28 = v0;
                *(v28 + 8) = v25;
                *(v28 + 16) = 0x4000;
                *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = v27;

                v42 = 10;
                v43 = 0;
                v44 = 0xE000000000000000;
                sub_1BB6BB2F4();
                v3[2] = 0;
                v3[3] = 0xE000000000000000;
                MEMORY[0x1BFB10B60](0xD000000000000011, 0x80000001BB6CDDF0);
                v3[4] = v0;
                sub_1BB6BB4B4();

                MEMORY[0x1BFB10B60](0x3D7865646E6920, 0xE700000000000000);
                v3[5] = *(v5 + v8);
                v29 = sub_1BB6BB794();
                MEMORY[0x1BFB10B60](v29);

                v31 = v3[2];
                v30 = v3[3];
                v32 = sub_1BB6BB084();
                _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v42, v31, v30, v32);

                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

LABEL_28:
          v0 = sub_1BB6B0F28(v0);
          goto LABEL_17;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (sub_1BB5C4BEC(0, *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_signals)))
  {
    v9 = *(v5 + v8);
    goto LABEL_6;
  }

LABEL_20:
  v33 = v3[10];
  v34 = v3[7];
  v35 = v3[8];
  sub_1BB5BA930(*(v5 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime, v33);
  LODWORD(v34) = (*(v35 + 48))(v33, 1, v34);
  sub_1BB5A1908(v33);
  if (v34 == 1)
  {
    v36 = v3[7];
    v37 = v3[8];
    v38 = v3[6];
    v39 = *(v5 + 40);
    v40 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSearchCommandTime;

    sub_1BB5A1908(v39 + v40);
    (*(v37 + 16))(v39 + v40, *(v38 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v36);
    (*(v37 + 56))(v39 + v40, 0, 1, v36);
  }

  v41 = v3[1];

  v41(1);
}

uint64_t sub_1BB653438()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKSearchTask(uint64_t a1)
{
  result = qword_1EBC5DAF8;
  if (!qword_1EBC5DAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6535B0()
{
  v1[14] = v0;
  v2 = sub_1BB6BAA34();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0, &unk_1BB6BE450);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for DKCamera(0);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1BB6BA7F4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65378C, 0, 0);
}

uint64_t sub_1BB65378C()
{
  v42 = v0;
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 112);
  v5 = *(v2 + 16);
  v5(v1, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);
  sub_1BB6BA7B4();
  v7 = v6;
  v8 = *(v2 + 8);
  v8(v1, v3);
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime;
  if (vabdd_f64(v7, *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime)) >= 0.2)
  {
    v11 = *(v4 + 48);
    v12 = *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
    if (v12)
    {
      v39 = v8;
      v13 = *(v0 + 152);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      sub_1BB5982A0(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v15, &qword_1EBC5BCB0, &unk_1BB6BE450);
      if ((*(v14 + 48))(v15, 1, v13) == 1)
      {
        sub_1BB598308(*(v0 + 144), &qword_1EBC5BCB0, &unk_1BB6BE450);
      }

      else
      {
        v37 = *(v0 + 112);
        sub_1BB5981C8(*(v0 + 144), *(v0 + 168));
        sub_1BB654B5C(0, &qword_1EBC5DB30, 0x1E695DF70);
        v16 = v12;
        v17 = MEMORY[0x1E69E7CC0];
        v35 = MEMORY[0x1BFB10FE0](MEMORY[0x1E69E7CC0]);
        type metadata accessor for DKImageCrop();
        inited = swift_initStackObject();
        v19 = v16;
        *(inited + 56) = sub_1BB5B0EA0(v17);
        *(inited + 16) = v12;
        v20 = v19;
        Width = CVPixelBufferGetWidth(v20);
        Height = CVPixelBufferGetHeight(v20);

        v44.origin.x = 0.0;
        v44.origin.y = 0.0;
        v44.size.width = 1.0;
        v44.size.height = 1.0;
        *(inited + 24) = VNImageRectForNormalizedRect(v44, Width, Height);
        *(v0 + 200) = 0;
        *(v0 + 208) = 0;
        v23 = OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session;
        [*(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session) requiredInputFormat:v0 + 200 height:v0 + 204 format:v0 + 208];
        v24 = sub_1BB64F24C(*(v0 + 200), *(v0 + 204));
        v34 = v20;
        v25 = *(v37 + v23);
        v38 = v24;
        [v25 processFrame:v24 withOptions:0 results:v35];
        v40 = 0;
        sub_1BB654B5C(0, &qword_1EBC5DB38, 0x1E69AE240);
        v26 = v35;
        sub_1BB6BAE24();

        v27 = *(v0 + 192);
        v28 = *(v0 + 176);
        v36 = *(v0 + 168);
        v29 = *(v0 + 112);
        v5(v27, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v28);
        sub_1BB6BA7B4();
        v31 = v30;

        v39(v27, v28);
        sub_1BB59822C(v36);
        *(v4 + v9) = v31;
        *(*(v29 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection) = 1;
      }
    }
  }

  else
  {
    v10 = *(v0 + 112);
    sub_1BB6542F8();
    *(*(v10 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection) = 0;
  }

  v32 = *(v0 + 8);

  return v32(1);
}

BOOL sub_1BB653D74()
{
  v1 = v0;
  v2 = sub_1BB6BA7F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v2, v4);
  sub_1BB6BA7B4();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return vabdd_f64(v8, *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_lastProcessedTime)) >= 0.2;
}

void sub_1BB653E90(unint64_t a1, char *a2, unsigned __int8 *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB40, &qword_1BB6C8950);
  v35 = *(v6 - 8);
  v36 = v6;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = *a2;
  v11 = *a3;
  v39 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v12 = sub_1BB6BB564();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB111F0](v13, a1, v7);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      LOBYTE(v37) = v10;
      v38 = v11;
      type metadata accessor for DKBodyKeyPointList();
      swift_allocObject();
      v16 = v15;
      if (sub_1BB628B80(v16, &v37, &v38))
      {

        MEMORY[0x1BFB10C80](v17);
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1BB6BAE64();
        }

        sub_1BB6BAEB4();

        v34 = v39;
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v18 = v33;
  v19 = *(*(*(v33 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);

  v20 = sub_1BB60D238(v34, v19, v18, 1.79769313e308);

  v21 = *(v20 + 16);
  if (v21)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5980(0, v21, 0);
    v22 = v37;
    v32 = v20;
    v23 = (v20 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      if (*v23)
      {
        v26 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
        v27 = sub_1BB6BA844();
        v28 = *(v27 - 8);
        (*(v28 + 16))(v9, v25 + v26, v27);
        (*(v28 + 56))(v9, 0, 1, v27);
      }

      else
      {
        v29 = sub_1BB6BA844();
        (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
      }

      *&v9[*(v36 + 48)] = v24;
      v37 = v22;
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_1BB5E5980((v30 > 1), v31 + 1, 1);
        v22 = v37;
      }

      v23 += 3;
      *(v22 + 16) = v31 + 1;
      sub_1BB60DF90(v9, v22 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v31, &qword_1EBC5DB40, &qword_1BB6C8950);
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *(v33 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_latestAssociations) = v22;

  sub_1BB6542F8();
}

uint64_t sub_1BB6542F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370, &unk_1BB6BE3F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v53 - v5;
  v7 = sub_1BB6BA844();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB40, &qword_1BB6C8950);
  MEMORY[0x1EEE9AC00](v14);
  v54 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v53 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v70 = v53 - v23;
  v64 = v0;
  result = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_latestAssociations);
  v25 = *(result + 16);
  if (v25)
  {
    v55 = v10;
    v63 = v3;
    v67 = *(v14 + 48);
    v26 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v65 = *(v22 + 72);
    v62 = (v8 + 32);
    v59 = (v8 + 56);
    v60 = (v8 + 16);
    v58 = (v8 + 8);
    v53[1] = result;

    v57 = 0;
    v68 = v14;
    v69 = v13;
    v27 = v6;
    v66 = (v8 + 48);
    v61 = v20;
    while (1)
    {
      v28 = v70;
      sub_1BB5982A0(v26, v70, &qword_1EBC5DB40, &qword_1BB6C8950);
      v29 = *(v28 + v67);
      v30 = *(v14 + 48);
      v31 = v28;
      v32 = v66;
      sub_1BB60DF90(v31, v20, &qword_1EBC5C370, &unk_1BB6BE3F0);
      *&v20[v30] = v29;
      v33 = v71;
      sub_1BB5982A0(v20, v71, &qword_1EBC5DB40, &qword_1BB6C8950);

      v34 = *v32;
      if ((*v32)(v33, 1, v7) != 1)
      {
        break;
      }

      sub_1BB598308(v20, &qword_1EBC5DB40, &qword_1BB6C8950);
      sub_1BB598308(v33, &qword_1EBC5C370, &unk_1BB6BE3F0);
      v14 = v68;
LABEL_4:
      v26 += v65;
      if (!--v25)
      {
      }
    }

    v35 = *v62;
    v36 = v69;
    (*v62)(v69, v33, v7);
    v37 = *(*(v64 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker);
    (*v60)(v27, v36, v7);
    (*v59)(v27, 0, 1, v7);
    v38 = v27;
    v39 = v27;
    v40 = v63;
    sub_1BB5982A0(v38, v63, &qword_1EBC5C370, &unk_1BB6BE3F0);
    if (v34(v40, 1, v7) == 1)
    {
      sub_1BB598308(v39, &qword_1EBC5C370, &unk_1BB6BE3F0);
      (*v58)(v69, v7);
      sub_1BB598308(v40, &qword_1EBC5C370, &unk_1BB6BE3F0);
      v27 = v39;
    }

    else
    {
      v41 = v55;
      v42 = v35(v55, v40, v7);
      v43 = v41;
      v44 = *(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
      MEMORY[0x1EEE9AC00](v42);
      v53[-2] = v41;

      v45 = v57;
      v46 = sub_1BB5CB764(sub_1BB654BA4, &v53[-4], v44);
      v57 = v45;

      sub_1BB598308(v39, &qword_1EBC5C370, &unk_1BB6BE3F0);
      v47 = *v58;
      (*v58)(v69, v7);
      v27 = v39;
      if (v46)
      {
        v47(v43, v7);
        v20 = v61;
        v48 = v54;
        sub_1BB60DF90(v61, v54, &qword_1EBC5DB40, &qword_1BB6C8950);
        v14 = v68;
        v49 = *(v48 + *(v68 + 48));
        v56 = *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints);
        *(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints) = v49;

        v50 = v48;
        v51 = &qword_1EBC5C370;
        v52 = &unk_1BB6BE3F0;
LABEL_12:
        sub_1BB598308(v50, v51, v52);
        goto LABEL_4;
      }

      v47(v43, v7);
    }

    v14 = v68;
    v20 = v61;
    v50 = v61;
    v51 = &qword_1EBC5DB40;
    v52 = &qword_1BB6C8950;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1BB654970()
{
}

uint64_t sub_1BB6549B0()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKBodyPoseExtractionTask_session);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKBodyPoseExtractionTask(uint64_t a1)
{
  result = qword_1EBC5DB20;
  if (!qword_1EBC5DB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB654B5C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1BB654BC4(void *a1, char a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v70[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v74 = &v70[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v75 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v75;
      LODWORD(v73) = swift_isUniquelyReferenced_nonNull_native();
      v76 = v21;
      v22 = sub_1BB6A36B4();
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v73 & 1) == 0)
        {
          v73 = v22;
          LODWORD(v75) = v23;
          sub_1BB5E9D14();
          LOBYTE(v23) = v75;
          v22 = v73;
        }
      }

      else
      {
        LODWORD(v75) = v23;
        sub_1BB5E64D0(v27, v73);
        v22 = sub_1BB6A36B4();
        v28 = v23 & 1;
        LOBYTE(v23) = v75;
        if ((v75 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v76;
      v75 = v76;
      if (v23)
      {
        *(v76[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v76[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v74;
  v32 = v75;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v72 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v73 = (v35 + 63) >> 6;
  v74 = xmmword_1BB6BE460;
  v75 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4();
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4();
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v71)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050, &qword_1BB6BD580);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter(0);
      v47 = swift_allocObject();
      *(v47 + 48) = v74;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050, &qword_1BB6BD580);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v48[2];
      v54 = v76;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4();
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5E9D00();
          v55 = v63;
          v62 = v76;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E64BC(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4();
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v76;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v75;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v73)
    {

      return;
    }

    v37 = v72[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1BB6BB874();
  __break(1u);
}

void sub_1BB655218(void *a1, char a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v70[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v74 = &v70[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v75 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v75;
      LODWORD(v73) = swift_isUniquelyReferenced_nonNull_native();
      v76 = v21;
      v22 = sub_1BB6A36B4();
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v73 & 1) == 0)
        {
          v73 = v22;
          LODWORD(v75) = v23;
          sub_1BB5EA848();
          LOBYTE(v23) = v75;
          v22 = v73;
        }
      }

      else
      {
        LODWORD(v75) = v23;
        sub_1BB5E7644(v27, v73);
        v22 = sub_1BB6A36B4();
        v28 = v23 & 1;
        LOBYTE(v23) = v75;
        if ((v75 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v76;
      v75 = v76;
      if (v23)
      {
        *(v76[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v76[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v74;
  v32 = v75;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v72 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v73 = (v35 + 63) >> 6;
  v74 = xmmword_1BB6BE460;
  v75 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4();
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4();
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v71)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050, &qword_1BB6BD580);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter(0);
      v47 = swift_allocObject();
      *(v47 + 48) = v74;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050, &qword_1BB6BD580);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v48[2];
      v54 = v76;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4();
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5EA454();
          v55 = v63;
          v62 = v76;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E6FB4(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4();
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v76;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v75;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v73)
    {

      return;
    }

    v37 = v72[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1BB6BB874();
  __break(1u);
}

void sub_1BB65586C(void *a1, char a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v70[-v8];
  if ((a2 & 1) == 0)
  {

    v32 = a1;
    goto LABEL_25;
  }

  *&v74 = &v70[-v8];
  v10 = v4[2];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v75 = a1;
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = *(*(v10 + 48) + v17);
    v19 = *(*(v10 + 56) + 8 * v17);

    if (!v19)
    {
      goto LABEL_24;
    }

    v13 &= v13 - 1;
    if (a1[2] && (sub_1BB6A36B4(), (v20 & 1) != 0))
    {
LABEL_12:
    }

    else
    {
      v21 = v75;
      LODWORD(v73) = swift_isUniquelyReferenced_nonNull_native();
      v76 = v21;
      v22 = sub_1BB6A36B4();
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_57;
      }

      if (v21[3] >= v27)
      {
        if ((v73 & 1) == 0)
        {
          v73 = v22;
          LODWORD(v75) = v23;
          sub_1BB5EA85C();
          LOBYTE(v23) = v75;
          v22 = v73;
        }
      }

      else
      {
        LODWORD(v75) = v23;
        sub_1BB5E7658(v27, v73);
        v22 = sub_1BB6A36B4();
        v28 = v23 & 1;
        LOBYTE(v23) = v75;
        if ((v75 & 1) != v28)
        {
          goto LABEL_59;
        }
      }

      v29 = v76;
      v75 = v76;
      if (v23)
      {
        *(v76[7] + 8 * v22) = 0;
        goto LABEL_12;
      }

      v76[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + v22) = v18;
      *(v29[7] + 8 * v22) = 0;

      v30 = v29[2];
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v29[2] = v31;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_54;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

LABEL_24:

  v9 = v74;
  v32 = v75;
LABEL_25:
  v33 = 0;
  v34 = v32[8];
  v72 = v32 + 8;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v73 = (v35 + 63) >> 6;
  v74 = xmmword_1BB6BE460;
  v75 = v32;
  while (2)
  {
    if (v37)
    {
LABEL_33:
      v39 = __clz(__rbit64(v37)) | (v33 << 6);
      v40 = *(v32[6] + v39);
      v41 = *(v32[7] + 8 * v39);
      if (*(v4[2] + 16))
      {
        sub_1BB6A36B4();
        if (v42)
        {
LABEL_46:
          v37 &= v37 - 1;
          if (*(v4[2] + 16))
          {
            sub_1BB6A36B4();
            if (v66)
            {
              v67 = sub_1BB6BA7F4();
              (*(*(v67 - 8) + 56))(v9, 1, 1, v67);

              if (v71)
              {
                v68 = 0x3FF0000000000000;
                v69 = 0;
              }

              else
              {
                v68 = 0;
                v69 = 1;
              }

              sub_1BB6ABB40(v68, v69, v9, v41);

              sub_1BB598308(v9, &qword_1EBC5C050, &qword_1BB6BD580);
            }
          }

          continue;
        }
      }

      v43 = v4[4];
      v44 = v4[5];
      v45 = sub_1BB6BA7F4();
      v46 = *(*(v45 - 8) + 56);
      v46(v9, 1, 1, v45);
      type metadata accessor for DKSmoothingFilter(0);
      v47 = swift_allocObject();
      *(v47 + 48) = v74;
      v48 = v4;
      v49 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
      v46((v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v45);
      v50 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
      *v50 = 0;
      *(v50 + 8) = 1;
      v51 = v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
      *v51 = 0;
      *(v51 + 8) = 1;
      *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
      *(v47 + 16) = v43;
      *(v47 + 24) = v44;
      *(v47 + 32) = 256;
      *(v47 + 40) = 0x3FE0000000000000;
      v52 = v47 + v49;
      v4 = v48;
      sub_1BB5BA0DC(v9, v52, &qword_1EBC5C050, &qword_1BB6BD580);
      *v50 = 0;
      *(v50 + 8) = 1;
      *v51 = 0;
      *(v51 + 8) = 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v48[2];
      v54 = v76;
      v48[2] = 0x8000000000000000;
      v55 = sub_1BB6A36B4();
      v57 = v54[2];
      v58 = (v56 & 1) == 0;
      v26 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v26)
      {
        goto LABEL_55;
      }

      v60 = v56;
      if (v54[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = v55;
          sub_1BB5EA468();
          v55 = v63;
          v62 = v76;
          if (v60)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }
      }

      else
      {
        sub_1BB5E6FC8(v59, isUniquelyReferenced_nonNull_native);
        v55 = sub_1BB6A36B4();
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_59;
        }
      }

      v62 = v76;
      if (v60)
      {
LABEL_41:
        *(v62[7] + 8 * v55) = v47;

LABEL_45:
        v48[2] = v62;

        v32 = v75;
        goto LABEL_46;
      }

LABEL_43:
      v62[(v55 >> 6) + 8] |= 1 << v55;
      *(v62[6] + v55) = v40;
      *(v62[7] + 8 * v55) = v47;
      v64 = v62[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_56;
      }

      v62[2] = v65;
      goto LABEL_45;
    }

    break;
  }

  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v73)
    {

      return;
    }

    v37 = v72[v38];
    ++v33;
    if (v37)
    {
      v33 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1BB6BB874();
  __break(1u);
}

uint64_t DKHandTracker.__allocating_init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v71 = a3;
  v62 = a5;
  v65 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v56 - v9;
  v10 = type metadata accessor for DKCamera(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - v13;
  v14 = sub_1BB6BA844();
  v68 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BB6BA7F4();
  v61 = *(v18 - 8);
  v19 = v61;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = swift_allocObject();
  v25 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C480, &qword_1BB6BE688);
  swift_allocObject();
  *(v24 + qword_1EBC5F440) = sub_1BB6B47F8(&unk_1F3A488B8, v25, v25);
  v26 = *(v19 + 16);
  v64 = v23;
  v67 = a1;
  v57 = v26;
  v58 = v19 + 16;
  v26(v23, a1, v18);
  v66 = v15;
  v27 = *(v15 + 16);
  v27(v17, v71, v14);
  v28 = v69;
  sub_1BB64B8F0(v70, v69, type metadata accessor for DKCamera);
  v29 = (v24 + qword_1EBC5EE08);
  *v29 = -1;
  v29[1] = 0;
  sub_1BB6BAA24();
  v30 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v24 + v30) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v24 + qword_1EBC5EE38) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v24 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v24 + *(*v24 + 200)) = 0;
  *(v24 + *(*v24 + 216)) = 0;
  v32 = *(*v24 + 232);
  v33 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v33 - 8) + 56))(v24 + v32, 1, 1, v33);
  *(v24 + *(*v24 + 240)) = 0;
  *(v24 + *(*v24 + 256)) = 0;
  *(v24 + qword_1EBC5EE28) = a2;
  *(v24 + qword_1EBC5EE00) = v65;
  v65 = v17;
  v27((v24 + qword_1EBC5EDF8), v17, v68);
  *(v24 + qword_1EBC5EE10) = v62;
  sub_1BB64B8F0(v28, v24 + *(*v24 + 224), type metadata accessor for DKCamera);
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488, &qword_1BB6BE690);
  swift_allocObject();

  *(v24 + *(*v24 + 208)) = sub_1BB6B44C8(v31, v34, v35);
  v36 = *(a2 + 176);
  v37 = *(a2 + 184);
  v38 = v61;
  v39 = *(v61 + 56);
  v40 = v63;
  v39(v63, 1, 1, v18);
  type metadata accessor for DKSmoothingFilter(0);
  v41 = swift_allocObject();
  *(v41 + 33) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0x3FF0000000000000;
  v42 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v39((v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v18);
  v43 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v44 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v41 + 16) = v36;
  *(v41 + 24) = v37;
  *(v41 + 32) = 0;
  sub_1BB5BA0DC(v40, v41 + v42, &qword_1EBC5C050, &qword_1BB6BD580);
  *v43 = 0;
  *(v43 + 8) = 1;
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v24 + *(*v24 + 248)) = v41;
  if (*(a2 + 136) == 1)
  {
    v45 = v59;
    v46 = v64;
    v57(v59, v64, v18);
    v47 = v69;
    v48 = v60;
    sub_1BB64B8F0(v69, v60, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v63 = sub_1BB66327C(v45, a2, v48);

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v49 = *(v66 + 8);
    v50 = v68;
    v49(v71, v68);
    v51 = *(v38 + 8);
    v51(v67, v18);
    sub_1BB5D818C(v47, type metadata accessor for DKCamera);
    v49(v65, v50);
    v51(v46, v18);
    *(v24 + *(*v24 + 216)) = v63;
  }

  else
  {

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v52 = *(v66 + 8);
    v53 = v68;
    v52(v71, v68);
    v54 = *(v38 + 8);
    v54(v67, v18);
    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v52(v65, v53);
    v54(v64, v18);
  }

  return v24;
}

void *DKHandTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKHandTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1BB6567F0(uint64_t a1)
{
  *(v1 + qword_1EBC5F440) = a1;

  return result;
}

uint64_t DKHandTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v69 = a6;
  v70 = a3;
  v62 = a5;
  v66 = a4;
  v71 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v56 - v10;
  v11 = type metadata accessor for DKCamera(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = sub_1BB6BA844();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BB6BA7F4();
  v61 = v20;
  v68 = *(v20 - 8);
  v21 = v68;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C480, &qword_1BB6BE688);
  swift_allocObject();
  *(v6 + qword_1EBC5F440) = sub_1BB6B47F8(&unk_1F3A488B8, v26, v26);
  v27 = *(v21 + 16);
  v67 = v25;
  v57 = v27;
  v58 = v21 + 16;
  v27(v25, v71, v20);
  v65 = v17;
  v28 = *(v17 + 16);
  v28(v19, v70, v16);
  sub_1BB64B8F0(v69, v15, type metadata accessor for DKCamera);
  v29 = (v6 + qword_1EBC5EE08);
  *v29 = -1;
  v29[1] = 0;
  *(v6 + qword_1EBC5EE10) = -1;
  sub_1BB6BAA24();
  v30 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v6 + v30) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v6 + qword_1EBC5EE38) = 0;
  *(v6 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v6 + *(*v6 + 200)) = 0;
  *(v6 + *(*v6 + 216)) = 0;
  v31 = *(*v6 + 232);
  v32 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v32 - 8) + 56))(v7 + v31, 1, 1, v32);
  *(v7 + *(*v7 + 240)) = 0;
  *(v7 + *(*v7 + 256)) = 0;
  *(v7 + qword_1EBC5EE28) = a2;
  *(v7 + qword_1EBC5EE00) = v66;
  v64 = v19;
  v33 = v19;
  v34 = v61;
  v66 = v16;
  v28((v7 + qword_1EBC5EDF8), v33, v16);
  *(v7 + qword_1EBC5EE10) = v62;
  v35 = v15;
  sub_1BB64B8F0(v15, v7 + *(*v7 + 224), type metadata accessor for DKCamera);
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488, &qword_1BB6BE690);
  swift_allocObject();

  *(v7 + *(*v7 + 208)) = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v36, v37);
  v38 = *(a2 + 176);
  v39 = *(a2 + 184);
  v40 = *(v68 + 56);
  v41 = v63;
  v40(v63, 1, 1, v34);
  type metadata accessor for DKSmoothingFilter(0);
  v42 = swift_allocObject();
  *(v42 + 33) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0x3FF0000000000000;
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v40((v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v34);
  v44 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  *(v42 + 32) = 0;
  sub_1BB5BA0DC(v41, v42 + v43, &qword_1EBC5C050, &qword_1BB6BD580);
  *v44 = 0;
  *(v44 + 8) = 1;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v7 + *(*v7 + 248)) = v42;
  if (*(a2 + 136) == 1)
  {
    v46 = v59;
    v57(v59, v67, v34);
    v47 = v60;
    sub_1BB64B8F0(v35, v60, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v48 = sub_1BB66327C(v46, a2, v47);

    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v49 = v66;
    v50 = *(v65 + 8);
    v50(v70, v66);
    v51 = *(v68 + 8);
    v51(v71, v34);
    sub_1BB5D818C(v35, type metadata accessor for DKCamera);
    v50(v64, v49);
    v51(v67, v34);
    *(v7 + *(*v7 + 216)) = v48;
  }

  else
  {

    sub_1BB5D818C(v69, type metadata accessor for DKCamera);
    v52 = v66;
    v53 = *(v65 + 8);
    v53(v70, v66);
    v54 = *(v68 + 8);
    v54(v71, v34);
    sub_1BB5D818C(v35, type metadata accessor for DKCamera);
    v53(v64, v52);
    v54(v67, v34);
  }

  return v7;
}

uint64_t sub_1BB657060(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478, &qword_1BB6C0830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v56 - v4;
  v6 = sub_1BB6BA844();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BB6BA7F4();
  v67 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8, &unk_1BB6BCE60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for DKMotion3(0);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6AAD04(v70);
  v24 = 0;
  if (v71)
  {
    return v24;
  }

  v72 = v70[0];
  v73 = v70[1];

  sub_1BB5F72A0();

  if (v69 == 3)
  {
    return 0;
  }

  v59 = v69;
  v60 = v6;
  v25 = *(v2 + *(*v2 + 216));
  v61 = v21;
  if (v25 && (, , v26 = v68, sub_1BB59911C(v68), , , sub_1BB59911C(v26), , , sub_1BB59911C(v26), , v27 = v26, v21 = v61, sub_1BB6626AC(v27), v28 = *(v25 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState), , , v28))
  {
    sub_1BB64B8F0(v28 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, v19, type metadata accessor for DKMotion3);

    v29 = *(v21 + 56);
    v29(v19, 0, 1, v20);
    sub_1BB5DD278(v19, v23);
    v30 = *(v67 + 16);
    v31 = v60;
  }

  else
  {
    v56 = v5;
    v58 = *(v21 + 56);
    v58(v19, 1, 1, v20);
    v32 = v67;
    v33 = v8;
    v34 = *(v67 + 16);
    v34(v14, v68, v33);
    v57 = v34;
    v34(v23, v14, v33);
    v8 = v33;
    *&v23[v20[5]] = &unk_1F3A48810;
    *&v23[v20[6]] = &unk_1F3A48848;
    (*(v32 + 8))(v14, v33);
    *&v23[v20[7]] = &unk_1F3A48880;
    if ((*(v61 + 48))(v19, 1, v20) != 1)
    {
      sub_1BB598308(v19, &qword_1EBC5BCB8, &unk_1BB6BCE60);
    }

    v31 = v60;
    v29 = v58;
    v30 = v57;
    v5 = v56;
  }

  v35 = v30;
  v30(v62, v68, v8);
  (*(v65 + 16))(v64, v2 + qword_1EBC5EDF8, v31);
  v68 = *(v2 + qword_1EBC5EE08);
  v36 = *(v2 + qword_1EBC5EE08 + 8);
  v57 = *(v2 + qword_1EBC5EE10);
  v58 = *(v2 + qword_1EBC5EE00);
  sub_1BB5F5764(v2 + *(*v2 + 232), v5);
  v37 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if ((*(*(v37 - 8) + 48))(v5, 1, v37))
  {
    sub_1BB598308(v5, &qword_1EBC5C478, &qword_1BB6C0830);
  }

  else
  {
    v38 = *v5;
    v39 = v29;
    v40 = v5[8];
    sub_1BB598308(v5, &qword_1EBC5C478, &qword_1BB6C0830);
    v41 = v40 == 1;
    v29 = v39;
    if (!v41)
    {
      goto LABEL_15;
    }
  }

  v38 = -1;
LABEL_15:
  v42 = v63;
  sub_1BB64B8F0(v23, v63, type metadata accessor for DKMotion3);
  v29(v42, 0, 1, v20);
  v35(v66, v2 + qword_1EBC5EE30, v8);
  v43 = *(v2 + qword_1EBC5EE40);
  v44 = *(v43 + 16);
  if (v44)
  {
    v45 = *(v43 + 8 * v44 + 24);
  }

  else
  {
    v45 = 0;
  }

  v46 = *(v2 + *(*v2 + 248));
  v47 = 0.0;
  if (*(v46 + 33) == 1)
  {
    if (*(v46 + 32) == 1)
    {
      v47 = atan2(*(v46 + 48), *(v46 + 56));
    }

    else
    {
      v47 = *(v46 + 40);
    }
  }

  sub_1BB5D818C(v23, type metadata accessor for DKMotion3);
  type metadata accessor for DKHandTrackerState(0);
  v24 = swift_allocObject();
  v48 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion;
  v29((v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_motion), 1, 1, v20);
  v49 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_chirality) = 0;
  v50 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastObservation;
  v51 = *(v67 + 32);
  v51(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_time, v62, v8);
  (*(v65 + 32))(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_uuid, v64, v60);
  v52 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  v53 = v73;
  *v52 = v72;
  v52[1] = v53;
  v54 = (v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity);
  *v54 = v68;
  v54[1] = v36;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_anstId) = v57;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerId) = v58;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_groupId) = v38;
  sub_1BB5BA0DC(v63, v24 + v48, &qword_1EBC5BCB8, &unk_1BB6BCE60);
  v51(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_lastUpdated, v66, v8);
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_framesSinceLastUpdate) = 0;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = v47;
  *(v24 + v50) = v45;
  *(v24 + v49) = v59;
  return v24;
}

uint64_t DKHandTracker.deinit()
{
  v0 = _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return v0;
}

uint64_t DKHandTracker.__deallocating_deinit()
{
  _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB657AB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BB657060(a1);
  *a2 = result;
  return result;
}

void sub_1BB657AE0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1BB649574(a1, *a2);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C490, &unk_1BB6BE698);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB6BD520;
    *(inited + 32) = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_chirality);
    *(inited + 40) = 0x3FF0000000000000;
    v4 = sub_1BB5B09CC(inited);
    swift_setDeallocating();

    sub_1BB654BC4(v4, 1, 0);
  }
}

uint64_t type metadata accessor for DKHandTracker(uint64_t a1)
{
  result = qword_1EBC5DB48;
  if (!qword_1EBC5DB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DKLogVideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BB657E60;

  return DKLogVideoPlayer.init(url:)(a1);
}

uint64_t sub_1BB657E60(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t DKLogVideoPlayer.init(url:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  v2[5] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1BB6BA654();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6580B4, 0, 0);
}

uint64_t sub_1BB6580B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = v0[4];
  v0[12] = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  sub_1BB6BAA24();
  (*(v2 + 16))(v1, v4, v3);
  v6 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v7 = sub_1BB6BA5F4();
  v8 = [v6 initWithURL:v7 options:0];
  v0[13] = v8;

  v9 = *(v2 + 8);
  v0[14] = v9;
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  *(v5 + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB58, &qword_1BB6C5AE8);
  v8;
  v10 = sub_1BB6BA8A4();
  v0[16] = v10;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1BB658264;

  return MEMORY[0x1EEE68140](v0 + 27, v10, 0, 0);
}

uint64_t sub_1BB658264()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = sub_1BB658F4C;
  }

  else
  {
    v4 = sub_1BB6583B0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB6583B0()
{
  v1 = *(v0 + 32);
  sub_1BB6BB154();
  *(v1 + 32) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  *(v1 + 24) = v3;
  [v3 setAppliesPreferredTrackTransform_];
  v4 = *(v1 + 24);
  *(v0 + 240) = sub_1BB6BB134();
  *(v0 + 248) = v5;
  *(v0 + 252) = v6;
  *(v0 + 256) = v7;
  [v4 setRequestedTimeToleranceBefore_];

  v8 = *(v1 + 24);
  *(v0 + 264) = sub_1BB6BB134();
  *(v0 + 272) = v9;
  *(v0 + 276) = v10;
  *(v0 + 280) = v11;
  [v8 setRequestedTimeToleranceAfter_];

  [*(v1 + 24) setMaximumSize_];
  v12 = *(v1 + 16);
  *(v0 + 152) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB60, &qword_1BB6C5AF0);
  v12;
  v13 = sub_1BB6BA894();
  *(v0 + 160) = v13;
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_1BB658588;

  return MEMORY[0x1EEE68140](v0 + 16, v13, 0, 0);
}

uint64_t sub_1BB658588()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = sub_1BB658CF4;
  }

  else
  {
    v4 = sub_1BB6586D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB6586D4()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DB68, &qword_1BB6C5AF8);
    v2 = sub_1BB6BA884();
    v0[24] = v2;
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_1BB65894C;
    v4 = v0[5];

    return MEMORY[0x1EEE68140](v4, v2, 0, 0);
  }

  else
  {
    (*(v0[7] + 56))(v0[5], 1, 1, v0[6]);
    v5 = v0[14];
    v6 = v0[9];
    v7 = v0[3];
    sub_1BB598308(v0[5], &qword_1EBC5C050, &qword_1BB6BD580);
    sub_1BB5A8D60();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001BB6CDF80;
    *(v8 + 16) = 0;
    swift_willThrow();
    v5(v7, v6);

    v9 = v0[12];
    v10 = v0[4];

    v11 = sub_1BB6BAA34();
    (*(*(v11 - 8) + 8))(v10 + v9, v11);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_deallocPartialClassInstance();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1BB65894C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_1BB658E20;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1BB658A78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BB658A78()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[14];
  if (v4 == 1)
  {
    v6 = v0[9];
    v7 = v0[3];
    sub_1BB598308(v3, &qword_1EBC5C050, &qword_1BB6BD580);
    sub_1BB5A8D60();
    swift_allocError();
    *v8 = 0xD00000000000001FLL;
    *(v8 + 8) = 0x80000001BB6CDF80;
    *(v8 + 16) = 0;
    swift_willThrow();
    v5(v7, v6);

    v9 = v0[12];
    v10 = v0[4];

    v11 = sub_1BB6BAA34();
    (*(*(v11 - 8) + 8))(v10 + v9, v11);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_deallocPartialClassInstance();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[8];
    v15 = v0[4];
    v5(v0[3], v0[9]);
    v16 = *(v2 + 32);
    v16(v14, v3, v1);
    v16(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime, v14, v1);

    v17 = v0[1];
    v18 = v0[4];

    return v17(v18);
  }
}

uint64_t sub_1BB658CF4()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));

  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB658E20()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));

  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB658F4C()
{
  (*(v0 + 112))(*(v0 + 24), *(v0 + 72));
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);

  v3 = sub_1BB6BAA34();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  type metadata accessor for DKLogVideoPlayer(0);
  swift_deallocPartialClassInstance();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BB65908C(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = sub_1BB6BA7F4();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB659168, 0, 0);
}

uint64_t sub_1BB659168(uint64_t a1)
{
  v2 = v1[3];
  sub_1BB6BA7E4();
  v3 = *(v2 + 24);
  v1[9] = v3;
  v3;
  v4 = sub_1BB6BB144();
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  v1[10] = v9;
  *v9 = v1;
  v9[1] = sub_1BB65924C;

  return MEMORY[0x1EEE68118](v4, v6, v8);
}

uint64_t sub_1BB65924C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1BB659544;
  }

  else
  {
    v5 = sub_1BB65937C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65937C()
{
  (*(v0[5] + 16))(v0[7], v0[8], v0[4]);
  v1 = sub_1BB6BAA14();
  v2 = sub_1BB6BB084();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  if (v3)
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    sub_1BB6BA7E4();
    sub_1BB6BA744();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v5, v7);
    v11(v4, v7);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_1BB58A000, v1, v2, "%f", v8, 0xCu);
    MEMORY[0x1BFB122F0](v8, -1, -1);
  }

  else
  {
    v12 = v0[4];
    v13 = v0[5];

    v11 = *(v13 + 8);
    v11(v4, v12);
  }

  v14 = v0[11];
  v11(v0[8], v0[4]);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_1BB659544()
{
  v15 = v0;
  v1 = v0[12];
  (*(v0[5] + 8))(v0[8], v0[4]);
  v2 = v1;
  v3 = sub_1BB6BAA14();
  v4 = sub_1BB6BB074();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1BB6A0A5C(0xD00000000000001CLL, 0x80000001BB6CDFA0, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1BB58A000, v3, v4, "Error in %s : %@", v7, 0x16u);
    sub_1BB598308(v8, &qword_1EBC5C378, &unk_1BB6C88F0);
    MEMORY[0x1BFB122F0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB122F0](v9, -1, -1);
    MEMORY[0x1BFB122F0](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t DKLogVideoPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DKLogVideoPlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKLogVideoPlayer_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t DKLogKeyframePlayer.__allocating_init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BB6600B0;

  return DKLogKeyframePlayer.init(logFolder:keyframesURL:videoURL:startTime:)(a1, a2, a3, a4);
}

uint64_t DKLogKeyframePlayer.init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1BB6BAA04();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030, &unk_1BB6C5B20);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_1BB6BA654();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB659B84, 0, 0);
}

uint64_t sub_1BB659B84()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 17);
  v3 = *(v0 + 18);
  v4 = *(v0 + 16);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  v7 = *(v0 + 8);
  *(v0 + 24) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  sub_1BB6BAA24();
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex) = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframe) = 0;
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer;
  *(v0 + 25) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer;
  *(v6 + v8) = 0;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v10 = sub_1BB6BA7F4();
  *(v0 + 26) = v10;
  v11 = *(v10 - 8);
  *(v0 + 27) = v11;
  (*(v11 + 16))(v6 + v9, v5, v10);
  v12 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  *(v0 + 28) = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v13 = *(v3 + 16);
  *(v0 + 29) = v13;
  *(v0 + 30) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v6 + v12, v1, v2);
  sub_1BB5982A0(v7, v4, &qword_1EBC5C030, &unk_1BB6C5B20);
  v14 = *(v3 + 48);
  *(v0 + 31) = v14;
  *(v0 + 32) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v14(v4, 1, v2) == 1)
  {
    sub_1BB598308(*(v0 + 16), &qword_1EBC5C030, &unk_1BB6C5B20);
    v15 = *(v0 + 31);
    v16 = *(v0 + 17);
    v17 = *(v0 + 15);
    sub_1BB5982A0(*(v0 + 7), v17, &qword_1EBC5C030, &unk_1BB6C5B20);
    if (v15(v17, 1, v16) != 1)
    {
      (*(*(v0 + 18) + 32))(*(v0 + 21), *(v0 + 15), *(v0 + 17));
      sub_1BB65E6C8();
      v58 = v57;
      v59 = *(v0 + 10);
      v34 = *(*(v0 + 18) + 8);
      v34(*(v0 + 21), *(v0 + 17));
      *(v59 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = v58;
      goto LABEL_14;
    }

    v18 = *(v0 + 25);
    v19 = *(v0 + 10);
    sub_1BB598308(*(v0 + 15), &qword_1EBC5C030, &unk_1BB6C5B20);
    v20 = *(v19 + v18);
    if (v20)
    {
      v22 = *(v0 + 12);
      v21 = *(v0 + 13);
      v23 = *(v0 + 10);
      v24 = *(v0 + 11);
      v25 = *(v0 + 9);
      v26 = *(v0 + 6);
      v27 = *(v20 + 32);

      *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = _s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(v27, 0.033, v26, v25);
      sub_1BB6BA9F4();
      sub_1BB6BA604();
      (*(v22 + 8))(v21, v24);
      v28 = [objc_opt_self() defaultManager];
      v29 = sub_1BB6BA5F4();
      v0[4] = 0.0;
      LOBYTE(v24) = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:v0 + 4];

      v30 = *(v0 + 4);
      v31 = *(v0 + 20);
      v32 = *(v0 + 17);
      v33 = *(v0 + 18);
      if (v24)
      {
        v34 = *(v33 + 8);
        v35 = v30;
        v34(v31, v32);
      }

      else
      {
        v60 = v30;
        v61 = sub_1BB6BA5B4();

        swift_willThrow();

        v34 = *(v33 + 8);
        v34(v31, v32);
      }

LABEL_14:
      *(v0 + 36) = v34;
      v62 = *(v0 + 10);
      v63 = *(v62 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer);
      *(v0 + 37) = v63;
      if (v63)
      {
        v64 = *(v62 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
        *(v0 + 38) = v64;
        if (v64 >> 62)
        {
          v65 = sub_1BB6BB564();
          *(v0 + 39) = v65;
          if (v65)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v0 + 39) = v65;
          if (v65)
          {
LABEL_17:
            if (v65 < 1)
            {
              __break(1u);
            }

            v66 = 0;
            while (1)
            {
              *(v0 + 40) = v66;
              v67 = *(v0 + 38);
              if ((v67 & 0xC000000000000001) != 0)
              {
                v68 = MEMORY[0x1BFB111F0]();
              }

              else
              {
                v68 = *(v67 + 8 * v66 + 32);
              }

              *(v0 + 41) = v68;
              v69 = *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
              if (!v69)
              {
                goto LABEL_20;
              }

              v70 = *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
              v71 = *(v0 + 12);
              v72 = *(v0 + 13);
              v73 = *(v0 + 11);
              *(v0 + 2) = 0x2F6567616D69;
              v0[3] = -2.12455197e183;

              v90 = v70;
              MEMORY[0x1BFB10B60](v70, v69);
              MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
              sub_1BB6BA9E4();
              sub_1BB6BA604();

              (*(v71 + 8))(v72, v73);
              v74 = [objc_opt_self() defaultManager];
              sub_1BB6BA644();
              v75 = sub_1BB6BAC04();

              LOBYTE(v70) = [v74 fileExistsAtPath_];

              if (v70)
              {
                break;
              }

              v0[5] = 0.0;
              v76 = sub_1BB65E5D0(v90, v69, (v0 + 5));
              v0[42] = 0.0;

              if (v76)
              {
                v87 = v0[5];
                v88 = swift_task_alloc();
                *(v0 + 43) = v88;
                *v88 = v0;
                v88[1] = sub_1BB65B588;

                return sub_1BB65908C(v87);
              }

              v77 = *(v0 + 36);
              v78 = *(v0 + 19);
              v79 = *(v0 + 17);

              v77(v78, v79);
LABEL_21:
              v66 = *(v0 + 40) + 1;
              if (v66 == *(v0 + 39))
              {

                goto LABEL_30;
              }
            }

            (*(v0 + 36))(*(v0 + 19), *(v0 + 17));

LABEL_20:

            goto LABEL_21;
          }
        }
      }

LABEL_30:
      v80 = *(v0 + 36);
      v81 = *(v0 + 17);
      v82 = *(v0 + 8);
      v83 = *(v0 + 6);
      v84 = *(v0 + 7);
      (*(*(v0 + 27) + 8))(*(v0 + 9), *(v0 + 26));
      sub_1BB598308(v82, &qword_1EBC5C030, &unk_1BB6C5B20);
      sub_1BB598308(v84, &qword_1EBC5C030, &unk_1BB6C5B20);
      v80(v83, v81);

      v85 = *(v0 + 1);
      v86 = *(v0 + 10);

      return v85(v86);
    }

    v42 = *(v0 + 26);
    v43 = *(v0 + 27);
    v44 = *(v0 + 18);
    v46 = *(v0 + 8);
    v45 = *(v0 + 9);
    v47 = *(v0 + 7);
    sub_1BB5A8D60();
    swift_allocError();
    *v48 = 0xD00000000000001FLL;
    *(v48 + 8) = 0x80000001BB6CDFC0;
    *(v48 + 16) = 0;
    swift_willThrow();
    v89 = *(v43 + 8);
    v89(v45, v42);
    sub_1BB598308(v46, &qword_1EBC5C030, &unk_1BB6C5B20);
    sub_1BB598308(v47, &qword_1EBC5C030, &unk_1BB6C5B20);
    v49 = *(v44 + 8);
    v50 = *(v0 + 28);
    v51 = *(v0 + 26);
    v52 = *(v0 + 24);
    v53 = *(v0 + 17);
    v54 = *(v0 + 10);
    v49(*(v0 + 6), v53);
    v49(v54 + v50, v53);
    v55 = sub_1BB6BAA34();
    (*(*(v55 - 8) + 8))(v54 + v52, v55);

    v89(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v51);
    type metadata accessor for DKLogKeyframePlayer(0);
    swift_deallocPartialClassInstance();

    v56 = *(v0 + 1);

    return v56();
  }

  else
  {
    v36 = *(v0 + 22);
    v37 = *(v0 + 23);
    v38 = *(v0 + 17);
    (*(*(v0 + 18) + 32))(v37, *(v0 + 16), v38);
    v13(v36, v37, v38);
    type metadata accessor for DKLogVideoPlayer(0);
    swift_allocObject();
    v39 = swift_task_alloc();
    *(v0 + 33) = v39;
    *v39 = v0;
    v39[1] = sub_1BB65A7C8;
    v40 = *(v0 + 22);

    return DKLogVideoPlayer.init(url:)(v40);
  }
}

uint64_t sub_1BB65A7C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v5 = sub_1BB65B318;
  }

  else
  {
    *(v4 + 280) = a1;
    v5 = sub_1BB65A918;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65A918()
{
  v1 = v0[35];
  v2 = v0[25];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[23], v0[17]);
  *(v3 + v2) = v1;

  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[17];
  v7 = v0[15];
  sub_1BB5982A0(v0[7], v7, &qword_1EBC5C030, &unk_1BB6C5B20);
  if (v5(v7, 1, v6) == 1)
  {
    v82 = v4;
    v8 = v0[25];
    v9 = v0[10];
    sub_1BB598308(v0[15], &qword_1EBC5C030, &unk_1BB6C5B20);
    v10 = *(v9 + v8);
    if (v10)
    {
      v11 = v0[12];
      v12 = v0[13];
      v14 = v0[10];
      v13 = v0[11];
      v15 = v0[9];
      v16 = v0[6];
      v17 = *(v10 + 32);

      *(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = _s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(v17, 0.033, v16, v15);
      sub_1BB6BA9F4();
      sub_1BB6BA604();
      (*(v11 + 8))(v12, v13);
      v18 = [objc_opt_self() defaultManager];
      v19 = sub_1BB6BA5F4();
      v0[4] = 0;
      LOBYTE(v13) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:0 attributes:0 error:v0 + 4];

      v20 = v0[4];
      v21 = v0[20];
      v22 = v0[17];
      v23 = v0[18];
      if (v13)
      {
        v24 = *(v23 + 8);
        v25 = v20;
        v24(v21, v22);
      }

      else
      {
        v52 = v20;
        v53 = sub_1BB6BA5B4();

        swift_willThrow();

        v24 = *(v23 + 8);
        v24(v21, v22);
        v82 = 0;
      }

LABEL_13:
      v0[36] = v24;
      v54 = v0[10];
      v55 = *(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_videoPlayer);
      v0[37] = v55;
      if (v55)
      {
        v56 = *(v54 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
        v0[38] = v56;
        if (v56 >> 62)
        {
          v57 = sub_1BB6BB564();
          v0[39] = v57;
          if (v57)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v0[39] = v57;
          if (v57)
          {
LABEL_16:
            if (v57 < 1)
            {
              __break(1u);
            }

            v58 = 0;
            while (1)
            {
              v0[40] = v58;
              v59 = v0[38];
              if ((v59 & 0xC000000000000001) != 0)
              {
                v60 = MEMORY[0x1BFB111F0]();
              }

              else
              {
                v60 = *(v59 + 8 * v58 + 32);
              }

              v0[41] = v60;
              v61 = *(v60 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
              if (!v61)
              {
                goto LABEL_19;
              }

              v62 = *(v60 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
              v63 = v0[12];
              v64 = v0[13];
              v65 = v0[11];
              v0[2] = 0x2F6567616D69;
              v0[3] = 0xE600000000000000;

              v84 = v62;
              MEMORY[0x1BFB10B60](v62, v61);
              MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
              sub_1BB6BA9E4();
              sub_1BB6BA604();

              (*(v63 + 8))(v64, v65);
              v66 = [objc_opt_self() defaultManager];
              sub_1BB6BA644();
              v67 = sub_1BB6BAC04();

              v68 = [v66 fileExistsAtPath_];

              if (v68)
              {
                break;
              }

              v0[5] = 0;
              v69 = sub_1BB65E5D0(v84, v61, (v0 + 5));
              v0[42] = v82;

              if (v69)
              {
                v80 = *(v0 + 5);
                v81 = swift_task_alloc();
                v0[43] = v81;
                *v81 = v0;
                v81[1] = sub_1BB65B588;

                return sub_1BB65908C(v80);
              }

              v70 = v0[36];
              v71 = v0[19];
              v72 = v0[17];

              v70(v71, v72);
LABEL_20:
              v58 = v0[40] + 1;
              if (v58 == v0[39])
              {

                goto LABEL_29;
              }
            }

            (v0[36])(v0[19], v0[17]);

LABEL_19:

            goto LABEL_20;
          }
        }
      }

LABEL_29:
      v73 = v0[36];
      v74 = v0[17];
      v75 = v0[8];
      v76 = v0[6];
      v77 = v0[7];
      (*(v0[27] + 8))(v0[9], v0[26]);
      sub_1BB598308(v75, &qword_1EBC5C030, &unk_1BB6C5B20);
      sub_1BB598308(v77, &qword_1EBC5C030, &unk_1BB6C5B20);
      v73(v76, v74);

      v78 = v0[1];
      v79 = v0[10];

      return v78(v79);
    }

    v34 = v0[26];
    v35 = v0[27];
    v36 = v0[18];
    v38 = v0[8];
    v37 = v0[9];
    v39 = v0[7];
    sub_1BB5A8D60();
    swift_allocError();
    *v40 = 0xD00000000000001FLL;
    *(v40 + 8) = 0x80000001BB6CDFC0;
    *(v40 + 16) = 0;
    swift_willThrow();
    v83 = *(v35 + 8);
    v83(v37, v34);
    sub_1BB598308(v38, &qword_1EBC5C030, &unk_1BB6C5B20);
    sub_1BB598308(v39, &qword_1EBC5C030, &unk_1BB6C5B20);
    v33 = *(v36 + 8);
    v26 = v0 + 6;
  }

  else
  {
    v26 = v0 + 21;
    (*(v0[18] + 32))(v0[21], v0[15], v0[17]);
    sub_1BB65E6C8();
    if (!v4)
    {
      v50 = v27;
      v51 = v0[10];
      v24 = *(v0[18] + 8);
      v24(v0[21], v0[17]);
      v82 = 0;
      *(v51 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes) = v50;
      goto LABEL_13;
    }

    v28 = v0[17];
    v29 = v0[18];
    v30 = v0[8];
    v32 = v0[6];
    v31 = v0[7];
    v83 = *(v0[27] + 8);
    v83(v0[9], v0[26]);
    sub_1BB598308(v30, &qword_1EBC5C030, &unk_1BB6C5B20);
    sub_1BB598308(v31, &qword_1EBC5C030, &unk_1BB6C5B20);
    v33 = *(v29 + 8);
    v33(v32, v28);
  }

  v41 = *v26;
  v42 = v0[28];
  v43 = v0[26];
  v44 = v0[24];
  v45 = v0[17];
  v46 = v0[10];
  v33(v41, v45);
  v33(v46 + v42, v45);
  v47 = sub_1BB6BAA34();
  (*(*(v47 - 8) + 8))(v46 + v44, v47);

  v83(v46 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v43);
  type metadata accessor for DKLogKeyframePlayer(0);
  swift_deallocPartialClassInstance();

  v48 = v0[1];

  return v48();
}

uint64_t sub_1BB65B318()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = *(v0[27] + 8);
  v6(v0[9], v0[26]);
  sub_1BB598308(v3, &qword_1EBC5C030, &unk_1BB6C5B20);
  sub_1BB598308(v4, &qword_1EBC5C030, &unk_1BB6C5B20);
  v7 = *(v2 + 8);
  v7(v5, v1);
  v8 = v0[28];
  v15 = v0[26];
  v9 = v0[24];
  v10 = v0[17];
  v11 = v0[10];
  v7(v0[23], v10);
  v7(v11 + v8, v10);
  v12 = sub_1BB6BAA34();
  (*(*(v12 - 8) + 8))(v11 + v9, v12);

  v6(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime, v15);
  type metadata accessor for DKLogKeyframePlayer(0);
  swift_deallocPartialClassInstance();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1BB65B588(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65B6B4, 0, 0);
}

uint64_t sub_1BB65B6B4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  if (v1)
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    (*(v0 + 232))(v6, v3, v5);
    (*(v4 + 56))(v6, 0, 1, v5);
    v7 = v1;
    sub_1BB5A0378(v6, 80);

    sub_1BB598308(v6, &qword_1EBC5C030, &unk_1BB6C5B20);
    v2(v3, v5);
  }

  else
  {
    v2(*(v0 + 152), *(v0 + 136));
  }

  v8 = *(v0 + 320) + 1;
  if (v8 == *(v0 + 312))
  {
LABEL_5:

    v9 = *(v0 + 288);
    v10 = *(v0 + 136);
    v11 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    (*(*(v0 + 216) + 8))(*(v0 + 72), *(v0 + 208));
    sub_1BB598308(v11, &qword_1EBC5C030, &unk_1BB6C5B20);
    sub_1BB598308(v13, &qword_1EBC5C030, &unk_1BB6C5B20);
    v9(v12, v10);

    v14 = *(v0 + 8);
    v15 = *(v0 + 80);

    return v14(v15);
  }

  v32 = *(v0 + 336);
  while (1)
  {
    *(v0 + 320) = v8;
    v17 = *(v0 + 304);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1BFB111F0]();
    }

    else
    {
      v18 = *(v17 + 8 * v8 + 32);
    }

    *(v0 + 328) = v18;
    v19 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName + 8);
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    v33 = *(v0 + 88);
    *(v0 + 16) = 0x2F6567616D69;
    *(v0 + 24) = 0xE600000000000000;

    MEMORY[0x1BFB10B60](v20, v19);
    MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
    sub_1BB6BA9E4();
    sub_1BB6BA604();

    (*(v21 + 8))(v22, v33);
    v23 = [objc_opt_self() defaultManager];
    sub_1BB6BA644();
    v24 = sub_1BB6BAC04();

    v25 = [v23 fileExistsAtPath_];

    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(v0 + 288))(*(v0 + 152), *(v0 + 136));

LABEL_15:

LABEL_16:
    v8 = *(v0 + 320) + 1;
    if (v8 == *(v0 + 312))
    {
      goto LABEL_5;
    }
  }

  *(v0 + 40) = 0;
  v26 = sub_1BB65E5D0(v20, v19, v0 + 40);
  *(v0 + 336) = v32;

  if (!v26)
  {
    v27 = *(v0 + 288);
    v28 = *(v0 + 152);
    v29 = *(v0 + 136);

    v27(v28, v29);
    goto LABEL_16;
  }

  v30 = *(v0 + 40);
  v31 = swift_task_alloc();
  *(v0 + 344) = v31;
  *v31 = v0;
  v31[1] = sub_1BB65B588;

  return sub_1BB65908C(v30);
}

uint64_t sub_1BB65BC08()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
    if (!(v5 >> 62))
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 < result)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  result = sub_1BB6BB564();
  if (v4 < result)
  {
LABEL_4:
    v7 = *(v1 + v2);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(v1 + v2) = v8;
      v9 = swift_task_alloc();
      v0[3] = v9;
      *v9 = v0;
      v9[1] = sub_1BB6600AC;

      return sub_1BB65BF88(v8);
    }

    return result;
  }

LABEL_10:
  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1BB65BD68()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
  if (v4 >> 62)
  {
    if (v3 < sub_1BB6BB564())
    {
      goto LABEL_3;
    }
  }

  else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = *(v1 + v2);
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_1BB65BE8C;

    return sub_1BB65BF88(v5);
  }

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1BB65BE8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1BB65BF88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BB6BA654();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65C048, 0, 0);
}

uint64_t sub_1BB65C048()
{
  v1 = v0[2];
  if (v1 < 0)
  {
    goto LABEL_10;
  }

  v2 = v0[3];
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
  v4 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes);
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > v1)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  result = sub_1BB6BB564();
  if (result <= v0[2])
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v0[3];
  v7 = *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex);
  v8 = *(v2 + v3);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v14 = *(v2 + v3);

    MEMORY[0x1BFB111F0](v7, v14);

    v6 = v0[3];
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_8:
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  (*(v10 + 16))(v9, v6 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder, v11);
  v12 = sub_1BB611CCC(v9);

  (*(v10 + 8))(v9, v11);
LABEL_11:

  v13 = v0[1];

  return v13(v12);
}

uint64_t DKLogKeyframePlayer.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t DKLogKeyframePlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_startTime;
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t DKLogPlayer.__allocating_init(rate:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 0;
  sub_1BB6BAA24();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer) = 0;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate) = a1;
  return v2;
}

uint64_t DKLogPlayer.init(rate:)(double a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  sub_1BB6BAA24();
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer) = 0;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate) = a1;
  return v1;
}

uint64_t sub_1BB65C560(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  v2[4] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030, &unk_1BB6C5B20);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for DKLoggerMetafile(0);
  v2[14] = swift_task_alloc();
  v4 = sub_1BB6BAA04();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_1BB6BA654();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65C7B4, 0, 0);
}

uint64_t sub_1BB65C7B4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer;
  v0[22] = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer;
  *(v4 + v5) = 0;

  sub_1BB6BA9E4();
  sub_1BB6BA604();
  (*(v2 + 8))(v1, v3);
  v6 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v7 = sub_1BB6BA5F4();
  v8 = [v6 initWithContentsOfURL_];

  if (v8)
  {
    sub_1BB6BA6E4();

    v0[23] = 0xF000000000000000;
  }

  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  sub_1BB6BB2F4();

  *&v16 = 0xD000000000000018;
  *(&v16 + 1) = 0x80000001BB6CDFE0;
  v12 = sub_1BB6BA5C4();
  MEMORY[0x1BFB10B60](v12);

  sub_1BB5A8D60();
  swift_allocError();
  *v13 = v16;
  *(v13 + 16) = 0;
  swift_willThrow();
  (*(v11 + 8))(v9, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BB65CE1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_1BB65D0C8;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_1BB65CF44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB65CF44()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v13 = v0[28];
  v5 = v0[19];
  v12 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[3];

  sub_1BB593714(v1, v2);
  sub_1BB598308(v7, &qword_1EBC5C030, &unk_1BB6C5B20);
  sub_1BB598308(v8, &qword_1EBC5C030, &unk_1BB6C5B20);
  (*(v5 + 8))(v4, v12);
  *(v9 + v3) = v13;

  sub_1BB613B88(v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BB65D0C8()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];

  sub_1BB593714(v1, v2);
  sub_1BB598308(v8, &qword_1EBC5C030, &unk_1BB6C5B20);
  sub_1BB598308(v7, &qword_1EBC5C030, &unk_1BB6C5B20);
  (*(v5 + 8))(v3, v4);
  sub_1BB613B88(v6);

  v9 = v0[1];

  return v9();
}

void sub_1BB65D24C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    sub_1BB672064();
  }
}

uint64_t sub_1BB65D2C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((result & 1) == 0)
  {
    result = sub_1BB59E3C8(0, v6[2] + 1, 1, v6);
    v6 = result;
    *(v2 + 16) = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_1BB59E3C8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1BB65F094;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_1BB65D3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BB6BA7F4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB65D46C, 0, 0);
}

uint64_t sub_1BB65D46C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_keyframePlayer);
  v0[7] = v1;
  if (v1)
  {
    v2 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
    v0[8] = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_currentKeyframeIndex;
    v3 = *(v1 + v2);
    v4 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
    v0[9] = OBJC_IVAR____TtC23IntelligentTrackingCore19DKLogKeyframePlayer_keyframes;
    v5 = *(v1 + v4);

    if (v5 >> 62)
    {
      if (v3 < sub_1BB6BB564())
      {
        goto LABEL_4;
      }
    }

    else if (v3 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = *(v1 + v2);
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_1BB65D5C4;

      return sub_1BB65BF88(v6);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BB65D5C4(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65D6C4, 0, 0);
}

uint64_t sub_1BB65D6C4()
{
  v18 = v0;
  v1 = v0[11];
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = *(v0[2] + 16);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);
      v17 = v1;

      v5(&v17);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v6 = v0[7];
  v7 = *(v6 + v0[8]);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_15:
    result = sub_1BB6BB564();
    if (v8 < result)
    {
LABEL_9:
      v12 = v0[7];
      v11 = v0[8];
      v13 = *(v12 + v11);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        *(v12 + v11) = v14;
        v15 = swift_task_alloc();
        v0[12] = v15;
        *v15 = v0;
        v15[1] = sub_1BB65D894;

        return sub_1BB65BF88(v14);
      }

      return result;
    }

    goto LABEL_16;
  }

  v9 = *(v6 + v0[9]);
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < result)
  {
    goto LABEL_9;
  }

LABEL_16:

LABEL_17:

  v16 = v0[1];

  return v16();
}

uint64_t sub_1BB65D894(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BB65D994, 0, 0);
}

uint64_t sub_1BB65D994()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[11];
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];
    v8 = *(v6 + 16);
    v8(v3, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_time, v5);
    v8(v4, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_time, v5);
    sub_1BB6BA744();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v4, v5);
    v11(v3, v5);
    sub_1BB65DDEC(v10 / *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_rate));
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BB65DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988, &qword_1BB6C5660);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BB5982A0(a3, v25 - v10, &qword_1EBC5D988, &qword_1BB6C5660);
  v12 = sub_1BB6BAF84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BB598308(v11, &qword_1EBC5D988, &qword_1BB6C5660);
  }

  else
  {
    sub_1BB6BAF74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BB6BAF24();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BB6BACA4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BB598308(a3, &qword_1EBC5D988, &qword_1BB6C5660);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BB598308(a3, &qword_1EBC5D988, &qword_1BB6C5660);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1BB65DE04(char *a1, double a2)
{
  v26 = a1;
  v4 = sub_1BB6BAA44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = sub_1BB6BAA94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = *(v2 + 24);
  if (v18)
  {
    ObjectType = swift_getObjectType();
    v26 = v18;
    sub_1BB6BAA84();
    sub_1BB6BAAA4();
    v19 = *(v12 + 8);
    v19(v14, v11);
    v20 = *MEMORY[0x1E69E7F40];
    v24 = v11;
    v21 = *(v5 + 104);
    v21(v10, v20, v4);
    *v7 = 0;
    v21(v7, *MEMORY[0x1E69E7F28], v4);
    MEMORY[0x1BFB10F80](v17, v10, v7, ObjectType);
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);
    v19(v17, v24);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DKRepeatingTimer());

    *(v2 + 24) = DKRepeatingTimer.init(interval:fireOnce:queue:_:)(1, 0, v26, v2, a2);

    MEMORY[0x1EEE66BB8]();
  }
}

double sub_1BB65E100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D988, &qword_1BB6C5660);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1BB6BAF84();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1BB65DAEC(0, 0, v4, &unk_1BB6C5C48, v6);

  return result;
}

uint64_t DKLogPlayer.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKLogPlayer.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore11DKLogPlayer_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB65E348@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1BB6BAA44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1BB65E3C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB65E4B8;

  return v6(a1);
}

uint64_t sub_1BB65E4B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

BOOL sub_1BB65E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1BB6BB2E4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_1BB65E6C8()
{
  sub_1BB6BA434();
  swift_allocObject();
  sub_1BB6BA424();
  v0 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
  v1 = sub_1BB6BA5F4();
  v2 = [v0 initWithContentsOfURL_];

  if (v2)
  {
    sub_1BB6BA6E4();
  }

  sub_1BB6BB2F4();

  *&v5 = 0xD000000000000014;
  *(&v5 + 1) = 0x80000001BB6CE130;
  v3 = sub_1BB6BA5C4();
  MEMORY[0x1BFB10B60](v3);

  sub_1BB5A8D60();
  swift_allocError();
  *v4 = v5;
  *(v4 + 16) = 0;
  swift_willThrow();
}

void (*_s23IntelligentTrackingCore19DKLogKeyframePlayerC22generateEmptyKeyframes9logFolder9startTime8duration8intervalSayAA17DKKeyframeStorageCG10Foundation3URLV_AL4DateVS2dtFZ_0(double a1, double a2, uint64_t a3, void (*a4)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBC0, &qword_1BB6C5C70);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v61 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBC8, &qword_1BB6C5C78);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBD0, &qword_1BB6C5C80);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v83 = MEMORY[0x1E69E7CC0];
  v25 = *(v19 + 44);
  result = sub_1BB6BA784();
  if (a2 != 0.0)
  {
    v82 = v25;
    v27 = v9 + 16;
    v28 = *(v9 + 16);
    v28(v21, a4, v8);
    v29 = v22[11];
    v66 = v11;
    v79 = a4;
    v30 = &v24[v29];
    v64 = v6;
    v31 = *(v6 + 48);
    v33 = *(v9 + 32);
    v32 = v9 + 32;
    v33(&v24[v29 + v31], v21, v8);
    v70 = v22[9];
    v75 = v33;
    v33(&v24[v70], &v21[v82], v8);
    v63 = v22[10];
    *&v24[v63] = a2;
    v77 = v31;
    v74 = v24;
    v81 = v28;
    v82 = v27;
    v28(v24, (v30 + v31), v8);
    v80 = (v32 - 24);
    v62 = (v32 + 8);
    *v30 = 0;
    v69 = (v32 + 24);
    v78 = v30;
    *(v30 + 8) = 0;
    v34 = v79;
    v35 = v66;
    v71 = v32;
    v68 = (v32 + 16);
    v67 = xmmword_1BB6BD520;
    v36 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v37 = v73;
      v81(v73, v78 + v77, v8);
      sub_1BB660058(&qword_1EBC5DBD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (a2 <= 0.0)
      {
        if (sub_1BB6BABD4())
        {
LABEL_5:
          v38 = *v80;
          (*v80)(v37, v8);
          v39 = 1;
          v40 = v72;
          goto LABEL_8;
        }
      }

      else if (sub_1BB6BABC4())
      {
        goto LABEL_5;
      }

      v41 = v34;
      v42 = v78;
      v43 = v65;
      sub_1BB5982A0(v78, v65, &qword_1EBC5DBC0, &qword_1BB6C5C70);
      v44 = *(v64 + 48);
      sub_1BB660058(&qword_1EBC5DBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969560]);
      v79 = v36;
      v45 = v76;
      v46 = sub_1BB6BB1D4();
      v48 = v47;
      v38 = *v80;
      (*v80)(v43 + v44, v8);
      *v42 = v46;
      *(v42 + 8) = v48 & 1;
      v34 = v41;
      v35 = v66;
      v49 = v45;
      v36 = v79;
      (*v62)(v42 + v77, v49, v8);
      v40 = v72;
      v75(v72, v37, v8);
      v39 = 0;
LABEL_8:
      (*v69)(v40, v39, 1, v8);
      if ((*v68)(v40, 1, v8) == 1)
      {
        sub_1BB598308(v74, &qword_1EBC5DBD0, &qword_1BB6C5C80);
        return v36;
      }

      v79 = v38;
      v50 = v75;
      v75(v35, v40, v8);
      v51 = v76;
      v81(v76, v35, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398, &qword_1BB6BE480);
      v52 = swift_allocObject();
      *(v52 + 16) = v67;
      v53 = v34;
      sub_1BB6BA744();
      *(v52 + 56) = MEMORY[0x1E69E63B0];
      *(v52 + 64) = MEMORY[0x1E69E6438];
      *(v52 + 32) = v54;
      v55 = sub_1BB6BAC64();
      v57 = v56;
      type metadata accessor for DKKeyframeStorage(0);
      v58 = swift_allocObject();
      *(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_logs) = MEMORY[0x1E69E7CC0];
      v59 = (v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
      v60 = v50(v58 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_time, v51, v8);
      *v59 = v55;
      v59[1] = v57;
      MEMORY[0x1BFB10C80](v60);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BB6BAE64();
      }

      sub_1BB6BAEB4();
      v79(v35, v8);
      v36 = v83;
      v34 = v53;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB65F01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030, &unk_1BB6C5B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB65F0C8(uint64_t a1)
{
  result = sub_1BB6BAA34();
  if (v2 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogVideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v6 = (*(v1 + 216) + **(v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB65F2DC;

  return v6(a1);
}

uint64_t sub_1BB65F2DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DKLogVideoPlayer.getVideoFrame(timeInterval:)(double a1)
{
  v7 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B4300;
  v5.n128_f64[0] = a1;

  return v7(v5);
}

uint64_t sub_1BB65F500(uint64_t a1)
{
  result = sub_1BB6BA654();
  if (v2 <= 0x3F)
  {
    result = sub_1BB6BAA34();
    if (v3 <= 0x3F)
    {
      result = sub_1BB6BA7F4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogKeyframePlayer.__allocating_init(logFolder:keyframesURL:videoURL:startTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 280) + **(v4 + 280));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BB6600A8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getNextKeyframe()()
{
  v4 = (*(*v0 + 288) + **(*v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46E4;

  return v4();
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getCurrentKeyframe()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46E4;

  return v4();
}

uint64_t dispatch thunk of DKLogKeyframePlayer.getKeyframe(index:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46E4;

  return v6(a1);
}

uint64_t sub_1BB65FAF0(uint64_t a1)
{
  result = sub_1BB6BAA34();
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

uint64_t dispatch thunk of DKLogPlayer.load(logFolder:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B3D14;

  return v6(a1);
}

uint64_t sub_1BB65FDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BB5B3D14;

  return sub_1BB65D3A0(a1, v4, v5, v6);
}

uint64_t sub_1BB65FE6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BB5B46DC;

  return sub_1BB65E3C0(a1, v4);
}

unint64_t sub_1BB65FF24()
{
  result = qword_1EBC5DBB0;
  if (!qword_1EBC5DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DBA8, &qword_1BB6C5C68);
    sub_1BB660058(&qword_1EBC5DBB8, type metadata accessor for DKKeyframeStorage, &protocol conformance descriptor for DKKeyframeStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DBB0);
  }

  return result;
}

_BYTE *sub_1BB65FFD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1BB660058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BB6600B4()
{
  v1[2] = v0;
  v2 = sub_1BB6BA7F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0, &unk_1BB6BE450);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DKCamera(0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB660208, 0, 0);
}

uint64_t sub_1BB660208()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  if (*(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces))
  {
    v6 = *(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1BB5C265C(v6);

  sub_1BB5C8EAC(v7);
  v8 = *(v4 + 48);
  if (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies))
  {
    v9 = *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
  }

  else
  {
    v9 = v5;
  }

  v10 = sub_1BB5C26A4(v9);

  sub_1BB5C8EAC(v10);
  v11 = *(v4 + 48);
  if (*(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands))
  {
    v12 = *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  }

  else
  {
    v12 = v5;
  }

  v13 = sub_1BB5C28D4(v12);

  sub_1BB5C8EAC(v13);
  sub_1BB5BA008(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BB6604E8(v0[6]);
  }

  else
  {
    v14 = v0[9];
    sub_1BB5981C8(v0[6], v14);

    sub_1BB5C19EC(v14);

    sub_1BB59822C(v14);
  }

  v15 = v0[5];
  v16 = v0[3];
  v17 = v0[4];
  (*(v17 + 16))(v15, *(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v16);

  sub_1BB5C2A78(v15, v20);

  (*(v17 + 8))(v15, v16);

  v18 = v0[1];

  return v18(1);
}

uint64_t type metadata accessor for DKTrackerTask(uint64_t a1)
{
  result = qword_1EBC5DBE8;
  if (!qword_1EBC5DBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6604E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0, &unk_1BB6BE450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DKFPSTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908, &qword_1BB6BF4D0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t DKThreadSafeBuffer.__allocating_init(maxLenght:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKThreadSafeBuffer.init(maxLenght:)(a1);
  return v2;
}

uint64_t sub_1BB6605F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v52 = a5;
  v56 = *MEMORY[0x1E69E9840];
  v5 = sub_1BB6BA874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BB6BA7F4();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6BA7E4();
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v14 = sub_1BB6BAC04();
  [v13 setDateFormat_];

  sub_1BB6BA864();
  v15 = sub_1BB6BA854();
  (*(v6 + 8))(v8, v5);
  [v13 setTimeZone_];

  v16 = sub_1BB6BA764();
  v17 = [v13 stringFromDate_];

  v18 = sub_1BB6BAC34();
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5C398, &qword_1BB6BE480);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BB6BD520;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1BB66168C();
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  v22 = sub_1BB6BAC64();
  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v25 defaultManager];
  v27 = sub_1BB6BAC04();
  v28 = [v26 fileExistsAtPath_];

  v29 = v52;
  if ((v28 & 1) == 0)
  {
    v30 = v51;
    v31 = [v25 defaultManager];
    v32 = sub_1BB6BAC04();
    v53 = 0;
    v33 = [v31 createDirectoryAtPath:v32 withIntermediateDirectories:0 attributes:0 error:&v53];

    if (!v33)
    {
      v38 = v53;

      v39 = sub_1BB6BA5B4();

      swift_willThrow();
      v55[0] = 11;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_1BB6BB2F4();

      v53 = 0xD000000000000026;
      v54 = 0x80000001BB6CE250;
      swift_getErrorValue();
      v40 = sub_1BB6BB8B4();
      MEMORY[0x1BFB10B60](v40);

      v41 = v53;
      v42 = v54;
      v43 = sub_1BB6BB074();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v55, v41, v42, v43);

      (*(v30 + 8))(v12, v50);
      v37 = 1;
      v29 = v52;
      goto LABEL_6;
    }

    v34 = v53;
    v29 = v52;
  }

  v53 = 47;
  v54 = 0xE100000000000000;
  MEMORY[0x1BFB10B60](v46, v47);
  MEMORY[0x1BFB10B60](45, 0xE100000000000000);
  MEMORY[0x1BFB10B60](v22, v24);

  MEMORY[0x1BFB10B60](46, 0xE100000000000000);
  MEMORY[0x1BFB10B60](v48, v49);
  v35 = v53;
  v36 = v54;
  v53 = 0xD000000000000026;
  v54 = 0x80000001BB6CE220;
  MEMORY[0x1BFB10B60](v35, v36);

  sub_1BB6BA5D4();

  (*(v51 + 8))(v12, v50);
  v37 = 0;
LABEL_6:
  v44 = sub_1BB6BA654();
  return (*(*(v44 - 8) + 56))(v29, v37, 1, v44);
}

uint64_t DKFPSTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908, &qword_1BB6BF4D0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

double sub_1BB660BA0()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);

  os_unfair_lock_lock(v5 + 4);

  sub_1BB6BA7D4();
  v6 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1BB59D348(0, v6[2] + 1, 1, v6);
    *(v0 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1BB59D348((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v4, v1);
  *(v0 + 24) = v6;
  v10 = *(v0 + 16);

  os_unfair_lock_unlock(v10 + 4);

  return result;
}

void sub_1BB660D30()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = *(v0 + 16);

  os_unfair_lock_lock(v11 + 4);

  v27[0] = v0;
  v12 = *(*(v0 + 24) + 16);

  v34 = v12;
  if (v12)
  {
    v33 = v4;
    v14 = 0;
    v30 = (v2 + 32);
    v31 = v2 + 16;
    v15 = MEMORY[0x1E69E7CC0];
    v28 = v10;
    v29 = v7;
    v32 = v13;
    v27[1] = v2 + 8;
    while (v14 < *(v13 + 16))
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v2 + 72);
      (*(v2 + 16))(v10, v13 + v16 + v17 * v14, v1);
      sub_1BB6BA7D4();
      sub_1BB6BA744();
      v19 = v18;
      v20 = *(v2 + 8);
      v20(v7, v1);
      if (v19 >= 1.0)
      {
        v20(v10, v1);
      }

      else
      {
        v21 = *v30;
        (*v30)(v33, v10, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E59E0(0, *(v15 + 16) + 1, 1);
          v15 = v35;
        }

        v24 = *(v15 + 16);
        v23 = *(v15 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1BB5E59E0((v23 > 1), v24 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v24 + 1;
        v21((v15 + v16 + v24 * v17), v33, v1);
        v10 = v28;
        v7 = v29;
      }

      ++v14;
      v13 = v32;
      if (v34 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v25 = v27[0];
    *(v27[0] + 24) = v15;

    v26 = *(v25 + 16);

    os_unfair_lock_unlock(v26 + 4);
  }
}

uint64_t *DKThreadSafeBuffer.init(maxLenght:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908, &qword_1BB6BF4D0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[2] = v3;
  v1[3] = sub_1BB6BAAD4();
  v1[4] = a1;
  return v1;
}

double sub_1BB6610B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v6;
  v8 = v2[2];

  os_unfair_lock_lock(v8 + 4);

  (*(v5 + 16))(v7, a1, v4);
  sub_1BB6BAF04();
  sub_1BB6BAED4();

  v9 = sub_1BB6BAEC4();

  if (v2[4] < v9)
  {
    swift_getWitnessTable();
    sub_1BB6BB034();
    (*(v5 + 8))(v7, v4);
  }

  v10 = v2[2];

  os_unfair_lock_unlock(v10 + 4);

  return result;
}

double sub_1BB661258@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = sub_1BB6BB184();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(*(v4 - 8) + 56);
  v17 = a1;
  v10(a1, 1, 1, v4, v7);
  v11 = v2[2];

  os_unfair_lock_lock(v11 + 4);

  v12 = sub_1BB6BAEC4();

  if (v12 >= 1)
  {
    sub_1BB6BAF04();
    swift_getWitnessTable();
    sub_1BB6BB034();
    v13 = v17;
    (*(v6 + 8))(v17, v5);
    (v10)(v9, 0, 1, v4);
    (*(v6 + 32))(v13, v9, v5);
  }

  v14 = v2[2];

  os_unfair_lock_unlock(v14 + 4);

  return result;
}

uint64_t _s23IntelligentTrackingCore12DKFPSTrackerCfd_0()
{

  return v0;
}

uint64_t sub_1BB661494(uint64_t a1)
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BB66168C()
{
  result = qword_1EBC5DC78;
  if (!qword_1EBC5DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DC78);
  }

  return result;
}

uint64_t DKSphericalMotionFilter.__allocating_init(currentTime:configuration:camera:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BB66327C(a1, a2, a3);

  return v6;
}

__n128 sub_1BB661788@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32);
  result = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect);
  v4 = *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1BB6617A8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1BB661808(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t DKSphericalMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKSphericalMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BB661A14(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1BB661A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for DKMotion3(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5A90D8(a1, v10, type metadata accessor for DKMotion3);
  return sub_1BB5A8610(v10, *a2 + *a5);
}

uint64_t DKSphericalMotionFilter.State.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, type metadata accessor for DKMotion3);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera, type metadata accessor for DKMotion3);
  return v0;
}

uint64_t DKSphericalMotionFilter.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, type metadata accessor for DKMotion3);
  sub_1BB5A9140(v0 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera, type metadata accessor for DKMotion3);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB661CE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  return (*(v9 + 40))(*a2 + *a5, v12, v8);
}

uint64_t DKSphericalMotionFilter.init(currentTime:configuration:camera:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = sub_1BB66327C(a1, a2, a3);

  return v3;
}

BOOL sub_1BB661E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState);
  if (!v9)
  {
    return 1;
  }

  v10 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
  v11 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 8);
  v12 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 16);
  v13 = *(v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect + 24);
  (*(v5 + 16))(v8, v9 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated, v4, v6);

  sub_1BB6BA744();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  v16 = sub_1BB59FCF8(v15 * *(*(v2 + 16) + 96), v10, v11, v12, v13);
  if (*(a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32))
  {

    return 1;
  }

  v20 = CGRectIntersectsRect(*&v16, *(a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect));

  return v20;
}

uint64_t sub_1BB662018(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for DKCamera(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB6BA7F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11 + 16;
  v50 = *(v11 + 16);
  v51 = OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time;
  v50(v14, a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_time, v10, v12);

  sub_1BB59911C(v14);

  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter;

  sub_1BB59911C(v14);

  v45 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter;

  sub_1BB59911C(v14);

  sub_1BB6626AC(v14);
  v46 = v11;
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v48 = v17;
  v17(v14, v10);
  v18 = (a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect);
  if ((*(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect + 32) & 1) == 0)
  {
    v20 = v18[2];
    v19 = v18[3];
    v22 = *v18;
    v21 = v18[1];
    v43 = v6;
    sub_1BB5A90D8(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, v9, type metadata accessor for DKCamera);
    v23 = *(a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance);
    v53.origin.x = v22;
    v53.origin.y = v21;
    v53.size.width = v20;
    v53.size.height = v19;
    DKCamera.cameraToWorld(rect:distance:)(&v52, v53, *(&v23 - 1));
    x = v52.worldRect.origin.x;
    y = v52.worldRect.origin.y;
    width = v52.worldRect.size.width;
    height = v52.worldRect.size.height;
    distance = v52.distance;
    sub_1BB5A9140(v9, type metadata accessor for DKCamera);
    v29 = v50;
    v49 = a1;
    (v50)(v14, a1 + v51, v10);
    v47 = v15;
    type metadata accessor for DKConstantAccelerationFilter.Measurement(0);
    swift_allocObject();

    v30 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    MidX = CGRectGetMidX(v54);
    sub_1BB69DF38(0, MidX, 0.01);
    sub_1BB69EF7C(v30);

    v32 = v51;
    v29(v14, v49 + v51, v10);
    swift_allocObject();

    v33 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = width;
    v55.size.height = height;
    MidY = CGRectGetMidY(v55);
    sub_1BB69DF38(0, MidY, 0.01);
    sub_1BB69EF7C(v33);

    v29(v14, v49 + v32, v10);
    a1 = v49;
    swift_allocObject();

    v35 = DKConstantAccelerationFilter.Measurement.init(time:)(v14);
    sub_1BB69DF38(0, distance, 0.1);
    sub_1BB69EF7C(v35);

    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    v36 = CGRectGetWidth(v56);
    v37 = v46;
    v38 = *(v46 + 56);
    v45 = v16;
    v39 = v43;
    v38(v43, 1, 1, v10);
    sub_1BB6ABB40(0, 1, v39, v36);

    sub_1BB5A1908(v39);

    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v40 = CGRectGetHeight(v57);
    v38(v39, 1, 1, v10);
    sub_1BB6ABB40(0, 1, v39, v40);

    sub_1BB5A1908(v39);
    (*(v37 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated, a1 + v51, v10);
  }

  (v50)(v14, a1 + v51, v10);
  sub_1BB6626AC(v14);
  return v48(v14, v10);
}

void sub_1BB662600(uint64_t a1)
{

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB6626AC(a1);
}

void sub_1BB6626AC(uint64_t a1)
{
  v85 = a1;
  v95 = type metadata accessor for DKMotion3(0);
  MEMORY[0x1EEE9AC00](v95);
  v89 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v81 - v4;
  v94 = type metadata accessor for DKCamera(0);
  MEMORY[0x1EEE9AC00](v94);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v81 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - v18;
  *&v93 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter;
  v96 = v1;
  v20 = *(v9 + 16);
  v20(&v81 - v18, *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v8, v17);

  sub_1BB6BA724();
  sub_1BB61D44C();
  v21 = sub_1BB6BABE4();

  v87 = v9;
  v22 = *(v9 + 8);
  v22(v15, v8);
  v22(v19, v8);
  if (v21 & 1) != 0 || (v84 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter, (v20)(v19, *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v8), , sub_1BB6BA724(), v23 = sub_1BB6BABE4(), , v22(v15, v8), v22(v19, v8), (v23) || (v82 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter, v24 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v83 = v20, (v20)(v19, v24, v8), , sub_1BB6BA724(), v25 = sub_1BB6BABE4(), , v22(v15, v8), v22(v19, v8), (v25))
  {
    v26 = 0;
LABEL_5:
    v27 = v96;
LABEL_6:
    *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState) = v26;

    return;
  }

  v27 = v96;
  v28 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectWidthFilter);
  if (*(v28 + 33) != 1 || (*(v28 + 32) != 1 ? (v29 = *(v28 + 40)) : (v29 = atan2(*(v28 + 48), *(v28 + 56))), v30 = v83, v31 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectHeightFilter), *(v31 + 33) != 1))
  {
    v26 = 0;
    goto LABEL_6;
  }

  if (*(v31 + 32) == 1)
  {
    v32 = atan2(*(v31 + 48), *(v31 + 56));
  }

  else
  {
    v32 = *(v31 + 40);
  }

  v33 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x;
  v34 = *(*(v27 + v93) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  if (*(v34 + 16) >= 1 && *(v34 + 24) >= 1)
  {
    v35 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera;
    v36 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera + *(v94 + 32) + *(v95 + 20));
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = **(v34 + 32);
        ;
      }

        ;
      }

      v41 = *(*(v27 + v84) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
      if (*(v41 + 16) < 1 || *(v41 + 24) < 1)
      {
        goto LABEL_49;
      }

      if (v37 != 1)
      {
        v42 = **(v41 + 32);
          ;
        }

          ;
        }

        v44 = *(v27 + v82);
        v45 = *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
        if (*(v45 + 16) >= 1 && *(v45 + 24) >= 1)
        {
          sub_1BB5A90D8(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, v90, type metadata accessor for DKCamera);
          v46 = *(v44 + v33);
          if (*(v46 + 16) > 0 && *(v46 + 24) >= 1)
          {
            v97.origin.x = v38 - v29 * 0.5;
            v97.origin.y = v42 - v32 * 0.5;
            v97.size.width = v29;
            v97.size.height = v32;
            v47 = v90;
            v98 = DKCamera.worldToCamera(rect:distance:clampToBorders:)(v97, **(v46 + 32), 1);
            x = v98.origin.x;
            y = v98.origin.y;
            width = v98.size.width;
            height = v98.size.height;
            sub_1BB5A9140(v47, type metadata accessor for DKCamera);
            v30(v92, v27 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated, v8);
            v30(v91, v85, v8);
            v52 = *(*(v27 + v93) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
            v53 = v52[2];
            if (v53 > 0 && v52[3] >= 1)
            {
              v54 = *(*(v27 + v84) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
              v55 = v54[2];
              if (v55 > 0 && v54[3] >= 1)
              {
                v90 = v35;
                v56 = *(*(v27 + v82) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
                v57 = v56[2];
                if (v57 > 0 && v56[3] >= 1)
                {
                  v58 = v52[4];
                  v59 = *v58;
                  v60 = v54[4];
                  v61 = *v60;
                  v62 = v56[4];
                  v63 = *v62;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0, &unk_1BB6C29A0);
                  v64 = swift_allocObject();
                  v93 = xmmword_1BB6BC7F0;
                  *(v64 + 16) = xmmword_1BB6BC7F0;
                  *(v64 + 32) = v59;
                  *(v64 + 40) = v61;
                  *(v64 + 48) = v63;
                  if (v53 != 1 && v55 != 1 && v57 != 1)
                  {
                    v65 = v64;
                    v66 = v58[1];
                    v67 = v60[1];
                    v68 = v62[1];
                    v69 = swift_allocObject();
                    *(v69 + 16) = v93;
                    *(v69 + 32) = v66;
                    *(v69 + 40) = v67;
                    *(v69 + 48) = v68;
                    if (v53 > 2 && v55 > 2 && v57 > 2)
                    {
                      v70 = v69;
                      v71 = v58[2];
                      v72 = v60[2];
                      v73 = v62[2];
                      v74 = swift_allocObject();
                      *(v74 + 16) = v93;
                      *(v74 + 32) = v71;
                      *(v74 + 40) = v72;
                      *(v74 + 48) = v73;
                      v75 = v88;
                      v76 = *(v87 + 32);
                      v76(v88, v91, v8);
                      v77 = v95;
                      *(v75 + *(v95 + 20)) = v65;
                      *(v75 + *(v77 + 24)) = v70;
                      *(v75 + *(v77 + 28)) = v74;
                      v78 = v86;
                      sub_1BB5A90D8(v90, v86, type metadata accessor for DKCamera);
                      v79 = v89;
                      sub_1BB5DD278(v78 + *(v94 + 32), v89);
                      type metadata accessor for DKSphericalMotionFilter.State(0);
                      v26 = swift_allocObject();
                      v76((v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_lastUpdated), v92, v8);
                      sub_1BB5DD278(v75, v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion);
                      v80 = (v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
                      *v80 = x;
                      v80[1] = y;
                      v80[2] = width;
                      v80[3] = height;
                      sub_1BB5DD278(v79, v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_camera);
                      goto LABEL_5;
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

LABEL_49:
  sub_1BB6BB524();
  __break(1u);
}

double sub_1BB663038(uint64_t a1)
{

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB59911C(a1);

  sub_1BB6626AC(a1);

  return result;
}

uint64_t DKSphericalMotionFilter.deinit()
{

  sub_1BB5A9140(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, type metadata accessor for DKCamera);

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastUpdated;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_logger;
  v4 = sub_1BB6BAA34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DKSphericalMotionFilter.__deallocating_deinit()
{
  DKSphericalMotionFilter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB66327C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v60 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050, &qword_1BB6BD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - v8;
  v63 = &v57 - v8;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState) = 0;
  sub_1BB6BA724();
  sub_1BB6BAA24();
  *(v4 + 16) = a2;
  v59 = a3;
  sub_1BB5A90D8(a3, v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_camera, type metadata accessor for DKCamera);
  v10 = a2[14];
  type metadata accessor for DKConstantAccelerationFilter(0);
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v10;
  swift_retain_n();

  DKKalmanFilter.init(configuration:stateSize:)(v10, 3, v11);
  v64 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_azimuthFilter) = v12;
  v13 = a2[15];
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v13;
  v14 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v14, 3, v15);
  v62 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_elevationFilter) = v16;
  v17 = a2[16];
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = v17;
  v18 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v18, 3, v19);
  v61 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_distanceFilter) = v20;
  v21 = a2[11];
  v22 = sub_1BB6BA7F4();
  v58 = *(v22 - 8);
  v23 = *(v58 + 56);
  v23(v9, 1, 1, v22);
  type metadata accessor for DKSmoothingFilter(0);
  v24 = swift_allocObject();
  *(v24 + 33) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0x3FF0000000000000;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v23((v24 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v22);
  v26 = v24 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v24 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v24 + 16) = v21;
  *(v24 + 24) = v21;
  *(v24 + 32) = 0;
  v28 = v24 + v25;
  v29 = v63;
  sub_1BB5BF3C4(v63, v28);
  *v26 = 0;
  *(v26 + 8) = 1;
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectWidthFilter) = v24;
  v30 = a2[11];
  v31 = v29;
  v23(v29, 1, 1, v22);
  v32 = swift_allocObject();
  *(v32 + 33) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0x3FF0000000000000;
  v33 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v23((v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v22);
  v34 = v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v35 = 0;
  *(v35 + 8) = 1;
  *(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v32 + 16) = v30;
  *(v32 + 24) = v30;
  *(v32 + 32) = 0;
  sub_1BB5BF3C4(v31, v32 + v33);
  *v34 = 0;
  *(v34 + 8) = 1;
  *v35 = 0;
  *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_rectHeightFilter) = v32;
  v36 = *(v4 + v64);
  *(v35 + 8) = 1;
  v37 = *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v37 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v37 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v37 + 32) = 0x3FF0000000000000;
  v38 = *(v37 + 16);
  if (v38 <= 1 || *(v37 + 24) <= 1)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v38, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(*(v37 + 32) + 8 * (v38 + 1)) = 0x3FB999999999999ALL;
  v39 = *(v37 + 16);
  if (v39 < 3 || *(v37 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v39 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v40 = 2 * v39;
  v41 = __OFADD__(v40, 2);
  v42 = v40 + 2;
  if (v41)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(*(v37 + 32) + 8 * v42) = 0x3FF0000000000000;
  v43 = *(*(v4 + v62) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v43 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v43 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v43 + 32) = 0x3FF0000000000000;
  v44 = *(v43 + 16);
  if (v44 <= 1 || *(v43 + 24) <= 1)
  {
    goto LABEL_38;
  }

  v41 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v41)
  {
    goto LABEL_32;
  }

  *(*(v43 + 32) + 8 * v45) = 0x3FB999999999999ALL;
  v46 = *(v43 + 16);
  if (v46 < 3 || *(v43 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v46 + 0x4000000000000000 < 0)
  {
    goto LABEL_33;
  }

  v47 = 2 * v46;
  v41 = __OFADD__(v47, 2);
  v48 = v47 + 2;
  if (v41)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(*(v43 + 32) + 8 * v48) = 0x3FF0000000000000;
  v49 = *(*(v4 + v61) + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  if (*(v49 + 16) < 1)
  {
    goto LABEL_38;
  }

  if (*(v49 + 24) < 1)
  {
    goto LABEL_38;
  }

  **(v49 + 32) = 0x3FB999999999999ALL;
  v50 = *(v49 + 16);
  if (v50 <= 1 || *(v49 + 24) <= 1)
  {
    goto LABEL_38;
  }

  v41 = __OFADD__(v50, 1);
  v51 = v50 + 1;
  if (v41)
  {
    goto LABEL_35;
  }

  *(*(v49 + 32) + 8 * v51) = 0x3FF0000000000000;
  v52 = *(v49 + 16);
  if (v52 < 3 || *(v49 + 24) <= 2)
  {
    goto LABEL_38;
  }

  if (v52 + 0x4000000000000000 >= 0)
  {
    v53 = 2 * v52;
    v41 = __OFADD__(v53, 2);
    v54 = v53 + 2;
    if (!v41)
    {
      *(*(v49 + 32) + 8 * v54) = 0x3FF0000000000000;
      v55 = v60;
      sub_1BB6626AC(v60);
      sub_1BB5A9140(v59, type metadata accessor for DKCamera);
      (*(v58 + 8))(v55, v22);
      return v4;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t sub_1BB663990(uint64_t a1)
{
  result = type metadata accessor for DKCamera(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v3 <= 0x3F)
    {
      result = sub_1BB6BAA34();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1BB663C98(uint64_t a1)
{
  result = sub_1BB6BA7F4();
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

uint64_t dispatch thunk of DKSphericalMotionFilter.Measurement.rect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 136);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t sub_1BB663EF4(uint64_t a1)
{
  result = sub_1BB6BA7F4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DKMotion3(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DKAckermannMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKAckermannMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKAckermannMotionFilter::Index_optional __swiftcall DKAckermannMotionFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKAckermannMotionFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKAckermannMotionFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKAckermannMotionFilter.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  sub_1BB6648B0(a1);
  v3 = v2;

  return v3;
}

uint64_t DKAckermannMotionFilter.init(configuration:)(uint64_t a1)
{
  sub_1BB6648B0(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1BB664438(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v4, v6);
  sub_1BB6BA744();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  v11 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  v12 = v11[2];
  if (v12 < 3)
  {
    goto LABEL_28;
  }

  if (v11[3] <= 0)
  {
    goto LABEL_28;
  }

  v13 = v11[4];
  v14 = __sincos_stret(*(v13 + 16));
  if (v12 <= 4)
  {
    goto LABEL_28;
  }

  v15 = *(v13 + 32);
  v16 = tan(v15);
  v17 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v18 = v17[2];
  if (v18 < 1 || v17[3] <= 3)
  {
    goto LABEL_28;
  }

  v19 = 3 * v18;
  if ((v18 * 3) >> 64 != (3 * v18) >> 63)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v13 + 24);
  v21 = v17[4];
  *(v21 + 24 * v18) = v10 * v14.__cosval;
  if (v18 == 1)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v19, 1))
  {
    goto LABEL_22;
  }

  *(v21 + 8 * (v19 + 1)) = v10 * v14.__sinval;
  if (v18 <= 2)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v19, 2))
  {
    goto LABEL_23;
  }

  v22 = v10 * v16;
  v23 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKAckermannMotionFilter_ackermannConfiguration);
  *(v21 + 8 * (v19 + 2)) = v10 * v16 / *(v23 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30, &qword_1BB6BD330);
  swift_allocObject();

  v25 = sub_1BB59F300(v24);

  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J) = v25;

  v27 = *(v2 + v26);
  v28 = v27[2];
  if (v28 < 1)
  {
    goto LABEL_28;
  }

  v29 = v27[3];
  if (v29 <= 3)
  {
    goto LABEL_28;
  }

  v30 = 3 * v28;
  if ((v28 * 3) >> 64 != (3 * v28) >> 63)
  {
    goto LABEL_24;
  }

  v31 = v27[4];
  *(v31 + 24 * v28) = v10 * v14.__cosval;
  *(v31 + 16 * v28) = v10 * -(v14.__sinval * v20);
  if (v28 == 1)
  {
    goto LABEL_28;
  }

  if (__OFADD__(v30, 1))
  {
    goto LABEL_25;
  }

  *(v31 + 8 * (v30 + 1)) = v10 * v14.__sinval;
  *(v31 + 16 * v28 + 8) = v10 * (v14.__cosval * v20);
  if (v28 <= 2)
  {
    goto LABEL_28;
  }

  v32 = __OFADD__(v30, 2);
  v33 = v30 + 2;
  if (v32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v31 + 8 * v33) = v22 / *(v23 + 72);
  if (v29 != 4)
  {
    if (!(v28 >> 61))
    {
      v34 = cos(v15);
      *(v31 + 32 * v28 + 16) = v10 * v20 / (v34 * v34);
      return sub_1BB69E74C(a1);
    }

    goto LABEL_27;
  }

LABEL_28:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKAckermannMotionFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKAckermannMotionFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

void sub_1BB6648B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKAckermannMotionFilter_ackermannConfiguration) = a1;
  v2 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v2, 5, v3);
  v5 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  v6 = v5[2];
  if (v6 < 1)
  {
    goto LABEL_37;
  }

  v7 = v5[3];
  if (v7 <= 0)
  {
    goto LABEL_37;
  }

  v8 = v5[4];
  *v8 = 0x3F747AE147AE147BLL;
  if (v6 == 1 || v7 == 1)
  {
    goto LABEL_37;
  }

  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8[v6 + 1] = 0x3F747AE147AE147BLL;
  if (v6 < 3 || v7 <= 2)
  {
    goto LABEL_37;
  }

  if ((v6 + 0x4000000000000000) < 0)
  {
    goto LABEL_31;
  }

  if (__OFADD__(2 * v6, 2))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8[2 * v6 + 2] = 0x3F789374BC6A7EFALL;
  if (v6 < 4 || v7 <= 3)
  {
    goto LABEL_37;
  }

  v12 = 3 * v6;
  if ((v6 * 3) >> 64 != (3 * v6) >> 63)
  {
    goto LABEL_33;
  }

  v13 = __OFADD__(v12, 3);
  v14 = v12 + 3;
  if (v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8[v14] = 0x3F647AE147AE147BLL;
  if (v6 < 5 || v7 <= 4)
  {
    goto LABEL_37;
  }

  if (!(v6 >> 61))
  {
    v16 = 4 * v6;
    v13 = __OFADD__(v16, 4);
    v17 = v16 + 4;
    if (!v13)
    {
      v8[v17] = 0x3F847AE147AE147BLL;
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1BB6BB524();
  __break(1u);
}

unint64_t sub_1BB664A44()
{
  result = qword_1EBC5DCB0;
  if (!qword_1EBC5DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCB0);
  }

  return result;
}

unint64_t sub_1BB664A9C()
{
  result = qword_1EBC5DCB8;
  if (!qword_1EBC5DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DCC0, &qword_1BB6C5EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCB8);
  }

  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.probability.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.init(identity:probability:confidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1BB6BA844();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

BOOL static DKIdentityFilter.IdentityProbability.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA814() & 1) != 0 && (v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB664EF0()
{
  v1 = 0x6C696261626F7270;
  if (*v0 != 1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1BB664F58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB66F174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB664F80(uint64_t a1)
{
  v2 = sub_1BB6651E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB664FBC(uint64_t a1)
{
  v2 = sub_1BB6651E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityProbability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DCE8, &qword_1BB6C6010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6651E0();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BA844();
  sub_1BB6652FC(&qword_1EBC5CE38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BB6BB744();
  if (!v1)
  {
    type metadata accessor for DKIdentityFilter.IdentityProbability(0);
    v8[14] = 1;
    sub_1BB6BB724();
    v8[13] = 2;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BB6651E0()
{
  result = qword_1EBC5DCF0;
  if (!qword_1EBC5DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DCF0);
  }

  return result;
}

uint64_t DKIdentityFilter.IdentityProbability.hash(into:)(uint64_t a1)
{
  sub_1BB6BA844();
  sub_1BB6652FC(&qword_1EBC5C288, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BB6BAB84();
  v2 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v3);
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v4);
}

uint64_t sub_1BB6652FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DKIdentityFilter.IdentityProbability.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1BB6BA844();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DCF8, &qword_1BB6C6018);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6651E0();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  v28 = 0;
  sub_1BB6652FC(&qword_1EBC5CE68, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v24;
  sub_1BB6BB684();
  v15 = *(v13 + 32);
  v16 = v25;
  v25 = v4;
  v15(v12, v16, v4);
  v27 = 1;
  sub_1BB6BB664();
  *(v12 + *(v9 + 20)) = v17;
  v26 = 2;
  sub_1BB6BB664();
  v19 = v18;
  (*(v23 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v19;
  sub_1BB66EEF0(v12, v21, type metadata accessor for DKIdentityFilter.IdentityProbability);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v12, type metadata accessor for DKIdentityFilter.IdentityProbability);
}

double DKIdentityFilter.IdentityProbabilities.enrolledFaceProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);

  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.enrolledFaceProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

double DKIdentityFilter.IdentityProbabilities.dynamicFaceProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);

  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicFaceProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

double DKIdentityFilter.IdentityProbabilities.dynamicBodyProbabilities.getter()
{
  type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);

  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.dynamicBodyProbabilities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityProbabilities(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityProbabilities.init(time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + v6[5]) = MEMORY[0x1E69E7CC0];
  *(a2 + v6[6]) = v7;
  result = (*(v5 + 8))(a1, v4);
  *(a2 + v6[7]) = v7;
  return result;
}

int *DKIdentityFilter.IdentityProbabilities.init(time:enrolledFaceProbabilities:dynamicFaceProbabilities:dynamicBodyProbabilities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BB6BA7F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

unint64_t sub_1BB665BB8()
{
  v1 = 1701669236;
  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1BB665C34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB66F298(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB665C5C(uint64_t a1)
{
  v2 = sub_1BB66EE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB665C98(uint64_t a1)
{
  v2 = sub_1BB66EE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityProbabilities.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD00, &qword_1BB6C6020);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EE00();
  sub_1BB6BB984();
  LOBYTE(v13) = 0;
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1BB6BB744();
  if (!v2)
  {
    v9 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    v13 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10, &qword_1BB6C6028);
    sub_1BB66EE54(&qword_1EBC5DD18, &qword_1EBC5DD20, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability, MEMORY[0x1E69E6300]);
    sub_1BB6BB744();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    sub_1BB6BB744();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKIdentityFilter.IdentityProbabilities.hash(into:)(uint64_t a1)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v3 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(a1, *(v1 + v3[5]));
  sub_1BB66E784(a1, *(v1 + v3[6]));
  v4 = *(v1 + v3[7]);

  return sub_1BB66E784(a1, v4);
}

uint64_t DKIdentityFilter.IdentityProbabilities.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v1 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(v3, *(v0 + v1[5]));
  sub_1BB66E784(v3, *(v0 + v1[6]));
  sub_1BB66E784(v3, *(v0 + v1[7]));
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityProbabilities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_1BB6BA7F4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD28, &qword_1BB6C6030);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EE00();
  v21 = v8;
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v17;
  LOBYTE(v23) = 0;
  sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v13 = v18;
  sub_1BB6BB684();
  (*(v12 + 32))(v11, v13, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10, &qword_1BB6C6028);
  v22 = 1;
  v18 = sub_1BB66EE54(&qword_1EBC5DD30, &qword_1EBC5DD38, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability, MEMORY[0x1E69E6330]);
  sub_1BB6BB684();
  *&v11[v9[5]] = v23;
  v22 = 2;
  v15 = 0;
  sub_1BB6BB684();
  *&v11[v9[6]] = v23;
  v22 = 3;
  sub_1BB6BB684();
  (*(v19 + 8))(v21, v20);
  *&v11[v9[7]] = v23;
  sub_1BB66EEF0(v11, v16, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v11, type metadata accessor for DKIdentityFilter.IdentityProbabilities);
}

uint64_t sub_1BB6665D4(int *a1)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB66E784(v4, *(v1 + a1[5]));
  sub_1BB66E784(v4, *(v1 + a1[6]));
  sub_1BB66E784(v4, *(v1 + a1[7]));
  return sub_1BB6BB964();
}

uint64_t sub_1BB666698(uint64_t a1, int *a2)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB66E784(a1, *(v2 + a2[5]));
  sub_1BB66E784(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);

  return sub_1BB66E784(a1, v5);
}

uint64_t sub_1BB666750(uint64_t a1, int *a2)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  sub_1BB66E784(v5, *(v2 + a2[5]));
  sub_1BB66E784(v5, *(v2 + a2[6]));
  sub_1BB66E784(v5, *(v2 + a2[7]));
  return sub_1BB6BB964();
}

uint64_t sub_1BB66682C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_1BB6668B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DKIdentityFilter.TrackerConfidence.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DKIdentityFilter.TrackerConfidence.init(time:trackConfidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1BB6BA7F4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

BOOL static DKIdentityFilter.TrackerConfidence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1BB666AA8()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1BB666AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BB666BC4(uint64_t a1)
{
  v2 = sub_1BB66EFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB666C00(uint64_t a1)
{
  v2 = sub_1BB66EFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.TrackerConfidence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD40, &qword_1BB6C6038);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EFD8();
  sub_1BB6BB984();
  v8[15] = 0;
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1BB6BB744();
  if (!v1)
  {
    type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
    v8[14] = 1;
    sub_1BB6BB724();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKIdentityFilter.TrackerConfidence.hash(into:)(uint64_t a1)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v2 = *(v1 + *(type metadata accessor for DKIdentityFilter.TrackerConfidence(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v2);
}

uint64_t DKIdentityFilter.TrackerConfidence.hashValue.getter()
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v1 = *(v0 + *(type metadata accessor for DKIdentityFilter.TrackerConfidence(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v1);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.TrackerConfidence.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1BB6BA7F4();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD50, &unk_1BB6C6040);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66EFD8();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v14 = v25;
  sub_1BB6BB684();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  sub_1BB6BB664();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_1BB66EEF0(v18, v17, type metadata accessor for DKIdentityFilter.TrackerConfidence);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB66EF58(v18, type metadata accessor for DKIdentityFilter.TrackerConfidence);
}

uint64_t sub_1BB6672C4(uint64_t a1, uint64_t a2)
{
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB117D0](*&v4);
}

uint64_t sub_1BB667360(uint64_t a1, uint64_t a2)
{
  sub_1BB6BB924();
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v4);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityState.probabilities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityState.identity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 20);

  return sub_1BB66F04C(a1, v3);
}

uint64_t DKIdentityFilter.IdentityState.confidence.setter(double a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t DKIdentityFilter.IdentityState.identityProbabilities.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 28);

  return sub_1BB66F0BC(a1, v3);
}

uint64_t DKIdentityFilter.IdentityState.lastUpdateTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DKIdentityFilter.IdentityState.lastUpdateTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKIdentityFilter.IdentityState.updateNeeded.setter(char a1)
{
  result = type metadata accessor for DKIdentityFilter.IdentityState(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

unint64_t sub_1BB6678E0()
{
  v1 = *v0;
  v2 = 0x6C696261626F7270;
  v3 = 0xD000000000000015;
  v4 = 0x616470557473616CLL;
  if (v1 != 4)
  {
    v4 = 0x654E657461647075;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x797469746E656469;
  if (v1 != 1)
  {
    v5 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BB6679C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BB66F40C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BB6679F8(uint64_t a1)
{
  v2 = sub_1BB66F120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB667A34(uint64_t a1)
{
  v2 = sub_1BB66F120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIdentityFilter.IdentityState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD58, &qword_1BB6C6050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB66F120();
  sub_1BB6BB984();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10, &qword_1BB6C6028);
  sub_1BB66EE54(&qword_1EBC5DD18, &qword_1EBC5DD20, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability, MEMORY[0x1E69E6300]);
  sub_1BB6BB744();
  if (!v2)
  {
    type metadata accessor for DKIdentityFilter.IdentityState(0);
    v10[6] = 1;
    type metadata accessor for DKIdentityFilter.IdentityProbability(0);
    sub_1BB6652FC(&qword_1EBC5DD20, type metadata accessor for DKIdentityFilter.IdentityProbability, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB704();
    v10[5] = 2;
    sub_1BB6BB724();
    v10[4] = 3;
    type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
    sub_1BB6652FC(&qword_1EBC5CE58, type metadata accessor for DKIdentityFilter.IdentityProbabilities, &protocol conformance descriptor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB744();
    v10[3] = 4;
    sub_1BB6BA7F4();
    sub_1BB6652FC(&qword_1EBC5C548, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1BB6BB744();
    v10[2] = 5;
    sub_1BB6BB714();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKIdentityFilter.IdentityState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428, &unk_1BB6BE5D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  sub_1BB66E784(a1, *v2);
  v11 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  sub_1BB5982A0(v2 + v11[5], v10, &qword_1EBC5C428, &unk_1BB6BE5D0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BB6BB944();
  }

  else
  {
    sub_1BB66F778(v10, v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB944();
    DKIdentityFilter.IdentityProbability.hash(into:)(a1);
    sub_1BB66EF58(v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
  }

  v12 = *(v2 + v11[6]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1BFB117D0](*&v12);
  v13 = v2 + v11[7];
  sub_1BB6BA7F4();
  sub_1BB6652FC(&qword_1EBC5C280, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BB6BAB84();
  v14 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  sub_1BB66E784(a1, *&v13[v14[5]]);
  sub_1BB66E784(a1, *&v13[v14[6]]);
  sub_1BB66E784(a1, *&v13[v14[7]]);
  sub_1BB6BAB84();
  return sub_1BB6BB944();
}

uint64_t sub_1BB668094(uint64_t (*a1)(void *))
{
  sub_1BB6BB924();
  a1(v3);
  return sub_1BB6BB964();
}

uint64_t DKIdentityFilter.IdentityState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v39 = a2;
  v2 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428, &unk_1BB6BE5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD68, &qword_1BB6C6058);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v36 - v7;
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  *v17 = MEMORY[0x1E69E7CC0];
  v19 = v15[7];
  v20 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v21 = *(*(v20 - 8) + 56);
  v43 = v19;
  v21(&v17[v19], 1, 1, v20);
  v42 = v15[8];
  *&v17[v42] = 0;
  v22 = &v17[v15[9]];
  sub_1BB6BA724();
  (*(v9 + 16))(v22, v13, v8);
  *(v22 + v2[5]) = v18;
  *(v22 + v2[6]) = v18;
  v40 = v9;
  (*(v9 + 8))(v13, v8);
  v46 = v2;
  *(v22 + v2[7]) = v18;
  v23 = v15[10];
  sub_1BB6BA724();
  v24 = v15[11];
  v50 = v17;
  v17[v24] = 1;
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1BB66F120();
  v25 = v49;
  sub_1BB6BB974();
  if (v25)
  {
    v26 = v50;
  }

  else
  {
    v49 = v22;
    v37 = v24;
    v38 = v23;
    v28 = v44;
    v27 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD10, &qword_1BB6C6028);
    v58 = 0;
    sub_1BB66EE54(&qword_1EBC5DD30, &qword_1EBC5DD38, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability, MEMORY[0x1E69E6330]);
    v29 = v51;
    sub_1BB6BB684();
    v26 = v50;
    *v50 = v59;
    v57 = 1;
    sub_1BB6652FC(&qword_1EBC5DD38, type metadata accessor for DKIdentityFilter.IdentityProbability, &protocol conformance descriptor for DKIdentityFilter.IdentityProbability);
    sub_1BB6BB644();
    sub_1BB66F04C(v28, v26 + v43);
    v56 = 2;
    sub_1BB6BB664();
    v30 = v47;
    *(v26 + v42) = v31;
    v55 = 3;
    sub_1BB6652FC(&qword_1EBC5CE80, type metadata accessor for DKIdentityFilter.IdentityProbabilities, &protocol conformance descriptor for DKIdentityFilter.IdentityProbabilities);
    sub_1BB6BB684();
    sub_1BB66F0BC(v27, v49);
    v54 = 4;
    sub_1BB6652FC(&qword_1EBC5C658, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v32 = v41;
    sub_1BB6BB684();
    (*(v40 + 40))(v26 + v38, v32, v8);
    v53 = 5;
    v34 = v29;
    v35 = v48;
    LOBYTE(v29) = sub_1BB6BB654();
    (*(v30 + 8))(v34, v35);
    *(v26 + v37) = v29 & 1;
    sub_1BB66EEF0(v26, v39, type metadata accessor for DKIdentityFilter.IdentityState);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_1BB66EF58(v26, type metadata accessor for DKIdentityFilter.IdentityState);
}

uint64_t sub_1BB6687F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1BB6BB924();
  a3(v5);
  return sub_1BB6BB964();
}

uint64_t sub_1BB66885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1BB6BB924();
  a4(v6);
  return sub_1BB6BB964();
}

uint64_t sub_1BB6688D0(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t DKIdentityFilter.Configuration.__allocating_init()()
{
  v0 = swift_allocObject();
  DKIdentityFilter.Configuration.init()();
  return v0;
}

uint64_t DKIdentityFilter.Configuration.init()()
{
  *(v0 + 16) = xmmword_1BB6C5F80;
  *(v0 + 32) = xmmword_1BB6BF700;
  *(v0 + 48) = xmmword_1BB6BF700;
  *(v0 + 64) = xmmword_1BB6C5F90;
  *(v0 + 80) = xmmword_1BB6C5FA0;
  *(v0 + 96) = xmmword_1BB6C5FB0;
  *(v0 + 136) = xmmword_1BB6C5FC0;
  *(v0 + 152) = xmmword_1BB6C5FD0;
  *(v0 + 168) = xmmword_1BB6C5FE0;
  *(v0 + 184) = 0x3FEF5C28F5C28F5CLL;
  type metadata accessor for DKIdentityEMAFilter.Configuration();
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 112) = v1;
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 120) = v2;
  swift_allocObject();
  DKIdentityEMAFilter.Configuration.init()();
  *(v0 + 128) = v3;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 2;
  __asm { FMOV            V0.2D, #5.0 }

  *(v0 + 216) = _Q0;
  *(v0 + 232) = xmmword_1BB6C5FF0;
  *(v0 + 248) = xmmword_1BB6BE580;
  *(v0 + 264) = 0x405E000000000000;
  sub_1BB668BB0();
  return v0;
}

void sub_1BB668BB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8, &qword_1BB6C6060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6C6000;
  v2 = v0[14];
  *(inited + 32) = v2;
  *(inited + 40) = v0[15];
  *(inited + 48) = v0[16];
  v3 = inited & 0xC000000000000001;

  if ((inited & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1BFB111F0](0, inited);
  }

  else
  {
  }

  v2[7] = v0[3];
  v2[8] = v0[4];
  v2[9] = v0[5];
  v2[10] = v0[6];
  v2[3] = v0[10];
  v2[4] = v0[11];
  v2[5] = v0[12];

  if (v3)
  {
    v4 = MEMORY[0x1BFB111F0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  v4[7] = v0[3];
  v4[8] = v0[4];
  v4[9] = v0[5];
  v4[10] = v0[6];
  v4[3] = v0[10];
  v4[4] = v0[11];
  v4[5] = v0[12];

  if (v3)
  {
    v5 = MEMORY[0x1BFB111F0](2, inited);
LABEL_11:

    v5[7] = v0[3];
    v5[8] = v0[4];
    v5[9] = v0[5];
    v5[10] = v0[6];
    v5[3] = v0[10];
    v5[4] = v0[11];
    v5[5] = v0[12];

    return;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v5 = *(inited + 48);

    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
}

uint64_t DKIdentityFilter.Configuration.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BB66F62C(a1);

  return v2;
}

uint64_t DKIdentityFilter.Configuration.init(configuration:)(uint64_t a1)
{
  v1 = sub_1BB66F62C(a1);

  return v1;
}

void *DKIdentityFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKIdentityFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKIdentityFilter.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKIdentityFilter.init(configuration:)(a1);
  return v2;
}

void *DKIdentityFilter.init(configuration:)(uint64_t a1)
{
  v19 = a1;
  v2 = sub_1BB6BA7F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428, &unk_1BB6BE5D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = MEMORY[0x1E69E7CC0];
  v1[3] = sub_1BB5B0A1C(MEMORY[0x1E69E7CC0]);
  v1[4] = sub_1BB5B0A1C(v13);
  v1[5] = sub_1BB5B0A1C(v13);
  v14 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state);
  v15 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  sub_1BB6BA724();
  (*(v3 + 16))(v9, v5, v2);
  *&v9[v7[7]] = v13;
  *&v9[v7[8]] = v13;
  (*(v3 + 8))(v5, v2);
  *&v9[v7[9]] = v13;
  sub_1BB6BA724();
  *v14 = v13;
  v16 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  sub_1BB60DF90(v12, v14 + v16[5], &qword_1EBC5C428, &unk_1BB6BE5D0);
  *(v14 + v16[6]) = 0;
  sub_1BB66F778(v9, v14 + v16[7], type metadata accessor for DKIdentityFilter.IdentityProbabilities);
  (*(v3 + 32))(v14 + v16[8], v5, v2);
  *(v14 + v16[9]) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 1;
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize) = 0;
  sub_1BB6BA724();
  v1[2] = v19;
  return v1;
}

void sub_1BB6691B4(uint64_t a1, double a2)
{
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v11 = *(v9 + 240);
  v10 = *(v9 + 248);
  v12.n128_u64[0] = *(v9 + 224);
  if (v11 < v10)
  {
    v13 = *(v9 + 256);
    v14 = v11 <= a2;
    v15 = v12.n128_f64[0] + (a2 - v11) / (v10 - v11) * (*(v9 + 232) - v12.n128_f64[0]);
    if (v14)
    {
      v12.n128_f64[0] = v15;
    }

    if (v10 >= a2)
    {
      v16 = v12.n128_f64[0];
    }

    else
    {
      v16 = *(v9 + 264);
    }

    v17 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime;
    (*(v6 + 16))(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime, v5, v12);
    sub_1BB6BA744();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    (*(v6 + 24))(v2 + v17, a1, v5);
    v20 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize);
    if (v20 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v13 * v19 + v20;
    }

    *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_currentWindowSize) = v21;
    v28 = 14;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000017, 0x80000001BB6CE4D0);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CE4F0);
    sub_1BB6BAFB4();
    v22 = v26;
    v23 = v27;
    v24 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v28, v22, v23, v24);
  }
}

void sub_1BB669438(uint64_t a1)
{
  v2 = v1;
  v194 = sub_1BB6BA7F4();
  v4 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v182 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1BB6BA844();
  v6 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v187 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD70, &qword_1BB6C6068);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v174 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v179 = &v174 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v189 = (&v174 - v23);
  v24 = type metadata accessor for DKIdentityFilter.TrackerConfidence(0);
  v25 = *(a1 + *(v24 + 20));
  v195 = a1;
  sub_1BB6691B4(a1, v25);
  v27 = v26;
  v28 = v1[2];
  v29 = *(v28 + 216);
  v188 = v6;
  v178 = v10;
  if (v27 != v29)
  {
    v192 = v24;
    v193 = v4;
    *(v28 + 216) = v27;
    v30 = v1[3];
    v31 = v2[4];
    v200[5] = v30;
    v201 = v31;
    v202 = v2[5];
    swift_getKeyPath();
    v197 = MEMORY[0x1E69E7CC0];

    v199 = v30;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v200[0]);
    v199 = v201;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v200[0]);
    v199 = v202;

    swift_getAtKeyPath();

    sub_1BB5C8C18(v200[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD78, &qword_1BB6C60B0);
    swift_arrayDestroy();

    v32 = v197;
    if (v197 >> 62)
    {
      v33 = sub_1BB6BB564();
      if (v33)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v33 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
LABEL_4:
        if (v33 < 1)
        {
          goto LABEL_118;
        }

        v34 = 0;
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1BFB111F0](v34, v32);
          }

          else
          {
            v35 = *(v32 + 8 * v34 + 32);
          }

          ++v34;
          v36 = *(v35 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);

          *(v36 + 96) = v27;
          *(v36 + 104) = 0;
        }

        while (v33 != v34);
      }
    }

    LOBYTE(v200[0]) = 14;
    v197 = 0;
    v198 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000017, 0x80000001BB6CE510);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CE4F0);
    sub_1BB6BB4B4();
    v37 = v197;
    v38 = v198;
    v39 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v200, v37, v38, v39);

    v6 = v188;
    v4 = v193;
  }

  v176 = v16;
  v183 = v13;
  v40 = v2[3];
  v41 = *(v40 + 64);
  v177 = (v40 + 64);
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v41;
  v193 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
  v45 = (v42 + 63) >> 6;
  v186 = v6 + 16;
  v185 = v6 + 32;
  v181 = (v4 + 16);
  v180 = (v4 + 8);
  v192 = (v4 + 24);
  v191 = (v6 + 8);
  v175 = v40;

  v46 = 0;
  v190 = v2;
  v47 = v21;
  v184 = v21;
  v48 = v189;
  while (v44)
  {
    v49 = v46;
LABEL_26:
    v52 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v175;
    v55 = v188;
    (*(v188 + 16))(v187, *(v175 + 48) + *(v188 + 72) * v53, v196);
    v56 = *(*(v54 + 56) + 8 * v53);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80, &qword_1BB6C60B8);
    v58 = *(v57 + 48);
    v59 = v184;
    (*(v55 + 32))();
    *(v59 + v58) = v56;
    (*(*(v57 - 8) + 56))(v59, 0, 1, v57);

    v60 = v190;
    v48 = v189;
LABEL_27:
    v47 = v59;
    sub_1BB60DF90(v59, v48, &qword_1EBC5DD70, &qword_1BB6C6068);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80, &qword_1BB6C60B8);
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (v63(v48, 1, v61) == 1)
    {
      v189 = v63;

      v82 = v60[4];
      v83 = (v82 + 64);
      v84 = 1 << *(v82 + 32);
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v86 = v85 & *(v82 + 64);
      v87 = (v84 + 63) >> 6;
      v184 = (v62 + 56);
      v175 = v82;

      v88 = 0;
      v89 = v179;
      v177 = v83;
      while (v86)
      {
        v90 = v88;
LABEL_60:
        v93 = __clz(__rbit64(v86));
        v86 &= v86 - 1;
        v94 = v93 | (v90 << 6);
        v95 = v175;
        v96 = v188;
        v97 = v187;
        v98 = v196;
        (*(v188 + 16))(v187, *(v175 + 48) + *(v188 + 72) * v94, v196);
        v99 = *(*(v95 + 56) + 8 * v94);
        v100 = *(v61 + 48);
        v101 = *(v96 + 32);
        v102 = v176;
        v101(v176, v97, v98);
        *(v102 + v100) = v99;
        v103 = *v184;
        (*v184)(v102, 0, 1, v61);

        v89 = v179;
LABEL_61:
        sub_1BB60DF90(v102, v89, &qword_1EBC5DD70, &qword_1BB6C6068);
        if (v189(v89, 1, v61) == 1)
        {
          v177 = v103;

          v121 = v190[5];
          v122 = *(v121 + 8);
          v179 = v121 + 64;
          v123 = 1 << v121[32];
          v124 = -1;
          if (v123 < 64)
          {
            v124 = ~(-1 << v123);
          }

          v125 = v124 & v122;
          v126 = (v123 + 63) >> 6;
          v176 = v121;

          v127 = 0;
          v128 = v178;
          v129 = v183;
          while (1)
          {
            v130 = v189;
            if (!v125)
            {
              break;
            }

            v131 = v127;
LABEL_94:
            v134 = __clz(__rbit64(v125));
            v125 &= v125 - 1;
            v135 = v134 | (v131 << 6);
            v136 = v176;
            v137 = v188;
            v138 = v187;
            v139 = v196;
            (*(v188 + 16))(v187, *(v176 + 6) + *(v188 + 72) * v135, v196);
            v140 = *(*(v136 + 7) + 8 * v135);
            v141 = *(v61 + 48);
            v142 = *(v137 + 32);
            v128 = v178;
            v142(v178, v138, v139);
            *(v128 + v141) = v140;
            v177(v128, 0, 1, v61);

            v129 = v183;
            v130 = v189;
LABEL_95:
            sub_1BB60DF90(v128, v129, &qword_1EBC5DD70, &qword_1BB6C6068);
            if (v130(v129, 1, v61) == 1)
            {

              v161 = v190;
              v162 = v190[3];
              MEMORY[0x1EEE9AC00](v160);
              v163 = v195;
              *(&v174 - 2) = v195;
              *(&v174 - 1) = v161;

              v165 = sub_1BB6403E8(sub_1BB671590, (&v174 - 4), v162, v164);

              v161[3] = v165;

              v167 = v161[4];
              MEMORY[0x1EEE9AC00](v166);
              *(&v174 - 2) = v163;
              *(&v174 - 1) = v161;

              v169 = sub_1BB6403E8(sub_1BB66F7E0, (&v174 - 4), v167, v168);

              v161[4] = v169;

              v171 = v161[5];
              MEMORY[0x1EEE9AC00](v170);
              *(&v174 - 2) = v163;
              *(&v174 - 1) = v161;

              v173 = sub_1BB6403E8(sub_1BB671590, (&v174 - 4), v171, v172);

              v161[5] = v173;

              sub_1BB66BB18(v163);
              return;
            }

            v143 = *(v129 + *(v61 + 48));
            v144 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
            *(v143 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
            if ((*(v190 + v193) & 1) == 0)
            {
              v145 = v182;
              v146 = v194;
              (*v181)(v182, v143 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v194);
              sub_1BB6BA744();
              v148 = v147;
              v149 = v145;
              v128 = v178;
              (*v180)(v149, v146);
              v150 = 1.79769313e308;
              if (v148 <= 1.79769313e308)
              {
                v150 = v148;
              }

              v151 = *(v143 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
              if (v148 < 0.0)
              {
                v152 = 0.0;
              }

              else
              {
                v152 = v150;
              }

              v153 = 1.0 - *(v143 + v144);
              v154 = v151[5] * v153;
              if (v154 <= 1.0)
              {
                v155 = v151[5] * v153;
              }

              else
              {
                v155 = 1.0;
              }

              if (v154 < 0.0)
              {
                v156 = 0.0;
              }

              else
              {
                v156 = v155;
              }

              v157 = v143 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
              v158 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
              v159 = *(v157 + v158) - v152 * v156;
              if (v151[9] > v159)
              {
                v159 = v151[9];
              }

              if (v151[10] < v159)
              {
                v159 = v151[10];
              }

              *(v157 + v158) = v159;
            }

            (*v192)(v143 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v195, v194);

            v129 = v183;
            (*v191)(v183, v196);
          }

          if (v126 <= v127 + 1)
          {
            v132 = v127 + 1;
          }

          else
          {
            v132 = v126;
          }

          v133 = v132 - 1;
          while (1)
          {
            v131 = v127 + 1;
            if (__OFADD__(v127, 1))
            {
              goto LABEL_117;
            }

            if (v131 >= v126)
            {
              v177(v128, 1, 1, v61);
              v125 = 0;
              v127 = v133;
              goto LABEL_95;
            }

            v125 = *&v179[8 * v131];
            ++v127;
            if (v125)
            {
              v127 = v131;
              goto LABEL_94;
            }
          }
        }

        v104 = *(v89 + *(v61 + 48));
        v105 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
        *(v104 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
        if ((*(v190 + v193) & 1) == 0)
        {
          v106 = v182;
          v107 = v194;
          (*v181)(v182, v104 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v194);
          sub_1BB6BA744();
          v109 = v108;
          v110 = v106;
          v89 = v179;
          (*v180)(v110, v107);
          v111 = 1.79769313e308;
          if (v109 <= 1.79769313e308)
          {
            v111 = v109;
          }

          v112 = *(v104 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
          if (v109 < 0.0)
          {
            v113 = 0.0;
          }

          else
          {
            v113 = v111;
          }

          v114 = 1.0 - *(v104 + v105);
          v115 = v112[5] * v114;
          if (v115 <= 1.0)
          {
            v116 = v112[5] * v114;
          }

          else
          {
            v116 = 1.0;
          }

          if (v115 < 0.0)
          {
            v117 = 0.0;
          }

          else
          {
            v117 = v116;
          }

          v118 = v104 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
          v119 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
          v120 = *(v118 + v119) - v113 * v117;
          if (v112[9] > v120)
          {
            v120 = v112[9];
          }

          if (v112[10] < v120)
          {
            v120 = v112[10];
          }

          *(v118 + v119) = v120;
        }

        (*v192)(v104 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v195, v194);

        (*v191)(v89, v196);
        v83 = v177;
      }

      if (v87 <= v88 + 1)
      {
        v91 = v88 + 1;
      }

      else
      {
        v91 = v87;
      }

      v92 = v91 - 1;
      while (1)
      {
        v90 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_116;
        }

        if (v90 >= v87)
        {
          v103 = *v184;
          v102 = v176;
          (*v184)(v176, 1, 1, v61);
          v86 = 0;
          v88 = v92;
          goto LABEL_61;
        }

        v86 = *(v83 + v90);
        ++v88;
        if (v86)
        {
          v88 = v90;
          goto LABEL_60;
        }
      }
    }

    v64 = *(v48 + *(v61 + 48));
    v65 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence;
    *(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = v25;
    v2 = v60;
    if ((*(v60 + v193) & 1) == 0)
    {
      v66 = v182;
      v67 = v194;
      (*v181)(v182, v64 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v194);
      sub_1BB6BA744();
      v69 = v68;
      v47 = v184;
      v70 = v67;
      v48 = v189;
      (*v180)(v66, v70);
      v71 = 1.79769313e308;
      if (v69 <= 1.79769313e308)
      {
        v71 = v69;
      }

      v72 = *(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration);
      if (v69 < 0.0)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = v71;
      }

      v74 = 1.0 - *(v64 + v65);
      v75 = v72[5] * v74;
      if (v75 <= 1.0)
      {
        v76 = v72[5] * v74;
      }

      else
      {
        v76 = 1.0;
      }

      if (v75 < 0.0)
      {
        v77 = 0.0;
      }

      else
      {
        v77 = v76;
      }

      v78 = v64 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
      v79 = *(type metadata accessor for DKIdentityFilter.IdentityProbability(0) + 24);
      v80 = *(v78 + v79) - v73 * v77;
      if (v72[9] > v80)
      {
        v80 = v72[9];
      }

      if (v72[10] < v80)
      {
        v80 = v72[10];
      }

      *(v78 + v79) = v80;
    }

    (*v192)(v64 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastPredictTime, v195, v194);

    (*v191)(v48, v196);
  }

  if (v45 <= v46 + 1)
  {
    v50 = v46 + 1;
  }

  else
  {
    v50 = v45;
  }

  v51 = v50 - 1;
  while (1)
  {
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v49 >= v45)
    {
      v60 = v2;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80, &qword_1BB6C60B8);
      v59 = v47;
      (*(*(v81 - 8) + 56))(v47, 1, 1, v81);
      v44 = 0;
      v46 = v51;
      goto LABEL_27;
    }

    v44 = *(v177 + v49);
    ++v46;
    if (v44)
    {
      v46 = v49;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

BOOL sub_1BB66A6F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22[0] = a1;
  v22[1] = a3;
  v5 = sub_1BB6BA7F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80, &qword_1BB6C60B8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *a2;
  v17 = sub_1BB6BA844();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, v22[0], v17);
  *&v15[*(v10 + 56)] = v16;
  sub_1BB5982A0(v15, v12, &qword_1EBC5DD80, &qword_1BB6C60B8);
  (*(v6 + 16))(v8, *&v12[*(v10 + 56)] + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastUpdateTime, v5);

  sub_1BB6BA744();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  sub_1BB598308(v15, &qword_1EBC5DD80, &qword_1BB6C60B8);
  (*(v18 + 8))(v12, v17);
  return v20 < *(*(v23 + 16) + 16);
}

uint64_t sub_1BB66A960()
{
  v1 = sub_1BB6BA7F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  if ((*(v5 + 200) & 1) == 0)
  {
    v17 = *(v5 + 192);
    v18 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
    v19 = type metadata accessor for DKIdentityFilter.IdentityState(0);
    (*(v2 + 16))(v4, v18 + *(v19 + 32), v1);
    sub_1BB6BA744();
    v21 = v20;
    (*(v2 + 8))(v4, v1);
    return v17 <= v21;
  }

  v6 = v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
  v23 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v7 = *(v23 + 32);
  v8 = *(v2 + 16);
  v8(v4, v6 + v7, v1);
  sub_1BB6BA744();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v4, v1);
  if (*(*(v0 + 16) + 144) <= v10)
  {
    return 1;
  }

  v8(v4, v6 + v7, v1);
  sub_1BB6BA744();
  v13 = v12;
  v11(v4, v1);
  v14 = *(v0 + 16);
  if (v13 < v14[17])
  {
    return 0;
  }

  v15 = *(v6 + *(v23 + 24));
  if (v14[9] >= v15)
  {
    if (v15 <= v14[8])
    {
      result = 1;
      *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 1;
    }

    else
    {
      return *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating);
    }
  }

  else
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating) = 0;
  }

  return result;
}

void sub_1BB66ABB8(uint64_t a1)
{
  v2 = sub_1BB6BA844();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v141 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v125 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v144 = (&v125 - v8);
  v142 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v9 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v127 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v125 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v125 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v125 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v133 = (&v125 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v125 - v21;
  v23 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v24 = *(a1 + v23[5]);
  v25 = *(v24 + 16);
  v26 = &OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_imageName;
  v145 = v2;
  v139 = v3;
  v140 = v17;
  v134 = v9;
  v138 = a1;
  v125 = v23;
  if (!v25)
  {
    v57 = *(a1 + v23[6]);
    v58 = *(v57 + 16);
    if (v58)
    {
      goto LABEL_28;
    }

    if (!*(*(a1 + v23[7]) + 16))
    {
      return;
    }

LABEL_52:
    v88 = *(v138 + v125[7]);
    v89 = *(v88 + 16);
    v90 = v132;
    if (!v89)
    {
LABEL_76:
      v120 = v146 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
      v121 = *(type metadata accessor for DKIdentityFilter.IdentityState(0) + 32);
      v122 = sub_1BB6BA7F4();
      v123 = &v120[v121];
      v124 = v138;
      (*(*(v122 - 8) + 24))(v123, v138, v122);
      sub_1BB66BB18(v124);
      return;
    }

    v91 = v88 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v143 = *(v9 + 72);
    v144 = (v139 + 16);
    v137 = (v9 + 56);
    v135 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
    v136 = (v139 + 8);
    v92 = v141;
    v93 = v142;
    while (1)
    {
      sub_1BB66EEF0(v91, v90, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v146[5] + 16) && (, sub_1BB6A1288(v90), v95 = v94, , (v95 & 1) != 0))
      {
        if (*(v146[5] + 16))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v140 = *v144;
        v140(v92, v90, v2);
        v96 = v90;
        v97 = v146;
        v98 = v127;
        sub_1BB66EEF0(v96, v127, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v99 = *(v97[2] + 128);
        type metadata accessor for DKIdentityEMAFilter(0);
        v100 = swift_allocObject();

        sub_1BB6BA724();
        sub_1BB6BA724();
        (*v137)(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v93);
        v101 = v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
        sub_1BB66EEF0(v98, v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
        *(v101 + *(v93 + 24)) = *(v99 + 88);
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v99;
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v99 + 48);
        if (*(v99 + 104))
        {
          v102 = 0.0;
        }

        else
        {
          v102 = *(v99 + 96);
        }

        type metadata accessor for SlidingWindowMaxIdentity();
        v103 = swift_allocObject();
        v104 = MEMORY[0x1E69E7CC0];
        *(v103 + 16) = MEMORY[0x1E69E7CC0];
        sub_1BB66EF58(v98, type metadata accessor for DKIdentityFilter.IdentityProbability);
        *(v103 + 24) = v104;
        *(v103 + 32) = v102;
        *(v100 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v103;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = v97[5];
        v106 = v147;
        v97[5] = 0x8000000000000000;
        v107 = sub_1BB6A1288(v92);
        v109 = v106[2];
        v110 = (v108 & 1) == 0;
        v54 = __OFADD__(v109, v110);
        v111 = v109 + v110;
        if (v54)
        {
          goto LABEL_80;
        }

        v112 = v108;
        if (v106[3] >= v111)
        {
          v90 = v132;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v119 = v107;
            sub_1BB5EA5C8();
            v107 = v119;
          }
        }

        else
        {
          sub_1BB5E7264(v111, isUniquelyReferenced_nonNull_native);
          v107 = sub_1BB6A1288(v141);
          v90 = v132;
          if ((v112 & 1) != (v113 & 1))
          {
            goto LABEL_84;
          }
        }

        v2 = v145;
        v114 = v147;
        if (v112)
        {
          *(v147[7] + 8 * v107) = v100;
        }

        else
        {
          v147[(v107 >> 6) + 8] |= 1 << v107;
          v115 = v107;
          v140(v114[6] + *(v139 + 72) * v107, v141, v2);
          *(v114[7] + 8 * v115) = v100;
          v116 = v114[2];
          v54 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v54)
          {
            goto LABEL_83;
          }

          v114[2] = v117;
        }

        (*v136)(v141, v2);
        v146[5] = v114;
        if (v114[2])
        {
LABEL_74:

          sub_1BB6A1288(v90);
          if (v118)
          {

            sub_1BB5DE1A4(v138, v90, *(v135 + v146));
          }

          else
          {
          }
        }
      }

      sub_1BB66EF58(v90, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v91 += v143;
      if (!--v89)
      {
        goto LABEL_76;
      }
    }
  }

  v126 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_isUpdating;
  v27 = v9;
  v28 = v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v136 = *(v27 + 72);
  v137 = (v3 + 16);
  v130 = (v27 + 56);
  v128 = (v3 + 8);
  v129 = v22;
  while (1)
  {
    sub_1BB66EEF0(v28, v22, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if (!*(v146[3] + 16))
    {
      break;
    }

    sub_1BB6A1288(v22);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      break;
    }

    if (*(v146[3] + 16))
    {
      goto LABEL_23;
    }

LABEL_4:
    sub_1BB66EF58(v22, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v28 += v136;
    if (!--v25)
    {
      v57 = *(v138 + v125[6]);
      v58 = *(v57 + 16);
      v9 = v134;
      if (v58)
      {
        v3 = v139;
        v26 = &OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_imageName;
LABEL_28:
        v130 = v26[167];
        v59 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v137 = *(v9 + 72);
        v144 = (v3 + 16);
        v135 = (v9 + 56);
        v133 = (v3 + 8);
        v60 = v143;
        while (1)
        {
          sub_1BB66EEF0(v59, v17, type metadata accessor for DKIdentityFilter.IdentityProbability);
          if (*(v146[4] + 16) && (, sub_1BB6A1288(v17), v62 = v61, , (v62 & 1) != 0))
          {
            if (*(v146[4] + 16))
            {
              goto LABEL_49;
            }
          }

          else
          {
            v136 = *v144;
            v136(v60, v17, v2);
            v63 = v17;
            v64 = v131;
            sub_1BB66EEF0(v63, v131, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v65 = v146;
            v66 = *(v146[2] + 120);
            type metadata accessor for DKIdentityEMAFilter(0);
            v67 = swift_allocObject();

            sub_1BB6BA724();
            sub_1BB6BA724();
            v68 = v142;
            (*v135)(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v142);
            v69 = v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
            sub_1BB66EEF0(v64, v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
            *(v69 + *(v68 + 24)) = *(v66 + 88);
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v66;
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v66 + 48);
            if (*(v66 + 104))
            {
              v70 = 0.0;
            }

            else
            {
              v70 = *(v66 + 96);
            }

            type metadata accessor for SlidingWindowMaxIdentity();
            v71 = swift_allocObject();
            v72 = MEMORY[0x1E69E7CC0];
            *(v71 + 16) = MEMORY[0x1E69E7CC0];
            sub_1BB66EF58(v64, type metadata accessor for DKIdentityFilter.IdentityProbability);
            *(v71 + 24) = v72;
            *(v71 + 32) = v70;
            *(v67 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v71;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            v147 = v65[4];
            v74 = v147;
            v65[4] = 0x8000000000000000;
            v75 = sub_1BB6A1288(v60);
            v77 = v74[2];
            v78 = (v76 & 1) == 0;
            v54 = __OFADD__(v77, v78);
            v79 = v77 + v78;
            if (v54)
            {
              goto LABEL_79;
            }

            v80 = v76;
            if (v74[3] >= v79)
            {
              v9 = v134;
              if ((v73 & 1) == 0)
              {
                v87 = v75;
                sub_1BB5EA5C8();
                v75 = v87;
              }
            }

            else
            {
              sub_1BB5E7264(v79, v73);
              v75 = sub_1BB6A1288(v143);
              v9 = v134;
              if ((v80 & 1) != (v81 & 1))
              {
                goto LABEL_84;
              }
            }

            v17 = v140;
            v82 = v147;
            if (v80)
            {
              *(v147[7] + 8 * v75) = v67;
            }

            else
            {
              v147[(v75 >> 6) + 8] |= 1 << v75;
              v83 = v75;
              v136(v82[6] + *(v139 + 72) * v75, v143, v145);
              *(v82[7] + 8 * v83) = v67;
              v84 = v82[2];
              v54 = __OFADD__(v84, 1);
              v85 = v84 + 1;
              if (v54)
              {
                goto LABEL_82;
              }

              v82[2] = v85;
            }

            v2 = v145;
            (*v133)(v143, v145);
            v146[4] = v82;
            if (v82[2])
            {
LABEL_49:

              sub_1BB6A1288(v17);
              if (v86)
              {

                sub_1BB5DE1A4(v138, v17, *(v130 + v146));
              }

              else
              {
              }
            }
          }

          sub_1BB66EF58(v17, type metadata accessor for DKIdentityFilter.IdentityProbability);
          v59 += v137;
          if (!--v58)
          {
            goto LABEL_52;
          }
        }
      }

      goto LABEL_52;
    }
  }

  v31 = v144;
  v135 = *v137;
  (v135)(v144, v22, v2);
  v32 = v22;
  v33 = v133;
  sub_1BB66EEF0(v32, v133, type metadata accessor for DKIdentityFilter.IdentityProbability);
  v34 = v146;
  v35 = *(v146[2] + 112);
  type metadata accessor for DKIdentityEMAFilter(0);
  v36 = swift_allocObject();

  sub_1BB6BA724();
  sub_1BB6BA724();
  v37 = v142;
  (*v130)(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_lastValue, 1, 1, v142);
  v38 = v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state;
  sub_1BB66EEF0(v33, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v38 + *(v37 + 24)) = *(v35 + 88);
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_configuration) = v35;
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_trackerConfidence) = *(v35 + 48);
  if (*(v35 + 104))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *(v35 + 96);
  }

  type metadata accessor for SlidingWindowMaxIdentity();
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E7CC0];
  *(v40 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BB66EF58(v33, type metadata accessor for DKIdentityFilter.IdentityProbability);
  *(v40 + 24) = v41;
  *(v40 + 32) = v39;
  *(v36 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_measurementHistory) = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v34[3];
  v43 = v147;
  v34[3] = 0x8000000000000000;
  v45 = sub_1BB6A1288(v31);
  v46 = v43[2];
  v47 = (v44 & 1) == 0;
  v48 = v46 + v47;
  if (!__OFADD__(v46, v47))
  {
    v49 = v44;
    if (v43[3] >= v48)
    {
      if ((v42 & 1) == 0)
      {
        sub_1BB5EA5C8();
      }
    }

    else
    {
      sub_1BB5E7264(v48, v42);
      v50 = sub_1BB6A1288(v144);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_84;
      }

      v45 = v50;
    }

    v2 = v145;
    v52 = v147;
    if (v49)
    {
      *(v147[7] + 8 * v45) = v36;
    }

    else
    {
      v147[(v45 >> 6) + 8] |= 1 << v45;
      (v135)(v52[6] + *(v139 + 72) * v45, v144, v2);
      *(v52[7] + 8 * v45) = v36;
      v53 = v52[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_81;
      }

      v52[2] = v55;
    }

    (*v128)(v144, v2);
    v146[3] = v52;
    v17 = v140;
    v22 = v129;
    if (!v52[2])
    {
      goto LABEL_4;
    }

LABEL_23:

    sub_1BB6A1288(v22);
    if (v56)
    {

      sub_1BB5DE1A4(v138, v22, *(v146 + v126));
    }

    else
    {
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  sub_1BB6BB874();
  __break(1u);
}