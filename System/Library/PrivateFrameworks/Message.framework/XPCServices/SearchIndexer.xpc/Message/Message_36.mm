uint64_t sub_1002616C0@<X0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v96 = a5;
  v8 = a2;
  v11 = *(a2 + 144);
  v106[8] = *(a2 + 128);
  v106[9] = v11;
  v106[10] = *(a2 + 160);
  v107 = *(a2 + 176);
  v12 = *(a2 + 80);
  v106[4] = *(a2 + 64);
  v106[5] = v12;
  v13 = *(a2 + 112);
  v106[6] = *(a2 + 96);
  v106[7] = v13;
  v14 = *(a2 + 16);
  v106[0] = *a2;
  v106[1] = v14;
  v15 = *(a2 + 48);
  v106[2] = *(a2 + 32);
  v106[3] = v15;
  v40 = sub_10000FE88(v106) == 1;
  v98 = a4;
  v99 = a3;
  v97 = a6;
  v100 = a1;
  v16 = v106;
  if (v40)
  {
    v17 = UInt32.init(_:)(v106);
    v18 = *(v17 + 32);
    v19 = *(v17 + 48);
    v20 = *(v17 + 16);
    v119[0] = *v17;
    v119[1] = v20;
    v119[2] = v18;
    v119[3] = v19;
    v22 = *(v17 + 80);
    v21 = *(v17 + 96);
    v23 = *(v17 + 64);
    *&v119[7] = *(v17 + 112);
    v119[5] = v22;
    v119[6] = v21;
    v119[4] = v23;
    v24 = *&v119[1];
    if ((*&v119[1] & 0x1000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if ((*&v119[1] & 0x2000000000000000) != 0)
    {
      goto LABEL_15;
    }

    LODWORD(v16) = DWORD2(v119[0]);
    v25 = (*(&v119[0] + 1) & 0xFFFFFFFFFFFFLL) + 10;
    if (__OFADD__(*(&v119[0] + 1) & 0xFFFFFFFFFFFFLL, 10))
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_16:
      sub_100259A40(v119, &v103);
      sub_10026699C(a3, a4, v25, 0, a1, v119);
      sub_100051110(v8);
      LOBYTE(v103) = 59;
      a3(&v103, &v103 + 1);
      v31 = *&v119[2];
      if (*&v119[2])
      {
        v32 = *(&v119[2] + 1);
        v33 = *(&v119[1] + 1);
      }

      else
      {
        sub_100266C9C(_swiftEmptyArrayStorage);
        v33 = v34;
        v31 = v35;
        v32 = v36;
      }

      v37 = 0x797261646E756F62;
      v103 = v33;
      v104 = v31;
      v105 = v32;
      a1 = v32[2];
      swift_retain_n();
      v95 = v33;

      v102 = a1;
      if (!a1)
      {
        break;
      }

      a6 = 0;
      v8 = 0;
      while (v8 < *(v31 + 16))
      {
        if (v8 >= v32[2])
        {
          goto LABEL_110;
        }

        a4 = *(a6 + v32 + 32);
        a1 = *(a6 + v32 + 40);
        v38 = sub_1004A5814();
        a3 = v39;
        v40 = v38 == v37 && v39 == 0xE800000000000000;
        if (v40)
        {
          goto LABEL_42;
        }

        v101 = a4;
        a4 = v32;
        v41 = v37;
        v42 = sub_1004A6D34();

        if (v42)
        {

          a4 = v101;
          goto LABEL_44;
        }

        ++v8;

        a6 += 2;
        v37 = v41;
        v32 = a4;
        if (v102 == v8)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v16 = sub_1004A59E4();
      v25 = v16 + 10;
      if (__OFADD__(v16, 10))
      {
        goto LABEL_7;
      }
    }

LABEL_29:

    v43 = swift_allocObject();
    *(v43 + 16) = _swiftEmptyArrayStorage;
    sub_100259A9C(v96, v43);
    sub_100259A9C(v96, v43);
    swift_beginAccess();
    sub_100259BC0(0xD000000000000016, 0x80000001004AD530);
    swift_endAccess();
    sub_100259A9C(v96, v43);
    v44 = *(v43 + 16);
    swift_bridgeObjectRetain_n();

    v45 = sub_1004A58D4();
    v47 = v46;

    sub_1002626BC(v45, v47, v37, 0xE800000000000000);
    goto LABEL_45;
  }

  while (1)
  {
    v26 = UInt32.init(_:)(v16);
    v115 = v26[7];
    v116 = v26[8];
    v117 = v26[9];
    v118 = v26[10];
    v111 = v26[3];
    v112 = v26[4];
    v113 = v26[5];
    v114 = v26[6];
    v108 = *v26;
    v109 = v26[1];
    v110 = v26[2];
    v28 = (v108 & 0x3FFFFFFFFFFFFFFFLL);
    if (!(v108 >> 62))
    {
      v29 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v48 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v49 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v50 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if ((v48 & 0x1000000000000000) != 0)
      {
        v51 = sub_1004A59E4();
        if ((v50 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if ((v48 & 0x2000000000000000) == 0)
        {
          v51 = v29 & 0xFFFFFFFFFFFFLL;
          if ((v50 & 0x1000000000000000) == 0)
          {
            goto LABEL_33;
          }

LABEL_66:
          v52 = sub_1004A59E4();
          v28 = (v51 + v52);
          if (!__OFADD__(v51, v52))
          {
LABEL_70:
            v30 = v28 + 2;
            if (__OFADD__(v28, 2))
            {
              __break(1u);
              goto LABEL_123;
            }

            if (v30 < 0)
            {
              goto LABEL_143;
            }

            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v102 = v49;
            if (v30 >= 1025)
            {
              sub_1000510B4(v8, v119);

              sub_1000510B4(v8, v119);
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v94 = swift_slowAlloc();

                sub_1000510B4(v8, v119);
                sub_10026461C(v94, v94 + v30, 0, v100, v99, v98, v29, v48, v102, v50, &v108);

                v30 = v97;
                goto LABEL_86;
              }
            }

            else
            {
              sub_1000510B4(v8, v119);

              isStackAllocationSafe = sub_1000510B4(v8, v119);
            }

            v101 = &v95;
            __chkstk_darwin(isStackAllocationSafe);
            v73 = &v95 - v72;
            v74 = &v95 + v30 - v72;
            v75 = swift_allocObject();
            v75[2] = 0;
            v76 = v75 + 2;
            v75[3] = v30;
            v75[4] = v73;
            v75[5] = v74;
            sub_1002625DC(sub_100269B30, v75, v29, v48, v102, v50, &v108);
            swift_beginAccess();
            v77 = *v76;
            v78 = *(v100 + 1);
            if (v78 >= 1)
            {
              if (__OFADD__(v78, v77))
              {
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

              if (v78 + v77 >= 79)
              {
                v78 = v99;
                sub_1002652C0(*v100, v99);
                (v78)("\t", "");
                if (v77 < 0)
                {
LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }

                (v78)(v73, &v73[v77]);

                if (v30 < v77)
                {
                  goto LABEL_149;
                }

                v79 = v77 + 1;
                v30 = v97;
                if (!__OFADD__(v77, 1))
                {
LABEL_85:
                  *(v100 + 1) = v79;
LABEL_86:

                  sub_100051110(v8);
                  sub_100051110(v8);
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  result = sub_100260678(*(&v108 + 1), v109, *(&v109 + 1), v99, v98);
                  goto LABEL_107;
                }

                __break(1u);
              }
            }

            if (v77 < 0)
            {
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v99(v73, &v73[v77]);

            if (v30 < v77)
            {
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

            v79 = v78 + v77;
            v30 = v97;
            if (__OFADD__(v78, v77))
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            goto LABEL_85;
          }

          goto LABEL_36;
        }

        v51 = HIBYTE(v48) & 0xF;
        if ((v50 & 0x1000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

LABEL_33:
      if ((v50 & 0x2000000000000000) != 0)
      {
        v52 = HIBYTE(v50) & 0xF;
        v28 = (v51 + v52);
        if (!__OFADD__(v51, v52))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
        v28 = (v51 + (v49 & 0xFFFFFFFFFFFFLL));
        if (!__OFADD__(v51, v49 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_70;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v53 = v28[2];
      v54 = v28[3];
      a1 = v28[4];
      if ((v54 & 0x1000000000000000) != 0)
      {
        v91 = sub_1004A59E4();
        v55 = v91 + 6;
        if (!__OFADD__(v91, 6))
        {
LABEL_88:
          if (v55 < 0)
          {
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          if (v55 >= 1025)
          {
            sub_1000510B4(v8, v119);

            sub_1000510B4(v8, v119);

            v81 = swift_stdlib_isStackAllocationSafe();
            if ((v81 & 1) == 0)
            {
              v93 = swift_slowAlloc();
              sub_1000510B4(v8, v119);

              sub_100263BE8(v93, &v93[v55], 0, v100, v99, v98, v53, v54, a1, &v108);

              sub_100051110(v8);
              sub_100051110(v8);

              v86 = *(&v109 + 1);
              goto LABEL_105;
            }
          }

          else
          {
            sub_1000510B4(v8, v119);

            sub_1000510B4(v8, v119);
          }

          v102 = &v95;
          __chkstk_darwin(v81);
          v83 = &v95 - v82;
          v84 = &v95 + v55 - v82;
          v85 = swift_allocObject();
          v85[2] = 0;
          v85[3] = v55;
          v85[4] = v83;
          v85[5] = v84;
          sub_100264D48("text/", "", v85);
          sub_10026508C(v53, v54, sub_100267A90);
          v86 = *(&v109 + 1);
          if (*(*(&v109 + 1) + 16))
          {
            LOBYTE(v119[0]) = 59;
            sub_100264D48(v119, v119 + 1, v85);
          }

          swift_beginAccess();
          v87 = v85[2];
          v88 = *(v100 + 1);
          if (v88 >= 1)
          {
            if (__OFADD__(v88, v87))
            {
LABEL_139:
              __break(1u);
              goto LABEL_140;
            }

            if (v88 + v87 >= 79)
            {
              v88 = v99;
              sub_1002652C0(*v100, v99);
              (v88)("\t", "");
              if (v87 < 0)
              {
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              (v88)(v83, &v83[v87]);

              if (v55 < v87)
              {
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
              }

              v89 = v87 + 1;
              if (!__OFADD__(v87, 1))
              {
LABEL_104:
                *(v100 + 1) = v89;

                sub_100051110(v8);
                sub_100051110(v8);

LABEL_105:
                result = sub_100260678(*(&v108 + 1), v109, v86, v99, v98);
                goto LABEL_106;
              }

              __break(1u);
            }
          }

          if (v87 < 0)
          {
            goto LABEL_130;
          }

          v99(v83, &v83[v87]);

          if (v55 < v87)
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v89 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          goto LABEL_104;
        }
      }

      else if ((v54 & 0x2000000000000000) != 0)
      {
        v80 = HIBYTE(v54) & 0xF;
        v55 = v80 + 6;
        if (!__OFADD__(v80, 6))
        {
          goto LABEL_88;
        }
      }

      else
      {
        v55 = (v53 & 0xFFFFFFFFFFFFLL) + 6;
        if (!__OFADD__(v53 & 0xFFFFFFFFFFFFLL, 6))
        {
          goto LABEL_88;
        }
      }

      __break(1u);
LABEL_42:

LABEL_44:

      v44 = sub_10015BC90(a4, a1);

LABEL_45:
      sub_100260678(v103, v104, v105, v99, v98);

      *v97 = v44;
      return result;
    }

    if (v108 >> 62 != 1)
    {
      goto LABEL_37;
    }

    memcpy(v119, v28 + 2, 0x148uLL);
    a6 = *(&v119[0] + 1);
    v29 = *&v119[0];
    if ((*(&v119[0] + 1) & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((*(&v119[0] + 1) & 0x2000000000000000) != 0)
    {
      v57 = HIBYTE(*(&v119[0] + 1)) & 0xFLL;
      v30 = v57 + 9;
      if (!__OFADD__(v57, 9))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v30 = (*&v119[0] & 0xFFFFFFFFFFFFLL) + 9;
      if (!__OFADD__(*&v119[0] & 0xFFFFFFFFFFFFLL, 9))
      {
        goto LABEL_47;
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v16 = (HIBYTE(v24) & 0xF);
    v25 = v16 + 10;
    if (!__OFADD__(v16, 10))
    {
      goto LABEL_16;
    }

LABEL_7:
    __break(1u);
  }

  v90 = sub_1004A59E4();
  v30 = v90 + 9;
  if (__OFADD__(v90, 9))
  {
    goto LABEL_14;
  }

LABEL_47:
  if (v30 < 0)
  {
    goto LABEL_141;
  }

  v27 = &v103;
  v52 = v8;
  if (v30 < 1025)
  {
    sub_1000510B4(v8, &v103);
    sub_100259990(v119, &v103);
    sub_1000510B4(v8, &v103);
    v58 = sub_100259990(v119, &v103);
    goto LABEL_50;
  }

LABEL_123:
  sub_1000510B4(v52, v27);
  sub_100259990(v119, &v103);
  sub_1000510B4(v8, &v103);
  sub_100259990(v119, &v103);
  v58 = swift_stdlib_isStackAllocationSafe();
  if (v58)
  {
LABEL_50:
    __chkstk_darwin(v58);
    v60 = &v95 - v59;
    v61 = &v95 + v30 - v59;
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = v30;
    v62[4] = v60;
    v62[5] = v61;
    sub_100264D48("message/", "", v62);
    sub_10026508C(v29, a6, sub_100269B30);
    v63 = *(&v109 + 1);
    if (*(*(&v109 + 1) + 16))
    {
      LOBYTE(v103) = 59;
      sub_100264D48(&v103, &v103 + 1, v62);
    }

    swift_beginAccess();
    v64 = v62[2];
    v65 = *(v100 + 1);
    if (v65 >= 1)
    {
      if (__OFADD__(v65, v64))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      if (v65 + v64 >= 79)
      {
        v65 = v99;
        v66 = v98;
        sub_1002652C0(*v100, v99);
        (v65)("\t", "");
        if (v64 < 0)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        (v65)(v60, &v60[v64]);

        if (v30 < v64)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        v60 = v66;
        v67 = v64 + 1;
        v68 = v100;
        if (!__OFADD__(v64, 1))
        {
          goto LABEL_63;
        }

        __break(1u);
      }
    }

    if ((v64 & 0x8000000000000000) == 0)
    {
      v69 = &v60[v64];
      v70 = v60;
      v60 = v98;
      v99(v70, v69);

      if (v30 >= v64)
      {
        v67 = v65 + v64;
        v68 = v100;
        if (!__OFADD__(v65, v64))
        {
LABEL_63:
          *(v68 + 1) = v67;
          sub_1002599EC(v119);
          sub_100051110(v8);
          sub_100051110(v8);
          goto LABEL_64;
        }

        goto LABEL_134;
      }

      goto LABEL_131;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v92 = swift_slowAlloc();
  sub_1000510B4(v8, &v103);
  sub_100259990(v119, &v103);
  sub_100264128(v92, &v92[v30], 0, v100, v99, v98, v119, &v108);

  sub_1002599EC(v119);
  sub_100051110(v8);
  sub_100051110(v8);
  v63 = *(&v109 + 1);
  v60 = v98;
LABEL_64:
  sub_100260678(*(&v108 + 1), v109, v63, v99, v60);
  result = sub_1002599EC(v119);
LABEL_106:
  v30 = v97;
LABEL_107:
  *v30 = 0;
  return result;
}

uint64_t sub_1002625DC(double (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_10026508C(a3, a4, a1);
  v13 = 47;
  a1(&v13, &v14);
  result = sub_10026508C(a5, a6, a1);
  if (*(*(a7 + 24) + 16))
  {
    v12 = 59;
    return (a1)(&v12, &v13);
  }

  return result;
}

uint64_t sub_1002626BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {

    v12 = sub_1001E74AC(a3, a4, v10 + 32, v11, (v9 + 16), v9 + 32);
    v14 = v13;
    v11 = v15;

    if ((v14 & 1) == 0)
    {

      if (!a2)
      {
        goto LABEL_28;
      }

LABEL_22:
      v25 = v4[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001EDFFC(v25);
        v25 = result;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v12 < *(v25 + 16))
      {
        v26 = v25 + 16 * v12;
        *(v26 + 32) = a1;
        *(v26 + 40) = a2;

        v4[2] = v25;
        return result;
      }

      __break(1u);
      return result;
    }
  }

  else if (v11)
  {
    v12 = 0;
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      ++v12;
      v16 += 2;
      if (v11 == v12)
      {
        v11 = 0;
        goto LABEL_14;
      }
    }

    if (!a2)
    {
      v11 = 0;
LABEL_28:
      sub_1001E6930(v12, v11);

      sub_1001E6B20(v12);
LABEL_29:
    }

    goto LABEL_22;
  }

LABEL_14:
  if (!a2)
  {
    goto LABEL_29;
  }

  sub_1001E67B8(a3, a4, v11);

  v20 = v4[2];
  v18 = v4 + 2;
  v19 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v20;
  if ((result & 1) == 0)
  {
    result = sub_100091A08(0, *(v19 + 16) + 1, 1);
    v19 = *v18;
  }

  v23 = *(v19 + 16);
  v22 = *(v19 + 24);
  if (v23 >= v22 >> 1)
  {
    result = sub_100091A08((v22 > 1), v23 + 1, 1);
    v19 = *v18;
  }

  *(v19 + 16) = v23 + 1;
  v24 = v19 + 16 * v23;
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *v18 = v19;
  return result;
}

uint64_t sub_1002628DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = a1;
  v13 = &type metadata for UnsafeRawBufferPointer;
  v14 = &protocol witness table for UnsafeRawBufferPointer;
  v11 = "X-Apple-Content-Length";
  v12 = "";
  sub_10002587C(&v11, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v11);
  v13 = &type metadata for UnsafeRawBufferPointer;
  v14 = &protocol witness table for UnsafeRawBufferPointer;
  v11 = ": ";
  v12 = "";
  sub_10002587C(&v11, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v11);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004E9FF0;
  *(v5 + 32) = v10;
  *(v5 + 40) = &v11;
  v11 = a2;
  v6 = sub_1004A6CE4();
  sub_100266E78(v6, v7, v5);

  swift_beginAccess();
  v8 = *(v5 + 16);
  if (__OFADD__(v8, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v8 + 24) < 79)
  {
    goto LABEL_6;
  }

  sub_100267804(v4);
  v13 = &type metadata for UnsafeRawBufferPointer;
  v14 = &protocol witness table for UnsafeRawBufferPointer;
  v11 = "\t";
  v12 = "";
  sub_10002587C(&v11, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v11);
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = &type metadata for UnsafeRawBufferPointer;
  v14 = &protocol witness table for UnsafeRawBufferPointer;
  v11 = v10;
  v12 = &v10[v8];
  sub_10002587C(&v11, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v11);

  if (v8 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v8 & 0x8000000000000000) == 0)
    {
      v13 = &type metadata for UnsafeRawBufferPointer;
      v14 = &protocol witness table for UnsafeRawBufferPointer;
      v11 = v10;
      v12 = &v10[v8];
      sub_10002587C(&v11, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v11);

      if (v8 <= 0x46)
      {
        return sub_100267804(v4);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_100267804(v4);
}

uint64_t sub_100262B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4)
{
  v5 = a1;
  a3("X-Apple-Content-Length", "");
  a3(": ", "");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004E9FF0;
  *(v6 + 32) = v11;
  *(v6 + 40) = &v12;
  v7 = sub_1004A6CE4();
  sub_100266E78(v7, v8, v6);

  swift_beginAccess();
  v9 = *(v6 + 16);
  if (__OFADD__(v9, 24))
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v9 + 24) < 79)
  {
    goto LABEL_6;
  }

  sub_1002652C0(v5, a3);
  a3("\t", "");
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a3(v11, &v11[v9]);

  if (v9 > 0x46)
  {
    __break(1u);
LABEL_6:
    if ((v9 & 0x8000000000000000) == 0)
    {
      a3(v11, &v11[v9]);

      if (v9 <= 0x46)
      {
        return sub_1002652C0(v5, a3);
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sub_1002652C0(v5, a3);
}

unint64_t sub_100262D2C(uint64_t a1, uint64_t a2)
{

  while (1)
  {
    v2 = sub_1004A59D4();
    v4 = v3;
    if (!v3)
    {
      goto LABEL_24;
    }

    v5 = v2;
    if (v2 == 2573 && v3 == 0xE200000000000000)
    {
      goto LABEL_17;
    }

    result = sub_1004A6D34();
    if (result)
    {
      goto LABEL_17;
    }

    v7 = (v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v5 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v8 = sub_1004A5884();
    }

    else
    {
      v8 = sub_1004A6704(0) << 16;
    }

    if (v8 >> 14 != 4 * v7)
    {
      goto LABEL_23;
    }

    result = sub_1001E11BC(v5, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_27;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_23:

LABEL_24:

      return v4 == 0;
    }

    result = sub_1001E11BC(v5, v4);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_26;
    }

LABEL_17:
    v9 = sub_100262EC4(v5, v4);

    if ((v9 & 0x100) != 0 || v9 - 127 < 0xFFFFFFA2 || v9 - 34 <= 0x3B && ((1 << (v9 - 34)) & 0xE0000007F0024C1) != 0)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100262EC4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_1004A5A24();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_1004A67E4();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_100262F54(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v19 = a9;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v17);
  }

  sub_10026751C(a5, a6, v18);
  LOBYTE(v35) = 61;
  sub_100264D48(&v35, &v35 + 1, v18);
  sub_1002681A0(a7, a8, v18);
  if ((a9 & 1) == 0)
  {
    LOBYTE(v35) = 59;
    sub_100264D48(&v35, &v35 + 1, v18);
  }

  swift_beginAccess();
  v20 = v18[2];
  v21 = *(a4 + 1);
  if (v21 >= 1)
  {
    v22 = __OFADD__(v21, v20);
    v23 = v21 + v20;
    if (v22)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v23 >= 79)
    {
      sub_100267804(*a4);
      v19 = &type metadata for UnsafeRawBufferPointer;
      v37 = &type metadata for UnsafeRawBufferPointer;
      v38 = &protocol witness table for UnsafeRawBufferPointer;
      v35 = "\t";
      v36 = "";
      sub_10002587C(&v35, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v35);
      if (a3)
      {
        if (v20 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v24 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v20 < 0)
      {
        goto LABEL_34;
      }

      v24 = 0;
LABEL_23:
      v29 = &a1[v24];
      v30 = &a1[v20];
      if (!a1)
      {
        v30 = 0;
      }

      v37 = v19;
      v38 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v29 = 0;
      }

      v35 = v29;
      v36 = v30;
      sub_10002587C(&v35, v19);
      sub_1004A43F4();
      sub_1000197E0(&v35);
      v31 = sub_1002881FC(v24, v20, a1, a2);
      v28 = v31 + 1;
      if (!__OFADD__(v31, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v20 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = &a1[v20];
  if (!a1)
  {
    v25 = 0;
  }

  v37 = &type metadata for UnsafeRawBufferPointer;
  v38 = &protocol witness table for UnsafeRawBufferPointer;
  v35 = a1;
  v36 = v25;
  sub_10002587C(&v35, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v35);
  v26 = sub_1002881FC(0, v20, a1, a2);
  v27 = *(a4 + 1);
  v22 = __OFADD__(v27, v26);
  v28 = v27 + v26;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v28;
}

uint64_t sub_10026322C(char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, char a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v19 = v18;
  v20 = a3;
  v21 = a5;
  v22 = a4;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  v36 = v20;
  if (v20)
  {
    sub_100264D48(" ", "", v18);
  }

  sub_10026508C(a7, a8, sub_100269B30);
  v38 = 61;
  sub_100264D48(&v38, v39, v19);
  sub_100265D60(a9, a10, sub_100269B30);
  if ((a11 & 1) == 0)
  {
    v38 = 59;
    sub_100264D48(&v38, v39, v19);
  }

  swift_beginAccess();
  v23 = v19[2];
  v24 = *(a4 + 1);
  if (v24 >= 1)
  {
    v25 = __OFADD__(v24, v23);
    v26 = v24 + v23;
    if (v25)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v26 >= 79)
    {
      sub_1002652C0(*a4, v21);
      v21("\t", "");
      if (v36)
      {
        if (v23 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v27 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v23 < 0)
      {
        goto LABEL_37;
      }

      v27 = 0;
LABEL_24:
      if (a1)
      {
        v32 = &a1[v23];
      }

      else
      {
        v32 = 0;
      }

      if (a1)
      {
        v33 = &a1[v27];
      }

      else
      {
        v33 = 0;
      }

      v21(v33, v32);
      v34 = sub_1002881FC(v27, v23, a1, a2);
      v31 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v23 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v28 = &a1[v23];
  }

  else
  {
    v28 = 0;
  }

  v21(a1, v28);
  v29 = sub_1002881FC(0, v23, a1, a2);
  v30 = *(a4 + 1);
  v25 = __OFADD__(v30, v29);
  v31 = v30 + v29;
  if (v25)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(v22 + 1) = v31;
}

void sub_1002634CC(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v11 = a2 - a1;
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_allocObject();
  if (v11 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12;
  v12[2] = 0;
  v12[3] = v11;
  v12[4] = a1;
  v12[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v12);
  }

  sub_100264D48("multipart/", "", v13);
  sub_10026751C(*(a5 + 8), *(a5 + 16), v13);
  swift_beginAccess();
  v14 = v13[2];
  v15 = *(a4 + 1);
  if (v15 < 1)
  {
    goto LABEL_13;
  }

  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 < 79)
  {
LABEL_13:
    if ((v14 & 0x8000000000000000) == 0)
    {
      v19 = &a1[v14];
      if (!a1)
      {
        v19 = 0;
      }

      v28 = &type metadata for UnsafeRawBufferPointer;
      v29 = &protocol witness table for UnsafeRawBufferPointer;
      v26 = a1;
      v27 = v19;
      sub_10002587C(&v26, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v26);
      v20 = sub_1002881FC(0, v14, a1, a2);
      v21 = *(a4 + 1);
      v16 = __OFADD__(v21, v20);
      v22 = v21 + v20;
      if (!v16)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_100267804(*a4);
  v11 = &type metadata for UnsafeRawBufferPointer;
  v28 = &type metadata for UnsafeRawBufferPointer;
  v29 = &protocol witness table for UnsafeRawBufferPointer;
  v26 = "\t";
  v27 = "";
  sub_10002587C(&v26, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v26);
  if (a3)
  {
    if (v14 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v18 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
LABEL_21:
    v23 = &a1[v18];
    v24 = &a1[v14];
    if (!a1)
    {
      v24 = 0;
    }

    v28 = v11;
    v29 = &protocol witness table for UnsafeRawBufferPointer;
    if (!a1)
    {
      v23 = 0;
    }

    v26 = v23;
    v27 = v24;
    sub_10002587C(&v26, v11);
    sub_1004A43F4();
    sub_1000197E0(&v26);
    v25 = sub_1002881FC(v18, v14, a1, a2);
    v22 = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
LABEL_26:
      *(a4 + 1) = v22;

      sub_100267AA8(a5);
      return;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
}

void sub_10026372C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v14);
  }

  sub_100264D48("multipart/", "", v15);
  sub_10026508C(*(a7 + 8), *(a7 + 16), sub_100269B30);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  v18 = __OFADD__(v17, v16);
  v19 = v17 + v16;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19 < 79)
  {
LABEL_13:
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v21 = v16 + a1;
      }

      else
      {
        v21 = 0;
      }

      a5(a1, v21);
      v22 = sub_1002881FC(0, v16, a1, a2);
      v23 = *(a4 + 1);
      v18 = __OFADD__(v23, v22);
      v24 = v23 + v22;
      if (!v18)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1002652C0(*a4, a5);
  a5("\t", "");
  if (a3)
  {
    if (v16 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v16 & 0x8000000000000000) == 0)
  {
    v20 = 0;
LABEL_22:
    if (a1)
    {
      v25 = a1 + v16;
    }

    else
    {
      v25 = 0;
    }

    if (a1)
    {
      v26 = a1 + v20;
    }

    else
    {
      v26 = 0;
    }

    a5(v26, v25);
    v27 = sub_1002881FC(v20, v16, a1, a2);
    v24 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
LABEL_29:
      *(a4 + 1) = v24;

      sub_100267AA8(a7);
      return;
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_100263920(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v17);
  }

  sub_100264D48("text/", "", v18);
  sub_10026751C(a5, a6, v18);
  if (*(*(a8 + 24) + 16))
  {
    LOBYTE(v32) = 59;
    sub_100264D48(&v32, &v32 + 1, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 1);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v22 >= 79)
    {
      sub_100267804(*a4);
      v34 = &type metadata for UnsafeRawBufferPointer;
      v35 = &protocol witness table for UnsafeRawBufferPointer;
      v32 = "\t";
      v33 = "";
      sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v32);
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v19 < 0)
      {
        goto LABEL_34;
      }

      v23 = 0;
LABEL_23:
      v28 = &a1[v23];
      v29 = &a1[v19];
      if (!a1)
      {
        v29 = 0;
      }

      v34 = &type metadata for UnsafeRawBufferPointer;
      v35 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v28 = 0;
      }

      v32 = v28;
      v33 = v29;
      sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v32);
      v30 = sub_1002881FC(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = &a1[v19];
  if (!a1)
  {
    v24 = 0;
  }

  v34 = &type metadata for UnsafeRawBufferPointer;
  v35 = &protocol witness table for UnsafeRawBufferPointer;
  v32 = a1;
  v33 = v24;
  sub_10002587C(&v32, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v32);
  v25 = sub_1002881FC(0, v19, a1, a2);
  v26 = *(a4 + 1);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v27;

  return sub_100257954(a8);
}

uint64_t sub_100263BE8(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v17);
  }

  sub_100264D48("text/", "", v18);
  sub_10026508C(a7, a8, sub_100269B30);
  if (*(*(a10 + 24) + 16))
  {
    v33 = 59;
    sub_100264D48(&v33, v34, v18);
  }

  swift_beginAccess();
  v19 = v18[2];
  v20 = *(a4 + 1);
  if (v20 >= 1)
  {
    v21 = __OFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v22 >= 79)
    {
      sub_1002652C0(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v19 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v23 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v19 < 0)
      {
        goto LABEL_37;
      }

      v23 = 0;
LABEL_24:
      if (a1)
      {
        v28 = &a1[v19];
      }

      else
      {
        v28 = 0;
      }

      if (a1)
      {
        v29 = &a1[v23];
      }

      else
      {
        v29 = 0;
      }

      a5(v29, v28);
      v30 = sub_1002881FC(v23, v19, a1, a2);
      v27 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v19 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v24 = &a1[v19];
  }

  else
  {
    v24 = 0;
  }

  a5(a1, v24);
  v25 = sub_1002881FC(0, v19, a1, a2);
  v26 = *(a4 + 1);
  v21 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 1) = v27;

  return sub_100257954(a10);
}

uint64_t sub_100263E68(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v14);
  }

  sub_100264D48("message/", "", v15);
  sub_10026751C(*a5, a5[1], v15);
  if (*(*(a6 + 24) + 16))
  {
    LOBYTE(v29) = 59;
    sub_100264D48(&v29, &v29 + 1, v15);
  }

  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 >= 1)
  {
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 >= 79)
    {
      sub_100267804(*a4);
      v31 = &type metadata for UnsafeRawBufferPointer;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      v29 = "\t";
      v30 = "";
      sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v29);
      if (a3)
      {
        if (v16 < 1)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
        }

        v20 = 1;
        goto LABEL_23;
      }

LABEL_21:
      if (v16 < 0)
      {
        goto LABEL_34;
      }

      v20 = 0;
LABEL_23:
      v25 = &a1[v20];
      v26 = &a1[v16];
      if (!a1)
      {
        v26 = 0;
      }

      v31 = &type metadata for UnsafeRawBufferPointer;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v25 = 0;
      }

      v29 = v25;
      v30 = v26;
      sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v29);
      v27 = sub_1002881FC(v20, v16, a1, a2);
      v24 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  if (v16 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = &a1[v16];
  if (!a1)
  {
    v21 = 0;
  }

  v31 = &type metadata for UnsafeRawBufferPointer;
  v32 = &protocol witness table for UnsafeRawBufferPointer;
  v29 = a1;
  v30 = v21;
  sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v29);
  v22 = sub_1002881FC(0, v16, a1, a2);
  v23 = *(a4 + 1);
  v18 = __OFADD__(v23, v22);
  v24 = v23 + v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_28:
  *(a4 + 1) = v24;

  sub_1002599EC(a5);
  return sub_100257954(a6);
}

uint64_t sub_100264128(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t *a7, uint64_t a8)
{
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v16 = v15;
  v15[2] = 0;
  v15[3] = v14;
  v15[4] = a1;
  v15[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v15);
  }

  sub_100264D48("message/", "", v16);
  sub_10026508C(*a7, a7[1], sub_100269B30);
  if (*(*(a8 + 24) + 16))
  {
    v31 = 59;
    sub_100264D48(&v31, v32, v16);
  }

  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 1);
  if (v18 >= 1)
  {
    v19 = __OFADD__(v18, v17);
    v20 = v18 + v17;
    if (v19)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v20 >= 79)
    {
      sub_1002652C0(*a4, a5);
      a5("\t", "");
      if (a3)
      {
        if (v17 < 1)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v21 = 1;
        goto LABEL_24;
      }

LABEL_22:
      if (v17 < 0)
      {
        goto LABEL_37;
      }

      v21 = 0;
LABEL_24:
      if (a1)
      {
        v26 = &a1[v17];
      }

      else
      {
        v26 = 0;
      }

      if (a1)
      {
        v27 = &a1[v21];
      }

      else
      {
        v27 = 0;
      }

      a5(v27, v26);
      v28 = sub_1002881FC(v21, v17, a1, a2);
      v25 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  if (v17 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a1)
  {
    v22 = &a1[v17];
  }

  else
  {
    v22 = 0;
  }

  a5(a1, v22);
  v23 = sub_1002881FC(0, v17, a1, a2);
  v24 = *(a4 + 1);
  v19 = __OFADD__(v24, v23);
  v25 = v24 + v23;
  if (v19)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_31:
  *(a4 + 1) = v25;

  sub_1002599EC(a7);
  return sub_100257954(a8);
}

void sub_100264384(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a4;
  if (a1)
  {
    v16 = a2 - a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  if (v16 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = v17;
  v17[2] = 0;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v19 = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v17);
  }

  v20 = a5;
  v21 = a9;
  sub_100267740(v20, a6, a7, a8, a9, v18);
  swift_beginAccess();
  v22 = v18[2];
  v23 = v40;
  v24 = *(v40 + 1);
  if (v24 < 1)
  {
    goto LABEL_13;
  }

  v25 = __OFADD__(v24, v22);
  v26 = v24 + v22;
  if (v25)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v26 < 79)
  {
LABEL_13:
    if ((v22 & 0x8000000000000000) == 0)
    {
      v28 = &a1[v22];
      if (!a1)
      {
        v28 = 0;
      }

      v38 = &type metadata for UnsafeRawBufferPointer;
      v39 = &protocol witness table for UnsafeRawBufferPointer;
      v36 = a1;
      v37 = v28;
      sub_10002587C(&v36, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v36);
      v29 = sub_1002881FC(0, v22, a1, v19);
      v30 = *(v23 + 1);
      v25 = __OFADD__(v30, v29);
      v31 = v30 + v29;
      if (!v25)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  sub_100267804(*v40);
  v21 = &protocol witness table for UnsafeRawBufferPointer;
  v38 = &type metadata for UnsafeRawBufferPointer;
  v39 = &protocol witness table for UnsafeRawBufferPointer;
  v36 = "\t";
  v37 = "";
  sub_10002587C(&v36, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v36);
  if (a3)
  {
    if (v22 < 1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v27 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v22 & 0x8000000000000000) == 0)
  {
    v27 = 0;
LABEL_21:
    v32 = &a1[v27];
    v33 = &a1[v22];
    if (!a1)
    {
      v33 = 0;
    }

    v38 = &type metadata for UnsafeRawBufferPointer;
    v39 = v21;
    if (!a1)
    {
      v32 = 0;
    }

    v36 = v32;
    v37 = v33;
    sub_10002587C(&v36, &type metadata for UnsafeRawBufferPointer);
    sub_1004A43F4();
    sub_1000197E0(&v36);
    v34 = sub_1002881FC(v27, v22, a1, v19);
    v31 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      v23 = v40;
      v21 = a9;
LABEL_27:
      *(v23 + 1) = v31;

      sub_100257954(v21);
      return;
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
}

void sub_10026461C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  if (v17 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v18);
  }

  sub_1002625DC(sub_100269B30, v19, a7, a8, a9, a10, a11);
  swift_beginAccess();
  v20 = *(v19 + 16);
  v21 = *(a4 + 1);
  if (v21 < 1)
  {
    goto LABEL_13;
  }

  v22 = __OFADD__(v21, v20);
  v23 = v21 + v20;
  if (v22)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v23 < 79)
  {
LABEL_13:
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v25 = v20 + a1;
      }

      else
      {
        v25 = 0;
      }

      a5(a1, v25);
      v26 = sub_1002881FC(0, v20, a1, a2);
      v27 = *(a4 + 1);
      v22 = __OFADD__(v27, v26);
      v28 = v27 + v26;
      if (!v22)
      {
        goto LABEL_29;
      }

      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

  sub_1002652C0(*a4, a5);
  a5("\t", "");
  if (a3)
  {
    if (v20 < 1)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = 1;
    goto LABEL_22;
  }

LABEL_20:
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
LABEL_22:
    if (a1)
    {
      v29 = a1 + v20;
    }

    else
    {
      v29 = 0;
    }

    if (a1)
    {
      v30 = a1 + v24;
    }

    else
    {
      v30 = 0;
    }

    a5(v30, v29);
    v31 = sub_1002881FC(v24, v20, a1, a2);
    v28 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
LABEL_29:
      *(a4 + 1) = v28;

      sub_100257954(a11);
      return;
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_100264858(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, void *a5, unint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v14);
  }

  LOBYTE(v29) = 60;
  sub_100264D48(&v29, &v29 + 1, v15);
  sub_100266E78(a5, a6, v15);
  LOBYTE(v29) = 62;
  sub_100264D48(&v29, &v29 + 1, v15);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(a4 + 1);
  if (v17 >= 1)
  {
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v19 >= 79)
    {
      sub_100267804(*a4);
      a5 = &type metadata for UnsafeRawBufferPointer;
      v31 = &type metadata for UnsafeRawBufferPointer;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      v29 = "\t";
      v30 = "";
      sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v29);
      if (a3)
      {
        if (v16 < 1)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
        }

        v20 = 1;
        goto LABEL_21;
      }

LABEL_19:
      if (v16 < 0)
      {
        goto LABEL_32;
      }

      v20 = 0;
LABEL_21:
      v25 = &a1[v20];
      v26 = &a1[v16];
      if (!a1)
      {
        v26 = 0;
      }

      v31 = a5;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      if (!a1)
      {
        v25 = 0;
      }

      v29 = v25;
      v30 = v26;
      sub_10002587C(&v29, a5);
      sub_1004A43F4();
      sub_1000197E0(&v29);
      v27 = sub_1002881FC(v20, v16, a1, a2);
      v24 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  if (v16 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = &a1[v16];
  if (!a1)
  {
    v21 = 0;
  }

  v31 = &type metadata for UnsafeRawBufferPointer;
  v32 = &protocol witness table for UnsafeRawBufferPointer;
  v29 = a1;
  v30 = v21;
  sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v29);
  v22 = sub_1002881FC(0, v16, a1, a2);
  v23 = *(a4 + 1);
  v18 = __OFADD__(v23, v22);
  v24 = v23 + v22;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_26:
  *(a4 + 1) = v24;
}

void sub_100264B0C(const char *a1, uint64_t a2, char a3, unsigned __int8 *a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v14;
  v14[2] = 0;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = a2;
  if (a3)
  {
    sub_100264D48(" ", "", v14);
  }

  sub_100269618(a5, v15, a6, v16);
  swift_beginAccess();
  v17 = v16[2];
  v18 = *(a4 + 1);
  if (v18 < 1)
  {
    goto LABEL_13;
  }

  v19 = __OFADD__(v18, v17);
  v20 = v18 + v17;
  if (v19)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20 < 79)
  {
LABEL_13:
    if ((v17 & 0x8000000000000000) == 0)
    {
      v22 = &a1[v17];
      if (!a1)
      {
        v22 = 0;
      }

      v31 = &type metadata for UnsafeRawBufferPointer;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      v29 = a1;
      v30 = v22;
      sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v29);
      v23 = sub_1002881FC(0, v17, a1, a2);
      v24 = *(a4 + 1);
      v19 = __OFADD__(v24, v23);
      v25 = v24 + v23;
      if (!v19)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  sub_100267804(*a4);
  a5 = &type metadata for UnsafeRawBufferPointer;
  v13 = &protocol witness table for UnsafeRawBufferPointer;
  v31 = &type metadata for UnsafeRawBufferPointer;
  v32 = &protocol witness table for UnsafeRawBufferPointer;
  v29 = "\t";
  v30 = "";
  sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v29);
  if (a3)
  {
    if (v17 < 1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v21 = 1;
    goto LABEL_21;
  }

LABEL_19:
  if ((v17 & 0x8000000000000000) == 0)
  {
    v21 = 0;
LABEL_21:
    v26 = &a1[v21];
    v27 = &a1[v17];
    if (!a1)
    {
      v27 = 0;
    }

    v31 = a5;
    v32 = v13;
    if (!a1)
    {
      v26 = 0;
    }

    v29 = v26;
    v30 = v27;
    sub_10002587C(&v29, a5);
    sub_1004A43F4();
    sub_1000197E0(&v29);
    v28 = sub_1002881FC(v21, v17, a1, a2);
    v25 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
LABEL_26:
      *(a4 + 1) = v25;

      return;
    }

    goto LABEL_30;
  }

LABEL_32:
  __break(1u);
}

void sub_100264D48(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  if (sub_1002881FC(a3[2], a3[3], a3[4], a3[5]) < v4)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  sub_1001F70CC();
  sub_1004A4074();
  swift_beginAccess();
  v5 = a3[2];
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = a3[3];
    if (v7 >= v6)
    {
      if (v6 >= v5)
      {
        v9 = a3[4];
        v8 = a3[5];
        swift_beginAccess();
        a3[2] = v6;
        a3[3] = v7;
        a3[4] = v9;
        a3[5] = v8;
        return;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  sub_1004A69A4();
  __break(1u);
}

void sub_100264EAC(unint64_t a1, char a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= a1)
    {
      v14 = a1;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_100091A08(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = sub_1004A4784();
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = sub_1004A4784();
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  v18 = sub_1004A4784();
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1001E72AC(v7, v15, 0, v13);

    *v3 = v20;
    return;
  }

  if (!v10 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v21 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v21 = sub_1004A4774();

  *v3 = v21;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_35:
  swift_beginAccess();
  if ((*(v21 + 24) & 0x3FLL) != v13)
  {
    *(v21 + 24) = *(v21 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }
}

uint64_t sub_10026508C(uint64_t a1, unint64_t a2, double (*a3)(char *, uint64_t *))
{
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 >= 0xFFFFFFE6)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        a3(&v21, v22);
      }
    }

    goto LABEL_6;
  }
}

uint64_t sub_1002652C0(char a1, uint64_t (*a2)(char *, char *))
{
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 13;
      v3 = &v7;
      v4 = &v7;
    }

    else
    {
      v8 = 10;
      v3 = &v8;
      v4 = &v8;
    }

    v5 = v3 + 1;
  }

  else
  {
    v4 = "\r\n";
    v5 = "";
  }

  return a2(v4, v5);
}

uint64_t sub_100265368(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{

  v6 = sub_1004A59D4();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1004A5884();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1004A67E4();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_3;
        }

        v17 = sub_1001E11BC(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_3:

          goto LABEL_4;
        }

        v18 = sub_1001E11BC(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v19 = sub_100262EC4(v8, v9);

      if ((v19 & 0x100) == 0 && v19 - 127 >= 0xFFFFFFA1)
      {
        if (v19 - 91 > 0xFFFFFFE5)
        {
          *a3 = v19 | 0x20;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_41;
          }
        }

        *a4 = v20;
      }

LABEL_4:
      v8 = sub_1004A59D4();
      v9 = v10;
    }

    while (v10);
  }
}

uint64_t sub_1002655B0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_46;
  }

  ++*a4;

  v6 = sub_1004A59D4();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if ((v8 != 2573 || v9 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
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
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        if ((v9 & 0x1000000000000000) != 0)
        {
          v16 = sub_1004A5884();
        }

        else
        {
          if ((v9 & 0x2000000000000000) != 0)
          {
            v13 = v8;
          }

          else
          {
            if ((v8 & 0x1000000000000000) != 0)
            {
              v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v12 = sub_1004A67E4();
            }

            v13 = *v12;
          }

          v14 = v13;
          v15 = (__clz(~v13) - 24) << 16;
          if (v14 < 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 65541;
          }
        }

        if (v16 >> 14 != 4 * v11)
        {
          goto LABEL_4;
        }

        v17 = sub_1001E11BC(v8, v9);
        if ((v17 & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v8, v9);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v18 & 0xFFFFFF00) != 0)
        {
          goto LABEL_44;
        }
      }

      v19 = sub_100262EC4(v8, v9);

      if ((v19 & 0x100) == 0)
      {
        if (v19 == 92 || v19 == 34)
        {
          *a3 = 92;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_42;
          }

          ++*a4;
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }

        if (v19 - 127 >= 0xFFFFFFA1)
        {
          *a3 = v19;
          v20 = *a4 + 1;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_45;
          }

LABEL_36:
          *a4 = v20;
        }
      }

LABEL_5:
      v8 = sub_1004A59D4();
      v9 = v10;
    }

    while (v10);
  }

  *a3 = 34;
  if (__OFADD__(*a4, 1))
  {
    goto LABEL_47;
  }

  ++*a4;
  return result;
}

uint64_t sub_100265848(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  if (sub_100262D2C(a1, a2))
  {

    v8 = sub_1004A59D4();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      do
      {
        if ((v10 != 2573 || v11 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
        {
          if ((v11 & 0x2000000000000000) != 0)
          {
            v13 = HIBYTE(v11) & 0xF;
          }

          else
          {
            v13 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (!v13)
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          if ((v11 & 0x1000000000000000) != 0)
          {
            v18 = sub_1004A5884();
          }

          else
          {
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = v10;
            }

            else
            {
              if ((v10 & 0x1000000000000000) != 0)
              {
                v14 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v14 = sub_1004A67E4();
              }

              v15 = *v14;
            }

            v16 = v15;
            v17 = (__clz(~v15) - 24) << 16;
            if (v16 < 0)
            {
              v18 = v17;
            }

            else
            {
              v18 = 65541;
            }
          }

          if (v18 >> 14 != 4 * v13)
          {
            goto LABEL_4;
          }

          v19 = sub_1001E11BC(v10, v11);
          if ((v19 & 0x100000000) != 0)
          {
            goto LABEL_41;
          }

          if ((v19 & 0xFFFFFF80) != 0)
          {
LABEL_4:

            goto LABEL_5;
          }

          v20 = sub_1001E11BC(v10, v11);
          if ((v20 & 0x100000000) != 0)
          {
            goto LABEL_42;
          }

          if ((v20 & 0xFFFFFF00) != 0)
          {
            goto LABEL_40;
          }
        }

        v21 = sub_100262EC4(v10, v11);

        if ((v21 & 0x100) == 0)
        {
          *a3 = v21;
          if (__OFADD__(*a4, 1))
          {
            goto LABEL_39;
          }

          ++*a4;
        }

LABEL_5:
        v10 = sub_1004A59D4();
        v11 = v12;
      }

      while (v12);
    }
  }

  else
  {

    return sub_1002655B0(a1, a2, a3, a4);
  }
}

uint64_t sub_100265ABC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, char *))
{
  LOBYTE(v23[0]) = 34;
  a3(v23, v23 + 1);
  v6 = HIBYTE(a2) & 0xF;
  v23[0] = a1;
  v23[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v23[2] = 0;
  v23[3] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1004A67E4();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v22 = 92;
          a3(&v22, v23);
          v22 = v20;
        }

        else
        {
          if (v20 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_6;
          }

          v22 = v20;
        }

        a3(&v22, v23);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v23[0]) = 34;
  return (a3)(v23, v23 + 1);
}

uint64_t sub_100265D60(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, char *))
{
  if (sub_100262D2C(a1, a2))
  {
    v6 = HIBYTE(a2) & 0xF;
    v23[0] = a1;
    v23[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v23[2] = 0;
    v23[3] = v6;

    v7 = sub_1004A59D4();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1001E11BC(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_39;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1004A59D4();
        v10 = v11;
        if (!v11)
        {
        }
      }

      v19 = sub_1001E11BC(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

LABEL_29:
      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        a3(&v22, v23);
      }

      goto LABEL_7;
    }
  }

  else
  {

    return sub_100265ABC(a1, a2, a3);
  }
}

uint64_t sub_100265FD8(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  v30 = a5;
  v31 = a2;
  v29 = a1;
  v14 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 < 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v10 = a8;
    v12 = a7;
    v11 = a6;

    if (v14 < 1025)
    {
LABEL_4:
      v32 = v12;
      v33 = a9;
      v28[1] = v28;
      __chkstk_darwin(isStackAllocationSafe);
      v17 = v28 - v16;
      v18 = v28 + v14 - v16;
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = v14;
      v19[4] = v17;
      v19[5] = v18;
      if (a4)
      {
        sub_100264D48(" ", "", v19);
      }

      sub_10026508C(v11, v32, sub_100269B30);
      v34 = 61;
      sub_100264D48(&v34, v35, v19);
      sub_100265D60(v10, v33, sub_100269B30);
      if ((a10 & 1) == 0)
      {
        v34 = 59;
        sub_100264D48(&v34, v35, v19);
      }

      swift_beginAccess();
      v20 = v19[2];
      v21 = v30;
      v22 = *(v30 + 1);
      if (v22 >= 1)
      {
        if (__OFADD__(v22, v20))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v22 + v20 >= 79)
        {
          v14 = v29;
          sub_1002652C0(*v30, v29);
          (v14)("\t", "");
          if (a4)
          {
            if (v20 < 1)
            {
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
            }

            v23 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v20 < 0)
          {
            goto LABEL_34;
          }

          v23 = 0;
LABEL_21:
          (v14)(&v17[v23], &v17[v20]);
          v25 = sub_1002881FC(v23, v20, v17, v18);

          v24 = v25 + 1;
          if (!__OFADD__(v25, 1))
          {
LABEL_22:
            *(v21 + 1) = v24;
          }

          goto LABEL_32;
        }
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v29(v17, &v17[v20]);

        if (v14 >= v20)
        {
          v24 = v22 + v20;
          if (!__OFADD__(v22, v20))
          {
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v27 = swift_slowAlloc();

  sub_10026322C(v27, &v27[v14], a4 & 1, v30, v29, v31, v11, v12, v10, a9, a10 & 1);
}

uint64_t sub_1002663AC(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t *, __n128))
{
  v6 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:

          __break(1u);
LABEL_44:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1004A67E4();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v26 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v26 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;
        (a4)(&v26, v27);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }
}

uint64_t sub_100266644(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a5 < 3)
  {
    goto LABEL_46;
  }

  v40 = 34;
  sub_100264D48(&v40, &v41, a6);
  v10 = a1 >> 14;
  v11 = a2 >> 14;
  if (a1 >> 14 < a2 >> 14)
  {
    v35 = 2;
    do
    {
      v13 = sub_1004A63F4();
      v14 = v12;
      if ((v13 != 2573 || v12 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        v15 = a2;
        v16 = a3;
        v17 = a4;
        v18 = v11;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v19 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19)
        {
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
        }

        if ((v14 & 0x1000000000000000) != 0)
        {
          v24 = sub_1004A5884();
        }

        else
        {
          if ((v14 & 0x2000000000000000) != 0)
          {
            v21 = v13;
          }

          else
          {
            if ((v13 & 0x1000000000000000) != 0)
            {
              v20 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v20 = sub_1004A67E4();
            }

            v21 = *v20;
          }

          v22 = v21;
          v23 = (__clz(~v21) - 24) << 16;
          if (v22 < 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 65541;
          }
        }

        v25 = v24 >> 14 == 4 * v19;
        v11 = v18;
        a4 = v17;
        a3 = v16;
        a2 = v15;
        if (!v25)
        {
          goto LABEL_4;
        }

        v26 = sub_1001E11BC(v13, v14);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_49;
        }

        if ((v26 & 0xFFFFFF80) != 0)
        {
LABEL_4:

          goto LABEL_5;
        }

        v27 = sub_1001E11BC(v13, v14);
        if ((v27 & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        if ((v27 & 0xFFFFFF00) != 0)
        {
          goto LABEL_45;
        }
      }

      v28 = sub_100262EC4(v13, v14);

      if ((v28 & 0x100) == 0)
      {
        if (v28 == 92 || v28 == 34)
        {
          if (__OFADD__(v35, 2))
          {
            goto LABEL_44;
          }

          if (v35 + 2 >= a5)
          {
            break;
          }

          v35 += 2;
          v37 = 92;
          sub_100264D48(&v37, &v38, a6);
          v36 = v28;
          v29 = &v36;
          v30 = &v37;
          v31 = a6;
        }

        else
        {
          if (v28 - 127 < 0xFFFFFFA1)
          {
            goto LABEL_5;
          }

          if (__OFADD__(v35, 1))
          {
            goto LABEL_48;
          }

          if (v35 + 1 >= a5)
          {
            break;
          }

          ++v35;
          v38 = v28;
          v29 = &v38;
          v30 = &v39;
          v31 = a6;
        }

        sub_100264D48(v29, v30, v31);
      }

LABEL_5:
      v10 = sub_1004A63B4() >> 14;
    }

    while (v10 < v11);
  }

  v39 = 34;
  sub_100264D48(&v39, &v40, a6);
  if (v11 < v10)
  {
    goto LABEL_47;
  }

  return sub_1004A6404();
}

uint64_t sub_10026699C(void (*a1)(uint64_t, uint64_t), _BYTE *a2, uint64_t a3, char a4, unsigned __int8 *a5, void (*a6)(uint64_t, uint64_t))
{
  v24 = a5;
  v10 = a3 + (a4 & 1);
  if (__OFADD__(a3, a4 & 1))
  {
    __break(1u);
LABEL_24:
    sub_100259A40(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_100259A40(v6, v25);
      sub_10026372C(v22, v22 + v10, a4 & 1, v24, v8, v7, v6);

      return sub_100267AA8(v6);
    }

    goto LABEL_5;
  }

  if (v10 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a6;
  v7 = a2;
  v8 = a1;
  a2 = v25;
  a1 = a6;
  if (v10 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_100259A40(a6, v25);
LABEL_5:
  v23 = &v23;
  __chkstk_darwin(isStackAllocationSafe);
  v13 = &v23 - v12;
  v14 = &v23 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (a4)
  {
    sub_100264D48(" ", "", v15);
  }

  sub_100264D48("multipart/", "", v15);
  sub_10026508C(*(v6 + 8), *(v6 + 16), sub_100269B30);
  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v24 + 1);
  if (v17 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v17, v16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v17 + v16 < 79)
  {
LABEL_13:
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v8(v13, &v13[v16]);

      if (v10 >= v16)
      {
        v19 = v17 + v16;
        if (!__OFADD__(v17, v16))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_1002652C0(*v24, v8);
  v8("\t", "");
  if ((a4 & 1) == 0)
  {
LABEL_18:
    if (v16 < 0)
    {
      goto LABEL_32;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (v16 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v18 = 1;
LABEL_20:
  v8(&v13[v18], &v13[v16]);
  v20 = sub_1002881FC(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v24 + 1) = v19;
  return sub_100267AA8(v6);
}

void sub_100266C9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100264EAC(v2, 0);
  sub_100091A08(0, v2, 0);
  if (v2)
  {
    v3 = 0;
    v15 = a1 + 32;
    while (1)
    {
      v4 = (v15 + 32 * v3);
      v6 = *v4;
      v5 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v9 = _swiftEmptyArrayStorage[2];
      if (v9)
      {
        break;
      }

LABEL_11:

      sub_1001E67B8(v6, v5, 0);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100091A08((v12 > 1), v13 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v8;
      v14[5] = v7;
      if (v3 == v2)
      {
        return;
      }
    }

    v10 = &_swiftEmptyArrayStorage[5];
    while (1)
    {
      v11 = *(v10 - 1) == v6 && *v10 == v5;
      if (v11 || (sub_1004A6D34() & 1) != 0)
      {
        break;
      }

      v10 += 2;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }
}

uint64_t sub_100266E78(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v21[0] = a1;
  v21[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21[2] = 0;
  v21[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_36;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_37;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0 && v18 - 127 >= 0xFFFFFFA1)
    {
      v20 = v18;
      sub_100264D48(&v20, v21, a3);
    }

    goto LABEL_6;
  }
}

uint64_t sub_100267088(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t *a8)
{
  v14 = BYTE6(a2);
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      memset(v53, 0, 14);
      v16 = a3;
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      sub_1000510B4(a4, v54);
      v46 = a7;
      v47 = a8;
      v17 = v53;
      v18 = 0;
      v19 = v16;
      v20 = a4;
      v21 = a5;
      v22 = a6;
LABEL_38:
      sub_10025ACAC(0, v18, v53, v17, v19, v20, v21, v22, &v52, v46, v47);
      sub_100051110(a4);
      if (!v8)
      {
        v16 = v52;
      }

      goto LABEL_42;
    }

    v50 = a3;
    v51 = v8;
    v48 = &v46;
    v49 = a6;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    v16 = sub_1004A40D4();
    if (v16)
    {
      v25 = sub_1004A4104();
      if (__OFSUB__(v23, v25))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      v16 += v23 - v25;
    }

    v26 = __OFSUB__(v24, v23);
    v27 = v24 - v23;
    if (!v26)
    {
      v28 = sub_1004A40F4();
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v16)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = v29 + v16;
        if (v16)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        sub_1000510B4(a4, v54);
        v33 = v51;
        sub_10025ACAC(0, v30, v16, v32, v50, a4, a5, v49, v53, a7, a8);
        if (v33)
        {
          sub_100051110(a4);
          sub_100051110(a4);
          sub_100051110(a4);
          goto LABEL_42;
        }

        sub_100051110(a4);
        sub_100051110(a4);
        sub_100051110(a4);
LABEL_41:
        v16 = v53[0];
        goto LABEL_42;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v15)
  {
    v53[0] = a1;
    LOWORD(v53[1]) = a2;
    BYTE2(v53[1]) = BYTE2(a2);
    BYTE3(v53[1]) = BYTE3(a2);
    BYTE4(v53[1]) = BYTE4(a2);
    v16 = a3;
    BYTE5(v53[1]) = BYTE5(a2);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    sub_1000510B4(a4, v54);
    v46 = a7;
    v47 = a8;
    v17 = (v53 + v14);
    v18 = v14;
    v19 = v16;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    goto LABEL_38;
  }

  LODWORD(v49) = a5;
  v51 = v8;
  v35 = a1;
  v36 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_44;
  }

  v50 = a3;
  v48 = &v46;
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  sub_1000510B4(a4, v54);
  v16 = sub_1004A40D4();
  if (v16)
  {
    v37 = sub_1004A4104();
    if (__OFSUB__(v35, v37))
    {
      goto LABEL_48;
    }

    v16 += v35 - v37;
  }

  v38 = sub_1004A40F4();
  if (v38 >= v36)
  {
    v39 = v36;
  }

  else
  {
    v39 = v38;
  }

  if (v16)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v49;
  if (v40 < 0)
  {
    goto LABEL_46;
  }

  v42 = v39 + v16;
  if (v16)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  sub_1000510B4(a4, v54);
  v44 = v51;
  sub_10025ACAC(0, v40, v16, v43, v50, a4, v41, a6, v53, a7, a8);
  sub_100051110(a4);
  sub_100051110(a4);
  sub_100051110(a4);
  if (!v44)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_100051110(a4);
  sub_100051110(a4);
  sub_100051110(a4);
  return v16;
}

uint64_t sub_10026751C(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v4;

  v5 = sub_1004A59D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    while (1)
    {
      if (v7 == 2573 && v8 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_28;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v15 = sub_1004A5884();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v12 = v7;
        }

        else
        {
          v11 = ((v7 & 0x1000000000000000) != 0 ? (v8 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v12 = *v11;
        }

        v13 = v12;
        v14 = (__clz(~v12) - 24) << 16;
        v15 = v13 < 0 ? v14 : 65541;
      }

      if (v15 >> 14 == 4 * v10)
      {
        v16 = sub_1001E11BC(v7, v8);
        if ((v16 & 0x100000000) != 0)
        {
          goto LABEL_38;
        }

        if ((v16 & 0xFFFFFF80) == 0)
        {
          break;
        }
      }

LABEL_6:
      v7 = sub_1004A59D4();
      v8 = v9;
      if (!v9)
      {
      }
    }

    v17 = sub_1001E11BC(v7, v8);
    if ((v17 & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((v17 & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    v18 = sub_100262EC4(v7, v8);

    if ((v18 & 0x100) == 0)
    {
      v19 = v18;
      if (v18 - 127 >= 0xFFFFFFA1)
      {
        if (v18 - 91 > 0xFFFFFFE5)
        {
          v19 = v18 | 0x20;
        }

        v21 = v19;
        sub_100264D48(&v21, v22, a3);
      }
    }

    goto LABEL_6;
  }
}

void sub_100267740(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  sub_10026751C(a1, a2, a6);
  v11 = 47;
  sub_100264D48(&v11, &v12, a6);
  sub_10026751C(a3, a4, a6);
  if (*(*(a5 + 24) + 16))
  {
    v10 = 59;
    sub_100264D48(&v10, &v11, a6);
  }
}

uint64_t sub_100267804(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 13;
    }

    else
    {
      v1 = 10;
    }

    v5 = v1;
    v2 = &v5;
    v3 = v6;
    v7 = &type metadata for UnsafeRawBufferPointer;
    v8 = &protocol witness table for UnsafeRawBufferPointer;
  }

  else
  {
    v7 = &type metadata for UnsafeRawBufferPointer;
    v8 = &protocol witness table for UnsafeRawBufferPointer;
    v2 = "\r\n";
    v3 = "";
  }

  v6[0] = v2;
  v6[1] = v3;
  sub_10002587C(v6, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  return sub_1000197E0(v6);
}

uint64_t sub_1002678D8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Message(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10026796C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002679EC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Message(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100267A58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  v16 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_1002578F8(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v29 = swift_slowAlloc();

      sub_1002578F8(v13, &v34);
      sub_100264384(v29, &v29[v16], v15 & 1, v11, v9, v12, v10, v14, v13, v31);

      goto LABEL_22;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = a8;
  v14 = a7;
  v10 = a6;
  v12 = a5;
  v9 = a4;
  v11 = a3;
  v31 = a9;

  a2 = &v34;
  a1 = v13;
  if (v16 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_1002578F8(v13, &v34);
LABEL_5:
  v32 = v14;
  v33 = v12;
  v30 = &v30;
  __chkstk_darwin(isStackAllocationSafe);
  v19 = &v30 - v18;
  v20 = &v30 + v16 - v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = v16;
  v21[4] = v19;
  v21[5] = v20;
  if (v15)
  {
    sub_100264D48(" ", "", v21);
  }

  sub_100267740(v9, v33, v10, v32, v13, v21);
  swift_beginAccess();
  v22 = v21[2];
  v23 = v11;
  v24 = *(v11 + 8);
  if (v24 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v24, v22))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v24 + v22 < 79)
  {
LABEL_13:
    if (v22 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = &type metadata for UnsafeRawBufferPointer;
      v37 = &protocol witness table for UnsafeRawBufferPointer;
      v34 = v19;
      v35 = &v19[v22];
      sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v34);

      if (v16 >= v22)
      {
        v26 = v24 + v22;
        if (!__OFADD__(v24, v22))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_100267804(*v23);
  v24 = &type metadata for UnsafeRawBufferPointer;
  v16 = &protocol witness table for UnsafeRawBufferPointer;
  v36 = &type metadata for UnsafeRawBufferPointer;
  v37 = &protocol witness table for UnsafeRawBufferPointer;
  v34 = "\t";
  v35 = "";
  sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v34);
  if ((v15 & 1) == 0)
  {
LABEL_18:
    if (v22 < 0)
    {
      goto LABEL_32;
    }

    v25 = 0;
    goto LABEL_20;
  }

  if (v22 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v25 = 1;
LABEL_20:
  v36 = v24;
  v37 = v16;
  v34 = &v19[v25];
  v35 = &v19[v22];
  sub_10002587C(&v34, v24);
  sub_1004A43F4();
  sub_1000197E0(&v34);
  v27 = sub_1002881FC(v25, v22, v19, v20);

  v26 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v23 + 8) = v26;
LABEL_22:

  return sub_100257954(v13);
}

void sub_100267F24(uint64_t a1, unint64_t a2, void *a3)
{
  LOBYTE(v22[0]) = 34;
  sub_100264D48(v22, v22 + 1, a3);
  v6 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v22[3] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1004A67E4();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_41;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_39;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 92 || v20 == 34)
        {
          v21 = 92;
          sub_100264D48(&v21, v22, a3);
        }

        else if (v20 - 127 < 0xFFFFFFA1)
        {
          goto LABEL_6;
        }

        v21 = v20;
        sub_100264D48(&v21, v22, a3);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }

  LOBYTE(v22[0]) = 34;
  sub_100264D48(v22, v22 + 1, a3);
}

uint64_t sub_1002681A0(uint64_t a1, unint64_t a2, void *a3)
{

  if (sub_100262D2C(a1, a2))
  {
    v6 = HIBYTE(a2) & 0xF;
    v23[0] = a1;
    v23[1] = a2;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v23[2] = 0;
    v23[3] = v6;

    v7 = sub_1004A59D4();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      while (1)
      {
        if (v9 == 2573 && v10 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
        {
          goto LABEL_29;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:

          __break(1u);
LABEL_39:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            v13 = ((v9 & 0x1000000000000000) != 0 ? (v10 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          v17 = v15 < 0 ? v16 : 65541;
        }

        if (v17 >> 14 == 4 * v12)
        {
          v18 = sub_1001E11BC(v9, v10);
          if ((v18 & 0x100000000) != 0)
          {
            goto LABEL_38;
          }

          if ((v18 & 0xFFFFFF80) == 0)
          {
            break;
          }
        }

LABEL_7:
        v9 = sub_1004A59D4();
        v10 = v11;
        if (!v11)
        {
          goto LABEL_34;
        }
      }

      v19 = sub_1001E11BC(v9, v10);
      if ((v19 & 0x100000000) != 0)
      {
        goto LABEL_39;
      }

      if ((v19 & 0xFFFFFF00) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        v22 = v20;
        sub_100264D48(&v22, v23, a3);
      }

      goto LABEL_7;
    }

LABEL_34:
  }

  else
  {

    sub_100267F24(a1, a2, a3);
  }
}

uint64_t sub_100268404(uint64_t a1, char a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, char a8, uint64_t a9)
{
  v31 = a3;
  v15 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 < 0)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = a8;
    v12 = a7;
    v13 = a6;
    v11 = a5;
    v9 = a4;

    if (v15 < 1025)
    {
LABEL_4:
      v32 = v12;
      v33 = v11;
      v30 = &v30;
      __chkstk_darwin(isStackAllocationSafe);
      v18 = &v30 - v17;
      v19 = &v30 + v15 - v17;
      v20 = swift_allocObject();
      v20[2] = 0;
      v21 = v20 + 2;
      v20[3] = v15;
      v20[4] = v18;
      v20[5] = v19;
      if (a2)
      {
        sub_100264D48(" ", "", v20);
      }

      sub_10026751C(v9, v33, v20);
      LOBYTE(v34) = 61;
      sub_100264D48(&v34, &v34 + 1, v20);
      sub_1002681A0(v13, v32, v20);
      if ((v10 & 1) == 0)
      {
        LOBYTE(v34) = 59;
        sub_100264D48(&v34, &v34 + 1, v20);
      }

      swift_beginAccess();
      v22 = *v21;
      v23 = v31;
      v24 = *(v31 + 1);
      if (v24 >= 1)
      {
        if (__OFADD__(v24, v22))
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v24 + v22 >= 79)
        {
          sub_100267804(*v31);
          v24 = &type metadata for UnsafeRawBufferPointer;
          v21 = &protocol witness table for UnsafeRawBufferPointer;
          v36 = &type metadata for UnsafeRawBufferPointer;
          v37 = &protocol witness table for UnsafeRawBufferPointer;
          v34 = "\t";
          v35 = "";
          sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
          sub_1004A43F4();
          sub_1000197E0(&v34);
          if (a2)
          {
            if (v22 < 1)
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
            }

            v25 = 1;
            goto LABEL_21;
          }

LABEL_19:
          if (v22 < 0)
          {
            goto LABEL_35;
          }

          v25 = 0;
LABEL_21:
          v36 = v24;
          v37 = v21;
          v34 = &v18[v25];
          v35 = &v18[v22];
          sub_10002587C(&v34, v24);
          sub_1004A43F4();
          sub_1000197E0(&v34);
          v27 = sub_1002881FC(v25, v22, v18, v19);

          v26 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            v23 = v31;
LABEL_23:
            *(v23 + 1) = v26;
          }

          goto LABEL_33;
        }
      }

      if (v22 < 0)
      {
        __break(1u);
      }

      else
      {
        v36 = &type metadata for UnsafeRawBufferPointer;
        v37 = &protocol witness table for UnsafeRawBufferPointer;
        v34 = v18;
        v35 = &v18[v22];
        sub_10002587C(&v34, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        sub_1000197E0(&v34);

        if (v15 >= v22)
        {
          v26 = v24 + v22;
          if (!__OFADD__(v24, v22))
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_4;
  }

  v29 = swift_slowAlloc();

  sub_100262F54(v29, &v29[v15], a2 & 1, v31, v9, v11, v13, v12, v10 & 1, a9);
}

uint64_t sub_100268824(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = HIBYTE(a2) & 0xF;
  v27[0] = a1;
  v27[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v27[2] = 0;
  v27[3] = v6;
  swift_retain_n();

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:

          __break(1u);
LABEL_44:

          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1004A67E4();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_43;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_44;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_40;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0 && v20 - 127 >= 0xFFFFFFA1)
      {
        if (v20 - 91 > 0xFFFFFFE5)
        {
          v26 = v20 | 0x20;
          swift_beginAccess();
          v24 = *(a3 + 16);
          v22 = __OFSUB__(v24, 1);
          v23 = v24 - 1;
          if (v22)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v26 = v20;
          swift_beginAccess();
          v21 = *(a3 + 16);
          v22 = __OFSUB__(v21, 1);
          v23 = v21 - 1;
          if (v22)
          {
            goto LABEL_41;
          }
        }

        *(a3 + 16) = v23;

        sub_100264D48(&v26, v27, a4);
      }

LABEL_6:
      v9 = sub_1004A59D4();
      v10 = v11;
    }

    while (v11);
  }
}

uint64_t sub_100268B04(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v9 = a2;
  v10 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_100259990(a1, a2);
    sub_1002578F8(v7, &v26);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = swift_slowAlloc();
      sub_100259990(v8, &v26);
      sub_1002578F8(v7, &v26);
      sub_100263E68(v22, &v22[v10], v9 & 1, v25, v8, v7, v6);

      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v10 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = a6;
  v7 = a5;
  v8 = a4;
  a2 = &v26;
  a1 = a4;
  if (v10 >= 1025)
  {
    goto LABEL_26;
  }

  sub_100259990(a4, &v26);
  isStackAllocationSafe = sub_1002578F8(v7, &v26);
LABEL_5:
  v23 = &v23;
  __chkstk_darwin(isStackAllocationSafe);
  v13 = &v23 - v12;
  v14 = &v23 + v10 - v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = v10;
  v15[4] = v13;
  v15[5] = v14;
  if (v9)
  {
    sub_100264D48(" ", "", v15);
  }

  sub_100264D48("message/", "", v15);
  sub_10026751C(*v8, *(v8 + 8), v15);
  v24 = v7;
  if (*(*(v7 + 24) + 16))
  {
    LOBYTE(v26) = 59;
    sub_100264D48(&v26, &v26 + 1, v15);
  }

  swift_beginAccess();
  v16 = v15[2];
  v17 = *(v25 + 1);
  if (v17 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v17, v16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 + v16 < 79)
  {
LABEL_15:
    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      v28 = &type metadata for UnsafeRawBufferPointer;
      v29 = &protocol witness table for UnsafeRawBufferPointer;
      v26 = v13;
      v27 = &v13[v16];
      sub_10002587C(&v26, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v26);

      if (v10 >= v16)
      {
        v19 = v17 + v16;
        if (!__OFADD__(v17, v16))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_100267804(*v25);
  v10 = &type metadata for UnsafeRawBufferPointer;
  v17 = &protocol witness table for UnsafeRawBufferPointer;
  v28 = &type metadata for UnsafeRawBufferPointer;
  v29 = &protocol witness table for UnsafeRawBufferPointer;
  v26 = "\t";
  v27 = "";
  sub_10002587C(&v26, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v26);
  if ((v9 & 1) == 0)
  {
LABEL_20:
    if (v16 < 0)
    {
      goto LABEL_34;
    }

    v18 = 0;
    goto LABEL_22;
  }

  if (v16 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v18 = 1;
LABEL_22:
  v28 = v10;
  v29 = v17;
  v26 = &v13[v18];
  v27 = &v13[v16];
  sub_10002587C(&v26, v10);
  sub_1004A43F4();
  sub_1000197E0(&v26);
  v20 = sub_1002881FC(v18, v16, v13, v14);

  v19 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  v7 = v24;
  *(v25 + 1) = v19;
LABEL_24:
  sub_1002599EC(v8);
  return sub_100257954(v7);
}

uint64_t sub_100268EC8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v13 = a2;
  v14 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_26:
    sub_1002578F8(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v26 = swift_slowAlloc();

      sub_1002578F8(v8, &v29);
      sub_100263920(v26, &v26[v14], v13 & 1, v28, v12, v10, v11, v8, v9);

      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if (v14 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = a8;
  v8 = a7;
  v11 = a6;
  v10 = a5;
  v12 = a4;

  a2 = &v29;
  a1 = v8;
  if (v14 >= 1025)
  {
    goto LABEL_26;
  }

  isStackAllocationSafe = sub_1002578F8(v8, &v29);
LABEL_5:
  v27 = &v27;
  __chkstk_darwin(isStackAllocationSafe);
  v17 = &v27 - v16;
  v18 = &v27 + v14 - v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = v14;
  v19[4] = v17;
  v19[5] = v18;
  if (v13)
  {
    sub_100264D48(" ", "", v19);
  }

  sub_100264D48("text/", "", v19);
  sub_10026751C(v12, v10, v19);
  if (*(*(v8 + 24) + 16))
  {
    LOBYTE(v29) = 59;
    sub_100264D48(&v29, &v29 + 1, v19);
  }

  swift_beginAccess();
  v20 = v19[2];
  v21 = *(v28 + 1);
  if (v21 < 1)
  {
    goto LABEL_15;
  }

  if (__OFADD__(v21, v20))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v21 + v20 < 79)
  {
LABEL_15:
    if (v20 < 0)
    {
      __break(1u);
    }

    else
    {
      v31 = &type metadata for UnsafeRawBufferPointer;
      v32 = &protocol witness table for UnsafeRawBufferPointer;
      v29 = v17;
      v30 = &v17[v20];
      sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v29);

      if (v14 >= v20)
      {
        v23 = v21 + v20;
        if (!__OFADD__(v21, v20))
        {
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_100267804(*v28);
  v14 = &type metadata for UnsafeRawBufferPointer;
  v21 = &protocol witness table for UnsafeRawBufferPointer;
  v31 = &type metadata for UnsafeRawBufferPointer;
  v32 = &protocol witness table for UnsafeRawBufferPointer;
  v29 = "\t";
  v30 = "";
  sub_10002587C(&v29, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v29);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    if (v20 < 0)
    {
      goto LABEL_34;
    }

    v22 = 0;
    goto LABEL_22;
  }

  if (v20 < 1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v22 = 1;
LABEL_22:
  v31 = v14;
  v32 = v21;
  v29 = &v17[v22];
  v30 = &v17[v20];
  sub_10002587C(&v29, v14);
  sub_1004A43F4();
  sub_1000197E0(&v29);
  v24 = sub_1002881FC(v22, v20, v17, v18);

  v23 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_23:
  *(v28 + 1) = v23;
LABEL_24:

  return sub_100257954(v8);
}

uint64_t sub_1002692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a1 + (a2 & 1);
  if (__OFADD__(a1, a2 & 1))
  {
    __break(1u);
LABEL_24:
    sub_100259A40(a1, a2);
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v21 = swift_slowAlloc();
      sub_100259A40(v5, &v23);
      sub_1002634CC(v21, &v21[v9], v8 & 1, v7, v5, v6);

      return sub_100267AA8(v5);
    }

    goto LABEL_5;
  }

  if (v9 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = a5;
  v5 = a4;
  v7 = a3;
  a2 = &v23;
  a1 = a4;
  if (v9 >= 1025)
  {
    goto LABEL_24;
  }

  isStackAllocationSafe = sub_100259A40(a4, &v23);
LABEL_5:
  v22[0] = v22;
  __chkstk_darwin(isStackAllocationSafe);
  v12 = v22 - v11;
  v13 = v22 + v9 - v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = v9;
  v14[4] = v12;
  v14[5] = v13;
  if (v8)
  {
    sub_100264D48(" ", "", v14);
  }

  sub_100264D48("multipart/", "", v14);
  sub_10026751C(*(v5 + 8), *(v5 + 16), v14);
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v7 + 8);
  if (v16 < 1)
  {
    goto LABEL_13;
  }

  if (__OFADD__(v16, v15))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16 + v15 < 79)
  {
LABEL_13:
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      v25 = &type metadata for UnsafeRawBufferPointer;
      v26 = &protocol witness table for UnsafeRawBufferPointer;
      v23 = v12;
      v24 = &v12[v15];
      sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
      sub_1004A43F4();
      sub_1000197E0(&v23);

      if (v9 >= v15)
      {
        v18 = v16 + v15;
        if (!__OFADD__(v16, v15))
        {
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_100267804(*v7);
  v9 = &type metadata for UnsafeRawBufferPointer;
  v16 = &protocol witness table for UnsafeRawBufferPointer;
  v25 = &type metadata for UnsafeRawBufferPointer;
  v26 = &protocol witness table for UnsafeRawBufferPointer;
  v23 = "\t";
  v24 = "";
  sub_10002587C(&v23, &type metadata for UnsafeRawBufferPointer);
  sub_1004A43F4();
  sub_1000197E0(&v23);
  if ((v8 & 1) == 0)
  {
LABEL_18:
    if (v15 < 0)
    {
      goto LABEL_32;
    }

    v17 = 0;
    goto LABEL_20;
  }

  if (v15 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v17 = 1;
LABEL_20:
  v25 = v9;
  v26 = v16;
  v23 = &v12[v17];
  v24 = &v12[v15];
  sub_10002587C(&v23, v9);
  sub_1004A43F4();
  sub_1000197E0(&v23);
  v19 = sub_1002881FC(v17, v15, v12, v13);

  v18 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  *(v7 + 8) = v18;
  return sub_100267AA8(v5);
}

uint64_t sub_100269618(char *a1, __n128 a2, uint64_t a3, void *a4)
{
  if ((a1[1] & 1) == 0)
  {
    v6 = *a1;
    *a1 = 256;
    v21 = v6;
    sub_100264D48(&v21, &v22, a4);
  }

  result = sub_1004A59D4();
  if (v8)
  {
    v9 = result;
    v10 = v8;
    do
    {
      if ((v9 != 2573 || v10 != 0xE200000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        if ((v10 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v12 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v12)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        if ((v10 & 0x1000000000000000) != 0)
        {
          v17 = sub_1004A5884();
        }

        else
        {
          if ((v10 & 0x2000000000000000) != 0)
          {
            v14 = v9;
          }

          else
          {
            if ((v9 & 0x1000000000000000) != 0)
            {
              v13 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v13 = sub_1004A67E4();
            }

            v14 = *v13;
          }

          v15 = v14;
          v16 = (__clz(~v14) - 24) << 16;
          if (v15 < 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 65541;
          }
        }

        if (v17 >> 14 != 4 * v12)
        {
          goto LABEL_5;
        }

        v18 = sub_1001E11BC(v9, v10);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        if ((v18 & 0xFFFFFF80) != 0)
        {
LABEL_5:

          goto LABEL_6;
        }

        v19 = sub_1001E11BC(v9, v10);
        if ((v19 & 0x100000000) != 0)
        {
          goto LABEL_40;
        }

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_38;
        }
      }

      v20 = sub_100262EC4(v9, v10);

      if ((v20 & 0x100) == 0)
      {
        if (v20 == 32 || v20 == 9)
        {
          *a1 = v20;
          return result;
        }

        if (v20 - 127 >= 0xFFFFFFA2)
        {
          v22 = v20;
          sub_100264D48(&v22, &v23, a4);
        }
      }

LABEL_6:
      result = sub_1004A59D4();
      v9 = result;
      v10 = v11;
    }

    while (v11);
  }

  return result;
}

void *sub_100269884@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v6 = a2 - result;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    result = (*(v3 + 16))(&v7, 0);
    if (!v4)
    {
      *a3 = v7;
    }
  }

  return result;
}

void *sub_1002698E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 24);
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  result = v6(&v9, a1, a1 + v7);
  if (!v3)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_100269960(uint64_t a1)
{
  **(v1 + 16) = a1;
}

uint64_t sub_1002699A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 32);
    do
    {
      v4 = *v2++;
      v3 = v4;
      if ((v4 - 127) > 0xFFFFFFA0)
      {
        v5 = v3;
        v6[3] = &type metadata for UnsafeRawBufferPointer;
        v6[4] = &protocol witness table for UnsafeRawBufferPointer;
        v6[0] = &v5;
        v6[1] = v6;
        sub_10002587C(v6, &type metadata for UnsafeRawBufferPointer);
        sub_1004A43F4();
        result = sub_1000197E0(v6);
      }

      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_100269A7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

Swift::Int sub_100269B54(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

void sub_100269BCC()
{
  v1 = *v0;
  sub_1004A6EB4(*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1004A6EC4(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_100269C20(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EB4(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EC4(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1004A6F14();
}

unint64_t sub_100269C90()
{
  result = qword_1005D6340;
  if (!qword_1005D6340)
  {
    result = swift_getWitnessTable(byte_1004EA094, &type metadata for Boundary, v0, v1);
    atomic_store(result, &qword_1005D6340);
  }

  return result;
}

void sub_100269CE4(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v11 = 0;
  v12 = 0xE000000000000000;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  sub_1004A5874(v6);
  if (v4 && a2 != v4)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    do
    {
      if (*v4 - 1 <= 0x7D)
      {
        v9 = v7;
        v10 = v8;
        sub_1004A58C4();
        v7 = v9;
        v8 = v10;
      }

      ++v4;
    }

    while (v4 != a2);
    v11 = v7;
    v12 = v8;
  }

  *a3 = v11;
  a3[1] = v12;
}

void sub_100269D98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (v1)
    {
      v3 = v2 - v1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1002873B8(0, v3, v1, v2);
    }
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);

    sub_100269E14(v4, v5);
  }
}

uint64_t sub_100269E14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  sub_1004A5874(v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 <= 0x7D)
      {
        v8 = v5;
        v9 = v6;
        sub_1004A58C4();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_100269EB0(unsigned __int8 *a1, unsigned __int8 *a2, char a3)
{
  v5 = a1;
  v15 = 0;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  sub_1004A5874(v6);
  if (v5 && a2 != v5)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = v5;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      if ((v11 - 1) < 0x7E)
      {
        if (v10 != 92 || (a3 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (v9 == a2)
        {
          return v7;
        }

        v9 = v5 + 2;
        if (v5[1] - 1 < 0x7E)
        {
LABEL_7:
          v13 = v7;
          v14 = v8;
          sub_1004A58C4();
          v7 = v13;
          v8 = v14;
        }
      }

      v5 = v9;
      if (v9 == a2)
      {
        return v7;
      }
    }
  }

  return v15;
}

void sub_100269F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = sub_1002881FC(a1, a2, a3, a4);
  sub_1004A5874(v10);
  if (a1 == a2)
  {
    return;
  }

  if (a1 < a2)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    if (a3)
    {
      v13 = a4 - a3;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - 1;
    v15 = 1;
    v16 = a1;
    while (1)
    {
      if (a1 < 0 || v16 >= v13)
      {
        goto LABEL_21;
      }

      v17 = *(a3 + v16);
      if ((v17 - 1) >= 0x7E)
      {
        goto LABEL_16;
      }

      if ((v15 & a5 & 1) == 0 || v17 != 92)
      {
        break;
      }

      if (v14 == v16)
      {
        return;
      }

      v15 = 0;
LABEL_18:
      v18 = v16 + 1;
      if (v16 + 1 >= a1)
      {
        ++v16;
        if (v18 < a2)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v19 = v11;
    v20 = v12;
    sub_1004A58C4();
    v11 = v19;
    v12 = v20;
LABEL_16:
    if (v14 == v16)
    {
      return;
    }

    v15 = 1;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

BOOL sub_10026A098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v5 = *a1 == *a2 && v2 == v3;
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = 0;
  }

  v7 = *a1 == *a2 && v2 == v3;
  if (*(a2 + 16))
  {
    v7 = 0;
  }

  if (*(a1 + 16))
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_10026A0DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x28646E652ELL;
  }

  else
  {
    sub_1004A6724(16);

    v3 = 0x28656C6464696D2ELL;
  }

  v5 = v3;
  v6._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v6);

  v7._countAndFlagsBits = 3943982;
  v7._object = 0xE300000000000000;
  sub_1004A5994(v7);
  v8._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_1004A5994(v9);
  return v5;
}

char *sub_10026A1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *__little, uint64_t a7)
{
  if (!__little)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v13 = a7 - __little;
  v14 = a1;
  do
  {
    v15 = a3 + v14;
    result = memmem(a3 + v14, a2 - v14, __little, v13);
    if (!result)
    {
      break;
    }

    v17 = (result - v15);
    if (result - v15 < 0)
    {
      return 0;
    }

    v18 = &v17[v13];
    if (__OFADD__(v17, v13))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    if (a2 - v14 < v18)
    {
      return 0;
    }

    v19 = &v17[v14];
    if (__OFADD__(v17, v14))
    {
      goto LABEL_20;
    }

    v20 = __OFADD__(v18, v14);
    v14 += v18;
    if (v20)
    {
      goto LABEL_21;
    }

    if (v18 < v17 || v14 < v19)
    {
      goto LABEL_22;
    }

    if (v19 < a1)
    {
      goto LABEL_23;
    }

    if (v14 > a2)
    {
      goto LABEL_24;
    }

    result = sub_10026A334(a1, a2, a3, a4, a5, v19, v14);
  }

  while (v21 == -1);
  return result;
}

uint64_t sub_10026A334(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_134;
  }

  v8 = a3;
  v9 = result;
  if (result + 2 == a6)
  {
    result = a6 - 2;
    if (a6 - 2 >= v9 && result < a2)
    {
      if (*(a3 + result) != 45)
      {
        return 0;
      }

      if (a6 > a2)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

LABEL_7:
      if (*(a3 + a6 - 1) != 45)
      {
        return 0;
      }

      goto LABEL_35;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_32;
    }

    if (__OFADD__(result, 3))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (result + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_145;
    }

    if (*(a3 + result) != 10)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    if (__OFADD__(v9, 3))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v9 + 3 > a6)
    {
      return 0;
    }

    result = a6 - 3;
    if (a6 - 3 < v9 || result >= a2)
    {
      goto LABEL_146;
    }

    if (*(a3 + result) != 13)
    {
      return 0;
    }

    if (a6 - 2 >= a2)
    {
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    if (*(a3 + a6 - 2) != 45)
    {
      return 0;
    }

    if (a6 <= a2)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_32:
    v14 = a7;
    v15 = a4;
    v16 = a2;
    result = sub_10026A978(v9, a2, a3, a6);
    if (v18)
    {
      result = sub_10026AA1C(v9, v16, v8, a6);
      if (v19)
      {
        return 0;
      }
    }

    a2 = v16;
    a4 = v15;
    a7 = v14;
    goto LABEL_35;
  }

  if (a5)
  {
    goto LABEL_23;
  }

  v10 = a7;
  v11 = a4;
  v12 = a2;
  result = sub_10026A978(result, a2, a3, a6);
  if (v13)
  {
    return 0;
  }

  a2 = v12;
  a4 = v11;
  a7 = v10;
LABEL_35:
  v20 = a7 + 2;
  if (__OFADD__(a7, 2))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v20 == a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_138;
    }

    if (*(v8 + a7) == 45)
    {
      if (a7 + 1 >= a2)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        if (result <= a2)
        {
          return result;
        }

        goto LABEL_149;
      }
    }
  }

  v21 = result;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      goto LABEL_59;
    }

    v26 = a7 + 1;
    if (a7 >= a2)
    {
      goto LABEL_65;
    }

    if (a7 < v9)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (*(v8 + a7) != 10)
    {
LABEL_65:
      v33 = a7 + 3;
      if (__OFADD__(a7, 3))
      {
LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      if (v33 > a2)
      {
        goto LABEL_101;
      }

      if (a7 < v9 || a7 >= a2)
      {
        goto LABEL_154;
      }

      if (*(v8 + a7) != 2)
      {
        goto LABEL_101;
      }

      if (v26 >= a2)
      {
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      if (*(v8 + v26) != 45)
      {
        goto LABEL_101;
      }

      if (v20 < v9 || v20 >= a2)
      {
        goto LABEL_163;
      }

      v27 = *(v8 + v20);
      if (v27 != 10)
      {
        goto LABEL_101;
      }

      if (v33 >= result)
      {
        return v21;
      }

      __break(1u);
      goto LABEL_77;
    }

    if (v26 >= result)
    {
      return result;
    }

    __break(1u);
  }

  else if (!a5)
  {
    v22 = a2;
    v23 = a4;
    v24 = a7;
    result = sub_10026AAA4(a7, v9, a2, v8, result);
    a7 = v24;
    a4 = v23;
    a2 = v22;
    if (v25 != -1)
    {
      return result;
    }

    goto LABEL_101;
  }

  v27 = a7 + 1;
  if (a7 >= a2)
  {
    goto LABEL_77;
  }

  if (a7 < v9)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (*(v8 + a7) != 13)
  {
LABEL_77:
    v34 = a7 + 3;
    if (__OFADD__(a7, 3))
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v34 > a2)
    {
      goto LABEL_101;
    }

    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_155;
    }

    if (*(v8 + a7) != 45)
    {
      goto LABEL_101;
    }

    if (v27 >= a2)
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (*(v8 + v27) != 45)
    {
      goto LABEL_101;
    }

    if (v20 < v9 || v20 >= a2)
    {
      goto LABEL_164;
    }

    v32 = *(v8 + v20);
    if (v32 != 13)
    {
      goto LABEL_101;
    }

    if (v34 >= result)
    {
      return v21;
    }

    __break(1u);
    goto LABEL_89;
  }

  if (v27 >= result)
  {
    return result;
  }

  __break(1u);
LABEL_59:
  v28 = a4;
  v29 = a7;
  v30 = a2;
  result = sub_10026AAA4(a7, v9, a2, v8, result);
  if (v31 != -1)
  {
    return result;
  }

  a7 = v29;
  v32 = v29 + 1;
  a2 = v30;
  a4 = v28;
  if (v29 < v30)
  {
    if (v29 < v9)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    if (*(v8 + v29) == 10)
    {
      result = v21;
      if (v32 >= v21)
      {
        return result;
      }

      goto LABEL_162;
    }
  }

LABEL_89:
  v35 = a7 + 3;
  if (__OFADD__(a7, 3))
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v35 <= a2)
  {
    if (a7 < v9 || a7 >= a2)
    {
      goto LABEL_161;
    }

    if (*(v8 + a7) == 2)
    {
      if (v32 >= a2)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (*(v8 + v32) == 45)
      {
        if (v20 < v9 || v20 >= a2)
        {
          goto LABEL_166;
        }

        if (*(v8 + v20) == 10)
        {
          if (v35 < v21)
          {
LABEL_167:
            __break(1u);
            return result;
          }

          return v21;
        }
      }
    }
  }

LABEL_101:
  if (a2 < a7)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (a7 < v9)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v41 = a7;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (a7 == a2)
  {
    goto LABEL_104;
  }

  if (a7 >= a2)
  {
    goto LABEL_144;
  }

  result = v21;
  v36 = *(v8 + a7);
  if (v36 == 45)
  {
    if (a7 + 1 != a2)
    {
      if (a7 + 1 >= a2)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (*(v8 + a7 + 1) == 45)
      {
        a7 += 2;
        v41 = a7;
        if (a7 == a2)
        {
          goto LABEL_127;
        }

        goto LABEL_112;
      }
    }

    return 0;
  }

LABEL_112:
  if (a7 <= a2)
  {
    v37 = a2;
  }

  else
  {
    v37 = a7;
  }

  if (a7 >= a2)
  {
    goto LABEL_135;
  }

  v38 = *(v8 + a7);
  if (v38 != 32 && v38 != 9)
  {
    goto LABEL_129;
  }

  if (++a7 != a2)
  {
    while (v37 != a7)
    {
      v39 = *(v8 + a7);
      if (v39 != 32 && v39 != 9)
      {
        goto LABEL_129;
      }

      if (a2 == ++a7)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_135;
  }

LABEL_126:
  v41 = a2;
  v42 = a2;
  v43 = v8;
  v44 = a4;
  if (v36 == 45)
  {
    goto LABEL_127;
  }

LABEL_104:
  v8 = &v41;
  if ((sub_100287784(a5) & 1) == 0)
  {
    return 0;
  }

  while (1)
  {
    result = v21;
LABEL_127:
    a2 = v41;
    if (v41 >= result)
    {
      return result;
    }

    __break(1u);
LABEL_129:
    v41 = a7;
    v42 = a2;
    v43 = v8;
    v44 = a4;
    if (v36 != 45)
    {
      goto LABEL_104;
    }

    v8 = &v41;
    if ((sub_100287784(a5) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10026A978(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result + 4 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 4;
  if (a4 - 4 < v4 || result >= a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a3 + result) != 13)
  {
    return 0;
  }

  if (a4 - 3 >= a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(a3 + a4 - 3) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10026AA1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__OFADD__(result, 3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result + 3 > a4)
  {
    return 0;
  }

  v4 = result;
  result = a4 - 3;
  if (a4 - 3 < v4 || result >= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a3 + result) != 10)
  {
    return 0;
  }

  if (a4 - 2 >= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a3 + a4 - 2) != 45)
  {
    return 0;
  }

  if (a4 <= a2)
  {
    if (*(a3 + a4 - 1) == 45)
    {
      return result;
    }

    return 0;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10026AAA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 <= a3)
  {
    if (result < a2 || result >= a3)
    {
      goto LABEL_27;
    }

    if (*(a4 + result) == 13)
    {
      if (result + 1 >= a3)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (*(a4 + result + 1) == 10)
      {
        if (v6 >= a5)
        {
          return a5;
        }

        goto LABEL_31;
      }
    }
  }

  v7 = result + 4;
  if (__OFADD__(result, 4))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 > a3)
  {
    return 0;
  }

  if (result < a2 || result >= a3)
  {
    goto LABEL_28;
  }

  if (*(a4 + result) != 45)
  {
    return 0;
  }

  if (result + 1 >= a3)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (*(a4 + result + 1) != 45)
  {
    return 0;
  }

  if (v6 < a2 || v6 >= a3)
  {
    goto LABEL_32;
  }

  if (*(a4 + v6) != 13)
  {
    return 0;
  }

  if (result + 3 < a3)
  {
    if (*(a4 + result + 3) == 10)
    {
      if (v7 >= a5)
      {
        return a5;
      }

      goto LABEL_34;
    }

    return 0;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

double Cache.init()()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  return result;
}

uint64_t Cache.deinit()
{
  swift_beginAccess();
  v1 = *(*(v0 + 80) + 16);
  if (v1)
  {

    v2 = 40;
    do
    {
      ucnv_close();
      v2 += 16;
      --v1;
    }

    while (v1);
  }

  if ((*(v0 + 96) & 1) == 0)
  {
    v3 = *(v0 + 88);
    if (v3)
    {
      uidna_close(v3);
    }
  }

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Cache.CachedConverter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cache.CachedConverter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_10026ADD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  swift_beginAccess();
  v7 = *(a2 + 80);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      if (v11 == a1)
      {
        v16 = *v10;
        if (v9)
        {
          sub_10026B044(v9);
          sub_10026B0D0(0, 0, v11, v16);
        }

        swift_endAccess();
        ucnv_reset();
        ucnv_setFallback();
        v19 = v16;
        goto LABEL_16;
      }

      ++v9;
      v10 += 2;
    }

    while (v8 != v9);
  }

  swift_endAccess();
  LODWORD(v19) = 0;
  v12 = ucnv_open();
  ucnv_setFallback();
  swift_beginAccess();
  sub_10026B0D0(0, 0, a1, v12);
  v13 = *(a2 + 80);
  if (*(v13 + 2) < 3uLL)
  {
    goto LABEL_12;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 80) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    v15 = *(v13 + 2);
    if (!v15)
    {
      goto LABEL_11;
    }

LABEL_8:
    *(v13 + 2) = v15 - 1;
    *(a2 + 80) = v13;
    ucnv_close();
    if (*(v13 + 2) <= 2uLL)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_10026B274(v13);
  v15 = *(v13 + 2);
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  swift_endAccess();
  v19 = v12;
LABEL_16:
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0xE000000000000000;
  a3(&v18, &v19);

  if (!v3)
  {
    return v18;
  }

  return result;
}

uint64_t sub_10026B044(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10026B274(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_10026B0D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_100273DF4(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_10026B1AC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_10026B1AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double sub_10026B2E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t ContentDisposition.kind.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10026B32C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_10026B32C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t static ContentDisposition.Kind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t sub_10026B3B0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_1004A6D34();
}

double sub_10026B458(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t ContentDisposition.Attribute.key.setter(uint64_t a1, uint64_t a2)
{
  result = sub_10026B4A4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_10026B4A4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t ContentDisposition.Attribute.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static ContentDisposition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a5 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (a2 != 2)
  {
    if (a5 >= 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_15;
      }

      v8 = a3;
      v9 = a6;
      v10 = sub_1004A6D34();
      a3 = v8;
      a6 = v9;
      if (v10)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (a5 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_10026B84C(a3, a6);
}

uint64_t sub_10026B608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 12)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v10 = v3[1];
      v9 = v3[2];
      v11 = v3[3];
      v46 = v3[7];
      v12 = *(i - 3);
      v13 = *(i - 2);
      v15 = *(i - 1);
      v14 = *i;
      v17 = i[1];
      v16 = i[2];
      v18 = i[3];
      v45 = i[6];
      v43 = i[4];
      v44 = i[7];
      v41 = v3[6];
      v42 = i[5];
      v39 = v3[4];
      v40 = v3[5];
      if (v5)
      {
        if (!v12)
        {
          return 0;
        }

        if (*(v3 - 4) != *(i - 4) || v5 != v12)
        {
          v36 = v3[2];
          v37 = i[2];
          v19 = v3[3];
          v34 = i[3];
          v35 = v3[1];
          v20 = *v3;
          v21 = *i;
          v33 = i[1];
          v22 = sub_1004A6D34();
          v17 = v33;
          v18 = v34;
          v14 = v21;
          v10 = v35;
          v9 = v36;
          v7 = v20;
          v16 = v37;
          v11 = v19;
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v6 != v13 || v8 != v15)
      {
        v38 = v16;
        v23 = v9;
        v24 = v11;
        v25 = v18;
        v26 = v7;
        v27 = v10;
        v28 = v14;
        v29 = v2;
        v30 = v17;
        v31 = sub_1004A6D34();
        v17 = v30;
        v2 = v29;
        v14 = v28;
        v10 = v27;
        v7 = v26;
        v18 = v25;
        v16 = v38;
        v11 = v24;
        v9 = v23;
        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      if ((v9 != v16 || v11 != v18 || v7 >> 16 != v14 >> 16 || v10 >> 16 != v17 >> 16) && (sub_1004A6CD4() & 1) == 0 || (v41 != v45 || v46 != v44 || v39 >> 16 != v43 >> 16 || v40 >> 16 != v42 >> 16) && (sub_1004A6CD4() & 1) == 0)
      {
        break;
      }

      v3 += 12;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10026B84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5 > 2)
      {
        switch(v5)
        {
          case 3:
            if (v8 != 3)
            {
              return 0;
            }

            goto LABEL_30;
          case 4:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_30;
          case 5:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      else
      {
        switch(v5)
        {
          case 0:
            if (v8)
            {
              return 0;
            }

            goto LABEL_30;
          case 1:
            if (v8 != 1)
            {
              return 0;
            }

            goto LABEL_30;
          case 2:
            if (v8 != 2)
            {
              return 0;
            }

            goto LABEL_30;
        }
      }

      if (v8 < 6)
      {
        return 0;
      }

      if (*(v3 - 3) != *(v4 - 3) || v5 != v8)
      {
        v11 = *(v3 - 1);
        v12 = *v3;
        v13 = *(v4 - 1);
        v14 = *v4;
        v15 = sub_1004A6D34();
        v10 = v14;
        v9 = v13;
        v7 = v12;
        v16 = v15;
        v6 = v11;
        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_30:
      if ((v6 != v9 || v7 != v10) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10026B9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1004A6D34() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10026BA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v28[0] = *(a1 + 32);
    v28[1] = v3;
    v29 = *(a1 + 64);
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v7 = *(a2 + 48);
    v30[0] = *(a2 + 32);
    v30[1] = v7;
    v31 = *(a2 + 64);
    v8 = *(a2 + 40);
    v22 = *(a2 + 32);
    v23 = v4;
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 64);
    v13 = *(a2 + 72);
    v12 = *(a2 + 80);
    if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v28, v30))
    {
      return 0;
    }

    v15 = (a1 + 136);
    for (i = a2 + 88; ; i += 56)
    {
      if (v5)
      {
        if (!v12 || (v23 != v13 || v5 != v12) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_10026E678(v22, v8, v9, v10, v11);

        sub_10026E76C(v22, v8, v9, v10, v11);
        if (v12)
        {

          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      v17 = *(v15 - 2);
      v24[0] = *(v15 - 3);
      v24[1] = v17;
      v25 = *(v15 - 16);
      v18 = *(v15 - 1);
      v5 = *v15;
      v19 = *(i + 16);
      v26[0] = *i;
      v26[1] = v19;
      v11 = *(i + 32);
      v27 = v11;
      v8 = *(i + 8);
      v22 = *i;
      v23 = v18;
      v9 = *(i + 16);
      v10 = *(i + 24);
      v13 = *(i + 40);
      v12 = *(i + 48);
      v20 = _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v24, v26);
      result = 0;
      v15 += 7;
      if (!v20)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_10026BC48(uint64_t *a1, void *a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v8 = a2[1];
  v7 = a2[2];
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v8 == 1)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v6 != 2)
  {
    if (v8 >= 3)
    {
      if (*a1 == *a2 && v6 == v8)
      {
        goto LABEL_15;
      }

      v10 = v5;
      v11 = v7;
      v12 = sub_1004A6D34();
      v7 = v11;
      v13 = v12;
      v5 = v10;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  if (v8 != 2)
  {
    return 0;
  }

LABEL_15:

  return sub_10026B84C(v5, v7);
}

uint64_t ContentDisposition.description.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10026B2E0(a1, a2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(a1, a2, a3);
}

uint64_t sub_10026BD64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_10026B2E0(v1, v2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(v1, v2, v3);
}

uint64_t ContentDisposition.Kind.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656E696C6E69;
  }

  sub_10026B2E0(a1, a2);
  return v4;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = v3;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0x656E696C6E69;
  }
}

{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return 0x7461642D64616572;
      case 4:
        return 1702521203;
      case 5:
        return 1701667182;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0x6E6F697461657263;
    }

    else if (a2 == 2)
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    return 0x656D616E656C6966;
  }

  return result;
}

uint64_t sub_10026BEB4()
{
  v1 = v0[1];
  v2 = 0x656D686361747461;
  v3 = 0x7461642D6D726F66;
  if (v1 != 2)
  {
    v3 = *v0;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x656E696C6E69;
  }

  sub_10026B2E0(*v0, v1);
  return v4;
}

uint64_t ContentDisposition.Attribute.description.getter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  sub_10026B458(a1, a2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(a1, a2, a3, a4);
}

uint64_t sub_10026BFA8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_10026B458(v1, v2);

  return _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v1, v2, v4, v3);
}

unint64_t ContentDisposition.Attribute.Key.description.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v2 = 0x7461642D64616572;
        goto LABEL_15;
      case 4:
        v2 = 1702521203;
        goto LABEL_15;
      case 5:
        v2 = 1701667182;
        goto LABEL_15;
    }

LABEL_12:
    v2 = a1;
    goto LABEL_15;
  }

  if (!a2)
  {
    v2 = 0x656D616E656C6966;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v2 = 0x6E6F697461657263;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v2 = 0xD000000000000011;
LABEL_15:
  sub_10026B458(a1, a2);
  return v2;
}

uint64_t sub_10026C1D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s9IMAP2MIME18ContentDispositionV4KindOyAESScfC_0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10026C208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyOyAGSScfC_0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10026C240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  for (i = (a5 + 80); ; i += 7)
  {
    if (*(i - 4))
    {
      goto LABEL_5;
    }

    v8 = *(i - 3);
    v9 = *(i - 2);
    v10 = *(i - 8);
    v11 = *i;
    v12 = *(i - 48);
    if (v12 <= 2 && v12 != 1 && v12 != 2)
    {
      break;
    }

    v7 = sub_1004A6D34();

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_5:
    if (!--v5)
    {
      return 0;
    }
  }

LABEL_14:

  return sub_1002A350C(v8, v9, v10, v11, a1);
}

Swift::Int sub_10026C3E0()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10026C488(unsigned __int8 a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026C594(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10026C628(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10026C6CC(uint64_t a1, unsigned __int8 a2)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_10026C7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EA48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10026C804(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x656D686361747461;
  if (v2 != 1)
  {
    v5 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10026C868(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D686361747461;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x7461642D6D726F66;
    v4 = 0xE900000000000061;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x656D686361747461;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x7461642D6D726F66;
    v8 = 0xE900000000000061;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

unint64_t sub_10026C988@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EA94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10026C9F4(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

unint64_t sub_10026CB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026EAE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10026CB38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D616E656C6966;
  v5 = 0xE900000000000065;
  v6 = 0x7461642D64616572;
  v7 = 1702521203;
  if (v2 != 4)
  {
    v7 = 1701667182;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0xED0000657461642DLL;
  v9 = 0x6E6F697461657263;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000001004AD150;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10026CC0C(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 > 0x6Du)
  {
    if (v4 == 110)
    {
      if (v5 != 97 || v6 != 109 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 5;
    }

    else if (v4 == 114)
    {
      if (v5 != 101 || v6 != 97 || v7 != 100)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 3;
    }

    else
    {
      if (v4 != 115 || v5 != 105 || v6 != 122 || v7 != 101)
      {
        return 6;
      }

      v8 = a1;
      v9 = a2;
      v10 = 4;
    }

    goto LABEL_32;
  }

  if (v4 == 99)
  {
    if (v5 != 114 || v6 != 101 || v7 != 97)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_32;
  }

  if (v4 == 102)
  {
    if (v5 != 105 || v6 != 108 || v7 != 101)
    {
      return 6;
    }

    v8 = a1;
    v9 = a2;
    v10 = 0;
LABEL_32:
    result = sub_10026EFC0(v8, v9, v10);
    if (result != 6)
    {
      return result;
    }

    return 6;
  }

  if (v4 == 109 && v5 == 111 && v6 == 100 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_32;
  }

  return 6;
}

uint64_t sub_10026CE10(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 97)
  {
    if (v5 != 116 || v6 != 116 || v7 != 97)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_16;
  }

  if (v4 == 102)
  {
    if (v5 != 111 || v6 != 114 || v7 != 109)
    {
      return 3;
    }

    v8 = a1;
    v9 = a2;
    v10 = 2;
LABEL_16:
    result = sub_10026EDCC(v8, v9, v10);
    if (result != 3)
    {
      return result;
    }

    return 3;
  }

  if (v4 == 105 && v5 == 110 && v6 == 108 && v7 == 105)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_16;
  }

  return 3;
}

uint64_t sub_10026CF58(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v7 = a1;
    v9 = *(a4 + 16);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_53:

    return v8;
  }

  v8 = sub_10027C548(a1, a2);
  v9 = *(a4 + 16);
  if (!v9)
  {
    goto LABEL_53;
  }

LABEL_3:
  v52[1] = v7;
  v53 = v8;
  v62 = _swiftEmptyArrayStorage;
  v57 = a5;
  sub_1002ADF98(0, v9, 0);
  v10 = 0;
  v54 = 0;
  v55 = v9;
  v11 = _swiftEmptyArrayStorage;
  v52[0] = a4;
  v56 = a4 + 32;
  while (1)
  {
    v58 = v11;
    v12 = (v56 + 56 * v10);
    v13 = *v12;
    v15 = v12[3];
    v14 = v12[4];
    v16 = *(v12 + 40);
    v17 = v12[6];
    if (v12[2])
    {
      break;
    }

    v23 = 0;
    v24 = v13;
    if (v16)
    {
      goto LABEL_20;
    }

LABEL_42:
    v40 = v23;
    v63 = 0;
    v64 = 0xE000000000000000;

    v41 = v57;

    sub_1002A2B60(v15, v14, v16, v17, v15, v14, v16, v17, v41, &v63);
    swift_bridgeObjectRelease_n();

    v42 = v63;
    v43 = v64;
    v44 = v55;
    v11 = v58;
LABEL_43:
    v62 = v11;
    v46 = v11[2];
    v45 = v11[3];
    if (v46 >= v45 >> 1)
    {
      sub_1002ADF98((v45 > 1), v46 + 1, 1);
      v11 = v62;
    }

    ++v10;
    v11[2] = v46 + 1;
    v47 = &v11[4 * v46];
    v47[4] = v40;
    v47[5] = v24;
    v47[6] = v42;
    v47[7] = v43;
    if (v10 == v44)
    {

      return v53;
    }
  }

  v18 = v12[1];
  v63 = 0;
  v64 = 0xE000000000000000;
  if (v13)
  {
    v19 = v18 - v13;
  }

  else
  {
    v19 = 0;
  }

  sub_1004A5874(v19);
  if (v13)
  {
    v20 = v18 == v13;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = v63;
    v22 = v64;
    do
    {
      if (*v13 - 1 <= 0x7D)
      {
        v60 = v21;
        v61 = v22;
        sub_1004A58C4();
        v21 = v60;
        v22 = v61;
      }

      ++v13;
    }

    while (v13 != v18);
    v63 = v21;
    v64 = v22;
  }

  v23 = v63;
  v24 = v64;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (*(v17 + 16) != 1)
  {
    goto LABEL_42;
  }

  if ((*(v17 + 48) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v25 = *(v17 + 32);
  v26 = *(v17 + 40);
  if ((sub_1002A1DA8(v25, v26) & 1) == 0)
  {
    goto LABEL_42;
  }

  if (v25)
  {
    v27 = v26 - v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
  }

  v28 = sub_1002A890C(0, v27, v25, v26);
  if (v30)
  {
    v31 = v30 + v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30 + v28;
  }

  else
  {
    v32 = 0;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  v33 = v31 - v32;
  if (v32)
  {
    v34 = v31 - v32;
  }

  else
  {
    v34 = 0;
  }

  sub_1004A5874(v34);
  v59 = 0;
  if (!v32)
  {
    v33 = 0;
    v11 = v58;
LABEL_48:

    goto LABEL_49;
  }

  v35 = v57;
  v11 = v58;
  if (v33 < 0)
  {
    goto LABEL_56;
  }

  if (v33 < 1025)
  {
    goto LABEL_48;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
LABEL_49:
    __chkstk_darwin(isStackAllocationSafe);
    v63 = v52 - v48;
    v64 = v33;
    v65 = 0;
    v49 = v54;
    sub_10029F954(&v63, &v60, v32, v31, v50, &v59);
    if (v49)
    {
      goto LABEL_58;
    }

    v54 = 0;
    goto LABEL_51;
  }

  v37 = swift_slowAlloc();

  v38 = v35;
  v39 = v54;
  sub_1002A5760(v37, v31 - v32, &v60, v32, v31, v38, &v59);
  if (!v39)
  {
    v54 = 0;

LABEL_51:
    v44 = v55;
    v40 = v23;

    v42 = v60;
    v43 = v61;
    goto LABEL_43;
  }

  __break(1u);
LABEL_58:

  result = swift_willThrow();
  __break(1u);
  return result;
}