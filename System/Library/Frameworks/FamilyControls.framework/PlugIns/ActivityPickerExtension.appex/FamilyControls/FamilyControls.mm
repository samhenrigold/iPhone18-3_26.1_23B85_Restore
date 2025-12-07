uint64_t sub_100001824()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100001898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1000018E4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t sub_100001938(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000019A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100001A68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001AB0(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E00, &unk_100034A40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044DF8, &qword_100034A38);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100001BE8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E00, &unk_100034A40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100001DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100001E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_100001E68(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_100001EBC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100001F2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100001FEC(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E18, &qword_100034AA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044E10, &qword_100034A98);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100002124(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E18, &qword_100034AA0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044E10, &qword_100034A98);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_1000022CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100002344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000023EC(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100002470(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

void sub_100002518(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1000025A8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_100001A68(a2, a3);
  sub_1000332D4();
  return swift_endAccess();
}

uint64_t sub_100002620(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100044E28, &qword_100034AF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100044E20, &qword_100034AF0);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100002758(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100044E28, &qword_100034AF8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

void sub_1000028CC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1000332E4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1000332E4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_100002A44(uint64_t a1, ActivityPickerServiceViewController *a2, ActivityPickerServiceViewController *a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  sub_100002AAC(a1, a2, a3, v4);
  return v8;
}

unint64_t sub_100002AAC(uint64_t a1, ActivityPickerServiceViewController *a2, ActivityPickerServiceViewController *a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v10 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - v12;
  v14 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v43 = 0;
  v44 = 1;
  sub_1000332C4();
  v39[1] = v11;
  v39[2] = v10;
  (*(v11 + 32))(v5 + v14, v13, v10);
  v15 = type metadata accessor for ActivityItem(0);
  v16 = (*(v15 + 448))(1, a1, a2);
  a2, v17, v18, v19, v20, v21, v22, v23;
  swift_beginAccess();
  v42 = v16;
  sub_1000332C4();
  swift_endAccess();
  v43 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_16:
    v31 = sub_100034054();
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_3:
      v40 = v6;
      v41 = v5;
      v32 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v6 = sub_100033FC4();
          v5 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v5 = v41;
            LOBYTE(v6) = v40;
            break;
          }
        }

        else
        {
          if (v32 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *&a3->tokenEncoder[8 * v32];

          v5 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_13;
          }
        }

        v33 = *(*v6 + 240);

        v35 = v33(v34);

        if (v35)
        {
          sub_100033FF4();
          sub_100034024();
          sub_100034034();
          sub_100034004();
        }

        else
        {
        }

        ++v32;
        if (v5 == v31)
        {
          goto LABEL_14;
        }
      }
    }
  }

  a3, v24, v25, v26, v27, v28, v29, v30;

  v43 = sub_1000063B0(v36);
  sub_100004B48(&v43);

  v37 = v43;
  swift_beginAccess();
  v42 = v37;
  sub_100001A68(&qword_100044E08, &unk_100035A80);
  sub_1000332C4();
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup_includeEntireCategory) = v6 & 1;
  return v5;
}

uint64_t sub_100002EC8()
{
  v1 = (*(*v0 + 112))();
  v2 = (*(*v1 + 240))(v1);

  return v2 & 1;
}

void *sub_100002F40()
{
  v23 = &_swiftEmptySetSingleton;
  v22[0] = &_swiftEmptySetSingleton;
  v22[1] = &_swiftEmptySetSingleton;
  v1 = *(*v0 + 112);
  v2 = *v1();
  v3 = (*(v2 + 384))();

  if (v3 & 1) == 0 || (v5 = (v1)(v4), v6 = (*(*v5 + 240))(v5), v7 = , (v6) && (v8 = (v1)(v7), v9 = *(v8 + 24), v10 = *(v8 + 32), , , sub_100005AEC(v20, v9, v10), v21, v11, v12, v13, v14, v15, v16, v17, *(v0 + OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup_includeEntireCategory) == 1))
  {
    sub_1000030E4(v0, &v23, v22);
  }

  swift_beginAccess();
  v18 = v23;
  swift_beginAccess();
  return v18;
}

void sub_1000030E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = sub_100033294();
  v6 = *(v65 - 8);
  v7 = __chkstk_darwin(v65);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*a1 + 160))(v7);
  v19 = v10;
  if (!(v10 >> 62))
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_23;
  }

  v20 = sub_100034054();
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v63 = (v6 + 8);
    *&v18 = 136446210;
    v60 = v18;
    v61 = a2;
    v62 = a3;
    v64 = v20;
    v66 = v19;
    do
    {
      if (v22)
      {
        v23 = sub_100033FC4();
      }

      else
      {
        v23 = *(v19 + 8 * v21 + 32);
      }

      if ((*(*v23 + 384))())
      {
        v24 = *(v23 + 24);
        v25 = *(v23 + 32);
        if (*(v23 + 16) && *(v23 + 16) == 1)
        {

          sub_100033274();

          v26 = sub_100033284();
          v27 = v9;
          v28 = sub_100033EB4();
          v25, v29, v30, v31, v32, v33, v34, v35;
          if (os_log_type_enabled(v26, v28))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v67[0] = v37;
            *v36 = v60;
            v38 = sub_1000045A0(v24, v25, v67);
            v25, v39, v40, v41, v42, v43, v44, v45;
            *(v36 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v26, v28, "Unexpected category identifier %{public}s selected", v36, 0xCu);
            sub_100006A74(v37);
          }

          else
          {

            v25, v53, v54, v55, v56, v57, v58, v59;
          }

          (*v63)(v27, v65);
          v9 = v27;
          v20 = v64;
        }

        else
        {
          swift_beginAccess();

          sub_100005AEC(v68, v24, v25);
          swift_endAccess();

          v69, v46, v47, v48, v49, v50, v51, v52;
        }

        v19 = v66;
      }

      else
      {
      }

      ++v21;
    }

    while (v20 != v21);
LABEL_23:
    v19, v11, v12, v13, v14, v15, v16, v17;
    return;
  }

  __break(1u);
}

void sub_1000034AC(uint64_t a1, unint64_t a2, ActivityPickerServiceViewController *a3)
{
  v4 = v3;
  v8 = *(*v3 + 112);
  v9 = v8();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  v12 = sub_100003BD8(v10, v11, a2);
  v11, v13, v14, v15, v16, v17, v18, v19;
  if (v12)
  {
    a3, v20, v21, v22, v23, v24, v25, v26;
    a2, v27, v28, v29, v30, v31, v32, v33;
    a1, v34, v35, v36, v37, v38, v39, v40;
    v41 = *v8();
    (*(v41 + 392))(1);

    v43 = *(*v4 + 160);
    v44 = (v43)(v42);
    if (v44 >> 62)
    {
      goto LABEL_62;
    }

    a1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44, v45, v46, v47, v48, v49, v50, v51;
    while (1)
    {
      if (!a1)
      {
        return;
      }

      v53 = 0;
      while (1)
      {
        v44 = (v43)(v52);
        v54 = v44;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v55 = sub_100033FC4();
          goto LABEL_9;
        }

        if (v53 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v55 = *(v44 + 8 * v53 + 32);

LABEL_9:
        ++v53;
        v54, v56, v57, v58, v59, v60, v61, v62;
        (*(*v55 + 392))(1);

        if (a1 == v53)
        {
          return;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v232 = v44;
      a1 = sub_100034054();
      v232, v233, v234, v235, v236, v237, v238, v239;
      if (a1 < 0)
      {
        __break(1u);
        goto LABEL_64;
      }
    }
  }

  v252 = a3;
  v253 = *(*v4 + 160);
  v52 = v253();
  if (v52 >> 62)
  {
LABEL_64:
    v240 = v52;
    v43 = sub_100034054();
    v240, v241, v242, v243, v244, v245, v246, v247;
    if (v43 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v43 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52, v63, v64, v65, v66, v67, v68, v69;
  }

  v77 = v252;
  if (v43)
  {
    v248 = a2;
    a2 = 0;
    v249 = a1 + 56;
    v250 = v43;
    v251 = a1;
    while (1)
    {
      v44 = (v253)(v77);
      v86 = v44;
      if ((v44 & 0xC000000000000001) != 0)
      {
        v87 = sub_100033FC4();
      }

      else
      {
        if (a2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v87 = *(v44 + 8 * a2 + 32);
      }

      v95 = v4;
      v86, v88, v89, v90, v91, v92, v93, v94;
      v43 = *(v87 + 16);
      v96 = *(v87 + 24);
      v97 = *(v87 + 32);
      sub_100006698();

      sub_100033DC4();
      sub_100033DC4();
      if (v254 == v256 && v255 == v257)
      {
        break;
      }

      v112 = sub_1000340D4();
      v255, v113, v114, v115, v116, v117, v118, v119;
      v257, v120, v121, v122, v123, v124, v125, v126;
      if (v112)
      {
        goto LABEL_27;
      }

      v43 = &type metadata for ActivityItem.ActivityItemType;
      sub_100033DC4();
      sub_100033DC4();
      if (v254 == v256 && v255 == v257)
      {
        v255, v151, v256, v152, v153, v154, v155, v156;
        v257, v157, v158, v159, v160, v161, v162, v163;
        v4 = v95;
LABEL_45:
        v44 = (v253)(v164);
        v180 = v44;
        v128 = v251;
        if ((v44 & 0xC000000000000001) != 0)
        {
          v181 = sub_100033FC4();
        }

        else
        {
          if (a2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v181 = *(v44 + 8 * a2 + 32);
        }

        v180, v182, v183, v184, v185, v186, v187, v188;
        v43 = v252;
        v189 = sub_100003BD8(v96, v97, v252);
        v97, v190, v191, v192, v193, v194, v195, v196;
        (*(*v181 + 392))(v189 & 1);

        goto LABEL_19;
      }

      v165 = sub_1000340D4();
      v255, v166, v167, v168, v169, v170, v171, v172;
      v257, v173, v174, v175, v176, v177, v178, v179;
      v4 = v95;
      if (v165)
      {
        goto LABEL_45;
      }

      v97, v197, v198, v199, v200, v201, v202, v203;
      v128 = v251;
LABEL_18:
      v43 = v252;
LABEL_19:
      if (++a2 == v250)
      {
        v43, v79, v80, v81, v82, v83, v84, v85;
        v248, v204, v205, v206, v207, v208, v209, v210;
        v128, v211, v212, v213, v214, v215, v216, v217;
        return;
      }
    }

    v255, v98, v256, v99, v100, v101, v102, v103;
    v257, v104, v105, v106, v107, v108, v109, v110;
LABEL_27:
    v4 = v95;
    v44 = (v253)(v111);
    v127 = v44;
    if ((v44 & 0xC000000000000001) != 0)
    {
      v130 = sub_100033FC4();
      v128 = v251;
      v129 = v249;
    }

    else
    {
      v128 = v251;
      v129 = v249;
      if (a2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v130 = *(v44 + 8 * a2 + 32);
    }

    v127, v131, v132, v133, v134, v135, v136, v137;
    if (*(v128 + 16) && (sub_100034154(), sub_100033D74(), v145 = sub_100034164(), v146 = -1 << *(v128 + 32), v147 = v145 & ~v146, ((*(v129 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) != 0))
    {
      v148 = ~v146;
      while (1)
      {
        v149 = (*(v128 + 48) + 16 * v147);
        v138 = v149[1];
        v150 = *v149 == v96 && v138 == v97;
        if (v150 || (sub_1000340D4() & 1) != 0)
        {
          break;
        }

        v147 = (v147 + 1) & v148;
        if (((*(v129 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v78 = 1;
    }

    else
    {
LABEL_16:
      v78 = 0;
    }

    v97, v138, v139, v140, v141, v142, v143, v144;
    (*(*v130 + 392))(v78);

    goto LABEL_18;
  }

  v252, v70, v71, v72, v73, v74, v75, v76;
  a2, v218, v219, v220, v221, v222, v223, v224;

  a1, v225, v226, v227, v228, v229, v230, v231;
}

uint64_t sub_100003BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100034154();
  sub_100033D74();
  v6 = sub_100034164();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000340D4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void (*sub_100003CD0(void **a1))(ActivityPickerServiceViewController **a1, char a2)
{
  a1[3] = v1;
  *a1 = sub_100002F40();
  a1[1] = v3;
  a1[2] = v4;
  return sub_100003D1C;
}

void sub_100003D1C(ActivityPickerServiceViewController **a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    sub_1000034AC(v3, v2, v4);
    v3, v5, v6, v7, v8, v9, v10, v11;
    v2, v12, v13, v14, v15, v16, v17, v18;

    v4, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    sub_1000034AC(*a1, v2, v4);
  }
}

void sub_100003DB8(uint64_t a1)
{
  v2 = *((*(*v1 + 112))() + 32);

  sub_100033D74();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_100003E40(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  v7 = (*(*a2 + 112))(v6);
  v9 = *(v7 + 24);
  v8 = *(v7 + 32);

  if (v5 == v9 && v4 == v8)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1000340D4();
  }

  v4, v10, v11, v12, v13, v14, v15, v16;
  v8, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_100003F34()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category[0];
  v2 = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items[0];
  v4 = sub_100001A68(&qword_100044E10, &qword_100034A98);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v6 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_100004038()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__category[0];
  v2 = sub_100001A68(&qword_100044DF8, &qword_100034A38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__items[0];
  v4 = sub_100001A68(&qword_100044E10, &qword_100034A98);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC23ActivityPickerExtension13ActivityGroup__selectionIndication;
  v6 = sub_100001A68(&qword_100044E20, &qword_100034AF0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

Swift::Int sub_100004178()
{
  sub_100034154();
  (*(*v0 + 296))(v2);
  return sub_100034164();
}

Swift::Int sub_100004278(uint64_t a1)
{
  sub_100034154();
  (*(**v1 + 296))(v3);
  return sub_100034164();
}

uint64_t sub_1000042E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 112))();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);

  v7 = (*(*v2 + 112))(v6);
  v9 = *(v7 + 24);
  v8 = *(v7 + 32);

  if (v5 == v9 && v4 == v8)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1000340D4();
  }

  v4, v10, v11, v12, v13, v14, v15, v16;
  v8, v19, v20, v21, v22, v23, v24, v25;
  return v18 & 1;
}

uint64_t sub_1000043D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityGroup(0);
  result = sub_1000332B4();
  *a2 = result;
  return result;
}

ActivityPickerServiceViewController *sub_100004414(ActivityPickerServiceViewController *result, int64_t a2, uint64_t a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tokenDecoder;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->hostingViewController;
  if (v11 <= v12)
  {
    v13 = *a4->hostingViewController;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100001A68(&qword_100044FF0, &unk_100035A90);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->hostingViewController = v12;
    *v14->tokenDecoder = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  tokenEncoder = v14->tokenEncoder;
  v18 = a4->tokenEncoder;
  if (v9)
  {
    if (v14 != a4 || tokenEncoder >= &v18[16 * v12])
    {
      memmove(tokenEncoder, v18, 16 * v12);
    }

    *a4->hostingViewController = 0;
  }

  else
  {
    memcpy(tokenEncoder, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

void *sub_100004518(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001A68(&qword_100044FE8, qword_100034C00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1000045A0(uint64_t a1, ActivityPickerServiceViewController *a2, uint64_t *a3)
{

  v6 = sub_10000466C(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006AC0(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100006A74(v18);
  return v14;
}

unint64_t sub_10000466C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100004778(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100033FE4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100004778(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000047C4(a1, a2);
  sub_1000048F4(&off_1000417C0);
  return v3;
}

void *sub_1000047C4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000049E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100033FE4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100033D94();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000049E0(v10, 0);
        result = sub_100033FA4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1000048F4(ActivityPickerServiceViewController *result)
{
  v2 = *result->hostingViewController;
  v3 = *v1;
  v4 = *(*v1)->hostingViewController;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tokenDecoder >> 1)
  {
    if (*result->hostingViewController)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_100004A54(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*result->hostingViewController)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *v3->hostingViewController;
  if ((*v3->tokenDecoder >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->tokenEncoder[v15], result->tokenEncoder, v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->hostingViewController;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->hostingViewController = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1000049E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001A68(&qword_100044FD8, &qword_100035220);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

ActivityPickerServiceViewController *sub_100004A54(ActivityPickerServiceViewController *result, int64_t a2, uint64_t a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tokenDecoder;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->hostingViewController;
  if (v11 <= v12)
  {
    v13 = *a4->hostingViewController;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100001A68(&qword_100044FD8, &qword_100035220);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *v14->hostingViewController = v12;
    *v14->tokenDecoder = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  tokenEncoder = v14->tokenEncoder;
  v17 = a4->tokenEncoder;
  if (v9)
  {
    if (v14 != a4 || tokenEncoder >= &v17[v12])
    {
      memmove(tokenEncoder, v17, v12);
    }

    *a4->hostingViewController = 0;
  }

  else
  {
    memcpy(tokenEncoder, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100004B48(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100006B84(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100004BC4(v6);
  return sub_100034004();
}

void sub_100004BC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1000340B4(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ActivityItem(0);
        v10 = sub_100033E24();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v20[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v20[1] = v9;
      v12 = v10;
      sub_100004E54(v20, v21, a1, v8, v4, v5, v6, v7);
      *(v11 + 16) = 0;
      v12, v13, v14, v15, v16, v17, v18, v19;
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
    sub_100004CC8(0, v2, 1, a1);
  }
}

void sub_100004CC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v22 = *(v5 + 8 * v4);
    v51 = v7;
    v52 = v6;
    while (1)
    {
      v23 = *v6;
      v24 = *(*v22 + 192);

      v26 = v24(v25);
      v28 = v27;
      v29 = (*(*v23 + 192))();
      v31 = v30;
      if (v26 == v29 && v28 == v30)
      {

        v28, v8, v9, v10, v11, v12, v13, v14;
        v31, v15, v16, v17, v18, v19, v20, v21;
LABEL_5:
        ++v4;
        v6 = v52 + 1;
        v7 = v51 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v33 = sub_1000340D4();

      v28, v34, v35, v36, v37, v38, v39, v40;
      v31, v41, v42, v43, v44, v45, v46, v47;
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v48 = *v6;
      v22 = v6[1];
      *v6 = v22;
      v6[1] = v48;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100004E54(char **result, const char *a2, uint64_t *a3, char *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_103:
    v11 = *result;
    if (!*result)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v170 = *v12->hostingViewController;
      if (v170 >= 2)
      {
        while (*a3)
        {
          v171 = *(&v12->super.super.super.isa + 2 * v170);
          v172 = *&v12->tokenDecoder[16 * v170];
          sub_100005668((*a3 + 8 * v171), (*a3 + 8 * *&v12->hostingViewController[16 * v170]), (*a3 + 8 * v172), v11);
          if (v9)
          {
            goto LABEL_113;
          }

          if (v172 < v171)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
          }

          if (v170 - 2 >= *v12->hostingViewController)
          {
            goto LABEL_129;
          }

          v173 = &v12->super.super.super.isa + 2 * v170;
          *v173 = v171;
          v173[1] = v172;
          sub_100005A4C(v170 - 1);
          v170 = *v12->hostingViewController;
          if (v170 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_139;
      }

LABEL_113:
      v12, a2, a3, a4, a5, a6, a7, a8;
      return;
    }

LABEL_135:
    v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_105;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11++;
    v184 = v12;
    if (v11 < v10)
    {
      v180 = v10;
      v14 = v13;
      v15 = *a3;
      v16 = v11;
      v178 = v14;
      v17 = *(*a3 + 8 * v14);
      v18 = *(**(*a3 + 8 * v11) + 192);

      v20 = v18(v19);
      v22 = v21;
      v23 = (*(*v17 + 192))();
      v31 = v24;
      v32 = v20 == v23 && v22 == v24;
      v175 = v9;
      if (v32)
      {
        v182 = 0;
      }

      else
      {
        v182 = sub_1000340D4();
      }

      v22, v24, v25, v26, v27, v28, v29, v30;
      v31, v33, v34, v35, v36, v37, v38, v39;

      v40 = 8 * v178;
      v41 = v15 + 8 * v178 + 16;
      v42 = 8 * v178 + 8;
      v11 = v16;
      do
      {
        v52 = v11;
        v53 = v42;
        if (++v11 >= v180)
        {
          break;
        }

        v186 = v11;
        v54 = *(v41 - 8);
        v55 = *(**v41 + 192);

        v57 = v55(v56);
        v59 = v58;
        v60 = (*(*v54 + 192))();
        v68 = v61;
        v69 = v57 == v60 && v59 == v61;
        v43 = v69 ? 0 : sub_1000340D4();
        v59, v61, v62, v63, v64, v65, v66, v67;
        v68, v44, v45, v46, v47, v48, v49, v50;

        v51 = v182 ^ v43;
        v41 += 8;
        v42 = v53 + 8;
        v12 = v184;
        v11 = v186;
      }

      while ((v51 & 1) == 0);
      v9 = v175;
      if ((v182 & 1) == 0)
      {
        goto LABEL_29;
      }

      v70 = v178;
      if (v11 < v178)
      {
        goto LABEL_132;
      }

      if (v178 < v11)
      {
        do
        {
          if (v70 != v52)
          {
            v72 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v73 = *(v72 + v40);
            *(v72 + v40) = *(v72 + v53);
            *(v72 + v53) = v73;
          }

          ++v70;
          v53 -= 8;
          v40 += 8;
        }

        while (v70 < v52--);
LABEL_29:
        v13 = v178;
        goto LABEL_30;
      }

      v13 = v178;
    }

LABEL_30:
    v74 = a3[1];
    if (v11 < v74)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_131;
      }

      if (v11 - v13 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v11 < v13)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100004414(0, *v12->hostingViewController + 1, 1, v12, a5, a6, a7, a8);
    }

    v124 = *v12->hostingViewController;
    v123 = *v12->tokenDecoder;
    v125 = v124 + 1;
    if (v124 >= v123 >> 1)
    {
      v12 = sub_100004414((v123 > 1), v124 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->hostingViewController = v125;
    v126 = v12 + 16 * v124;
    *(v126 + 4) = v13;
    *(v126 + 5) = v11;
    v127 = *result;
    if (!*result)
    {
      goto LABEL_140;
    }

    if (v124)
    {
      while (1)
      {
        v128 = v125 - 1;
        if (v125 >= 4)
        {
          break;
        }

        if (v125 == 3)
        {
          v129 = *v12->tokenEncoder;
          v130 = *v12->$__lazy_storage_$_client;
          v139 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          v132 = v139;
LABEL_72:
          if (v132)
          {
            goto LABEL_119;
          }

          v145 = &v12->super.super.super.isa + 2 * v125;
          v147 = *v145;
          v146 = v145[1];
          v148 = __OFSUB__(v146, v147);
          v149 = v146 - v147;
          v150 = v148;
          if (v148)
          {
            goto LABEL_122;
          }

          v151 = &v12->tokenEncoder[16 * v128];
          v153 = *v151;
          v152 = *(v151 + 1);
          v139 = __OFSUB__(v152, v153);
          v154 = v152 - v153;
          if (v139)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v149, v154))
          {
            goto LABEL_126;
          }

          if (v149 + v154 >= v131)
          {
            if (v131 < v154)
            {
              v128 = v125 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v155 = &v12->super.super.super.isa + 2 * v125;
        v157 = *v155;
        v156 = v155[1];
        v139 = __OFSUB__(v156, v157);
        v149 = v156 - v157;
        v150 = v139;
LABEL_86:
        if (v150)
        {
          goto LABEL_121;
        }

        v158 = v12 + 16 * v128;
        v160 = *(v158 + 4);
        v159 = *(v158 + 5);
        v139 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v139)
        {
          goto LABEL_124;
        }

        if (v161 < v149)
        {
          goto LABEL_3;
        }

LABEL_93:
        v166 = v128 - 1;
        if (v128 - 1 >= v125)
        {
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v167 = *&v12->tokenEncoder[16 * v166];
        v168 = *&v12->$__lazy_storage_$_client[16 * v128];
        sub_100005668((*a3 + 8 * v167), (*a3 + 8 * *&v12->tokenEncoder[16 * v128]), (*a3 + 8 * v168), v127);
        if (v9)
        {
          goto LABEL_113;
        }

        if (v168 < v167)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100005AD8(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v166 >= *v12->hostingViewController)
        {
          goto LABEL_116;
        }

        v169 = v12 + 16 * v166;
        *(v169 + 4) = v167;
        *(v169 + 5) = v168;
        sub_100005A4C(v128);
        v125 = *v12->hostingViewController;
        if (v125 <= 1)
        {
          goto LABEL_3;
        }
      }

      v133 = &v12->tokenEncoder[16 * v125];
      v134 = *(v133 - 64);
      v135 = *(v133 - 56);
      v139 = __OFSUB__(v135, v134);
      v136 = v135 - v134;
      if (v139)
      {
        goto LABEL_117;
      }

      v138 = *(v133 - 48);
      v137 = *(v133 - 40);
      v139 = __OFSUB__(v137, v138);
      v131 = v137 - v138;
      v132 = v139;
      if (v139)
      {
        goto LABEL_118;
      }

      v140 = &v12->super.super.super.isa + 2 * v125;
      v142 = *v140;
      v141 = v140[1];
      v139 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v139)
      {
        goto LABEL_120;
      }

      v139 = __OFADD__(v131, v143);
      v144 = v131 + v143;
      if (v139)
      {
        goto LABEL_123;
      }

      if (v144 >= v136)
      {
        v162 = &v12->tokenEncoder[16 * v128];
        v164 = *v162;
        v163 = *(v162 + 1);
        v139 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v139)
        {
          goto LABEL_127;
        }

        if (v131 < v165)
        {
          v128 = v125 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v10 = a3[1];
    if (v11 >= v10)
    {
      goto LABEL_103;
    }
  }

  v75 = &a4[v13];
  if (__OFADD__(v13, a4))
  {
    goto LABEL_133;
  }

  if (v75 >= v74)
  {
    v75 = a3[1];
  }

  if (v75 < v13)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v11 == v75)
  {
    goto LABEL_52;
  }

  v176 = v9;
  v76 = *a3;
  v77 = *a3 + 8 * v11 - 8;
  v179 = v13;
  v181 = v75;
  v78 = v13 - v11;
LABEL_41:
  v187 = v11;
  v93 = *(v76 + 8 * v11);
  v94 = v78;
  v183 = v77;
  v95 = v77;
  while (1)
  {
    v96 = *v95;
    v97 = *(*v93 + 192);

    v99 = v97(v98);
    v101 = v100;
    v102 = (*(*v96 + 192))();
    v104 = v103;
    if (v99 == v102 && v101 == v103)
    {

      v101, v79, v80, v81, v82, v83, v84, v85;
      v104, v86, v87, v88, v89, v90, v91, v92;
LABEL_40:
      v11 = (v187 + 1);
      v77 = v183 + 8;
      --v78;
      if (v187 + 1 == v181)
      {
        v11 = v181;
        v9 = v176;
        v12 = v184;
        v13 = v179;
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v106 = sub_1000340D4();

    v101, v107, v108, v109, v110, v111, v112, v113;
    v104, v114, v115, v116, v117, v118, v119, v120;
    if ((v106 & 1) == 0)
    {
      goto LABEL_40;
    }

    if (!v76)
    {
      break;
    }

    v121 = *v95;
    v93 = v95[1];
    *v95 = v93;
    v95[1] = v121;
    --v95;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_40;
    }
  }

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
}

uint64_t sub_100005668(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v55 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v89 = &v4[8 * v12];
    if (v10 >= 8 && v55 > v6)
    {
      v88 = v4;
LABEL_32:
      v87 = v55;
      v56 = v55 - 8;
      v5 -= 8;
      v57 = v89;
      do
      {
        v58 = *(v57 - 1);
        v57 -= 8;
        v59 = v56;
        v60 = *v56;
        v61 = *(*v58 + 192);

        v63 = v61(v62);
        v65 = v64;
        v66 = (*(*v60 + 192))();
        v74 = v67;
        if (v63 == v66 && v65 == v67)
        {
          v76 = 0;
        }

        else
        {
          v76 = sub_1000340D4();
        }

        v65, v67, v68, v69, v70, v71, v72, v73;
        v74, v77, v78, v79, v80, v81, v82, v83;

        v84 = v5 + 8;
        if (v76)
        {
          v85 = v59;
          if (v84 != v87)
          {
            *v5 = *v59;
          }

          v4 = v88;
          if (v89 <= v88 || (v55 = v85, v85 <= v6))
          {
            v55 = v85;
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v84 != v89)
        {
          *v5 = *v57;
        }

        v5 -= 8;
        v89 = v57;
        v56 = v59;
      }

      while (v57 > v88);
      v89 = v57;
      v55 = v87;
      v4 = v88;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v89 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *(**v14 + 192);

        v18 = v16(v17);
        v20 = v19;
        v21 = (*(*v15 + 192))();
        v23 = v22;
        v24 = v18 == v21 && v20 == v22;
        if (v24)
        {
          break;
        }

        v25 = sub_1000340D4();

        v20, v26, v27, v28, v29, v30, v31, v32;
        v23, v33, v34, v35, v36, v37, v38, v39;
        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }

        v40 = v14;
        v24 = v6 == v14;
        v14 += 8;
        if (!v24)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
        if (v4 >= v89 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

      v20, v41, v42, v43, v44, v45, v46, v47;
      v23, v48, v49, v50, v51, v52, v53, v54;
LABEL_21:
      v40 = v4;
      v24 = v6 == v4;
      v4 += 8;
      if (v24)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v40;
      goto LABEL_23;
    }

LABEL_25:
    v55 = v6;
  }

LABEL_49:
  if (v55 != v4 || v55 >= &v4[(v89 - v4 + (v89 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v55, v4, 8 * ((v89 - v4) / 8));
  }

  return 1;
}

uint64_t sub_100005A4C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100005AD8(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

uint64_t sub_100005AEC(void *a1, uint64_t a2, ActivityPickerServiceViewController *a3)
{
  v7 = *v3;
  sub_100034154();
  sub_100033D74();
  v8 = sub_100034164();
  v15 = -1 << *(v7 + 32);
  v16 = v8 & ~v15;
  if ((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {
      v18 = (*(v7 + 48) + 16 * v16);
      v19 = v18[1];
      v20 = *v18 == a2 && v19 == a3;
      if (v20 || (sub_1000340D4() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v7 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    a3, v19, v9, v10, v11, v12, v13, v14;
    v23 = (*(v7 + 48) + 16 * v16);
    v24 = v23[1];
    *a1 = *v23;
    a1[1] = v24;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;

    sub_100005E9C(a2, a3, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005C3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  result = sub_100033F94();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100034154();
      sub_100033D74();
      result = sub_100034164();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100005E9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005C3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000601C();
      goto LABEL_16;
    }

    sub_100006178(v8 + 1);
  }

  v10 = *v4;
  sub_100034154();
  sub_100033D74();
  result = sub_100034164();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000340D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000340E4();
  __break(1u);
  return result;
}

void *sub_10000601C()
{
  v1 = v0;
  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  v2 = *v0;
  v3 = sub_100033F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100006178(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001A68(&qword_100044FD0, &unk_100034BF0);
  result = sub_100033F94();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100034154();

      sub_100033D74();
      result = sub_100034164();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_1000063B0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v2 = a1;
  v3 = sub_100034054();
  if (!v3)
  {
LABEL_7:
    v2, v4, v5, v6, v7, v8, v9, v10;
    return _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v12 = sub_100004518(v3, 0);
  v13 = sub_100006444((v12 + 4), v11, v2);
  v2 = v14;
  v13, v15, v14, v16, v17, v18, v19, v20;
  result = v12;
  if (v2 != v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100006444(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100034054();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100034054();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100006B20();
          for (i = 0; i != v6; ++i)
          {
            sub_100001A68(&qword_100044E08, &unk_100035A80);
            v9 = sub_1000065C4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActivityItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000065C4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100033FC4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100006644;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityGroup(uint64_t a1)
{
  result = qword_100046400;
  if (!qword_100046400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006698()
{
  result = qword_100044E30;
  if (!qword_100044E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044E30);
  }

  return result;
}

unint64_t sub_1000066F0()
{
  result = qword_100044E38;
  if (!qword_100044E38)
  {
    type metadata accessor for ActivityGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044E38);
  }

  return result;
}

void sub_10000675C(uint64_t a1)
{
  sub_100006868(319);
  if (v1 <= 0x3F)
  {
    sub_1000068C0(319);
    if (v2 <= 0x3F)
    {
      sub_10000696C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100006868(uint64_t a1)
{
  if (!qword_100044E68)
  {
    type metadata accessor for ActivityItem(255);
    v1 = sub_100033324();
    if (!v2)
    {
      atomic_store(v1, &qword_100044E68);
    }
  }
}

void sub_1000068C0(uint64_t a1)
{
  if (!qword_100044E70)
  {
    sub_100006924(&qword_100044E08, &unk_100035A80);
    v1 = sub_100033324();
    if (!v2)
    {
      atomic_store(v1, &qword_100044E70);
    }
  }
}

uint64_t sub_100006924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000696C()
{
  if (!qword_100044E78)
  {
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_100044E78);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ActivityGroup.Selection(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityGroup.Selection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityGroup.Selection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100006A24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006A44(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100006A74(void *a1)
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

uint64_t sub_100006AC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100006B20()
{
  result = qword_100044FE0;
  if (!qword_100044FE0)
  {
    sub_100006924(&qword_100044E08, &unk_100035A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100044FE0);
  }

  return result;
}

uint64_t sub_100006BA0()
{
  error = 0;
  v1 = SecTaskCopySigningIdentifier(v0, &error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100033D34();

    swift_beginAccess();
    if (error)
    {
    }
  }

  else
  {
    v4 = sub_100033284();
    v5 = sub_100033EB4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136446210;
      swift_beginAccess();
      sub_100001A68(&qword_100044FF8, &qword_100034C20);
      v8 = sub_100033D54();
      v10 = v9;
      v11 = sub_1000045A0(v8, v9, v20);
      v10, v12, v13, v14, v15, v16, v17, v18;
      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to extract bundle identifier from SecTask: %{public}s", v6, 0xCu);
      sub_100006A74(v7);
    }

    swift_beginAccess();
    if (error)
    {
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100006D7C()
{
  error = 0;
  sub_1000201E0(1);
  v2 = v1;
  v3 = sub_100033D04();
  v2, v4, v5, v6, v7, v8, v9, v10;
  v11 = SecTaskCopyValueForEntitlement(v0, v3, &error);

  v42 = v11;
  sub_100001A68(&qword_100045008, &qword_100034C48);
  if (swift_dynamicCast())
  {
    v12 = v41;
    v13 = error;
    v14 = v41;
    if (!error)
    {
      return v14 & 1;
    }

LABEL_8:

    v14 = v12;
    return v14 & 1;
  }

  if (!error)
  {
    v14 = 0;
    return v14 & 1;
  }

  v15 = sub_100033284();
  v16 = sub_100033EB4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = sub_1000201E0(1);
    v20 = v19;
    v21 = sub_1000045A0(v18, v19, &v42);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    sub_100001A68(&qword_100045010, &qword_100034C50);
    v29 = sub_100033D54();
    v31 = v30;
    v32 = sub_1000045A0(v29, v30, &v42);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v17 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to extract entitlement %s from SecTask: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v12 = 0;
  v14 = 0;
  v13 = error;
  if (error)
  {
    goto LABEL_8;
  }

  return v14 & 1;
}

void type metadata accessor for CFError()
{
  if (!qword_100045000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100045000);
    }
  }
}

uint64_t sub_100006FDC(char a1)
{
  if (!a1)
  {
    return 7368801;
  }

  if (a1 == 1)
  {
    return 0x79726F6765746163;
  }

  return 6448503;
}

uint64_t sub_100007028(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE800000000000000;
  v10 = 0x79726F6765746163;
  if (v8 != 1)
  {
    v10 = 6448503;
    v9 = 0xE300000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 7368801;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  v13 = 0xE800000000000000;
  v14 = 0x79726F6765746163;
  if (*a2 != 1)
  {
    v14 = 6448503;
    v13 = 0xE300000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 7368801;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1000340D4();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_100007114()
{
  v1 = *v0;
  sub_100034154();
  v2 = 0xE800000000000000;
  if (v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_100033D74();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_100034164();
}

void sub_1000071A8(uint64_t a1)
{
  v2 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_100033D74();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100007228(uint64_t a1)
{
  v2 = *v1;
  sub_100034154();
  v3 = 0xE800000000000000;
  if (v2 != 1)
  {
    v3 = 0xE300000000000000;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  sub_100033D74();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_100034164();
}

unint64_t sub_1000072B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B60C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000072E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7368801;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100007340()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_100007370(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000DBBC(a1, &v9 - v6, &qword_100045018, &qword_100034C60);
  sub_10000DBBC(v7, v5, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(a1, &qword_100045018, &qword_100034C60);
  return sub_10000DC24(v7, &qword_100045018, &qword_100034C60);
}

uint64_t sub_100007488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();
}

uint64_t sub_100007544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045018, &qword_100034C60);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_10000DBBC(a1, &v8 - v5, &qword_100045018, &qword_100034C60);
  return (*(**a2 + 152))(v6);
}

uint64_t sub_100007610(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045018, &qword_100034C60);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000DBBC(a1, v4, &qword_100045018, &qword_100034C60);

  sub_100033314();
  return sub_10000DC24(a1, &qword_100045018, &qword_100034C60);
}

uint64_t (*sub_100007700(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000077A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100032F84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10000782C(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045028, &qword_100034CB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045020, &qword_100034CB0);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100007964(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045028, &qword_100034CB8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045020, &qword_100034CB0);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100007B04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_100007B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100007BC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_100007C2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100007CA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100007D68(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045038, &qword_100034D10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045030, &qword_100034D08);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100007EA0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045038, &qword_100034D10);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045030, &qword_100034D08);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008024@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1000080D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100008190(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1000082C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_10000844C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_100008508(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000085C8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100008700(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008884@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_100008940(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100008A08(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100008B40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100008CF4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v3;
}

uint64_t sub_100008D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100008E1C(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_100008E88(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

uint64_t sub_100008F48(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100009080(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

uint64_t sub_100009224(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = a1;
  v43 = a9;
  v34 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v31 - v10;
  v32 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v44 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v31 - v12;
  v33 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v14 = __chkstk_darwin(v33);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v21 = sub_100032F84();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  sub_10000DBBC(v18, v16, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v18, &qword_100045018, &qword_100034C60);
  v22 = v32;
  (*(v44 + 32))(v19 + v20, v13, v32);
  v23 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v47 = 0;
  sub_1000332C4();
  v24 = *(v9 + 32);
  v25 = v34;
  v24(v19 + v23, v11, v34);
  v26 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  v47 = 0;
  sub_1000332C4();
  v24(v19 + v26, v11, v25);
  *(v19 + 16) = v35;
  v27 = v37;
  *(v19 + 24) = v36;
  *(v19 + 32) = v27;
  swift_beginAccess();
  v45 = v38;
  v46 = v39;
  sub_1000332C4();
  swift_endAccess();
  v28 = v40;
  sub_10000DBBC(v40, v18, &qword_100045018, &qword_100034C60);
  v29 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v44 + 8))(v19 + v29, v22);
  sub_10000DBBC(v18, v16, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v18, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = v41;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = v42;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v43;

  sub_100033314();
  sub_10000DC24(v28, &qword_100045018, &qword_100034C60);
  return v19;
}

uint64_t sub_1000096FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, unsigned __int8 a9)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = a1;
  v43 = a9;
  v34 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v31 - v11;
  v44 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v32 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v31 - v13;
  v33 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v15 = __chkstk_darwin(v33);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v21 = sub_100032F84();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_10000DBBC(v19, v17, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v19, &qword_100045018, &qword_100034C60);
  v22 = v32;
  (*(v32 + 32))(v9 + v20, v14, v44);
  v23 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v47 = 0;
  sub_1000332C4();
  v24 = *(v10 + 32);
  v25 = v34;
  v24(v9 + v23, v12, v34);
  v26 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  v47 = 0;
  sub_1000332C4();
  v24(v9 + v26, v12, v25);
  *(v9 + 16) = v35;
  v27 = v37;
  *(v9 + 24) = v36;
  *(v9 + 32) = v27;
  swift_beginAccess();
  v45 = v38;
  v46 = v39;
  sub_1000332C4();
  swift_endAccess();
  v28 = v40;
  sub_10000DBBC(v40, v19, &qword_100045018, &qword_100034C60);
  v29 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v22 + 8))(v9 + v29, v44);
  sub_10000DBBC(v19, v17, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v19, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = v41;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v45) = v42;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v47 = v43;

  sub_100033314();
  sub_10000DC24(v28, &qword_100045018, &qword_100034C60);
  return v9;
}

uint64_t sub_100009BB8(char a1, uint64_t a2, ActivityPickerServiceViewController *a3)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return sub_10000C76C(a2, a3);
    }

    else
    {

      return sub_10000CFFC(a2, a3);
    }
  }

  else
  {
    sub_100033024();
    sub_100033014();
    v6 = sub_100032FF4();

    v7 = sub_10000B7A8(a2, a3, v6);

    return v7;
  }
}

uint64_t sub_100009C94(char a1, uint64_t a2, ActivityPickerServiceViewController *a3, void (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_10000C76C(a2, a3);
    }

    else
    {
      sub_10000CFFC(a2, a3);
    }

    a4();
  }

  else
  {
    sub_100033024();
    sub_100033014();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = v5;
    v10[5] = a2;
    v10[6] = a3;

    sub_100033004();
  }
}

uint64_t sub_100009D9C(uint64_t a1)
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v2 = sub_100033D34();
  v4 = v3;
  v6 = sub_100033D34();
  v12 = v2;
  v13 = v5;
  if (v12 == v6 && v4 == v5)
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    v13, v33, v34, v35, v36, v37, v38, v39;
    goto LABEL_11;
  }

  v15 = sub_1000340D4();
  v4, v16, v17, v18, v19, v20, v21, v22;
  v13, v23, v24, v25, v26, v27, v28, v29;
  if (v15)
  {
LABEL_11:
    v40 = sub_100033D34();
    v42 = v41;
    v32 = sub_100012B94(v40, v41, _swiftEmptyArrayStorage);
    v42, v43, v44, v45, v46, v47, v48, v49;
    return v32;
  }

  v30 = [objc_opt_self() localizedNameForIdentifier:a1];
  if (!v30)
  {
    return 0;
  }

  v31 = v30;
  v32 = sub_100033D34();

  return v32;
}

uint64_t sub_100009EDC(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (*(v8 + 16) && *(v8 + 16) == 1)
  {
    0xE800000000000000, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    v9 = sub_1000340D4();
    0xE300000000000000, v10, v11, v12, v13, v14, v15, v16;
    v17 = 0;
    if ((v9 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v18 = *(v8 + 24);
  v19 = *(v8 + 32);
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v20 = sub_100033D34();
  v28 = v21;
  if (v18 == v20 && v19 == v21)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1000340D4();
  }

  v28, v21, v22, v23, v24, v25, v26, v27;
  return v17 & 1;
}

uint64_t *sub_100009FE4()
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  return &qword_100047AE0;
}

uint64_t sub_10000A034(uint64_t a1)
{
  v2 = 0xE800000000000000;
  if (*(v1 + 16) != 1)
  {
    v2 = 0xE300000000000000;
  }

  if (*(v1 + 16))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_100033D74();
  v3, v4, v5, v6, v7, v8, v9, v10;

  return sub_100033D74();
}

Class sub_10000A0D0(void *a1)
{
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v399 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v6 = 0x737070416C6C41;
  v7 = sub_100033D34();
  v9 = v8;
  v11 = sub_100033D34();
  v17 = v7;
  v18 = v10;
  if (v17 == v11 && v9 == v10)
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    v18, v36, v37, v38, v39, v40, v41, v42;
    v35 = 0xE700000000000000;
    goto LABEL_22;
  }

  v20 = sub_1000340D4();
  v9, v21, v22, v23, v24, v25, v26, v27;
  v18, v28, v29, v30, v31, v32, v33, v34;
  if ((v20 & 1) == 0)
  {
    v35 = 0xEA00000000007974;
    v6 = 0x6976697461657243;
    v43 = sub_100033D34();
    v45 = v44;
    v47 = sub_100033D34();
    v53 = v43;
    v54 = v46;
    if (v53 != v47 || v45 != v46)
    {
      v56 = sub_1000340D4();
      v45, v57, v58, v59, v60, v61, v62, v63;
      v54, v64, v65, v66, v67, v68, v69, v70;
      if (v56)
      {
        goto LABEL_22;
      }

      v6 = 0x6F69746163756445;
      v71 = sub_100033D34();
      v73 = v72;
      v75 = sub_100033D34();
      v81 = v71;
      v82 = v74;
      if (v81 == v75 && v73 == v74)
      {
        v73, v74, v75, v76, v77, v78, v79, v80;
        v82, v83, v84, v85, v86, v87, v88, v89;
        v35 = 0xE90000000000006ELL;
        goto LABEL_22;
      }

      v90 = sub_1000340D4();
      v73, v91, v92, v93, v94, v95, v96, v97;
      v82, v98, v99, v100, v101, v102, v103, v104;
      v35 = 0xE90000000000006ELL;
      if (v90)
      {
        goto LABEL_22;
      }

      v35 = 0xED0000746E656D6ELL;
      v6 = 0x6961747265746E45;
      v105 = sub_100033D34();
      v45 = v106;
      v47 = sub_100033D34();
      v107 = v105;
      v54 = v46;
      if (v107 != v47 || v45 != v46)
      {
        v116 = sub_1000340D4();
        v45, v117, v118, v119, v120, v121, v122, v123;
        v54, v124, v125, v126, v127, v128, v129, v130;
        if (v116)
        {
          goto LABEL_22;
        }

        v6 = 0x73656D6147;
        v131 = sub_100033D34();
        v133 = v132;
        v135 = sub_100033D34();
        v141 = v131;
        v142 = v134;
        if (v141 == v135 && v133 == v134)
        {
          v133, v134, v135, v136, v137, v138, v139, v140;
          v142, v143, v144, v145, v146, v147, v148, v149;
          v35 = 0xE500000000000000;
          goto LABEL_22;
        }

        v150 = sub_1000340D4();
        v133, v151, v152, v153, v154, v155, v156, v157;
        v142, v158, v159, v160, v161, v162, v163, v164;
        if (v150)
        {
          v35 = 0xE500000000000000;
          goto LABEL_22;
        }

        v35 = 0xED00007373656E74;
        v6 = 0x694668746C616548;
        v165 = sub_100033D34();
        v45 = v166;
        v47 = sub_100033D34();
        v167 = v165;
        v54 = v46;
        if (v167 != v47 || v45 != v46)
        {
          v168 = sub_1000340D4();
          v45, v169, v170, v171, v172, v173, v174, v175;
          v54, v176, v177, v178, v179, v180, v181, v182;
          if (v168)
          {
            goto LABEL_22;
          }

          v183 = sub_100033D34();
          v185 = v184;
          v187 = sub_100033D34();
          v193 = v183;
          v194 = v186;
          if (v193 == v187 && v185 == v186)
          {
            v185, v186, v187, v188, v189, v190, v191, v192;
            v194, v195, v196, v197, v198, v199, v200, v201;
LABEL_36:
            v35 = 0x800000010003A6D0;
            v6 = 0xD000000000000014;
            goto LABEL_22;
          }

          v202 = sub_1000340D4();
          v185, v203, v204, v205, v206, v207, v208, v209;
          v194, v210, v211, v212, v213, v214, v215, v216;
          if (v202)
          {
            goto LABEL_36;
          }

          v217 = sub_100033D34();
          v219 = v218;
          v221 = sub_100033D34();
          v227 = v220;
          if (v217 == v221 && v219 == v220)
          {
            v219, v220, v221, v222, v223, v224, v225, v226;
            v227, v228, v229, v230, v231, v232, v233, v234;
LABEL_41:
            v35 = 0xE500000000000000;
            v6 = 0x726568744FLL;
            goto LABEL_22;
          }

          v235 = sub_1000340D4();
          v219, v236, v237, v238, v239, v240, v241, v242;
          v227, v243, v244, v245, v246, v247, v248, v249;
          if (v235)
          {
            goto LABEL_41;
          }

          v35 = 0xEC00000079746976;
          v6 = 0x69746375646F7250;
          v250 = sub_100033D34();
          v45 = v251;
          v47 = sub_100033D34();
          v54 = v46;
          if (v250 != v47 || v45 != v46)
          {
            v252 = sub_1000340D4();
            v45, v253, v254, v255, v256, v257, v258, v259;
            v54, v260, v261, v262, v263, v264, v265, v266;
            if (v252)
            {
              goto LABEL_22;
            }

            v35 = 0xEF646F6F46646E41;
            v6 = 0x676E6970706F6853;
            v267 = sub_100033D34();
            v45 = v268;
            v47 = sub_100033D34();
            v54 = v46;
            if (v267 != v47 || v45 != v46)
            {
              v269 = sub_1000340D4();
              v45, v270, v271, v272, v273, v274, v275, v276;
              v54, v277, v278, v279, v280, v281, v282, v283;
              if (v269)
              {
                goto LABEL_22;
              }

              v284 = sub_100033D34();
              v286 = v285;
              v288 = sub_100033D34();
              v294 = v287;
              if (v284 == v288 && v286 == v287)
              {
                v286, v287, v288, v289, v290, v291, v292, v293;
                v294, v295, v296, v297, v298, v299, v300, v301;
              }

              else
              {
                v302 = sub_1000340D4();
                v286, v303, v304, v305, v306, v307, v308, v309;
                v294, v310, v311, v312, v313, v314, v315, v316;
                if ((v302 & 1) == 0)
                {
                  v6 = 0x6C6576617254;
                  v317 = sub_100033D34();
                  v319 = v318;
                  v321 = sub_100033D34();
                  v327 = v320;
                  if (v317 == v321 && v319 == v320)
                  {
                    v319, v320, v321, v322, v323, v324, v325, v326;
                    v327, v328, v329, v330, v331, v332, v333, v334;
                    v35 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v335 = sub_1000340D4();
                  v319, v336, v337, v338, v339, v340, v341, v342;
                  v327, v343, v344, v345, v346, v347, v348, v349;
                  if (v335)
                  {
                    v35 = 0xE600000000000000;
                    goto LABEL_22;
                  }

                  v6 = 0x656974696C697455;
                  v350 = sub_100033D34();
                  v352 = v351;
                  v354 = sub_100033D34();
                  v360 = v353;
                  if (v350 == v354 && v352 == v353)
                  {
                    v352, v353, v354, v355, v356, v357, v358, v359;
                    v360, v361, v362, v363, v364, v365, v366, v367;
                    v35 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  v368 = sub_1000340D4();
                  v352, v369, v370, v371, v372, v373, v374, v375;
                  v360, v376, v377, v378, v379, v380, v381, v382;
                  if (v368)
                  {
                    v35 = 0xE900000000000073;
                    goto LABEL_22;
                  }

                  sub_100033274();
                  v383 = a1;
                  v384 = sub_100033284();
                  v385 = sub_100033EB4();

                  if (os_log_type_enabled(v384, v385))
                  {
                    v386 = swift_slowAlloc();
                    v387 = swift_slowAlloc();
                    v400 = v387;
                    *v386 = 136315138;
                    v388 = sub_100033D34();
                    v390 = v389;
                    v391 = sub_1000045A0(v388, v389, &v400);
                    v390, v392, v393, v394, v395, v396, v397, v398;
                    *(v386 + 4) = v391;
                    _os_log_impl(&_mh_execute_header, v384, v385, "Failed to resolve icon for category identifier: %s", v386, 0xCu);
                    sub_100006A74(v387);
                  }

                  (*(v3 + 8))(v5, v2);
                  goto LABEL_41;
                }
              }

              v6 = 0xD000000000000010;
              v35 = 0x800000010003A6B0;
              goto LABEL_22;
            }
          }
        }
      }
    }

    v45, v46, v47, v48, v49, v50, v51, v52;
    v54, v108, v109, v110, v111, v112, v113, v114;
    goto LABEL_22;
  }

  v35 = 0xE700000000000000;
LABEL_22:
  sub_10000D598();
  v401._countAndFlagsBits = v6;
  v401._object = v35;
  return sub_100033F04(v401).super.isa;
}

uint64_t sub_10000A9F8(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v10 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName[0];
  v12 = sub_100001A68(&qword_100045030, &qword_100034D08);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable[0];
  v14 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v15 = *(*(v14 - 8) + 8);
  v15(v8 + v13, v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch[0], v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch, v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0], v14);
  return v8;
}

uint64_t sub_10000AB6C(uint64_t a1, const char *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v10 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  v11 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__localizedName[0];
  v12 = sub_100001A68(&qword_100045030, &qword_100034D08);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isDisplayable[0];
  v14 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v15 = *(*(v14 - 8) + 8);
  v15(v8 + v13, v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__requiresRemoteIconFetch[0], v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch, v14);
  v15(v8 + OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0], v14);
  v16 = *&(*v8)->$__lazy_storage_$_client[8];
  v17 = *&(*v8)->$__lazy_storage_$_client[12];

  return _swift_deallocClassInstance(v8, v16, v17);
}

Swift::Int sub_10000AD1C()
{
  sub_100034154();
  (*(*v0 + 496))(v2);
  return sub_100034164();
}

uint64_t sub_10000AD84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 432))();
  *a1 = result;
  return result;
}

Swift::Int sub_10000AE70(uint64_t a1)
{
  sub_100034154();
  (*(**v1 + 496))(v3);
  return sub_100034164();
}

uint64_t sub_10000AEE4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityItem(0);
  result = sub_1000332B4();
  *a2 = result;
  return result;
}

NSString sub_10000AF24()
{
  result = sub_100033D04();
  qword_100047AE0 = result;
  return result;
}

id sub_10000AF5C()
{
  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v1 = qword_100047AE0;

  return v1;
}

ActivityPickerServiceViewController *sub_10000AFB8()
{
  v0 = [objc_opt_self() sharedCategories];
  v1 = [v0 availableCategoryIDs];

  type metadata accessor for Identifier(0);
  v2 = sub_100033DF4();

  if (qword_100046410 != -1)
  {
    swift_once();
  }

  v3 = qword_100047AE0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000B4E4(0, (*v2->hostingViewController + 1), 1, v2, v4, v5, v6, v7);
  }

  v9 = *v2->hostingViewController;
  v8 = *v2->tokenDecoder;
  if (v9 >= v8 >> 1)
  {
    v2 = sub_10000B4E4((v8 > 1), (v9 + 1), 1, v2, v4, v5, v6, v7);
  }

  *v2->hostingViewController = v9 + 1;
  *&v2->tokenEncoder[8 * v9] = v3;
  return v2;
}

uint64_t sub_10000B164(uint64_t a1, id *a2)
{
  v3 = sub_100033D24();
  *a2 = 0;
  return v3 & 1;
}

void sub_10000B1E4(uint64_t *a2@<X8>)
{
  sub_100033D34();
  v4 = v3;
  v5 = sub_100033D04();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

uint64_t sub_10000B228(void *a1, uint64_t *a2)
{
  v2 = sub_100033D34();
  v4 = v3;
  v5 = sub_100033D34();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1000340D4();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

void sub_10000B2B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_100033D04();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_10000B2F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033D34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B324(uint64_t a1)
{
  v2 = sub_10000DAE4(&qword_1000452E0, type metadata accessor for Identifier, &unk_100035190);
  v3 = sub_10000DAE4(&qword_1000452E8, type metadata accessor for Identifier, &unk_100035138);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000B3E0()
{
  sub_100033D34();
  v1 = v0;
  v2 = sub_100033DA4();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_10000B41C(uint64_t a1)
{
  sub_100033D34();
  v2 = v1;
  sub_100033D74();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_10000B470(uint64_t a1)
{
  sub_100033D34();
  v2 = v1;
  sub_100034154();
  sub_100033D74();
  v3 = sub_100034164();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

ActivityPickerServiceViewController *sub_10000B4E4(ActivityPickerServiceViewController *result, const char *a2, uint64_t a3, ActivityPickerServiceViewController *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tokenDecoder;
    v11 = (v10 >> 1);
    if ((v10 >> 1) < a2)
    {
      if ((v11 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->hostingViewController;
  if (v11 <= v12)
  {
    v13 = *a4->hostingViewController;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100001A68(&qword_1000452F0, &qword_100035218);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *v14->hostingViewController = v12;
    *v14->tokenDecoder = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14->tokenEncoder >= &a4->tokenEncoder[8 * v12])
    {
      memmove(v14->tokenEncoder, a4->tokenEncoder, 8 * v12);
    }

    *a4->hostingViewController = 0;
  }

  else
  {
    type metadata accessor for Identifier(0);
    swift_arrayInitWithCopy();
  }

  a4, a2, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_10000B60C(uint64_t a1, ActivityPickerServiceViewController *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_100041960;
  v13._object = a2;
  v4 = sub_100034094(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000B658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v9 = *(a1 + 16);
  v10 = 0xE800000000000000;
  v11 = 0x79726F6765746163;
  if (v9 != 1)
  {
    v11 = 6448503;
    v10 = 0xE300000000000000;
  }

  if (*(a1 + 16))
  {
    v12 = v11;
  }

  else
  {
    v12 = 7368801;
  }

  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v14 = 0xE800000000000000;
  v15 = 0x79726F6765746163;
  if (*(a2 + 16) != 1)
  {
    v15 = 6448503;
    v14 = 0xE300000000000000;
  }

  if (*(a2 + 16))
  {
    v16 = v15;
  }

  else
  {
    v16 = 7368801;
  }

  if (*(a2 + 16))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
    v13, a2, v16, a4, a5, a6, a7, a8;
    v17, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v26 = sub_1000340D4();
    v13, v27, v28, v29, v30, v31, v32, v33;
    v17, v34, v35, v36, v37, v38, v39, v40;
    result = 0;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1000340D4();
}

uint64_t sub_10000B7A8(uint64_t a1, ActivityPickerServiceViewController *a2, uint64_t a3)
{
  v123 = a2;
  v5 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v107 = &v100 - v6;
  v120 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v110 = *(v120 - 8);
  __chkstk_darwin(v120);
  v106 = &v100 - v7;
  v111 = sub_100001A68(&qword_1000452F8, &qword_100035228);
  __chkstk_darwin(v111);
  v103 = &v100 - v8;
  v9 = sub_100001A68(&qword_100045300, &qword_100035230);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v100 - v14;
  __chkstk_darwin(v13);
  v113 = (&v100 - v16);
  v104 = sub_100033294();
  v17 = *(v104 - 1);
  __chkstk_darwin(v104);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100033034();
  v114 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v101 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v102 = &v100 - v23;
  v116 = sub_100032F84();
  v121 = *(v116 - 8);
  __chkstk_darwin(v116);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v26 = __chkstk_darwin(v118);
  v117 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v105 = &v100 - v29;
  v30 = __chkstk_darwin(v28);
  v119 = &v100 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v100 - v33;
  __chkstk_darwin(v32);
  v122 = &v100 - v35;
  v115 = a1;
  if (!a3)
  {
LABEL_9:
    v112 = v12;
    v46 = a3;
    sub_100033274();
    v47 = v123;

    v48 = sub_100033284();
    v49 = sub_100033EA4();
    v47, v50, v51, v52, v53, v54, v55, v56;
    if (os_log_type_enabled(v48, v49))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v126[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1000045A0(v115, v123, v126);
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not initially resolve app info for bundle identifier: %s", v57, 0xCu);
      sub_100006A74(v58);
      v47 = v123;
    }

    (*(v17 + 8))(v19, v104);
    v59 = v113;
    v60 = v20;
    v61 = v121 + 56;
    v62 = 1;
    v104 = *(v121 + 56);
    v104(v122, 1, 1, v116);
    if (v46)
    {
      sub_100033114();
      v62 = 0;
    }

    v121 = v61 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v63 = v114;
    v64 = *(v114 + 56);
    v64(v59, v62, 1, v20);
    (*(v63 + 104))(v15, enum case for AppInfoSource.unknown(_:), v20);
    v64(v15, 0, 1, v20);
    v65 = *(v111 + 48);
    v66 = v103;
    sub_10000DBBC(v59, v103, &qword_100045300, &qword_100035230);
    sub_10000DBBC(v15, v66 + v65, &qword_100045300, &qword_100035230);
    v67 = v59;
    v68 = *(v63 + 48);
    if (v68(v66, 1, v60) == 1)
    {
      sub_10000DC24(v15, &qword_100045300, &qword_100035230);
      sub_10000DC24(v67, &qword_100045300, &qword_100035230);
      if (v68(v66 + v65, 1, v60) == 1)
      {
        sub_10000DC24(v66, &qword_100045300, &qword_100035230);
        LODWORD(v111) = 1;
LABEL_19:
        v70 = v115;
        v71 = v116;
LABEL_21:

        LODWORD(v114) = 0;
        v112 = v70;
        v113 = v47;
        v75 = v104;
        goto LABEL_22;
      }
    }

    else
    {
      v69 = v112;
      sub_10000DBBC(v66, v112, &qword_100045300, &qword_100035230);
      if (v68(v66 + v65, 1, v60) != 1)
      {
        v72 = v114;
        v73 = v102;
        (*(v114 + 32))(v102, v66 + v65, v60);
        sub_10000DAE4(&qword_100045308, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
        LODWORD(v111) = sub_100033CF4();
        v74 = *(v72 + 8);
        v74(v73, v60);
        sub_10000DC24(v15, &qword_100045300, &qword_100035230);
        sub_10000DC24(v113, &qword_100045300, &qword_100035230);
        v74(v69, v60);
        sub_10000DC24(v66, &qword_100045300, &qword_100035230);
        v70 = v115;
        v71 = v116;
        goto LABEL_21;
      }

      sub_10000DC24(v15, &qword_100045300, &qword_100035230);
      sub_10000DC24(v113, &qword_100045300, &qword_100035230);
      (*(v114 + 8))(v69, v60);
    }

    sub_10000DC24(v66, &qword_1000452F8, &qword_100035228);
    LODWORD(v111) = 0;
    goto LABEL_19;
  }

  v36 = sub_100033104();
  if (!v37)
  {

    goto LABEL_9;
  }

  if (v36 == a1 && v37 == v123)
  {
    v38 = v37;
LABEL_8:

    v38, v39, v40, v41, v42, v43, v44, v45;
    goto LABEL_9;
  }

  v112 = v36;
  v38 = v37;
  if (sub_1000340D4())
  {
    goto LABEL_8;
  }

  v113 = v38;
  sub_1000330F4();
  v89 = v121;
  v71 = v116;
  if ((*(v121 + 48))(v34, 1, v116) == 1)
  {
    sub_10000DC24(v34, &qword_100045018, &qword_100034C60);
    v75 = *(v89 + 56);
    v75(v122, 1, 1, v71);
    v90 = v102;
    sub_100033114();
    v91 = v114;
    v92 = v101;
    (*(v114 + 104))(v101, enum case for AppInfoSource.unknown(_:), v20);
    sub_10000DAE4(&qword_100045310, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
    sub_100033DC4();
    sub_100033DC4();

    v93 = *(v91 + 8);
    v93(v92, v20);
    v93(v90, v20);
    LODWORD(v114) = 0;
    LODWORD(v111) = v126[0] == v124;
  }

  else
  {
    (*(v89 + 32))(v25, v34, v71);
    v94 = v122;
    (*(v89 + 16))(v122, v25, v71);
    v104 = *(v89 + 56);
    v103 = (v89 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v104(v94, 0, 1, v71);
    v95 = v102;
    sub_100033114();
    v96 = v114;
    v97 = v101;
    (*(v114 + 104))(v101, enum case for AppInfoSource.appStore(_:), v20);
    sub_10000DAE4(&qword_100045310, &type metadata accessor for AppInfoSource, &protocol conformance descriptor for AppInfoSource);
    sub_100033DC4();
    sub_100033DC4();

    v98 = *(v96 + 8);
    v98(v97, v20);
    v98(v95, v20);
    v99 = v25;
    v75 = v104;
    (*(v89 + 8))(v99, v71);
    LODWORD(v111) = 0;
    LODWORD(v114) = v126[0] == v124;
  }

  v70 = v115;
LABEL_22:
  sub_10000DBBC(v122, v119, &qword_100045018, &qword_100034C60);
  type metadata accessor for ActivityItem(0);
  v76 = swift_allocObject();
  v77 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v78 = v105;
  v75(v105, 1, 1, v71);
  sub_10000DBBC(v78, v117, &qword_100045018, &qword_100034C60);
  v79 = v106;
  sub_1000332C4();
  sub_10000DC24(v78, &qword_100045018, &qword_100034C60);
  v80 = v110;
  (*(v110 + 32))(v76 + v77, v79, v120);
  v81 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  LOBYTE(v126[0]) = 0;
  v82 = v107;
  sub_1000332C4();
  v83 = v109;
  v84 = *(v108 + 32);
  v84(v76 + v81, v82, v109);
  v85 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  LOBYTE(v126[0]) = 0;
  sub_1000332C4();
  v84(v76 + v85, v82, v83);
  *(v76 + 16) = 0;
  *(v76 + 24) = v70;
  *(v76 + 32) = v123;
  swift_beginAccess();
  v124 = v112;
  v125 = v113;

  sub_1000332C4();
  swift_endAccess();
  v86 = v119;
  sub_10000DBBC(v119, v78, &qword_100045018, &qword_100034C60);
  v87 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v80 + 8))(v76 + v87, v120);
  sub_10000DBBC(v78, v117, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v78, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v124) = 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v124) = v114;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v126[0]) = v111 & 1;

  sub_100033314();
  sub_10000DC24(v86, &qword_100045018, &qword_100034C60);
  sub_10000DC24(v122, &qword_100045018, &qword_100034C60);
  return v76;
}

uint64_t sub_10000C76C(uint64_t a1, ActivityPickerServiceViewController *a2)
{
  v146 = a1;
  v3 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v142 = *(v3 - 8);
  v143 = v3;
  __chkstk_darwin(v3);
  v141 = &v136 - v4;
  v5 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v140 = &v136 - v7;
  v148 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v8 = __chkstk_darwin(v148);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v144 = &v136 - v12;
  __chkstk_darwin(v11);
  v14 = &v136 - v13;
  v15 = sub_100033294();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100033D04();
  v20 = sub_100009D9C(v19);
  v147 = a2;
  v145 = v10;
  if (v21)
  {
    v138 = v21;
    v139 = v20;
  }

  else
  {
    v136 = v14;
    sub_100033274();

    v22 = sub_100033284();
    v23 = sub_100033EB4();
    a2, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v139 = v6;
      v32 = v19;
      v33 = v31;
      v34 = swift_slowAlloc();
      v151[0] = v34;
      *v33 = 136315138;
      v35 = v146;
      *(v33 + 4) = sub_1000045A0(v146, v147, v151);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to resolve localized name for category identifier: %s", v33, 0xCu);
      sub_100006A74(v34);
      a2 = v147;

      v19 = v32;
      v6 = v139;

      (*(v16 + 8))(v18, v15);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
      v35 = v146;
    }

    v138 = a2;
    v139 = v35;
    v14 = v136;
    v10 = v145;
  }

  v36 = sub_100033D34();
  v38 = v37;
  v39 = sub_100033D34();
  v41 = v40;
  v137 = v19;
  if (v36 == v39 && v38 == v40)
  {
    goto LABEL_9;
  }

  v57 = sub_1000340D4();
  v38, v58, v59, v60, v61, v62, v63, v64;
  v41, v65, v66, v67, v68, v69, v70, v71;
  if (v57)
  {
LABEL_12:

    goto LABEL_13;
  }

  v89 = sub_100033D34();
  v38 = v90;
  v91 = sub_100033D34();
  v41 = v92;
  if (v89 != v91 || v38 != v92)
  {
    v93 = sub_1000340D4();
    v38, v94, v95, v96, v97, v98, v99, v100;
    v41, v101, v102, v103, v104, v105, v106, v107;
    if ((v93 & 1) == 0)
    {
      v108 = sub_100033D34();
      v109 = v19;
      v110 = v108;
      v112 = v111;

      v114 = sub_100033D34();
      v120 = v113;
      if (v110 != v114 || v112 != v113)
      {
        v121 = sub_1000340D4();
        v112, v122, v123, v124, v125, v126, v127, v128;
        v120, v129, v130, v131, v132, v133, v134, v135;
        LODWORD(v136) = v121 ^ 1;
        goto LABEL_14;
      }

      v112, v113, v114, v115, v116, v117, v118, v119;
      v56 = v120;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_9:

  v38, v42, v43, v44, v45, v46, v47, v48;
  v56 = v41;
LABEL_10:
  v56, v49, v50, v51, v52, v53, v54, v55;
LABEL_13:
  LODWORD(v136) = 0;
LABEL_14:
  v72 = sub_100032F84();
  v73 = *(*(v72 - 8) + 56);
  v73(v14, 1, 1, v72);
  type metadata accessor for ActivityItem(0);
  v74 = swift_allocObject();
  v75 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v76 = v144;
  v73(v144, 1, 1, v72);
  sub_10000DBBC(v76, v10, &qword_100045018, &qword_100034C60);
  v77 = v140;
  sub_1000332C4();
  sub_10000DC24(v76, &qword_100045018, &qword_100034C60);
  v78 = v6;
  (*(v6 + 32))(v74 + v75, v77, v5);
  v79 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  LOBYTE(v151[0]) = 0;
  v80 = v141;
  sub_1000332C4();
  v140 = v5;
  v81 = v78;
  v82 = v14;
  v83 = v143;
  v84 = *(v142 + 32);
  v84(v74 + v79, v80, v143);
  v85 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  LOBYTE(v151[0]) = 0;
  sub_1000332C4();
  v84(v74 + v85, v80, v83);
  *(v74 + 16) = 1;
  v86 = v147;
  *(v74 + 24) = v146;
  *(v74 + 32) = v86;
  swift_beginAccess();
  v149 = v139;
  v150 = v138;

  sub_1000332C4();
  swift_endAccess();
  sub_10000DBBC(v82, v76, &qword_100045018, &qword_100034C60);
  v87 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v81 + 8))(v74 + v87, v140);
  sub_10000DBBC(v76, v145, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v76, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v149) = v136 & 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v149) = 0;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v151[0]) = 0;

  sub_100033314();

  sub_10000DC24(v82, &qword_100045018, &qword_100034C60);
  return v74;
}

uint64_t sub_10000CFFC(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - v3;
  v31 = sub_100001A68(&qword_100045020, &qword_100034CB0);
  v38 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v30 - v5;
  v32 = sub_100001A68(&qword_100045018, &qword_100034C60);
  v7 = __chkstk_darwin(v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v33 = &v30 - v13;
  v15 = sub_100032F84();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  type metadata accessor for ActivityItem(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  v16(v12, 1, 1, v15);
  sub_10000DBBC(v12, v9, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v12, &qword_100045018, &qword_100034C60);
  v19 = v17 + v18;
  v20 = v31;
  (*(v38 + 32))(v19, v6, v31);
  v21 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__needsSecondFetch;
  v41 = 0;
  sub_1000332C4();
  v22 = v35;
  v23 = *(v34 + 32);
  v23(v17 + v21, v4, v35);
  v24 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__isSelected[0];
  v41 = 0;
  sub_1000332C4();
  v23(v17 + v24, v4, v22);
  *(v17 + 16) = 2;
  v26 = v36;
  v25 = v37;
  *(v17 + 24) = v36;
  *(v17 + 32) = v25;
  swift_beginAccess();
  v39 = v26;
  v40 = v25;
  swift_bridgeObjectRetain_n();
  sub_1000332C4();
  swift_endAccess();
  v27 = v33;
  sub_10000DBBC(v33, v12, &qword_100045018, &qword_100034C60);
  v28 = OBJC_IVAR____TtC23ActivityPickerExtension12ActivityItem__iconURL;
  swift_beginAccess();
  (*(v38 + 8))(v17 + v28, v20);
  sub_10000DBBC(v12, v9, &qword_100045018, &qword_100034C60);
  sub_1000332C4();
  sub_10000DC24(v12, &qword_100045018, &qword_100034C60);
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v39) = 1;
  sub_1000332C4();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v39) = 0;
  sub_1000332C4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = 0;

  sub_100033314();
  sub_10000DC24(v27, &qword_100045018, &qword_100034C60);
  return v17;
}

uint64_t sub_10000D500()
{

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D540(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_10000B7A8(*(v1 + 40), *(v1 + 48), a1);
  v2();
}

unint64_t sub_10000D598()
{
  result = qword_100045050;
  if (!qword_100045050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045050);
  }

  return result;
}

unint64_t sub_10000D610()
{
  result = qword_100045058;
  if (!qword_100045058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045058);
  }

  return result;
}

uint64_t type metadata accessor for ActivityItem(uint64_t a1)
{
  result = qword_1000468B0;
  if (!qword_1000468B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D718(uint64_t a1)
{
  sub_10000D87C(319);
  if (v1 <= 0x3F)
  {
    sub_10000D8E0(319, &qword_100045098, &type metadata for String, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_10000D8E0(319, &qword_1000450A0, &type metadata for Bool, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10000D87C(uint64_t a1)
{
  if (!qword_100045090)
  {
    sub_100006924(&qword_100045018, &qword_100034C60);
    v1 = sub_100033324();
    if (!v2)
    {
      atomic_store(v1, &qword_100045090);
    }
  }
}

void sub_10000D8E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ActivityItem.ActivityItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityItem.ActivityItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000DAE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DBBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A68(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000DC24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A68(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DCA4()
{
  if (*v0)
  {
  }

  else
  {
    type metadata accessor for ActivityProvider(0);
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DD30()
{
  type metadata accessor for ActivityProvider(0);
  sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

  return sub_100033564();
}

uint64_t sub_10000DDB8()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DE8C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  a1(0);
  sub_10001130C(a2, a3, a4);

  return sub_100033594();
}

uint64_t sub_10000DEF8()
{
  type metadata accessor for ActivityGroup(0);
  sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);

  return sub_100033564();
}

uint64_t sub_10000DFEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v33 = type metadata accessor for FCDisclosureGroupStyle(0);
  __chkstk_darwin(v33);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100001A68(&qword_100045328, &qword_100035240);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v25 - v5;
  v32 = sub_100001A68(&qword_100045330, &qword_100035248);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v28 = &v25 - v7;
  v27 = sub_100001A68(&qword_100045338, &qword_100035250);
  __chkstk_darwin(v27);
  v26 = &v25 - v8;
  v37 = *(v1 + 40);
  sub_100001A68(&qword_100045340, &qword_100035258);
  sub_100033BC4();
  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  v35 = v1;
  sub_10000F1E0(v1, &v36);
  sub_100001A68(&qword_100045348, &qword_100035260);
  sub_100001A68(&qword_100045350, &qword_100035268);
  sub_10000F218();
  sub_10000F300();
  sub_1000334C4();
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = *(*v11 + 112);

    v14 = v12(v13);

    v16 = (*(*v14 + 488))(v15);

    v17 = *(v33 + 20);
    *&v4[v17] = swift_getKeyPath();
    sub_100001A68(&qword_1000453A0, &qword_100035C80);
    swift_storeEnumTagMultiPayload();
    *v4 = v16 & 1;
    sub_1000114F8(&qword_1000453A8, &qword_100045328, &qword_100035240, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_10001130C(&qword_1000453B0, type metadata accessor for FCDisclosureGroupStyle, &unk_100035348);
    v18 = v28;
    v19 = v31;
    sub_100033A34();
    sub_10000F6FC(v4);
    (*(v29 + 8))(v6, v19);
    v20 = swift_allocObject();
    v21 = *(v2 + 16);
    *(v20 + 16) = *v2;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v2 + 32);
    *(v20 + 64) = *(v2 + 48);
    v22 = v26;
    (*(v30 + 32))(v26, v18, v32);
    v23 = (v22 + *(v27 + 36));
    *v23 = sub_10000F758;
    v23[1] = v20;
    v23[2] = 0;
    v23[3] = 0;
    sub_10000F9D4(v22, v34);
    return sub_10000F1E0(v2, &v36);
  }

  else
  {
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for FCDisclosureGroupStyle(uint64_t a1)
{
  result = qword_100046CD0;
  if (!qword_100046CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_100001A68(&qword_1000454E8, &qword_100035528);
  __chkstk_darwin(v37);
  v5 = &v35 - v4;
  v6 = sub_100001A68(&qword_100045388, &qword_100035278);
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(*v9 + 160);

    v12 = v10(v11);

    v20 = v12;
    if (v12 >> 62)
    {
      v26 = v12;
      v27 = sub_100034054();
      v26, v28, v29, v30, v31, v32, v33, v34;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20, v13, v14, v15, v16, v17, v18, v19;
      if (v21)
      {
LABEL_4:
        type metadata accessor for ActivityGroup(0);
        sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
        v35 = a2;
        sub_100033564();
        swift_getKeyPath();
        sub_100033584();

        v39 = v41;
        v40 = v42;
        swift_getKeyPath();
        v22 = swift_allocObject();
        v23 = *(a1 + 16);
        *(v22 + 16) = *a1;
        *(v22 + 32) = v23;
        *(v22 + 48) = *(a1 + 32);
        *(v22 + 64) = *(a1 + 48);
        sub_10000F1E0(a1, v38);
        sub_100001A68(&qword_1000454F8, &unk_100035590);
        sub_100001A68(&qword_100045398, &qword_100035280);
        sub_10001140C();
        sub_1000114F8(&qword_100045390, &qword_100045398, &qword_100035280, &protocol conformance descriptor for ZStack<A>);
        sub_100033C54();
        v24 = v36;
        (*(v36 + 16))(v5, v8, v6);
        swift_storeEnumTagMultiPayload();
        sub_10000F38C();
        sub_100033784();
        return (*(v24 + 8))(v8, v6);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_10000F38C();
    return sub_100033784();
  }

  else
  {
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

void *sub_10000E9F4@<X0>(void *a2@<X8>)
{
  sub_100001A68(&qword_1000454E0, &qword_100035520);
  sub_10001130C(&qword_1000454F0, type metadata accessor for ActivityItem, &unk_100034F20);
  result = sub_100033C34();
  *a2 = v4;
  return result;
}

uint64_t sub_10000EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a4;
  v35 = a5;
  v8 = type metadata accessor for ActivitySelectableRow(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100001A68(&qword_100045348, &qword_100035260);
  v11 = __chkstk_darwin(v34);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v30 - v14;
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  sub_100033AC4();
  v33 = sub_100033B04();

  v42 = a1;
  v43 = a2;
  v44 = a3;
  sub_100001A68(&qword_1000454E0, &qword_100035520);
  sub_100033C04();
  swift_getKeyPath();
  v39 = a1;
  v40 = a2;
  v41 = a3;
  sub_100033C14();

  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = sub_1000089E4();
  sub_100021668(v19, v20, v21, 0, 1, 1, v22 & 1, v10);
  v23 = *v32;
  if (*v32)
  {
    type metadata accessor for ActivityProvider(0);
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

    v24 = sub_1000332A4();
    sub_100011260(v10, v15);
    v25 = &v15[*(v34 + 36)];
    *v25 = v24;
    v25[1] = v23;
    sub_100011540(v15, v17, &qword_100045348, &qword_100035260);
    v26 = v31;
    sub_10000DBBC(v17, v31, &qword_100045348, &qword_100035260);
    v27 = v35;
    *v35 = v33;
    v28 = sub_100001A68(&qword_100045520, &qword_1000355A8);
    sub_10000DBBC(v26, v27 + *(v28 + 48), &qword_100045348, &qword_100035260);

    sub_10000DC24(v17, &qword_100045348, &qword_100035260);
    sub_10000DC24(v26, &qword_100045348, &qword_100035260);
  }

  else
  {
    type metadata accessor for ActivityProvider(0);
    sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
    result = sub_100033574();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for ActivitySelectableRow(0);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(*v6 + 112);

    v26[1] = v7(v8);
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    sub_100033564();
    swift_getKeyPath();
    sub_100033584();

    v9 = v36;
    v10 = v37;
    v11 = v38;
    swift_getKeyPath();
    v33 = v9;
    v34 = v10;
    v35 = v11;
    sub_100001A68(&qword_1000454E0, &qword_100035520);
    sub_100033C14();

    v12 = v30;
    v13 = v31;
    v14 = v32;

    v16 = (*(*v6 + 208))(v15);
    v18 = v17;

    if (*(a1 + 32))
    {
      v19 = 1;
    }

    else
    {
      v29 = *(a1 + 40);
      sub_100001A68(&qword_100045340, &qword_100035258);
      sub_100033BA4();
      v19 = v28;
    }

    v20 = sub_1000089E4();
    sub_100021668(v12, v13, v14, v16, v18 & 1, v19, v20 & 1, v5);
    v21 = *a1;
    if (*a1)
    {
      type metadata accessor for ActivityProvider(0);
      sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);

      v22 = sub_1000332A4();
      v23 = v27;
      sub_100011260(v5, v27);
      result = sub_100001A68(&qword_100045348, &qword_100035260);
      v25 = (v23 + *(result + 36));
      *v25 = v22;
      v25[1] = v21;
      return result;
    }
  }

  else
  {
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    sub_100033574();
    __break(1u);
  }

  type metadata accessor for ActivityProvider(0);
  sub_10001130C(&qword_100045318, type metadata accessor for ActivityProvider, &unk_1000359A0);
  result = sub_100033574();
  __break(1u);
  return result;
}

unint64_t sub_10000F218()
{
  result = qword_100045358;
  if (!qword_100045358)
  {
    sub_100006924(&qword_100045348, &qword_100035260);
    sub_10001130C(&qword_100045360, type metadata accessor for ActivitySelectableRow, &unk_100035D70);
    sub_1000114F8(&qword_100045368, &qword_100045370, &qword_100035270, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045358);
  }

  return result;
}

unint64_t sub_10000F300()
{
  result = qword_100045378;
  if (!qword_100045378)
  {
    sub_100006924(&qword_100045350, &qword_100035268);
    sub_10000F38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045378);
  }

  return result;
}

unint64_t sub_10000F38C()
{
  result = qword_100045380;
  if (!qword_100045380)
  {
    sub_100006924(&qword_100045388, &qword_100035278);
    sub_1000114F8(&qword_100045390, &qword_100045398, &qword_100035280, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045380);
  }

  return result;
}

void *sub_10000F484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = sub_100033B94();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  *(a6 + 48) = v14;
  return result;
}

uint64_t sub_10000F574@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000F624@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for FCDisclosureGroupStyle(0) + 20);
  *&a1[v2] = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  result = swift_storeEnumTagMultiPayload();
  *a1 = 0;
  return result;
}

uint64_t sub_10000F68C@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for FCDisclosureGroupStyle(0) + 20);
  *&a2[v4] = swift_getKeyPath();
  sub_100001A68(&qword_1000453A0, &qword_100035C80);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t sub_10000F6FC(uint64_t a1)
{
  v2 = type metadata accessor for FCDisclosureGroupStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F758()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(*v1 + 112);
  v3 = swift_retain_n();
  v4 = *v2(v3);
  LOBYTE(v2) = (*(v4 + 384))();

  v6 = *v1;
  if ((v2 & 1) == 0)
  {
    v10 = (*(v6 + 272))(v5);
    v12 = v11;
    v14 = v13;

    v15 = *v10->hostingViewController;
    v12, v16, v17, v18, v19, v20, v21, v22;
    v10, v23, v24, v25, v26, v27, v28, v29;
    v30 = *v14->hostingViewController;
    v14, v31, v32, v33, v34, v35, v36, v37;
    if (!__OFADD__(v15, v30))
    {
      (*(*v1 + 216))(v15 + v30, v15 + v30 == 0);
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    type metadata accessor for ActivityGroup(0);
    sub_10001130C(&qword_100045320, type metadata accessor for ActivityGroup, &unk_100034B68);
    result = sub_100033574();
    __break(1u);
    return result;
  }

  v7 = (*(v6 + 112))(v5);

  v9 = (*(*v7 + 488))(v8);

  (*(*v1 + 216))((v9 & 1) == 0, 1);
LABEL_6:
}

uint64_t sub_10000F9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A68(&qword_100045338, &qword_100035250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v41 = sub_1000338C4();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001A68(&qword_1000453B8, &qword_1000352C0);
  v7 = __chkstk_darwin(v6 - 8);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v9;
  v10 = sub_1000338E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_100001A68(&qword_1000453C0, &qword_1000352C8);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v42 = sub_100001A68(&qword_1000453C8, &qword_1000352D0);
  v40 = *(v42 - 8);
  v16 = __chkstk_darwin(v42);
  v43 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  *v15 = sub_1000336C4();
  *(v15 + 1) = 0;
  v20 = 1;
  v15[16] = 1;
  v21 = sub_100001A68(&qword_1000453D0, &qword_1000352D8);
  sub_10000FF54(v3, &v15[*(v21 + 44)]);
  v15[*(v13 + 36)] = 0;
  (*(v11 + 16))(&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = swift_allocObject() + v22;
  v24 = v41;
  (*(v11 + 32))(v23, &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v25 = v39;
  sub_100010824();
  sub_1000339F4();
  v26 = v44;

  sub_10000DC24(v15, &qword_1000453C0, &qword_1000352C8);
  if (sub_100033894())
  {
    v27 = v38;
    sub_1000338D4();
    (*(v26 + 32))(v25, v27, v24);
    v20 = 0;
  }

  (*(v26 + 56))(v25, v20, 1, v24);
  v28 = v40;
  v29 = *(v40 + 16);
  v30 = v43;
  v31 = v42;
  v29(v43, v19, v42);
  v32 = v45;
  sub_10000DBBC(v25, v45, &qword_1000453B8, &qword_1000352C0);
  v33 = v46;
  v29(v46, v30, v31);
  v34 = sub_100001A68(&qword_100045400, &qword_1000352F0);
  sub_10000DBBC(v32, &v33[*(v34 + 48)], &qword_1000453B8, &qword_1000352C0);
  sub_10000DC24(v25, &qword_1000453B8, &qword_1000352C0);
  v35 = *(v28 + 8);
  v35(v19, v31);
  sub_10000DC24(v32, &qword_1000453B8, &qword_1000352C0);
  return (v35)(v30, v31);
}

uint64_t sub_10000FF54@<X0>(_BYTE *a1@<X1>, char *a2@<X8>)
{
  v91 = a2;
  v3 = sub_1000333A4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v77 - v8;
  v10 = sub_100001A68(&qword_1000454B0, &qword_100035410);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  v81 = sub_100001A68(&qword_1000454B8, &qword_100035418);
  __chkstk_darwin(v81);
  v84 = &v77 - v13;
  v14 = sub_100001A68(&qword_1000454C0, &qword_100035420);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v83 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v82 = &v77 - v18;
  v19 = sub_100001A68(&qword_1000454C8, &qword_100035428);
  v20 = __chkstk_darwin(v19 - 8);
  v90 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v88 = &v77 - v22;
  v23 = sub_1000338A4();
  v86 = *(v23 - 8);
  v87 = v23;
  v24 = __chkstk_darwin(v23);
  v89 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v85 = &v77 - v26;
  sub_1000338B4();
  if (*a1)
  {
    v27 = v88;
    (*(v15 + 56))(v88, 1, 1, v14);
  }

  else
  {
    v78 = sub_100033B44();
    if (sub_100033894())
    {
      v28 = 1.57079633;
    }

    else
    {
      v28 = 0.0;
    }

    sub_100033CB4();
    v30 = v29;
    v32 = v31;
    v33 = sub_100033914();
    sub_100033374();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v94 = 0;
    v42 = *(v10 + 36);
    v79 = a1;
    v43 = &v12[v42];
    v44 = sub_100001A68(&qword_1000454D0, &qword_100035430);
    v80 = v14;
    v45 = v3;
    v46 = *(v44 + 28);
    v47 = enum case for Image.Scale.small(_:);
    v48 = sub_100033B64();
    (*(*(v48 - 8) + 104))(v43 + v46, v47, v48);
    *v43 = swift_getKeyPath();
    *v12 = v78;
    *(v12 + 1) = v28;
    *(v12 + 2) = v30;
    *(v12 + 3) = v32;
    v12[32] = v33;
    *(v12 + 33) = *v93;
    *(v12 + 9) = *&v93[3];
    *(v12 + 5) = v35;
    *(v12 + 6) = v37;
    *(v12 + 7) = v39;
    *(v12 + 8) = v41;
    v12[72] = 0;
    sub_100033934();
    sub_100033944();
    v49 = sub_100033954();

    KeyPath = swift_getKeyPath();
    v51 = v84;
    sub_100011540(v12, v84, &qword_1000454B0, &qword_100035410);
    v52 = (v51 + *(v81 + 36));
    *v52 = KeyPath;
    v52[1] = v49;
    type metadata accessor for FCDisclosureGroupStyle(0);
    sub_100010E90(v9);
    (*(v4 + 104))(v7, enum case for ColorScheme.dark(_:), v45);
    LOBYTE(KeyPath) = sub_100033394();
    v53 = *(v4 + 8);
    v53(v7, v45);
    v53(v9, v45);
    v54 = objc_opt_self();
    v55 = &selRef_systemGray2Color;
    if ((KeyPath & 1) == 0)
    {
      v55 = &selRef_systemGray4Color;
    }

    v56 = [v54 *v55];
    v57 = sub_100033AC4();
    v58 = swift_getKeyPath();
    v59 = v51;
    v60 = v83;
    sub_100011540(v59, v83, &qword_1000454B8, &qword_100035418);
    v61 = v80;
    v62 = (v60 + *(v80 + 36));
    *v62 = v58;
    v62[1] = v57;
    v63 = v60;
    v64 = v82;
    sub_100011540(v63, v82, &qword_1000454C0, &qword_100035420);
    v27 = v88;
    sub_100011540(v64, v88, &qword_1000454C0, &qword_100035420);
    (*(v15 + 56))(v27, 0, 1, v61);
  }

  v66 = v85;
  v65 = v86;
  v67 = *(v86 + 16);
  v68 = v89;
  v69 = v87;
  v67(v89, v85, v87);
  v92 = 1;
  v70 = v90;
  sub_10000DBBC(v27, v90, &qword_1000454C8, &qword_100035428);
  v71 = v91;
  v67(v91, v68, v69);
  v72 = sub_100001A68(&qword_1000454D8, &qword_1000354C8);
  v73 = &v71[*(v72 + 48)];
  v74 = v92;
  *v73 = 0;
  v73[8] = v74;
  sub_10000DBBC(v70, &v71[*(v72 + 64)], &qword_1000454C8, &qword_100035428);
  sub_10000DC24(v27, &qword_1000454C8, &qword_100035428);
  v75 = *(v65 + 8);
  v75(v66, v69);
  sub_10000DC24(v70, &qword_1000454C8, &qword_100035428);
  return (v75)(v68, v69);
}

uint64_t sub_1000106F4()
{
  v1 = sub_1000338E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001077C()
{
  sub_1000338E4();
  sub_100033C94();
  sub_100033434();
}

unint64_t sub_100010824()
{
  result = qword_1000453D8;
  if (!qword_1000453D8)
  {
    sub_100006924(&qword_1000453C0, &qword_1000352C8);
    sub_1000114F8(&qword_1000453E0, &qword_1000453E8, &unk_1000352E0, &protocol conformance descriptor for HStack<A>);
    sub_1000114F8(&qword_1000453F0, &qword_1000453F8, &qword_100035D60, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000453D8);
  }

  return result;
}

__n128 sub_100010944(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100010960(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000109BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100010A40(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100010B10(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100001A68(&qword_100045408, &qword_1000353E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100010BBC(uint64_t a1)
{
  sub_100010C38(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100010C38(uint64_t a1)
{
  if (!qword_100045468)
  {
    sub_1000333A4();
    v1 = sub_1000333B4();
    if (!v2)
    {
      atomic_store(v1, &qword_100045468);
    }
  }
}

unint64_t sub_100010C94()
{
  result = qword_100045498;
  if (!qword_100045498)
  {
    sub_100006924(&qword_100045338, &qword_100035250);
    sub_100006924(&qword_100045328, &qword_100035240);
    type metadata accessor for FCDisclosureGroupStyle(255);
    sub_1000114F8(&qword_1000453A8, &qword_100045328, &qword_100035240, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_10001130C(&qword_1000453B0, type metadata accessor for FCDisclosureGroupStyle, &unk_100035348);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045498);
  }

  return result;
}

uint64_t sub_100010E24()
{
  v0 = sub_100033884();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_100010E90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000336A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001A68(&qword_1000453A0, &qword_100035C80);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10000DBBC(v2, &v14 - v9, &qword_1000453A0, &qword_100035C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000333A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100033EC4();
    v13 = sub_1000338F4();
    sub_100033264();

    sub_100033694();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000110E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000111B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033654();
  *a1 = result;
  return result;
}

uint64_t sub_100011208@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000335F4();
  *a1 = result;
  return result;
}

uint64_t sub_100011260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySelectableRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001130C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100011354()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001139C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  *a2 = sub_100033C74();
  a2[1] = v7;
  v8 = sub_100001A68(&qword_100045518, &qword_1000355A0);
  return sub_10000EA9C(v4, v5, v6, (v2 + 16), (a2 + *(v8 + 44)));
}

unint64_t sub_10001140C()
{
  result = qword_100045500;
  if (!qword_100045500)
  {
    sub_100006924(&qword_1000454F8, &unk_100035590);
    sub_1000114F8(&qword_100045508, &qword_100044E08, &unk_100035A80, &protocol conformance descriptor for [A]);
    sub_1000114F8(&qword_100045510, &qword_100044E08, &unk_100035A80, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045500);
  }

  return result;
}

uint64_t sub_1000114F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100006924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001A68(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000115BC(uint64_t a1, uint64_t (**a2)(void, void))
{
  sub_100033FB4(42);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  a2[2](a1, a2);
  v36._countAndFlagsBits = sub_1000340C4();
  object = v36._object;
  sub_100033D84(v36);
  object, v12, v13, v14, v15, v16, v17, v18;
  v37._countAndFlagsBits = 0x656C646E7562202CLL;
  v37._object = 0xEB00000000204449;
  sub_100033D84(v37);
  a2[3](a1, a2);
  sub_100001A68(&qword_100045528, qword_1000355B0);
  v38._countAndFlagsBits = sub_100033D54();
  v19 = v38._object;
  sub_100033D84(v38);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v39._countAndFlagsBits = 0x44496D616574202CLL;
  v39._object = 0xE900000000000020;
  sub_100033D84(v39);
  a2[4](a1, a2);
  v40._countAndFlagsBits = sub_100033D54();
  v27 = v40._object;
  sub_100033D84(v40);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return 0xD000000000000010;
}

uint64_t sub_10001176C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v1;
}

uint64_t sub_1000117E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100011878(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000118E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_1000119A8(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045048, &unk_100035650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_100011AE0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045048, &unk_100035650);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045040, &unk_100034D60);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100011C64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100011CB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

uint64_t (*sub_100011D2C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100006B98;
}

uint64_t sub_100011E04(uint64_t a1, void *a2)
{
  v3 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v7 - v5, a1, v3);
  swift_beginAccess();
  sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_100011F3C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332D4();
  swift_endAccess();
  return sub_100006B9C;
}

uint64_t sub_100012114(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100033304();

  return v3;
}

uint64_t sub_100012180@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000121CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_100012248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100033314();
}

uint64_t (*sub_1000122C0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1000332F4();
  return sub_100002514;
}

uint64_t (*sub_10001238C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001A68(&qword_100045538, &qword_1000356B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001A68(&qword_100045530, &qword_1000356A8);
  sub_1000332D4();
  swift_endAccess();
  return sub_1000028C8;
}

uint64_t sub_1000124FC()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded[0];
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText[0], v4);
  return v0;
}

uint64_t sub_1000125E4()
{
  v1 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded[0];
  v2 = sub_100001A68(&qword_100045040, &unk_100034D60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v4 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText[0], v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_100012708()
{
  v0 = swift_allocObject();
  sub_100012740();
  return v0;
}

uint64_t sub_100012740()
{
  v1 = sub_100001A68(&qword_100045530, &qword_1000356A8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100001A68(&qword_100045040, &unk_100034D60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__isEmbedded[0];
  LOBYTE(v14) = 0;
  sub_1000332C4();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__headerText;
  v14 = 0;
  v15 = 0;
  sub_100001A68(&qword_100045528, qword_1000355B0);
  sub_1000332C4();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtC23ActivityPickerExtension31ActivityPickerViewConfiguration__footerText[0];
  v14 = 0;
  v15 = 0;
  sub_1000332C4();
  v11(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_100012940@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityPickerViewConfiguration(0);
  result = sub_1000332B4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ActivityPickerViewConfiguration(uint64_t a1)
{
  result = qword_100046DF0;
  if (!qword_100046DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000129D4(uint64_t a1)
{
  sub_100012AA0();
  if (v1 <= 0x3F)
  {
    sub_100012AF0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100012AA0()
{
  if (!qword_1000450A0)
  {
    v0 = sub_100033324();
    if (!v1)
    {
      atomic_store(v0, &qword_1000450A0);
    }
  }
}

void sub_100012AF0(uint64_t a1)
{
  if (!qword_100045568)
  {
    sub_100006924(&qword_100045528, qword_1000355B0);
    v1 = sub_100033324();
    if (!v2)
    {
      atomic_store(v1, &qword_100045568);
    }
  }
}

id sub_100012B58()
{
  result = [objc_opt_self() mainBundle];
  qword_100046E08 = result;
  return result;
}

uint64_t sub_100012B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100001A68(&qword_100045688, qword_100035780);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  if (qword_100046E00 != -1)
  {
    swift_once();
  }

  v6 = qword_100046E08;
  v7 = sub_100033D04();
  v8 = sub_100033D04();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_100033D34();
  v11 = v10;

  sub_100032F94();
  v12 = sub_100032FA4();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = sub_100033D44();
  v11, v14, v15, v16, v17, v18, v19, v20;
  sub_100012D48(v5);
  return v13;
}

uint64_t sub_100012D48(uint64_t a1)
{
  v2 = sub_100001A68(&qword_100045688, qword_100035780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100001A68(&qword_100045688, qword_100035780);
  __chkstk_darwin(v5 - 8);
  v7 = &v58 - v6;
  result = MGCopyAnswer();
  if (result)
  {
    v61 = result;
    if (swift_dynamicCast())
    {
      v9 = v60;
      v59 = a1;
      v60 = a2;

      v62._countAndFlagsBits = 95;
      v62._object = 0xE100000000000000;
      sub_100033D84(v62);
      v10 = v59;
      v11 = v60;
      v12 = sub_100033D64();
      v14 = v13;
      v9, v13, v15, v16, v17, v18, v19, v20;
      v59 = v10;
      v60 = v11;

      v63._countAndFlagsBits = v12;
      v63._object = v14;
      sub_100033D84(v63);
      v11, v21, v22, v23, v24, v25, v26, v27;
      v14, v28, v29, v30, v31, v32, v33, v34;
      v35 = v60;
      if (qword_100046E00 != -1)
      {
        swift_once();
      }

      v36 = qword_100046E08;
      v37 = sub_100033D04();
      v35, v38, v39, v40, v41, v42, v43, v44;
    }

    else
    {
      if (qword_100046E00 != -1)
      {
        swift_once();
      }

      v36 = qword_100046E08;
      v37 = sub_100033D04();
    }

    v45 = sub_100033D04();
    v46 = [v36 localizedStringForKey:v37 value:0 table:v45];

    sub_100033D34();
    v48 = v47;

    sub_100032F94();
    v49 = sub_100032FA4();
    (*(*(v49 - 8) + 56))(v7, 0, 1, v49);
    v50 = sub_100033D44();
    v48, v51, v52, v53, v54, v55, v56, v57;
    sub_100012D48(v7);
    return v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000130D0(uint64_t a1@<X8>)
{
  v3 = sub_100033294();
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  v7 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  v8 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 8];
  v9 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 16];
  v10 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 24];
  v11 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 32];
  v12 = v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 40];
  if (v9 == 1)
  {
    v38 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 8];
    v39 = v7;
    v36 = v10;
    v37 = 1;
    v35 = v11;
    v34 = v12;
    v13 = [v1 _hostProcessIdentifier];
    [v1 _hostAuditToken];
    v18 = *(&v40 + 1);
    v14 = v40;
    v16 = v41;
    v15 = v42;
    v17 = [objc_opt_self() currentConnection];
    sub_100033274();
    sub_100018E6C(v13, v14, v18, v16, v15, v17, v5, &v40);
    LODWORD(v18) = v40;
    v19 = *(&v40 + 1);
    v20 = v41;
    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = *v6;
    v32 = *(v6 + 1);
    v33 = v24;
    v25 = *(v6 + 2);
    v26 = *(v6 + 3);
    v30 = *(v6 + 4);
    v31 = v25;
    *v6 = v40;
    *(v6 + 1) = v19;
    *(v6 + 2) = v20;
    *(v6 + 3) = v21;
    *(v6 + 4) = v22;
    v27 = v6[40];
    v6[40] = v23;

    sub_10001822C(v33, v32, v31, v26, v30, v27, v28, v29);
    v11 = v35;
    v10 = v36;
    v9 = v37;
    v8 = v38;
    v7 = v39;
  }

  else
  {
    v23 = v12 & 1;
    v18 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
    v19 = v8;
    v20 = v9;
    v21 = v10;
    v22 = v11;
  }

  sub_100018C64(v7, v8, v9, v10, v11);
  *a1 = v18;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
}

void sub_1000132B0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0;
}

id sub_1000132C8()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_100013300()
{
  v1 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  [*&v0[OBJC_IVAR___ActivityPickerServiceViewController_connectionLock] lock];
  v2 = &v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  v3 = *&v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  if (v3)
  {
    v4 = *&v0[v1];
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for ActivityPickerServiceViewController();
    v3 = sub_100032FB4();
    v6 = v5;
    swift_getObjectType();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    sub_100033054();
    *(swift_allocObject() + 16) = v7;
    v8 = v7;
    sub_100033064();
    *v2 = v3;
    v2[1] = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_100033074();
    v4 = *&v0[v1];
  }

  [v4 unlock];
  return v3;
}

id sub_100013470(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  [*(v2 + OBJC_IVAR___ActivityPickerServiceViewController_connectionLock) lock];
  if (a1)
  {
    v5 = (v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
    if (*(v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100033064();
      swift_unknownObjectRelease();
      if (*v5)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100033044();
        swift_unknownObjectRelease();
      }
    }
  }

  v6 = (v2 + OBJC_IVAR___ActivityPickerServiceViewController_currentConnection);
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectRelease();
  v7 = *(v2 + v4);

  return [v7 unlock];
}

id sub_100013574()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0x120))(1);
  sub_100033274();
  v6 = sub_100033284();
  v7 = sub_100033EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "ActivityPickerServiceViewController deinit", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for ActivityPickerServiceViewController();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

id sub_100013818()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_10001384C()
{
  v1 = v0;
  v2 = OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration;
  type metadata accessor for ActivityPickerViewConfiguration(0);
  *&v0[v2] = sub_100012708();
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController] = 0;
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder] = 0;
  *&v0[OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder] = 0;
  v3 = &v0[OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client];
  *v3 = 0u;
  *(v3 + 2) = 1;
  v3[40] = 0;
  *(v3 + 24) = 0u;
  v4 = &v0[OBJC_IVAR___ActivityPickerServiceViewController_currentConnection];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR___ActivityPickerServiceViewController_connectionLock;
  *&v1[v5] = [objc_allocWithZone(NSLock) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActivityPickerServiceViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

id sub_100013958(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_1000139EC(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

id sub_100013A48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

uint64_t sub_100013A9C()
{
  v1 = v0;
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100013D40;
  v18 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v16 = sub_100013F14;
  *(&v16 + 1) = &unk_100041C40;
  v6 = _Block_copy(&aBlock);
  v7 = [v1 _remoteViewControllerProxyWithErrorHandler:v6];
  _Block_release(v6);
  if (v7)
  {
    sub_100033F54();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  aBlock = v13;
  v16 = v14;
  sub_10000DBBC(&aBlock, &v13, &qword_1000456C8, &unk_1000357D0);
  if (*(&v14 + 1))
  {
    sub_100001A68(&qword_1000456D0, &qword_1000357E0);
    if (swift_dynamicCast())
    {
      sub_10000DC24(&aBlock, &qword_1000456C8, &unk_1000357D0);
      return v12[1];
    }
  }

  else
  {
    sub_10000DC24(&v13, &qword_1000456C8, &unk_1000357D0);
  }

  sub_100033274();
  v9 = sub_100033284();
  v10 = sub_100033EB4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to get client interface", v11, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_10000DC24(&aBlock, &qword_1000456C8, &unk_1000357D0);
  return 0;
}

uint64_t sub_100013D40(uint64_t a1)
{
  v2 = sub_100033294();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100033274();
  swift_errorRetain();
  v6 = sub_100033284();
  v7 = sub_100033EB4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = a1;
    v23 = v9;
    *v8 = 136446210;
    swift_errorRetain();
    sub_100001A68(&qword_100045750, &unk_100035880);
    v10 = sub_100033D54();
    v12 = v11;
    v13 = sub_1000045A0(v10, v11, &v23);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get client proxy: %{public}s", v8, 0xCu);
    sub_100006A74(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_100013F14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100013F80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ActivityPickerServiceViewController *a8, uint64_t a9, ActivityPickerServiceViewController *a10, ActivityPickerServiceViewController *a11, ActivityPickerServiceViewController *a12)
{
  v13 = v12;
  v372 = a7;
  v366 = a5;
  v365 = a4;
  v364 = a3;
  v363 = a2;
  v362 = a1;
  v389 = sub_100033294();
  v373 = *(v389 - 8);
  v16 = __chkstk_darwin(v389);
  v18 = &v356 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v367 = &v356 - v20;
  v21 = __chkstk_darwin(v19);
  v371 = &v356 - v22;
  v23 = __chkstk_darwin(v21);
  v384 = &v356 - v24;
  v25 = __chkstk_darwin(v23);
  v386 = &v356 - v26;
  __chkstk_darwin(v25);
  v387 = &v356 - v27;
  v392 = sub_100001A68(&qword_1000456D8, &unk_1000357E8);
  v370 = *&v392[-1].connectionLock[7];
  v28 = __chkstk_darwin(v392);
  v378 = &v356 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v379 = &v356 - v31;
  __chkstk_darwin(v30);
  v382 = &v356 - v32;
  v33 = sub_1000331A4();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v356 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityProvider(0);
  v369 = sub_100019B74(a6);
  sub_1000130D0(v399);
  v37 = v401;
  v402 = v400;
  sub_10000DC24(&v402, &qword_100045528, qword_1000355B0);
  if (!v37)
  {
    sub_100033274();
    v89 = sub_100033284();
    v90 = sub_100033EB4();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unable to configure activity picker: team identifier not available", v91, 2u);
    }

    (*(v373 + 8))(v18, v389);
    (*(*v369 + 200))(&_swiftEmptySetSingleton, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton);
  }

  v360 = a6;
  sub_100033194();
  v397 = v33;
  v398 = &protocol witness table for KeyRetriever;
  v38 = sub_1000186FC(&v396);
  v358 = v34;
  v39 = *(v34 + 16);
  v39(v38, v36, v33);
  sub_1000331F4();
  swift_allocObject();

  v40 = sub_1000331B4();
  v391 = OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder;
  *(v12 + OBJC_IVAR___ActivityPickerServiceViewController_tokenDecoder) = v40;

  v397 = v33;
  v398 = &protocol witness table for KeyRetriever;
  v41 = sub_1000186FC(&v396);
  v359 = v33;
  v39(v41, v36, v33);
  sub_100033244();
  swift_allocObject();

  v380 = v37;
  *(v12 + OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder) = sub_100033204();

  v51 = *(v372 + 16);
  v52 = &loc_100034000;
  v383 = v12;
  v361 = v36;
  v375 = a8;
  v381 = v51;
  if (!v51)
  {
    v65 = 0;
    v368 = _swiftEmptyArrayStorage;
    v55 = v380;
    goto LABEL_26;
  }

  v53 = 0;
  v377 = (v373 + 8);
  viewConfiguration = v370->viewConfiguration;
  v368 = _swiftEmptyArrayStorage;
  v54 = v372 + 40;
  *&v50 = 136446210;
  v374 = v50;
  v55 = v380;
  v56 = v382;
  v357 = v372 + 40;
  do
  {
    v57 = (v54 + 16 * v53);
    v58 = v53;
    v388 = 0;
    v59 = v381;
    while (1)
    {
      if (v58 >= v59)
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (__OFADD__(v58, 1))
      {
        goto LABEL_80;
      }

      v390 = v58 + 1;
      v61 = *(v57 - 1);
      v60 = *v57;
      sub_100018760(v61, *v57);
      sub_100018760(v61, v60);
      sub_100033164();
      if (*(v13 + v391))
      {
        break;
      }

      (*viewConfiguration)(v56, v392);
      result = sub_1000187B4(v61, v60);
LABEL_6:
      ++v58;
      v57 += 2;
      if (v390 == v59)
      {
        v65 = v388;
        a8 = v375;
        goto LABEL_26;
      }
    }

    v62 = v388;
    v63 = sub_1000331C4();
    v65 = v62;
    if (v62)
    {
      v388 = 0;

      sub_100033274();
      swift_errorRetain();
      v66 = sub_100033284();
      v67 = sub_100033EB4();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *&v376 = swift_slowAlloc();
        v396 = v376;
        *v68 = v374;
        v395 = v65;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v69 = sub_100033D54();
        v71 = v70;
        v72 = sub_1000045A0(v69, v70, &v396);
        v73 = v71;
        v52 = &loc_100034000;
        v73, v74, v75, v76, v77, v78, v79, v80;
        *(v68 + 4) = v72;
        v55 = v380;
        _os_log_impl(&_mh_execute_header, v66, v67, "Failed to decode application token: %{public}s", v68, 0xCu);
        sub_100006A74(v376);

        v13 = v383;
      }

      (v377->super.super.super.isa)(v387, v389);
      v56 = v382;
      (*viewConfiguration)(v382, v392);
      result = sub_1000187B4(v61, v60);
      v59 = v381;
      goto LABEL_6;
    }

    v81 = v64;
    v82 = v63;
    (*viewConfiguration)(v382, v392);

    sub_1000187B4(v61, v60);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100018274(0, *v368->hostingViewController + 1, 1, v368, v46, v47, v48, v49);
      v368 = result;
    }

    a8 = v375;
    v84 = *v368->hostingViewController;
    v83 = *v368->tokenDecoder;
    if (v84 >= v83 >> 1)
    {
      result = sub_100018274((v83 > 1), v84 + 1, 1, v368, v46, v47, v48, v49);
      v86 = v81;
      v368 = result;
      v85 = v82;
    }

    else
    {
      v85 = v82;
      v86 = v81;
    }

    v56 = v382;
    v87 = v368;
    *v368->hostingViewController = v84 + 1;
    v88 = v87 + 16 * v84;
    *(v88 + 4) = v85;
    *(v88 + 5) = v86;
    v53 = v390;
    v54 = v357;
  }

  while (v390 != v381);
LABEL_26:
  v387 = *a8->hostingViewController;
  if (!v387)
  {
    *&v374 = _swiftEmptyArrayStorage;
LABEL_47:
    v126 = a9;
    v127 = *(a9 + 16);
    v382 = v127;
    if (v127)
    {
      v128 = 0;
      v379 = (v373 + 8);
      v386 = v370->viewConfiguration;
      v370 = _swiftEmptyArrayStorage;
      v129 = a9 + 40;
      *&v50 = v52[316];
      v376 = v50;
      v357 = a9 + 40;
LABEL_49:
      v130 = (v129 + 16 * v128);
      v131 = v128;
      v388 = v65;
      v132 = v378;
      while (v131 < v127)
      {
        if (__OFADD__(v131, 1))
        {
          goto LABEL_84;
        }

        v390 = (v131 + 1);
        v134 = *(v130 - 1);
        v133 = *v130;
        sub_100018760(v134, *v130);
        sub_100018760(v134, v133);
        sub_100033164();
        if (*(v13 + v391))
        {

          v135 = v388;
          v136 = sub_1000331E4();
          v65 = v135;
          if (!v135)
          {
            v154 = v137;
            v155 = v136;
            (*v386)(v378, v392);

            sub_1000187B4(v134, v133);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_100018274(0, *v370->hostingViewController + 1, 1, v370, v46, v47, v48, v49);
              v370 = result;
            }

            a8 = v375;
            v55 = v380;
            v157 = *v370->hostingViewController;
            v156 = *v370->tokenDecoder;
            if (v157 >= v156 >> 1)
            {
              result = sub_100018274((v156 > 1), v157 + 1, 1, v370, v46, v47, v48, v49);
              v159 = v154;
              v370 = result;
              v158 = v155;
            }

            else
            {
              v158 = v155;
              v159 = v154;
            }

            v160 = v370;
            *v370->hostingViewController = v157 + 1;
            v161 = v160 + 16 * v157;
            *(v161 + 4) = v158;
            *(v161 + 5) = v159;
            v127 = v382;
            v128 = v390;
            v129 = v357;
            if (v390 != v382)
            {
              goto LABEL_49;
            }

            goto LABEL_69;
          }

          v388 = 0;

          v138 = v384;
          sub_100033274();
          swift_errorRetain();
          v139 = sub_100033284();
          v140 = sub_100033EB4();

          LODWORD(viewConfiguration) = v140;
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v377 = swift_slowAlloc();
            v396 = v377;
            *v141 = v376;
            v395 = v65;
            swift_errorRetain();
            sub_100001A68(&qword_1000456E0, &qword_1000357F8);
            v142 = sub_100033D54();
            v144 = v143;
            v145 = v126;
            v146 = sub_1000045A0(v142, v143, &v396);
            v144, v147, v148, v149, v150, v151, v152, v153;
            *(v141 + 4) = v146;
            v126 = v145;
            _os_log_impl(&_mh_execute_header, v139, viewConfiguration, "Failed to decode web domain token: %{public}s", v141, 0xCu);
            sub_100006A74(v377);

            v13 = v383;

            (*v379)(v384, v389);
          }

          else
          {

            (*v379)(v138, v389);
          }

          v132 = v378;
          (*v386)(v378, v392);
          result = sub_1000187B4(v134, v133);
          v127 = v382;
        }

        else
        {
          (*v386)(v132, v392);
          result = sub_1000187B4(v134, v133);
        }

        ++v131;
        v130 += 2;
        if (v390 == v127)
        {
          a8 = v375;
          v55 = v380;
          goto LABEL_69;
        }
      }

      goto LABEL_83;
    }

    v370 = _swiftEmptyArrayStorage;
LABEL_69:
    v55, v43, v44, v45, v46, v47, v48, v49;
    sub_100033274();
    v162 = v368;

    v163 = v372;

    v164 = v374;

    v165 = a8;
    v166 = v126;
    v167 = v370;

    v168 = sub_100033284();
    v169 = sub_100033EA4();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 134219264;
      *(v170 + 4) = *v162->hostingViewController;
      v162, v171, v172, v173, v174, v175, v176, v177;
      v392 = v166;
      *(v170 + 12) = 2048;
      *(v170 + 14) = v381;
      v163, v178, v179, v180, v181, v182, v183, v184;
      *(v170 + 22) = 2048;
      *(v170 + 24) = *v164->hostingViewController;
      v164, v185, v186, v187, v188, v189, v190, v191;
      *(v170 + 32) = 2048;
      *(v170 + 34) = v387;
      v165, v192, v193, v194, v195, v196, v197, v198;
      *(v170 + 42) = 2048;
      *(v170 + 44) = *v167->hostingViewController;
      v167, v199, v200, v201, v202, v203, v204, v205;
      *(v170 + 52) = 2048;
      *(v170 + 54) = v382;
      v392, v206, v207, v208, v209, v210, v211, v212;
      _os_log_impl(&_mh_execute_header, v168, v169, "Detokenized %ld/%ld applications, %ld/%ld categories, %ld/%ld webDomains", v170, 0x3Eu);
    }

    else
    {

      v162, v213, v214, v215, v216, v217, v218, v219;
      v163, v220, v221, v222, v223, v224, v225, v226;
      v164, v227, v228, v229, v230, v231, v232, v233;
      v165, v234, v235, v236, v237, v238, v239, v240;
      v167, v241, v242, v243, v244, v245, v246, v247;
      v166, v248, v249, v250, v251, v252, v253, v254;
    }

    v255 = v361;
    v256 = v367;
    v257 = v167;
    v258 = *(v373 + 8);
    v373 += 8;
    v258(v371, v389);
    v396 = v162;
    v394 = v257;
    v395 = v164;
    if (*(v13 + OBJC_IVAR___ActivityPickerServiceViewController____lazy_storage___client + 40))
    {

      sub_10001580C(v259);

      sub_10001580C(v260);

      sub_10001580C(v261);
      sub_100033274();

      v262 = sub_100033284();
      v263 = sub_100033EA4();
      a12, v264, v265, v266, v267, v268, v269, v270;
      a11, v271, v272, v273, v274, v275, v276, v277;
      a10, v278, v279, v280, v281, v282, v283, v284;
      if (os_log_type_enabled(v262, v263))
      {
        v285 = swift_slowAlloc();
        v393 = swift_slowAlloc();
        *v285 = 136315650;
        v286 = sub_100033E04();
        v288 = v287;
        v289 = sub_1000045A0(v286, v287, &v393);
        v288, v290, v291, v292, v293, v294, v295, v296;
        *(v285 + 4) = v289;
        *(v285 + 12) = 2080;
        v297 = sub_100033E04();
        v299 = v298;
        v300 = sub_1000045A0(v297, v298, &v393);
        v299, v301, v302, v303, v304, v305, v306, v307;
        *(v285 + 14) = v300;
        *(v285 + 22) = 2080;
        v255 = v361;
        v308 = sub_100033E04();
        v310 = v309;
        v311 = sub_1000045A0(v308, v309, &v393);
        v310, v312, v313, v314, v315, v316, v317, v318;
        *(v285 + 24) = v311;
        _os_log_impl(&_mh_execute_header, v262, v263, "Untokenized applications: %s, categories %s, webDomains: %s", v285, 0x20u);
        swift_arrayDestroy();
        v13 = v383;

        v319 = v367;
      }

      else
      {

        v319 = v256;
      }

      v258(v319, v389);
    }

    v320 = v396;
    v321 = sub_100018808(v396);
    v320, v322, v323, v324, v325, v326, v327, v328;
    v329 = v395;
    v330 = sub_100018808(v395);
    v329, v331, v332, v333, v334, v335, v336, v337;
    v338 = v394;
    v339 = sub_100018808(v394);
    v338, v340, v341, v342, v343, v344, v345, v346;
    v347 = v369;
    (*(*v369 + 200))(v321, v330, v339);
    v348 = *(v13 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration);
    (*(*v348 + 112))(v362 & 1);
    v349 = *(*v348 + 160);
    v350 = v364;

    v349(v363, v350);
    v351 = *(*v348 + 208);
    v352 = v366;

    v351(v365, v352);
    (*((swift_isaMask & *v13) + 0x138))(v347);
    sub_100013300();
    swift_getObjectType();
    v353 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v354 = swift_allocObject();
    swift_weakInit();
    v355 = swift_allocObject();
    *(v355 + 16) = v353;
    *(v355 + 24) = v354;
    *(v355 + 32) = v360 & 1;

    sub_100033084();

    swift_unknownObjectRelease();

    (*(v358 + 8))(v255, v359);
  }

  v92 = 0;
  v382 = (v373 + 8);
  viewConfiguration = v370->viewConfiguration;
  *&v374 = _swiftEmptyArrayStorage;
  v93 = a8->$__lazy_storage_$_client;
  *&v50 = v52[316];
  v376 = v50;
  v94 = v387;
  v357 = a8->$__lazy_storage_$_client;
LABEL_28:
  v95 = (v93 + 16 * v92);
  v96 = v92;
  v388 = v65;
  v97 = v379;
  while (v96 < v94)
  {
    if (__OFADD__(v96, 1))
    {
      goto LABEL_82;
    }

    v390 = (v96 + 1);
    v99 = *(v95 - 1);
    v98 = *v95;
    sub_100018760(v99, *v95);
    sub_100018760(v99, v98);
    sub_100033164();
    if (*(v13 + v391))
    {

      v100 = v388;
      v101 = sub_1000331D4();
      v65 = v100;
      if (!v100)
      {
        v118 = v102;
        v119 = v101;
        (*viewConfiguration)(v379, v392);

        sub_1000187B4(v99, v98);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100018274(0, *(v374 + 16) + 1, 1, v374, v46, v47, v48, v49);
          *&v374 = result;
        }

        v52 = &loc_100034000;
        v121 = *(v374 + 16);
        v120 = *(v374 + 24);
        if (v121 >= v120 >> 1)
        {
          result = sub_100018274((v120 > 1), v121 + 1, 1, v374, v46, v47, v48, v49);
          v123 = v118;
          *&v374 = result;
          v122 = v119;
        }

        else
        {
          v122 = v119;
          v123 = v118;
        }

        v93 = v357;
        v124 = v374;
        *(v374 + 16) = v121 + 1;
        v125 = v124 + 16 * v121;
        *(v125 + 32) = v122;
        *(v125 + 40) = v123;
        v94 = v387;
        v92 = v390;
        if (v390 != v387)
        {
          goto LABEL_28;
        }

        goto LABEL_47;
      }

      v388 = 0;

      sub_100033274();
      swift_errorRetain();
      v103 = sub_100033284();
      v104 = sub_100033EB4();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v377 = swift_slowAlloc();
        v396 = v377;
        *v105 = v376;
        v395 = v65;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v106 = sub_100033D54();
        v108 = v107;
        v109 = sub_1000045A0(v106, v107, &v396);
        v110 = v108;
        a8 = v375;
        v110, v111, v112, v113, v114, v115, v116, v117;
        *(v105 + 4) = v109;
        v55 = v380;
        _os_log_impl(&_mh_execute_header, v103, v104, "Failed to decode category token: %{public}s", v105, 0xCu);
        sub_100006A74(v377);

        v13 = v383;
      }

      (*v382)(v386, v389);
      v97 = v379;
      (*viewConfiguration)(v379, v392);
    }

    else
    {
      (*viewConfiguration)(v97, v392);
    }

    result = sub_1000187B4(v99, v98);
    ++v96;
    v95 += 2;
    v94 = v387;
    if (v390 == v387)
    {
      v65 = v388;
      v52 = &loc_100034000;
      goto LABEL_47;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

void sub_10001580C(ActivityPickerServiceViewController *result)
{
  v2 = *result->hostingViewController;
  v3 = *v1;
  v4 = *(*v1)->hostingViewController;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tokenDecoder >> 1)
  {
    if (*result->hostingViewController)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_100018274(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*result->hostingViewController)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*v3->tokenDecoder >> 1) - *v3->hostingViewController < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *v3->hostingViewController;
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *v3->hostingViewController = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100015900(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1)->hostingViewController;
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v13 = *v4->tokenDecoder >> 1, v13 < v6))
  {
    if (v5 <= v6)
    {
      v14 = v5 + v3;
    }

    else
    {
      v14 = v5;
    }

    v4 = sub_100018274(isUniquelyReferenced_nonNull_native, v14, 1, v4, v9, v10, v11, v12);
    v13 = *v4->tokenDecoder >> 1;
  }

  v15 = *v4->hostingViewController;
  v16 = v13 - v15;
  result = sub_10001848C(&v50, &v4->tokenEncoder[16 * v15], v13 - v15, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v19 = result;
  if (result)
  {
    v20 = *v4->hostingViewController;
    v21 = __OFADD__(v20, result);
    v22 = result + v20;
    if (v21)
    {
      __break(1u);
LABEL_19:
      v25 = (v18 + 64) >> 6;
      if (v25 <= v2 + 1)
      {
        v26 = v2 + 1;
      }

      else
      {
        v26 = (v18 + 64) >> 6;
      }

      v27 = v26 - 1;
      do
      {
        v28 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v28 >= v25)
        {
          v53 = v27;
          v54 = 0;
          goto LABEL_13;
        }

        v29 = *(v17 + 8 * v28);
        ++v2;
      }

      while (!v29);
      v47 = v18;
      v23 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v2 = v28;
      goto LABEL_27;
    }

    *v4->hostingViewController = v22;
  }

  result = v50;
  if (v19 != v16)
  {
    goto LABEL_13;
  }

LABEL_16:
  v16 = *v4->hostingViewController;
  v17 = v51;
  v18 = v52;
  v2 = v53;
  v49 = v51;
  if (!v54)
  {
    goto LABEL_19;
  }

  v23 = (v54 - 1) & v54;
  v24 = __clz(__rbit64(v54)) | (v53 << 6);
  v47 = v52;
  v25 = (v52 + 64) >> 6;
LABEL_27:
  v48 = result;
  v30 = (result[6] + 16 * v24);
  v32 = *v30;
  v31 = v30[1];

  v37 = v49;
LABEL_29:
  while (1)
  {
    v38 = *v4->tokenDecoder;
    v39 = v38 >> 1;
    if ((v38 >> 1) < v16 + 1)
    {
      break;
    }

    if (v16 < v39)
    {
      goto LABEL_31;
    }

LABEL_28:
    *v4->hostingViewController = v16;
  }

  v45 = sub_100018274((v38 > 1), v16 + 1, 1, v4, v33, v34, v35, v36);
  v37 = v49;
  v4 = v45;
  v39 = *v45->tokenDecoder >> 1;
  if (v16 >= v39)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v40 = &v4->tokenEncoder[16 * v16];
    *v40 = v32;
    *(v40 + 1) = v31;
    ++v16;
    if (!v23)
    {
      break;
    }

    result = v48;
LABEL_38:
    v43 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v44 = (result[6] + ((v2 << 10) | (16 * v43)));
    v32 = *v44;
    v31 = v44[1];

    v37 = v49;
    if (v16 == v39)
    {
      v16 = v39;
      *v4->hostingViewController = v39;
      goto LABEL_29;
    }
  }

  v41 = v2;
  result = v48;
  while (1)
  {
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v42 >= v25)
    {
      break;
    }

    v23 = *(v37 + 8 * v42);
    ++v41;
    if (v23)
    {
      v2 = v42;
      goto LABEL_38;
    }
  }

  if (v25 <= v2 + 1)
  {
    v46 = v2 + 1;
  }

  else
  {
    v46 = v25;
  }

  v52 = v47;
  v53 = v46 - 1;
  v54 = 0;
  *v4->hostingViewController = v16;
LABEL_13:
  result = sub_1000189CC(result);
  *v1 = v4;
  return result;
}

void *sub_100015BBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_100033294();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_10000DBBC(a1, v36, &qword_100045720, &unk_100035860);
    if (v37)
    {
      v12 = *&v36[0];
      sub_100033274();
      swift_errorRetain();
      v13 = sub_100033284();
      v14 = sub_100033EB4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock[0] = v33;
        *v15 = 136446210;
        *&v35[0] = v12;
        swift_errorRetain();
        sub_100001A68(&qword_1000456E0, &qword_1000357F8);
        v16 = sub_100033D54();
        v18 = v17;
        v19 = sub_1000045A0(v16, v17, aBlock);
        v18, v20, v21, v22, v23, v24, v25, v26;
        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s", v15, 0xCu);
        sub_100006A74(v33);
      }

      (*(v7 + 8))(v9, v6);
      sub_100013300();
      swift_getObjectType();
      sub_100033044();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000189D4(v36, v35);
      sub_100006AC0(v35, aBlock);
      sub_100001A68(&qword_100045728, &qword_100035870);
      if (swift_dynamicCast())
      {
        v27 = aBlock[6];
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v29;
        *(v30 + 32) = a4 & 1;
        aBlock[4] = sub_100018A28;
        aBlock[5] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100013F14;
        aBlock[3] = &unk_100041D08;
        v31 = _Block_copy(aBlock);

        [v27 fetchAllSharedActivityWithReplyHandler:v31];
        _Block_release(v31);

        swift_unknownObjectRelease();
        return sub_100006A74(v35);
      }

      else
      {
        result = sub_100034044();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_100016000(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = a4;
  v5 = sub_100033294();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100033CC4();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100033CE4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v17 = swift_weakLoadStrong();
    if (v17)
    {
      v18 = v17;
      if (a1)
      {
        sub_100033274();
        swift_errorRetain();
        v19 = sub_100033284();
        v20 = sub_100033ED4();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v41 = a1;
          aBlock[0] = v22;
          *v21 = 136446210;
          swift_errorRetain();
          sub_100001A68(&qword_100045750, &unk_100035880);
          v23 = sub_100033D54();
          v25 = v24;
          v26 = sub_1000045A0(v23, v24, aBlock);
          v25, v27, v28, v29, v30, v31, v32, v33;
          *(v21 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch family activity: %{public}s", v21, 0xCu);
          sub_100006A74(v22);
        }

        (*(v40 + 8))(v7, v5);
      }

      else
      {
        sub_100018A34();
        v40 = sub_100033EE4();
        v34 = swift_allocObject();
        *(v34 + 16) = v18;
        *(v34 + 24) = v38 & 1;
        aBlock[4] = sub_100018AB8;
        aBlock[5] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000164BC;
        aBlock[3] = &unk_100041D58;
        v35 = _Block_copy(aBlock);

        sub_100033CD4();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100018B04();
        sub_100001A68(&qword_100045740, &qword_100035878);
        sub_100018B5C();
        sub_100033F64();
        v36 = v40;
        sub_100033EF4();
        _Block_release(v35);

        (*(v39 + 8))(v10, v8);
        (*(v12 + 8))(v14, v11);
      }

      sub_100013300();
      swift_getObjectType();
      sub_100033044();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000164BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100016694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100033294();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unknownObjectWeakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v9 = OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController;
  v10 = *&v1[OBJC_IVAR___ActivityPickerServiceViewController_hostingViewController];
  if (v10)
  {
    v11 = *(**&v1[OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration] + 104);
    v12 = v10;
    if ((v11() & 1) == 0)
    {
      sub_100033274();
      v13 = sub_100033284();
      v14 = sub_100033EA4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "ActivityPickerServiceViewController: detaching existing UIHostingController controller from parent", v15, 2u);
      }

      (*(v5 + 8))(v7, v4);
      [v12 willMoveToParentViewController:0];
      v16 = [v12 view];
      if (!v16)
      {
        goto LABEL_51;
      }

      v17 = v16;
      [v16 removeFromSuperview];

      [v12 removeFromParentViewController];
      v12 = *&v2[v9];
      *&v2[v9] = 0;
    }
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = v18;
  v20 = *(v18 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration);

  v21 = swift_unknownObjectWeakLoadStrong();

  sub_10002922C(v20, a1, v21, v69);
  sub_10001891C(v69, v68);
  v22 = objc_allocWithZone(sub_100001A68(&qword_1000456E8, &unk_100035800));
  v23 = sub_100033764();
  v24 = *&v2[v9];
  *&v2[v9] = v23;

  if (!*&v2[v9])
  {
LABEL_30:
    sub_100018978(v69);
LABEL_31:
    swift_unknownObjectWeakDestroy();
    return;
  }

  [v2 addChildViewController:?];
  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_33;
  }

  v26 = v25;
  v27 = *&v2[v9];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = [v27 view];
  if (!v28)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v29 = v28;
  [v26 addSubview:v28];

  v30 = *&v2[v9];
  if (!v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = *&v2[v9];
  if (!v33)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v34 = [v33 view];
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v2 view];
  if (!v37)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = *&v2[v9];
  if (!v41)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v42 = [v41 view];
  if (!v42)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = [v2 view];
  if (!v45)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46 = v45;
  v47 = [v45 bottomAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = *&v2[v9];
  if (!v49)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v50 = [v49 view];
  if (!v50)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v51 = v50;
  v52 = [v50 leftAnchor];

  v53 = [v2 view];
  if (!v53)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v54 = v53;
  v55 = [v53 leftAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  [v56 setActive:1];

  v57 = *&v2[v9];
  if (!v57)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = [v57 view];
  if (!v58)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v59 = v58;
  v60 = [v58 rightAnchor];

  v61 = [v2 view];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 rightAnchor];

    v64 = [v60 constraintEqualToAnchor:v63];
    [v64 setActive:1];

    v65 = *&v2[v9];
    if (v65)
    {
      v66 = swift_unknownObjectWeakLoadStrong();
      v67 = v65;
      [v67 didMoveToParentViewController:v66];

      goto LABEL_30;
    }

    goto LABEL_50;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_100016D20(uint64_t a1, uint64_t a2, ActivityPickerServiceViewController *a3)
{
  v4 = v3;
  v382 = a3;
  v376 = a2;
  v385 = sub_100033294();
  v6 = *(v385 - 8);
  v7 = __chkstk_darwin(v385);
  v369 = &v365 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v365 - v10;
  v12 = __chkstk_darwin(v9);
  v373 = &v365 - v13;
  __chkstk_darwin(v12);
  v15 = (&v365 - v14);
  v367 = sub_100001A68(&qword_1000456D8, &unk_1000357E8);
  v16 = __chkstk_darwin(v367);
  v374 = (&v365 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v375 = (&v365 - v19);
  __chkstk_darwin(v18);
  v378 = (&v365 - v21);
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = (v23 & *(a1 + 56));
  v379 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
  v25 = (v22 + 63) >> 6;
  v384 = (v6 + 8);
  v366 = (v20 + 8);

  v26 = 0;
  v27 = 0;
  v368 = _swiftEmptyArrayStorage;
  *&v28 = 136446210;
  v377 = v28;
  v383 = v4;
  v372 = a1;
  v381 = v11;
  while (v24)
  {
    v29 = v24;
LABEL_10:
    v24 = ((v29 - 1) & v29);
    if (*(&v379->super.super.super.isa + v4))
    {
      v380 = ((v29 - 1) & v29);
      v31 = *(*(a1 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v29)))) + 8);

      sub_100033214();
      v371 = v15;

      v32 = v367;
      v33 = v378;
      v34 = sub_100033154();
      v36 = v35;
      (*v366)(v33, v32);
      v31, v37, v38, v39, v40, v41, v42, v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v368 = sub_100018380(0, *v368->hostingViewController + 1, 1, v368, v44, v45, v46, v47);
      }

      v11 = v381;
      v49 = *v368->hostingViewController;
      v48 = *v368->tokenDecoder;
      if (v49 >= v48 >> 1)
      {
        v368 = sub_100018380((v48 > 1), v49 + 1, 1, v368, v44, v45, v46, v47);
      }

      v50 = v368;
      *v368->hostingViewController = v49 + 1;
      v51 = v50 + 16 * v49;
      *(v51 + 4) = v34;
      *(v51 + 5) = v36;
      v4 = v383;
      v27 = 0;
      v15 = v371;
      v24 = v380;
    }
  }

  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v30 >= v25)
    {
      break;
    }

    v29 = *(a1 + 56 + 8 * v30);
    ++v26;
    if (v29)
    {
      v26 = v30;
      goto LABEL_10;
    }
  }

  v52 = v376;
  v53 = v376 + 56;
  v54 = 1 << *(v376 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = (v55 & *(v376 + 56));
  v378 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
  v57 = (v54 + 63) >> 6;

  v58 = 0;
  v371 = _swiftEmptyArrayStorage;
  v59 = v373;
  while (v56)
  {
    v67 = v56;
LABEL_26:
    v56 = ((v67 - 1) & v67);
    if (*(&v378->super.super.super.isa + v4))
    {
      v379 = ((v67 - 1) & v67);
      v69 = v52;
      v70 = *(*(v52 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v67)))) + 8);

      v380 = v70;
      sub_100033224();
      if (v27)
      {

        sub_100033274();
        swift_errorRetain();
        v71 = sub_100033284();
        v72 = sub_100033EB4();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v389 = v74;
          *v73 = v377;
          *&v394 = v27;
          swift_errorRetain();
          sub_100001A68(&qword_1000456E0, &qword_1000357F8);
          v75 = sub_100033D54();
          v77 = v76;
          v78 = sub_1000045A0(v75, v76, &v389);
          v79 = v77;
          v59 = v373;
          v79, v80, v81, v82, v83, v84, v85, v86;
          *(v73 + 4) = v78;
          v52 = v376;
          _os_log_impl(&_mh_execute_header, v71, v72, "Failed to encode category token: %{public}s", v73, 0xCu);
          sub_100006A74(v74);
          v11 = v381;

          v4 = v383;

          (*v384)(v59, v385);
          v380, v87, v88, v89, v90, v91, v92, v93;
          v27 = 0;
          goto LABEL_30;
        }

        (*v384)(v59, v385);
        v380, v60, v61, v62, v63, v64, v65, v66;
        v27 = 0;
        v56 = v379;
        v52 = v69;
        v4 = v383;
      }

      else
      {
        v370 = 0;

        v94 = v367;
        v95 = v375;
        v96 = sub_100033154();
        v98 = v97;
        (*v366)(v95, v94);
        v380, v99, v100, v101, v102, v103, v104, v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v371 = sub_100018380(0, *v371->hostingViewController + 1, 1, v371, v106, v107, v108, v109);
        }

        v52 = v69;
        v111 = *v371->hostingViewController;
        v110 = *v371->tokenDecoder;
        v4 = v383;
        if (v111 >= v110 >> 1)
        {
          v371 = sub_100018380((v110 > 1), v111 + 1, 1, v371, v106, v107, v108, v109);
        }

        v112 = v371;
        *v371->hostingViewController = v111 + 1;
        v113 = v112 + 16 * v111;
        *(v113 + 4) = v96;
        *(v113 + 5) = v98;
        v11 = v381;
        v27 = v370;
        v59 = v373;
LABEL_30:
        v56 = v379;
      }
    }
  }

  while (1)
  {
    v68 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v68 >= v57)
    {

      v114 = &v382->$__lazy_storage_$_client[16];
      v115 = 1 << v382->tokenEncoder[0];
      v116 = -1;
      if (v115 < 64)
      {
        v116 = ~(-1 << v115);
      }

      v117 = (v116 & *&v382->$__lazy_storage_$_client[16]);
      v378 = OBJC_IVAR___ActivityPickerServiceViewController_tokenEncoder;
      v118 = (v115 + 63) >> 6;

      v119 = 0;
      v375 = _swiftEmptyArrayStorage;
      while (v117)
      {
        v127 = v117;
LABEL_47:
        v117 = ((v127 - 1) & v127);
        if (*(&v378->super.super.super.isa + v4))
        {
          v380 = ((v127 - 1) & v127);
          v129 = *(*&v382->$__lazy_storage_$_client[8] + ((v119 << 10) | (16 * __clz(__rbit64(v127)))) + 8);

          v379 = v129;
          sub_100033234();
          if (v27)
          {

            sub_100033274();
            swift_errorRetain();
            v130 = sub_100033284();
            v131 = sub_100033EB4();

            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v389 = v133;
              *v132 = v377;
              *&v394 = v27;
              swift_errorRetain();
              sub_100001A68(&qword_1000456E0, &qword_1000357F8);
              v134 = sub_100033D54();
              v136 = v135;
              v137 = sub_1000045A0(v134, v135, &v389);
              v138 = v136;
              v52 = v376;
              v138, v139, v140, v141, v142, v143, v144, v145;
              *(v132 + 4) = v137;
              _os_log_impl(&_mh_execute_header, v130, v131, "Failed to encode web domain token: %{public}s", v132, 0xCu);
              sub_100006A74(v133);
              v11 = v381;

              v4 = v383;
            }

            else
            {
            }

            (*v384)(v11, v385);
            v379, v120, v121, v122, v123, v124, v125, v126;
            v27 = 0;
            v117 = v380;
          }

          else
          {

            v146 = v367;
            v147 = v374;
            v148 = sub_100033154();
            v150 = v149;
            (*v366)(v147, v146);
            v379, v151, v152, v153, v154, v155, v156, v157;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v375 = sub_100018380(0, *v375->hostingViewController + 1, 1, v375, v158, v159, v160, v161);
            }

            v163 = *v375->hostingViewController;
            v162 = *v375->tokenDecoder;
            if (v163 >= v162 >> 1)
            {
              v375 = sub_100018380((v162 > 1), v163 + 1, 1, v375, v158, v159, v160, v161);
            }

            v164 = v375;
            *v375->hostingViewController = v163 + 1;
            v165 = v164 + 16 * v163;
            *(v165 + 4) = v148;
            *(v165 + 5) = v150;
            v117 = v380;
            v11 = v381;
            v27 = 0;
            v52 = v376;
          }
        }
      }

      while (1)
      {
        v128 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_69;
        }

        if (v128 >= v118)
        {

          v166 = v369;
          sub_100033274();
          v167 = v372;

          v168 = v368;

          v169 = v371;

          v170 = v375;

          v171 = sub_100033284();
          v172 = sub_100033EA4();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = v382;
            v175 = v168;
            v176 = v173;
            *v173 = 134219264;
            *(v173 + 4) = *v175->hostingViewController;
            v175, v177, v178, v179, v180, v181, v182, v183;
            *(v176 + 12) = 2048;
            *(v176 + 14) = *v167->hostingViewController;
            v167, v184, v185, v186, v187, v188, v189, v190;
            *(v176 + 22) = 2048;
            *(v176 + 24) = *v169->hostingViewController;
            v169, v191, v192, v193, v194, v195, v196, v197;
            *(v176 + 32) = 2048;
            *(v176 + 34) = *(v52 + 16);
            v52, v198, v199, v200, v201, v202, v203, v204;
            *(v176 + 42) = 2048;
            *(v176 + 44) = *v375->hostingViewController;
            v375, v205, v206, v207, v208, v209, v210, v211;
            *(v176 + 52) = 2048;
            v170 = v375;
            *(v176 + 54) = *v174->hostingViewController;
            v212 = v174;
            v166 = v369;
            v212, v213, v214, v215, v216, v217, v218, v219;
            _os_log_impl(&_mh_execute_header, v171, v172, "Tokenized %ld/%ld applications, %ld/%ld categories, %ld/%ld webDomains", v176, 0x3Eu);
            v168 = v175;
          }

          else
          {

            v168, v220, v221, v222, v223, v224, v225, v226;
            v167, v227, v228, v229, v230, v231, v232, v233;
            v169, v234, v235, v236, v237, v238, v239, v240;
            v52, v241, v242, v243, v244, v245, v246, v247;
            v170, v248, v249, v250, v251, v252, v253, v254;
            v382, v255, v256, v257, v258, v259, v260, v261;
          }

          (*v384)(v166, v385);
          v387 = _swiftEmptyArrayStorage;
          v388 = _swiftEmptyArrayStorage;
          v386 = _swiftEmptyArrayStorage;
          sub_1000130D0(&v389);
          v262 = v392;
          v394 = v390;
          sub_10000DC24(&v394, &qword_100045528, qword_1000355B0);
          v393 = v391;
          v263 = sub_10000DC24(&v393, &qword_100045528, qword_1000355B0);
          if (v262)
          {

            sub_100015900(v264);

            sub_100015900(v265);

            v263 = sub_100015900(v266);
          }

          v267 = (*((swift_isaMask & *v4) + 0x128))(v263);
          if (v267)
          {
            v275 = v267;
            isa = sub_100033DE4().super.isa;
            v168, v277, v278, v279, v280, v281, v282, v283;
            v284 = v371;
            v285 = sub_100033DE4().super.isa;
            v284, v286, v287, v288, v289, v290, v291, v292;
            v293 = sub_100033DE4().super.isa;
            v170, v294, v295, v296, v297, v298, v299, v300;
            v301 = v388;
            v302 = sub_100033DE4().super.isa;
            v301, v303, v304, v305, v306, v307, v308, v309;
            v310 = v387;
            v311 = sub_100033DE4().super.isa;
            v310, v312, v313, v314, v315, v316, v317, v318;
            v319 = v386;
            v320 = sub_100033DE4().super.isa;
            v321 = v319;
            v4 = v383;
            v321, v322, v323, v324, v325, v326, v327, v328;
            [v275 didSelectWithApplications:isa categories:v285 webDomains:v293 untokenizedApplications:v302 untokenizedCategories:v311 untokenizedWebDomains:v320];

            v329 = swift_unknownObjectRelease();
          }

          else
          {
            v168, v268, v269, v270, v271, v272, v273, v274;
            v371, v330, v331, v332, v333, v334, v335, v336;
            v170, v337, v338, v339, v340, v341, v342, v343;
            v386, v344, v345, v346, v347, v348, v349, v350;
            v387, v351, v352, v353, v354, v355, v356, v357;
            v388, v358, v359, v360, v361, v362, v363, v364;
          }

          if (((*(**(v4 + OBJC_IVAR___ActivityPickerServiceViewController_viewConfiguration) + 104))(v329) & 1) == 0)
          {
            (*((swift_isaMask & *v4) + 0x150))();
          }

          return;
        }

        v127 = *&v114[8 * v128];
        ++v119;
        if (v127)
        {
          v119 = v128;
          goto LABEL_47;
        }
      }
    }

    v67 = *(v53 + 8 * v68);
    ++v58;
    if (v67)
    {
      v58 = v68;
      goto LABEL_26;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}