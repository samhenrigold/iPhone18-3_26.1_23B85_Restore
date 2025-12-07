id sub_100014E88(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 isPrimary];
  if (v4 != [v3 isPrimary])
  {
    return [v2 isPrimary];
  }

  v6 = [v2 name];
  v7 = sub_100067BC8();
  v9 = v8;

  v10 = [v3 name];
  v11 = sub_100067BC8();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {

    return 0;
  }

  else
  {
    v15 = sub_100068168();

    return (v15 & 1);
  }
}

BOOL sub_100014FA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager);
  if ([v1 hasOptedToHH2])
  {
    return 0;
  }

  v3 = [v1 homes];
  sub_100009700(0, &qword_100080CB0, HMHome_ptr);
  sub_100067CA8();

  v12 = sub_10004F530(v4);
  sub_100015344(&v12);

  v5 = v12;
  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
LABEL_19:
    v6 = sub_1000680C8();
  }

  else
  {
    v6 = *(v12 + 16);
  }

  v7 = 0;
  do
  {
    v2 = v6 != v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_100068058();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v8 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion];

    ++v7;
  }

  while (!v10);

  return v2;
}

id LockScreenDataModel.init()()
{
  v1 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager;
  sub_100009700(0, &qword_100080C00, HMMutableHomeManagerConfiguration_ptr);
  v2 = [swift_getObjCClassFromMetadata() defaultPrivateConfiguration];
  [v2 setDiscretionary:0];
  [v2 setAdaptive:1];
  v3 = [objc_allocWithZone(HMHomeManager) initWithConfiguration:v2];

  *&v0[v1] = v3;
  *&v0[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome] = 0;
  *&v0[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_defaultsHomeSensingChangedNotifyToken] = 0;
  *&v0[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_defaultsSelectedHomeChangedNotifyToken] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LockScreenDataModel();
  return objc_msgSendSuper2(&v5, "init");
}

id LockScreenDataModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenDataModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015344(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10004F744(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000153C0(v6);
  return sub_100068098();
}

void sub_1000153C0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100068138(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100009700(0, &qword_100080CB0, HMHome_ptr);
        v6 = sub_100067CD8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000156A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1000154D4(0, v2, 1, a1);
  }
}

void sub_1000154D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &LockScreenDataModel;
    v30 = *a4;
LABEL_6:
    v28 = v5;
    v29 = a3;
    v8 = *(v4 + 8 * a3);
    v27 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[16].base_prots];
      if (v12 == [v11 v7[16].base_prots])
      {
        v14 = [v10 name];
        v15 = sub_100067BC8();
        v17 = v16;

        v18 = [v11 name];
        v19 = sub_100067BC8();
        v21 = v20;

        if (v15 == v19 && v17 == v21)
        {

          v4 = v30;
          v7 = &LockScreenDataModel;
LABEL_5:
          a3 = v29 + 1;
          v5 = v28 + 8;
          v6 = v27 - 1;
          if (v29 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v23 = sub_100068168();

        v4 = v30;
        v7 = &LockScreenDataModel;
        if ((v23 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = [v10 v7[16].base_prots];

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v24 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v24;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1000156A0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = &LockScreenDataModel;
    while (1)
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        break;
      }

LABEL_32:
      v35 = a3[1];
      v7 = v11;
      if (v11 >= v35)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_143;
      }

      if (v11 - v10 >= a4)
      {
LABEL_40:
        v7 = v11;
LABEL_41:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v36 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_145;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v11 == v36)
      {
        goto LABEL_40;
      }

      v110 = v8;
      v5 = *a3;
      v4 = *a3 + 8 * v11 - 8;
      v107 = v10;
      v83 = v10 - v11;
      v112 = v36;
      v120 = *a3;
      while (2)
      {
        v114 = v4;
        v116 = v11;
        v84 = *(v5 + 8 * v11);
        v113 = v83;
        while (1)
        {
          v85 = *v4;
          v86 = v84;
          v87 = v85;
          LODWORD(v85) = [v86 v9[16].base_prots];
          if (v85 != [v87 v9[16].base_prots])
          {
            v88 = [v86 v9[16].base_prots];

            if ((v88 & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_103;
          }

          v89 = [v86 name];
          v90 = sub_100067BC8();
          v92 = v91;

          v93 = [v87 name];
          v94 = sub_100067BC8();
          v96 = v95;

          if (v90 == v94 && v92 == v96)
          {
            break;
          }

          v98 = sub_100068168();

          v9 = &LockScreenDataModel;
          v5 = v120;
          if ((v98 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_103:
          if (!v5)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v99 = *v4;
          v84 = *(v4 + 8);
          *v4 = v84;
          *(v4 + 8) = v99;
          v4 -= 8;
          if (__CFADD__(v83++, 1))
          {
            goto LABEL_93;
          }
        }

        v9 = &LockScreenDataModel;
        v5 = v120;
LABEL_93:
        v11 = v116 + 1;
        v4 = v114 + 8;
        v83 = v113 - 1;
        if (v116 + 1 != v112)
        {
          continue;
        }

        break;
      }

      v7 = v112;
      v8 = v110;
      v10 = v107;
      if (v112 < v107)
      {
        goto LABEL_142;
      }

LABEL_42:
      v37 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v37;
      }

      else
      {
        v8 = sub_10004E5D0(0, *(v37 + 16) + 1, 1, v37);
      }

      v4 = *(v8 + 2);
      v38 = *(v8 + 3);
      v39 = v4 + 1;
      if (v4 >= v38 >> 1)
      {
        v8 = sub_10004E5D0((v38 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = &v8[2 * v4];
      *(v40 + 4) = v10;
      *(v40 + 5) = v7;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_152;
      }

      if (v4)
      {
        while (2)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            v47 = &v8[2 * v39 + 4];
            v48 = *(v47 - 64);
            v49 = *(v47 - 56);
            v53 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            if (v53)
            {
              goto LABEL_129;
            }

            v52 = *(v47 - 48);
            v51 = *(v47 - 40);
            v53 = __OFSUB__(v51, v52);
            v45 = v51 - v52;
            v46 = v53;
            if (v53)
            {
              goto LABEL_130;
            }

            v54 = &v8[2 * v39];
            v56 = *v54;
            v55 = *(v54 + 1);
            v53 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v53)
            {
              goto LABEL_132;
            }

            v53 = __OFADD__(v45, v57);
            v58 = v45 + v57;
            if (v53)
            {
              goto LABEL_135;
            }

            if (v58 >= v50)
            {
              v76 = &v8[2 * v42 + 4];
              v78 = *v76;
              v77 = *(v76 + 1);
              v53 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v53)
              {
                goto LABEL_139;
              }

              if (v45 < v79)
              {
                v42 = v39 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v46)
              {
                goto LABEL_131;
              }

              v59 = &v8[2 * v39];
              v61 = *v59;
              v60 = *(v59 + 1);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              v64 = v62;
              if (v62)
              {
                goto LABEL_134;
              }

              v65 = &v8[2 * v42 + 4];
              v67 = *v65;
              v66 = *(v65 + 1);
              v53 = __OFSUB__(v66, v67);
              v68 = v66 - v67;
              if (v53)
              {
                goto LABEL_137;
              }

              if (__OFADD__(v63, v68))
              {
                goto LABEL_138;
              }

              if (v63 + v68 < v45)
              {
                goto LABEL_75;
              }

              if (v45 < v68)
              {
                v42 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v43 = *(v8 + 4);
              v44 = *(v8 + 5);
              v53 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              v46 = v53;
              goto LABEL_61;
            }

            v69 = &v8[2 * v39];
            v71 = *v69;
            v70 = *(v69 + 1);
            v53 = __OFSUB__(v70, v71);
            v63 = v70 - v71;
            v64 = v53;
LABEL_75:
            if (v64)
            {
              goto LABEL_133;
            }

            v72 = &v8[2 * v42];
            v74 = *(v72 + 4);
            v73 = *(v72 + 5);
            v53 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v53)
            {
              goto LABEL_136;
            }

            if (v75 < v63)
            {
              break;
            }
          }

          v4 = v42 - 1;
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_149;
          }

          v5 = v8;
          v80 = v8[2 * v4 + 4];
          v81 = v8[2 * v42 + 5];
          sub_100015F1C((*a3 + 8 * *&v80), (*a3 + 8 * *&v8[2 * v42 + 4]), (*a3 + 8 * *&v81), v41);
          if (v118)
          {
            goto LABEL_123;
          }

          if (*&v81 < *&v80)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10004F51C(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_128;
          }

          v82 = v5 + 16 * v4;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v123 = v5;
          sub_10004F490(v42);
          v8 = v123;
          v39 = *(v123 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v109 = v8;
    v4 = *a3;
    v122 = *(*a3 + 8 * v11);
    v121 = *(v4 + 8 * v7);
    v12 = v121;
    v13 = v122;
    v14 = v12;
    v119 = sub_100014E88(&v122, &v121);
    if (v118)
    {

      return;
    }

    v5 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      v8 = v109;
      if ((v119 & 1) == 0)
      {
LABEL_31:
        v11 = v5;
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v10;
      v4 += 8 * v10 + 16;
      v115 = v6;
      do
      {
        v16 = *(v4 - 8);
        v17 = *v4;
        v18 = v16;
        v19 = [v17 v9[16].base_prots];
        if (v19 == [v18 v9[16].base_prots])
        {
          v20 = [v17 name];
          v21 = sub_100067BC8();
          v23 = v22;

          v24 = [v18 name];
          v25 = sub_100067BC8();
          v27 = v26;

          if (v21 == v25 && v23 == v27)
          {

            v9 = &LockScreenDataModel;
            v6 = v115;
            if (v119)
            {
              v8 = v109;
              v10 = v106;
              goto LABEL_23;
            }
          }

          else
          {
            v29 = sub_100068168();

            v9 = &LockScreenDataModel;
            v6 = v115;
            if ((v119 ^ v29))
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v15 = [v17 v9[16].base_prots];

          if ((v119 ^ v15))
          {
            goto LABEL_22;
          }
        }

        v4 += 8;
        ++v5;
      }

      while (v6 != v5);
      v5 = v6;
LABEL_22:
      v8 = v109;
      v10 = v106;
      if ((v119 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v5 < v10)
    {
      goto LABEL_144;
    }

    if (v10 < v5)
    {
      v30 = 8 * v5 - 8;
      v31 = 8 * v10;
      v11 = v5;
      v32 = v10;
      while (1)
      {
        if (v32 != --v5)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v33 = *(v34 + v31);
          *(v34 + v31) = *(v34 + v30);
          *(v34 + v30) = v33;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
        if (v32 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_31;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_153;
  }

  v4 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v101 = v4;
  }

  else
  {
LABEL_147:
    v101 = sub_10004F51C(v4);
  }

  v123 = v101;
  v4 = *(v101 + 2);
  if (v4 < 2)
  {
LABEL_123:

    return;
  }

  while (*a3)
  {
    v102 = v101[2 * v4];
    v103 = v101;
    v104 = v101[2 * v4 + 3];
    sub_100015F1C((*a3 + 8 * *&v102), (*a3 + 8 * *&v101[2 * v4 + 2]), (*a3 + 8 * *&v104), v5);
    if (v118)
    {
      goto LABEL_123;
    }

    if (*&v104 < *&v102)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_10004F51C(v103);
    }

    if (v4 - 2 >= *(v103 + 2))
    {
      goto LABEL_141;
    }

    v105 = &v103[2 * v4];
    *v105 = v102;
    v105[1] = v104;
    v123 = v103;
    sub_10004F490(v4 - 1);
    v101 = v123;
    v4 = *(v123 + 16);
    if (v4 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_100015F1C(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v33 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v33;
    }

    v32 = a2;
    v14 = &v4[v11];
    if (v9 >= 8 && a2 > __src)
    {
      v34 = &LockScreenDataModel;
      v53 = v4;
LABEL_35:
      v35 = v32 - 1;
      --v5;
      v36 = v14;
      v54 = v32 - 1;
      __dsta = v32;
      do
      {
        v37 = *--v36;
        v38 = *v35;
        v39 = v37;
        v40 = v38;
        LODWORD(v38) = [v39 v34[16].base_prots];
        if (v38 == [v40 v34[16].base_prots])
        {
          v60 = v14;
          v42 = [v39 name];
          v43 = sub_100067BC8();
          v45 = v44;

          v46 = [v40 name];
          v47 = sub_100067BC8();
          v49 = v48;

          if (v43 == v47 && v45 == v49)
          {

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &LockScreenDataModel;
          }

          else
          {
            v51 = sub_100068168();

            v4 = v53;
            v35 = v54;
            v14 = v60;
            v34 = &LockScreenDataModel;
            if (v51)
            {
LABEL_49:
              if (v5 + 1 != __dsta)
              {
                *v5 = *v35;
              }

              if (v14 <= v4 || (v32 = v35, v35 <= __src))
              {
                v32 = v35;
                goto LABEL_55;
              }

              goto LABEL_35;
            }
          }
        }

        else
        {
          v41 = [v39 v34[16].base_prots];

          if (v41)
          {
            goto LABEL_49;
          }
        }

        if (v5 + 1 != v14)
        {
          *v5 = *v36;
        }

        --v5;
        v14 = v36;
      }

      while (v36 > v4);
      v14 = v36;
      v32 = __dsta;
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v14 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v15 = &LockScreenDataModel;
      v59 = v14;
      do
      {
        v16 = *v4;
        v17 = *v12;
        v18 = v16;
        LODWORD(v16) = [v17 v15[16].base_prots];
        if (v16 == [v18 v15[16].base_prots])
        {
          __dst = v12;
          v57 = v13;
          v20 = v4;
          v21 = [v17 name];
          v22 = sub_100067BC8();
          v24 = v23;

          v25 = [v18 name];
          v26 = sub_100067BC8();
          v28 = v27;

          v29 = v22 == v26 && v24 == v28;
          if (v29)
          {

            v4 = v20;
            v12 = __dst;
            v13 = v57;
            v14 = v59;
            v15 = &LockScreenDataModel;
LABEL_24:
            v31 = v4;
            v29 = v13 == v4++;
            if (v29)
            {
              goto LABEL_26;
            }

LABEL_25:
            *v13 = *v31;
            goto LABEL_26;
          }

          v30 = sub_100068168();

          v4 = v20;
          v12 = __dst;
          v13 = v57;
          v14 = v59;
          v15 = &LockScreenDataModel;
          if ((v30 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v19 = [v17 v15[16].base_prots];

          if ((v19 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v31 = v12;
        v29 = v13 == v12++;
        if (!v29)
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v13;
      }

      while (v4 < v14 && v12 < v5);
    }

    v32 = v13;
  }

LABEL_55:
  if (v32 != v4 || v32 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, v4, 8 * (v14 - v4));
  }

  return 1;
}

void sub_1000163A0(char a1)
{
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v2 = sub_100067318();
  sub_1000026A8(v2, qword_100085CA0);
  oslog = sub_1000672F8();
  v3 = sub_100067E08();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    *(v4 + 4) = byte_100085C78;
    *(v4 + 8) = 1024;
    *(v4 + 10) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "homeHasUpdatedOnce was %{BOOL}d is now %{BOOL}d", v4, 0xEu);
  }
}

void (**sub_1000164B8(uint64_t a1, uint64_t a2, void *a3))(char *, uint64_t)
{
  v24 = a1;
  v23 = sub_100066F88();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a3 accessories];
  sub_100009700(0, &qword_100080A10, HMAccessory_ptr);
  v9 = sub_100067CA8();

  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000680C8())
  {
    v11 = 0;
    v21 = v9 & 0xFFFFFFFFFFFFFF8;
    v22 = v9 & 0xC000000000000001;
    v12 = v5 + 1;
    while (1)
    {
      if (v22)
      {
        v13 = sub_100068058();
      }

      else
      {
        if (v11 >= *(v21 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v5 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v13 uniqueIdentifier];
      sub_100066F78();

      v16 = sub_100066F58();
      v18 = v17;
      (*v12)(v7, v23);
      if (a2)
      {
        if (v16 == v24 && v18 == a2)
        {

          return v5;
        }

        v19 = sub_100068168();

        if (v19)
        {

          return v5;
        }
      }

      else
      {
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  return 0;
}

void _s20HomeWidgetLockScreen0cD9DataModelC25homeManagerDidUpdateHomesyySo06HMHomeH0CF_0(void *a1)
{
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v2 = sub_100067318();
  sub_1000026A8(v2, qword_100085CA0);
  v3 = a1;
  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_21;
  }

  v6 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  *v6 = 136315906;
  v7 = [v3 currentHome];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 name];

    v10 = sub_100067BC8();
    v12 = v11;
  }

  else
  {
    v12 = 0xE400000000000000;
    v10 = 1701736302;
  }

  v13 = sub_10000D4F0(v10, v12, &v36);

  *(v6 + 4) = v13;
  *(v6 + 12) = 2080;
  v14 = [v3 homes];
  sub_100009700(0, &qword_100080CB0, HMHome_ptr);
  v15 = sub_100067CA8();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_19:

LABEL_20:
    v27 = sub_100067CB8();
    v29 = v28;

    v30 = sub_10000D4F0(v27, v29, &v36);

    *(v6 + 14) = v30;
    *(v6 + 22) = 2112;
    v31 = objc_opt_self();
    v32 = [v31 mainThread];
    *(v6 + 24) = v32;
    *v35 = v32;
    *(v6 + 32) = 2112;
    v33 = [v31 currentThread];
    *(v6 + 34) = v33;
    v35[1] = v33;
    sub_1000024F4(&qword_100080CA0, &qword_100069100);
    swift_arrayDestroy();

    swift_arrayDestroy();

LABEL_21:

    sub_1000163A0(1);
    byte_100085C78 = 1;
    return;
  }

  v16 = sub_1000680C8();
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_9:
  sub_10000DAD8(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v34 = v6;
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = sub_100068058();
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 name];
      v21 = sub_100067BC8();
      v23 = v22;

      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (*&v25 >= *&v24 >> 1)
      {
        sub_10000DAD8((*&v24 > 1uLL), *&v25 + 1, 1);
      }

      ++v17;
      *&_swiftEmptyArrayStorage[2] = *&v25 + 1;
      v26 = &_swiftEmptyArrayStorage[2 * *&v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
    }

    while (v16 != v17);

    v6 = v34;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_100016B6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t BlockOutError.description.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000002BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000026;
  }

  return 0xD00000000000001CLL;
}

Swift::Int BlockOutError.hashValue.getter(unsigned __int8 a1)
{
  sub_100068208();
  sub_100068218(a1);
  return sub_100068238();
}

Swift::Int sub_100016CFC()
{
  v1 = *v0;
  sub_100068208();
  sub_100068218(v1);
  return sub_100068238();
}

Swift::Int sub_100016D70(uint64_t a1)
{
  v2 = *v1;
  sub_100068208();
  sub_100068218(v2);
  return sub_100068238();
}

unint64_t sub_100016DB8()
{
  result = qword_100080D20;
  if (!qword_100080D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080D20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlockOutError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockOutError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

int *sub_100016F90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100066FB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v4 = sub_100014FA4();
  if (v4)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4)
  {
    v6 = "door.garage.closed";
  }

  else
  {
    v6 = "light.beacon.max.fill";
  }

  v7 = v6 | 0x8000000000000000;
  sub_100066F28();
  sub_100067B38();
  sub_100066FA8();
  v8 = sub_100067BE8();
  v10 = v9;
  sub_100067A58();
  v12 = v11;
  v14 = v13;
  result = type metadata accessor for SecurityAccessoryEntry(0);
  v16 = a1 + result[5];
  *v16 = v8;
  *(v16 + 8) = v10;
  *(v16 + 16) = v5;
  *(v16 + 24) = v7;
  *(v16 + 32) = 0x9380E29380E2;
  *(v16 + 40) = 0xA600000000000000;
  *(v16 + 48) = 0;
  v17 = (a1 + result[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a1 + result[7]);
  *v18 = v12;
  v18[1] = v14;
  return result;
}

uint64_t sub_100017194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_100066F38();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for SecurityIntentAccessoryAppEntity(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0, &qword_100069E30);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100017314, 0, 0);
}

void sub_100017314()
{
  v74 = v0;
  if (qword_100080788 != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = sub_100067318();
  v0[18] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = v0[12];
    v72 = v0[11];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10000D4F0(v7, v6, &v73);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10000D4F0(0xD00000000000001ELL, 0x800000010006C9D0, &v73);
    *(v8 + 22) = 2080;
    sub_100066CB8();
    v9 = (*(v5 + 48))(v4, 1, v72);
    v10 = v0[17];
    if (v9)
    {
      v11 = 1819047278;
      sub_1000181B8(v10);
      v12 = 0xE400000000000000;
    }

    else
    {
      v13 = v0[13];
      v14 = v0[17];
      sub_10001826C(v10, v13);
      sub_1000181B8(v14);
      v11 = sub_100066F58();
      v12 = v15;
      sub_1000182D0(v13);
    }

    v16 = sub_10000D4F0(v11, v12, &v73);

    *(v8 + 24) = v16;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v17 = v0[16];
  v18 = v0[11];
  v19 = v0[12];
  v20 = qword_100085C80;
  v0[19] = qword_100085C80;
  sub_100066CB8();
  v21 = *(v19 + 48);
  v0[20] = v21;
  v0[21] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v70 = v21;
  v22 = v21(v17, 1, v18);
  v23 = v0[16];
  if (v22)
  {
    sub_1000181B8(v23);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = v0[13];
    v27 = v0[16];
    sub_10001826C(v23, v26);
    sub_1000181B8(v27);
    v24 = sub_100066F58();
    v25 = v28;
    sub_1000182D0(v26);
  }

  v29 = [*&v20[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager] homes];
  sub_100018220();
  v30 = sub_100067CA8();

  if (v30 >> 62)
  {
    v31 = sub_1000680C8();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v30 & 0xC000000000000001;
  v71 = v20;

  v33 = 0;
  while (v31 != v33)
  {
    if (v32)
    {
      v34 = sub_100068058();
    }

    else
    {
      if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = *(v30 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = sub_1000164B8(v24, v25, v34);

    if (v36)
    {
      v31 = v33;
      break;
    }

    if (__OFADD__(v33++, 1))
    {
      goto LABEL_46;
    }
  }

  if (v30 >> 62)
  {
    if (v31 != sub_1000680C8())
    {
LABEL_27:
      if (v32)
      {
        v38 = sub_100068058();
      }

      else
      {
        if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v38 = *(v30 + 32 + 8 * v31);
      }

      v39 = v38;
      v40 = sub_1000164B8(v24, v25, v38);
      v0[22] = v40;

      swift_bridgeObjectRelease_n();
      if (v40)
      {

        v41 = v40;
        v42 = sub_1000672F8();
        v43 = sub_100067E08();

        if (os_log_type_enabled(v42, v43))
        {
          v45 = v0[5];
          v44 = v0[6];
          v46 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_10000D4F0(v45, v44, &v73);
          *(v46 + 12) = 2080;
          v47 = [v41 name];
          v48 = sub_100067BC8();
          v50 = v49;

          v51 = sub_10000D4F0(v48, v50, &v73);

          *(v46 + 14) = v51;
          swift_arrayDestroy();
        }

        v52 = v41;
        v53 = swift_task_alloc();
        v0[23] = v53;
        *v53 = v0;
        v53[1] = sub_100017C00;

        sub_10005E554(v40);
        return;
      }

LABEL_51:
      __break(1u);
      return;
    }
  }

  else if (v31 != *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  swift_bridgeObjectRelease_n();

  v54 = sub_1000672F8();
  v55 = sub_100067E08();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v0[14];
    v57 = v0[11];
    v59 = v0[5];
    v58 = v0[6];
    v60 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_10000D4F0(v59, v58, &v73);
    *(v60 + 12) = 2080;
    sub_100066CB8();
    v61 = v70(v56, 1, v57);
    v62 = v0[14];
    if (v61)
    {
      v63 = 1819047278;
      sub_1000181B8(v62);
      v64 = 0xE400000000000000;
    }

    else
    {
      v65 = v0[13];
      v66 = v0[14];
      sub_10001826C(v62, v65);
      sub_1000181B8(v66);
      v63 = sub_100066F58();
      v64 = v67;
      sub_1000182D0(v65);
    }

    v68 = sub_10000D4F0(v63, v64, &v73);

    *(v60 + 14) = v68;
    swift_arrayDestroy();
  }

  sub_100016F90(v0[2]);

  v69 = v0[1];

  v69();
}

uint64_t sub_100017C00(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;

  return _swift_task_switch(sub_100017D20, 0, 0);
}

uint64_t sub_100017D20()
{
  v61 = v0;
  v1 = 0xD000000000000010;

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 192);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v8 = 136315906;
    *(v8 + 4) = sub_10000D4F0(v7, v6, &v60);
    *(v8 + 12) = 2048;
    if (v4)
    {
      v9 = -1;
    }

    else
    {
      v9 = v5;
    }

    *(v8 + 14) = v9;
    *(v8 + 22) = 2080;
    v10 = sub_10005E9D8(v5, v4 & 1);
    v12 = sub_10000D4F0(v10, v11, &v60);

    *(v8 + 24) = v12;
    *(v8 + 32) = 2080;
    if ((v4 & 1) == 0)
    {
      v13 = "light.beacon.max.fill";
      v15 = *(v0 + 192);
      if (v15 <= 1)
      {
        v14 = 0xD000000000000010;
        if (!v15)
        {
          goto LABEL_13;
        }

        if (v15 == 1)
        {
          v13 = ".trianglebadge.exclamationmark";
          v14 = 0xD000000000000012;
          goto LABEL_13;
        }
      }

      else
      {
        v14 = 0xD000000000000010;
        if ((v15 - 2) < 2)
        {
          goto LABEL_13;
        }
      }
    }

    v13 = "geDoorSecurityDataFetcher";
    v14 = 0xD00000000000002ELL;
LABEL_13:
    v16 = sub_10000D4F0(v14, v13 | 0x8000000000000000, &v60);

    *(v8 + 34) = v16;
    swift_arrayDestroy();
  }

  v17 = sub_100014FA4();
  v18 = *(v0 + 200);
  if (v17)
  {
    v19 = "door.garage.closed";
    v1 = 0xD000000000000020;
    goto LABEL_24;
  }

  if (*(v0 + 200))
  {
    goto LABEL_17;
  }

  v19 = "light.beacon.max.fill";
  v20 = *(v0 + 192);
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 != 1)
      {
LABEL_17:
        v19 = "geDoorSecurityDataFetcher";
        v1 = 0xD00000000000002ELL;
        goto LABEL_24;
      }

      v19 = ".trianglebadge.exclamationmark";
      v1 = 0xD000000000000012;
    }
  }

  else if ((v20 - 2) >= 2)
  {
    goto LABEL_17;
  }

LABEL_24:
  v58 = v19;
  v59 = v1;
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 120);
  v25 = *(v0 + 88);
  sub_100066F28();
  v26 = [v22 name];
  v27 = sub_100067BC8();
  v56 = v28;
  v57 = v27;

  v29 = sub_10005E9D8(v21, v18 & 1);
  v54 = v30;
  v55 = v29;
  sub_100066CB8();
  v31 = v23(v24, 1, v25);
  v32 = *(v0 + 120);
  if (v31)
  {
    sub_1000181B8(v32);
    v53 = 0;
    v33 = 0;
  }

  else
  {
    v34 = *(v0 + 104);
    v35 = *(v0 + 120);
    sub_10001826C(v32, v34);
    sub_1000181B8(v35);
    v53 = sub_100066F58();
    v33 = v36;
    sub_1000182D0(v34);
  }

  v37 = (v21 == 1) & ~v18;
  v38 = *(v0 + 176);
  v40 = *(v0 + 72);
  v39 = *(v0 + 80);
  v41 = *(v0 + 64);
  v42 = *(v0 + 16);
  sub_100067A58();
  v44 = v43;
  v46 = v45;

  (*(v40 + 32))(v42, v39, v41);
  v47 = type metadata accessor for SecurityAccessoryEntry(0);
  v48 = v42 + v47[5];
  *v48 = v57;
  *(v48 + 8) = v56;
  *(v48 + 16) = v59;
  *(v48 + 24) = v58 | 0x8000000000000000;
  *(v48 + 32) = v55;
  *(v48 + 40) = v54;
  *(v48 + 48) = v37;
  v49 = (v42 + v47[6]);
  *v49 = v53;
  v49[1] = v33;
  v50 = (v42 + v47[7]);
  *v50 = v44;
  v50[1] = v46;

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1000181B8(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100080DC0, &qword_100069E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100018220()
{
  result = qword_100080CB0;
  if (!qword_100080CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080CB0);
  }

  return result;
}

uint64_t sub_10001826C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecurityIntentAccessoryAppEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000182D0(uint64_t a1)
{
  v2 = type metadata accessor for SecurityIntentAccessoryAppEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_100066F38();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000183F4, 0, 0);
}

uint64_t sub_1000183F4()
{
  v53 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100067318();
  v0[12] = sub_1000026A8(v2, qword_100085CA0);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v52);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD00000000000002DLL, 0x800000010006CA40, &v52);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_10000D4F0(v11, v13, &v52);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (v0[4])
  {
    v15 = v3;
    v16.super.isa = [v15 currentUser];
    isa = v16.super.isa;
    v18 = sub_100067E68(v16);

    if (v18)
    {
      v19 = v15;
      v20 = sub_1000672F8();
      v21 = sub_100067E08();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = v0[10];
        v22 = v0[11];
        v51 = v0[9];
        v24 = v0[4];
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v25 = 136315650;
        *(v25 + 4) = sub_10000D4F0(0xD00000000000002DLL, 0x800000010006CA40, &v52);
        *(v25 + 12) = 2112;
        *(v25 + 14) = v19;
        *v50 = v24;
        *(v25 + 22) = 2080;
        v26 = v19;
        sub_100066F18();
        sub_100019BE0();
        v27 = sub_100068148();
        v29 = v28;
        (*(v23 + 8))(v22, v51);
        v30 = sub_10000D4F0(v27, v29, &v52);

        *(v25 + 24) = v30;
        _os_log_impl(&_mh_execute_header, v20, v21, "{%s} Displaying No Access for RG in home %@ because %s is outside of allowed schedule.", v25, 0x20u);
        sub_1000096A0(v50, &qword_100080CA0, &qword_100069100);

        swift_arrayDestroy();
      }

      if (qword_100080888 != -1)
      {
        swift_once();
      }

      v31 = &qword_100086010;
LABEL_21:
      v43 = *v31;

      v44 = v0[1];

      return v44(v43);
    }

    v32 = v15;
    v33 = [v32 currentUser];
    v34 = HMHome.shouldShowNoAccessAwayFromHome(forRestrictedUser:)(v33);

    if (v34)
    {
      v35 = v32;
      v36 = sub_1000672F8();
      v37 = sub_100067E08();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v0[4];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v52 = v41;
        *v39 = 136315394;
        *(v39 + 4) = sub_10000D4F0(0xD00000000000002DLL, 0x800000010006CA40, &v52);
        *(v39 + 12) = 2112;
        *(v39 + 14) = v35;
        *v40 = v38;
        v42 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "{%s} Displaying No Access Away from Home for RG in home %@.", v39, 0x16u);
        sub_1000096A0(v40, &qword_100080CA0, &qword_100069100);

        sub_1000026F0(v41);
      }

      if (qword_100080890 != -1)
      {
        swift_once();
      }

      v31 = &qword_100086018;
      goto LABEL_21;
    }
  }

  v46 = swift_task_alloc();
  v0[13] = v46;
  *v46 = v0;
  v46[1] = sub_100018A94;
  v47 = v0[5];
  v48 = v0[6];
  v49 = v0[4];

  return sub_100005B54(v49, v47, v48, 3);
}

uint64_t sub_100018A94(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v10 = *v1;
  v3[14] = a1;

  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v10;
  v4[1] = sub_100018C20;
  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[8];

  return sub_1000191B0(v8, v7, v6, v5);
}

uint64_t sub_100018C20(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v9 = *v1;
  v3[16] = a1;

  v4 = swift_task_alloc();
  v3[17] = v4;
  *v4 = v9;
  v4[1] = sub_100018DB0;
  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];

  return sub_100056EF0(v7, v6, v5, 3);
}

uint64_t sub_100018DB0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_100018EB0, 0, 0);
}

void sub_100018EB0()
{
  v42 = v0;
  v1 = v0[7];
  v2 = *(v0[16] + 16);
  v3 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = sub_100056BB0(v3 / 2, v0[3]);
  v39 = v7;
  v8 = (v6 >> 1) - v5;
  if (__OFSUB__(v6 >> 1, v5))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v4;
  if (__OFSUB__(v3, v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v5;
  v11 = v6;
  v12 = sub_100056BB0(v3 - v8, v0[14]);
  v14 = v13;
  v37 = v16;
  v38 = v15;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v17 = sub_1000672F8();
  v18 = sub_100067E08();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v36 = v14;
  if (os_log_type_enabled(v17, v18))
  {
    v35 = v2;
    buf = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    v41[1] = v12;
    *buf = 136315138;
    v41[2] = v14;
    v41[3] = v38;
    v41[4] = v37;
    swift_unknownObjectRetain();

    v32 = v18;
    sub_100019994(v19);
    v20 = swift_unknownObjectRetain();
    sub_100019708(v20, v39, v10, v11);
    v21 = sub_100067EE8();
    v23 = v22;
    swift_unknownObjectRelease();
    v24 = v21;
    v2 = v35;
    v25 = sub_10000D4F0(v24, v23, v41);

    *(buf + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v32, "homeOverview got rows: %s", buf, 0xCu);
    sub_1000026F0(v34);
  }

  v26 = (v37 >> 1) - v38;
  if (__OFSUB__(v37 >> 1, v38))
  {
    goto LABEL_14;
  }

  v27 = __OFADD__(v2, v26);
  v28 = v2 + v26;
  if (v27)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v29 = v0[16];
  v40 = sub_10004E6D4(0, v28 & ~(v28 >> 63), 0, _swiftEmptyArrayStorage);
  v30 = swift_unknownObjectRetain();
  sub_10003F79C(v30, v36, v38, v37);
  sub_10003F4CC(v29);
  sub_10003F79C(v9, v39, v10, v11);
  swift_unknownObjectRelease();

  v31 = v0[1];

  v31(v40);
}

uint64_t sub_1000191B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100066FB8();
  v4[7] = swift_task_alloc();
  sub_100067B88();
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_1000192C4;

  return sub_10002847C((v4 + 2), a2, a3, a4);
}

uint64_t sub_1000192C4()
{

  return _swift_task_switch(sub_1000193C0, 0, 0);
}

uint64_t sub_1000193C0()
{
  v1 = v0[6];
  if (v1)
  {
    if (v0[4] >= 1)
    {
      v2 = v0[5];
      sub_1000024F4(&qword_1000809F0, &qword_100068F30);
      v3 = swift_allocObject();
      *(v3 + 1) = xmmword_100068BF0;
      sub_100067B38();
      sub_100066FA8();
      v4 = sub_100067BE8();
      strcpy(v3 + 32, "lightbulb.fill");
      *(v3 + 47) = -18;
      *(v3 + 6) = v4;
      *(v3 + 7) = v5;
      *(v3 + 8) = v2;
      *(v3 + 9) = v1;
      *(v3 + 80) = 0;
      goto LABEL_6;
    }

    sub_1000096A0((v0 + 2), &qword_100080DD8, &unk_100069320);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_6:

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_10001957C(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_100068178();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(v9 + 2);
  if ((v8 + 56 * v6 + 56 * v7) != &v9[7 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 3);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10004F278(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 56 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100019708(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_37;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_100068178();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = *(v13 + 2);
  if ((v12 + 56 * v8 + 56 * v9) != &v13[7 * v14 + 4])
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 3);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:
  v19 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v15 < v19)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v20 = 2 * v15;
    if (v20 > v19)
    {
      v19 = v20;
    }
  }

  sub_10001957C(v19);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_39;
  }

  v24 = v4[1] + 56 * v22 + 56 * v23;
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v27 = v23;
    goto LABEL_23;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = _swiftEmptyArrayStorage;
  }

  v26 = *(v25 + 2);
  if (v24 != &v25[7 * v26 + 4])
  {

    goto LABEL_21;
  }

  v28 = *(v25 + 3);

  v29 = (v28 >> 1) - v26;
  v18 = __OFADD__(v23, v29);
  v27 = v23 + v29;
  if (v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_23:
  v30 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  if (v30 < v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    if (__OFADD__(v23, v6))
    {
LABEL_46:
      __break(1u);
      return;
    }

    sub_100019F20((v23 + v6));
  }

LABEL_31:
  if (v6 == v30)
  {
    *&v33[0] = result;
    *&v33[1] = a2;
    *&v33[2] = a3;
    *&v33[3] = a4;
    *&v33[4] = v5;
    sub_100019FD8(v33);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100019994(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_100068178();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = *(v8 + 2);
  if ((v7 + 56 * v3 + 56 * v4) != &v8[7 * v9 + 4])
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 3);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  v14 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < v14)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = 2 * v10;
    if (v15 > v14)
    {
      v14 = v15;
    }
  }

  sub_10001957C(v14);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_39;
  }

  v19 = v1[1] + 56 * v17 + 56 * v18;
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v22 = v18;
    goto LABEL_22;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = *(v20 + 2);
  if (v19 != &v20[7 * v21 + 4])
  {

    goto LABEL_20;
  }

  v23 = *(v20 + 3);

  v24 = (v23 >> 1) - v21;
  v13 = __OFADD__(v18, v24);
  v22 = v18 + v24;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return;
  }

LABEL_22:
  v25 = v22 - v18;
  if (__OFSUB__(v22, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = *(result + 16);
  if (v26)
  {
    if (v25 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      if (!__OFADD__(v18, v6))
      {
        sub_100019F20((v18 + v6));
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v25)
  {

    sub_10001A46C(result, v26);
  }

  else
  {
  }
}

unint64_t sub_100019BE0()
{
  result = qword_100080DC8;
  if (!qword_100080DC8)
  {
    sub_100066F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080DC8);
  }

  return result;
}

uint64_t *sub_100019C38(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = v15;
  v16 = (v9 + 32);
  v17 = 56 * a2;
  v18 = v9 + 32 + 56 * a2;
  __dst = (v18 + 56 * a3);
  result = sub_10001AA78(v7);
  v35 = v9 + 32;
  if (result)
  {
    v19 = result;
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 56 * v20);
    v22 = &v21[v17];
    swift_arrayDestroy();
    if (v16 != v21 || v16 >= v22)
    {
      memmove(v16, v21, v17);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[56 * v32];
    if (__dst != v23 || __dst >= &v23[56 * v13])
    {
      memmove(__dst, v23, 56 * v13);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v25 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v20)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v20))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();
    result = a4(v35 + 56 * a2, a3);
    v26 = v25 + v32;
    if (__OFADD__(v25, v32))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_36;
  }

  v28 = *(v9 + 16);
  v11 = __OFADD__(v20, v28);
  v29 = v20 + v28;
  if (v11)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v29 < v20)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v29 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v9;
  v4[1] = v35 - 56 * v20;
  v4[2] = v20;
  v4[3] = (2 * v29) | 1;
}

double *sub_100019F20(double *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = *(result + 2);
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 2) = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void sub_100019FD8(double *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_50;
  }

  v5 = *(result + 4);
  v6 = *(result + 3) >> 1;
  if (v5 != v6)
  {
    v40 = *(result + 2);
    if (v5 < v40 || v5 >= v6)
    {
      goto LABEL_51;
    }

    v38 = *(v1 + 16);
    v39 = *(v1 + 24);
    v41 = *(result + 3) >> 1;
    v36 = v1;
    v33 = *(result + 1);
    v13 = v33 + 56 * v5;
    v14 = *(v13 + 48);
    v8 = *(v13 + 32);
    v7 = *(v13 + 40);
    v10 = *(v13 + 16);
    v9 = *(v13 + 24);
    v11 = *v13;
    v15 = *(v13 + 8);

    if (!v15)
    {
      goto LABEL_39;
    }

    v48 = v5 + 1;
    while (!__OFADD__(v4, 1))
    {
      v49 = sub_10001A890(v4, v4 + 1, *v36, v36[1], v38, v39);
      v16 = sub_10001AA5C();
      sub_100019C38(&v49, v4, 0, v16);

      v17 = v36[2];
      v18 = v36[3];
      v35 = v18 >> 1;
      v37 = (v18 >> 1) - v17;
      if (__OFSUB__(v18 >> 1, v17))
      {
        goto LABEL_44;
      }

      v43 = v36[1];
      v38 = v36[2];
      v39 = v36[3];
      if (v18)
      {
        v45 = v17 << 6;
        sub_100068178();
        swift_unknownObjectRetain();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = _swiftEmptyArrayStorage;
        }

        v20 = *(v19 + 2);
        v34 = v45 - 8 * v38;
        if ((v43 + v34 + 56 * v37) == &v19[7 * v20 + 4])
        {
          v47 = *(v19 + 3);

          v21 = (v47 >> 1) - v20;
          v46 = v37 + v21;
          if (__OFADD__(v37, v21))
          {
            goto LABEL_49;
          }
        }

        else
        {

          v46 = v37;
        }
      }

      else
      {
        v34 = 56 * v17;
        v46 = (v18 >> 1) - v17;
      }

      if (v4 < v46)
      {
        v22 = 0;
        v23 = v48;
        v24 = v4 + 1;
        v42 = v33 + 56 * v48;
        v44 = v43 + v34 + 56 * v4;
        while (1)
        {
          v4 = v24;

          sub_10001A41C(v11, v15, v10, v9, v8, v7);
          v25 = v44 + v22;
          *v25 = v11;
          *(v25 + 8) = v15;
          *(v25 + 16) = v10;
          *(v25 + 24) = v9;
          *(v25 + 32) = v8;
          *(v25 + 40) = v7;
          *(v25 + 48) = v14 & 1;
          if (v41 == v23)
          {
            v14 = 0;
            v7 = 0;
            v8 = 0;
            v9 = 0;
            v10 = 0;
            v15 = 0;
            v11 = 0;
            v23 = v41;
            goto LABEL_31;
          }

          if (v48 < v40 || v23 >= v41)
          {
            break;
          }

          ++v23;
          v14 = *(v42 + v22 + 48);
          v8 = *(v42 + v22 + 32);
          v7 = *(v42 + v22 + 40);
          v10 = *(v42 + v22 + 16);
          v9 = *(v42 + v22 + 24);
          v11 = *(v42 + v22);
          v15 = *(v42 + v22 + 8);

          if (v15)
          {
            v22 += 56;
            v24 = v4 + 1;
            if (v4 < v46)
            {
              continue;
            }
          }

          goto LABEL_31;
        }

        __break(1u);
        break;
      }

      v23 = v48;
LABEL_31:
      v26 = v4 - v37;
      if (__OFSUB__(v4, v37))
      {
        goto LABEL_45;
      }

      if (v26)
      {
        sub_100068178();
        swift_unknownObjectRetain();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = _swiftEmptyArrayStorage;
        }

        v28 = *(v27 + 2);
        v29 = __OFADD__(v28, v26);
        v30 = v28 + v26;
        if (v29)
        {
          goto LABEL_46;
        }

        *(v27 + 2) = v30;

        v31 = v35 + v26;
        if (__OFADD__(v35, v26))
        {
          goto LABEL_47;
        }

        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        v39 = v39 & 1 | (2 * v31);
        v36[3] = v39;
      }

      v48 = v23;
      if (!v15)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_39:
  sub_1000096A0(result, &qword_100080DD0, &qword_100069318);

  sub_10001A41C(v11, 0, v10, v9, v8, v7);
}

void sub_10001A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_10001A46C(uint64_t a1, unint64_t a2)
{
  v32 = v2[2];
  v33 = v2[3];
  v3 = (v33 >> 1) - v32;
  if (__OFSUB__(v33 >> 1, v32))
  {
    goto LABEL_47;
  }

  v5 = *(a1 + 16);
  v36 = v5;
  if (v5 != a2)
  {
    if (v5 <= a2)
    {
LABEL_48:
      __break(1u);
      return;
    }

    v11 = a1 + 56 * a2;
    v12 = *(v11 + 80);
    v7 = *(v11 + 64);
    v6 = *(v11 + 72);
    v9 = *(v11 + 48);
    v8 = *(v11 + 56);
    v10 = *(v11 + 32);
    v13 = *(v11 + 40);

    if (!v13)
    {
      goto LABEL_36;
    }

    v42 = a2 + 1;
    v34 = v2;
    while (!__OFADD__(v3, 1))
    {
      v43 = sub_10001A890(v3, v3 + 1, *v2, v2[1], v32, v33);
      v14 = sub_10001AA5C();
      sub_100019C38(&v43, v3, 0, v14);

      v15 = v34[3];
      v32 = v34[2];
      v30 = v15 >> 1;
      if (__OFSUB__(v15 >> 1, v32))
      {
        goto LABEL_42;
      }

      v37 = v34[1];
      v33 = v34[3];
      v31 = (v15 >> 1) - v32;
      if (v15)
      {
        sub_100068178();
        swift_unknownObjectRetain();
        v16 = swift_dynamicCastClass();
        if (!v16)
        {
          swift_unknownObjectRelease();
          v16 = _swiftEmptyArrayStorage;
        }

        v17 = *(v16 + 2);
        v29 = 56 * v32;
        if ((v37 + 56 * v32 + 56 * v31) == &v16[7 * v17 + 4])
        {
          v41 = *(v16 + 3);

          v18 = (v41 >> 1) - v17;
          v40 = v31 + v18;
          if (__OFADD__(v31, v18))
          {
            goto LABEL_46;
          }
        }

        else
        {

          v40 = v31;
        }
      }

      else
      {
        v29 = 56 * v32;
        v40 = (v15 >> 1) - v32;
      }

      if (v3 < v40)
      {
        v19 = 0;
        v20 = v42;
        v35 = a1 + 56 * v42;
        v21 = v3 + 1;
        v38 = v37 + v29 + 56 * v3;
        while (1)
        {
          v3 = v21;

          sub_10001A41C(v10, v13, v9, v8, v7, v6);
          v22 = v38 + v19;
          *v22 = v10;
          *(v22 + 8) = v13;
          *(v22 + 16) = v9;
          *(v22 + 24) = v8;
          *(v22 + 32) = v7;
          *(v22 + 40) = v6;
          *(v22 + 48) = v12 & 1;
          if (v36 == v20)
          {
            v12 = 0;
            v6 = 0;
            v7 = 0;
            v8 = 0;
            v9 = 0;
            v13 = 0;
            v10 = 0;
            v20 = v36;
            goto LABEL_28;
          }

          if ((v42 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v20 >= *(a1 + 16))
          {
            goto LABEL_40;
          }

          ++v20;
          v12 = *(v35 + v19 + 80);
          v7 = *(v35 + v19 + 64);
          v6 = *(v35 + v19 + 72);
          v9 = *(v35 + v19 + 48);
          v8 = *(v35 + v19 + 56);
          v10 = *(v35 + v19 + 32);
          v13 = *(v35 + v19 + 40);

          if (v13)
          {
            v19 += 56;
            v21 = v3 + 1;
            if (v3 < v40)
            {
              continue;
            }
          }

          goto LABEL_28;
        }

        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      v20 = v42;
LABEL_28:
      v23 = v3 - v31;
      if (__OFSUB__(v3, v31))
      {
        goto LABEL_43;
      }

      if (v23)
      {
        sub_100068178();
        swift_unknownObjectRetain();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = _swiftEmptyArrayStorage;
        }

        v25 = *(v24 + 2);
        v26 = __OFADD__(v25, v23);
        v27 = v25 + v23;
        if (v26)
        {
          goto LABEL_44;
        }

        *(v24 + 2) = v27;

        v28 = v30 + v23;
        if (__OFADD__(v30, v23))
        {
          goto LABEL_45;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v33 = v33 & 1 | (2 * v28);
        v34[3] = v33;
      }

      v42 = v20;
      v2 = v34;
      if (!v13)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
LABEL_36:

  sub_10001A41C(v10, 0, v9, v8, v7, v6);
}

double *sub_10001A890(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = *(v11 + 2);
  v13 = a4 + 56 * a5 + 56 * v8;
  if (v13 == &v11[7 * v12 + 4])
  {
    v15 = *(v11 + 3);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = *(v17 + 2);
    if (v13 == &v17[7 * v18 + 4])
    {
      v20 = *(v17 + 3);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = *(v17 + 2);
  if (v13 == &v17[7 * v19 + 4])
  {
    v23 = *(v17 + 3);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10004F278(v6, v25);
}

double *sub_10001AA78(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = *(v9 + 2);
  if ((v8 + 56 * v6 + 56 * v7) != &v9[7 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 3);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_100068178();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = (v8 + 56 * v6 - result - 32) / 56;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 2);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_10001ABFC(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t sub_10001ABFC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  v15 = v13 + 56 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t DefaultWidgetConfiguration<A, B, C>(kind:intent:provider:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return sub_10001AD50(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &IntentConfiguration.init<A>(kind:intent:provider:content:));
}

{
  return sub_10001AD50(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &AppIntentConfiguration.init<A>(kind:intent:provider:content:));
}

uint64_t sub_10001AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = a5;
  v26 = a8;
  v24 = a12;
  __chkstk_darwin(a1);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v21);

  return v24(a1, a2, a3, v18, v25, a6, v26, a9, a7, a11, a10);
}

uint64_t sub_10001AE90(void *a1)
{
  sub_1000679F8();

  return swift_getWitnessTable();
}

uint64_t sub_10001AEDC(uint64_t a1)
{
  swift_getAssociatedConformanceWitness();
  sub_100067A48();
  return swift_getWitnessTable();
}

int *sub_10001AF8C@<X0>(uint64_t a1@<X8>)
{
  if (__OFADD__(qword_100085C98, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085C98;
    strcpy(v20, "Home Summary ");
    HIWORD(v20[1]) = -4864;
    v21._countAndFlagsBits = sub_100068148();
    sub_100067C48(v21);

    v2 = v20[0];
    v1 = v20[1];
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_100067318();
  sub_1000026A8(v4, qword_100085CA0);

  v5 = sub_1000672F8();
  v6 = sub_100067E08();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_10000D4F0(v2, v1, v20);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, v20);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100066F28();
  if (qword_100080780 != -1)
  {
    swift_once();
  }

  v10 = qword_100085C88;
  v9 = unk_100085C90;
  v11 = qword_100080880;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_100086008;

  sub_100067A58();
  v14 = v13;
  v16 = v15;
  result = type metadata accessor for ThreeColumnDataEntry(0);
  v18 = (a1 + result[5]);
  *v18 = v10;
  v18[1] = v9;
  *(a1 + result[6]) = v12;
  v19 = (a1 + result[7]);
  *v19 = v14;
  v19[1] = v16;
  *(a1 + result[8]) = 3;
  return result;
}

uint64_t sub_10001B278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = qword_100085C98 + 1;
  if (__OFADD__(qword_100085C98, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v9;
    v29 = a1;
    v9 = v7;
    v30 = a2;
    ++qword_100085C98;
    strcpy(v33, "Home Summary ");
    HIWORD(v33[1]) = -4864;
    v32 = v14;
    v34._countAndFlagsBits = sub_100068148();
    sub_100067C48(v34);

    v7 = v33[0];
    v3 = v33[1];
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = a3;
  v15 = sub_100067318();
  sub_1000026A8(v15, qword_100085CA0);

  v16 = sub_1000672F8();
  v17 = sub_100067E08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v7, v3, v33);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C410, v33);
    swift_arrayDestroy();
  }

  v19 = v29;
  v20 = sub_100067D28();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  (*(v8 + 16))(v10, v19, v9);
  v21 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v22 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v31;
  *(v23 + 4) = v30;
  *(v23 + 5) = v24;
  (*(v8 + 32))(&v23[v21], v10, v9);
  v25 = &v23[v22];
  *v25 = v7;
  v25[1] = v3;

  sub_100024F48(0, 0, v13, &unk_100069538, v23);
}

uint64_t sub_10001B650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for ThreeColumnDataEntry(0);
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_100002F64;

  return sub_10001B738(v12, a6, a7, a8);
}

uint64_t sub_10001B738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_100066F38();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_100066FB8();
  v4[14] = swift_task_alloc();
  sub_100067B88();
  v4[15] = swift_task_alloc();
  v6 = sub_1000679B8();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_10001B8BC, 0, 0);
}

uint64_t sub_10001B8BC()
{
  v29 = v0;
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v1 = qword_100085C80;
  v0[20] = qword_100085C80;
  v2 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[21] = v3;
  v4 = qword_100080788;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100067318();
  v0[22] = sub_1000026A8(v6, qword_100085CA0);
  v7 = v5;

  v8 = sub_1000672F8();
  v9 = sub_100067E08();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10000D4F0(v11, v10, &v28);
    *(v12 + 12) = 2080;
    if (v3)
    {
      v13 = [v7 name];
      v14 = sub_100067BC8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000D4F0(v14, v16, &v28);

    *(v12 + 14) = v17;
    swift_arrayDestroy();
  }

  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[16];
  v21 = v0[17];
  sub_100067A68();
  (*(v21 + 104))(v19, enum case for WidgetFamily.systemSmall(_:), v20);
  sub_10001DDB4(&qword_1000809E8, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100067C78();
  sub_100067C78();
  v22 = *(v21 + 8);
  v22(v19, v20);
  v22(v18, v20);
  if (v0[5] == v0[6])
  {
    v23 = 5;
  }

  else
  {
    v23 = 3;
  }

  v24 = swift_task_alloc();
  v0[23] = v24;
  *v24 = v0;
  v24[1] = sub_10001BC60;
  v25 = v0[9];
  v26 = v0[10];

  return sub_10001832C(v3, v25, v26, v23);
}

uint64_t sub_10001BC60(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10001BD60, 0, 0);
}

uint64_t sub_10001BD60()
{
  v42 = v0;

  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000D4F0(v4, v3, &v41);
    *(v5 + 12) = 2080;
    v6 = sub_100067CB8();
    v8 = sub_10000D4F0(v6, v7, &v41);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} homeOverviewSummaryRows are %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100080780 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 168);
  v10 = qword_100085C88;
  v11 = unk_100085C90;
  if (v9)
  {
    v12 = v9;

    v13.super.isa = [v12 currentUser];
    isa = v13.super.isa;
    LOBYTE(v12) = sub_100067E68(v13);

    if ((v12 & 1) != 0 || (v15 = [*(v0 + 168) currentUser], v16 = HMHome.shouldShowNoAccessAwayFromHome(forRestrictedUser:)(v15), v15, v16))
    {
      v17 = *(v0 + 168);

      sub_100067B38();
      sub_100066FA8();
      v10 = sub_100067BE8();
      v11 = v18;
    }

    else
    {
    }
  }

  else
  {
  }

  v39 = v10;
  v40 = v11;
  v19 = *(v0 + 192);
  v20 = sub_100014FA4();
  sub_100066F28();
  v21 = *(v0 + 192);
  if (!*(v19 + 16))
  {

    sub_1000024F4(&qword_1000809F0, &qword_100068F30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100068BF0;
    sub_100067B38();
    sub_100066FA8();
    v22 = sub_100067BE8();
    *(v21 + 32) = 0xD000000000000018;
    *(v21 + 40) = 0x800000010006C3B0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0xE000000000000000;
    *(v21 + 64) = v22;
    *(v21 + 72) = v23;
    *(v21 + 80) = 0;
  }

  v24 = *(v0 + 168);
  v26 = *(v0 + 96);
  v25 = *(v0 + 104);
  v27 = *(v0 + 88);
  if (v20)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  v29 = *(v0 + 56);
  sub_100067A58();
  v31 = v30;
  v33 = v32;

  (*(v26 + 32))(v29, v25, v27);
  v34 = type metadata accessor for ThreeColumnDataEntry(0);
  v35 = (v29 + v34[5]);
  *v35 = v39;
  v35[1] = v40;
  *(v29 + v34[6]) = v21;
  v36 = (v29 + v34[7]);
  *v36 = v31;
  v36[1] = v33;
  *(v29 + v34[8]) = v28;

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10001C1F8(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = qword_100085C98 + 1;
  if (__OFADD__(qword_100085C98, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = v9;
    v36 = v13;
    v37 = a1;
    ++qword_100085C98;
    strcpy(v40, "Home Summary ");
    HIWORD(v40[1]) = -4864;
    v39 = v14;
    v41._countAndFlagsBits = sub_100068148();
    sub_100067C48(v41);

    v3 = v40[1];
    v38 = v40[0];
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = sub_100067318();
  sub_1000026A8(v15, qword_100085CA0);

  v16 = sub_1000672F8();
  v17 = sub_100067E08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v10;
    v40[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v38, v3, v40);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C390, v40);
    swift_arrayDestroy();
    v10 = v34;
  }

  v20 = v37;
  if ((sub_100067A78() & 1) == 0)
  {

    v21 = sub_1000672F8();
    v22 = sub_100067E08();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = a3;
      v40[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_10000D4F0(v38, v3, v40);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_10000D4F0(0xD000000000000026, 0x800000010006CAD0, v40);
      _os_log_impl(&_mh_execute_header, v21, v22, "...{%s} is preview, notifying homed that '%s' is active", v23, 0x16u);
      swift_arrayDestroy();
      a3 = v34;
    }

    v25 = [objc_opt_self() defaultCenter];
    v26 = sub_100067BA8();
    [v25 postNotificationName:v26 object:0];

    v20 = v37;
  }

  v27 = sub_100067D28();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  (*(v8 + 16))(v10, v20, v7);
  v29 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = a2;
  *(v31 + 5) = a3;
  (*(v8 + 32))(&v31[v29], v10, v7);
  v32 = &v31[v30];
  *v32 = v38;
  *(v32 + 1) = v3;

  sub_100024F48(0, 0, v28, &unk_100069508, v31);
}

uint64_t sub_10001C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100066F38();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_100067A28();
  v8[11] = swift_task_alloc();
  v10 = sub_1000024F4(&qword_1000809D8, &unk_100069510);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_10001C8EC, 0, 0);
}

uint64_t sub_10001C8EC()
{
  sub_1000024F4(&qword_1000809E0, &qword_100068F20);
  v1 = type metadata accessor for ThreeColumnDataEntry(0);
  v0[15] = v1;
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = xmmword_100068BF0;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10001CA1C;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_10001B738(v3 + v2, v7, v5, v6);
}

uint64_t sub_10001CA1C()
{

  return _swift_task_switch(sub_10001CB18, 0, 0);
}

uint64_t sub_10001CB18(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v12 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  v11 = v1[2];
  sub_100066F28();
  sub_100066F08();
  v8 = *(v7 + 8);
  v8(v4, v6);
  sub_100067A18();
  v8(v5, v6);
  sub_10001DDB4(&qword_1000809A8, type metadata accessor for ThreeColumnDataEntry, &unk_10006BFB8);
  sub_100067AE8();
  v11(v2);
  (*(v3 + 8))(v2, v12);

  v9 = v1[1];

  return v9();
}

uint64_t sub_10001CCA8()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_100085C88 = result;
  unk_100085C90 = v3;
  return result;
}

uint64_t sub_10001CDC4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ThreeColumnCategoryView(0);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000024F4(&qword_1000809B0, &unk_1000694B0);
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v20 - v5;
  v7 = sub_1000024F4(&qword_1000809B8, &qword_100068EC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for ThreeColumnDataEntry(0) + 32);
  v21 = v1;
  if (*(v1 + v13) <= 2u)
  {
    sub_100066ED8();

    v15 = sub_100066EE8();
    v14 = *(v15 - 8);
    if ((*(v14 + 48))(v10, 1, v15) != 1)
    {
      (*(v14 + 32))(v12, v10, v15);
      (*(v14 + 56))(v12, 0, 1, v15);
      goto LABEL_7;
    }
  }

  else
  {
    v15 = sub_100066EE8();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_100066ED8();
  sub_100066EE8();
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) != 1)
  {
    sub_1000055A0(v10);
  }

LABEL_7:
  sub_100005250(v21, v4);
  v16 = *(v2 + 20);
  *&v4[v16] = swift_getKeyPath();
  sub_1000024F4(&qword_1000809C0, &unk_1000694F0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_10001DDB4(&qword_1000809C8, type metadata accessor for ThreeColumnCategoryView, &unk_10006BA28);
  sub_1000677C8();
  sub_100005984(v4, type metadata accessor for ThreeColumnCategoryView);
  v24 = v2;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_100067858();
  (*(v20 + 8))(v6, v18);
  return sub_1000055A0(v12);
}

uint64_t sub_10001D220@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000024F4(&qword_100080DE0, &qword_1000693A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_1000024F4(&qword_100080DE8, &qword_1000693B0);
  v24[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000024F4(&qword_100080DF0, &qword_1000693B8);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for HomeSummaryWidgetView(0);
  sub_10001DDB4(&qword_100080DF8, type metadata accessor for HomeSummaryWidgetView, &unk_100069460);
  sub_10001D7E4();
  sub_100067A08();
  if (qword_100080780 != -1)
  {
    swift_once();
  }

  v28 = qword_100085C88;
  v29 = unk_100085C90;
  v14 = sub_10001D838();
  v15 = sub_1000025E8();
  sub_100067628();
  (*(v5 + 8))(v7, v4);
  sub_100067B38();
  sub_100066FA8();
  v32 = sub_100067BE8();
  v33 = v16;
  v28 = v4;
  v29 = &type metadata for String;
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v24[0] + 8))(v10, v8);
  sub_1000024F4(&qword_100080910, &unk_100068DB0);
  v18 = sub_1000679B8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100068BF0;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v28 = v8;
  v29 = &type metadata for String;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_100067618();

  return (*(v25 + 8))(v13, v22);
}

uint64_t type metadata accessor for HomeSummaryWidgetView(uint64_t a1)
{
  result = qword_100080E68;
  if (!qword_100080E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001D7E4()
{
  result = qword_100080E00;
  if (!qword_100080E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080E00);
  }

  return result;
}

unint64_t sub_10001D838()
{
  result = qword_100080E08;
  if (!qword_100080E08)
  {
    sub_10000253C(&qword_100080DE0, &qword_1000693A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080E08);
  }

  return result;
}

uint64_t sub_10001D8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001D940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThreeColumnDataEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001D9B0()
{
  sub_10000253C(&qword_100080DF0, &qword_1000693B8);
  sub_10000253C(&qword_100080DE8, &qword_1000693B0);
  sub_10000253C(&qword_100080DE0, &qword_1000693A8);
  sub_10001D838();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001DB24(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100004474;

  return sub_10001C784(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10001DC6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005B50;

  return sub_10001B650(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10001DDB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10001DE2C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001DF3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100067318();
  sub_10001DE2C(v5, a2);
  sub_1000026A8(v5, a2);
  return sub_100067308();
}

uint64_t HMService.serviceKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000024F4(&qword_100080B68, &qword_10006B8B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = [v2 serviceType];
  sub_100067BC8();

  sub_100067C18();

  v8 = sub_1000670C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  (*(v9 + 104))(a1, enum case for ServiceKind.null(_:), v8);
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000096A0(v6, &qword_100080B68, &qword_10006B8B0);
  }

  return result;
}

uint64_t HMService.associatedServiceKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 associatedServiceType];
  if (v3)
  {
    v4 = v3;
    sub_100067BC8();

    sub_100067C18();
  }

  else
  {
    v6 = sub_1000670C8();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

unint64_t sub_10001E24C()
{
  result = qword_100080B50;
  if (!qword_100080B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100080B50);
  }

  return result;
}

void *sub_10001E2B0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000680C8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100068058();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t HMService.allRelevantCharacteristicKinds.getter()
{
  v1 = v0;
  v2 = sub_1000024F4(&qword_100080B68, &qword_10006B8B0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_1000670C8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = [v1 serviceType];
  sub_100067BC8();

  sub_100067C18();

  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    (*(v8 + 104))(v13, enum case for ServiceKind.null(_:), v7);
    if (v15(v6, 1, v7) != 1)
    {
      sub_1000096A0(v6, &qword_100080B68, &qword_10006B8B0);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  v21 = sub_100067098();
  v16 = *(v8 + 8);
  v16(v13, v7);
  v17 = [v1 serviceType];
  sub_100067BC8();

  v18 = v22;
  sub_100067C18();

  if (v15(v18, 1, v7) == 1)
  {
    (*(v8 + 104))(v11, enum case for ServiceKind.null(_:), v7);
    if (v15(v18, 1, v7) != 1)
    {
      sub_1000096A0(v18, &qword_100080B68, &qword_10006B8B0);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
  }

  v19 = sub_100067088();
  v16(v11, v7);
  return sub_10001E740(v19, v21);
}

uint64_t sub_10001E740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100067228();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_10000EB44(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E95C()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100067E28();
  sub_100020534();
  sub_100067C78();
  sub_100067C78();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_100068168();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

void *sub_10001EAD4(uint64_t a1, uint64_t (*a2)(id *))
{
  v5 = [v2 characteristics];
  sub_10001E24C();
  v6 = sub_100067CA8();

  v9[2] = a1;
  v7 = sub_10001E2B0(a2, v9, v6);

  return v7;
}

uint64_t HMService.fetchedValue(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10001EB8C, 0, 0);
}

uint64_t sub_10001EB8C()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 32) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 40) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_10001ED00;
    v7 = *(v0 + 16);

    return HMCharacteristic.fetchedValue()(v7);
  }

  else
  {
    v8 = *(v0 + 16);
    *v8 = 0u;
    v8[1] = 0u;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10001ED00()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double HMService.cachedValue(for:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = [v2 characteristics];
  sub_10001E24C();
  v6 = sub_100067CA8();

  v10[2] = a1;
  v7 = sub_10001E2B0(sub_1000205A8, v10, v6);

  if (v7)
  {
    if ([v7 value])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    result = *&v11;
    v9 = v12;
    *a2 = v11;
    a2[1] = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t HMService.BOOL(for:)(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10001EF28, 0, 0);
}

uint64_t sub_10001EF28()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 64) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_10001F0B4;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v7 = *(v0 + 8);

    return v7(2);
  }
}

uint64_t sub_10001F0B4()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10001F1C8, 0, 0);
}

uint64_t sub_10001F1C8()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 80);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t HMService.cachedBool(for:)(uint64_t a1)
{
  v3 = [v1 characteristics];
  sub_10001E24C();
  v4 = sub_100067CA8();

  v7[2] = a1;
  v5 = sub_10001E2B0(sub_1000205A8, v7, v4);

  if (!v5)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_10:
    sub_1000096A0(&v10, &qword_100080A28, &qword_100068F60);
    return 2;
  }

  if ([v5 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 2;
  }
}

uint64_t HMService.int(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10001F3F0, 0, 0);
}

uint64_t sub_10001F3F0()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 64) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 72) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_10001F580;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v7 = *(v0 + 8);

    return v7(0, 1);
  }
}

uint64_t sub_10001F580()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10001F694, 0, 0);
}

uint64_t sub_10001F694()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1000096A0((v0 + 2), &qword_100080A28, &qword_100068F60);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMService.cachedInt(for:)(uint64_t a1)
{
  v3 = [v1 characteristics];
  sub_10001E24C();
  v4 = sub_100067CA8();

  v7[2] = a1;
  v5 = sub_10001E2B0(sub_1000205A8, v7, v4);

  if (!v5)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_1000096A0(&v10, &qword_100080A28, &qword_100068F60);
    return 0;
  }

  if ([v5 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t HMService.float(for:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10001F8CC, 0, 0);
}

uint64_t sub_10001F8CC()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 64) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 72) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_10001FA5C;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v7 = *(v0 + 8);

    return v7(0, 1);
  }
}

uint64_t sub_10001FA5C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10001FB70, 0, 0);
}

uint64_t sub_10001FB70()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1000096A0((v0 + 2), &qword_100080A28, &qword_100068F60);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMService.cachedFloat(for:)(uint64_t a1)
{
  v3 = [v1 characteristics];
  sub_10001E24C();
  v4 = sub_100067CA8();

  v7[2] = a1;
  v5 = sub_10001E2B0(sub_1000205A8, v7, v4);

  if (!v5)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_1000096A0(&v10, &qword_100080A28, &qword_100068F60);
    return 0;
  }

  if ([v5 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t HMService.data(for:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_10001FDA8, 0, 0);
}

uint64_t sub_10001FDA8()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 72) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 80) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_10001FF38;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v7 = *(v0 + 8);

    return v7(0, 0xF000000000000000);
  }
}

uint64_t sub_10001FF38()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10002004C, 0, 0);
}

uint64_t sub_10002004C()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v0[6];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0xF000000000000000;
    }

    else
    {
      v4 = v0[7];
    }
  }

  else
  {
    sub_1000096A0((v0 + 2), &qword_100080A28, &qword_100068F60);
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t HMService.tlv8(for:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_100020140, 0, 0);
}

uint64_t sub_100020140()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 72) characteristics];
  sub_10001E24C();
  v3 = sub_100067CA8();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_10001E2B0(sub_1000205A8, v4, v3);
  *(v0 + 80) = v5;

  if (v5)
  {
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_1000202D0;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1000096A0(v0 + 16, &qword_100080A28, &qword_100068F60);
    v7 = *(v0 + 8);

    return v7(0, 0xF000000000000000);
  }
}

uint64_t sub_1000202D0()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10002058C, 0, 0);
}

uint64_t sub_1000203E4(uint64_t a1, uint64_t (*a2)(id *))
{
  v5 = [v2 characteristics];
  sub_10001E24C();
  v6 = sub_100067CA8();

  v9[2] = a1;
  v7 = sub_10001E2B0(a2, v9, v6);

  if (!v7)
  {
    v12 = 0u;
    v13 = 0u;
LABEL_11:
    sub_1000096A0(&v12, &qword_100080A28, &qword_100068F60);
    return 0;
  }

  if ([v7 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100020534()
{
  result = qword_100080EA0;
  if (!qword_100080EA0)
  {
    sub_100067228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080EA0);
  }

  return result;
}

uint64_t sub_1000205C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return _swift_task_switch(sub_1000205E8, 0, 0);
}

uint64_t sub_1000205E8()
{
  v27 = v0;
  if (qword_100080788 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_100067318();
  v0[18] = sub_1000026A8(v2, qword_100085CA0);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v26);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD00000000000001DLL, 0x800000010006C230, &v26);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE400000000000000;
      v11 = 1819047278;
    }

    v14 = sub_10000D4F0(v11, v13, &v26);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  sub_1000024F4(&qword_1000808D0, &unk_100068C60);
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = xmmword_100068BF0;
  if (qword_100080770 != -1)
  {
    swift_once();
  }

  v16 = *(&xmmword_100085C40 + 1);
  v17 = qword_100085C50;
  v18 = qword_100085C58;
  v19 = xmmword_100085C60;
  v20 = qword_100085C70;
  *(inited + 32) = xmmword_100085C40;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 64) = v19;
  *(inited + 80) = v20;

  sub_1000026E0(*(&v19 + 1), v20);
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_10002095C;
  v22 = v0[16];
  v23 = v0[17];
  v24 = v0[15];

  return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(inited, v24, v22, v23);
}

uint64_t sub_10002095C(uint64_t a1)
{
  *(*v1 + 168) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();

  return _swift_task_switch(sub_100020A90, 0, 0);
}

void sub_100020A90()
{
  v29 = v0;
  v1 = sub_100009294(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 168));

  v2 = *(v1 + 2);
  if (!v2)
  {

    v5 = sub_1000672F8();
    v6 = sub_100067E08();

    v7 = 0x9380E29380E2;
    if (os_log_type_enabled(v5, v6))
    {
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000D4F0(v9, v8, &v28);
      _os_log_impl(&_mh_execute_header, v5, v6, "...{%s} has no humidities, returning placeholder", v10, 0xCu);
      sub_1000026F0(v11);
    }

    v12 = 0xA600000000000000;
    v13 = 0.0;
    goto LABEL_18;
  }

  if (v2 <= 3)
  {
    v3 = 0;
    v4 = 0.0;
LABEL_10:
    v16 = v2 - v3;
    v17 = &v1[v3 + 4];
    do
    {
      v18 = *v17++;
      v4 = v4 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_12;
  }

  v3 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = v1 + 6;
  v4 = 0.0;
  v15 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v4 = v4 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (v2 != v3)
  {
    goto LABEL_10;
  }

LABEL_12:

  v13 = v4 / v2;

  v19 = sub_1000672F8();
  v20 = sub_100067E08();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_10000D4F0(v22, v21, &v28);
    *(v23 + 12) = 2048;
    *(v23 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v19, v20, "...{%s} humidity is: %f%%", v23, 0x16u);
    sub_1000026F0(v24);
  }

  v25 = round(v13);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return;
  }

  *(v0 + 104) = v25;
  v7 = sub_100068148();
LABEL_18:
  v26 = *(v0 + 112);
  LOBYTE(v28) = v2 == 0;
  *v26 = xmmword_100069580;
  *(v26 + 16) = v13;
  *(v26 + 24) = v2 == 0;
  *(v26 + 32) = v7;
  *(v26 + 40) = v12;
  strcpy((v26 + 48), "humidity.fill");
  *(v26 + 62) = -4864;
  *(v26 + 64) = 1;
  v27 = *(v0 + 8);

  v27();
}

uint64_t sub_100020E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LightsCategoryEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000024F4(&qword_100080EA8, &unk_1000695B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100020F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LightsCategoryEntry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000024F4(&qword_100080EA8, &unk_1000695B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100021080(uint64_t a1)
{
  type metadata accessor for LightsCategoryEntry(319);
  if (v1 <= 0x3F)
  {
    sub_100021104(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100021104(uint64_t a1)
{
  if (!qword_100080F18)
  {
    sub_1000679B8();
    v1 = sub_100067358();
    if (!v2)
    {
      atomic_store(v1, &qword_100080F18);
    }
  }
}

uint64_t sub_100021178@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v21 = type metadata accessor for LightsCategoryViewAccessoryRectangular(0);
  __chkstk_darwin(v21);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000024F4(&qword_100080F48, &qword_100069628);
  __chkstk_darwin(v23);
  v22 = &v20 - v3;
  v4 = sub_1000024F4(&qword_100080F50, &qword_100069630);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v25 = sub_1000024F4(&qword_100080F58, &qword_100069638);
  __chkstk_darwin(v25);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LightsCategoryViewSystemSmall(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000679B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LightsCategoryView(0);
  sub_10004FB88(v15);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_1000218FC(v1, v11, type metadata accessor for LightsCategoryEntry);
    sub_1000218FC(v11, v6, type metadata accessor for LightsCategoryViewSystemSmall);
    swift_storeEnumTagMultiPayload();
    sub_1000218B4(&qword_100080F68, type metadata accessor for LightsCategoryViewSystemSmall, &unk_1000696E8);
    sub_1000218B4(&qword_100080F70, type metadata accessor for LightsCategoryViewAccessoryRectangular, &unk_100069698);
    sub_100067648();
    sub_1000095D4(v8, v22, &qword_100080F58, &qword_100069638);
    swift_storeEnumTagMultiPayload();
    sub_1000217C8();
    sub_100067648();
    sub_1000096A0(v8, &qword_100080F58, &qword_100069638);
    return sub_100021964(v11, type metadata accessor for LightsCategoryViewSystemSmall);
  }

  else
  {
    v18 = v22;
    if (v16 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v19 = v20;
      sub_1000218FC(v1, v20, type metadata accessor for LightsCategoryEntry);
      sub_1000218FC(v19, v6, type metadata accessor for LightsCategoryViewAccessoryRectangular);
      swift_storeEnumTagMultiPayload();
      sub_1000218B4(&qword_100080F68, type metadata accessor for LightsCategoryViewSystemSmall, &unk_1000696E8);
      sub_1000218B4(&qword_100080F70, type metadata accessor for LightsCategoryViewAccessoryRectangular, &unk_100069698);
      sub_100067648();
      sub_1000095D4(v8, v18, &qword_100080F58, &qword_100069638);
      swift_storeEnumTagMultiPayload();
      sub_1000217C8();
      sub_100067648();
      sub_1000096A0(v8, &qword_100080F58, &qword_100069638);
      return sub_100021964(v19, type metadata accessor for LightsCategoryViewAccessoryRectangular);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1000217C8();
      sub_100067648();
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_100021790(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000217C8()
{
  result = qword_100080F60;
  if (!qword_100080F60)
  {
    sub_10000253C(&qword_100080F58, &qword_100069638);
    sub_1000218B4(&qword_100080F68, type metadata accessor for LightsCategoryViewSystemSmall, &unk_1000696E8);
    sub_1000218B4(&qword_100080F70, type metadata accessor for LightsCategoryViewAccessoryRectangular, &unk_100069698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100080F60);
  }

  return result;
}

uint64_t sub_1000218B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000218FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightsCategoryEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100021A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightsCategoryEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100021AFC(uint64_t a1)
{
  result = type metadata accessor for LightsCategoryEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100021B6C()
{
  result = qword_100081098;
  if (!qword_100081098)
  {
    sub_10000253C(&qword_1000810A0, "vh");
    sub_1000217C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081098);
  }

  return result;
}

uint64_t sub_100021C14@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_100067698();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000024F4(&qword_100081110, &qword_100069820);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v35 - v4;
  v45 = sub_1000024F4(&qword_100081118, &qword_100069828);
  __chkstk_darwin(v45);
  v41 = &v35 - v5;
  v43 = sub_1000024F4(&qword_100081120, &qword_100069830);
  __chkstk_darwin(v43);
  v44 = &v35 - v6;
  v7 = sub_1000024F4(&qword_1000810E8, &qword_100069798);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for LightsCategoryEntry(0);
  sub_100067728();
  v11 = enum case for Font.Design.default(_:);
  v12 = sub_100067718();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v9, v11, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v14 = sub_100067748();
  sub_1000096A0(v9, &qword_1000810E8, &qword_100069798);
  if (*(v1 + v10[10]) == 2)
  {
    *v44 = 2;
    swift_storeEnumTagMultiPayload();
    sub_1000246A4();
    sub_1000246F8();
    sub_100067648();
  }

  else
  {
    v16 = v1 + v10[6];
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *v16 > 0;
    v20 = v1 + v10[7];
    v21 = *(v20 + 8);
    v22 = (v17 == *v20) & ~v21;
    if (v18)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_100067548();
    v51 = 1;
    v25 = sub_1000675D8();
    v55[0] = 0;
    sub_1000222A4(v14, v23 & 1, v1, v19 & ~v18, v59);
    memcpy(v52, v59, 0x179uLL);
    memcpy(v53, v59, 0x179uLL);
    sub_1000095D4(v52, v47, &qword_100081128, &qword_100069838);
    sub_1000096A0(v53, &qword_100081128, &qword_100069838);
    memcpy(&v49[7], v52, 0x179uLL);
    v26 = v55[0];
    v54[0] = v25;
    v54[1] = 0;
    LOBYTE(v54[2]) = v55[0];
    memcpy(&v54[2] + 1, v49, 0x180uLL);
    memcpy(v55, v54, 0x191uLL);
    v48 = 0;
    v56[0] = v25;
    v56[1] = 0;
    v57 = v26;
    memcpy(v58, v49, sizeof(v58));
    sub_1000095D4(v54, v59, &qword_100081130, &qword_100069840);
    sub_1000096A0(v56, &qword_100081130, &qword_100069840);
    memcpy(&v50[7], v55, 0x198uLL);
    LOBYTE(v25) = v51;
    v27 = sub_100067868();
    KeyPath = swift_getKeyPath();
    v47[0] = v24;
    v47[1] = 0;
    LOBYTE(v47[2]) = v25;
    memcpy(&v47[2] + 1, v50, 0x19FuLL);
    v47[54] = 0;
    LOBYTE(v47[55]) = 0;
    v47[56] = KeyPath;
    v47[57] = v27;
    v29 = v36;
    sub_100067688();
    v30 = sub_1000024F4(&qword_100081138, &qword_100069848);
    v31 = sub_100024550();
    v32 = v39;
    sub_100067848();
    (*(v37 + 8))(v29, v38);
    memcpy(v59, v47, 0x1D0uLL);
    sub_1000096A0(v59, &qword_100081138, &qword_100069848);
    v47[0] = v30;
    v47[1] = v31;
    swift_getOpaqueTypeConformance2();
    v34 = v41;
    v33 = v42;
    sub_100067858();
    (*(v40 + 8))(v32, v33);
    sub_100024634(v34, v44);
    swift_storeEnumTagMultiPayload();
    sub_1000246A4();
    sub_1000246F8();
    sub_100067648();

    return sub_1000247F0(v34);
  }
}

uint64_t sub_1000222A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v95) = a4;
  v96 = a3;
  LODWORD(v97) = a2;
  v100 = a5;
  v7 = sub_1000024F4(&qword_1000810E8, &qword_100069798);
  __chkstk_darwin(v7 - 8);
  v101 = v84 - v8;
  v9 = sub_100066FB8();
  __chkstk_darwin(v9 - 8);
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100067B88();
  __chkstk_darwin(v12 - 8);
  v99 = sub_100067548();
  LOBYTE(v118) = 1;
  sub_10002310C(a1, &v163);
  v179 = v168;
  v180 = v169;
  v181[0] = v170[0];
  *(v181 + 9) = *(v170 + 9);
  v176 = v165;
  v177 = v166;
  v178 = v167;
  v174 = v163;
  v175 = v164;
  v182[5] = v168;
  v182[6] = v169;
  v183[0] = v170[0];
  *(v183 + 9) = *(v170 + 9);
  v182[2] = v165;
  v182[3] = v166;
  v182[4] = v167;
  v182[0] = v163;
  v182[1] = v164;
  sub_1000095D4(&v174, &v148, &qword_1000810F0, &qword_1000697A0);
  sub_1000096A0(v182, &qword_1000810F0, &qword_1000697A0);
  *(&v162[5] + 7) = v179;
  *(&v162[6] + 7) = v180;
  *(&v162[7] + 7) = v181[0];
  v162[8] = *(v181 + 9);
  *(&v162[1] + 7) = v175;
  *(&v162[2] + 7) = v176;
  *(&v162[3] + 7) = v177;
  *(&v162[4] + 7) = v178;
  *(v162 + 7) = v174;
  v98 = v118;
  if (v97)
  {
    sub_100067B38();
    sub_100066FA8();
    *&v163 = sub_100067BE8();
    *(&v163 + 1) = v13;
    sub_1000025E8();
    v14 = sub_1000677B8();
    v96 = v15;
    v97 = v14;
    v17 = v16;
    v95 = v18;
    KeyPath = swift_getKeyPath();
    sub_100067738();
    v19 = enum case for Font.Design.default(_:);
    v20 = sub_100067718();
    v21 = *(v20 - 8);
    v22 = v101;
    (*(v21 + 104))(v101, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    v23 = sub_100067748();
    sub_1000096A0(v22, &qword_1000810E8, &qword_100069798);
    v24 = swift_getKeyPath();
    v17 &= 1u;
    LOBYTE(v163) = v17;
    LOBYTE(v148) = 0;
    v25 = swift_getKeyPath();
    *&v148 = v97;
    *(&v148 + 1) = v96;
    LOBYTE(v149) = v17;
    *(&v149 + 1) = v95;
    *&v150 = KeyPath;
    *(&v150 + 1) = 1;
    LOBYTE(v151) = 0;
    *(&v151 + 1) = v24;
    *&v152 = v23;
    *(&v152 + 1) = v25;
    *&v153 = 0x3FC999999999999ALL;
    sub_100024AE0(&v148);
    v126 = v156;
    v127 = v157;
    v128 = v158;
    v129 = v159;
    v122 = v152;
    v123 = v153;
    v124 = v154;
    v125 = v155;
    v118 = v148;
    v119 = v149;
    v120 = v150;
    v121 = v151;
    sub_1000024F4(&qword_100081178, &qword_100069890);
    sub_1000024F4(&qword_100081188, &qword_1000698A0);
    sub_1000248B8();
    sub_1000141C4(&qword_1000811E0, &qword_100081188, &qword_1000698A0, &protocol conformance descriptor for TupleView<A>);
    sub_100067648();
  }

  else
  {
    v26 = v101;
    v90 = v11;
    v88 = type metadata accessor for LightsCategoryEntry(0);
    v27 = (v96 + *(v88 + 32));
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27;
      v30 = v28;
    }

    else
    {
      v30 = 0xA600000000000000;
      v29 = 0x9380E29380E2;
    }

    *&v163 = v29;
    *(&v163 + 1) = v30;
    v31 = sub_1000025E8();

    v89 = v31;
    v97 = sub_1000677B8();
    v93 = v33;
    KeyPath = v32;
    v91 = v34;
    v92 = swift_getKeyPath();
    v35 = v95;
    sub_100067738();
    v36 = enum case for Font.Design.default(_:);
    v37 = sub_100067718();
    v38 = *(v37 - 8);
    v39 = *(v38 + 104);
    v86 = v36;
    v40 = v36;
    v41 = v38;
    v84[0] = v39;
    v84[1] = v38 + 104;
    v39(v26, v40, v37);
    v42 = *(v41 + 56);
    v87 = v37;
    v85 = v42;
    v42(v26, 0, 1, v37);
    v43 = sub_100067748();
    sub_1000096A0(v26, &qword_1000810E8, &qword_100069798);
    v44 = swift_getKeyPath();
    v45 = v91 & 1;
    v161 = v91 & 1;
    v160 = 0;
    v46 = swift_getKeyPath();
    *&v102 = v97;
    *(&v102 + 1) = KeyPath;
    LOBYTE(v103[0]) = v45;
    *(&v103[0] + 1) = v93;
    *&v103[1] = v92;
    *(&v103[1] + 1) = 1;
    LOBYTE(v103[2]) = 0;
    *(&v103[2] + 1) = v44;
    *&v103[3] = v43;
    *(&v103[3] + 1) = v46;
    *&v103[4] = 0x3FC999999999999ALL;
    if (v35)
    {
      sub_100067B38();
      sub_100066FA8();
      sub_100067BE8();
      sub_1000024F4(&qword_1000811F0, &qword_1000698D0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100068BF0;
      v48 = v96 + *(v88 + 24);
      v49 = *v48;
      LODWORD(v48) = *(v48 + 8);
      *(v47 + 56) = &type metadata for Int;
      *(v47 + 64) = &protocol witness table for Int;
      if (v48)
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }

      *(v47 + 32) = v50;
      v51 = sub_100067BD8();
      v53 = v52;

      *&v163 = v51;
      *(&v163 + 1) = v53;
      v54 = sub_1000677B8();
      v96 = v55;
      v97 = v54;
      LODWORD(KeyPath) = v56;
      v95 = v57;
      v58 = swift_getKeyPath();
      sub_100067738();
      v59 = v101;
      v60 = v87;
      (v84[0])(v101, v86, v87);
      v61 = 1;
      v85(v59, 0, 1, v60);
      v62 = sub_100067748();
      sub_1000096A0(v59, &qword_1000810E8, &qword_100069798);
      v63 = swift_getKeyPath();
      v64 = KeyPath & 1;
      LOBYTE(v163) = KeyPath & 1;
      LOBYTE(v148) = 0;
      v65 = swift_getKeyPath();
      v66 = v95;
      *&v107 = v97;
      *(&v107 + 1) = v96;
      LOBYTE(v108) = v64;
      v67 = 0x3FC999999999999ALL;
      LOBYTE(v110) = 0;
    }

    else
    {
      v66 = 0;
      v58 = 0;
      v61 = 0;
      v63 = 0;
      v62 = 0;
      v65 = 0;
      v67 = 0;
      *&v110 = 0;
      *&v108 = 0;
      v107 = 0uLL;
    }

    *(&v108 + 1) = v66;
    *&v109 = v58;
    *(&v109 + 1) = v61;
    *(&v110 + 1) = v63;
    *&v111 = v62;
    *(&v111 + 1) = v65;
    v138 = v103[1];
    v139 = v103[2];
    v140 = v103[3];
    v136 = v102;
    v137 = v103[0];
    v146[0] = v107;
    v146[1] = v108;
    v146[4] = v111;
    v146[2] = v109;
    v146[3] = v110;
    v142[0] = v102;
    v142[1] = v103[0];
    v142[4] = v103[3];
    v142[2] = v103[1];
    v142[3] = v103[2];
    v130 = v102;
    v131 = v103[0];
    v133 = v103[2];
    v134 = v103[3];
    v132 = v103[1];
    v144[0] = v107;
    v144[1] = v108;
    v144[3] = v110;
    v144[4] = v111;
    v144[2] = v109;
    *(&v135[1] + 8) = v108;
    *&v112 = v67;
    v141 = *&v103[4];
    v147 = v67;
    v143 = *&v103[4];
    *&v135[0] = *&v103[4];
    v145 = v67;
    *(v135 + 8) = v107;
    *(&v135[5] + 1) = v67;
    *(&v135[4] + 8) = v111;
    *(&v135[3] + 8) = v110;
    *(&v135[2] + 8) = v109;
    sub_1000095D4(&v102, &v163, &qword_100081178, &qword_100069890);
    sub_1000095D4(&v107, &v163, &qword_100081180, &qword_100069898);
    sub_1000095D4(v142, &v163, &qword_100081178, &qword_100069890);
    sub_1000095D4(v144, &v163, &qword_100081180, &qword_100069898);
    sub_1000096A0(v146, &qword_100081180, &qword_100069898);
    v106[1] = v138;
    v106[2] = v139;
    v106[3] = v140;
    *&v106[4] = v141;
    v105 = v136;
    v106[0] = v137;
    sub_1000096A0(&v105, &qword_100081178, &qword_100069890);
    v156 = v135[3];
    v157 = v135[4];
    v158 = v135[5];
    v152 = v134;
    v153 = v135[0];
    v154 = v135[1];
    v155 = v135[2];
    v148 = v130;
    v149 = v131;
    v150 = v132;
    v151 = v133;
    sub_1000248AC(&v148);
    v170[1] = v156;
    v171 = v157;
    v172 = v158;
    v173 = v159;
    v167 = v152;
    v168 = v153;
    v169 = v154;
    v170[0] = v155;
    v163 = v148;
    v164 = v149;
    v165 = v150;
    v166 = v151;
    sub_1000024F4(&qword_100081178, &qword_100069890);
    sub_1000024F4(&qword_100081188, &qword_1000698A0);
    sub_1000248B8();
    sub_1000141C4(&qword_1000811E0, &qword_100081188, &qword_1000698A0, &protocol conformance descriptor for TupleView<A>);
    sub_100067648();
    sub_1000096A0(&v107, &qword_100081180, &qword_100069898);
    sub_1000096A0(&v102, &qword_100081178, &qword_100069890);
    v170[1] = v126;
    v171 = v127;
    v172 = v128;
    v173 = v129;
    v167 = v122;
    v168 = v123;
    v169 = v124;
    v170[0] = v125;
    v163 = v118;
    v164 = v119;
    v165 = v120;
    v166 = v121;
  }

  v156 = v170[1];
  v157 = v171;
  v158 = v172;
  v152 = v167;
  v153 = v168;
  v154 = v169;
  v155 = v170[0];
  v148 = v163;
  v149 = v164;
  v150 = v165;
  v151 = v166;
  *(&v106[2] + 1) = v162[2];
  *(&v106[1] + 1) = v162[1];
  *(&v106[5] + 1) = v162[5];
  *(&v106[6] + 1) = v162[6];
  *(&v106[7] + 1) = v162[7];
  *(&v106[8] + 1) = v162[8];
  *(&v106[3] + 1) = v162[3];
  v68 = v99;
  v105 = v99;
  v69 = v98;
  LOBYTE(v106[0]) = v98;
  *(&v106[4] + 1) = v162[4];
  *(v106 + 1) = v162[0];
  v115 = v106[7];
  v116 = v106[8];
  v111 = v106[3];
  v112 = v106[4];
  v113 = v106[5];
  v114 = v106[6];
  v107 = v99;
  v108 = v106[0];
  v109 = v106[1];
  v110 = v106[2];
  v126 = v170[1];
  v127 = v171;
  v128 = v172;
  v122 = v167;
  v123 = v168;
  v124 = v169;
  v125 = v170[0];
  v118 = v163;
  v119 = v164;
  v120 = v165;
  v121 = v166;
  *&v104[135] = v170[1];
  *&v104[151] = v171;
  *&v104[167] = v172;
  *&v104[71] = v167;
  *&v104[87] = v168;
  *&v104[103] = v169;
  *&v104[119] = v170[0];
  v104[183] = v173;
  *&v104[7] = v163;
  *&v104[23] = v164;
  *&v104[39] = v165;
  *&v104[55] = v166;
  v70 = v106[8];
  v71 = v100;
  *(v100 + 128) = v106[7];
  *(v71 + 144) = v70;
  v72 = v112;
  *(v71 + 64) = v111;
  *(v71 + 80) = v72;
  v73 = v114;
  *(v71 + 96) = v113;
  *(v71 + 112) = v73;
  v74 = v108;
  *v71 = v107;
  *(v71 + 16) = v74;
  v75 = v110;
  *(v71 + 32) = v109;
  *(v71 + 48) = v75;
  v76 = *&v104[128];
  v77 = *&v104[160];
  *(v71 + 321) = *&v104[144];
  *(v71 + 337) = v77;
  v78 = *&v104[80];
  *(v71 + 241) = *&v104[64];
  v79 = *&v104[96];
  v80 = *&v104[112];
  *(v71 + 257) = v78;
  *(v71 + 273) = v79;
  *(v71 + 289) = v80;
  *(v71 + 305) = v76;
  v81 = *&v104[16];
  *(v71 + 177) = *v104;
  *(v71 + 193) = v81;
  v82 = *&v104[48];
  *(v71 + 209) = *&v104[32];
  v159 = v173;
  LOBYTE(v117) = v106[9];
  LOBYTE(v146[0]) = 0;
  v129 = v173;
  LOBYTE(v144[0]) = 0;
  *(v71 + 160) = v117;
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;
  *(v71 + 353) = *&v104[176];
  *(v71 + 225) = v82;
  *(v71 + 368) = 0;
  *(v71 + 376) = 0;
  sub_1000095D4(&v105, &v102, &qword_1000810F8, &qword_100069808);
  sub_1000095D4(&v118, &v102, &qword_1000811E8, &qword_1000698C8);
  sub_1000096A0(&v148, &qword_1000811E8, &qword_1000698C8);
  *(&v103[5] + 1) = v162[5];
  *(&v103[6] + 1) = v162[6];
  *(&v103[7] + 1) = v162[7];
  *(&v103[8] + 1) = v162[8];
  *(&v103[1] + 1) = v162[1];
  *(&v103[2] + 1) = v162[2];
  *(&v103[3] + 1) = v162[3];
  *(&v103[4] + 1) = v162[4];
  v102 = v68;
  LOBYTE(v103[0]) = v69;
  *(v103 + 1) = v162[0];
  return sub_1000096A0(&v102, &qword_1000810F8, &qword_100069808);
}

uint64_t sub_10002310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_100066FB8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100067B88();
  __chkstk_darwin(v4 - 8);
  v27 = sub_100067888();
  KeyPath = swift_getKeyPath();

  sub_100067B38();
  sub_100066FA8();
  sub_100067BE8();
  sub_1000025E8();
  v5 = sub_1000677B8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = swift_getKeyPath();
  v13 = sub_100067758();
  v14 = swift_getKeyPath();
  v15 = v9 & 1;
  v30[0] = 0;
  v16 = sub_1000676F8();
  sub_100067348();
  *&v31 = v5;
  *(&v31 + 1) = v7;
  LOBYTE(v32) = v15;
  *(&v32 + 1) = v11;
  *&v33 = v12;
  *(&v33 + 1) = 1;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v14;
  *&v35 = v13;
  BYTE8(v35) = v16;
  *&v36 = v17;
  *(&v36 + 1) = v18;
  *&v37 = v19;
  *(&v37 + 1) = v20;
  v38 = 0;
  *a2 = v27;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = a1;
  v21 = v31;
  v22 = v35;
  *(a2 + 72) = v34;
  v23 = v32;
  *(a2 + 56) = v33;
  *(a2 + 40) = v23;
  *(a2 + 24) = v21;
  v24 = v36;
  v25 = v37;
  *(a2 + 136) = 0;
  *(a2 + 120) = v25;
  *(a2 + 104) = v24;
  *(a2 + 88) = v22;
  v39[0] = v5;
  v39[1] = v7;
  v40 = v15;
  v41 = v11;
  v42 = v12;
  v43 = 1;
  v44 = 0;
  v45 = v14;
  v46 = v13;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v50 = v19;
  v51 = v20;
  v52 = 0;

  sub_1000095D4(&v31, v30, &qword_100081108, &qword_100069818);
  sub_1000096A0(v39, &qword_100081108, &qword_100069818);
}

uint64_t sub_100023420@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v24 = sub_100067698();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000024F4(&qword_1000810A8, &qword_100069738);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v23 - v6;
  type metadata accessor for LightsCategoryEntry(0);
  v8 = sub_100067548();
  v29 = 1;
  sub_100023758(v1, v33);
  memcpy(v31, v33, 0x131uLL);
  memcpy(v32, v33, 0x131uLL);
  sub_1000095D4(v31, v27, &qword_1000810B0, &qword_100069740);
  sub_1000096A0(v32, &qword_1000810B0, &qword_100069740);
  memcpy(&v28[7], v31, 0x131uLL);
  v9 = v29;
  v10 = sub_1000676E8();
  sub_100067348();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v30 = 0;
  v27[0] = v8;
  v27[1] = 0;
  LOBYTE(v27[2]) = v9;
  memcpy(&v27[2] + 1, v28, 0x138uLL);
  LOBYTE(v27[42]) = v10;
  v27[43] = v12;
  v27[44] = v14;
  v27[45] = v16;
  v27[46] = v18;
  LOBYTE(v27[47]) = 0;
  sub_100067688();
  v19 = sub_1000024F4(&qword_1000810B8, &qword_100069748);
  v20 = sub_1000243D8();
  sub_100067848();
  (*(v2 + 8))(v4, v24);
  memcpy(v33, v27, 0x179uLL);
  sub_1000096A0(v33, &qword_1000810B8, &qword_100069748);
  v27[0] = v19;
  v27[1] = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  sub_100067858();
  return (*(v5 + 8))(v7, v21);
}

uint64_t sub_100023758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000675D8();
  v9[0] = 0;
  sub_100023A64(a1, &v29);
  v23 = *&v30[176];
  v24 = *&v30[192];
  v25 = *&v30[208];
  v26 = *&v30[224];
  v19 = *&v30[112];
  v20 = *&v30[128];
  v21 = *&v30[144];
  v22 = *&v30[160];
  v15 = *&v30[48];
  v16 = *&v30[64];
  v17 = *&v30[80];
  v18 = *&v30[96];
  v11 = v29;
  v12 = *v30;
  v13 = *&v30[16];
  v14 = *&v30[32];
  v27[12] = *&v30[176];
  v27[13] = *&v30[192];
  v27[14] = *&v30[208];
  v27[15] = *&v30[224];
  v27[8] = *&v30[112];
  v27[9] = *&v30[128];
  v27[10] = *&v30[144];
  v27[11] = *&v30[160];
  v27[4] = *&v30[48];
  v27[5] = *&v30[64];
  v27[6] = *&v30[80];
  v27[7] = *&v30[96];
  v27[0] = v29;
  v27[1] = *v30;
  v27[2] = *&v30[16];
  v27[3] = *&v30[32];
  sub_1000095D4(&v11, v28, &qword_1000810D8, &qword_100069758);
  sub_1000096A0(v27, &qword_1000810D8, &qword_100069758);
  *&__src[199] = v23;
  *&__src[215] = v24;
  *&__src[231] = v25;
  *&__src[247] = v26;
  *&__src[135] = v19;
  *&__src[151] = v20;
  *&__src[167] = v21;
  *&__src[183] = v22;
  *&__src[71] = v15;
  *&__src[87] = v16;
  *&__src[103] = v17;
  *&__src[119] = v18;
  *&__src[7] = v11;
  *&__src[23] = v12;
  *&__src[39] = v13;
  *&__src[55] = v14;
  v6 = sub_100067868();
  KeyPath = swift_getKeyPath();
  v28[0] = v5;
  v28[1] = 0;
  LOBYTE(v28[2]) = 0;
  memcpy(&v28[2] + 1, __src, 0x107uLL);
  v28[35] = KeyPath;
  v28[36] = v6;
  v9[296] = 0;
  memcpy(a2, v28, 0x128uLL);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v29 = v5;
  v30[0] = 0;
  memcpy(&v30[1], __src, 0x107uLL);
  v31 = KeyPath;
  v32 = v6;
  sub_1000095D4(v28, v9, &qword_1000810E0, &qword_100069790);
  return sub_1000096A0(&v29, &qword_1000810E0, &qword_100069790);
}

uint64_t sub_100023A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000024F4(&qword_1000810E8, &qword_100069798);
  __chkstk_darwin(v5 - 8);
  v44 = &v38 - v6;
  v45 = sub_100067548();
  LOBYTE(v49[0]) = 1;
  sub_100023FC0(&v56);
  v97 = v61;
  v98 = v62;
  v99[0] = v63[0];
  *(v99 + 9) = *(v63 + 9);
  v94 = v58;
  v95 = v59;
  v96 = v60;
  v92 = v56;
  v93 = v57;
  v100[5] = v61;
  v100[6] = v62;
  v101[0] = v63[0];
  *(v101 + 9) = *(v63 + 9);
  v100[2] = v58;
  v100[3] = v59;
  v100[4] = v60;
  v100[0] = v56;
  v100[1] = v57;
  sub_1000095D4(&v92, v76, &qword_1000810F0, &qword_1000697A0);
  sub_1000096A0(v100, &qword_1000810F0, &qword_1000697A0);
  *(&v91[5] + 7) = v97;
  *(&v91[6] + 7) = v98;
  *(&v91[7] + 7) = v99[0];
  v91[8] = *(v99 + 9);
  *(&v91[1] + 7) = v93;
  *(&v91[2] + 7) = v94;
  *(&v91[3] + 7) = v95;
  *(&v91[4] + 7) = v96;
  *(v91 + 7) = v92;
  v46 = LOBYTE(v49[0]);
  v7 = (a1 + *(type metadata accessor for LightsCategoryEntry(0) + 32));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
    v10 = v8;
  }

  else
  {
    v10 = 0xA600000000000000;
    v9 = 0x9380E29380E2;
  }

  *&v56 = v9;
  *(&v56 + 1) = v10;
  sub_1000025E8();

  v11 = sub_1000677B8();
  v41 = v12;
  v42 = v11;
  v39 = v13;
  v43 = v14;
  KeyPath = swift_getKeyPath();
  sub_100067738();
  v15 = enum case for Font.Design.default(_:);
  v16 = sub_100067718();
  v17 = *(v16 - 8);
  v18 = v44;
  (*(v17 + 104))(v44, v15, v16);
  (*(v17 + 56))(v18, 0, 1, v16);
  v19 = sub_100067748();
  sub_1000096A0(v18, &qword_1000810E8, &qword_100069798);
  v20 = swift_getKeyPath();
  v21 = v39 & 1;
  v90 = v39 & 1;
  v88 = 0;
  v22 = v45;
  v49[0] = v45;
  v49[1] = 0;
  v50[0] = v46;
  *&v50[81] = v91[5];
  *&v50[97] = v91[6];
  *&v50[113] = v91[7];
  *&v50[129] = v91[8];
  *&v50[17] = v91[1];
  *&v50[33] = v91[2];
  *&v50[49] = v91[3];
  *&v50[65] = v91[4];
  *&v50[1] = v91[0];
  v63[1] = *&v50[112];
  v64 = *&v50[128];
  LOBYTE(v65) = HIBYTE(v91[8]);
  v60 = *&v50[48];
  v61 = *&v50[64];
  v62 = *&v50[80];
  v63[0] = *&v50[96];
  v56 = v45;
  v57 = *v50;
  v58 = *&v50[16];
  v59 = *&v50[32];
  v48 = 0;
  v24 = v41;
  v23 = v42;
  *&v51 = v42;
  *(&v51 + 1) = v41;
  LOBYTE(v52) = v39 & 1;
  *(&v52 + 1) = *v89;
  DWORD1(v52) = *&v89[3];
  v25 = v43;
  v26 = KeyPath;
  *(&v52 + 1) = v43;
  *&v53 = KeyPath;
  *(&v53 + 1) = 1;
  LOBYTE(v54) = 0;
  *(&v54 + 1) = *v87;
  DWORD1(v54) = *&v87[3];
  *(&v54 + 1) = v20;
  v55 = v19;
  *(&v47[2] + 7) = v53;
  *(&v47[4] + 7) = v19;
  *(v47 + 7) = v51;
  *(&v47[1] + 7) = v52;
  *(&v47[3] + 7) = v54;
  v27 = *v50;
  *a2 = v45;
  *(a2 + 16) = v27;
  v28 = v58;
  v29 = v59;
  v30 = v61;
  *(a2 + 64) = v60;
  *(a2 + 80) = v30;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  v31 = v62;
  v32 = v63[0];
  v33 = v64;
  v34 = v65;
  *(a2 + 128) = v63[1];
  *(a2 + 144) = v33;
  *(a2 + 96) = v31;
  *(a2 + 112) = v32;
  *(a2 + 160) = v34;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v35 = v47[0];
  *(a2 + 193) = v47[1];
  v36 = v47[3];
  *(a2 + 209) = v47[2];
  *(a2 + 225) = v36;
  *(a2 + 240) = *(&v47[3] + 15);
  *(a2 + 177) = v35;
  v66[0] = v23;
  v66[1] = v24;
  v67 = v21;
  *v68 = *v89;
  *&v68[3] = *&v89[3];
  v69 = v25;
  v70 = v26;
  v71 = 1;
  v72 = 0;
  *&v73[3] = *&v87[3];
  *v73 = *v87;
  v74 = v20;
  v75 = v19;
  sub_1000095D4(v49, v76, &qword_1000810F8, &qword_100069808);
  sub_1000095D4(&v51, v76, &qword_100081100, &qword_100069810);
  sub_1000096A0(v66, &qword_100081100, &qword_100069810);
  v83 = v91[5];
  v84 = v91[6];
  v85 = v91[7];
  v86 = v91[8];
  v79 = v91[1];
  v80 = v91[2];
  v81 = v91[3];
  v82 = v91[4];
  v76[0] = v22;
  v76[1] = 0;
  v77 = v46;
  v78 = v91[0];
  return sub_1000096A0(v76, &qword_1000810F8, &qword_100069808);
}

uint64_t sub_100023FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000024F4(&qword_1000810E8, &qword_100069798);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v44 = sub_100067888();
  sub_100067728();
  v6 = enum case for Font.Design.default(_:);
  HIDWORD(v37) = enum case for Font.Design.default(_:);
  v7 = sub_100067718();
  v8 = *(v7 - 8);
  v9 = *(v8 + 104);
  v9(v5, v6, v7);
  v10 = *(v8 + 56);
  v10(v5, 0, 1, v7);
  v43 = sub_100067748();
  sub_1000096A0(v5, &qword_1000810E8, &qword_100069798);
  KeyPath = swift_getKeyPath();
  sub_1000675A8();
  v11 = sub_1000677A8();
  v39 = v12;
  v40 = v11;
  v14 = v13;
  v41 = v15;
  v38 = swift_getKeyPath();
  sub_100067728();
  v9(v5, HIDWORD(v37), v7);
  v10(v5, 0, 1, v7);
  v16 = sub_100067748();
  sub_1000096A0(v5, &qword_1000810E8, &qword_100069798);
  v17 = swift_getKeyPath();
  v14 &= 1u;
  LOBYTE(v49) = v14;
  v45[0] = 0;
  LOBYTE(v7) = sub_1000676F8();
  sub_100067348();
  v18 = *v47;
  *(&v50 + 1) = *v47;
  DWORD1(v50) = *&v47[3];
  DWORD1(v52) = *&v46[3];
  v19 = *v46;
  *(&v52 + 1) = *v46;
  HIDWORD(v53) = *&v48[3];
  *(&v53 + 9) = *v48;
  v21 = v39;
  v20 = v40;
  *&v49 = v40;
  *(&v49 + 1) = v39;
  LOBYTE(v50) = v14;
  v22 = v41;
  v23 = KeyPath;
  v24 = v38;
  *(&v50 + 1) = v41;
  *&v51 = v38;
  *(&v51 + 1) = 1;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = v17;
  *&v53 = v16;
  BYTE8(v53) = v7;
  *&v54 = v25;
  *(&v54 + 1) = v26;
  *&v55 = v27;
  *(&v55 + 1) = v28;
  v56 = 0;
  v29 = v43;
  *a1 = v44;
  *(a1 + 8) = v23;
  *(a1 + 16) = v29;
  v30 = v53;
  v31 = v54;
  v32 = v55;
  *(a1 + 136) = 0;
  *(a1 + 120) = v32;
  *(a1 + 104) = v31;
  *(a1 + 88) = v30;
  v33 = v49;
  v34 = v50;
  v35 = v51;
  *(a1 + 72) = v52;
  *(a1 + 56) = v35;
  *(a1 + 40) = v34;
  *(a1 + 24) = v33;
  v57[0] = v20;
  v57[1] = v21;
  v58 = v14;
  *&v59[3] = *&v47[3];
  *v59 = v18;
  v60 = v22;
  v61 = v24;
  v62 = 1;
  v63 = 0;
  *&v64[3] = *&v46[3];
  *v64 = v19;
  v65 = v17;
  v66 = v16;
  v67 = v7;
  *&v68[3] = *&v48[3];
  *v68 = *v48;
  v69 = v25;
  v70 = v26;
  v71 = v27;
  v72 = v28;
  v73 = 0;

  sub_1000095D4(&v49, v45, &qword_100081108, &qword_100069818);
  sub_1000096A0(v57, &qword_100081108, &qword_100069818);
}

unint64_t sub_1000243D8()
{
  result = qword_1000810C0;
  if (!qword_1000810C0)
  {
    sub_10000253C(&qword_1000810B8, &qword_100069748);
    sub_1000141C4(&qword_1000810C8, &qword_1000810D0, &qword_100069750, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000810C0);
  }

  return result;
}

uint64_t sub_100024490@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067448();
  *a1 = result;
  return result;
}

uint64_t sub_1000244BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067448();
  *a1 = result;
  return result;
}

unint64_t sub_100024550()
{
  result = qword_100081140;
  if (!qword_100081140)
  {
    sub_10000253C(&qword_100081138, &qword_100069848);
    sub_1000141C4(&qword_100081148, &qword_100081150, &qword_100069850, &protocol conformance descriptor for HStack<A>);
    sub_1000141C4(&qword_100081158, &qword_100081160, &qword_100069858, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081140);
  }

  return result;
}

uint64_t sub_100024634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_100081118, &qword_100069828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000246A4()
{
  result = qword_100081168;
  if (!qword_100081168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081168);
  }

  return result;
}

unint64_t sub_1000246F8()
{
  result = qword_100081170;
  if (!qword_100081170)
  {
    sub_10000253C(&qword_100081118, &qword_100069828);
    sub_10000253C(&qword_100081138, &qword_100069848);
    sub_100024550();
    swift_getOpaqueTypeConformance2();
    sub_1000218B4(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081170);
  }

  return result;
}

uint64_t sub_1000247F0(uint64_t a1)
{
  v2 = sub_1000024F4(&qword_100081118, &qword_100069828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000248B8()
{
  result = qword_100081190;
  if (!qword_100081190)
  {
    sub_10000253C(&qword_100081178, &qword_100069890);
    sub_100024970();
    sub_1000141C4(&qword_1000811D0, &qword_1000811D8, &qword_1000698C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081190);
  }

  return result;
}

unint64_t sub_100024970()
{
  result = qword_100081198;
  if (!qword_100081198)
  {
    sub_10000253C(&qword_100081100, &qword_100069810);
    sub_100024A28();
    sub_1000141C4(&qword_1000811C0, &qword_1000811C8, &qword_10006B350, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081198);
  }

  return result;
}

unint64_t sub_100024A28()
{
  result = qword_1000811A0;
  if (!qword_1000811A0)
  {
    sub_10000253C(&qword_1000811A8, &qword_1000698A8);
    sub_1000141C4(&qword_1000811B0, &qword_1000811B8, &unk_1000698B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000811A0);
  }

  return result;
}

unint64_t sub_100024AEC()
{
  result = qword_1000811F8;
  if (!qword_1000811F8)
  {
    sub_10000253C(&qword_100081200, &qword_1000698D8);
    sub_10000253C(&qword_1000810B8, &qword_100069748);
    sub_1000243D8();
    swift_getOpaqueTypeConformance2();
    sub_1000218B4(&qword_100080A08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000811F8);
  }

  return result;
}

unint64_t sub_100024BE8()
{
  result = qword_100081208;
  if (!qword_100081208)
  {
    sub_10000253C(&qword_100081210, &unk_1000698E0);
    sub_1000246A4();
    sub_1000246F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081208);
  }

  return result;
}

uint64_t HMUser.description.getter()
{
  v1 = v0;
  v2 = sub_100066F88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100068038(42);

  v12 = 0x20726573554D483CLL;
  v13 = 0xEF203D20656D616ELL;
  v6 = [v0 name];
  v7 = sub_100067BC8();
  v9 = v8;

  v14._countAndFlagsBits = v7;
  v14._object = v9;
  sub_100067C48(v14);

  v15._object = 0x800000010006CCF0;
  v15._countAndFlagsBits = 0xD000000000000016;
  sub_100067C48(v15);
  v10 = [v1 uniqueIdentifier];
  sub_100066F78();

  sub_100024EC4();
  v16._countAndFlagsBits = sub_100068148();
  sub_100067C48(v16);

  (*(v3 + 8))(v5, v2);
  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  sub_100067C48(v17);
  return v12;
}

unint64_t sub_100024EC4()
{
  result = qword_100081218;
  if (!qword_100081218)
  {
    sub_100066F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081218);
  }

  return result;
}

uint64_t sub_100024F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100027F14(a3, v25 - v10);
  v12 = sub_100067D28();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000096A0(v11, &qword_1000809D0, &qword_100068F00);
  }

  else
  {
    sub_100067D18();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100067CF8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100067C08() + 32;
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

      sub_1000096A0(a3, &qword_1000809D0, &qword_100068F00);

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

  sub_1000096A0(a3, &qword_1000809D0, &qword_100068F00);
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

int *sub_100025238@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100066FB8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100067B88();
  __chkstk_darwin(v5 - 8);
  if (__OFADD__(qword_100085D28, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_100085D28;
    v24[0] = 0x2073746867694CLL;
    v24[1] = 0xE700000000000000;
    v25._countAndFlagsBits = sub_100068148();
    sub_100067C48(v25);

    v2 = 0x2073746867694CLL;
    v1 = 0xE700000000000000;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_100067318();
  sub_1000026A8(v6, qword_100085CA0);

  v7 = sub_1000672F8();
  v8 = sub_100067E08();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_10000D4F0(v2, v1, v24);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD000000000000010, 0x800000010006C430, v24);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100066F28();
  sub_100067B38();
  sub_100066FA8();
  v11 = sub_100067BE8();
  v13 = v12;
  sub_100067A58();
  v15 = v14;
  v17 = v16;
  result = type metadata accessor for LightsCategoryEntry(0);
  v19 = a1 + result[5];
  *v19 = 1;
  *(v19 + 8) = 0;
  v20 = a1 + result[6];
  *v20 = 0;
  *(v20 + 8) = 0;
  v21 = a1 + result[7];
  *v21 = 1;
  *(v21 + 8) = 0;
  v22 = (a1 + result[8]);
  *v22 = v11;
  v22[1] = v13;
  v23 = (a1 + result[9]);
  *v23 = v15;
  v23[1] = v17;
  *(a1 + result[10]) = 3;
  return result;
}

uint64_t sub_1000255C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100067A88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = qword_100085D28 + 1;
  if (__OFADD__(qword_100085D28, 1))
  {
    __break(1u);
  }

  else
  {
    v28 = v9;
    v29 = a1;
    v9 = v7;
    v30 = a2;
    ++qword_100085D28;
    v33 = 0x2073746867694CLL;
    v34 = 0xE700000000000000;
    v32 = v14;
    v35._countAndFlagsBits = sub_100068148();
    sub_100067C48(v35);

    v7 = v33;
    v3 = v34;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = a3;
  v15 = sub_100067318();
  sub_1000026A8(v15, qword_100085CA0);

  v16 = sub_1000672F8();
  v17 = sub_100067E08();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v7, v3, &v33);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C410, &v33);
    swift_arrayDestroy();
  }

  v19 = v29;
  v20 = sub_100067D28();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  (*(v8 + 16))(v10, v19, v9);
  v21 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v22 = (v28 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v31;
  *(v23 + 4) = v30;
  *(v23 + 5) = v24;
  (*(v8 + 32))(&v23[v21], v10, v9);
  v25 = &v23[v22];
  *v25 = v7;
  v25[1] = v3;

  sub_100024F48(0, 0, v13, &unk_100069B28, v23);
}

uint64_t sub_100025994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for LightsCategoryEntry(0);
  v12 = swift_task_alloc();
  v8[4] = v12;
  v13 = swift_task_alloc();
  v8[5] = v13;
  *v13 = v8;
  v13[1] = sub_100025A7C;

  return sub_100025C08(v12, a6, a7, a8);
}

uint64_t sub_100025A7C()
{

  return _swift_task_switch(sub_100025B78, 0, 0);
}

uint64_t sub_100025B78()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100028274(v1, type metadata accessor for LightsCategoryEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_100025C2C, 0, 0);
}

uint64_t sub_100025C2C()
{
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v1 = qword_100085C80;
  v0[14] = qword_100085C80;
  v2 = OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_currentHome;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[15] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_100025D3C;
  v6 = v0[12];
  v7 = v0[13];

  return sub_10002847C((v0 + 2), v3, v6, v7);
}

uint64_t sub_100025D3C()
{

  return _swift_task_switch(sub_100025E38, 0, 0);
}

uint64_t sub_100025E38()
{
  v1 = v0[6];
  if (!v1)
  {
    v21 = 0;
    goto LABEL_5;
  }

  v2 = v0[2];
  v3 = v0[3];
  if (v1 == 1)
  {
    v21 = 0;
    v1 = 0;
LABEL_5:
    v20 = 0;
    v3 = 0;
    v2 = 0;
    v4 = 1;
    goto LABEL_7;
  }

  v4 = 0;
  v20 = v0[4];
  v21 = v0[5];
LABEL_7:
  v5 = v0[15];
  v6 = v0[10];
  if (sub_100014FA4())
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  sub_100066F28();
  sub_100067A58();
  v9 = v8;
  v11 = v10;

  v12 = type metadata accessor for LightsCategoryEntry(0);
  v13 = v6 + v12[5];
  *v13 = v2;
  *(v13 + 8) = v4;
  v14 = v6 + v12[6];
  *v14 = v3;
  *(v14 + 8) = v4;
  v15 = v6 + v12[7];
  *v15 = v20;
  *(v15 + 8) = v4;
  v16 = (v6 + v12[8]);
  *v16 = v21;
  v16[1] = v1;
  v17 = (v6 + v12[9]);
  *v17 = v9;
  v17[1] = v11;
  *(v6 + v12[10]) = v7;
  v18 = v0[1];

  return v18();
}

uint64_t sub_100025F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v6 = sub_100067A88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = qword_100085D28 + 1;
  if (__OFADD__(qword_100085D28, 1))
  {
    __break(1u);
  }

  else
  {
    v39 = v8;
    v41 = a1;
    ++qword_100085D28;
    v44 = 0x2073746867694CLL;
    v45 = 0xE700000000000000;
    v43 = v13;
    v46._countAndFlagsBits = sub_100068148();
    sub_100067C48(v46);

    v3 = v45;
    v42 = v44;
    if (qword_100080788 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = sub_100067318();
  sub_1000026A8(v14, qword_100085CA0);

  v15 = sub_1000672F8();
  v16 = sub_100067E08();

  v17 = os_log_type_enabled(v15, v16);
  v38 = v3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v12;
    v44 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10000D4F0(v42, v3, &v44);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006C390, &v44);
    swift_arrayDestroy();
    v12 = v37;
  }

  v20 = v41;
  if ((sub_100067A78() & 1) == 0)
  {
    v21 = sub_1000672F8();
    v22 = sub_100067E08();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = v12;
      v24 = a3;
      v25 = v23;
      v26 = swift_slowAlloc();
      v44 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10000D4F0(0xD000000000000025, 0x800000010006CD60, &v44);
      _os_log_impl(&_mh_execute_header, v21, v22, "Notifying homed that '%s' is active", v25, 0xCu);
      sub_1000026F0(v26);
      v20 = v41;

      a3 = v24;
      v12 = v37;
    }

    v27 = [objc_opt_self() defaultCenter];
    v28 = sub_100067BA8();
    [v27 postNotificationName:v28 object:0];
  }

  v29 = sub_100067D28();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  (*(v7 + 16))(v9, v20, v6);
  v30 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v40;
  *(v32 + 5) = a3;
  (*(v7 + 32))(&v32[v30], v9, v6);
  v33 = &v32[v31];
  v34 = v38;
  *v33 = v42;
  *(v33 + 1) = v34;

  sub_100024F48(0, 0, v12, &unk_100069AE8, v32);
}

uint64_t sub_1000264F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100066F38();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_100067A28();
  v8[11] = swift_task_alloc();
  v10 = sub_1000024F4(&qword_1000813B0, &qword_100069B08);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100026658, 0, 0);
}

uint64_t sub_100026658()
{
  sub_1000024F4(&qword_1000813B8, &qword_100069B10);
  v1 = type metadata accessor for LightsCategoryEntry(0);
  v0[15] = v1;
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = xmmword_100068BF0;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100026788;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_100025C08(v3 + v2, v7, v5, v6);
}

uint64_t sub_100026788()
{

  return _swift_task_switch(sub_100026884, 0, 0);
}

uint64_t sub_100026884(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v12 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  v11 = v1[2];
  sub_100066F18();
  sub_100066F08();
  v8 = *(v7 + 8);
  v8(v4, v6);
  sub_100067A18();
  v8(v5, v6);
  sub_100027B70(&qword_1000813A0, type metadata accessor for LightsCategoryEntry, &unk_1000699BC);
  sub_100067AE8();
  v11(v2);
  (*(v3 + 8))(v2, v12);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100026A14()
{
  v0 = sub_100066FB8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100067B88();
  __chkstk_darwin(v1 - 8);
  sub_100067B38();
  sub_100066FA8();
  result = sub_100067BE8();
  qword_100085D18 = result;
  unk_100085D20 = v3;
  return result;
}

uint64_t sub_100026B34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100066F38();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100026BA0()
{
  v1 = v0;
  v2 = type metadata accessor for LightsCategoryView(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024F4(&qword_1000809B8, &qword_100068EC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  if (*(v1 + *(type metadata accessor for LightsCategoryEntry(0) + 40)) <= 2u)
  {
    sub_100066ED8();

    v12 = sub_100066EE8();
    v11 = *(v12 - 8);
    if ((*(v11 + 48))(v8, 1, v12) != 1)
    {
      (*(v11 + 32))(v10, v8, v12);
      (*(v11 + 56))(v10, 0, 1, v12);
      goto LABEL_7;
    }
  }

  else
  {
    v12 = sub_100066EE8();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  sub_100066ED8();
  sub_100066EE8();
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
  {
    sub_1000096A0(v8, &qword_1000809B8, &qword_100068EC0);
  }

LABEL_7:
  sub_100027588(v1, v4);
  v13 = *(v2 + 20);
  *&v4[v13] = swift_getKeyPath();
  sub_1000024F4(&qword_1000809C0, &unk_1000694F0);
  swift_storeEnumTagMultiPayload();
  sub_100027B70(&qword_1000813A8, type metadata accessor for LightsCategoryView, &unk_1000695D4);
  sub_1000677C8();
  sub_100028274(v4, type metadata accessor for LightsCategoryView);
  return sub_1000096A0(v10, &qword_1000809B8, &qword_100068EC0);
}

uint64_t sub_100026F2C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100066FB8();
  __chkstk_darwin(v1 - 8);
  v24[1] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000024F4(&qword_100081220, &qword_100069948);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - v6;
  v8 = sub_1000024F4(&qword_100081228, &qword_100069950);
  v24[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  v11 = sub_1000024F4(&qword_100081230, &qword_100069958);
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for LightsCategoryWidgetView(0);
  sub_100027B70(&qword_100081238, type metadata accessor for LightsCategoryWidgetView, &unk_100069A58);
  sub_1000274D0();
  sub_100067A08();
  if (qword_1000807B0 != -1)
  {
    swift_once();
  }

  v28 = qword_100085D18;
  v29 = unk_100085D20;
  v14 = sub_100027524();
  v15 = sub_1000025E8();
  sub_100067628();
  (*(v5 + 8))(v7, v4);
  sub_100067B38();
  sub_100066FA8();
  v32 = sub_100067BE8();
  v33 = v16;
  v28 = v4;
  v29 = &type metadata for String;
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100067608();

  (*(v24[0] + 8))(v10, v8);
  sub_1000024F4(&qword_100080910, &unk_100068DB0);
  v18 = sub_1000679B8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100068BF0;
  (*(v19 + 104))(v21 + v20, enum case for WidgetFamily.accessoryRectangular(_:), v18);
  v28 = v8;
  v29 = &type metadata for String;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v26;
  sub_100067618();

  return (*(v25 + 8))(v13, v22);
}

unint64_t sub_1000274D0()
{
  result = qword_100081240;
  if (!qword_100081240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081240);
  }

  return result;
}

unint64_t sub_100027524()
{
  result = qword_100081248;
  if (!qword_100081248)
  {
    sub_10000253C(&qword_100081220, &qword_100069948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100081248);
  }

  return result;
}

uint64_t sub_100027588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightsCategoryEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100066F38();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100027700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100066F38();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_1000277BC(uint64_t a1)
{
  sub_100066F38();
  if (v1 <= 0x3F)
  {
    sub_1000278C0(319, &qword_1000812B8, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_1000278C0(319, &qword_1000812C0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          sub_1000278C0(319, &unk_1000812C8, &type metadata for BlockOutError);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000278C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100067E98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100027930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightsCategoryEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000279B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LightsCategoryEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100027A20()
{
  sub_10000253C(&qword_100081230, &qword_100069958);
  sub_10000253C(&qword_100081228, &qword_100069950);
  sub_10000253C(&qword_100081220, &qword_100069948);
  sub_100027524();
  sub_1000025E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100027B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027BDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100004474;

  return sub_1000264F0(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100027D24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027E1C;

  return v6(a1);
}

uint64_t sub_100027E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024F4(&qword_1000809D0, &qword_100068F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027F84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027FBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005B50;

  return sub_100027D24(a1, v4);
}

uint64_t sub_100028074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004474;

  return sub_100027D24(a1, v4);
}

uint64_t sub_10002812C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100067A88() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005B50;

  return sub_100025994(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100028274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000282D4()
{
  type metadata accessor for LightsCategoryView(255);
  sub_100027B70(&qword_1000813A8, type metadata accessor for LightsCategoryView, &unk_1000695D4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100028364(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100067FC8();
  }

  else if (*(a2 + 16) && (sub_100009700(0, &qword_100080B50, HMCharacteristic_ptr), v5 = sub_100067E78(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100067E88();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10002847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return _swift_task_switch(sub_1000284A4, 0, 0);
}

uint64_t sub_1000284A4()
{
  v28 = v0;
  if (qword_1000807A8 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = sub_100067318();
  v0[48] = sub_1000026A8(v2, qword_100085D00);
  v3 = v1;

  v4 = sub_1000672F8();
  v5 = sub_100067E08();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[45];
    v6 = v0[46];
    v8 = v0[44];
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_10000D4F0(v7, v6, &v27);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D4F0(0xD00000000000001BLL, 0x800000010006CE10, &v27);
    *(v9 + 22) = 2080;
    if (v8)
    {
      v10 = [v3 name];
      v11 = sub_100067BC8();
      v13 = v12;
    }

    else
    {
      v13 = 0xE800000000000000;
      v11 = 0x656D6F68206C696ELL;
    }

    v14 = sub_10000D4F0(v11, v13, &v27);

    *(v9 + 24) = v14;
    swift_arrayDestroy();
  }

  if (v0[44])
  {
    v15 = qword_1000807B8;
    v16 = v3;
    if (v15 != -1)
    {
      v26 = v16;
      swift_once();
      v16 = v26;
    }

    v17 = qword_100085D30;
    v18 = v16;
    v19 = swift_task_alloc();
    v0[49] = v19;
    *v19 = v0;
    v19[1] = sub_1000287DC;
    v20 = v0[46];
    v21 = v0[44];
    v22 = v0[45];

    return LockScreenDataModel.reloadCharacteristics(matching:for:fetchId:)(v17, v21, v22, v20);
  }

  else
  {
    v24 = v0[43];
    *(v24 + 32) = 0;
    *v24 = 0u;
    *(v24 + 16) = 0u;
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1000287DC(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return _swift_task_switch(sub_1000288DC, 0, 0);
}

uint64_t sub_1000288DC()
{
  v59 = v0;
  v1 = (v0 + 264);
  *(v0 + 288) = 0;
  if (qword_1000807C0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v2 = *(v0 + 352);
    v3 = qword_100085D68;
    v5 = xmmword_100085D48;
    v4 = *&qword_100085D58;
    *(v0 + 16) = xmmword_100085D38;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    v6 = [v2 accessories];
    sub_100009700(0, &qword_100080A10, HMAccessory_ptr);
    v7 = sub_100067CA8();

    *(v0 + 192) = *(v0 + 16);
    *(v0 + 280) = *(v0 + 32);
    *v1 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_100009578(v0 + 192, v0 + 208);
    sub_1000095D4(v0 + 280, v0 + 296, &qword_100080A18, &unk_100068FE0);
    sub_1000095D4(v0 + 272, v0 + 304, &qword_100080A18, &unk_100068FE0);
    sub_1000095D4(v1, v0 + 312, &qword_100080A20, &unk_10006B880);
    sub_1000026E0(v8, v9);
    v10 = sub_1000126F8(v7, (v0 + 16));
    sub_10000963C(v0 + 192);
    sub_1000096A0(v0 + 280, &qword_100080A18, &unk_100068FE0);
    sub_1000096A0(v0 + 272, &qword_100080A18, &unk_100068FE0);
    sub_1000096A0(v1, &qword_100080A20, &unk_10006B880);
    sub_100009690(v8, v9);

    v57 = 0;
    v54 = v10 >> 62;
    if (v10 >> 62)
    {
      break;
    }

    v1 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_16;
    }

LABEL_4:
    v11 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = sub_100068058();
      }

      else
      {
        if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v12 = *&v10[v11 + 4];
      }

      v13 = v12;
      v14 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = *(v0 + 400);
      v16 = *(v0 + 360);
      v17 = *(v0 + 368);
      v58[0] = v12;
      sub_100028FF4(&v57, v58, v16, v17, v15, (v0 + 288), "{%s} lightbulb '%s' cached value is: %@");

      ++v11;
      if (v14 == v1)
      {
        v56 = v57;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v1 = sub_1000680C8();
  if (v1)
  {
    goto LABEL_4;
  }

LABEL_16:
  v56 = 0;
LABEL_17:
  if (qword_1000807C8 != -1)
  {
    goto LABEL_30;
  }

  while (2)
  {
    v18 = *(v0 + 352);
    v55 = v18;
    v19 = *&qword_100085D80;
    *(v0 + 72) = xmmword_100085D70;
    *(v0 + 88) = v19;
    *(v0 + 104) = xmmword_100085D90;
    *(v0 + 120) = qword_100085DA0;
    v20 = [v18 accessories];
    v21 = sub_100067CA8();

    *(v0 + 176) = *(v0 + 72);
    *(v0 + 256) = *(v0 + 88);
    *(v0 + 240) = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    sub_100009578(v0 + 176, v0 + 224);
    sub_1000095D4(v0 + 256, v0 + 320, &qword_100080A18, &unk_100068FE0);
    sub_1000095D4(v0 + 248, v0 + 328, &qword_100080A18, &unk_100068FE0);
    sub_1000095D4(v0 + 240, v0 + 336, &qword_100080A20, &unk_10006B880);
    sub_1000026E0(v22, v23);
    v24 = sub_1000126F8(v21, (v0 + 72));
    sub_10000963C(v0 + 176);
    sub_1000096A0(v0 + 256, &qword_100080A18, &unk_100068FE0);
    sub_1000096A0(v0 + 248, &qword_100080A18, &unk_100068FE0);
    sub_1000096A0(v0 + 240, &qword_100080A20, &unk_10006B880);
    sub_100009690(v22, v23);

    v57 = 0;
    v25 = v24 >> 62;
    if (!(v24 >> 62))
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        break;
      }

      goto LABEL_20;
    }

    v26 = sub_1000680C8();
    if (v26)
    {
LABEL_20:
      v27 = 0;
      v28 = v10;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = sub_100068058();
        }

        else
        {
          if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v29 = *&v24[v27 + 4];
        }

        v30 = v29;
        v10 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v31 = *(v0 + 400);
        v32 = *(v0 + 360);
        v33 = *(v0 + 368);
        v58[0] = v29;
        sub_100028FF4(&v57, v58, v32, v33, v31, (v0 + 288), "{%s} outlet or switch light '%s' cached value is: %@");

        ++v27;
        if (v10 == v26)
        {
          v10 = v28;
          v34 = v57;
          v25 = v24 >> 62;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
      continue;
    }

    break;
  }

  v34 = 0;
LABEL_33:

  v36 = v56 + v34;
  if (__OFADD__(v56, v34))
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  if (v54)
  {
    v37 = sub_1000680C8();
  }

  else
  {
    v37 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v38 = sub_1000680C8();
  }

  else
  {
    v38 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (v39)
  {
    goto LABEL_50;
  }

  v41 = sub_1000672F8();
  v42 = sub_100067E08();

  if (os_log_type_enabled(v41, v42))
  {
    v44 = *(v0 + 360);
    v43 = *(v0 + 368);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58[0] = v46;
    *v45 = 136316162;
    *(v45 + 4) = sub_10000D4F0(v44, v43, v58);
    *(v45 + 12) = 2048;
    *(v45 + 14) = v56;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v34;
    *(v45 + 32) = 2048;
    swift_beginAccess();
    *(v45 + 34) = *(v0 + 288);
    *(v45 + 42) = 2048;
    *(v45 + 44) = v40;
    _os_log_impl(&_mh_execute_header, v41, v42, "{%s} lightbulbs on: %ld switches for lightbulbs on: %ld nonresponsive lights: %ld totalLightsInHome: %ld", v45, 0x34u);
    sub_1000026F0(v46);
  }

  v47 = *(v0 + 352);
  if (v40 < 1)
  {

    v36 = 0;
    v51 = 0;
    v40 = 0;
    v48 = 0;
    v50 = 0;
  }

  else
  {
    v48 = sub_10002951C(v36, v40);
    v50 = v49;

    swift_beginAccess();
    v51 = *(v0 + 288);
  }

  v52 = *(v0 + 344);
  *v52 = v36;
  v52[1] = v51;
  v52[2] = v40;
  v52[3] = v48;
  v52[4] = v50;
  v53 = *(v0 + 8);

  return v53();
}

void sub_100028FF4(void *a1, void **a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, const char *a7, ...)
{
  v10 = *a2;
  if (qword_1000807A8 != -1)
  {
    swift_once();
  }

  v11 = sub_100067318();
  sub_1000026A8(v11, qword_100085D00);
  v12 = v10;

  v13 = sub_1000672F8();
  v14 = sub_100067E08();

  v15 = &LockScreenDataModel;
  if (!os_log_type_enabled(v13, v14))
  {

    goto LABEL_14;
  }

  v31 = v11;
  v32 = a6;
  v16 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *v16 = 136315650;
  v17 = a3;
  *(v16 + 4) = sub_10000D4F0(a3, a4, &v41);
  *(v16 + 12) = 2080;
  v18 = sub_100067E38();
  v20 = sub_10000D4F0(v18, v19, &v41);

  *(v16 + 14) = v20;
  *(v16 + 22) = 2112;
  if ([v12 value])
  {
    sub_100067ED8();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  a3 = v17;
  if (!*(&v38 + 1))
  {
    sub_1000096A0(&v39, &qword_100080A28, &qword_100068F60);
    v15 = &LockScreenDataModel;
    goto LABEL_12;
  }

  sub_100009700(0, &qword_100080A40, NSObject_ptr);
  v15 = &LockScreenDataModel;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v21 = sub_100067BA8();
    goto LABEL_13;
  }

  v21 = v36;
LABEL_13:
  *(v16 + 24) = v21;
  *v30 = v21;
  _os_log_impl(&_mh_execute_header, v13, v14, a7, v16, 0x20u);
  sub_1000096A0(v30, &qword_100080CA0, &qword_100069100);

  swift_arrayDestroy();

  a6 = v32;
  v11 = v31;
LABEL_14:
  if ((sub_100028364(v12, a5) & 1) == 0)
  {
    if ([v12 v15[13].ivar_lyt])
    {
      sub_100067ED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      sub_100009700(0, &qword_100080A30, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v22 = v41;
        v23 = [v41 BOOLValue];

        if (__OFADD__(*a1, v23))
        {
          __break(1u);
        }

        else
        {
          *a1 += v23;
        }

        return;
      }
    }

    else
    {
      sub_1000096A0(&v39, &qword_100080A28, &qword_100068F60);
    }
  }

  swift_beginAccess();
  if (__OFADD__(*a6, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  ++*a6;
  if (qword_100080798 != -1)
  {
LABEL_29:
    swift_once();
  }

  sub_1000026A8(v11, qword_100085CD0);

  v24 = sub_1000672F8();
  v25 = sub_100067E08();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = a3;
    v29 = v27;
    v41 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000D4F0(v28, a4, &v41);
    *(v26 + 12) = 2048;
    swift_beginAccess();
    *(v26 + 14) = *a6;
    _os_log_impl(&_mh_execute_header, v24, v25, "{%s} non-responsive light bulb count: %ld", v26, 0x16u);
    sub_1000026F0(v29);
  }
}

uint64_t sub_10002951C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100066FB8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100067B88();
  __chkstk_darwin(v5 - 8);
  if (a1 && a2 != a1)
  {
    sub_100067B38();
    sub_100066FA8();
    sub_100067BE8();
    sub_1000024F4(&qword_1000811F0, &qword_1000698D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100068BF0;
    *(v7 + 56) = &type metadata for Int;
    *(v7 + 64) = &protocol witness table for Int;
    *(v7 + 32) = a1;
    v8 = sub_100067BD8();

    return v8;
  }

  else
  {
    sub_100067B38();
    sub_100066FA8();
    return sub_100067BE8();
  }
}

uint64_t sub_100029744()
{
  sub_1000024F4(&qword_1000808D0, &unk_100068C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100069B30;
  if (qword_1000807C0 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_100085D38 + 1);
  v2 = xmmword_100085D48;
  v3 = qword_100085D58;
  v4 = qword_100085D60;
  v5 = qword_100085D68;
  *(v0 + 32) = xmmword_100085D38;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;

  sub_1000026E0(v4, v5);
  if (qword_1000807C8 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_100085D70 + 1);
  v7 = qword_100085D80;
  v8 = qword_100085D88;
  v9 = xmmword_100085D90;
  v10 = qword_100085DA0;
  *(v0 + 88) = xmmword_100085D70;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  *(v0 + 136) = v10;
  qword_100085D30 = v0;

  return sub_1000026E0(*(&v9 + 1), v10);
}

uint64_t sub_1000298B4()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024F4(&qword_100080A48, &qword_10006A590);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v11 = xmmword_100068BF0;
  *(v7 + 16) = xmmword_100068BF0;
  (*(v5 + 104))(v7 + v6, enum case for ServiceKind.lightbulb(_:), v4);
  (*(v1 + 104))(v3, enum case for CharacteristicKind.powerState(_:), v0);
  sub_1000024F4(&qword_100080A50, &qword_100068FF0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v11;
  result = (*(v1 + 32))(v9 + v8, v3, v0);
  *&xmmword_100085D38 = 0x6C7562746867694CLL;
  *(&xmmword_100085D38 + 1) = 0xEA00000000007362;
  *&xmmword_100085D48 = v7;
  *(&xmmword_100085D48 + 1) = _swiftEmptyArrayStorage;
  qword_100085D60 = 0;
  qword_100085D68 = 0;
  qword_100085D58 = v9;
  return result;
}

uint64_t sub_100029AF4()
{
  v0 = sub_100067228();
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  v2 = v1;
  __chkstk_darwin(v0);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0x800000010006CE80;
  sub_1000024F4(&qword_100080A48, &qword_10006A590);
  v4 = sub_1000670C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v18 = v8;
  *(v8 + 16) = xmmword_100069B30;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v8 + v7, enum case for ServiceKind.outlet(_:), v4);
  v10(v9 + v6, enum case for ServiceKind.switch(_:), v4);
  v11 = swift_allocObject();
  v17 = xmmword_100068BF0;
  *(v11 + 16) = xmmword_100068BF0;
  v10(v11 + v7, enum case for ServiceKind.lightbulb(_:), v4);
  v13 = v19;
  v12 = v20;
  (*(v2 + 104))(v19, enum case for CharacteristicKind.powerState(_:), v20);
  sub_1000024F4(&qword_100080A50, &qword_100068FF0);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v17;
  result = (*(v2 + 32))(v15 + v14, v13, v12);
  *&xmmword_100085D70 = 0xD00000000000001CLL;
  *(&xmmword_100085D70 + 1) = v22;
  qword_100085D80 = v18;
  qword_100085D88 = v11;
  xmmword_100085D90 = v15;
  qword_100085DA0 = 0;
  return result;
}

int *sub_100029DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100066FB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100067B88();
  __chkstk_darwin(v3 - 8);
  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v4 = sub_100014FA4();
  if (v4)
  {
    v5 = 0xD000000000000020;
  }

  else
  {
    v5 = 0x65706F2E6B636F6CLL;
  }

  if (v4)
  {
    v6 = 0x800000010006C9A0;
  }

  else
  {
    v6 = 0xEE006C6C69662E6ELL;
  }

  sub_100066F28();
  sub_100067B38();
  sub_100066FA8();
  v7 = sub_100067BE8();
  v9 = v8;
  sub_100067A58();
  v11 = v10;
  v13 = v12;
  result = type metadata accessor for SecurityAccessoryEntry(0);
  v15 = a1 + result[5];
  *v15 = v7;
  *(v15 + 8) = v9;
  *(v15 + 16) = v5;
  *(v15 + 24) = v6;
  *(v15 + 32) = 0x9380E29380E2;
  *(v15 + 40) = 0xA600000000000000;
  *(v15 + 48) = 0;
  v16 = (a1 + result[6]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + result[7]);
  *v17 = v11;
  v17[1] = v13;
  return result;
}

uint64_t sub_100029FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_100066F38();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for SecurityIntentAccessoryAppEntity(0);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  sub_1000024F4(&qword_100080DC0, &qword_100069E30);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10002A13C, 0, 0);
}

void sub_10002A13C()
{
  v74 = v0;
  if (qword_100080788 != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = sub_100067318();
  v0[17] = sub_1000026A8(v1, qword_100085CA0);

  v2 = sub_1000672F8();
  v3 = sub_100067E08();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = v0[11];
    v72 = v0[10];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10000D4F0(v7, v6, &v73);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10000D4F0(0xD00000000000001ELL, 0x800000010006C9D0, &v73);
    *(v8 + 22) = 2080;
    sub_100066CB8();
    v9 = (*(v5 + 48))(v4, 1, v72);
    v10 = v0[16];
    if (v9)
    {
      v11 = 1819047278;
      sub_1000181B8(v10);
      v12 = 0xE400000000000000;
    }

    else
    {
      v13 = v0[12];
      v14 = v0[16];
      sub_10001826C(v10, v13);
      sub_1000181B8(v14);
      v11 = sub_100066F58();
      v12 = v15;
      sub_1000182D0(v13);
    }

    v16 = sub_10000D4F0(v11, v12, &v73);

    *(v8 + 24) = v16;
    swift_arrayDestroy();
  }

  if (qword_100080778 != -1)
  {
    swift_once();
  }

  v17 = v0[15];
  v18 = v0[10];
  v19 = v0[11];
  v20 = qword_100085C80;
  v0[18] = qword_100085C80;
  sub_100066CB8();
  v21 = *(v19 + 48);
  v0[19] = v21;
  v0[20] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v70 = v21;
  v22 = v21(v17, 1, v18);
  v23 = v0[15];
  if (v22)
  {
    sub_1000181B8(v23);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = v0[12];
    v27 = v0[15];
    sub_10001826C(v23, v26);
    sub_1000181B8(v27);
    v24 = sub_100066F58();
    v25 = v28;
    sub_1000182D0(v26);
  }

  v29 = [*&v20[OBJC_IVAR____TtC20HomeWidgetLockScreen19LockScreenDataModel_homeManager] homes];
  sub_100018220();
  v30 = sub_100067CA8();

  if (v30 >> 62)
  {
    v31 = sub_1000680C8();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v30 & 0xC000000000000001;
  v71 = v20;

  v33 = 0;
  while (v31 != v33)
  {
    if (v32)
    {
      v34 = sub_100068058();
    }

    else
    {
      if (v33 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v34 = *(v30 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = sub_1000164B8(v24, v25, v34);

    if (v36)
    {
      v31 = v33;
      break;
    }

    if (__OFADD__(v33++, 1))
    {
      goto LABEL_46;
    }
  }

  if (v30 >> 62)
  {
    if (v31 != sub_1000680C8())
    {
LABEL_27:
      if (v32)
      {
        v38 = sub_100068058();
      }

      else
      {
        if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_51;
        }

        v38 = *(v30 + 32 + 8 * v31);
      }

      v39 = v38;
      v40 = sub_1000164B8(v24, v25, v38);
      v0[21] = v40;

      swift_bridgeObjectRelease_n();
      if (v40)
      {

        v41 = v40;
        v42 = sub_1000672F8();
        v43 = sub_100067E08();

        if (os_log_type_enabled(v42, v43))
        {
          v45 = v0[5];
          v44 = v0[6];
          v46 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_10000D4F0(v45, v44, &v73);
          *(v46 + 12) = 2080;
          v47 = [v41 name];
          v48 = sub_100067BC8();
          v50 = v49;

          v51 = sub_10000D4F0(v48, v50, &v73);

          *(v46 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v42, v43, "...{%s} found homeAccessory: %s", v46, 0x16u);
          swift_arrayDestroy();
        }

        v52 = v41;
        v53 = swift_task_alloc();
        v0[22] = v53;
        *v53 = v0;
        v53[1] = sub_10002AA28;

        sub_10005EE6C(v40);
        return;
      }

LABEL_51:
      __break(1u);
      return;
    }
  }

  else if (v31 != *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  swift_bridgeObjectRelease_n();

  v54 = sub_1000672F8();
  v55 = sub_100067E08();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v0[13];
    v57 = v0[10];
    v59 = v0[5];
    v58 = v0[6];
    v60 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v60 = 136315394;
    *(v60 + 4) = sub_10000D4F0(v59, v58, &v73);
    *(v60 + 12) = 2080;
    sub_100066CB8();
    v61 = v70(v56, 1, v57);
    v62 = v0[13];
    if (v61)
    {
      v63 = 1819047278;
      sub_1000181B8(v62);
      v64 = 0xE400000000000000;
    }

    else
    {
      v65 = v0[12];
      v66 = v0[13];
      sub_10001826C(v62, v65);
      sub_1000181B8(v66);
      v63 = sub_100066F58();
      v64 = v67;
      sub_1000182D0(v65);
    }

    v68 = sub_10000D4F0(v63, v64, &v73);

    *(v60 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v54, v55, "...{%s} did NOT find HMAccessory for %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  sub_100029DA4(v0[2]);

  v69 = v0[1];

  v69();
}

uint64_t sub_10002AA28(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  *(v3 + 184) = a1;
  *(v3 + 192) = a2;

  return _swift_task_switch(sub_10002AB48, 0, 0);
}

uint64_t sub_10002AB48()
{
  v60 = v0;

  v1 = sub_1000672F8();
  v2 = sub_100067E08();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 184);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v7 = 136315906;
    *(v7 + 4) = sub_10000D4F0(v6, v5, &v59);
    *(v7 + 12) = 2048;
    if (v3)
    {
      v8 = -1;
    }

    else
    {
      v8 = v4;
    }

    *(v7 + 14) = v8;
    *(v7 + 22) = 2080;
    v9 = sub_10005F45C(v4, v3 & 1);
    v11 = sub_10000D4F0(v9, v10, &v59);

    *(v7 + 24) = v11;
    *(v7 + 32) = 2080;
    if ((v3 & 1) == 0)
    {
      v12 = *(v0 + 184);
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v14 = 0x800000010006CED0;
          v13 = 0xD000000000000027;
          goto LABEL_12;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = 0x65706F2E6B636F6CLL;
          v14 = 0xEE006C6C69662E6ELL;
          goto LABEL_12;
        }

        if (v12 == 1)
        {
          v13 = 0x6C69662E6B636F6CLL;
          v14 = 0xE90000000000006CLL;
LABEL_12:
          v15 = sub_10000D4F0(v13, v14, &v59);

          *(v7 + 34) = v15;
          _os_log_impl(&_mh_execute_header, v1, v2, "...{%s} got value: %ld, statusString: %s, iconName %s)", v7, 0x2Au);
          swift_arrayDestroy();

          goto LABEL_13;
        }
      }
    }

    v14 = 0x800000010006CEA0;
    v13 = 0xD000000000000022;
    goto LABEL_12;
  }

LABEL_13:

  if (sub_100014FA4())
  {
    v57 = 0x800000010006C9A0;
    v16 = *(v0 + 192);
    v17 = 0xD000000000000020;
LABEL_15:
    v58 = v17;
    goto LABEL_24;
  }

  v16 = *(v0 + 192);
  if (v16)
  {
    goto LABEL_22;
  }

  v18 = *(v0 + 184);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v57 = 0x800000010006CED0;
      v17 = 0xD000000000000027;
      goto LABEL_15;
    }

LABEL_22:
    v58 = 0xD000000000000022;
    v19 = 0x800000010006CEA0;
    goto LABEL_23;
  }

  if (!v18)
  {
    v58 = 0x65706F2E6B636F6CLL;
    v19 = 0xEE006C6C69662E6ELL;
    goto LABEL_23;
  }

  if (v18 != 1)
  {
    goto LABEL_22;
  }

  v58 = 0x6C69662E6B636F6CLL;
  v19 = 0xE90000000000006CLL;
LABEL_23:
  v57 = v19;
LABEL_24:
  v20 = *(v0 + 184);
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  v23 = *(v0 + 112);
  v24 = *(v0 + 80);
  sub_100066F28();
  v25 = [v21 name];
  v26 = sub_100067BC8();
  v55 = v27;
  v56 = v26;

  v28 = sub_10005F45C(v20, v16 & 1);
  v53 = v29;
  v54 = v28;
  sub_100066CB8();
  v30 = v22(v23, 1, v24);
  v31 = *(v0 + 112);
  if (v30)
  {
    sub_1000181B8(v31);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v34 = *(v0 + 96);
    v35 = *(v0 + 112);
    sub_10001826C(v31, v34);
    sub_1000181B8(v35);
    v32 = sub_100066F58();
    v33 = v36;
    sub_1000182D0(v34);
  }

  v37 = (v20 == 1) & ~v16;
  v38 = *(v0 + 168);
  v40 = *(v0 + 64);
  v39 = *(v0 + 72);
  v41 = *(v0 + 56);
  v42 = *(v0 + 16);
  sub_100067A58();
  v44 = v43;
  v46 = v45;

  (*(v40 + 32))(v42, v39, v41);
  v47 = type metadata accessor for SecurityAccessoryEntry(0);
  v48 = v42 + v47[5];
  *v48 = v56;
  *(v48 + 8) = v55;
  *(v48 + 16) = v58;
  *(v48 + 24) = v57;
  *(v48 + 32) = v54;
  *(v48 + 40) = v53;
  *(v48 + 48) = v37;
  v49 = (v42 + v47[6]);
  *v49 = v32;
  v49[1] = v33;
  v50 = (v42 + v47[7]);
  *v50 = v44;
  v50[1] = v46;

  v51 = *(v0 + 8);

  return v51();
}