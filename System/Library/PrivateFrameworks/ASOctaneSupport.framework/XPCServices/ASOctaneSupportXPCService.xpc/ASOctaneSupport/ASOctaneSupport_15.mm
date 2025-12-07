void sub_100116E2C(uint64_t a1)
{
  if (a1 < 1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000375D4(0, a1, 0);
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  if (v4 >= v3)
  {
    if (v3 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v5 + 16);
    if (v6 < v3 || v6 < v4)
    {
      goto LABEL_18;
    }

LABEL_11:

    sub_100116AC8();
    v8 = _swiftEmptyArrayStorage[2];
    if (a1 - v8 >= 0)
    {
      sub_100116870();

      v1[1] = 0;
      v1[2] = v8;
      *v1 = _swiftEmptyArrayStorage;
      return;
    }

    goto LABEL_14;
  }

  sub_1001134C0(v1[1], *v1);
  sub_100116AC8();
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + 16) >= v4)
  {
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t EventLoopFuture.hop(to:)()
{
  v1 = v0;
  sub_10012F33C();
  if (*(v0 + *(v3 + 96)) == v4)
  {
  }

  else
  {
    v5 = v2;
    swift_getObjectType();
    sub_1000A40D0();
    v11 = EventLoop.makePromise<A>(of:file:line:)(v6, v7, v8, v9, 1379, v10, v6, v5);

    EventLoopFuture.cascade(to:)(v12);

    return v11;
  }

  return v1;
}

uint64_t sub_10011709C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000A41C8();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;

  EventLoopFuture._whenComplete(_:)();
}

uint64_t sub_10011714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v9 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v10 = sub_10012F8DC(v9);
  sub_10012EEF4(v10, *(a5 + 40));

  sub_10012F78C(v11, v12, v13, v14, v15, v16, v17, v18, v20);

  sub_1000D4B60();
  a7();

  return v10;
}

uint64_t sub_1001171E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
  v11 = sub_10012F8DC(v10);
  sub_10012EEF4(v11, *(a5 + 40));
  v12 = swift_unknownObjectRetain();
  sub_10012F78C(v12, v13, v14, v15, v16, v17, v18, v19, v24);

  sub_1000D4B60();
  sub_10012156C(v20, v21, v22, a6, a7);
  swift_unknownObjectRelease();

  return v11;
}

uint64_t CallbackList.firstCallback.getter()
{
  sub_100023584();
  sub_10003742C(v0, v1);
  return sub_10012F960();
}

uint64_t CallbackList.firstCallback.setter()
{
  sub_100037B94();
  result = sub_100037408(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CallbackList.furtherCallbacks.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void CallbackList.append(_:)()
{
  sub_100037B94();
  if (*v1)
  {
    v5 = v1[2];
    v4 = v1 + 2;
    if (v5)
    {
      sub_10004794C();
      v6 = swift_allocObject();
      sub_10012F744(v6);

      sub_100031F78();
      v7 = *(*v4 + 16);
      sub_1000321AC();
      v8 = *v4;
      *(v8 + 16) = v7 + 1;
      v9 = v8 + 16 * v7;
      *(v9 + 32) = sub_10012ED18;
      *(v9 + 40) = v3;
      *v4 = v8;
      return;
    }

    sub_1000183C4(&qword_1002ADBD8, &qword_10020DE60);
    sub_100047958();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001FE9E0;
    sub_10004794C();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v0;
    *(v10 + 32) = sub_10012CDC8;
    *(v10 + 40) = v11;
    *v4 = v10;
  }

  else
  {
    *v1 = v2;
    v1[1] = v0;
  }
}

uint64_t sub_100117468@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void CallbackList._allCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_100023584();
    if (v6)
    {
      sub_100112E54(_swiftEmptyArrayStorage);
      v13[0] = v7;
      v13[1] = v8;
      v13[2] = v9;
      CallbackList.appendAllCallbacks(_:)(v13, v4, v3, a3);
      return;
    }

    sub_1000183C4(&qword_1002ADBD8, &qword_10020DE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    sub_10004794C();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(inited + 32) = sub_10012ED18;
    *(inited + 40) = v12;

    v10 = inited;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_100112E54(v10);
}

void CallbackList.appendAllCallbacks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  sub_1000A3DBC();
  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (v13 < 0 != v12)
    {
      v13 += *(v9 + 16);
    }

    v12 = __OFADD__(v13, 1);
    v14 = v13 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v15 = *(a4 + 16);
      v16 = v14 + v15;
      if (!__OFADD__(v14, v15))
      {
        if (*(v9 + 16) >= v16)
        {
          v27 = sub_100037B7C();
          sub_10003742C(v27, v28);
        }

        else
        {
          v17 = sub_1001062A8(v16);
          v18 = sub_100037B7C();
          sub_10003742C(v18, v19);

          sub_100116E2C(v17);
        }

        sub_10004794C();
        v29 = swift_allocObject();
        *(v29 + 16) = v5;
        *(v29 + 24) = v4;

        v30 = sub_10012F37C();
        sub_10002EEA0(v30, v31);

        sub_100113068(a4);
        v32 = sub_100037B7C();

        sub_100037408(v32, v33);
        return;
      }
    }

    __break(1u);
    return;
  }

  sub_10004794C();
  v20 = swift_allocObject();
  sub_10012F744(v20);
  v21 = sub_100037B7C();
  sub_10003742C(v21, v22);

  v23 = sub_10012F998();
  sub_10002EEA0(v23, v24);
  v25 = sub_100037B7C();
  sub_100037408(v25, v26);
}

Swift::Void __swiftcall CallbackList._run()()
{
  if (!v0)
  {
    return;
  }

  v2 = v0;
  if (v1)
  {
    v3 = sub_100037A2C();
    CallbackList._allCallbacks()(v3, v4, v5);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v168 = v6;
    v169 = v8;
    v170 = v10;
    while (1)
    {
      v12 = v11 - v9;
      if (v11 < v9)
      {
        v12 += *(v7 + 16);
      }

      if (v12 < 1)
      {

        return;
      }

      if (v11 == v9)
      {
        goto LABEL_141;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_143;
      }

      v13 = *(v7 + 16);
      if (v9 >= v13)
      {
        goto LABEL_144;
      }

      v14 = v7 + 16 * v9;
      v15 = *(v14 + 32);
      if (!v15)
      {
        goto LABEL_173;
      }

      if (v11 >= v9)
      {
        v13 = 0;
      }

      if ((v11 - v9 + v13) < 1)
      {
        goto LABEL_145;
      }

      v16 = *(v14 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100111F3C(v7, v17, v18, v19);
      }

      if (v9 >= *(v7 + 16))
      {
        goto LABEL_146;
      }

      v20 = (v7 + 32 + 16 * v9);
      v21 = *v20;
      v22 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      v23 = sub_100037408(v21, v22);
      v24 = (*(v7 + 16) + 0x1FFFFFFFFLL) & (v9 + 1);
      v168 = v7;
      v169 = v24;
      v15(&v165, v23);
      sub_100037408(v15, v16);
      v25 = v165;
      v26 = v167;
      if (!v165)
      {
        break;
      }

      v27 = v166;
      if (v167)
      {
        v28 = v11 - v24;
        if (v11 < v24)
        {
          v28 += *(v7 + 16);
        }

        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          v31 = *(v167 + 16);
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_148;
          }

          if (*(v7 + 16) >= v32)
          {
            v48 = sub_1000DD44C();
            sub_10003742C(v48, v49);

            v33 = v27;
          }

          else
          {
            v33 = v166;
            v34 = sub_1001062A8(v32);
            sub_10003742C(v25, v33);

            sub_100116E2C(v34);
            v7 = v168;
          }

          sub_10004794C();
          v50 = swift_allocObject();
          *(v50 + 16) = v25;
          *(v50 + 24) = v33;
          v51 = v170;
          sub_10003742C(v25, v33);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100111F3C(v7, v52, v53, v54);
          }

          if ((v51 & 0x8000000000000000) == 0)
          {
            if (v51 >= *(v7 + 16))
            {
              goto LABEL_150;
            }

            v55 = v7 + 16 * v51;
            v56 = *(v55 + 32);
            v57 = *(v55 + 40);
            *(v55 + 32) = sub_10012ED18;
            *(v55 + 40) = v50;
            sub_100037408(v56, v57);
            v58 = (*(v7 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v51 + 1);
            v168 = v7;
            v170 = v58;
            if (v169 == v58)
            {
              sub_100113CFC();
            }

            v59 = 0;
            v60 = *(v26 + 16);
            v161 = v26;
            while (1)
            {
              if (v60 == v59)
              {

                v74 = sub_100037A2C();
                sub_100037408(v74, v75);

                v76 = sub_100037A2C();
                sub_100037408(v76, v77);
                v7 = v168;
                goto LABEL_59;
              }

              if (v59 >= *(v26 + 16))
              {
                break;
              }

              v61 = v170;
              v62 = v168;
              v163 = *(v26 + 16 * v59 + 32);
              swift_retain_n();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v62 = sub_100111F3C(v62, v63, v64, v65);
              }

              if ((v61 & 0x8000000000000000) != 0)
              {
                goto LABEL_128;
              }

              if (v61 >= *(v62 + 16))
              {
                goto LABEL_129;
              }

              v66 = (v62 + 32 + 16 * v61);
              v67 = *v66;
              v68 = v66[1];
              *v66 = v163;
              sub_100037408(v67, v68);
              v69 = *(v62 + 16);
              v70 = (v69 + 0x7FFFFFFFFFFFFFFFLL) & (v61 + 1);
              v168 = v62;
              v170 = v70;
              if (v169 == v70)
              {
                v71 = 2 * v69;
                if (2 * v69 < 1)
                {
                  goto LABEL_130;
                }

                v72 = sub_10012F36C();
                sub_1000375D4(v72, v71, 0);
                if (*(v62 + 16) < v70)
                {
                  goto LABEL_131;
                }

                sub_10012EDD0();
                sub_10012F484();
                sub_100116AC8();
                if (*(v62 + 16) < v70)
                {
                  goto LABEL_132;
                }

                sub_10012EDD0();
                sub_10012F484();
                sub_100116AC8();
                v73 = *(v165 + 16);
                if (v71 - v73 < 0)
                {
                  goto LABEL_133;
                }

                sub_10012EDE8();
                sub_10012F1C4();
                sub_100116870();

                v169 = 0;
                v170 = v73;
                v168 = v165;
                v26 = v161;
              }

              else
              {
              }

              ++v59;
            }

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
            goto LABEL_135;
          }

LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      sub_10004794C();
      v35 = swift_allocObject();
      *(v35 + 16) = v25;
      *(v35 + 24) = v27;
      v36 = sub_1000DD44C();
      sub_10003742C(v36, v37);
      v38 = sub_1000DD44C();
      sub_10003742C(v38, v39);

      if (v11 < 0)
      {
        goto LABEL_157;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_158;
      }

      v40 = (v7 + 32 + 16 * v11);
      v41 = *v40;
      v42 = v40[1];
      *v40 = sub_10012ED18;
      v40[1] = v35;
      sub_100037408(v41, v42);
      v43 = *(v7 + 16);
      v168 = v7;
      v170 = (v43 + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (v24 == v170)
      {
        v160 = v27;
        v44 = 2 * v43;
        if (2 * v43 < 1)
        {
          goto LABEL_159;
        }

        v45 = sub_10012F36C();
        sub_1000375D4(v45, v44, 0);
        if (*(v7 + 16) < v24)
        {
          goto LABEL_160;
        }

        sub_10012EDD0();
        sub_10012F484();
        sub_100116AC8();
        if (*(v7 + 16) < v24)
        {
          goto LABEL_161;
        }

        sub_10012EDD0();
        sub_10012F484();
        sub_100116AC8();
        v11 = *(v165 + 16);
        if (v44 - v11 < 0)
        {
          goto LABEL_162;
        }

        sub_10012EDE8();
        sub_10012F1C4();
        sub_100116870();

        sub_100037408(v25, v160);
        v46 = sub_1000DD44C();
        sub_100037408(v46, v47);
        v9 = 0;
        v169 = 0;
        v170 = v11;
        v7 = v165;
        v168 = v165;
      }

      else
      {

        v78 = sub_1000DD44C();
        sub_100037408(v78, v79);
        v80 = sub_1000DD44C();
        sub_100037408(v80, v81);
LABEL_59:
        v9 = v169;
        v11 = v170;
      }
    }

    goto LABEL_59;
  }

  while (1)
  {

    v2 = v2(v82);
    v84 = v83;
    v86 = v85;

    if (!v2)
    {

      return;
    }

    if (v86)
    {
      break;
    }
  }

  v159 = v2;
  v158 = v84;
  CallbackList._allCallbacks()(v2, v84, v86);
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v168 = v87;
  v169 = v89;
  v170 = v91;
  while (1)
  {
    v93 = v92 - v90;
    if (v92 < v90)
    {
      v93 += *(v88 + 16);
    }

    if (v93 < 1)
    {

      sub_100037408(v159, v158);

      return;
    }

    if (v92 == v90)
    {
      goto LABEL_151;
    }

    if ((v90 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v90))
    {
      goto LABEL_153;
    }

    v94 = *(v88 + 16);
    if (v90 >= v94)
    {
      goto LABEL_154;
    }

    v95 = *(v88 + 16 * v90 + 32);
    if (!v95)
    {
      goto LABEL_174;
    }

    if (v92 >= v90)
    {
      v94 = 0;
    }

    if ((v92 - v90 + v94) < 1)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_100111F3C(v88, v96, v97, v98);
    }

    if (v90 >= *(v88 + 16))
    {
      goto LABEL_156;
    }

    v99 = (v88 + 32 + 16 * v90);
    v100 = *v99;
    v101 = v99[1];
    *v99 = 0;
    v99[1] = 0;
    v102 = sub_100037408(v100, v101);
    v103 = (*(v88 + 16) + 0x1FFFFFFFFLL) & (v90 + 1);
    v168 = v88;
    v169 = v103;
    v95(&v165, v102);
    v104 = sub_1000C9970();
    sub_100037408(v104, v105);
    v106 = v165;
    v107 = v167;
    if (!v165)
    {

      goto LABEL_124;
    }

    v108 = v166;
    if (v167)
    {
      v109 = v92 - v103;
      if (v92 < v103)
      {
        v109 += *(v88 + 16);
      }

      v29 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v29)
      {
        goto LABEL_163;
      }

      v111 = *(v167 + 16);
      v112 = v110 + v111;
      if (__OFADD__(v110, v111))
      {
        goto LABEL_164;
      }

      v113 = v166;
      if (*(v88 + 16) >= v112)
      {
        sub_10003742C(v165, v166);
      }

      else
      {
        v114 = sub_1001062A8(v112);
        sub_10003742C(v106, v108);

        sub_100116E2C(v114);
        v88 = v168;
      }

      sub_10004794C();
      v126 = swift_allocObject();
      *(v126 + 16) = v106;
      *(v126 + 24) = v113;
      v127 = v170;
      sub_10003742C(v106, v113);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_100111F3C(v88, v128, v129, v130);
      }

      if ((v127 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v127 >= *(v88 + 16))
      {
        goto LABEL_166;
      }

      v131 = v88 + 16 * v127;
      v132 = *(v131 + 32);
      v133 = *(v131 + 40);
      *(v131 + 32) = sub_10012ED18;
      *(v131 + 40) = v126;
      sub_100037408(v132, v133);
      v134 = (*(v88 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v127 + 1);
      v168 = v88;
      v170 = v134;
      if (v169 == v134)
      {
        sub_100113CFC();
      }

      v135 = 0;
      v136 = *(v107 + 16);
      v162 = v107;
      while (v136 != v135)
      {
        if (v135 >= *(v107 + 16))
        {
          goto LABEL_134;
        }

        v137 = v170;
        v138 = v168;
        v164 = *(v107 + 16 * v135 + 32);
        sub_10012F138();
        swift_retain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_100111F3C(v138, v139, v140, v141);
        }

        if ((v137 & 0x8000000000000000) != 0)
        {
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
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v137 >= *(v138 + 16))
        {
          goto LABEL_136;
        }

        v142 = (v138 + 32 + 16 * v137);
        v143 = *v142;
        v144 = v142[1];
        *v142 = v164;
        sub_100037408(v143, v144);
        v145 = *(v138 + 16);
        v146 = (v145 + 0x7FFFFFFFFFFFFFFFLL) & (v137 + 1);
        v168 = v138;
        v170 = v146;
        if (v169 == v146)
        {
          v147 = 2 * v145;
          if (2 * v145 < 1)
          {
            goto LABEL_137;
          }

          v148 = sub_10012F36C();
          sub_1000375D4(v148, v147, 0);
          if (*(v138 + 16) < v146)
          {
            goto LABEL_138;
          }

          sub_10012EDD0();
          sub_100116AC8();
          if (*(v138 + 16) < v146)
          {
            goto LABEL_139;
          }

          sub_10012EDD0();
          sub_100116AC8();
          v149 = *(v165 + 16);
          if (v147 - v149 < 0)
          {
            goto LABEL_140;
          }

          sub_10012EDE8();
          sub_10012F1C4();
          sub_100116870();

          v169 = 0;
          v170 = v149;
          v168 = v165;
          v107 = v162;
        }

        else
        {
        }

        ++v135;
      }

      v150 = sub_100037A2C();
      sub_100037408(v150, v151);

      v152 = sub_100037A2C();
      sub_100037408(v152, v153);
      v88 = v168;
LABEL_124:
      v90 = v169;
      v92 = v170;
    }

    else
    {
      sub_10004794C();
      v115 = swift_allocObject();
      *(v115 + 16) = v106;
      *(v115 + 24) = v108;
      sub_10003742C(v106, v108);
      sub_10003742C(v106, v108);

      if (v92 < 0)
      {
        goto LABEL_167;
      }

      if (v92 >= *(v88 + 16))
      {
        goto LABEL_168;
      }

      v116 = (v88 + 32 + 16 * v92);
      v117 = *v116;
      v118 = v116[1];
      *v116 = sub_10012ED18;
      v116[1] = v115;
      sub_100037408(v117, v118);
      v119 = *(v88 + 16);
      v168 = v88;
      v170 = (v119 + 0x7FFFFFFFFFFFFFFFLL) & (v92 + 1);
      if (v103 != v170)
      {

        v154 = sub_100037B7C();
        sub_100037408(v154, v155);
        v156 = sub_100037B7C();
        sub_100037408(v156, v157);
        goto LABEL_124;
      }

      v120 = 2 * v119;
      if (2 * v119 < 1)
      {
        goto LABEL_169;
      }

      v121 = sub_10012F36C();
      sub_1000375D4(v121, v120, 0);
      if (*(v88 + 16) < v103)
      {
        goto LABEL_170;
      }

      sub_10012EDD0();
      sub_10012F484();
      sub_100116AC8();
      if (*(v88 + 16) < v103)
      {
        goto LABEL_171;
      }

      sub_10012EDD0();
      sub_10012F484();
      sub_100116AC8();
      v92 = *(v165 + 16);
      if (v120 - v92 < 0)
      {
        goto LABEL_172;
      }

      sub_10012EDE8();
      sub_10012F1C4();
      sub_100116870();

      v122 = sub_10012F960();
      sub_100037408(v122, v123);
      v124 = sub_10012F960();
      sub_100037408(v124, v125);
      v90 = 0;
      v169 = 0;
      v170 = v92;
      v88 = v165;
      v168 = v165;
    }
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
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
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
}

void EventLoopFuture.__allocating_init(_eventLoop:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  sub_10012F50C();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v22 = sub_1001F8158();
  v23 = sub_1001F74B8();
  sub_100056658(v23);
  sub_10001E844();
  __chkstk_darwin(v24);
  sub_100018460(&a9 - v25, 1, 1, v22);
  sub_10012F2E8();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

void EventLoopPromise._resolve(value:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v6 = sub_1001F8158();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  sub_10002E0B8();
  v13 = *(v3 + *(v12 + 96) + 8);
  ObjectType = swift_getObjectType();
  if ((*(v13 + 16))(ObjectType, v13))
  {
    sub_1000DD44C();
    EventLoopPromise._setValue(value:)();
    sub_1000E3198();
    CallbackList._run()();
    v15 = sub_100037A2C();
    sub_100037408(v15, v16);
    sub_100037B00();
  }

  else
  {
    (*(v8 + 16))(v11, v5, v6);
    v18 = *(v8 + 80);
    v24 = v1;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 24) = v3;
    (*(v8 + 32))(v20 + v19, v11, v6);
    v21 = *(v13 + 24);

    v22 = sub_10012F37C();
    v21(v22);

    sub_100037B00();
  }
}

uint64_t sub_100118808()
{
  EventLoopPromise._setValue(value:)();
  v1 = v0;
  v3 = v2;
  CallbackList._run()();
  sub_100037408(v1, v3);
}

void EventLoopFuture._setValue(value:)()
{
  sub_100037C08();
  v1 = v0;
  v2 = sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v4 = sub_10012FB38(v2, v3, v2, &protocol self-conformance witness table for Error);
  v5 = sub_1001F74B8();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v24[-v12];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_10002E0B8();
  v15 = *(v14 + 88);
  sub_100047940();
  swift_beginAccess();
  (*(v7 + 16))(v13, v0 + v15, v5);
  v16 = sub_1000D4AC8();
  v18 = sub_10001C990(v16, v17, v4);
  (*(v7 + 8))(v13, v5);
  _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  if (v18 == 1)
  {
    sub_10007E2C8();
    v19 = sub_100062888();
    v20(v19);
    sub_100018460(v10, 0, 1, v4);
    sub_100050548(v1 + v15, v24);
    sub_10012F98C();
    v21();
    swift_endAccess();
    sub_10002E0B8();
    v23 = (v1 + *(v22 + 104));
    sub_10012F774(v23, v24);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
  }

  sub_100037B00();
}

uint64_t EventLoopFuture._value.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10012F6CC();
  v4 = *(v3 + 88);
  sub_100047940();
  swift_beginAccess();
  sub_10012F6CC();
  v5 = sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10012FB38(v5, v6, v5, &protocol self-conformance witness table for Error);
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  return (*(v7 + 16))(a1, v1 + v4);
}

uint64_t EventLoopFuture._value.setter(uint64_t a1)
{
  sub_10012F6CC();
  v4 = *(v3 + 88);
  sub_100050548(v1 + v4, v9);
  sub_10012F6CC();
  v5 = sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10012FB38(v5, v6, v5, &protocol self-conformance witness table for Error);
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v7 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*EventLoopFuture._value.modify(uint64_t a1))(uint64_t a1)
{
  sub_10002E27C();
  sub_100050548(v1 + *(v3 + 88), a1);
  return j_j__swift_endAccess;
}

uint64_t EventLoopFuture._callbacks.getter()
{
  sub_10002E27C();
  sub_100047940();
  swift_beginAccess();
  v0 = sub_10012F398();
  sub_10003742C(v0, v1);

  return sub_10012F398();
}

uint64_t EventLoopFuture._callbacks.setter()
{
  sub_1000A3DBC();
  v4 = v3;
  sub_10002E27C();
  v6 = (v1 + *(v5 + 104));
  sub_10012F774(v6, v10);
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v2;
  v6[2] = v0;
  sub_100037408(v7, v8);
}

uint64_t (*EventLoopFuture._callbacks.modify(uint64_t a1))(uint64_t a1)
{
  sub_10002E27C();
  sub_100050548(v1 + *(v3 + 104), a1);
  return j__swift_endAccess;
}

uint64_t EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)()
{
  sub_1000A3DBC();
  v1 = swift_allocObject();
  v2 = sub_10005053C();
  EventLoopFuture.init(_eventLoop:value:file:line:)(v2, v3, v0);
  return v1;
}

uint64_t EventLoopFuture.init(_eventLoop:value:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10012F33C();
  v6 = (v3 + *(v5 + 96));
  *v6 = v7;
  v6[1] = v8;
  sub_10002E27C();
  v10 = *(v9 + 88);
  v11 = sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10012FB38(v11, v12, v11, &protocol self-conformance witness table for Error);
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v13 + 32))(v3 + v10, a3);
  sub_10002E27C();
  v15 = (v3 + *(v14 + 104));
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  return v3;
}

void EventLoopFuture.__allocating_init(eventLoop:value:file:line:)()
{
  sub_100037C08();
  v11[1] = v1;
  v3 = v2;
  v4 = *(v0 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v5 = sub_1001F8158();
  sub_10012F9D8();
  v6 = sub_1001F74B8();
  sub_100056658(v6);
  sub_10001E844();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10007E2C8();
  (*(v10 + 32))(v9, v3, v4);
  swift_storeEnumTagMultiPayload();
  sub_100018460(v9, 0, 1, v5);
  sub_10012F2E8();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

void EventLoopFuture.__allocating_init(eventLoop:error:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v24 = sub_1001F8158();
  v25 = sub_1001F74B8();
  sub_100056658(v25);
  sub_10001E844();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  *(&a9 - v27) = v23;
  swift_storeEnumTagMultiPayload();
  sub_100018460(v28, 0, 1, v24);
  sub_10012F490();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

uint64_t EventLoopFuture.deinit()
{
  sub_10012F33C();
  v2 = *(v1 + 88);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v3 + 8))(v0 + v2);
  sub_10002E27C();
  swift_unknownObjectRelease();
  sub_10002E27C();
  sub_100037408(*(v0 + *(v4 + 104)), *(v0 + *(v4 + 104) + 8));

  return v0;
}

uint64_t EventLoopFuture.__deallocating_deinit()
{
  EventLoopFuture.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10011975C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v8)
    {
      return sub_1001D6650(v9, 0, 1);
    }

    var70[0] = v9;
    sub_1000A3B30(v9, 0);
    v11 = a2(var70);
    v12 = *(v11 + 48);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v12) = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {

      v10 = sub_10011CCD0(v15, a4, v11, &unk_10028BA28, sub_1001D6650, sub_10012ECF8, v16, v17, var70[0], var70[1], var70[2], var70[3], var70[4], var70[5], var70[6], var70[7], var70[8], var70[9], var70[10], var70[11], var70[12], var70[13], var70[14], var70[15]);

      sub_10012DF80(v9, v8);
    }

    else
    {
      sub_10002FF54(a4);

      sub_10012DF80(v9, v8);
      return 0;
    }

    return v10;
  }

  return result;
}

uint64_t sub_100119A9C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v8)
    {
      return sub_1001DBFE4(v9, 1);
    }

    var70[0] = v9;
    sub_1000A3B30(v9, 0);
    v11 = a2(var70);
    v12 = *(v11 + 40);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v12) = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {

      v10 = sub_10011AC08(v15, a4, v11, &unk_10028B168, sub_10012DBD0, v16, v17, v18, var70[0], var70[1], var70[2], var70[3], var70[4], var70[5], var70[6], var70[7], var70[8], var70[9], var70[10], var70[11], var70[12], var70[13], var70[14], var70[15]);

      sub_10012DF80(v9, v8);
    }

    else
    {
      sub_10002FEFC(a4);

      sub_10012DF80(v9, v8);
      return 0;
    }

    return v10;
  }

  return result;
}

uint64_t sub_100119C34(char *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v30[1] = a3;
  v31 = a2;
  v6 = *a1;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  v30[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (v30 - v8);
  v10 = *(v6 + 80);
  v32 = *(v10 - 8);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = sub_1001F8158();
  v15 = sub_1001F74B8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v30 - v17);
  v19 = *(v6 + 88);
  swift_beginAccess();
  (*(v16 + 16))(v18, &a1[v19], v15);
  result = sub_10001C990(v18, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v9 = *v18;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v22 = v21;

      (*(v30[0] + 8))(v9, v7);
    }

    else
    {
      v23 = v32;
      (*(v32 + 32))(v13, v18, v10);
      v24 = v31(v13);
      v25 = *(v24 + *(*v24 + 96) + 8);
      ObjectType = swift_getObjectType();
      v27 = *(v25 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v25) = v27(ObjectType, v25);
      swift_unknownObjectRelease();
      if (v25)
      {
        v28 = swift_allocObject();
        v28[2] = v10;
        v28[3] = v33;
        v28[4] = v24;

        EventLoopFuture._addCallback(_:)();
        v22 = v29;

        (*(v23 + 8))(v13, v10);
      }

      else
      {
        EventLoopFuture.cascade(to:)(v33);

        (*(v23 + 8))(v13, v10);
        return 0;
      }
    }

    return v22;
  }

  return result;
}

uint64_t sub_10011A06C()
{
  sub_100023584();
  sub_100047940();
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 != 255)
  {
    return sub_1001DBFE4(*(v0 + 16), v2 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A0C0(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v4 = sub_1001F8158();
  v5 = sub_1001F74B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = *(v3 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v8, &a2[v9], v5);
  result = sub_10001C990(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    EventLoopPromise._setValue(value:)();
    v12 = v11;
    (*(*(v4 - 8) + 8))(v8, v4);
    return v12;
  }

  return result;
}

uint64_t sub_10011A278(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 != 255)
  {
    v11 = *(a2 + 16);

    if (v10)
    {
      sub_10012DCB8(v11, v10);
      a3(v11);
    }

    sub_10012DCD0(v11, v10);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  sub_1000A3FC4();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    sub_100050548(a1 + 48, v21);

    sub_10012F490();
    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_8;
  }

  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_100047940();
  result = swift_beginAccess();
  v17 = *(a3 + 24);
  if (v17 != 255)
  {
    v18 = *(a3 + 16);
    if (v17)
    {
      (a8)(*(a3 + 16), 1);
      sub_10012F56C();

LABEL_10:

      goto LABEL_11;
    }

    sub_10012DCD0(v18, v17);
    sub_100047940();
    swift_beginAccess();
    if ((*(a5 + 16) & 1) == 0)
    {
      v19 = sub_10002E2C0();
      a8(v19);
      sub_10012F56C();
      goto LABEL_10;
    }

    sub_10012F774(a6 + 16, &v20);
    *(a6 + 16) = 0;
LABEL_8:

LABEL_11:

    return sub_10012F96C();
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A720(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_6:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 != 255)
  {

    if ((v10 & 1) == 0)
    {
      a3(v11);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012ED88;
  v11[4] = v10;
  v11[5] = a3;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v12 = 0;
  }

  else
  {
    swift_retain_n();

    v12 = sub_100119308(a2, a3, a4);
  }

  return v12;
}

uint64_t sub_10011AA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v11 = 0;
  }

  else
  {

    v11 = sub_10011948C(a2, a3, a4, a5);
  }

  return v11;
}

uint64_t sub_10011AD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100047958();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = sub_1000732B8;
  v6[5] = 0;
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    sub_100050548(a1 + 48, v16);

    CallbackList.append(_:)();
    swift_endAccess();

LABEL_8:

    return sub_10012F398();
  }

  sub_100047940();
  result = swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8 != 255)
  {
    v9 = *(a2 + 16);

    v10 = sub_10012F2E8();
    if (v8)
    {
      sub_10012DCB8(v10, v11);
      sub_1000732B8(v9);
      v12 = sub_10002E2C0();
      sub_1001DBFE4(v12, v13);
      sub_1000A40F4();
      v14 = sub_10012F2E8();
      sub_10012DCD0(v14, v15);
    }

    else
    {
      sub_10012DCD0(v10, v11);
      sub_1001DBFE4(v9, 0);
      sub_1000A40F4();
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011AF28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v19 = 0;
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v12 = *(a3 + 24);
  if (v12 != 255)
  {
    v13 = *(a3 + 16);

    sub_10012DCB8(v13, v12);
    v14 = sub_100113934(a4, a5, v13, v12 & 1);
    v16 = v15;
    v18 = v17;
    sub_10012DCD0(v13, v12);
    v19 = sub_1001D6650(v14, v16, v18 & 1);
    sub_1000373FC(v14, v16, v18 & 1);
LABEL_5:

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012ED34;
  v11[4] = v10;
  v11[5] = a3;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v14 = 0;
LABEL_8:

    return v14;
  }

  swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 != 255)
  {
    v13 = *(a2 + 16);
    if (v12)
    {
      v14 = sub_1001DBFE4(*(a2 + 16), 1);
    }

    else
    {
      swift_retain_n();

      v15 = sub_10012DCD0(v13, v12);
      a4(v15);
      v14 = sub_1001DBFE4(0, 0);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B510(uint64_t a1, uint64_t a2, _OWORD *a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 79) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v11 = 0;
LABEL_5:

    return v11;
  }

  result = swift_beginAccess();
  v13 = a3[3];
  v21 = a3[4];
  v14 = a3[2];
  v20[0] = a3[1];
  v20[1] = v14;
  v20[2] = v13;
  if (HIBYTE(v21) != 255)
  {
    v15 = a3[2];
    v22[0] = a3[1];
    v22[1] = v15;
    v16 = a3[4];
    v22[2] = a3[3];
    v22[3] = v16;

    sub_1000ACFAC();
    v17 = sub_100113818(a4);
    v19 = v18;
    sub_1000374B8(v20, &qword_1002B4688, &qword_10020E0C0);
    v11 = sub_1001DBFE4(v17, v19 & 1);
    sub_1000374AC(v17, v19 & 1);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B74C(uint64_t (*a1)(uint64_t))
{
  swift_getObjectType();
  debugOnly(_:)();
  v3 = swift_beginAccess();
  if (*(v1 + 79) != 255)
  {
    return a1(v3);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10011B824(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 32);
  if (v10 != 255)
  {
    if (v10)
    {
    }

    else
    {
      v12 = *(a2 + 24);
      v13[0] = *(a2 + 16);
      v11 = v13[0];
      v13[1] = v12;

      sub_10012E484(v13[0], v12, v10);
      a3(v13);
      sub_10012E49C(v11, v12, v10);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B9D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t *), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 25) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v11 = 0;
LABEL_8:

    return v11;
  }

  result = swift_beginAccess();
  v13 = *(a3 + 24);
  if (v13 >> 8 <= 0xFE)
  {
    v14 = *(a3 + 16);
    v15 = v13 & 0x100;
    if ((v13 & 0x100) != 0)
    {

      sub_10012E674(v14, v13);
      v16 = 0;
    }

    else
    {
      v20 = *(a3 + 16);
      v21 = v13;

      v17 = sub_10012E674(v14, v13);
      (a4)(v19, &v20, v17);
      v15 = v13 & 0x100;
      sub_10012E698(v14, v13);
      v14 = v19[0];
      v16 = v19[1];
    }

    v18 = v15 != 0;
    v11 = sub_1001D65F0(v14, v16, v15 >> 8);
    sub_100037420(v14, v16, v18);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011BC18(uint64_t (*a1)(uint64_t))
{
  swift_getObjectType();
  debugOnly(_:)();
  v3 = swift_beginAccess();
  if (*(v1 + 25) != 255)
  {
    return a1(v3);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10011BCF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v17 = 0;
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v12 = *(a3 + 24);
  if (v12 != 255)
  {
    v13 = *(a3 + 16);

    sub_10012DCB8(v13, v12);
    v14 = sub_1001138E8(a4, a5, v13, v12 & 1);
    v16 = v15;
    sub_10012DCD0(v13, v12);
    v17 = sub_1001DBFE4(v14, v16 & 1);
    sub_1000374AC(v14, v16 & 1);
LABEL_5:

    return v17;
  }

  __break(1u);
  return result;
}

void sub_10011BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a6;
  sub_10012F27C();
  v10 = v9;
  sub_10012F6A8(v11, v9, v12, v13, v14);
  sub_1000A41C8();
  v15 = swift_allocObject();
  sub_10012F87C(v15);
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v16)
  {
    sub_100050548(v7 + 48, v19);

    sub_100062888();
    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  sub_10012F6F0();
  if (!v16)
  {

    sub_10012DCB8(v6, v8);
    v10(&v17);
    sub_1000374AC(v17, v18);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    return;
  }

  __break(1u);
}

void sub_10011C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10012F27C();
  v10 = v9;
  sub_10012F6A8(v11, v9, v12, v13, v14);
  sub_1000A41C8();
  v15 = swift_allocObject();
  sub_10012F87C(v15);
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v16)
  {
    sub_100050548(v7 + 48, v21);

    sub_100062888();
    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  sub_10012F6F0();
  if (!v16)
  {

    sub_10012DF54(v6, a6);
    v10(&v20);
    sub_10012EEDC();
    sub_10012E88C(v17, v18, v19);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    return;
  }

  __break(1u);
}

void sub_10011C258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_10012FA14();
  a30 = v32;
  a31 = v33;
  v35 = v34;
  v37 = v36;
  sub_10012F27C();
  v39 = v38;
  v41 = v40;
  sub_1000A41C8();
  v42 = swift_allocObject();
  sub_10012F58C(v42);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  if (*(v41 + 32) == 255)
  {
    sub_100050548(v41 + 56, &a14);

    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  v43 = *(v31 + 24);
  v44 = *(v31 + 32);
  a10 = *(v31 + 16);
  a11 = v43;
  a12 = v44;
  if (v44 != 255)
  {

    v45 = sub_10012F96C();
    v37(v45);
    v39(&a10);
    v35(a10, a11, a12);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    sub_10012F9F8();
    return;
  }

  __break(1u);
}

uint64_t sub_10011C3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = sub_10012ECD4;
  v9[5] = v8;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v13 = 0;
LABEL_8:

    return v13;
  }

  swift_beginAccess();
  v10 = *(a2 + 32);
  if (v10 != 255)
  {
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    if (v10)
    {

      sub_10012DB28(v11, v12, v10);
      sub_10019DE1C(v4);
      swift_willThrow();
      v13 = sub_1001D6650(v11, v12, 1);
      sub_10012DB40(v11, v12, v10);
    }

    else
    {
      v13 = sub_1001D6650(*(a2 + 16), *(a2 + 24), 0);
    }

    goto LABEL_8;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10011C628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v9 = 0;
  }

  else
  {

    v9 = sub_1001275E0(a2, a3, a4);
  }

  return v9;
}

uint64_t sub_10011C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = sub_10012ED0C;
  v13[5] = v12;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    swift_unknownObjectRetain();

    CallbackList.append(_:)();
    swift_endAccess();

    v14 = 0;
  }

  else
  {
    swift_retain_n();
    swift_unknownObjectRetain_n();

    v14 = sub_100123A3C(a2, a3, a4, a5);
  }

  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_10011C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = sub_10012ED84;
  v11[5] = v10;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();

    CallbackList.append(_:)();
    swift_endAccess();

    v12 = 0;
  }

  else
  {
    swift_unknownObjectRetain_n();

    v12 = sub_100123E64(a2, a3, a4);
  }

  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_10011CDF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 32);
  if (v10 != 255)
  {
    if (v10)
    {
      v11 = *(a2 + 16);
      v12 = *(a2 + 24);

      sub_10012DB28(v11, v12, v10);
      a3(v11);
      sub_10012DB40(v11, v12, v10);
    }

    else
    {
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CFA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1000A41C8();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    sub_100050548(a1 + 56, v14);

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  sub_100047940();
  result = swift_beginAccess();
  v10 = *(a2 + 32);
  if (v10 != 255)
  {
    if (v10)
    {
    }

    else
    {
      v12 = *(a2 + 24);
      v13[0] = *(a2 + 16);
      v11 = v13[0];
      v13[1] = v12;

      sub_10012DB28(v13[0], v12, v10);
      a3(v13);
      sub_10012DB40(v11, v12, v10);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D12C()
{
  sub_100037B94();
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  v2 = swift_beginAccess();
  if (*(v0 + 32) != 255)
  {
    return v1(v2);
  }

  sub_10012F21C(v0 + 56, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_100037B7C();
  CallbackList.append(_:)();
  swift_endAccess();
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

uint64_t sub_10011D1DC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 39) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_5:

    return 0;
  }

  result = swift_beginAccess();
  v10 = a4[2];
  v11 = a4[3];
  v12 = a4[4];
  v13 = v10;
  v14 = v11;
  v15 = v12;
  if (HIBYTE(v12) != 255)
  {

    sub_10012E830(v10, v11, v12);
    a2(&v13);
    sub_1000A3A2C(v13, v14, v15 | ((WORD2(v15) | (BYTE6(v15) << 16)) << 32), SHIBYTE(v15));
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D38C(uint64_t (*a1)(uint64_t))
{
  swift_getObjectType();
  debugOnly(_:)();
  v3 = swift_beginAccess();
  if (*(v1 + 39) != 255)
  {
    return a1(v3);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10011D574(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 != 255)
  {
    if (v10)
    {
      v11 = *(a2 + 16);

      sub_10012DF54(v11, v10);
      a3(v11);
      sub_10012DF80(v11, v10);
    }

    else
    {
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D718(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v10 = *(a2 + 24);
  if (v10 != 255)
  {
    if (v10)
    {
    }

    else
    {
      v12 = *(a2 + 16);
      v11 = v12;

      sub_10012DF54(v12, v10);
      a3(&v12);
      sub_10012DF80(v11, v10);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D8C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, double), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v14 = 0;
LABEL_8:

    return v14;
  }

  result = swift_beginAccess();
  v12 = *(a3 + 24);
  if (v12 != 255)
  {
    v13 = *(a3 + 16);
    if (v12)
    {

      sub_10012DA88(v13, v12);
    }

    else
    {
      v16 = *(a3 + 16);

      v15 = sub_10012DA88(v13, v12);
      a4(&v16, v15);
      sub_10012DAA0(v13, v12);
      v13 = 0;
    }

    v14 = sub_1001DBFE4(v13, v12 & 1);
    sub_1000374AC(v13, v12 & 1);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011DAD8()
{
  sub_100037B94();
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  v2 = swift_beginAccess();
  if (*(v0 + 24) != 255)
  {
    return v1(v2);
  }

  sub_10012F21C(v0 + 48, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_100037B7C();
  CallbackList.append(_:)();
  swift_endAccess();
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

void EventLoopFuture._addCallback(_:)()
{
  sub_100037C08();
  v4 = v0;
  sub_100037B94();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  sub_10012F52C();
  v5 = sub_1001F74B8();
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  sub_10005DBB4();
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)();
  v9 = *(*v0 + 88);
  sub_100047940();
  swift_beginAccess();
  (*(v7 + 16))(v3, v4 + v9, v5);
  v10 = sub_1000D4AC8();
  LODWORD(v9) = sub_10001C990(v10, v11, v2);
  v12 = (*(v7 + 8))(v3, v5);
  if (v9 == 1)
  {
    sub_100050548(v4 + *(*v4 + 104), &v13);
    sub_100037B7C();
    CallbackList.append(_:)();
    swift_endAccess();
    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  else
  {
    v1(v12);
  }

  sub_100037B00();
}

uint64_t sub_10011DD5C()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011A278(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011DE78()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011BEE0(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_10011E218()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011A720(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  v22 = a4;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012E948;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  v23 = a1;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);

  v24 = a3;
  v15 = ObjectType;

  if (v14(ObjectType, v12))
  {

    v16 = sub_10011A890(v23, a2, v24, v22, a5);
    v18 = v17;

    CallbackList._run()();
    sub_100037408(v16, v18);
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = v23;
    v19[3] = sub_10012ED5C;
    v19[4] = v11;
    v20 = *(v12 + 24);

    v20(sub_10012ED8C, v19, v15, v12);
  }
}

uint64_t sub_10011E57C()
{
  sub_1000A4080();
  v5 = v4;
  v7 = v6;
  sub_10012EF34();
  sub_100047958();
  v8 = swift_allocObject();
  v9 = sub_10012F254(v8);
  v19 = v0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  v10 = sub_10012FB68();
  v11 = *(v3 + 16);

  if (v11(v10, v3))
  {

    v12 = sub_100062888();
    sub_10011AA74(v12, v13, v19, v7, v5);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = sub_10012DB9C;
    v14[4] = v1;
    v15 = *(v3 + 24);

    v16 = sub_1000A4174();
    v15(v16);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011E708()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011AF28(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011E9A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  v22 = a4;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012DB64;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  v23 = a1;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);

  v24 = a3;
  v15 = ObjectType;

  if (v14(ObjectType, v12))
  {

    v16 = sub_10011B124(v23, a2, v24, v22, a5);
    v18 = v17;

    CallbackList._run()();
    sub_100037408(v16, v18);
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = v23;
    v19[3] = sub_10012DB90;
    v19[4] = v11;
    v20 = *(v12 + 24);

    v20(sub_10012ED8C, v19, v15, v12);
  }
}

uint64_t sub_10011F070()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  swift_getObjectType();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011B510(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  sub_10012F4FC();
  v16 = v15;
  v64 = v18;
  v65 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v14;
  *(v21 + 32) = v13;
  *(v21 + 40) = v12;
  v56 = v12;
  *(v21 + 48) = a8;
  *(v21 + 56) = a9;
  LODWORD(v54) = a10;
  *(v21 + 64) = a10;
  *(v21 + 72) = a11;
  *(v21 + 80) = a12;
  sub_100047958();
  v22 = swift_allocObject();
  v22[2] = v65;
  v22[3] = v64;
  v22[4] = sub_10012E500;
  v22[5] = v21;
  v23 = *(v20 + 48);
  v60 = v20;
  ObjectType = swift_getObjectType();
  v58 = *(v23 + 16);

  v61 = v13;

  if ((v58(ObjectType, v23) & 1) == 0)
  {
    sub_1000A41C8();
    v39 = swift_allocObject();
    v39[2] = v20;
    v39[3] = sub_10012E504;
    v39[4] = v22;
    v40 = *(v23 + 24);

    v41 = sub_10012F37C();
    v40(v41);

LABEL_13:
  }

  v59 = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = v14;
  *(v25 + 32) = v13;
  *(v25 + 40) = v56;
  *(v25 + 48) = a8;
  *(v25 + 56) = a9;
  *(v25 + 64) = a10;
  *(v25 + 72) = a11;
  *(v25 + 80) = a12;
  sub_100047958();
  v26 = swift_allocObject();
  v26[2] = v65;
  v26[3] = v64;
  v26[4] = sub_10012ED24;
  v26[5] = v25;
  sub_10012EE14();
  debugOnly(_:)();
  sub_100047940();
  swift_beginAccess();
  if (*(v60 + 32) == 255)
  {
    sub_100050548(v60 + 56, v66);
    sub_10012F1D0();
    swift_retain_n();
    swift_retain_n();
    sub_10012F138();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1000A41D4();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1000A3FAC();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();

    CallbackList.append(_:)();
    swift_endAccess();

    v42 = 0;
    v43 = 0;
LABEL_12:

    CallbackList._run()();
    sub_100037408(v42, v43);

    goto LABEL_13;
  }

  v53 = v26;
  sub_100047940();
  result = swift_beginAccess();
  v28 = *(v65 + 32);
  if (v28 != 255)
  {
    if (v28)
    {
      v29 = *(v65 + 16);
      v51 = *(v65 + 24);
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      HIDWORD(v49) = v28;
      sub_10012E484(v29, v51, v28);
      v47 = v29;
      ChannelHandlerContext.fireErrorCaught(_:)();
      v30 = sub_10010FC80(a4, v13, v56, a8, a9, a10, a11, a12);
      v31 = *(v30 + 48);
      v32 = swift_getObjectType();
      v33 = *(v31 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v31) = v33(v32, v31);
      swift_unknownObjectRelease();
      if (v31)
      {

        v37 = sub_10011CCD0(v34, v64, v30, &unk_10028C068, sub_1001D65F0, sub_10012E604, v35, v36, v46, v47, v49, v51, v53, v54, v56, v59, a11, v60, v61, v21, v14, a9, a12, a4);
        v55 = v38;
        v57 = v37;

        sub_10012E49C(v48, v52, v50);
      }

      else
      {
        sub_10002FF28(v64);
        sub_10012E49C(v47, v51, v28);

        v55 = 0;
        v57 = 0;
      }
    }

    else
    {
      v44 = sub_1001D65F0(*(v65 + 16), *(v65 + 24), 0);
      v55 = v45;
      v57 = v44;
      sub_10012F138();
      swift_bridgeObjectRetain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_10012F1D0();
      swift_retain_n();
      sub_1000A3FAC();
      swift_retain_n();
    }

    v43 = v55;
    v42 = v57;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011FAE0()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011B824(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011FBFC()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011B9D4(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011FD30()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011BCF0(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_1001200D0()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011BEE0(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_100120368()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011C128(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_10012049C()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011C128(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_100120B40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = sub_10012DED4;
  v9[5] = v8;
  v10 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);

  if (v12(ObjectType, v10))
  {

    v13 = sub_10011C3AC(a1, a2, a3, a4);
    v15 = v14;

    CallbackList._run()();
    sub_100037408(v13, v15);
  }

  else
  {
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = sub_10012DEF0;
    v16[4] = v9;
    v18 = *(v10 + 24);

    v18(sub_10012ED94, v16, ObjectType, v10);
  }
}

uint64_t sub_100120D54()
{
  sub_1000A4080();
  v2 = v1;
  sub_10012EF34();
  sub_1000A41C8();
  v3 = swift_allocObject();
  *(sub_10012F254(v3) + 32) = v2;
  swift_getObjectType();
  sub_10012F1A4();

  v4 = sub_100062234();
  if (v0(v4))
  {

    v5 = sub_10012EFCC();
    sub_10011C628(v5, v6, v7, v2);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012F1F4(v8);

    v9 = sub_10012F18C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_1001210E8()
{
  sub_10001A1F0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10012F59C();
  sub_1000A41C8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v4;
  sub_100047958();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v2;
  v10[4] = sub_10012DFCC;
  v10[5] = v9;
  v11 = *(v0 + 48);
  v20 = v0;
  ObjectType = swift_getObjectType();
  v19 = *(v11 + 16);

  swift_unknownObjectRetain();

  if (v19(ObjectType, v11))
  {

    swift_unknownObjectRetain();

    sub_10011C7B4(v0, v1, v2, v8, v6, v4);
    sub_10012F56C();

    sub_10012F96C();
    CallbackList._run()();
    v13 = sub_10012F96C();
    sub_100037408(v13, v14);
  }

  else
  {
    sub_1000A41C8();
    v15 = swift_allocObject();
    v15[2] = v20;
    v15[3] = sub_10012ED6C;
    v15[4] = v10;
    v16 = *(v11 + 24);

    v16(sub_10012ED94, v15, ObjectType, v11);
  }

  swift_unknownObjectRelease();

  sub_10001A1D4();
}

uint64_t sub_10012156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v22 = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = sub_10012DF30;
  v11[5] = v10;
  v12 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  v24 = a4;
  v15 = a3;
  v16 = ObjectType;
  swift_unknownObjectRetain();

  if (v14(v16, v12))
  {
    swift_unknownObjectRetain();

    v17 = sub_10011C9C0(a1, a2, v15, v24, v22);
    v19 = v18;

    CallbackList._run()();
    sub_100037408(v17, v19);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = sub_10012ED6C;
    v20[4] = v11;
    v23 = *(v12 + 24);

    v23(sub_10012ED94, v20, v16, v12);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1001219F8()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011CFA0(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100121B14()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011CDF4(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100121C30()
{
  sub_100037C08();
  sub_10012F27C();
  v4 = v3;
  v6 = v5;
  sub_1000A41C8();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v1;
  v7[4] = v0;
  sub_10012FB20();
  sub_10012F044();

  v8 = sub_10012F2E8();
  if ((v2)(v8))
  {

    sub_10011D1DC(v6, v4, v1, v0);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012EE24();
    v2(v10);
  }

  sub_100037B00();
}

uint64_t sub_100121F5C()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011D718(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100122078()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011D574(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100122194()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011D8C0(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t EventLoopFuture._whenComplete(_:)()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  sub_10002E27C();
  v6 = *(v0 + *(v5 + 96) + 8);
  swift_getObjectType();
  sub_10012F1B4();
  if (v7())
  {
    EventLoopFuture._addCallback(_:)();
    sub_1000E3198();
    CallbackList._run()();
    v8 = sub_100037A2C();
    sub_100037408(v8, v9);
    sub_100037A50();
  }

  else
  {
    sub_1000A41C8();
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = v4;
    v12[4] = v2;
    v13 = *(v6 + 24);

    v14 = sub_10012F1E8();
    v13(v14);
    sub_100037A50();
  }
}

__n128 *sub_10012240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, __n128 *, uint64_t, uint64_t, uint64_t))
{
  sub_10012F4FC();
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  sub_10012F1DC();
  v12 = swift_allocObject();
  sub_10012F094(v12, v10[2]);

  sub_10012F78C(v13, v14, v15, v16, v17, v18, v19, v20, v23);

  a8(v21, v10, v12, v9, v8);

  return v12;
}

void sub_1001224EC()
{
  sub_100037AEC();
  sub_10012EFF0();
  sub_10002E27C();
  v10 = EventLoopPromise.init(eventLoop:file:line:)(*(v0 + *(v4 + 96)), *(v0 + *(v4 + 96) + 8), v5, v6, v7, v8, v9);
  sub_1000A3FC4();
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v0;
  v11[4] = v3;
  v11[5] = v2;
  v11[6] = v10;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  sub_100037A50();
}

uint64_t sub_100122598(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = sub_10012DCD0(v6, v5);
      a2(v8);
      v6 = 0;
      v7 = 0;
    }

    return sub_1001DBFE4(v6, v7);
  }

  return result;
}

uint64_t sub_100122670(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v34 = a3;
  v35 = a2;
  v7 = *a1;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v8 = sub_1001F8158();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = (&v32 - v9);
  v33 = a5;
  v32 = *(a5 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v7 + 80);
  v36 = *(v14 - 8);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_1001F8158();
  v19 = sub_1001F74B8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v32 - v21);
  v23 = *(v7 + 88);
  swift_beginAccess();
  (*(v20 + 16))(v22, &a1[v23], v19);
  result = sub_10001C990(v22, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v10 = *v22;
      v25 = v39;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v27 = v26;

      (*(v38 + 8))(v10, v25);
    }

    else
    {
      v28 = v36;
      (*(v36 + 32))(v17, v22, v14);
      v35(v17);
      v29 = v32;
      (*(v32 + 16))(v10, v13, v33);
      v30 = v39;
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v27 = v31;
      (*(v38 + 8))(v10, v30);
      (*(v29 + 8))(v13, v33);
      (*(v28 + 8))(v17, v14);
    }

    return v27;
  }

  return result;
}

uint64_t sub_100122AFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100047940();
  result = swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    if (v6)
    {
      sub_1000477E8(v7, 1);
      a3(v7);
      v8 = sub_10002E2C0();
      sub_1001DBFE4(v8, v9);
      sub_10012F170();
      v10 = sub_10007B9A4();
      sub_10012DCD0(v10, v11);
    }

    else
    {
      sub_10012DCD0(v7, *(a1 + 24));
      sub_1001DBFE4(v7, 0);
      sub_10012F170();
    }

    return sub_10012F398();
  }

  return result;
}

uint64_t sub_100122BF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  v6 = *(a1 + 32);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if ((v6 & 1) == 0)
    {
      return sub_1001D6650(*(a1 + 16), *(a1 + 24), 0);
    }

    sub_1000A339C(*(a1 + 16), *(a1 + 24), 1);
    a3(v10, v8);
    v9 = sub_1001D6650(v10[0], v10[1], 0);
    sub_10012DB40(v8, v7, v6);
    swift_unknownObjectRelease();
    return v9;
  }

  return result;
}

uint64_t sub_100122D3C(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  v16 = sub_1001F74B8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v26 - v18);
  v20 = *(v5 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v19, &a1[v20], v16);
  result = sub_10001C990(v19, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v27;
      v29(*v19);
      (*(v10 + 16))(v9, v22, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v25 = v24;

      (*(v31 + 8))(v9, v7);
      (*(v10 + 8))(v22, v6);
    }

    else
    {
      (*(v10 + 32))(v15, v19, v6);
      (*(v10 + 16))(v9, v15, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v25 = v23;
      (*(v31 + 8))(v9, v7);
      (*(v10 + 8))(v15, v6);
    }

    return v25;
  }

  return result;
}

uint64_t sub_100123160(uint64_t a1, _OWORD *a2, void (*a3)(_BYTE *))
{
  result = swift_beginAccess();
  v6 = a2[2];
  v12[0] = a2[1];
  v12[1] = v6;
  v7 = a2[4];
  v12[2] = a2[3];
  v12[3] = v7;
  if (HIBYTE(v7) == 255)
  {
    __break(1u);
  }

  else
  {
    sub_1000ACFAC();
    v8 = sub_100113818(a3);
    v10 = v9;
    sub_1000374B8(v12, &qword_1002B4688, &qword_10020E0C0);
    v11 = sub_1001DBFE4(v8, v10 & 1);
    sub_1000374AC(v8, v10 & 1);
    return v11;
  }

  return result;
}

uint64_t sub_100123270(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *))
{
  result = swift_beginAccess();
  v6 = *(a2 + 24);
  if (v6 >> 8 > 0xFE)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 16);
    v8 = v6 & 0x100;
    if ((v6 & 0x100) != 0)
    {
      sub_10012E68C(v7, v6, 1);
      v9 = 0;
    }

    else
    {
      v13 = v7;
      v14 = v6;
      v10 = sub_10012E674(v7, v6);
      (a3)(v12, &v13, v10);
      sub_10012E698(v7, v6);
      v7 = v12[0];
      v9 = v12[1];
    }

    v11 = sub_1001D65F0(v7, v9, v8 >> 8);
    sub_100037420(v7, v9, v8 != 0);
    return v11;
  }

  return result;
}

uint64_t sub_100123378(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    sub_1000477E8(v9, v8 & 1);
    v10 = sub_1001138E8(a3, a4, v9, v8 & 1);
    v12 = v11;
    sub_10012DCD0(v9, v8);
    v13 = sub_1001DBFE4(v10, v12 & 1);
    sub_1000374AC(v10, v12 & 1);
    return v13;
  }

  return result;
}

uint64_t sub_100123448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    sub_1000477E8(v9, v8 & 1);
    v10 = sub_100113934(a3, a4, v9, v8 & 1);
    v12 = v11;
    v14 = v13;
    sub_10012DCD0(v9, v8);
    v15 = sub_1001D6650(v10, v12, v14 & 1);
    sub_1000373FC(v10, v12, v14 & 1);
    return v15;
  }

  return result;
}

uint64_t sub_100123524(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, double))
{
  result = swift_beginAccess();
  v6 = *(a2 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v6)
    {
      sub_1000A37F0(v7, 1);
    }

    else
    {
      v10 = v7;
      v8 = sub_10012DA88(v7, v6);
      a3(&v10, v8);
      sub_10012DAA0(v7, v6);
      v7 = 0;
    }

    v9 = sub_1001DBFE4(v7, v6 & 1);
    sub_1000374AC(v7, v6 & 1);
    return v9;
  }

  return result;
}

uint64_t sub_100123604(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v27 = a1;
  v7 = *a2;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v8 = sub_1001F8158();
  v9 = sub_1001F74B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_1001F8158();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = *(v7 + 88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v17], v9);
  result = sub_10001C990(v12, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000A118C(v25, v26, v8, a5, v19, v20, v21, v22, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    (*(*(v8 - 8) + 8))(v12, v8);
    EventLoopPromise._setValue(value:)();
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    return v24;
  }

  return result;
}

uint64_t sub_100123884(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a1 + 32);
  if (v7 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if ((v7 & 1) == 0)
    {
      return sub_1001D65F0(v9, v8, 0);
    }

    sub_1000A386C(v9, v8, 1);
    v10 = a3(v9);
    v11 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v11) = v13(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v11)
    {

      v17 = sub_10011CCD0(v14, a2, v10, &unk_10028C068, sub_1001D65F0, sub_10012E604, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);

      sub_10012E49C(v9, v8, v7);
    }

    else
    {
      sub_10002FF28(a2);
      sub_10012E49C(v9, v8, v7);

      return 0;
    }

    return v17;
  }

  return result;
}

uint64_t sub_100123A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (v8 == 255)
  {
    swift_unknownObjectRelease();

    __break(1u);
  }

  else
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8)
    {
      sub_10012DB28(*(a1 + 16), *(a1 + 24), *(a1 + 32));
      sub_100178858(v10, 2, 0);
      swift_getObjectType();
      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
      v23 = a4;
      v11 = EventLoop.makeFailedFuture<A>(_:file:line:)(v10);
      v22 = a3;
      v12 = *(v11 + 48);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, v12);
      swift_unknownObjectRelease();
      if (v15)
      {

        v19 = sub_10011CCD0(v16, a2, v11, &unk_10028B618, sub_1001D6650, sub_10012DE44, v17, v18, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);

        sub_10012DB40(v10, v9, v8);
      }

      else
      {
        sub_10002FF54(a2);
        sub_10012DB40(v10, v9, v8);

        v19 = 0;
      }
    }

    else
    {
      v19 = sub_1001D6650(*(a1 + 16), *(a1 + 24), 0);
    }

    swift_unknownObjectRelease();
    return v19;
  }

  return result;
}

uint64_t sub_100123C88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_100047940();
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (v8 != 255)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8)
    {
      v11 = sub_10007B9BC();
      sub_10012DB28(v11, v12, v8);
      v13 = sub_10012F738();
      a4(v13);
      v14 = *(a3 + 48);
      v15 = sub_1000183C4(&qword_1002B46D8, &qword_100210E70);
      v16 = sub_10012F8DC(v15);
      *(v16 + 40) = v14;
      *(v16 + 48) = &protocol witness table for SelectableEventLoop;
      *(v16 + 16) = v10;
      *(v16 + 24) = v9;
      *(v16 + 32) = v8;
      *(v16 + 64) = 0;
      *(v16 + 72) = 0;
      *(v16 + 56) = 0;

      v17 = sub_10007B9BC();
      sub_10012DB28(v17, v18, v8);
      type metadata accessor for SelectableEventLoop();

      sub_1000701E4();
      v19 = j___s25ASOctaneSupportXPCService19SelectableEventLoopC02ineF0Sbvg();

      if ((v19 & 1) == 0)
      {
        sub_10002FF54(a2);
        v29 = sub_10007B9BC();
        sub_10012DB40(v29, v30, v8);

        return sub_10012F180();
      }

      sub_10012F2A0();
      sub_10011CCD0(v20, a2, v16, v21, v22, sub_10012DE44, v23, v24, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, vars0, vars8);
      sub_10012F144();

      v25 = sub_10007B9BC();
      sub_10012DB40(v25, v26, v8);
    }

    else
    {
      v27 = sub_10007B9BC();
      sub_1001D6650(v27, v28, 0);
      sub_10012F144();
    }

    return sub_10012F180();
  }

  __break(1u);
  return result;
}

uint64_t sub_100123E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5 != 255)
  {
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    if (v5)
    {
      v17 = a2;
      swift_getObjectType();
      sub_1000183C4(&qword_1002ADD50, &unk_10020E140);
      v8 = EventLoop.makeFailedFuture<A>(_:file:line:)(v7);
      v9 = *(v8 + 48);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 16);
      sub_10012DB28(v7, v6, v5);
      swift_unknownObjectRetain();
      LOBYTE(v9) = v11(ObjectType, v9);
      swift_unknownObjectRelease();
      if ((v9 & 1) == 0)
      {
        sub_10002FF54(v17);
        sub_10012DB40(v7, v6, v5);
        swift_unknownObjectRelease();

        return 0;
      }

      v15 = sub_10011CCD0(v12, v17, v8, &unk_10028B618, sub_1001D6650, sub_10012DE44, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);

      sub_10012DB40(v7, v6, v5);
    }

    else
    {
      v15 = sub_1001D6650(v7, v6, 0);
    }

    swift_unknownObjectRelease();
    return v15;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10012407C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a1 + 32);
  if (v7 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if ((v7 & 1) == 0)
    {
      return sub_1001D6650(v9, v8, 0);
    }

    sub_1000A339C(v9, v8, 1);
    v10 = a3(v9);
    v11 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v11) = v13(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v11)
    {

      v17 = sub_10011CCD0(v14, a2, v10, &unk_10028B618, sub_1001D6650, sub_10012DE44, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);

      sub_10012DB40(v9, v8, v7);
    }

    else
    {
      sub_10002FF54(a2);
      sub_10012DB40(v9, v8, v7);

      return 0;
    }

    return v17;
  }

  return result;
}

uint64_t sub_100124234(char *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v28[1] = a4;
  v29 = a3;
  v31 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v28 - v8;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = sub_1001F74B8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v28 - v16);
  v18 = *(v5 + 88);
  swift_beginAccess();
  (*(v15 + 16))(v17, &a1[v18], v14);
  result = sub_10001C990(v17, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v29(*v17);
      v21 = *(v20 + *(*v20 + 96) + 8);
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v21) = v23(ObjectType, v21);
      swift_unknownObjectRelease();
      if (v21)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v31;
        *(v24 + 24) = v20;

        EventLoopFuture._addCallback(_:)();
        v26 = v25;
      }

      else
      {
        EventLoopFuture.cascade(to:)(v31);

        return 0;
      }
    }

    else
    {
      (*(v10 + 32))(v13, v17, v6);
      (*(v10 + 16))(v9, v13, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v26 = v27;
      (*(v30 + 8))(v9, v7);
      (*(v10 + 8))(v13, v6);
    }

    return v26;
  }

  return result;
}

uint64_t sub_100124644()
{
  sub_1000A3DBC();
  sub_100047940();
  result = swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 != 255)
  {
    return v0(*(v1 + 16), *(v1 + 24), v3 & 1);
  }

  __break(1u);
  return result;
}

void EventLoopFuture.flatMapResult<A, B>(file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100037C08();
  sub_10012EFF0();
  sub_10002E27C();
  v32 = EventLoopPromise.init(eventLoop:file:line:)(*(v22 + *(v26 + 96)), *(v22 + *(v26 + 96) + 8), v27, v28, v29, v30, v31);
  sub_10012F1DC();
  v33 = swift_allocObject();
  v33[2] = v23;
  v33[3] = v21;
  v33[4] = a21;
  v33[5] = v22;
  v33[6] = v25;
  v33[7] = v24;
  v33[8] = v32;
  swift_unknownObjectRetain();

  sub_1000A4174();
  EventLoopFuture._whenComplete(_:)();

  sub_100037B00();
}

uint64_t sub_100124768(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a4;
  v64 = a3;
  v65 = a2;
  v11 = *a1;
  v62 = *(a6 - 8);
  __chkstk_darwin(a1);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v56 - v14;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v15 = sub_1001F8158();
  v69 = *(v15 - 8);
  v70 = v15;
  __chkstk_darwin(v15);
  v58 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = (&v56 - v18);
  v57 = *(a5 - 8);
  __chkstk_darwin(v20);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a6;
  v60 = a7;
  v22 = sub_1001F8158();
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  v67 = *(*(v11 + 80) - 8);
  __chkstk_darwin(v25);
  v66 = &v56 - v26;
  v68 = v27;
  v28 = sub_1001F8158();
  v29 = sub_1001F74B8();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = (&v56 - v31);
  v33 = *(v11 + 88);
  swift_beginAccess();
  (*(v30 + 16))(v32, &a1[v33], v29);
  result = sub_10001C990(v32, 1, v28);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v19 = *v32;
      v35 = v70;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v37 = v36;

      (*(v69 + 8))(v19, v35);
    }

    else
    {
      v39 = v66;
      v38 = v67;
      v40 = v68;
      (*(v67 + 32))(v66, v32, v68);
      v65(v39);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v61;
        v41 = v62;
        v43 = *(v62 + 32);
        v44 = v63;
        v43(v61, v24, v63);
        v45 = v59;
        (*(v41 + 16))(v59, v42, v44);
        v46 = sub_1001F7E58();
        if (v46)
        {
          v47 = v46;
          (*(v41 + 8))(v45, v44);
        }

        else
        {
          v47 = swift_allocError();
          v43(v52, v45, v44);
        }

        v53 = v58;
        *v58 = v47;
        v54 = v70;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v37 = v55;
        (*(v69 + 8))(v53, v54);
        (*(v41 + 8))(v42, v44);
        (*(v67 + 8))(v66, v40);
      }

      else
      {
        v48 = v56;
        v49 = v57;
        (*(v57 + 32))(v56, v24, a5);
        (*(v49 + 16))(v19, v48, a5);
        v50 = v70;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v37 = v51;
        (*(v69 + 8))(v19, v50);
        (*(v49 + 8))(v48, a5);
        (*(v38 + 8))(v39, v68);
      }
    }

    return v37;
  }

  return result;
}

__n128 *sub_100124E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, uint64_t a6, void (*a7)(void))
{
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  sub_10012F1DC();
  v9 = swift_allocObject();
  sub_10012F094(v9, a5[2]);

  sub_10012F78C(v10, v11, v12, v13, v14, v15, v16, v17, v19);

  sub_1000D4B60();
  a7();

  return v9;
}

void sub_100124F04()
{
  sub_100037AEC();
  sub_10012EFF0();
  sub_10012F33C();
  v9 = EventLoopPromise.init(eventLoop:file:line:)(*(v0 + *(v3 + 96)), *(v0 + *(v3 + 96) + 8), v5, v6, v7, v8, *(v4 + 80));
  sub_100047958();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v9;
  v10[4] = v2;
  v10[5] = v1;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  sub_100037A50();
}

uint64_t sub_100124FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {

    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      swift_beginAccess();
      *(a3 + 248) = v6;
      sub_10012DCB8(v6, v5);
      swift_errorRetain();

      v7 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v6, v5);
    }

    else
    {
      sub_10012DCD0(v6, v5);
      v7 = sub_1001DBFE4(v6, 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1001250C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {

    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      swift_beginAccess();
      *(a3 + 240) = v6;
      sub_10012DCB8(v6, v5);
      swift_errorRetain();

      v7 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v6, v5);
    }

    else
    {
      sub_10012DCD0(v6, v5);
      v7 = sub_1001DBFE4(v6, 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1001251D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    if (v6)
    {
      sub_1000477E8(v7, 1);
      a3(v7);
      v8 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v7, v6);
    }

    else
    {
      sub_10012DCD0(v7, v6);
      return sub_1001DBFE4(v7, 0);
    }

    return v8;
  }

  return result;
}

uint64_t sub_1001252B8(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v24[1] = a4;
  v25 = a3;
  v26 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  v14 = sub_1001F74B8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v24 - v16);
  v18 = *(v5 + 88);
  swift_beginAccess();
  (*(v15 + 16))(v17, &a1[v18], v14);
  result = sub_10001C990(v17, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25(*v17);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v21 = v20;

      (*(v27 + 8))(v9, v7);
    }

    else
    {
      v22 = v10;
      (*(v10 + 32))(v13, v17, v6);
      (*(v10 + 16))(v9, v13, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v21 = v23;
      (*(v27 + 8))(v9, v7);
      (*(v22 + 8))(v13, v6);
    }

    return v21;
  }

  return result;
}

uint64_t sub_100125638(uint64_t a1, uint64_t a2)
{
  v2 = sub_10012F948(a1, a2);
  v4(v2, v3);
  sub_1000E3198();
  CallbackList._run()();
  v5 = sub_100037A2C();
  sub_100037408(v5, v6);
}

uint64_t sub_100125694(uint64_t a1, uint64_t a2)
{
  v2 = sub_10012F948(a1, a2);
  v4(v2, v3);
  sub_1000E3198();
  CallbackList._run()();
  v5 = sub_100037A2C();
  sub_100037408(v5, v6);
}

uint64_t sub_100125708(char *a1, void (*a2)(char *), uint64_t a3)
{
  v18 = a3;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = *(v6 - 8);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  v16 = *(v5 + 88);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a1[v16], v8);
  result = sub_10001C990(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(v7 - 8) + 8))(v11, v7);
    }

    else
    {
      (*(v12 + 32))(v15, v11, v6);
      a2(v15);
      (*(v12 + 8))(v15, v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10012597C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      sub_1000477E8(v6, 1);
      a2(v6);
    }

    sub_10012DCD0(v6, v5);
    return 0;
  }

  return result;
}

uint64_t sub_100125A10(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 16);
      sub_1000A3B30(v6, 1);
      a2(v6);
      sub_10012DF80(v6, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125AA4(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      sub_1000A339C(v7, v6, 1);
      a2(v7);
      sub_10012DB40(v7, v6, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125B48(char *a1, void (*a2)(void))
{
  v4 = *a1;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v5 = sub_1001F8158();
  v6 = sub_1001F74B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v12 - v8);
  v10 = *(v4 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v9, &a1[v10], v6);
  result = sub_10001C990(v9, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a2(*v9);
    }

    else
    {
      (*(*(v5 - 8) + 8))(v9, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125D2C(void (*a1)(uint64_t *))
{
  sub_100047940();
  swift_beginAccess();
  result = sub_10012F720();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000477E8(result, v3 & 1);
    a1(&v5);
    sub_1000374AC(v5, v6);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125DA4(void (*a1)(uint64_t *))
{
  sub_100047940();
  swift_beginAccess();
  result = sub_10012F720();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000A3B30(result, v3 & 1);
    a1(&v8);
    sub_10012EEDC();
    sub_10012E88C(v5, v6, v7);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125E20(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t, void))
{
  sub_100047940();
  swift_beginAccess();
  result = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = result;
  v13 = v10;
  v14 = v11;
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    a4();
    a1(&v12);
    a5(v12, v13, v14);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125EC0(void (*a1)(uint64_t *), uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = result;
  v9 = v6;
  v10 = v7;
  if (HIBYTE(v7) == 255)
  {
    __break(1u);
  }

  else
  {
    sub_1000A3A44(result, v6, v7, HIBYTE(v7) & 1);
    a1(&v8);
    sub_1000A3A2C(v8, v9, v10 | ((WORD2(v10) | (BYTE6(v10) << 16)) << 32), SHIBYTE(v10));
    return 0;
  }

  return result;
}

uint64_t sub_100125F6C(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = *a3;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v6 = sub_1001F8158();
  v7 = sub_1001F74B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v5 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v10, &a3[v11], v7);
  result = sub_10001C990(v10, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1(v10);
    (*(*(v6 - 8) + 8))(v10, v6);
    return 0;
  }

  return result;
}

void EventLoopFuture.and<A>(_:file:line:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = (v0 + *(*v0 + 96));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(*v0 + 80);
  v16 = *(*v10 + 80);
  sub_10012F9D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = EventLoopPromise.init(eventLoop:file:line:)(v13, v14, v9, v7, v5, v3, TupleTypeMetadata2);
  sub_10012F9D8();
  sub_1001F74B8();
  v19 = swift_allocBox();
  v21 = sub_10012F57C(v19, v20);
  sub_100018460(v21, v22, v23, v15);
  sub_1001F74B8();
  v24 = swift_allocBox();
  v26 = sub_10012F57C(v24, v25);
  sub_100018460(v26, v27, v28, v16);
  sub_1000A3FC4();
  v29 = swift_allocObject();
  v29[2] = v16;
  v29[3] = v1;
  v29[4] = v18;
  v29[5] = v24;
  v29[6] = v19;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  EventLoopFuture.hop(to:)();
  sub_1000A3FC4();
  v30 = swift_allocObject();
  v30[2] = v1;
  v30[3] = v11;
  v30[4] = v18;
  v30[5] = v19;
  v30[6] = v24;

  sub_1000A4168();
  EventLoopFuture._whenComplete(_:)();

  sub_100037B00();
}

uint64_t sub_100126328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  sub_100047940();
  result = swift_beginAccess();
  v12 = *(a1 + 24);
  if (v12 == 255)
  {
    __break(1u);
  }

  else
  {
    v13 = *(a1 + 16);
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      a6(v13);
      sub_100047940();
      swift_beginAccess();
      if (*(a3 + 16))
      {
        sub_10012F774(a4 + 16, v15);
        result = _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        *(a4 + 16) = 0;
        return result;
      }

      v13 = sub_10002E2C0();
    }

    return a5(v13, v14);
  }

  return result;
}

uint64_t sub_1001263E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a4;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = sub_1001F74B8();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v45 - v10;
  v11 = sub_1001F74B8();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v52 = &v45 - v12;
  v48 = *(a5 - 8);
  __chkstk_darwin(v13);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *(v8 - 8);
  __chkstk_darwin(v15);
  v58 = &v45 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v46 = TupleTypeMetadata2;
  v18 = sub_1001F8158();
  v56 = *(v18 - 8);
  v57 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v21 = sub_1001F8158();
  v22 = sub_1001F74B8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  swift_projectBox();
  v60 = swift_projectBox();
  v26 = *(v7 + 88);
  swift_beginAccess();
  (*(v23 + 16))(v25, &a1[v26], v22);
  result = sub_10001C990(v25, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v20 = *v25;
      v28 = v57;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v30 = v29;

      (*(v56 + 8))(v20, v28);
    }

    else
    {
      v31 = v55;
      v32 = *(v55 + 32);
      v33 = v58;
      v32(v58, v25, v8);
      swift_beginAccess();
      v34 = v53;
      v35 = v52;
      v36 = v54;
      (*(v53 + 16))();
      if (sub_10001C990(v35, 1, a5) == 1)
      {
        (*(v34 + 8))(v35, v36);
        v37 = v49;
        v32(v49, v33, v8);
        sub_100018460(v37, 0, 1, v8);
        v38 = v60;
        swift_beginAccess();
        (*(v50 + 40))(v38, v37, v51);
        return 0;
      }

      else
      {
        v39 = v48;
        v40 = v35;
        v41 = v47;
        (*(v48 + 32))(v47, v40, a5);
        v42 = *(v46 + 48);
        (*(v31 + 16))(v20, v33, v8);
        (*(v39 + 16))(&v20[v42], v41, a5);
        v43 = v57;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v30 = v44;
        (*(v56 + 8))(v20, v43);
        (*(v39 + 8))(v41, a5);
        (*(v31 + 8))(v58, v8);
      }
    }

    return v30;
  }

  return result;
}

uint64_t sub_100126A70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a3;
  v60 = a5;
  v6 = *a1;
  v7 = *(*a2 + 80);
  v8 = sub_1001F74B8();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = &v45 - v9;
  v10 = *(v6 + 80);
  v11 = sub_1001F74B8();
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v45 - v12;
  v47 = *(v10 - 8);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  v54 = *(v7 - 8);
  __chkstk_darwin(v15);
  v58 = &v45 - v16;
  v55 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v45 = TupleTypeMetadata2;
  v18 = sub_1001F8158();
  v56 = *(v18 - 8);
  v57 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  v21 = sub_1001F8158();
  v22 = sub_1001F74B8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  swift_projectBox();
  v60 = swift_projectBox();
  swift_getObjectType();
  debugOnly(_:)();
  v26 = *(*a2 + 88);
  swift_beginAccess();
  (*(v23 + 16))(v25, a2 + v26, v22);
  result = sub_10001C990(v25, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v20 = *v25;
      v28 = v57;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v30 = v29;

      (*(v56 + 8))(v20, v28);
    }

    else
    {
      v31 = v54;
      v32 = *(v54 + 32);
      v33 = v58;
      v32(v58, v25, v7);
      swift_beginAccess();
      v34 = v52;
      v35 = v51;
      v36 = v53;
      (*(v52 + 16))();
      v37 = v55;
      if (sub_10001C990(v35, 1, v55) == 1)
      {
        (*(v34 + 8))(v35, v36);
        v38 = v48;
        v32(v48, v33, v7);
        sub_100018460(v38, 0, 1, v7);
        v39 = v60;
        swift_beginAccess();
        (*(v49 + 40))(v39, v38, v50);
        return 0;
      }

      else
      {
        v40 = v47;
        v41 = v46;
        (*(v47 + 32))(v46, v35, v37);
        v42 = *(v45 + 48);
        (*(v40 + 16))(v20, v41, v37);
        (*(v31 + 16))(&v20[v42], v33, v7);
        v43 = v57;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v30 = v44;
        (*(v56 + 8))(v20, v43);
        (*(v40 + 8))(v41, v37);
        (*(v31 + 8))(v58, v7);
      }
    }

    return v30;
  }

  return result;
}

void EventLoopFuture.and<A>(value:file:line:)()
{
  sub_100037C08();
  sub_10012F50C();
  sub_10002DFFC();
  __chkstk_darwin(v0);
  type metadata accessor for EventLoopFuture(0, v3, v1, v2);
  sub_10002E0B8();
  v4 = sub_100062234();
  v5(v4);
  EventLoopFuture.__allocating_init(eventLoop:value:file:line:)();
  swift_unknownObjectRetain();
  sub_1000A40D0();
  EventLoopFuture.and<A>(_:file:line:)();

  sub_100037B00();
}

uint64_t sub_1001272A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v9 = sub_1001F8158();
  v10 = __chkstk_darwin(v9);
  v12 = (&v15 - v11);
  (*(v13 + 16))(&v15 - v11, a1, v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    EventLoopPromise.fail(_:)(*v12, a2, a3);
  }

  else
  {
    (*(v6 + 32))(v8, v12, a3);
    EventLoopPromise.succeed(_:)(v8, a2, a3);
    return (*(v6 + 8))(v8, a3);
  }
}

uint64_t sub_1001274BC(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (result)
  {
    v7 = result;
    v8 = *v4;
    sub_10004794C();
    v9 = swift_allocObject();
    *(v9 + 16) = *(v8 + 80);
    *(v9 + 24) = v7;
    sub_1000A41D4();
    swift_retain_n();
    a4(a3, v9);
  }

  return result;
}

uint64_t sub_1001275E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  LOBYTE(a3) = *(a3 + 32);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  v9 = *(a2 + 32);
  *(a2 + 32) = a3;
  sub_10012DB28(v5, v6, a3);
  sub_10012DB40(v7, v8, v9);
  sub_1001278EC(1);
  return 0;
}

uint64_t sub_1001276A8()
{
  sub_1000A3DBC();
  Lock.lock()();
  sub_100047940();
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_10012F774(v1 + 16, &v7);
  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
  v5 = *(v1 + 24);
  *(v1 + 24) = v3;
  sub_10012DCB8(v2, v3);
  sub_10012DCD0(v4, v5);
  sub_1001278EC(1);
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

uint64_t sub_100127748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  v4 = sub_1001F74B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  v8 = swift_projectBox();
  Lock.lock()();
  v9 = *(*a3 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v7, a3 + v9, v4);
  swift_beginAccess();
  (*(v5 + 40))(v8, v7, v4);
  sub_1001278EC(1);
  return 0;
}

uint64_t sub_1001278EC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 16) = a1;
  Lock.unlock()();
  result = pthread_cond_broadcast(*(v2 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100127948(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  Lock.lock()();
  sub_100047940();
  result = swift_beginAccess();
  while (*(v2 + 16) != a1)
  {
    result = pthread_cond_wait(*(v2 + 32), *(v4 + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

void EventLoopFuture.fold<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100037C08();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = *(v12 + *(*v12 + 96) + 8);
  ObjectType = swift_getObjectType();
  if ((*(v21 + 16))(ObjectType, v21))
  {
    sub_100062888();
    sub_100037B00();

    sub_100127B40(v23, v24, v25, v26, v27);
  }

  else
  {
    sub_1000A40D0();
    v33 = EventLoop.makePromise<A>(of:file:line:)(v29, v30, v31, v32, 981, ObjectType, v29, v21);
    sub_1000DFBD8();
    v34 = swift_allocObject();
    v34[2] = v14;
    v34[3] = v20;
    v34[4] = v12;
    v34[5] = v18;
    v34[6] = v16;
    v34[7] = v33;
    v35 = *(v21 + 24);

    v35(sub_10012D130, v34, ObjectType, v21);

    sub_100037B00();
  }
}

uint64_t sub_100127B40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  type metadata accessor for EventLoopFuture(255, a5, a3, a4);
  sub_1001F6FC8();
  type metadata accessor for EventLoopFuture(0, *(v5 + 80), v6, v7);
  swift_getWitnessTable();
  sub_1001F6E68();
  return v9;
}

uint64_t sub_100127C18@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  EventLoopFuture.and<A>(_:file:line:)();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v12 = *(v10 + 80);

  EventLoopFuture.flatMap<A>(file:line:_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 967, sub_10012E464, v11, v12);
  v14 = v13;

  *a5 = v14;
  return result;
}

uint64_t sub_100127D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a3;
  v7 = *(*a2 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v24 - v9;
  v11 = *(a5 - 8);
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v24 - v18;
  (*(v20 + 16))(v10, a1, TupleTypeMetadata2, v17);
  v21 = *(TupleTypeMetadata2 + 48);
  (*(v15 + 32))(v19, v10, v7);
  (*(v11 + 32))(v14, &v10[v21], a5);
  swift_getObjectType();
  debugOnly(_:)();
  v22 = v25(v19, v14);
  (*(v11 + 8))(v14, a5);
  (*(v15 + 8))(v19, v7);
  return v22;
}

uint64_t sub_100127FD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100127B40(a1, a2, a3, a4, a6);
  EventLoopFuture.cascade(to:)(a5);
}

uint64_t sub_100128104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  a5(a1, a2);
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v15 = v14;
  (*(v11 + 8))(v13, a7);
  return v15;
}

void sub_1001284B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = swift_projectBox();
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  a5(v9, a2);
  swift_endAccess();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
}

uint64_t sub_1001285A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_getObjectType();
  debugOnly(_:)();
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, a5);
  EventLoopPromise.succeed(_:)(v9, a3, a5);
  return (*(v7 + 8))(v9, a5);
}

uint64_t sub_10012871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  debugOnly(_:)();

  return EventLoopPromise.fail(_:)(a1, a4, a5);
}

uint64_t static EventLoopFuture.andAllSucceed(_:promise:)()
{
  sub_100037AEC();
  sub_10012F810(v2, v3);
  sub_10012F1B4();
  if (v4())
  {
    sub_10012F3D4();
    *(swift_allocObject() + 16) = *(v0 + 80);
    sub_10005053C();
    sub_10012F934();
    static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)();
  }

  else
  {
    sub_1000A3FC4();
    v5 = swift_allocObject();
    sub_10012F458(v5);

    swift_unknownObjectRetain();
    v6 = sub_1000A4168();
    v1(v6);
  }

  sub_100037A50();
}

uint64_t sub_10012888C()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001288E4()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100128958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10012F7C8(a1, a2, a3);
  sub_10002E170();
  v99 = v3;
  v100 = v4;
  debugOnly(_:)();
  sub_10012F3D4();
  v9 = swift_allocObject();
  v10 = sub_10001A07C();
  *(v9 + 16) = v10;
  if (!v10)
  {
    sub_1000A13F8(0, 0, v8);
    sub_10012F68C();

    return;
  }

  sub_10013B560();
  sub_10012F5D4();
  sub_10012F9E4();
  sub_10012F978();
  while (1)
  {
    if (v103 == v6)
    {
      goto LABEL_55;
    }

    if (v102)
    {
      v11 = sub_1001F7808();
    }

    else
    {
      if (v6 >= *(v101 + 16))
      {
        goto LABEL_57;
      }

      v11 = *(v7 + v6 + 4);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v12 = *(v11 + 40);
    swift_getObjectType();
    sub_10012F8A0();
    v13 = (v11)(ObjectType, v12);
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0 || (sub_100047940(), swift_beginAccess(), v13 = *(v105 + 24), v13 == 255))
    {
      ObjectType = sub_100150924(v100, v99);
      sub_1000A3FC4();
      v17 = swift_allocObject();
      sub_10012F238(v17)[6] = v6;
      sub_1000A41C8();
      v18 = swift_allocObject();
      sub_10012FA48(v18);
      sub_10012F5AC();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      if (v7(v6, v13))
      {
        sub_1000A3FC4();
        v19 = swift_allocObject();
        sub_10012F238(v19)[6] = v104;
        sub_1000A41C8();
        v20 = swift_allocObject();
        v20[2] = sub_10012ED28;
        v20[3] = v19;
        v20[4] = ObjectType;
        sub_10012EE14();
        debugOnly(_:)();
        sub_100047940();
        swift_beginAccess();
        v21 = *(ObjectType + 24);
        if (v21 == 255)
        {
          sub_100050548(ObjectType + 48, v106);
          if (*(ObjectType + 48))
          {
            v6 = v104;
            if (*(ObjectType + 64))
            {
              sub_10004794C();
              v31 = swift_allocObject();
              sub_10012F2D0(v31);
              v32 = *(ObjectType + 64);
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(ObjectType + 64) = v32;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10012F714();
                sub_100032AAC(v63, v64, v65, v66);
                v32 = v67;
                *(ObjectType + 64) = v67;
              }

              v34 = *(v32 + 16);
              v6 = v34 + 1;
              if (v34 >= *(v32 + 24) >> 1)
              {
                sub_10012F714();
                sub_100032AAC(v68, v69, v70, v71);
                v32 = v72;
              }

              *(v32 + 16) = v6;
              sub_10012F6B4(v32 + 16 * v34);
            }

            else
            {
              sub_1000183C4(&qword_1002ADBD8, &qword_10020DE60);
              sub_100047958();
              v57 = swift_allocObject();
              *(v57 + 16) = v94;
              sub_10004794C();
              v58 = swift_allocObject();
              v59 = sub_10012F2D0(v58);
              *(v57 + 32) = sub_10012ED18;
              *(v57 + 40) = v59;
              *(ObjectType + 64) = v57;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();
            }
          }

          else
          {
            *(ObjectType + 48) = sub_10012EDB0;
            *(ObjectType + 56) = v20;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();

            v6 = v104;
          }

          swift_endAccess();
        }

        else
        {
          v22 = *(ObjectType + 16);

          if (v21)
          {
            sub_10012F7A4();
            sub_10012F34C();
            v95 = v23;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();
            sub_10012FB00();

            v24 = sub_1000DD44C();
            sub_10012DCB8(v24, v25);
            v26 = sub_10012F908();
            if (v95(v26))
            {
              sub_1001DBFE4(v17, 1);
              sub_10012F144();
              CallbackList._run()();
              v27 = sub_10012F180();
              sub_100037408(v27, v28);
            }

            else
            {
              v106[0] = 1;
              sub_1000A40C4();
              v45 = swift_allocObject();
              *(v45 + 16) = v8;
              *(v45 + 24) = v17;
              sub_10012F388(v45);
              v9 += 24;

              v46 = sub_1000DD44C();
              sub_10012DCB8(v46, v47);
              v48 = sub_10012F49C();
              v49(v48);
            }

            sub_10012F42C(v17);
            sub_10012FB50();
            sub_10012F4B8();
          }

          else
          {
            sub_10012F320();
            if (v16)
            {
              goto LABEL_59;
            }

            *v42 = v41;
            if (v41)
            {
              sub_10012F138();
              swift_retain_n();

              sub_10012F0EC();
              swift_retain_n();

              sub_10012F42C(v22);
              sub_10012F4B8();
            }

            else
            {
              v6 = *(v8 + 40);
              swift_getObjectType();
              sub_10012F34C();
              v96 = v50;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              v51 = sub_10012F908();
              if (v96(v51))
              {
                v52 = sub_10002E2C0();
                sub_1001DBFE4(v52, v53);
                sub_1000A40F4();
                v6 = v54;
                CallbackList._run()();
                v55 = sub_10012F398();
                sub_100037408(v55, v56);
              }

              else
              {
                v106[0] = 0;
                sub_1000A40C4();
                v60 = swift_allocObject();
                *(v60 + 16) = v8;
                *(v60 + 24) = 0;
                sub_10012F388(v60);
                v61 = *(v9 + 24);
                v9 += 24;

                v62 = sub_10012F9A4();
                v61(v62);
              }

              sub_10012F42C(v22);
              sub_10012FB50();
              sub_10012F4B8();
            }
          }
        }

        _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        CallbackList._run()();
        sub_100037408(0, 0);
      }

      else
      {
        sub_1000A41C8();
        v29 = swift_allocObject();
        sub_10012F64C(v29);

        v30 = sub_1000A4174();
        (v9)(v30);
        v9 = v8;
        v8 = v97;

        v6 = v104;
      }

      sub_10012F0EC();

      sub_10012F138();

      sub_10012F1D0();

      v7 = v98;
    }

    else
    {
      if (v13)
      {
        v74 = *(v105 + 16);
        v75 = *(v8 + 40);
        swift_getObjectType();
        sub_10012F53C();
        v76 = sub_10007B9A4();
        sub_10012DCB8(v76, v77);
        v78 = sub_10012F928();
        sub_1000477E8(v78, v79);
        v80 = sub_1000C9970();
        if ((v7)(v80))
        {
          v81 = sub_10012F928();
          sub_1001DBFE4(v81, v82);
          sub_10012F170();
          CallbackList._run()();

          v83 = sub_10012F398();
          sub_100037408(v83, v84);
        }

        else
        {
          v106[0] = 1;
          sub_1000A40C4();
          v85 = swift_allocObject();
          *(v85 + 16) = v8;
          *(v85 + 24) = v74;
          sub_10012F3A4(v85);
          v86 = *(v75 + 24);
          v87 = sub_10007B9A4();
          sub_10012DCB8(v87, v88);

          v89 = sub_10012F1E8();
          v86(v89);
        }

        v90 = sub_10007B9A4();
        sub_10012DCD0(v90, v91);
        v92 = sub_10007B9A4();
        sub_10012DCD0(v92, v93);
LABEL_55:

        sub_10012F68C();
        return;
      }

      sub_10012F320();
      if (v16)
      {
        goto LABEL_58;
      }

      *v15 = v14;
      if (!v14)
      {
        ObjectType = swift_getObjectType();
        sub_10012F1B4();
        if (v35())
        {
          v36 = sub_10002E2C0();
          sub_1001DBFE4(v36, v37);
          sub_1000E3198();
          ObjectType = v38;
          CallbackList._run()();

          v39 = sub_100037A2C();
          sub_100037408(v39, v40);

          goto LABEL_45;
        }

        v106[0] = 0;
        sub_1000A40C4();
        v43 = swift_allocObject();
        *(v43 + 16) = v8;
        *(v43 + 24) = 0;
        sub_10012F3A4(v43);
        sub_10012FA88();
        v44 = sub_10012F37C();
        (v6)(v44);
        v6 = v105;
      }
    }

LABEL_45:
    ++v6;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1001292EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10012F7C8(a1, a2, a3);
  sub_10002E170();
  v99 = v3;
  v100 = v4;
  debugOnly(_:)();
  sub_10012F3D4();
  v9 = swift_allocObject();
  v10 = sub_10001A07C();
  *(v9 + 16) = v10;
  if (!v10)
  {
    sub_1000A13F8(0, 0, v8);
    sub_10012F68C();

    return;
  }

  sub_10013B560();
  sub_10012F5D4();
  sub_10012F9E4();
  sub_10012F978();
  while (1)
  {
    if (v103 == v6)
    {
      goto LABEL_55;
    }

    if (v102)
    {
      v11 = sub_1001F7808();
    }

    else
    {
      if (v6 >= *(v101 + 16))
      {
        goto LABEL_57;
      }

      v11 = *(v7 + v6 + 4);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v12 = *(v11 + 40);
    swift_getObjectType();
    sub_10012F8A0();
    v13 = (v11)(ObjectType, v12);
    swift_unknownObjectRelease();
    if ((v13 & 1) == 0 || (sub_100047940(), swift_beginAccess(), v13 = *(v105 + 24), v13 == 255))
    {
      ObjectType = sub_100150924(v100, v99);
      sub_1000A3FC4();
      v17 = swift_allocObject();
      sub_10012F238(v17)[6] = v6;
      sub_1000A41C8();
      v18 = swift_allocObject();
      sub_10012FA48(v18);
      sub_10012F5AC();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      if (v7(v6, v13))
      {
        sub_1000A3FC4();
        v19 = swift_allocObject();
        sub_10012F238(v19)[6] = v104;
        sub_1000A41C8();
        v20 = swift_allocObject();
        v20[2] = sub_10012ED28;
        v20[3] = v19;
        v20[4] = ObjectType;
        sub_10012EE14();
        debugOnly(_:)();
        sub_100047940();
        swift_beginAccess();
        v21 = *(ObjectType + 24);
        if (v21 == 255)
        {
          sub_100050548(ObjectType + 48, v106);
          if (*(ObjectType + 48))
          {
            v6 = v104;
            if (*(ObjectType + 64))
            {
              sub_10004794C();
              v31 = swift_allocObject();
              sub_10012F2D0(v31);
              v32 = *(ObjectType + 64);
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(ObjectType + 64) = v32;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10012F714();
                sub_100032AAC(v63, v64, v65, v66);
                v32 = v67;
                *(ObjectType + 64) = v67;
              }

              v34 = *(v32 + 16);
              v6 = v34 + 1;
              if (v34 >= *(v32 + 24) >> 1)
              {
                sub_10012F714();
                sub_100032AAC(v68, v69, v70, v71);
                v32 = v72;
              }

              *(v32 + 16) = v6;
              sub_10012F6B4(v32 + 16 * v34);
            }

            else
            {
              sub_1000183C4(&qword_1002ADBD8, &qword_10020DE60);
              sub_100047958();
              v57 = swift_allocObject();
              *(v57 + 16) = v94;
              sub_10004794C();
              v58 = swift_allocObject();
              v59 = sub_10012F2D0(v58);
              *(v57 + 32) = sub_10012ED18;
              *(v57 + 40) = v59;
              *(ObjectType + 64) = v57;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();
            }
          }

          else
          {
            *(ObjectType + 48) = sub_10012EDB0;
            *(ObjectType + 56) = v20;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();

            v6 = v104;
          }

          swift_endAccess();
        }

        else
        {
          v22 = *(ObjectType + 16);

          if (v21)
          {
            sub_10012F7A4();
            sub_10012F34C();
            v95 = v23;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();
            sub_10012FB00();

            v24 = sub_1000DD44C();
            sub_10012DCB8(v24, v25);
            v26 = sub_10012F908();
            if (v95(v26))
            {
              sub_1001DBFE4(v17, 1);
              sub_10012F144();
              CallbackList._run()();
              v27 = sub_10012F180();
              sub_100037408(v27, v28);
            }

            else
            {
              v106[0] = 1;
              sub_1000A40C4();
              v45 = swift_allocObject();
              *(v45 + 16) = v8;
              *(v45 + 24) = v17;
              sub_10012F388(v45);
              v9 += 24;

              v46 = sub_1000DD44C();
              sub_10012DCB8(v46, v47);
              v48 = sub_10012F49C();
              v49(v48);
            }

            sub_10012F42C(v17);
            sub_10012FB50();
            sub_10012F4B8();
          }

          else
          {
            sub_10012F320();
            if (v16)
            {
              goto LABEL_59;
            }

            *v42 = v41;
            if (v41)
            {
              sub_10012F138();
              swift_retain_n();

              sub_10012F0EC();
              swift_retain_n();

              sub_10012F42C(v22);
              sub_10012F4B8();
            }

            else
            {
              v6 = *(v8 + 40);
              swift_getObjectType();
              sub_10012F34C();
              v96 = v50;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              v51 = sub_10012F908();
              if (v96(v51))
              {
                v52 = sub_10002E2C0();
                sub_1001DBFE4(v52, v53);
                sub_1000A40F4();
                v6 = v54;
                CallbackList._run()();
                v55 = sub_10012F398();
                sub_100037408(v55, v56);
              }

              else
              {
                v106[0] = 0;
                sub_1000A40C4();
                v60 = swift_allocObject();
                *(v60 + 16) = v8;
                *(v60 + 24) = 0;
                sub_10012F388(v60);
                v61 = *(v9 + 24);
                v9 += 24;

                v62 = sub_10012F9A4();
                v61(v62);
              }

              sub_10012F42C(v22);
              sub_10012FB50();
              sub_10012F4B8();
            }
          }
        }

        _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        CallbackList._run()();
        sub_100037408(0, 0);
      }

      else
      {
        sub_1000A41C8();
        v29 = swift_allocObject();
        sub_10012F64C(v29);

        v30 = sub_1000A4174();
        (v9)(v30);
        v9 = v8;
        v8 = v97;

        v6 = v104;
      }

      sub_10012F0EC();

      sub_10012F138();

      sub_10012F1D0();

      v7 = v98;
    }

    else
    {
      if (v13)
      {
        v74 = *(v105 + 16);
        v75 = *(v8 + 40);
        swift_getObjectType();
        sub_10012F53C();
        v76 = sub_10007B9A4();
        sub_10012DCB8(v76, v77);
        v78 = sub_10012F928();
        sub_1000477E8(v78, v79);
        v80 = sub_1000C9970();
        if ((v7)(v80))
        {
          v81 = sub_10012F928();
          sub_1001DBFE4(v81, v82);
          sub_10012F170();
          CallbackList._run()();

          v83 = sub_10012F398();
          sub_100037408(v83, v84);
        }

        else
        {
          v106[0] = 1;
          sub_1000A40C4();
          v85 = swift_allocObject();
          *(v85 + 16) = v8;
          *(v85 + 24) = v74;
          sub_10012F3A4(v85);
          v86 = *(v75 + 24);
          v87 = sub_10007B9A4();
          sub_10012DCB8(v87, v88);

          v89 = sub_10012F1E8();
          v86(v89);
        }

        v90 = sub_10007B9A4();
        sub_10012DCD0(v90, v91);
        v92 = sub_10007B9A4();
        sub_10012DCD0(v92, v93);
LABEL_55:

        sub_10012F68C();
        return;
      }

      sub_10012F320();
      if (v16)
      {
        goto LABEL_58;
      }

      *v15 = v14;
      if (!v14)
      {
        ObjectType = swift_getObjectType();
        sub_10012F1B4();
        if (v35())
        {
          v36 = sub_10002E2C0();
          sub_1001DBFE4(v36, v37);
          sub_1000E3198();
          ObjectType = v38;
          CallbackList._run()();

          v39 = sub_100037A2C();
          sub_100037408(v39, v40);

          goto LABEL_45;
        }

        v106[0] = 0;
        sub_1000A40C4();
        v43 = swift_allocObject();
        *(v43 + 16) = v8;
        *(v43 + 24) = 0;
        sub_10012F3A4(v43);
        sub_10012FA88();
        v44 = sub_10012F37C();
        (v6)(v44);
        v6 = v105;
      }
    }

LABEL_45:
    ++v6;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)()
{
  sub_100037C08();
  sub_10012F6D8(v7, v8, v9, v10, v11, v12);
  sub_100037B94();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  sub_10012F52C();
  v58 = sub_1001F74B8();
  sub_10001A278();
  v14 = v13;
  sub_10001E844();
  __chkstk_darwin(v15);
  sub_10005DBB4();
  v59 = v5;
  v16 = *(v5 - 8);
  __chkstk_darwin(v17);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v55 = &v52 - v20;
  swift_getObjectType();
  sub_10002E170();
  v60 = v4;
  v61 = v1;
  debugOnly(_:)();
  sub_10012F3D4();
  v21 = swift_allocObject();
  v64 = v3;
  type metadata accessor for EventLoopFuture(0, v3, v22, v23);
  sub_100037A2C();
  v24 = sub_1001F6FA8();
  *(v21 + 16) = v24;
  if (!v24)
  {
    sub_1000A13F8(0, 0, v2);
    sub_100037B00();

    return;
  }

  v67 = v0;
  sub_1001F6FC8();
  sub_10012F2B8();
  swift_getWitnessTable();
  sub_1001F6E08();
  v67 = v66;
  sub_10010B19C();
  sub_1001F7B38();
  sub_1001F7B08();
  sub_10010B19C();
  v65 = sub_1001F7B28();
  v57 = (v14 + 16);
  v53 = (v16 + 32);
  v54 = v16 + 8;
  v52 = (v14 + 8);
  while (1)
  {
    while (1)
    {
      sub_1001F7B18();
      v25 = v68;
      if (!v68)
      {

        goto LABEL_11;
      }

      v26 = v67;
      v27 = v2;
      v28 = *(v68 + *(*v68 + 96) + 8);
      ObjectType = swift_getObjectType();
      v30 = v6;
      v31 = *(v28 + 16);
      swift_unknownObjectRetain();
      v32 = v28;
      v2 = v27;
      v33 = v31(ObjectType, v32);
      v6 = v30;
      v34 = v33;
      swift_unknownObjectRelease();
      if (v34)
      {
        break;
      }

LABEL_7:
      EventLoopFuture.hop(to:)();
      sub_10012F1DC();
      v40 = swift_allocObject();
      *(v34 + 40) = sub_10012F3B0(v40);
      *(v34 + 48) = v21;
      *(v34 + 56) = v27;
      *(v34 + 64) = v26;

      sub_10012F998();
      EventLoopFuture.whenComplete(_:)();
    }

    v35 = *(*v25 + 88);
    sub_100047940();
    swift_beginAccess();
    v36 = v25 + v35;
    v37 = v58;
    (*v57)(v30, v36, v58);
    v38 = sub_1000D4AC8();
    v34 = v59;
    if (sub_10001C990(v38, v39, v59) == 1)
    {
      (*v52)(v30, v37);
      goto LABEL_7;
    }

    v41 = *v53;
    v42 = v55;
    (*v53)(v55, v30, v34);
    v43 = sub_1000C9970();
    sub_10012A8B0(v43, v44, v62, v63, v21, v2, v45, v46);

    v41(v56, v42, v34);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v47 = sub_10012F8F4();
    v48(v47);
  }

  v50 = sub_10012F8F4();
  v51(v50);

LABEL_11:
  sub_100037B00();
}

uint64_t static EventLoopFuture.whenAllSucceed(_:on:)(uint64_t a1, uint64_t a2)
{
  sub_10012F858(a1, a2);
  sub_1001F6FC8();
  sub_1000A40D0();
  v6 = sub_10012FAC8(v2, v3, v4, v5, 1119);
  sub_10005053C();
  static EventLoopFuture.whenAllSucceed(_:promise:)();
  return v6;
}

void static EventLoopFuture.whenAllSucceed(_:promise:)()
{
  sub_100037C08();
  v26 = v1;
  sub_100037B94();
  v3 = *(v1 + 80);
  sub_10012F9D8();
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v29 = v0;
  ObjectType = swift_getObjectType();
  sub_1000A40D0();
  v15 = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, 1134, ObjectType, v14, v8);
  sub_10012F3D4();
  v16 = swift_allocObject();
  sub_100018460(v6, 1, 1, v3);
  v28 = v2;
  v17 = v26;
  sub_1001F6FA8();
  *(v16 + 16) = sub_1001F6FB8();
  sub_10004794C();
  v18 = swift_allocObject();
  v27 = v3;
  *(v18 + 16) = v3;
  *(v18 + 24) = v16;
  v19 = *(v8 + 16);

  v25[1] = ObjectType;
  v20 = sub_100062234();
  if (v19(v20))
  {
    static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)();
  }

  else
  {
    sub_10012F1DC();
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v15;
    v21[4] = v28;
    v21[5] = v7;
    v21[6] = v8;
    v21[7] = sub_10012D390;
    v21[8] = v18;
    v22 = *(v8 + 24);

    swift_unknownObjectRetain();

    v23 = sub_1000A4168();
    v22(v23);
  }

  sub_1000A41C8();
  v24 = swift_allocObject();
  sub_10012F624(v24);

  sub_10012F914();
  sub_10011DE78();

  sub_100037B00();
}

uint64_t sub_10012A434(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(*(a4 - 8) + 16))(&v15 - v11, a2, a4, v10);
  sub_100018460(v12, 0, 1, a4);
  swift_beginAccess();
  sub_1001F6FC8();
  sub_1001F6F68();
  v13 = *(a3 + 16);
  sub_10012D9C0(a1, v13, v8);
  (*(v9 + 40))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v12, v8);
  return swift_endAccess();
}

uint64_t sub_10012A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v6 = *a1;
    v7 = sub_1001F6FC8();

    return EventLoopPromise.fail(_:)(v6, a3, v7);
  }

  else
  {
    v10 = swift_beginAccess();
    v17 = *(a2 + 16);
    __chkstk_darwin(v10);
    v16[2] = a4;
    sub_1001F74B8();
    v11 = sub_1001F6FC8();

    WitnessTable = swift_getWitnessTable();
    v14 = sub_1001A359C(sub_10012E3D0, v16, v11, a4, &type metadata for Never, WitnessTable, &protocol witness table for Never, v13);

    v17 = v14;
    v15 = sub_1001F6FC8();
    EventLoopPromise.succeed(_:)(&v17, a3, v15);
  }
}

uint64_t sub_10012A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F74B8();
  v7 = __chkstk_darwin(v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  result = sub_10001C990(v9, 1, a2);
  if (result != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012A8B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v13 = *(a8 - 8);
  __chkstk_darwin(a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v16 = sub_1001F8158();
  v17 = __chkstk_darwin(v16);
  v19 = (&v26 - v18);
  (*(v20 + 16))(&v26 - v18, a2, v16, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v19;
    swift_errorRetain();
    sub_1000A13F8(v21, 1, a6);
  }

  else
  {
    (*(v13 + 32))(v15, v19, a8);
    v26(a1, v15);
    result = swift_beginAccess();
    v23 = *(a5 + 16);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v25;
      if (!v25)
      {
        sub_1000A13F8(0, 0, a6);
      }

      return (*(v13 + 8))(v15, a8);
    }
  }

  return result;
}

uint64_t sub_10012AAFC(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13F8(a1, 1, a6);

    return sub_1000374AC(a1, 1);
  }

  else
  {
    a3(a7);
    result = swift_beginAccess();
    v11 = *(a5 + 16);
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v13;
      if (!v13)
      {
        return sub_1000A13F8(0, 0, a6);
      }
    }
  }

  return result;
}

uint64_t sub_10012ABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getObjectType();
  sub_1000A40D0();
  v15 = EventLoop.makePromise<A>(of:file:line:)(v9, v10, v11, v12, a4, v13, v14, a3);
  a5(a1, v15);
  return v15;
}

uint64_t static EventLoopFuture.andAllComplete(_:promise:)()
{
  sub_100037AEC();
  sub_10012F810(v2, v3);
  sub_10012F1B4();
  if (v4())
  {
    sub_10012F3D4();
    *(swift_allocObject() + 16) = *(v0 + 80);
    sub_10005053C();
    sub_10012F934();
    static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)();
  }

  else
  {
    sub_1000A3FC4();
    v5 = swift_allocObject();
    sub_10012F458(v5);

    swift_unknownObjectRetain();
    v6 = sub_1000A4168();
    v1(v6);
  }

  sub_100037A50();
}

void static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)()
{
  sub_100037C08();
  sub_10012F6D8(v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v14 = sub_1001F8158();
  sub_10010B19C();
  v53 = sub_1001F74B8();
  sub_10001A278();
  v16 = v15;
  sub_10001E844();
  __chkstk_darwin(v17);
  sub_10005DBB4();
  v54 = v14;
  sub_10002DFFC();
  v19 = v18;
  sub_10001E844();
  __chkstk_darwin(v20);
  v51 = &v47 - v21;
  swift_getObjectType();
  sub_10002E170();
  v55 = v2;
  v56 = v0;
  debugOnly(_:)();
  sub_10012F3D4();
  v22 = swift_allocObject();
  v59 = v1;
  type metadata accessor for EventLoopFuture(0, v1, v23, v24);
  v25 = sub_1001F6FA8();
  *(v22 + 16) = v25;
  if (v25)
  {
    v64 = v11;
    sub_1001F6FC8();
    sub_10012F2B8();
    swift_getWitnessTable();
    sub_1001F6E08();
    v62 = v61;
    sub_1001F7B38();
    sub_1001F7B08();
    v60 = sub_1001F7B28();
    v52 = (v16 + 16);
    v49 = (v19 + 8);
    v50 = (v19 + 32);
    v48 = (v16 + 8);
    while (1)
    {
      while (1)
      {
        sub_1001F7B18();
        v26 = v63;
        if (!v63)
        {

          sub_100037B00();
          return;
        }

        v27 = v62;
        sub_10002E0B8();
        v29 = v13;
        v30 = *(v26 + *(v28 + 96) + 8);
        ObjectType = swift_getObjectType();
        v32 = v3;
        v33 = *(v30 + 16);
        swift_unknownObjectRetain();
        v34 = v30;
        v13 = v29;
        v35 = v33(ObjectType, v34);
        v3 = v32;
        v36 = v35;
        swift_unknownObjectRelease();
        if (v36)
        {
          break;
        }

LABEL_7:
        EventLoopFuture.hop(to:)();
        sub_10012F1DC();
        v42 = swift_allocObject();
        v36[5] = sub_10012F3B0(v42);
        v36[6] = v22;
        v36[7] = v29;
        v36[8] = v27;

        sub_10012F998();
        EventLoopFuture.whenComplete(_:)();
      }

      sub_10002E0B8();
      v38 = *(v37 + 88);
      sub_100047940();
      swift_beginAccess();
      v36 = v53;
      (*v52)(v32, v26 + v38, v53);
      v39 = sub_1000D4AC8();
      v40 = v54;
      if (sub_10001C990(v39, v41, v54) == 1)
      {
        (*v48)(v32, v36);
        goto LABEL_7;
      }

      v43 = v51;
      (*v50)(v51, v32, v40);
      v44 = sub_100062888();
      sub_10012B7F0(v44, v45, v57, v58, v22, v29);

      (*v49)(v43, v40);
    }
  }

  sub_1000A13F8(0, 0, v13);
  sub_100037B00();
}

uint64_t sub_10012B1A8()
{
  sub_100037AEC();
  v2 = v1;
  sub_10012F50C();
  sub_10012F3D4();
  *(swift_allocObject() + 16) = *(v0 + 80);
  v3 = sub_1000C9970();
  v2(v3);
  sub_100037A50();
}

uint64_t static EventLoopFuture.whenAllComplete(_:on:)(uint64_t a1, uint64_t a2)
{
  sub_10012F858(a1, a2);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  sub_10012F750();
  sub_1001F6FC8();
  sub_1000A40D0();
  v6 = sub_10012FAC8(v2, v3, v4, v5, 1269);
  sub_10005053C();
  static EventLoopFuture.whenAllComplete(_:promise:)();
  return v6;
}

void static EventLoopFuture.whenAllComplete(_:promise:)()
{
  sub_100037C08();
  v28 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 80);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  sub_1001F8158();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = (&v27 - v7);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v30 = v2;
  ObjectType = swift_getObjectType();
  sub_1000A40D0();
  v17 = EventLoop.makePromise<A>(of:file:line:)(v12, v13, v14, v15, 1285, ObjectType, v16, v10);
  sub_10012F3D4();
  v18 = swift_allocObject();
  sub_10012D4A0();
  *v8 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v29 = v4;
  v19 = v28;
  sub_1001F6FA8();
  *(v18 + 16) = sub_1001F6FB8();
  sub_10004794C();
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v18;
  v21 = *(v10 + 16);

  v27 = ObjectType;
  v22 = sub_1000701E4();
  if (v21(v22))
  {
    static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)();
  }

  else
  {
    sub_10012F1DC();
    v23 = swift_allocObject();
    v23[2] = v19;
    v23[3] = v17;
    v23[4] = v29;
    v23[5] = v9;
    v23[6] = v10;
    v23[7] = sub_10012D4F4;
    v23[8] = v20;
    v24 = *(v10 + 24);

    swift_unknownObjectRetain();

    v25 = sub_1000A4168();
    v24(v25);
  }

  sub_1000A41C8();
  v26 = swift_allocObject();
  sub_10012F624(v26);

  sub_10012F914();
  sub_1001200D0();

  sub_100037B00();
}

uint64_t sub_10012B588(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v7 = sub_1001F8158();
  sub_1001F6FC8();
  sub_1001F6F68();
  v8 = *(a3 + 16);
  sub_10012D9C0(a1, v8, v7);
  (*(*(v7 - 8) + 24))(v8 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * a1, a2, v7);
  return swift_endAccess();
}

uint64_t sub_10012B6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
    sub_1001F8158();
    v6 = sub_1001F6FC8();

    return EventLoopPromise.fail(_:)(v5, a3, v6);
  }

  else
  {
    swift_beginAccess();
    v10 = *(a2 + 16);

    sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
    sub_1001F8158();
    v9 = sub_1001F6FC8();
    EventLoopPromise.succeed(_:)(&v10, a3, v9);
  }
}

uint64_t sub_10012B7F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3(a1, a2);
  result = swift_beginAccess();
  v9 = *(a5 + 16);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v11;
    if (!v11)
    {
      return sub_1000A13F8(0, 0, a6);
    }
  }

  return result;
}

uint64_t EventLoopFuture.unwrap<A>(orError:)(uint64_t a1)
{
  sub_10004794C();
  v2 = swift_allocObject();
  sub_10012F6CC();
  v4 = *(*(v3 + 80) + 16);
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  swift_errorRetain();
  sub_10002E170();
  EventLoopFuture.flatMapThrowing<A>(file:line:_:)(v6, v7, v8, 1424, v9, v2, v4);
  v11 = v10;

  return v11;
}

uint64_t sub_10012B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1001F74B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, v6, v8);
  if (sub_10001C990(v10, 1, a2) != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v10, a2);
  }

  (*(v7 + 8))(v10, v6);
  swift_willThrow();
  return swift_errorRetain();
}

uint64_t EventLoopFuture.unwrap<A>(orReplace:)()
{
  sub_10002E27C();
  v1 = *(*(v0 + 80) + 16);
  sub_10002DFFC();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v16 - v6;
  (*(v3 + 16))(&v16 - v6, v5);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v7, v1);
  sub_10002E170();
  v14 = EventLoopFuture.map<A>(file:line:_:)(v10, v11, v12, 1445, v13, v9, v1);

  return v14;
}

uint64_t sub_10012BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, a1, v8, v10);
  if (sub_10001C990(v12, 1, a3) != 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  (*(v9 + 8))(v12, v8);
  return (*(*(a3 - 8) + 16))(a4, a2, a3);
}

uint64_t EventLoopFuture.unwrap<A>(orElse:)()
{
  sub_100037B94();
  v3 = *v1;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v5 = *(*(v3 + 80) + 16);
  v4[2] = v5;
  v4[3] = v2;
  v4[4] = v0;

  sub_10002E170();
  v10 = EventLoopFuture.map<A>(file:line:_:)(v6, v7, v8, 1469, v9, v4, v5);

  return v10;
}

uint64_t sub_10012BE10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, a1, v8, v10);
  if (sub_10001C990(v12, 1, a3) != 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  v13 = (*(v9 + 8))(v12, v8);
  return a2(v13);
}

uint64_t EventLoopFuture.flatMapBlocking<A>(onto:_:)(uint64_t a1)
{
  sub_10012F27C();
  v5 = v4;
  v7 = v6;
  sub_1000A3FC4();
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v7;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v3;
  v9 = v7;

  sub_10002E170();
  EventLoopFuture.flatMap<A>(file:line:_:)(v10, v11, v12, 1494, v13, v8, v1);
  v15 = v14;

  return v15;
}

uint64_t sub_10012C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a2;
  v9 = *(*a3 + 80);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = v23 - v12;
  v16 = (v15 + *(v14 + 96));
  v17 = *v16;
  v18 = v16[1];
  (*(v10 + 16))(v23 - v12, v11);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v9;
  *(v20 + 3) = a6;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  (*(v10 + 32))(&v20[v19], v13, v9);

  v21 = OS_dispatch_queue.asyncWithFuture<A>(eventLoop:_:)(v17, v18, sub_10012E370, v20, a6);

  return v21;
}

uint64_t sub_10012C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v31 = a2;
  v7 = sub_1001F6738();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001F6768();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v15);
  v17 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, a5, v16);
  v18 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  v21 = v28;
  *(v19 + 2) = a5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v13 + 32))(&v19[v18], v17, a5);
  aBlock[4] = sub_10012E268;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BC48;
  v22 = _Block_copy(aBlock);

  v23 = sub_1001F6758();
  v32 = _swiftEmptyArrayStorage;
  sub_100028258(v23, v24, v25);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v22);
  (*(v30 + 8))(v9, v7);
  (*(v10 + 8))(v12, v29);
}

uint64_t EventLoopFuture.whenFailureBlocking(onto:_:)()
{
  sub_1000A3DBC();
  v3 = v2;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0;
  v5 = v3;

  v6 = sub_10012F37C();
  EventLoopFuture.whenFailure(_:)(v6, v7);
}

uint64_t sub_10012C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F6738();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F6768();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_10012E190;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BBF8;
  v16 = _Block_copy(aBlock);

  swift_errorRetain();
  v17 = sub_1001F6758();
  v21[1] = _swiftEmptyArrayStorage;
  sub_100028258(v17, v18, v19);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_10012C864()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  sub_100047958();
  v12 = swift_allocObject();
  v12[2] = *(v11 + 80);
  v12[3] = v10;
  v12[4] = v8;
  v12[5] = v6;
  v13 = v10;

  v2(v4, v12);
  sub_100037A50();
}

uint64_t sub_10012C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a4;
  v30 = a2;
  v7 = sub_1001F6738();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001F6768();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v13 = sub_1001F8158();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - v16;
  (*(v14 + 16))(&v26 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = a5;
  *(v19 + 3) = v20;
  *(v19 + 4) = v27;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_10012E0D8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BBA8;
  v21 = _Block_copy(aBlock);

  v22 = sub_1001F6758();
  v31 = _swiftEmptyArrayStorage;
  sub_100028258(v22, v23, v24);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v21);
  (*(v29 + 8))(v9, v7);
  (*(v10 + 8))(v12, v28);
}

Swift::Int _NIOEventLoopFutureIdentifier.hashValue.getter(Swift::UInt a1)
{
  sub_1001F8068();
  sub_1001F8088(a1);
  return sub_1001F80D8();
}

Swift::Int sub_10012CCF0()
{
  v1 = *v0;
  sub_1001F8068();
  _NIOEventLoopFutureIdentifier.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

uint64_t sub_10012CD34(uint64_t a1)
{
  v2 = v1;
  *(v2 + 32) = swift_slowAlloc();
  *(v2 + 16) = a1;
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v2 + 24) = Lock.init()();
  result = pthread_cond_init(*(v2 + 32), 0);
  if (!result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012CDCC()
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  sub_1001F8158();
  sub_10012F75C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_10007E2C8();
    v0 = sub_10012F954();
    v1(v0);
  }

  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012CECC()
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  v0 = sub_1001F8158();
  sub_100056658(v0);

  return sub_100118808();
}

uint64_t sub_10012CF90()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012CFE8()
{

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D04C()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D0E4()
{

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D140()
{
  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D18C()
{
  swift_unknownObjectRelease();

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D204()
{
  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D258()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D28C()
{
  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D35C()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D424()
{

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_10012D4A0()
{
  result = qword_1002B4578;
  if (!qword_1002B4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4578);
  }

  return result;
}

uint64_t sub_10012D4FC()
{

  swift_unknownObjectRelease();

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D588()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D5D8()
{
  sub_10007E2C8();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10012D690()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D6D0()
{

  v1 = sub_10012F014();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012D730()
{

  sub_1000A41C8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012D778()
{

  sub_100047958();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_10012D7C4()
{
  result = qword_1002B4580[0];
  if (!qword_1002B4580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B4580);
  }

  return result;
}

uint64_t sub_10012D818(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10012D848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012D89C(uint64_t a1)
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_1001F8158();
  result = sub_1001F74B8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012D9C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10012DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a8 + 32) = a1;
  *(a8 + 40) = a10;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  *(a8 + 48) = 0;
  return a8;
}

double sub_10012DA88(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1000A37F0(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DAA0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10012E88C(result, a2 & 1, &_swift_bridgeObjectRelease);
  }

  return result;
}

uint64_t sub_10012DB28(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A339C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012DB40(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000373FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012DBF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_10003715C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10012DC28()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

double sub_10012DC6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10012DCB8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000477E8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DCD0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000374AC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DD40()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DDA8()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DE0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 40) = a1;
  *(a9 + 48) = a11;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 56) = 0;
  return a9;
}

uint64_t sub_10012DEFC()
{
  swift_unknownObjectRelease();
  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DF54(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000A3B30(result, a2 & 1);
  }

  return result;
}

void sub_10012DF80(uint64_t result, uint64_t a2)
{
  if (a2 != 0xFF)
  {
    sub_10012EEDC();
    sub_10012E88C(v3, v2 & 1, v4);
  }
}

uint64_t sub_10012DFD8()
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  sub_1001F8158();
  sub_10012F75C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_10007E2C8();
    v0 = sub_10012F954();
    v1(v0);
  }

  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E0D8()
{
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  sub_10010B19C();
  v1 = sub_1001F8158();
  sub_100056658(v1);
  return (*(v0 + 24))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

uint64_t sub_10012E160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012E1C0()
{
  sub_10002DFFC();

  v0 = sub_10012F954();
  v1(v0);
  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E2C8()
{
  sub_10002DFFC();

  v0 = sub_10012F954();
  v1(v0);
  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E428()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E484(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A386C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012E49C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100037420(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012E510()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10012E5B0()
{
  sub_100037B94();

  v1(*(v0 + 24));
  v2 = sub_10012F960();

  return _swift_deallocObject(v2, v3, 7);
}

double sub_10012E674(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_10012E68C(result, a2, BYTE1(a2) & 1);
  }

  return v2;
}

double sub_10012E68C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_10012E698(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_10012E6B0(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_10012E6B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10012E710()
{
  sub_100037B94();

  v2(*(v1 + 32));
  v0(*(v1 + 40));
  v3 = sub_10012F014();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10012E77C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10012E7B0()
{

  sub_1000374AC(*(v0 + 24), *(v0 + 32));
  sub_1000A40C4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012E830(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1000A3A44(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_10012E848()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E88C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
  }

  else
  {
    return a3(a1);
  }
}

uint64_t sub_10012E8F0(void (*a1)(void))
{

  a1(*(v1 + 32));
  sub_1000A41C8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10012E970()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E9AC()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012EE38(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012EEF4(uint64_t a1, __n128 a2)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;

  return swift_retain_n();
}

uint64_t sub_10012EF44(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012EF9C()
{
  sub_100037408(v0, v1);
}

void *sub_10012EFDC(void *result)
{
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  result[5] = v3;
  return result;
}

void *sub_10012F024(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_10012F044()
{
}

uint64_t sub_10012F064()
{
  sub_100037408(v0, v1);
}

uint64_t sub_10012F094(__n128 *a1, __n128 a2)
{
  a1[2] = a2;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u8[8] = -1;
  *(&a1[3] + 8) = 0uLL;
  a1[3].n128_u64[0] = 0;

  return swift_retain_n();
}

uint64_t sub_10012F0F8()
{
}

uint64_t sub_10012F114(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_getObjectType();
}

uint64_t sub_10012F150()
{
}

uint64_t sub_10012F1F4(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

void *sub_10012F238(void *result)
{
  result[2] = _toIndex(_:);
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  return result;
}

uint64_t sub_10012F254(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10012F260()
{
}

uint64_t sub_10012F2D0(uint64_t result)
{
  *(result + 16) = sub_10012EDB0;
  *(result + 24) = v1;
  return result;
}

void sub_10012F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[1] = 0;
  v10[2] = v11;
  *v10 = a10;
}

uint64_t sub_10012F3B0(void *a1)
{
  v2 = *(v1 - 176);
  a1[2] = *(*(v1 - 168) + 80);
  a1[3] = v2;
  a1[4] = *(v1 - 192);
  return *(v1 - 184);
}

uint64_t sub_10012F400(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = v3;
}

uint64_t sub_10012F42C(uint64_t a1)
{
  sub_10012DCD0(a1, v1);
}

uint64_t sub_10012F458(void *a1)
{
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v1;
}

void sub_10012F4C4()
{
  v0[1] = 0;
  v0[2] = v1;
  *v0 = *(v2 - 56);
}

uint64_t sub_10012F4E4()
{
  v3 = *(v0 + 8);

  return sub_1001134C0(v3, v1);
}

void *sub_10012F58C(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t sub_10012F5AC()
{

  return swift_retain_n();
}

uint64_t sub_10012F5D4()
{

  return swift_beginAccess();
}

uint64_t sub_10012F5FC(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;

  return swift_getObjectType();
}

uint64_t sub_10012F624(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = *(v3 - 88);

  return swift_retain_n();
}

uint64_t sub_10012F64C(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
}

uint64_t sub_10012F674()
{

  return swift_getObjectType();
}

void sub_10012F6B4(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(v4 + 64) = v3;
}

void sub_10012F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 168) = v6;
  *(v7 - 192) = a5;
  *(v7 - 184) = a6;
}

uint64_t sub_10012F744(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10012F774(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_10012F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_unknownObjectRetain();
}

uint64_t sub_10012F7A4()
{

  return swift_getObjectType();
}

uint64_t sub_10012F7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getObjectType();
}

uint64_t sub_10012F7EC()
{
}

uint64_t sub_10012F810(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

uint64_t sub_10012F834(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012F858(uint64_t a1, uint64_t a2)
{

  return swift_getObjectType();
}

uint64_t sub_10012F87C(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_getObjectType();
}

uint64_t sub_10012F8A0()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_10012F8C4()
{

  return swift_getObjectType();
}

uint64_t sub_10012F8DC(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_10012F9B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result[2] = a12;
  result[3] = v12;
  result[4] = v13;
  result[5] = v14;
  return result;
}

uint64_t sub_10012FA48(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return swift_getObjectType();
}

uint64_t sub_10012FA68()
{
}

uint64_t sub_10012FA88()
{
}

uint64_t sub_10012FAA8()
{
}

uint64_t sub_10012FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return EventLoop.makePromise<A>(of:file:line:)(a1, a2, a3, a4, a5, v6, a1, v5);
}

uint64_t sub_10012FB00()
{
}

uint64_t sub_10012FB20()
{

  return swift_getObjectType();
}

uint64_t sub_10012FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F8158();
}

uint64_t sub_10012FB50()
{
}

uint64_t sub_10012FB68()
{

  return swift_getObjectType();
}

uint64_t ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  ByteBuffer.getData(at:length:byteTransferStrategy:)(a1, a2, 1, a3, a4, a5 & 0xFFFFFFFFFFFFFFLL);
  if (v12 >> 60 == 15)
  {
    return sub_100018460(a7, 1, 1, a6);
  }

  v14 = v11;
  v15 = v12;
  sub_1001F5E68();
  if (!v8)
  {
    sub_100018460(a7, 0, 1, a6);
  }

  return sub_10003A36C(v14, v15);
}

uint64_t ByteBuffer.readJSONDecodable<A>(_:decoder:length:)@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v22 = a4;
  v8 = sub_1001F74B8();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v12 = *(v4 + 8);
  v11 = *(v4 + 12);
  v13 = v23;
  result = ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)(v12, a1, *v4, v12 | (v11 << 32), *(v4 + 16) | (*(v4 + 20) << 32) | (*(v4 + 22) << 48), a2, (&v20 - v9), a3);
  if (!v13)
  {
    v23 = v11;
    v16 = v21;
    v15 = v22;
    if (sub_10001C990(v10, 1, a2) == 1)
    {
      (*(v16 + 8))(v10, v8);
      v17 = v15;
      v18 = 1;
      return sub_100018460(v17, v18, 1, a2);
    }

    result = (*(*(a2 - 8) + 32))(v15, v10, a2);
    v19 = v12 + a1;
    if (__CFADD__(v12, a1))
    {
      __break(1u);
    }

    else if (v23 >= v19)
    {
      *(v4 + 8) = v19;
      v17 = v15;
      v18 = 0;
      return sub_100018460(v17, v18, 1, a2);
    }

    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.setJSONEncodable<A>(_:encoder:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001F5EE8();
  if (!v6)
  {
    v10 = result;
    v11 = v9;
    v12 = sub_100130208(result, v9, v5, a3);
    if ((v12 & 0x100000000) != 0)
    {
      sub_10006006C();
    }

    v13 = v12;
    sub_10003A380(v10, v11);
    return v13;
  }

  return result;
}

Swift::Int ByteBuffer.writeJSONEncodable<A>(_:encoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ByteBuffer.setJSONEncodable<A>(_:encoder:at:)(a1, a2, *(v4 + 12), a3, a4);
  v7 = v6;
  if (!v5)
  {
    ByteBuffer.moveWriterIndex(forwardBy:)(v6);
  }

  return v7;
}

void JSONDecoder.decode<A>(_:from:)(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v17 = a6;
  v12 = HIDWORD(a2);
  v13 = sub_1001F74B8();
  __chkstk_darwin(v13 - 8);
  v15 = &v16 - v14;
  if (v12 < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)(a2, (v12 - a2), a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, (&v16 - v14), a5);
  if (v6)
  {
    return;
  }

  if (sub_10001C990(v15, 1, a4) == 1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(*(a4 - 8) + 32))(v17, v15, a4);
}

uint64_t JSONEncoder.encodeAsByteBuffer<A>(_:allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1001F5EE8();
  if (!v8)
  {
    v21 = v7;
    v22 = result;
    v24 = v17;
    v18 = sub_1001F63E8();
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v19 = v18;
      if (v18)
      {
        type metadata accessor for ByteBuffer._Storage();
        v20 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v19, a2, a3, a4, a5);
LABEL_7:
        v23 = v20;
        ByteBuffer.writeJSONEncodable<A>(_:encoder:)(a1, v21, a6, a7);
        sub_10003A380(v22, v24);
        return v23;
      }

      if (qword_1002AC430 == -1)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_100130208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1001302B8);
      }

      a1 = a1;
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v12;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a1 + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v10 = v8;
LABEL_9:
      result = sub_100074EB4(a1, v10, v9, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
    case 3uLL:
      a1 = 0;
      v7 = 0;
      goto LABEL_5;
    default:
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100074E20(a1, v7, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
  }
}

Class sub_1001302C8(char a1)
{
  sub_100019C0C(0, qword_1002B23E0, NSNumber_ptr);
  if (a1)
  {
    v2 = 37;
  }

  else
  {
    v2 = 36;
  }

  return sub_1001F73C8(v2).super.super.isa;
}

void *sub_10013032C()
{
  type metadata accessor for DaemonConnection();
  v0 = swift_allocObject();
  result = sub_1001325C4();
  qword_1002E60D8 = v0;
  return result;
}

uint64_t sub_100130368()
{
  sub_100019C0C(0, &qword_1002B48A0, NSXPCConnection_ptr);
  v0 = sub_100130600(0xD000000000000024, 0x8000000100228460, 0);
  v1 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneServiceInternalProtocol];
  [v0 setRemoteObjectInterface:v1];
  v12 = sub_10013067C;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000172C0;
  v11 = &unk_10028C760;
  v2 = _Block_copy(&aBlock);
  [v0 setInterruptionHandler:v2];
  _Block_release(v2);
  v12 = sub_100130688;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000172C0;
  v11 = &unk_10028C788;
  v3 = _Block_copy(&aBlock);
  [v0 setInvalidationHandler:v3];
  _Block_release(v3);
  [v0 resume];
  v12 = sub_100130754;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1001308EC;
  v11 = &unk_10028C7B0;
  v4 = _Block_copy(&aBlock);
  v5 = [v0 remoteObjectProxyWithErrorHandler:v4];
  _Block_release(v4);
  sub_1001F76D8();

  swift_unknownObjectRelease();
  sub_1000183C4(&qword_1002B48A8, &unk_10020E208);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_100130600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1001F6B48();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_100130694(const char *a1)
{
  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v3 = sub_1001F6688();
  sub_10009951C(v3, qword_1002E6180);
  loga = sub_1001F6668();
  v4 = sub_1001F7298();
  if (sub_100133ABC(v4, v5, v6, v7, v8, v9, v10, v11, v13, loga))
  {
    v12 = sub_10003A87C();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, log, v1, a1, v12, 2u);
    sub_10003A72C(v12);
  }
}

void sub_100130754(uint64_t a1)
{
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v1 = sub_1001F6688();
  sub_100019C94(v1, qword_1002E6180);
  swift_errorRetain();
  oslog = sub_1001F6668();
  v2 = sub_1001F7298();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_getErrorValue();
    v5 = sub_1001F7FE8();
    v7 = sub_1000E4544(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Could not create remote object proxy, error:%{public}s", v3, 0xCu);
    sub_100019CCC(v4);
  }

  else
  {
  }
}

void sub_1001308EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100130954()
{
  v1 = *(v0 + 56);
  if (v1)
  {

    [v1 invalidateBag];
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v2 = sub_1001F6688();
    sub_10009951C(v2, qword_1002E6180);
    v20 = sub_1001F6668();
    v3 = sub_1001F7298();
    if (sub_100133A70(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
    {
      v11 = sub_10003A87C();
      sub_100133A8C(v11);
      sub_100133A34(&_mh_execute_header, v12, v13, "Unable to communicate with daemon to invalidate the bag", v14, v15, v16, v17, v19, v21);
      sub_100133A54();
    }
  }
}

void sub_100130A24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001FE9E0;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v3;
    swift_unknownObjectRetain_n();

    sub_1000FC6DC(v6);

    swift_unknownObjectRelease();

    sub_10007E444();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v8 = sub_1001F6688();
    sub_10009951C(v8, qword_1002E6180);
    loga = sub_1001F6668();
    v9 = sub_1001F7298();
    if (sub_100133A70(v9, v10, v11, v12, v13, v14, v15, v16, v26, loga))
    {
      v17 = sub_10003A87C();
      sub_100133A8C(v17);
      sub_100133A34(&_mh_execute_header, v18, v19, "Unable to communicate with daemon to signal queue refresh", v20, v21, v22, v23, v27, log);
      sub_100133A54();
    }

    sub_10007E444();
  }
}

uint64_t sub_100130BB8(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

void sub_100130BFC(uint64_t a1, void *a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1001F6B48();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    v18[4] = sub_100133A0C;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_100130FA8;
    v18[3] = &unk_10028C878;
    v17 = _Block_copy(v18);

    [a2 refreshQueueForBundleId:v15 completion:v17];
    _Block_release(v17);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100130DB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v5 = sub_1001F6688();
    sub_100019C94(v5, qword_1002E6180);
    swift_errorRetain();

    v6 = sub_1001F6668();
    v7 = sub_1001F7298();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000E4544(a2, a3, &v12);
      *(v8 + 12) = 2082;
      swift_getErrorValue();
      v9 = sub_1001F7FE8();
      v11 = sub_1000E4544(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to refresh queue for %{public}s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100130FA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100131014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {

    v9 = sub_1001B8580(v7, v8);
    sub_10007BA20(v9);
    v10 = *(v3 + 56);
    if (v10)
    {
      swift_unknownObjectRetain();
      isa = sub_1001F6F18().super.isa;

      v12 = sub_1001F6B48();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v13[4] = a3;
      aBlock[4] = sub_100133974;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100130FA8;
      aBlock[3] = &unk_10028C800;
      v14 = _Block_copy(aBlock);

      [v10 revokeEntitlementsForProductIdentifiers:isa forBundleId:v12 completion:v14];
      _Block_release(v14);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v15 = sub_1001F6688();
      sub_10009951C(v15, qword_1002E6180);
      v33 = sub_1001F6668();
      v16 = sub_1001F7298();
      if (sub_100133A70(v16, v17, v18, v19, v20, v21, v22, v23, v31, v33))
      {
        v24 = sub_10003A87C();
        sub_100133A8C(v24);
        sub_100133A34(&_mh_execute_header, v25, v26, "Unable to communicate with daemon to revoke entitlements", v27, v28, v29, v30, v32, v34);
        sub_100133A54();
      }
    }
  }
}

void sub_100131220(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v6 = sub_1001F6688();
    sub_100019C94(v6, qword_1002E6180);
    swift_errorRetain();

    v7 = sub_1001F6668();
    v8 = sub_1001F7298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = sub_1001F6F48();
      v12 = sub_1000E4544(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1000E4544(a3, a4, &v16);
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v13 = sub_1001F7FE8();
      v15 = sub_1000E4544(v13, v14, &v16);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to revoke entitlements of %s for %{public}s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10013146C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1000C1A68();
    sub_1000BFC14();
    v3 = sub_1001F6B48();

    sub_1000BFC24();
    loga = sub_1001F6B48();

    [v1 transactionDeleted:v2 productID:v3 forBundleID:loga];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v4 = sub_1001F6688();
    sub_10009951C(v4, qword_1002E6180);
    logb = sub_1001F6668();
    v5 = sub_1001F7298();
    if (sub_100133A70(v5, v6, v7, v8, v9, v10, v11, v12, v22, logb))
    {
      v13 = sub_10003A87C();
      sub_100133A8C(v13);
      sub_100133A34(&_mh_execute_header, v14, v15, "Unable to communicate with daemon to notify of deleted transaction", v16, v17, v18, v19, v23, log);
      sub_100133A54();
    }
  }

  sub_10007E444();
}

void sub_100131590()
{
  v1 = objc_opt_self();
  sub_1000BFF88();
  isa = sub_1001F6988().super.isa;

  v24 = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:&v24];

  v4 = v24;
  if (v3)
  {
    v5 = sub_1001F63C8();
    v7 = v6;

    v8 = *(v0 + 56);
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = sub_1001F63A8().super.isa;
      sub_1000BFC24();
      v10 = sub_1001F6B48();

      [v8 transactionUpdated:v9 forBundleID:v10];
      sub_10003A380(v5, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_10001B230(&qword_1002AC510);
      }

      v20 = sub_1001F6688();
      sub_10009951C(v20, qword_1002E6180);
      v21 = sub_1001F6668();
      v22 = sub_1001F7298();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_10003A87C();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unable to communicate with daemon to notify of updated transaction", v23, 2u);
        sub_10003A72C(v23);
      }

      sub_10003A380(v5, v7);
    }
  }

  else
  {
    v11 = v4;
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v12 = sub_1001F6688();
    sub_10009951C(v12, qword_1002E6180);
    swift_errorRetain();
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_1001F7FE8();
      v19 = sub_1000E4544(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error serializing transaction for updated transaction: %{public}s", v15, 0xCu);
      sub_100019CCC(v16);
      sub_10003A72C(v16);
      sub_10003A72C(v15);
    }

    else
    {
    }
  }
}