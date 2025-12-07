uint64_t sub_10007FB14(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1001D0980();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10007FBA4, 0, 0);
}

uint64_t sub_10007FBA4()
{
  v81 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v0 + 88) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 72);
    v10 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v65 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v66 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v67 = swift_task_alloc();
        *(v0 + 96) = v67;
        *v67 = v0;
        v67[1] = sub_100080414;
        v56 = v0 + 48;
LABEL_113:
        v57 = v65;
        v58 = v66;

        return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v56 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      v56 = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v59 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v59);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 72) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (!v5)
    {
      v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v77 = *(v0 + 8);
  }

  else
  {
    v60 = *(v0 + 72);
    if (v5)
    {
      v61 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v61;
      v62 = *(v60 + v61);
      v63 = *(v60 + v61 + 8);
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v62 + 16);
        v72 = *(v62 + 24);
        v17 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v17)
        {
          goto LABEL_142;
        }

        if (v74 < v5)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v64)
        {
          if (BYTE6(v63) >= v5)
          {
            goto LABEL_118;
          }

LABEL_112:
          v65 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v66 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
          v75 = swift_task_alloc();
          *(v0 + 112) = v75;
          *v75 = v0;
          v75[1] = sub_1000816C0;
          v56 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v62) - v62 < v5)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v62, v63);
      sub_10007A708(v5, v62, v63, v79);
      v69 = *(&v79[0] + 1);
      v68 = *&v79[0];
      sub_10008570C(v5);
      v60 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v76 = v60 + *(v0 + 128);
    *v76 = 0;
    *(v76 + 8) = 2;
    v70 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v77 = *(v0 + 8);
  }

  return v77();
}

uint64_t sub_100080414()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100080E50;
  }

  else
  {
    v2 = sub_100080528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100080528(uint64_t a1)
{
  v89 = v1;
  v2 = *(v1 + 56);
  v3 = *(v1 + 72);
  v4 = (v3 + *(v1 + 132));
  if (v2 >> 60 == 15)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      if (v5 == v5 >> 32)
      {
LABEL_11:
        v10 = v3 + *(v1 + 128);
        *v10 = 0;
        *(v10 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v3 + *(v1 + 128);
    sub_100089CEC();
    *v9 = swift_allocError();
    *(v9 + 8) = 1;
  }

  else
  {
    v8 = *(v1 + 48);
    sub_1001CFC30();
    sub_10002683C(v8, v2);
  }

LABEL_12:
  v11 = *(v1 + 104);
  v12 = (*(v1 + 72) + *(v1 + 128));
  v13 = *v12;
  v14 = *(v12 + 8);
  while (v14 == 2)
  {
    v17 = *(v1 + 72);
    v18 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v18;
    v19 = v17 + v18;
    v20 = *(v17 + v18);
    v21 = *(v17 + v18 + 8);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_115;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_151;
      }

      if (v26 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_150;
      }

      if (HIDWORD(v20) - v20 < 4)
      {
LABEL_115:
        v73 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v74 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v75 = swift_task_alloc();
        *(v1 + 96) = v75;
        *v75 = v1;
        v75[1] = sub_100080414;
        v64 = v1 + 48;
LABEL_124:
        v65 = v73;
        v66 = v74;

        return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
      }
    }

    else if (BYTE6(v21) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v22 == 2)
    {
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        v29 = 0;
        v28 = BYTE6(v21);
        v30 = BYTE6(v21);
        goto LABEL_35;
      }

      v27 = v20;
      v28 = v20 >> 32;
    }

    if (v28 < v27)
    {
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
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
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
      sub_1001CF890();
LABEL_158:
      __break(1u);
LABEL_159:
      v64 = sub_1001CF890();
      __break(1u);
LABEL_160:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
    }

    if (v22 == 2)
    {
      v29 = *(v20 + 16);
      v30 = *(v20 + 24);
    }

    else
    {
      v29 = v20;
      v30 = v20 >> 32;
    }

LABEL_35:
    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_139;
    }

    v25 = __OFSUB__(v28, v27);
    v32 = v28 - v27;
    if (v25)
    {
      goto LABEL_140;
    }

    if (v32 < 4)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_63;
        }

        v33 = v20 >> 32;
LABEL_58:
        if (v33 < v20)
        {
          goto LABEL_138;
        }

        goto LABEL_63;
      }

      v33 = *(v20 + 24);
      goto LABEL_60;
    }

    v33 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_147;
    }

    if (v22 == 2)
    {
      v34 = *(v20 + 16);
      v35 = *(v20 + 24);
    }

    else if (v22 == 1)
    {
      v34 = v20;
      v35 = v20 >> 32;
    }

    else
    {
      v34 = 0;
      v35 = BYTE6(v21);
    }

    if (v35 < v33 || v33 < v34)
    {
      goto LABEL_148;
    }

    if (v22)
    {
      if (v22 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v33 < *(v20 + 16))
      {
        goto LABEL_138;
      }

      goto LABEL_63;
    }

    if (v33 < 0)
    {
      goto LABEL_138;
    }

LABEL_63:
    v37 = sub_1001CFBC0();
    v39 = v38;
    v40 = *v19;
    v41 = *(v19 + 8);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v45 = 0;
        v43 = 0;
        v46 = 0;
        v44 = 0;
        goto LABEL_74;
      }

      v43 = *(v40 + 16);
      v45 = *(v40 + 24);
    }

    else
    {
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = BYTE6(v41);
        v46 = BYTE6(v41);
        goto LABEL_74;
      }

      v43 = v40;
      v45 = v40 >> 32;
    }

    if (v45 < v43)
    {
      goto LABEL_141;
    }

    if (v42 == 2)
    {
      v44 = *(v40 + 16);
      v46 = *(v40 + 24);
    }

    else
    {
      v44 = v40;
      v46 = v40 >> 32;
    }

LABEL_74:
    if (v46 < v45 || v45 < v44)
    {
      goto LABEL_142;
    }

    v25 = __OFSUB__(v45, v43);
    v47 = v45 - v43;
    if (v25)
    {
      goto LABEL_143;
    }

    if (v47 < 4)
    {
      goto LABEL_149;
    }

    v48 = v43 + 4;
    if (__OFADD__(v43, 4))
    {
      goto LABEL_144;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v49 = *(v40 + 16);
        v50 = *(v40 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else if (v42)
    {
      v49 = v40;
      v50 = v40 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v41);
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_145;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v51 = *(v40 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v42)
    {
      v51 = v40 >> 32;
    }

    else
    {
      v51 = BYTE6(v41);
    }

    sub_100012038(*v19, *(v19 + 8));
    sub_100011E48(v40, v41);
    if (v51 < v48)
    {
      goto LABEL_146;
    }

    v52 = sub_1001CFBC0();
    v54 = v53;
    sub_100011E48(v40, v41);
    *v19 = v52;
    *(v19 + 8) = v54;
    v55 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v55 != 2)
      {
        sub_100011E48(v37, v39);
        v15 = 0;
        goto LABEL_14;
      }

      v56 = *(v37 + 16);
      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_157;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_153;
      }

      v60 = (v56 - v59 + v58);
      sub_1001CF890();
      if (!v60)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!v55)
      {
        sub_100011E48(v37, v39);
        v15 = bswap32(v37);
        goto LABEL_14;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_152;
      }

      v61 = sub_1001CF870();
      if (!v61)
      {
        goto LABEL_159;
      }

      v62 = v61;
      v63 = sub_1001CF8A0();
      if (__OFSUB__(v37, v63))
      {
        goto LABEL_154;
      }

      v60 = (v37 - v63 + v62);
      v64 = sub_1001CF890();
      if (!v60)
      {
        goto LABEL_160;
      }
    }

    v67 = *v60;
    sub_100011E48(v37, v39);
    v15 = bswap32(v67);
LABEL_14:
    v14 = 0;
    v16 = *(v1 + 72) + *(v1 + 128);
    v13 = v15;
    *v16 = v15;
    *(v16 + 8) = 0;
  }

  if (v14)
  {
    if (v13)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_131;
    }

    v78 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    v79 = 1;
    goto LABEL_133;
  }

  v68 = *(v1 + 72);
  if (v13)
  {
    v69 = *(*(v1 + 88) + 76);
    *(v1 + 136) = v69;
    v70 = *(v68 + v69);
    v71 = *(v68 + v69 + 8);
    v72 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_123;
      }

      v81 = *(v70 + 16);
      v80 = *(v70 + 24);
      v25 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v25)
      {
        goto LABEL_155;
      }

      if (v82 < v13)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (!v72)
      {
        if (BYTE6(v71) >= v13)
        {
          goto LABEL_129;
        }

LABEL_123:
        v73 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v74 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v83 = swift_task_alloc();
        *(v1 + 112) = v83;
        *v83 = v1;
        v83[1] = sub_1000816C0;
        v64 = v1 + 32;
        goto LABEL_124;
      }

      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_156;
      }

      if (HIDWORD(v70) - v70 < v13)
      {
        goto LABEL_123;
      }
    }

LABEL_129:
    sub_100012038(v70, v71);
    sub_10007A708(v13, v70, v71, v87);
    v77 = *(&v87[0] + 1);
    v76 = *&v87[0];
    sub_10008570C(v13);
    v68 = *(v1 + 72);
  }

  else
  {
    v76 = 0;
    v77 = 0xC000000000000000;
  }

  v84 = v68 + *(v1 + 128);
  *v84 = 0;
  *(v84 + 8) = 2;
  v78 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v1 + 16) = v76;
  *(v1 + 24) = v77;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  sub_100012038(v76, v77);
  sub_1001D0970();
  sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001D0B10();
  sub_100011E48(v76, v77);
  if (!v11)
  {
    v79 = 0;
LABEL_133:
    (*(*(v78 - 8) + 56))(*(v1 + 64), v79, 1, v78);

    v85 = *(v1 + 8);
    goto LABEL_134;
  }

LABEL_131:

  v85 = *(v1 + 8);
LABEL_134:

  return v85();
}

uint64_t sub_100080E50(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 72) + *(v1 + 128);
  *v2 = *(v1 + 104);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 72) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 72);
    v9 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v64 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v65 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v66 = swift_task_alloc();
        *(v1 + 96) = v66;
        *v66 = v1;
        v66[1] = sub_100080414;
        v55 = v1 + 48;
LABEL_113:
        v56 = v64;
        v57 = v65;

        return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v55 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      v55 = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v58 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v58);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 72) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (!v4)
    {
      v69 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v70 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v76 = *(v1 + 8);
  }

  else
  {
    v59 = *(v1 + 72);
    if (v4)
    {
      v60 = *(*(v1 + 88) + 76);
      *(v1 + 136) = v60;
      v61 = *(v59 + v60);
      v62 = *(v59 + v60 + 8);
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 != 2)
        {
          goto LABEL_112;
        }

        v72 = *(v61 + 16);
        v71 = *(v61 + 24);
        v16 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v16)
        {
          goto LABEL_142;
        }

        if (v73 < v4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v63)
        {
          if (BYTE6(v62) >= v4)
          {
            goto LABEL_118;
          }

LABEL_112:
          v64 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v65 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
          v74 = swift_task_alloc();
          *(v1 + 112) = v74;
          *v74 = v1;
          v74[1] = sub_1000816C0;
          v55 = v1 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v61) - v61 < v4)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v61, v62);
      sub_10007A708(v4, v61, v62, v78);
      v68 = *(&v78[0] + 1);
      v67 = *&v78[0];
      sub_10008570C(v4);
      v59 = *(v1 + 72);
    }

    else
    {
      v67 = 0;
      v68 = 0xC000000000000000;
    }

    v75 = v59 + *(v1 + 128);
    *v75 = 0;
    *(v75 + 8) = 2;
    v69 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v1 + 16) = v67;
    *(v1 + 24) = v68;
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    sub_100012038(v67, v68);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v67, v68);
    v70 = 0;
LABEL_120:
    (*(*(v69 - 8) + 56))(*(v1 + 64), v70, 1, v69);

    v76 = *(v1 + 8);
  }

  return v76();
}

uint64_t sub_1000816C0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000820A0;
  }

  else
  {
    v2 = sub_1000817D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000817D4()
{
  v82 = v0;
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 72) + *(v0 + 128);
    sub_100089CEC();
    *v2 = swift_allocError();
    *(v2 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 32);
    sub_1001CFC30();
    sub_10002683C(v3, v1);
  }

  v4 = *(v0 + 120);
  v5 = (*(v0 + 72) + *(v0 + 128));
  v6 = *v5;
  v7 = *(v5 + 8);
  while (v7 == 2)
  {
    v10 = *(v0 + 72);
    v11 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v11;
    v12 = v10 + v11;
    v13 = *(v10 + v11);
    v14 = *(v10 + v11 + 8);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_107;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_143;
      }

      if (v19 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v15)
    {
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_142;
      }

      if (HIDWORD(v13) - v13 < 4)
      {
LABEL_107:
        v66 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v67 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v68 = swift_task_alloc();
        *(v0 + 96) = v68;
        *v68 = v0;
        v68[1] = sub_100080414;
        v57 = v0 + 48;
LABEL_116:
        v58 = v66;
        v59 = v67;

        return dispatch thunk of AsyncIteratorProtocol.next()(v57, v58, v59);
      }
    }

    else if (BYTE6(v14) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v15 == 2)
    {
      v20 = *(v13 + 16);
      v21 = *(v13 + 24);
    }

    else
    {
      if (v15 != 1)
      {
        v20 = 0;
        v22 = 0;
        v21 = BYTE6(v14);
        v23 = BYTE6(v14);
        goto LABEL_27;
      }

      v20 = v13;
      v21 = v13 >> 32;
    }

    if (v21 < v20)
    {
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
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_1001CF890();
LABEL_150:
      __break(1u);
LABEL_151:
      v57 = sub_1001CF890();
      __break(1u);
LABEL_152:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v57, v58, v59);
    }

    if (v15 == 2)
    {
      v22 = *(v13 + 16);
      v23 = *(v13 + 24);
    }

    else
    {
      v22 = v13;
      v23 = v13 >> 32;
    }

LABEL_27:
    if (v23 < v21 || v21 < v22)
    {
      goto LABEL_131;
    }

    v18 = __OFSUB__(v21, v20);
    v25 = v21 - v20;
    if (v18)
    {
      goto LABEL_132;
    }

    if (v25 < 4)
    {
      if (v15 != 2)
      {
        if (v15 != 1)
        {
          goto LABEL_55;
        }

        v26 = v13 >> 32;
LABEL_50:
        if (v26 < v13)
        {
          goto LABEL_130;
        }

        goto LABEL_55;
      }

      v26 = *(v13 + 24);
      goto LABEL_52;
    }

    v26 = v20 + 4;
    if (__OFADD__(v20, 4))
    {
      goto LABEL_139;
    }

    if (v15 == 2)
    {
      v27 = *(v13 + 16);
      v28 = *(v13 + 24);
    }

    else if (v15 == 1)
    {
      v27 = v13;
      v28 = v13 >> 32;
    }

    else
    {
      v27 = 0;
      v28 = BYTE6(v14);
    }

    if (v28 < v26 || v26 < v27)
    {
      goto LABEL_140;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v26 < *(v13 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_55;
    }

    if (v26 < 0)
    {
      goto LABEL_130;
    }

LABEL_55:
    v30 = sub_1001CFBC0();
    v32 = v31;
    v33 = *v12;
    v34 = *(v12 + 8);
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        v38 = 0;
        v36 = 0;
        v39 = 0;
        v37 = 0;
        goto LABEL_66;
      }

      v36 = *(v33 + 16);
      v38 = *(v33 + 24);
    }

    else
    {
      if (!v35)
      {
        v36 = 0;
        v37 = 0;
        v38 = BYTE6(v34);
        v39 = BYTE6(v34);
        goto LABEL_66;
      }

      v36 = v33;
      v38 = v33 >> 32;
    }

    if (v38 < v36)
    {
      goto LABEL_133;
    }

    if (v35 == 2)
    {
      v37 = *(v33 + 16);
      v39 = *(v33 + 24);
    }

    else
    {
      v37 = v33;
      v39 = v33 >> 32;
    }

LABEL_66:
    if (v39 < v38 || v38 < v37)
    {
      goto LABEL_134;
    }

    v18 = __OFSUB__(v38, v36);
    v40 = v38 - v36;
    if (v18)
    {
      goto LABEL_135;
    }

    if (v40 < 4)
    {
      goto LABEL_141;
    }

    v41 = v36 + 4;
    if (__OFADD__(v36, 4))
    {
      goto LABEL_136;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v42 = *(v33 + 16);
        v43 = *(v33 + 24);
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }
    }

    else if (v35)
    {
      v42 = v33;
      v43 = v33 >> 32;
    }

    else
    {
      v42 = 0;
      v43 = BYTE6(v34);
    }

    if (v43 < v41 || v41 < v42)
    {
      goto LABEL_137;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v44 = *(v33 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else if (v35)
    {
      v44 = v33 >> 32;
    }

    else
    {
      v44 = BYTE6(v34);
    }

    sub_100012038(*v12, *(v12 + 8));
    sub_100011E48(v33, v34);
    if (v44 < v41)
    {
      goto LABEL_138;
    }

    v45 = sub_1001CFBC0();
    v47 = v46;
    sub_100011E48(v33, v34);
    *v12 = v45;
    *(v12 + 8) = v47;
    v48 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v48 != 2)
      {
        sub_100011E48(v30, v32);
        v8 = 0;
        goto LABEL_6;
      }

      v49 = *(v30 + 16);
      v50 = sub_1001CF870();
      if (!v50)
      {
        goto LABEL_149;
      }

      v51 = v50;
      v52 = sub_1001CF8A0();
      if (__OFSUB__(v49, v52))
      {
        goto LABEL_145;
      }

      v53 = (v49 - v52 + v51);
      sub_1001CF890();
      if (!v53)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (!v48)
      {
        sub_100011E48(v30, v32);
        v8 = bswap32(v30);
        goto LABEL_6;
      }

      if (v30 > v30 >> 32)
      {
        goto LABEL_144;
      }

      v54 = sub_1001CF870();
      if (!v54)
      {
        goto LABEL_151;
      }

      v55 = v54;
      v56 = sub_1001CF8A0();
      if (__OFSUB__(v30, v56))
      {
        goto LABEL_146;
      }

      v53 = (v30 - v56 + v55);
      v57 = sub_1001CF890();
      if (!v53)
      {
        goto LABEL_152;
      }
    }

    v60 = *v53;
    sub_100011E48(v30, v32);
    v8 = bswap32(v60);
LABEL_6:
    v7 = 0;
    v9 = *(v0 + 72) + *(v0 + 128);
    v6 = v8;
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  if (v7)
  {
    if (v6)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_123;
    }

    v71 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    v72 = 1;
    goto LABEL_125;
  }

  v61 = *(v0 + 72);
  if (v6)
  {
    v62 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v62;
    v63 = *(v61 + v62);
    v64 = *(v61 + v62 + 8);
    v65 = v64 >> 62;
    if ((v64 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_115;
      }

      v74 = *(v63 + 16);
      v73 = *(v63 + 24);
      v18 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v18)
      {
        goto LABEL_147;
      }

      if (v75 < v6)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (!v65)
      {
        if (BYTE6(v64) >= v6)
        {
          goto LABEL_121;
        }

LABEL_115:
        v66 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v67 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v76 = swift_task_alloc();
        *(v0 + 112) = v76;
        *v76 = v0;
        v76[1] = sub_1000816C0;
        v57 = v0 + 32;
        goto LABEL_116;
      }

      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_148;
      }

      if (HIDWORD(v63) - v63 < v6)
      {
        goto LABEL_115;
      }
    }

LABEL_121:
    sub_100012038(v63, v64);
    sub_10007A708(v6, v63, v64, v80);
    v70 = *(&v80[0] + 1);
    v69 = *&v80[0];
    sub_10008570C(v6);
    v61 = *(v0 + 72);
  }

  else
  {
    v69 = 0;
    v70 = 0xC000000000000000;
  }

  v77 = v61 + *(v0 + 128);
  *v77 = 0;
  *(v77 + 8) = 2;
  v71 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v0 + 16) = v69;
  *(v0 + 24) = v70;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  sub_100012038(v69, v70);
  sub_1001D0970();
  sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001D0B10();
  sub_100011E48(v69, v70);
  if (!v4)
  {
    v72 = 0;
LABEL_125:
    (*(*(v71 - 8) + 56))(*(v0 + 64), v72, 1, v71);

    v78 = *(v0 + 8);
    goto LABEL_126;
  }

LABEL_123:

  v78 = *(v0 + 8);
LABEL_126:

  return v78();
}

uint64_t sub_1000820A0(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 72) + *(v1 + 128);
  *v2 = *(v1 + 120);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 72) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 72);
    v9 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v64 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
        v65 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
        v66 = swift_task_alloc();
        *(v1 + 96) = v66;
        *v66 = v1;
        v66[1] = sub_100080414;
        v55 = v1 + 48;
LABEL_113:
        v56 = v64;
        v57 = v65;

        return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v55 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      v55 = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v58 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v58);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 72) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (!v4)
    {
      v69 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
      v70 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v76 = *(v1 + 8);
  }

  else
  {
    v59 = *(v1 + 72);
    if (v4)
    {
      v60 = *(*(v1 + 88) + 76);
      *(v1 + 136) = v60;
      v61 = *(v59 + v60);
      v62 = *(v59 + v60 + 8);
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 != 2)
        {
          goto LABEL_112;
        }

        v72 = *(v61 + 16);
        v71 = *(v61 + 24);
        v16 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v16)
        {
          goto LABEL_142;
        }

        if (v73 < v4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v63)
        {
          if (BYTE6(v62) >= v4)
          {
            goto LABEL_118;
          }

LABEL_112:
          v64 = sub_100011AC0(&qword_100229610, &qword_1001D69B8);
          v65 = sub_100024B78(&qword_100229618, &qword_100229610, &qword_1001D69B8, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>.Iterator);
          v74 = swift_task_alloc();
          *(v1 + 112) = v74;
          *v74 = v1;
          v74[1] = sub_1000816C0;
          v55 = v1 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v61) - v61 < v4)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v61, v62);
      sub_10007A708(v4, v61, v62, v78);
      v68 = *(&v78[0] + 1);
      v67 = *&v78[0];
      sub_10008570C(v4);
      v59 = *(v1 + 72);
    }

    else
    {
      v67 = 0;
      v68 = 0xC000000000000000;
    }

    v75 = v59 + *(v1 + 128);
    *v75 = 0;
    *(v75 + 8) = 2;
    v69 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
    *(v1 + 16) = v67;
    *(v1 + 24) = v68;
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    sub_100012038(v67, v68);
    sub_1001D0970();
    sub_10008A830(&qword_100229608, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse, &protocol conformance descriptor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_1001D0B10();
    sub_100011E48(v67, v68);
    v70 = 0;
LABEL_120:
    (*(*(v69 - 8) + 56))(*(v1 + 64), v70, 1, v69);

    v76 = *(v1 + 8);
  }

  return v76();
}

uint64_t sub_100082910(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1001D0980();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000829A0, 0, 0);
}

uint64_t sub_1000829A0()
{
  v81 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100011AC0(&qword_100229620, &qword_1001D69C8);
  *(v0 + 88) = v2;
  v3 = *(v2 + 80);
  *(v0 + 128) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = *(v4 + 8);
  while (v6 == 2)
  {
    v9 = *(v0 + 72);
    v10 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v10;
    v11 = v9 + v10;
    v12 = *(v9 + v10);
    v13 = *(v9 + v10 + 8);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_104;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_138;
      }

      if (v18 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v14)
    {
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v12) - v12 < 4)
      {
LABEL_104:
        v65 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v66 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v67 = swift_task_alloc();
        *(v0 + 96) = v67;
        *v67 = v0;
        v67[1] = sub_100083210;
        v56 = v0 + 48;
LABEL_113:
        v57 = v65;
        v58 = v66;

        return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
      }
    }

    else if (BYTE6(v13) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v14 == 2)
    {
      v19 = *(v12 + 16);
      v20 = *(v12 + 24);
    }

    else
    {
      if (v14 != 1)
      {
        v19 = 0;
        v21 = 0;
        v20 = BYTE6(v13);
        v22 = BYTE6(v13);
        goto LABEL_24;
      }

      v19 = v12;
      v20 = v12 >> 32;
    }

    if (v20 < v19)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v56 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v56, v57, v58);
    }

    if (v14 == 2)
    {
      v21 = *(v12 + 16);
      v22 = *(v12 + 24);
    }

    else
    {
      v21 = v12;
      v22 = v12 >> 32;
    }

LABEL_24:
    if (v22 < v20 || v20 < v21)
    {
      goto LABEL_126;
    }

    v17 = __OFSUB__(v20, v19);
    v24 = v20 - v19;
    if (v17)
    {
      goto LABEL_127;
    }

    if (v24 < 4)
    {
      if (v14 != 2)
      {
        if (v14 != 1)
        {
          goto LABEL_52;
        }

        v25 = v12 >> 32;
LABEL_47:
        if (v25 < v12)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v25 = *(v12 + 24);
      goto LABEL_49;
    }

    v25 = v19 + 4;
    if (__OFADD__(v19, 4))
    {
      goto LABEL_134;
    }

    if (v14 == 2)
    {
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);
    }

    else if (v14 == 1)
    {
      v26 = v12;
      v27 = v12 >> 32;
    }

    else
    {
      v26 = 0;
      v27 = BYTE6(v13);
    }

    if (v27 < v25 || v25 < v26)
    {
      goto LABEL_135;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v25 < *(v12 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v25 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v29 = sub_1001CFBC0();
    v31 = v30;
    v32 = *v11;
    v33 = *(v11 + 8);
    v34 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v37 = 0;
        v35 = 0;
        v38 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v35 = *(v32 + 16);
      v37 = *(v32 + 24);
    }

    else
    {
      if (!v34)
      {
        v35 = 0;
        v36 = 0;
        v37 = BYTE6(v33);
        v38 = BYTE6(v33);
        goto LABEL_63;
      }

      v35 = v32;
      v37 = v32 >> 32;
    }

    if (v37 < v35)
    {
      goto LABEL_128;
    }

    if (v34 == 2)
    {
      v36 = *(v32 + 16);
      v38 = *(v32 + 24);
    }

    else
    {
      v36 = v32;
      v38 = v32 >> 32;
    }

LABEL_63:
    if (v38 < v37 || v37 < v36)
    {
      goto LABEL_129;
    }

    v17 = __OFSUB__(v37, v35);
    v39 = v37 - v35;
    if (v17)
    {
      goto LABEL_130;
    }

    if (v39 < 4)
    {
      goto LABEL_136;
    }

    v40 = v35 + 4;
    if (__OFADD__(v35, 4))
    {
      goto LABEL_131;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v41 = *(v32 + 16);
        v42 = *(v32 + 24);
      }

      else
      {
        v42 = 0;
        v41 = 0;
      }
    }

    else if (v34)
    {
      v41 = v32;
      v42 = v32 >> 32;
    }

    else
    {
      v41 = 0;
      v42 = BYTE6(v33);
    }

    if (v42 < v40 || v40 < v41)
    {
      goto LABEL_132;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v43 = *(v32 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v34)
    {
      v43 = v32 >> 32;
    }

    else
    {
      v43 = BYTE6(v33);
    }

    sub_100012038(*v11, *(v11 + 8));
    sub_100011E48(v32, v33);
    if (v43 < v40)
    {
      goto LABEL_133;
    }

    v44 = sub_1001CFBC0();
    v46 = v45;
    sub_100011E48(v32, v33);
    *v11 = v44;
    *(v11 + 8) = v46;
    v47 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v47 != 2)
      {
        sub_100011E48(v29, v31);
        v7 = 0;
        goto LABEL_3;
      }

      v48 = *(v29 + 16);
      v49 = sub_1001CF870();
      if (!v49)
      {
        goto LABEL_144;
      }

      v50 = v49;
      v51 = sub_1001CF8A0();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_140;
      }

      v52 = (v48 - v51 + v50);
      sub_1001CF890();
      if (!v52)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v47)
      {
        sub_100011E48(v29, v31);
        v7 = bswap32(v29);
        goto LABEL_3;
      }

      if (v29 > v29 >> 32)
      {
        goto LABEL_139;
      }

      v53 = sub_1001CF870();
      if (!v53)
      {
        goto LABEL_146;
      }

      v54 = v53;
      v55 = sub_1001CF8A0();
      if (__OFSUB__(v29, v55))
      {
        goto LABEL_141;
      }

      v52 = (v29 - v55 + v54);
      v56 = sub_1001CF890();
      if (!v52)
      {
        goto LABEL_147;
      }
    }

    v59 = *v52;
    sub_100011E48(v29, v31);
    v7 = bswap32(v59);
LABEL_3:
    v6 = 0;
    v8 = *(v0 + 72) + *(v0 + 128);
    v5 = v7;
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  if (v6)
  {
    if (!v5)
    {
      v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v71 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v77 = *(v0 + 8);
  }

  else
  {
    v60 = *(v0 + 72);
    if (v5)
    {
      v61 = *(*(v0 + 88) + 76);
      *(v0 + 136) = v61;
      v62 = *(v60 + v61);
      v63 = *(v60 + v61 + 8);
      v64 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v64 != 2)
        {
          goto LABEL_112;
        }

        v73 = *(v62 + 16);
        v72 = *(v62 + 24);
        v17 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v17)
        {
          goto LABEL_142;
        }

        if (v74 < v5)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v64)
        {
          if (BYTE6(v63) >= v5)
          {
            goto LABEL_118;
          }

LABEL_112:
          v65 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v66 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
          v75 = swift_task_alloc();
          *(v0 + 112) = v75;
          *v75 = v0;
          v75[1] = sub_1000844BC;
          v56 = v0 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v62) - v62 < v5)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v62, v63);
      sub_10007A708(v5, v62, v63, v79);
      v69 = *(&v79[0] + 1);
      v68 = *&v79[0];
      sub_10008570C(v5);
      v60 = *(v0 + 72);
    }

    else
    {
      v68 = 0;
      v69 = 0xC000000000000000;
    }

    v76 = v60 + *(v0 + 128);
    *v76 = 0;
    *(v76 + 8) = 2;
    v70 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_100012038(v68, v69);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v68, v69);
    v71 = 0;
LABEL_120:
    (*(*(v70 - 8) + 56))(*(v0 + 64), v71, 1, v70);

    v77 = *(v0 + 8);
  }

  return v77();
}

uint64_t sub_100083210()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100083C4C;
  }

  else
  {
    v2 = sub_100083324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100083324(uint64_t a1)
{
  v89 = v1;
  v2 = *(v1 + 56);
  v3 = *(v1 + 72);
  v4 = (v3 + *(v1 + 132));
  if (v2 >> 60 == 15)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      if (v5 == v5 >> 32)
      {
LABEL_11:
        v10 = v3 + *(v1 + 128);
        *v10 = 0;
        *(v10 + 8) = 1;
        goto LABEL_12;
      }
    }

    else if ((v6 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v9 = v3 + *(v1 + 128);
    sub_100089CEC();
    *v9 = swift_allocError();
    *(v9 + 8) = 1;
  }

  else
  {
    v8 = *(v1 + 48);
    sub_1001CFC30();
    sub_10002683C(v8, v2);
  }

LABEL_12:
  v11 = *(v1 + 104);
  v12 = (*(v1 + 72) + *(v1 + 128));
  v13 = *v12;
  v14 = *(v12 + 8);
  while (v14 == 2)
  {
    v17 = *(v1 + 72);
    v18 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v18;
    v19 = v17 + v18;
    v20 = *(v17 + v18);
    v21 = *(v17 + v18 + 8);
    v22 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_115;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v25)
      {
        goto LABEL_151;
      }

      if (v26 < 4)
      {
        goto LABEL_115;
      }
    }

    else if (v22)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_150;
      }

      if (HIDWORD(v20) - v20 < 4)
      {
LABEL_115:
        v73 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v74 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v75 = swift_task_alloc();
        *(v1 + 96) = v75;
        *v75 = v1;
        v75[1] = sub_100083210;
        v64 = v1 + 48;
LABEL_124:
        v65 = v73;
        v66 = v74;

        return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
      }
    }

    else if (BYTE6(v21) < 4uLL)
    {
      goto LABEL_115;
    }

    if (v22 == 2)
    {
      v27 = *(v20 + 16);
      v28 = *(v20 + 24);
    }

    else
    {
      if (v22 != 1)
      {
        v27 = 0;
        v29 = 0;
        v28 = BYTE6(v21);
        v30 = BYTE6(v21);
        goto LABEL_35;
      }

      v27 = v20;
      v28 = v20 >> 32;
    }

    if (v28 < v27)
    {
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
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
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
      sub_1001CF890();
LABEL_158:
      __break(1u);
LABEL_159:
      v64 = sub_1001CF890();
      __break(1u);
LABEL_160:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v64, v65, v66);
    }

    if (v22 == 2)
    {
      v29 = *(v20 + 16);
      v30 = *(v20 + 24);
    }

    else
    {
      v29 = v20;
      v30 = v20 >> 32;
    }

LABEL_35:
    if (v30 < v28 || v28 < v29)
    {
      goto LABEL_139;
    }

    v25 = __OFSUB__(v28, v27);
    v32 = v28 - v27;
    if (v25)
    {
      goto LABEL_140;
    }

    if (v32 < 4)
    {
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          goto LABEL_63;
        }

        v33 = v20 >> 32;
LABEL_58:
        if (v33 < v20)
        {
          goto LABEL_138;
        }

        goto LABEL_63;
      }

      v33 = *(v20 + 24);
      goto LABEL_60;
    }

    v33 = v27 + 4;
    if (__OFADD__(v27, 4))
    {
      goto LABEL_147;
    }

    if (v22 == 2)
    {
      v34 = *(v20 + 16);
      v35 = *(v20 + 24);
    }

    else if (v22 == 1)
    {
      v34 = v20;
      v35 = v20 >> 32;
    }

    else
    {
      v34 = 0;
      v35 = BYTE6(v21);
    }

    if (v35 < v33 || v33 < v34)
    {
      goto LABEL_148;
    }

    if (v22)
    {
      if (v22 == 1)
      {
        goto LABEL_58;
      }

LABEL_60:
      if (v33 < *(v20 + 16))
      {
        goto LABEL_138;
      }

      goto LABEL_63;
    }

    if (v33 < 0)
    {
      goto LABEL_138;
    }

LABEL_63:
    v37 = sub_1001CFBC0();
    v39 = v38;
    v40 = *v19;
    v41 = *(v19 + 8);
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        v45 = 0;
        v43 = 0;
        v46 = 0;
        v44 = 0;
        goto LABEL_74;
      }

      v43 = *(v40 + 16);
      v45 = *(v40 + 24);
    }

    else
    {
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
        v45 = BYTE6(v41);
        v46 = BYTE6(v41);
        goto LABEL_74;
      }

      v43 = v40;
      v45 = v40 >> 32;
    }

    if (v45 < v43)
    {
      goto LABEL_141;
    }

    if (v42 == 2)
    {
      v44 = *(v40 + 16);
      v46 = *(v40 + 24);
    }

    else
    {
      v44 = v40;
      v46 = v40 >> 32;
    }

LABEL_74:
    if (v46 < v45 || v45 < v44)
    {
      goto LABEL_142;
    }

    v25 = __OFSUB__(v45, v43);
    v47 = v45 - v43;
    if (v25)
    {
      goto LABEL_143;
    }

    if (v47 < 4)
    {
      goto LABEL_149;
    }

    v48 = v43 + 4;
    if (__OFADD__(v43, 4))
    {
      goto LABEL_144;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v49 = *(v40 + 16);
        v50 = *(v40 + 24);
      }

      else
      {
        v50 = 0;
        v49 = 0;
      }
    }

    else if (v42)
    {
      v49 = v40;
      v50 = v40 >> 32;
    }

    else
    {
      v49 = 0;
      v50 = BYTE6(v41);
    }

    if (v50 < v48 || v48 < v49)
    {
      goto LABEL_145;
    }

    if (v42 > 1)
    {
      if (v42 == 2)
      {
        v51 = *(v40 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else if (v42)
    {
      v51 = v40 >> 32;
    }

    else
    {
      v51 = BYTE6(v41);
    }

    sub_100012038(*v19, *(v19 + 8));
    sub_100011E48(v40, v41);
    if (v51 < v48)
    {
      goto LABEL_146;
    }

    v52 = sub_1001CFBC0();
    v54 = v53;
    sub_100011E48(v40, v41);
    *v19 = v52;
    *(v19 + 8) = v54;
    v55 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v55 != 2)
      {
        sub_100011E48(v37, v39);
        v15 = 0;
        goto LABEL_14;
      }

      v56 = *(v37 + 16);
      v57 = sub_1001CF870();
      if (!v57)
      {
        goto LABEL_157;
      }

      v58 = v57;
      v59 = sub_1001CF8A0();
      if (__OFSUB__(v56, v59))
      {
        goto LABEL_153;
      }

      v60 = (v56 - v59 + v58);
      sub_1001CF890();
      if (!v60)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (!v55)
      {
        sub_100011E48(v37, v39);
        v15 = bswap32(v37);
        goto LABEL_14;
      }

      if (v37 > v37 >> 32)
      {
        goto LABEL_152;
      }

      v61 = sub_1001CF870();
      if (!v61)
      {
        goto LABEL_159;
      }

      v62 = v61;
      v63 = sub_1001CF8A0();
      if (__OFSUB__(v37, v63))
      {
        goto LABEL_154;
      }

      v60 = (v37 - v63 + v62);
      v64 = sub_1001CF890();
      if (!v60)
      {
        goto LABEL_160;
      }
    }

    v67 = *v60;
    sub_100011E48(v37, v39);
    v15 = bswap32(v67);
LABEL_14:
    v14 = 0;
    v16 = *(v1 + 72) + *(v1 + 128);
    v13 = v15;
    *v16 = v15;
    *(v16 + 8) = 0;
  }

  if (v14)
  {
    if (v13)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_131;
    }

    v78 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    v79 = 1;
    goto LABEL_133;
  }

  v68 = *(v1 + 72);
  if (v13)
  {
    v69 = *(*(v1 + 88) + 76);
    *(v1 + 136) = v69;
    v70 = *(v68 + v69);
    v71 = *(v68 + v69 + 8);
    v72 = v71 >> 62;
    if ((v71 >> 62) > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_123;
      }

      v81 = *(v70 + 16);
      v80 = *(v70 + 24);
      v25 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v25)
      {
        goto LABEL_155;
      }

      if (v82 < v13)
      {
        goto LABEL_123;
      }
    }

    else
    {
      if (!v72)
      {
        if (BYTE6(v71) >= v13)
        {
          goto LABEL_129;
        }

LABEL_123:
        v73 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v74 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v83 = swift_task_alloc();
        *(v1 + 112) = v83;
        *v83 = v1;
        v83[1] = sub_1000844BC;
        v64 = v1 + 32;
        goto LABEL_124;
      }

      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_156;
      }

      if (HIDWORD(v70) - v70 < v13)
      {
        goto LABEL_123;
      }
    }

LABEL_129:
    sub_100012038(v70, v71);
    sub_10007A708(v13, v70, v71, v87);
    v77 = *(&v87[0] + 1);
    v76 = *&v87[0];
    sub_10008570C(v13);
    v68 = *(v1 + 72);
  }

  else
  {
    v76 = 0;
    v77 = 0xC000000000000000;
  }

  v84 = v68 + *(v1 + 128);
  *v84 = 0;
  *(v84 + 8) = 2;
  v78 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  *(v1 + 16) = v76;
  *(v1 + 24) = v77;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  sub_100012038(v76, v77);
  sub_1001D0970();
  sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001D0B10();
  sub_100011E48(v76, v77);
  if (!v11)
  {
    v79 = 0;
LABEL_133:
    (*(*(v78 - 8) + 56))(*(v1 + 64), v79, 1, v78);

    v85 = *(v1 + 8);
    goto LABEL_134;
  }

LABEL_131:

  v85 = *(v1 + 8);
LABEL_134:

  return v85();
}

uint64_t sub_100083C4C(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 72) + *(v1 + 128);
  *v2 = *(v1 + 104);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 72) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 72);
    v9 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v64 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v65 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v66 = swift_task_alloc();
        *(v1 + 96) = v66;
        *v66 = v1;
        v66[1] = sub_100083210;
        v55 = v1 + 48;
LABEL_113:
        v56 = v64;
        v57 = v65;

        return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v55 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      v55 = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v58 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v58);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 72) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (!v4)
    {
      v69 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v70 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v76 = *(v1 + 8);
  }

  else
  {
    v59 = *(v1 + 72);
    if (v4)
    {
      v60 = *(*(v1 + 88) + 76);
      *(v1 + 136) = v60;
      v61 = *(v59 + v60);
      v62 = *(v59 + v60 + 8);
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 != 2)
        {
          goto LABEL_112;
        }

        v72 = *(v61 + 16);
        v71 = *(v61 + 24);
        v16 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v16)
        {
          goto LABEL_142;
        }

        if (v73 < v4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v63)
        {
          if (BYTE6(v62) >= v4)
          {
            goto LABEL_118;
          }

LABEL_112:
          v64 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v65 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
          v74 = swift_task_alloc();
          *(v1 + 112) = v74;
          *v74 = v1;
          v74[1] = sub_1000844BC;
          v55 = v1 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v61) - v61 < v4)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v61, v62);
      sub_10007A708(v4, v61, v62, v78);
      v68 = *(&v78[0] + 1);
      v67 = *&v78[0];
      sub_10008570C(v4);
      v59 = *(v1 + 72);
    }

    else
    {
      v67 = 0;
      v68 = 0xC000000000000000;
    }

    v75 = v59 + *(v1 + 128);
    *v75 = 0;
    *(v75 + 8) = 2;
    v69 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v1 + 16) = v67;
    *(v1 + 24) = v68;
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    sub_100012038(v67, v68);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v67, v68);
    v70 = 0;
LABEL_120:
    (*(*(v69 - 8) + 56))(*(v1 + 64), v70, 1, v69);

    v76 = *(v1 + 8);
  }

  return v76();
}

uint64_t sub_1000844BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100084E9C;
  }

  else
  {
    v2 = sub_1000845D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000845D0()
{
  v82 = v0;
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 72) + *(v0 + 128);
    sub_100089CEC();
    *v2 = swift_allocError();
    *(v2 + 8) = 1;
  }

  else
  {
    v3 = *(v0 + 32);
    sub_1001CFC30();
    sub_10002683C(v3, v1);
  }

  v4 = *(v0 + 120);
  v5 = (*(v0 + 72) + *(v0 + 128));
  v6 = *v5;
  v7 = *(v5 + 8);
  while (v7 == 2)
  {
    v10 = *(v0 + 72);
    v11 = *(*(v0 + 88) + 76);
    *(v0 + 132) = v11;
    v12 = v10 + v11;
    v13 = *(v10 + v11);
    v14 = *(v10 + v11 + 8);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_107;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
        goto LABEL_143;
      }

      if (v19 < 4)
      {
        goto LABEL_107;
      }
    }

    else if (v15)
    {
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_142;
      }

      if (HIDWORD(v13) - v13 < 4)
      {
LABEL_107:
        v66 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v67 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v68 = swift_task_alloc();
        *(v0 + 96) = v68;
        *v68 = v0;
        v68[1] = sub_100083210;
        v57 = v0 + 48;
LABEL_116:
        v58 = v66;
        v59 = v67;

        return dispatch thunk of AsyncIteratorProtocol.next()(v57, v58, v59);
      }
    }

    else if (BYTE6(v14) < 4uLL)
    {
      goto LABEL_107;
    }

    if (v15 == 2)
    {
      v20 = *(v13 + 16);
      v21 = *(v13 + 24);
    }

    else
    {
      if (v15 != 1)
      {
        v20 = 0;
        v22 = 0;
        v21 = BYTE6(v14);
        v23 = BYTE6(v14);
        goto LABEL_27;
      }

      v20 = v13;
      v21 = v13 >> 32;
    }

    if (v21 < v20)
    {
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
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      sub_1001CF890();
LABEL_150:
      __break(1u);
LABEL_151:
      v57 = sub_1001CF890();
      __break(1u);
LABEL_152:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v57, v58, v59);
    }

    if (v15 == 2)
    {
      v22 = *(v13 + 16);
      v23 = *(v13 + 24);
    }

    else
    {
      v22 = v13;
      v23 = v13 >> 32;
    }

LABEL_27:
    if (v23 < v21 || v21 < v22)
    {
      goto LABEL_131;
    }

    v18 = __OFSUB__(v21, v20);
    v25 = v21 - v20;
    if (v18)
    {
      goto LABEL_132;
    }

    if (v25 < 4)
    {
      if (v15 != 2)
      {
        if (v15 != 1)
        {
          goto LABEL_55;
        }

        v26 = v13 >> 32;
LABEL_50:
        if (v26 < v13)
        {
          goto LABEL_130;
        }

        goto LABEL_55;
      }

      v26 = *(v13 + 24);
      goto LABEL_52;
    }

    v26 = v20 + 4;
    if (__OFADD__(v20, 4))
    {
      goto LABEL_139;
    }

    if (v15 == 2)
    {
      v27 = *(v13 + 16);
      v28 = *(v13 + 24);
    }

    else if (v15 == 1)
    {
      v27 = v13;
      v28 = v13 >> 32;
    }

    else
    {
      v27 = 0;
      v28 = BYTE6(v14);
    }

    if (v28 < v26 || v26 < v27)
    {
      goto LABEL_140;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        goto LABEL_50;
      }

LABEL_52:
      if (v26 < *(v13 + 16))
      {
        goto LABEL_130;
      }

      goto LABEL_55;
    }

    if (v26 < 0)
    {
      goto LABEL_130;
    }

LABEL_55:
    v30 = sub_1001CFBC0();
    v32 = v31;
    v33 = *v12;
    v34 = *(v12 + 8);
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        v38 = 0;
        v36 = 0;
        v39 = 0;
        v37 = 0;
        goto LABEL_66;
      }

      v36 = *(v33 + 16);
      v38 = *(v33 + 24);
    }

    else
    {
      if (!v35)
      {
        v36 = 0;
        v37 = 0;
        v38 = BYTE6(v34);
        v39 = BYTE6(v34);
        goto LABEL_66;
      }

      v36 = v33;
      v38 = v33 >> 32;
    }

    if (v38 < v36)
    {
      goto LABEL_133;
    }

    if (v35 == 2)
    {
      v37 = *(v33 + 16);
      v39 = *(v33 + 24);
    }

    else
    {
      v37 = v33;
      v39 = v33 >> 32;
    }

LABEL_66:
    if (v39 < v38 || v38 < v37)
    {
      goto LABEL_134;
    }

    v18 = __OFSUB__(v38, v36);
    v40 = v38 - v36;
    if (v18)
    {
      goto LABEL_135;
    }

    if (v40 < 4)
    {
      goto LABEL_141;
    }

    v41 = v36 + 4;
    if (__OFADD__(v36, 4))
    {
      goto LABEL_136;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v42 = *(v33 + 16);
        v43 = *(v33 + 24);
      }

      else
      {
        v43 = 0;
        v42 = 0;
      }
    }

    else if (v35)
    {
      v42 = v33;
      v43 = v33 >> 32;
    }

    else
    {
      v42 = 0;
      v43 = BYTE6(v34);
    }

    if (v43 < v41 || v41 < v42)
    {
      goto LABEL_137;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v44 = *(v33 + 24);
      }

      else
      {
        v44 = 0;
      }
    }

    else if (v35)
    {
      v44 = v33 >> 32;
    }

    else
    {
      v44 = BYTE6(v34);
    }

    sub_100012038(*v12, *(v12 + 8));
    sub_100011E48(v33, v34);
    if (v44 < v41)
    {
      goto LABEL_138;
    }

    v45 = sub_1001CFBC0();
    v47 = v46;
    sub_100011E48(v33, v34);
    *v12 = v45;
    *(v12 + 8) = v47;
    v48 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v48 != 2)
      {
        sub_100011E48(v30, v32);
        v8 = 0;
        goto LABEL_6;
      }

      v49 = *(v30 + 16);
      v50 = sub_1001CF870();
      if (!v50)
      {
        goto LABEL_149;
      }

      v51 = v50;
      v52 = sub_1001CF8A0();
      if (__OFSUB__(v49, v52))
      {
        goto LABEL_145;
      }

      v53 = (v49 - v52 + v51);
      sub_1001CF890();
      if (!v53)
      {
        goto LABEL_150;
      }
    }

    else
    {
      if (!v48)
      {
        sub_100011E48(v30, v32);
        v8 = bswap32(v30);
        goto LABEL_6;
      }

      if (v30 > v30 >> 32)
      {
        goto LABEL_144;
      }

      v54 = sub_1001CF870();
      if (!v54)
      {
        goto LABEL_151;
      }

      v55 = v54;
      v56 = sub_1001CF8A0();
      if (__OFSUB__(v30, v56))
      {
        goto LABEL_146;
      }

      v53 = (v30 - v56 + v55);
      v57 = sub_1001CF890();
      if (!v53)
      {
        goto LABEL_152;
      }
    }

    v60 = *v53;
    sub_100011E48(v30, v32);
    v8 = bswap32(v60);
LABEL_6:
    v7 = 0;
    v9 = *(v0 + 72) + *(v0 + 128);
    v6 = v8;
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  if (v7)
  {
    if (v6)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_123;
    }

    v71 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    v72 = 1;
    goto LABEL_125;
  }

  v61 = *(v0 + 72);
  if (v6)
  {
    v62 = *(*(v0 + 88) + 76);
    *(v0 + 136) = v62;
    v63 = *(v61 + v62);
    v64 = *(v61 + v62 + 8);
    v65 = v64 >> 62;
    if ((v64 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_115;
      }

      v74 = *(v63 + 16);
      v73 = *(v63 + 24);
      v18 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v18)
      {
        goto LABEL_147;
      }

      if (v75 < v6)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (!v65)
      {
        if (BYTE6(v64) >= v6)
        {
          goto LABEL_121;
        }

LABEL_115:
        v66 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v67 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v76 = swift_task_alloc();
        *(v0 + 112) = v76;
        *v76 = v0;
        v76[1] = sub_1000844BC;
        v57 = v0 + 32;
        goto LABEL_116;
      }

      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_148;
      }

      if (HIDWORD(v63) - v63 < v6)
      {
        goto LABEL_115;
      }
    }

LABEL_121:
    sub_100012038(v63, v64);
    sub_10007A708(v6, v63, v64, v80);
    v70 = *(&v80[0] + 1);
    v69 = *&v80[0];
    sub_10008570C(v6);
    v61 = *(v0 + 72);
  }

  else
  {
    v69 = 0;
    v70 = 0xC000000000000000;
  }

  v77 = v61 + *(v0 + 128);
  *v77 = 0;
  *(v77 + 8) = 2;
  v71 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
  *(v0 + 16) = v69;
  *(v0 + 24) = v70;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  sub_100012038(v69, v70);
  sub_1001D0970();
  sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);
  sub_1001D0B10();
  sub_100011E48(v69, v70);
  if (!v4)
  {
    v72 = 0;
LABEL_125:
    (*(*(v71 - 8) + 56))(*(v0 + 64), v72, 1, v71);

    v78 = *(v0 + 8);
    goto LABEL_126;
  }

LABEL_123:

  v78 = *(v0 + 8);
LABEL_126:

  return v78();
}

uint64_t sub_100084E9C(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 72) + *(v1 + 128);
  *v2 = *(v1 + 120);
  *(v2 + 8) = 1;
  v3 = (*(v1 + 72) + *(v1 + 128));
  v4 = *v3;
  v5 = *(v3 + 8);
  while (v5 == 2)
  {
    v8 = *(v1 + 72);
    v9 = *(*(v1 + 88) + 76);
    *(v1 + 132) = v9;
    v10 = v8 + v9;
    v11 = *(v8 + v9);
    v12 = *(v8 + v9 + 8);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_104;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
      {
        goto LABEL_138;
      }

      if (v17 < 4)
      {
        goto LABEL_104;
      }
    }

    else if (v13)
    {
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_137;
      }

      if (HIDWORD(v11) - v11 < 4)
      {
LABEL_104:
        v64 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
        v65 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
        v66 = swift_task_alloc();
        *(v1 + 96) = v66;
        *v66 = v1;
        v66[1] = sub_100083210;
        v55 = v1 + 48;
LABEL_113:
        v56 = v64;
        v57 = v65;

        return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
      }
    }

    else if (BYTE6(v12) < 4uLL)
    {
      goto LABEL_104;
    }

    if (v13 == 2)
    {
      v18 = *(v11 + 16);
      v19 = *(v11 + 24);
    }

    else
    {
      if (v13 != 1)
      {
        v18 = 0;
        v20 = 0;
        v19 = BYTE6(v12);
        v21 = BYTE6(v12);
        goto LABEL_24;
      }

      v18 = v11;
      v19 = v11 >> 32;
    }

    if (v19 < v18)
    {
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
      sub_1001CF890();
LABEL_145:
      __break(1u);
LABEL_146:
      v55 = sub_1001CF890();
      __break(1u);
LABEL_147:
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v55, v56, v57);
    }

    if (v13 == 2)
    {
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
    }

    else
    {
      v20 = v11;
      v21 = v11 >> 32;
    }

LABEL_24:
    if (v21 < v19 || v19 < v20)
    {
      goto LABEL_126;
    }

    v16 = __OFSUB__(v19, v18);
    v23 = v19 - v18;
    if (v16)
    {
      goto LABEL_127;
    }

    if (v23 < 4)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          goto LABEL_52;
        }

        v24 = v11 >> 32;
LABEL_47:
        if (v24 < v11)
        {
          goto LABEL_125;
        }

        goto LABEL_52;
      }

      v24 = *(v11 + 24);
      goto LABEL_49;
    }

    v24 = v18 + 4;
    if (__OFADD__(v18, 4))
    {
      goto LABEL_134;
    }

    if (v13 == 2)
    {
      v25 = *(v11 + 16);
      v26 = *(v11 + 24);
    }

    else if (v13 == 1)
    {
      v25 = v11;
      v26 = v11 >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v12);
    }

    if (v26 < v24 || v24 < v25)
    {
      goto LABEL_135;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        goto LABEL_47;
      }

LABEL_49:
      if (v24 < *(v11 + 16))
      {
        goto LABEL_125;
      }

      goto LABEL_52;
    }

    if (v24 < 0)
    {
      goto LABEL_125;
    }

LABEL_52:
    v28 = sub_1001CFBC0();
    v30 = v29;
    v31 = *v10;
    v32 = *(v10 + 8);
    v33 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v33 != 2)
      {
        v36 = 0;
        v34 = 0;
        v37 = 0;
        v35 = 0;
        goto LABEL_63;
      }

      v34 = *(v31 + 16);
      v36 = *(v31 + 24);
    }

    else
    {
      if (!v33)
      {
        v34 = 0;
        v35 = 0;
        v36 = BYTE6(v32);
        v37 = BYTE6(v32);
        goto LABEL_63;
      }

      v34 = v31;
      v36 = v31 >> 32;
    }

    if (v36 < v34)
    {
      goto LABEL_128;
    }

    if (v33 == 2)
    {
      v35 = *(v31 + 16);
      v37 = *(v31 + 24);
    }

    else
    {
      v35 = v31;
      v37 = v31 >> 32;
    }

LABEL_63:
    if (v37 < v36 || v36 < v35)
    {
      goto LABEL_129;
    }

    v16 = __OFSUB__(v36, v34);
    v38 = v36 - v34;
    if (v16)
    {
      goto LABEL_130;
    }

    if (v38 < 4)
    {
      goto LABEL_136;
    }

    v39 = v34 + 4;
    if (__OFADD__(v34, 4))
    {
      goto LABEL_131;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v40 = *(v31 + 16);
        v41 = *(v31 + 24);
      }

      else
      {
        v41 = 0;
        v40 = 0;
      }
    }

    else if (v33)
    {
      v40 = v31;
      v41 = v31 >> 32;
    }

    else
    {
      v40 = 0;
      v41 = BYTE6(v32);
    }

    if (v41 < v39 || v39 < v40)
    {
      goto LABEL_132;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v42 = *(v31 + 24);
      }

      else
      {
        v42 = 0;
      }
    }

    else if (v33)
    {
      v42 = v31 >> 32;
    }

    else
    {
      v42 = BYTE6(v32);
    }

    sub_100012038(*v10, *(v10 + 8));
    sub_100011E48(v31, v32);
    if (v42 < v39)
    {
      goto LABEL_133;
    }

    v43 = sub_1001CFBC0();
    v45 = v44;
    sub_100011E48(v31, v32);
    *v10 = v43;
    *(v10 + 8) = v45;
    v46 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v46 != 2)
      {
        sub_100011E48(v28, v30);
        v6 = 0;
        goto LABEL_3;
      }

      v47 = *(v28 + 16);
      v48 = sub_1001CF870();
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v48;
      v50 = sub_1001CF8A0();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_140;
      }

      v51 = (v47 - v50 + v49);
      sub_1001CF890();
      if (!v51)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (!v46)
      {
        sub_100011E48(v28, v30);
        v6 = bswap32(v28);
        goto LABEL_3;
      }

      if (v28 > v28 >> 32)
      {
        goto LABEL_139;
      }

      v52 = sub_1001CF870();
      if (!v52)
      {
        goto LABEL_146;
      }

      v53 = v52;
      v54 = sub_1001CF8A0();
      if (__OFSUB__(v28, v54))
      {
        goto LABEL_141;
      }

      v51 = (v28 - v54 + v53);
      v55 = sub_1001CF890();
      if (!v51)
      {
        goto LABEL_147;
      }
    }

    v58 = *v51;
    sub_100011E48(v28, v30);
    v6 = bswap32(v58);
LABEL_3:
    v5 = 0;
    v7 = *(v1 + 72) + *(v1 + 128);
    v4 = v6;
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  if (v5)
  {
    if (!v4)
    {
      v69 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
      v70 = 1;
      goto LABEL_120;
    }

    swift_willThrow();
    swift_errorRetain();

    v76 = *(v1 + 8);
  }

  else
  {
    v59 = *(v1 + 72);
    if (v4)
    {
      v60 = *(*(v1 + 88) + 76);
      *(v1 + 136) = v60;
      v61 = *(v59 + v60);
      v62 = *(v59 + v60 + 8);
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 != 2)
        {
          goto LABEL_112;
        }

        v72 = *(v61 + 16);
        v71 = *(v61 + 24);
        v16 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v16)
        {
          goto LABEL_142;
        }

        if (v73 < v4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (!v63)
        {
          if (BYTE6(v62) >= v4)
          {
            goto LABEL_118;
          }

LABEL_112:
          v64 = sub_100011AC0(&qword_100229630, &qword_1001D69D0);
          v65 = sub_100024B78(&qword_100229638, &qword_100229630, &qword_1001D69D0, &protocol conformance descriptor for AsyncThrowingCompactMapSequence<A, B>.Iterator);
          v74 = swift_task_alloc();
          *(v1 + 112) = v74;
          *v74 = v1;
          v74[1] = sub_1000844BC;
          v55 = v1 + 32;
          goto LABEL_113;
        }

        if (__OFSUB__(HIDWORD(v61), v61))
        {
          goto LABEL_143;
        }

        if (HIDWORD(v61) - v61 < v4)
        {
          goto LABEL_112;
        }
      }

LABEL_118:
      sub_100012038(v61, v62);
      sub_10007A708(v4, v61, v62, v78);
      v68 = *(&v78[0] + 1);
      v67 = *&v78[0];
      sub_10008570C(v4);
      v59 = *(v1 + 72);
    }

    else
    {
      v67 = 0;
      v68 = 0xC000000000000000;
    }

    v75 = v59 + *(v1 + 128);
    *v75 = 0;
    *(v75 + 8) = 2;
    v69 = type metadata accessor for Proto_Ropes_HttpService_InvokeResponse(0);
    *(v1 + 16) = v67;
    *(v1 + 24) = v68;
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    sub_100012038(v67, v68);
    sub_1001D0970();
    sub_10008A830(&qword_100229628, type metadata accessor for Proto_Ropes_HttpService_InvokeResponse, &protocol conformance descriptor for Proto_Ropes_HttpService_InvokeResponse);
    sub_1001D0B10();
    sub_100011E48(v67, v68);
    v70 = 0;
LABEL_120:
    (*(*(v69 - 8) + 56))(*(v1 + 64), v70, 1, v69);

    v76 = *(v1 + 8);
  }

  return v76();
}

unint64_t sub_10008570C(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_100088598(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_100088534(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_100012038(*v1, *(v1 + 8));
      result = sub_100011E48(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_1001CFBC0();
        v15 = v14;
        result = sub_100011E48(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_100085848()
{
  v1[2] = v0;
  sub_100011AC0(&unk_100230110, &unk_1001D6520);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  sub_100011AC0(&qword_1002295C0, &qword_1001D6910);
  v1[5] = swift_task_alloc();
  v2 = sub_1001D0FF0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100085984, 0, 0);
}

uint64_t sub_100085984()
{
  v1 = *(v0 + 16);
  v2 = sub_100011AC0(&qword_100229560, &qword_1001D68C0);
  *(v0 + 72) = v2;
  v3 = *(v2 + 40);
  *(v0 + 208) = v3;
  if (*(v1 + v3))
  {

    v4 = *(v0 + 8);

    return v4(0, 0xF000000000000000);
  }

  else
  {
    v6 = *(v2 + 36);
    if (*(v1 + v6))
    {
      *(v1 + v6) = 0;
      v7 = swift_task_alloc();
      *(v0 + 80) = v7;
      *v7 = v0;
      v8 = sub_100085B08;
    }

    else
    {
      v7 = swift_task_alloc();
      *(v0 + 152) = v7;
      *v7 = v0;
      v8 = sub_1000868D0;
    }

    v7[1] = v8;

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }
}

uint64_t sub_100085B08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 212) = a4;

  if (v4)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100085C78, 0, 0);
  }
}

uint64_t sub_100085C78()
{
  v1 = *(v0 + 104);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0xF000000000000000;
LABEL_24:

    v31 = *(v0 + 8);

    return v31(v2, v3);
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v1)
  {

    sub_1001D1050();

    if ((*(v5 + 48))(v6, 1, v4) != 1)
    {
      v7 = *(v0 + 72);
      v8 = *(v0 + 16);
      (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
      v32 = (*(v8 + *(v7 + 44)) + **(v8 + *(v7 + 44)));
      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      *v9 = v0;
      v9[1] = sub_100086104;
      v10 = *(v0 + 64);
LABEL_6:

      return v32(v10);
    }
  }

  else
  {
    (*(v5 + 56))(*(v0 + 40), 1, 1, *(v0 + 48));
  }

  sub_100011F00(*(v0 + 40), &qword_1002295C0, &qword_1001D6910);
  v12 = *(v0 + 96);
  v13 = *(v0 + 212);
  if (v12 >> 60 != 15)
  {
    *(*(v0 + 16) + *(v0 + 208)) = v13 & 1;
    if (v13)
    {
      if (*(v0 + 104))
      {
        v16 = *(v0 + 88);
        v15 = *(v0 + 96);
        sub_1001D12A0();
        sub_100012038(v16, v15);
        sub_1001D1250();
        v17 = sub_1001D1070();
        *(v0 + 128) = v17;

        if (v17)
        {
          sub_1001D1290();
          if (swift_dynamicCastClass())
          {
            v18 = *(*(v0 + 16) + *(*(v0 + 72) + 48));
            sub_1001D1280();
            v32 = (v18 + *v18);
            v19 = swift_task_alloc();
            *(v0 + 136) = v19;
            *v19 = v0;
            v19[1] = sub_100086614;
            v10 = *(v0 + 32);
            goto LABEL_6;
          }

          v29 = *(v0 + 96);
          v28 = *(v0 + 104);
          v30 = *(v0 + 88);

          v23 = v30;
          v24 = v29;
          v25 = v28;
        }

        else
        {
          v24 = *(v0 + 96);
          v25 = *(v0 + 104);
          v23 = *(v0 + 88);
        }
      }

      else
      {
        v26 = *(v0 + 88);
        v27 = *(v0 + 96);
        sub_100089C38(v26, v27);
        v23 = v26;
        v24 = v27;
        v25 = 0;
      }
    }

    else
    {
      v20 = *(v0 + 96);
      v21 = *(v0 + 104);
      v22 = *(v0 + 88);
      sub_100089C38(v22, v20);
      v23 = v22;
      v24 = v20;
      v25 = v21;
    }

    sub_100089D40(v23, v24, v25);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    goto LABEL_24;
  }

  sub_100089D40(*(v0 + 88), v12, *(v0 + 104));
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = sub_1000868D0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_100086104()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100086558;
  }

  else
  {
    v2 = sub_100086218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100086218()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 96);
  v2 = *(v0 + 212);
  if (v1 >> 60 == 15)
  {
    sub_100089D40(*(v0 + 88), v1, *(v0 + 104));
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_1000868D0;

    return NWAsyncConnection.Inbound.AsyncIterator.next()();
  }

  *(*(v0 + 16) + *(v0 + 208)) = v2 & 1;
  if (v2)
  {
    if (*(v0 + 104))
    {
      v6 = *(v0 + 88);
      v5 = *(v0 + 96);
      sub_1001D12A0();
      sub_100012038(v6, v5);
      sub_1001D1250();
      v7 = sub_1001D1070();
      *(v0 + 128) = v7;

      if (v7)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v8 = *(*(v0 + 16) + *(*(v0 + 72) + 48));
          sub_1001D1280();
          v25 = (v8 + *v8);
          v9 = swift_task_alloc();
          *(v0 + 136) = v9;
          *v9 = v0;
          v9[1] = sub_100086614;
          v10 = *(v0 + 32);

          return v25(v10);
        }

        v20 = *(v0 + 96);
        v19 = *(v0 + 104);
        v21 = *(v0 + 88);

        v14 = v21;
        v15 = v20;
        v16 = v19;
      }

      else
      {
        v15 = *(v0 + 96);
        v16 = *(v0 + 104);
        v14 = *(v0 + 88);
      }
    }

    else
    {
      v17 = *(v0 + 88);
      v18 = *(v0 + 96);
      sub_100089C38(v17, v18);
      v14 = v17;
      v15 = v18;
      v16 = 0;
    }
  }

  else
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = *(v0 + 88);
    sub_100089C38(v13, v11);
    v14 = v13;
    v15 = v11;
    v16 = v12;
  }

  sub_100089D40(v14, v15, v16);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);

  v24 = *(v0 + 8);

  return v24(v22, v23);
}

uint64_t sub_100086558()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_100089D40(v0[11], v0[12], v0[13]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100086614()
{
  v2 = *(*v1 + 32);
  *(*v1 + 144) = v0;

  sub_100011F00(v2, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v3 = sub_100086810;
  }

  else
  {
    v3 = sub_100086754;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100086754()
{
  sub_100089D40(v0[11], v0[12], v0[13]);

  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_100086810()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  sub_10002683C(v3, v1);
  sub_100089D40(v3, v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000868D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 176) = a3;
  *(v6 + 213) = a4;

  if (v4)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_100086A40, 0, 0);
  }
}

uint64_t sub_100086A40()
{
  v1 = *(v0 + 176);
  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0xF000000000000000;
LABEL_18:

    v18 = *(v0 + 8);

    return v18(v2, v3);
  }

  if (*(v0 + 213))
  {
    *(*(v0 + 16) + *(v0 + 208)) = 1;
    if (v1)
    {
      sub_1001D12A0();
      sub_1001D1250();
      v4 = sub_1001D1070();
      *(v0 + 184) = v4;

      if (v4)
      {
        sub_1001D1290();
        if (swift_dynamicCastClass())
        {
          v5 = *(*(v0 + 16) + *(*(v0 + 72) + 48));
          sub_1001D1280();
          v19 = (v5 + *v5);
          v6 = swift_task_alloc();
          *(v0 + 192) = v6;
          *v6 = v0;
          v6[1] = sub_100086D38;
          v7 = *(v0 + 24);

          return v19(v7);
        }
      }
    }

    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v17 = *(v0 + 160);
    sub_100089C38(v17, v15);
    v12 = v17;
    v13 = v15;
    v14 = v16;
LABEL_17:
    sub_100089D40(v12, v13, v14);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    goto LABEL_18;
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  if (v10 >> 60 != 15)
  {
    sub_100089C38(*(v0 + 160), *(v0 + 168));
    v12 = v9;
    v13 = v10;
    v14 = v1;
    goto LABEL_17;
  }

  sub_100089D40(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_1000868D0;

  return NWAsyncConnection.Inbound.AsyncIterator.next()();
}

uint64_t sub_100086D38()
{
  v2 = *(*v1 + 24);
  *(*v1 + 200) = v0;

  sub_100011F00(v2, &unk_100230110, &unk_1001D6520);
  if (v0)
  {
    v3 = sub_100086F4C;
  }

  else
  {
    v3 = sub_100086E78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100086E78()
{

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_100089C38(v3, v1);
  sub_100089D40(v3, v1, v2);
  v4 = v0[20];
  v5 = v0[21];

  v6 = v0[1];

  return v6(v4, v5);
}

uint64_t sub_100086F4C()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];

  sub_100089D40(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100086FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[61] = a8;
  v8[62] = v12;
  v8[59] = a6;
  v8[60] = a7;
  v8[57] = a4;
  v8[58] = a5;
  v9 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v8[63] = v9;
  v8[64] = *(v9 - 8);
  v8[65] = swift_task_alloc();

  return _swift_task_switch(sub_1000870D8, 0, 0);
}

uint64_t sub_1000870D8()
{
  v11 = v0;

  v1 = sub_1001D0E50();
  v2 = sub_1001D1E00();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[58];
    v3 = v0[59];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000954E0(v4, v3, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: start", v5, 0xCu);
    sub_100011CF0(v6);
  }

  v9 = (v0[60] + *v0[60]);
  v7 = swift_task_alloc();
  v0[66] = v7;
  *v7 = v0;
  v7[1] = sub_1000872B4;

  return v9(v0 + 44);
}

uint64_t sub_1000872B4()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_100087928;
  }

  else
  {
    v2 = sub_1000873C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000873C8()
{
  v60 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  os_unfair_lock_lock((v1 + 16));
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v0 + 232) = v11;
  *(v0 + 216) = v10;
  *(v0 + 200) = v9;
  *(v0 + 184) = v8;
  v54 = v0;
  if ((v11 & 0x100) == 0)
  {
    v12 = *(v1 + 24);
    v13 = *(v1 + 40);
    v14 = *(v1 + 56);
    *(v0 + 288) = *(v1 + 72);
    *(v0 + 256) = v13;
    *(v0 + 272) = v14;
    *(v0 + 240) = v12;
    v53 = v2;
    sub_100012038(v2, v3);
    sub_100012038(v5, v4);
    sub_100012038(v6, v7);
    sub_10001208C(v0 + 184, v0 + 296, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v0 + 240, &qword_1002295E8, &unk_1001E0660);
    v15 = *(v0 + 184);
    v16 = v3;
    if (v15 >> 62)
    {
      goto LABEL_15;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v53; v17; i = v53)
    {
      v19 = 0;
      v20 = v54[64];
      v51 = v15 & 0xFFFFFFFFFFFFFF8;
      v52 = v15 & 0xC000000000000001;
      v44 = (v20 + 16);
      v45 = (v20 + 48);
      v43 = (v20 + 8);
      v49 = v4;
      v50 = v5;
      v48 = v7;
      v46 = v17;
      v47 = v15;
      while (v52)
      {
        v7 = sub_1001D2040();
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v57 = v21;
        v55 = v54[63];
        v22 = (v7 + *(*v7 + 88));
        v23 = i;
        sub_100012038(i, v16);
        v4 = v49;
        v5 = v50;
        sub_100012038(v50, v49);
        sub_100012038(v6, v48);
        os_unfair_lock_lock(v22);
        v24 = sub_100011AC0(&qword_1002295F0, &qword_1001D6990);
        if (!(*v45)(v22 + *(v24 + 28), 1, v55))
        {
          v56 = v54[65];
          v25 = v54[63];
          (*v44)();
          v54[50] = v53;
          v54[51] = v16;
          v54[52] = v50;
          v54[53] = v49;
          v54[54] = v6;
          v54[55] = v48;
          sub_100012038(v53, v16);
          sub_100012038(v50, v49);
          sub_100012038(v6, v48);
          sub_1001D1AA0();
          v23 = v53;
          (*v43)(v56, v25);
        }

        os_unfair_lock_unlock(v22);

        i = v23;
        sub_100011E48(v23, v16);
        sub_100011E48(v50, v49);
        sub_100011E48(v6, v48);
        ++v19;
        v15 = v47;
        v7 = v48;
        if (v57 == v46)
        {
          goto LABEL_16;
        }
      }

      if (v19 >= *(v51 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(v15 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v17 = sub_1001D2190();
    }

LABEL_16:
    v26 = v54[62];
    sub_100011F00((v54 + 23), &qword_1002295E8, &unk_1001E0660);
    v59 = 1;
    *(v1 + 24) = i;
    *(v26 + 32) = v16;
    *(v26 + 40) = v5;
    *(v26 + 48) = v4;
    *(v26 + 56) = v6;
    *(v26 + 64) = v7;
    *(v26 + 72) = 256;
  }

  os_unfair_lock_unlock((v1 + 16));
  v28 = v54[46];
  v27 = v54[47];
  v29 = v54[48];
  v30 = v54[49];
  sub_100011E48(v54[44], v54[45]);
  sub_100011E48(v28, v27);
  sub_100011E48(v29, v30);
  if (sub_1001D1C30())
  {
    if (qword_100227968 != -1)
    {
LABEL_30:
      swift_once();
    }

    v31 = qword_10022FB98;
    do
    {
      v32 = v31 - 1;
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v33 = v31;
      atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v33, v32, memory_order_relaxed, memory_order_relaxed);
      v34 = v33 == v31;
      v31 = v33;
    }

    while (!v34);

    v35 = sub_1001D0E50();
    v36 = sub_1001D1DE0();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = v54[58];
      v37 = v54[59];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_1000954E0(v38, v37, &v58);
      *(v39 + 12) = 2048;
      *(v39 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: end after being cancelled counter=%ld", v39, 0x16u);
      sub_100011CF0(v40);
    }
  }

  v41 = v54[1];

  return v41();
}

uint64_t sub_100087928()
{
  v50 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 496);
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 16) = v3;
  if ((v6 & 0x100) == 0)
  {
    v7 = *(v2 + 40);
    v8 = *(v2 + 56);
    v9 = *(v2 + 72);
    *(v0 + 72) = *(v2 + 24);
    *(v0 + 120) = v9;
    *(v0 + 104) = v8;
    *(v0 + 88) = v7;
    swift_errorRetain();
    sub_10001208C(v0 + 16, v0 + 128, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v0 + 72, &qword_1002295E8, &unk_1001E0660);
    v10 = *(v0 + 16);
    v40 = v1;
    v41 = v2;
    if (v10 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1001D2190())
    {
      v12 = 0;
      v13 = *(v0 + 512);
      v14 = v10 & 0xC000000000000001;
      v46 = (v13 + 48);
      v47 = v10 & 0xFFFFFFFFFFFFFF8;
      v42 = (v13 + 8);
      v43 = (v13 + 16);
      v44 = v10 & 0xC000000000000001;
      v45 = v10;
      while (v14)
      {
        v15 = sub_1001D2040();
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v17 = *(v0 + 504);
        v18 = (v15 + *(*v15 + 88));
        swift_errorRetain();
        os_unfair_lock_lock(v18);
        v19 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
        if (!(*v46)(v18 + v19, 1, v17))
        {
          v20 = i;
          v21 = *(v0 + 536);
          v22 = *(v0 + 520);
          v23 = *(v0 + 504);
          (*v43)(v22, v18 + v19, v23);
          sub_100011AC0(&qword_100227A58, &qword_1001D3600);
          v24 = swift_allocError();
          *v25 = v21;
          *(v0 + 448) = v24;
          i = v20;
          v14 = v44;
          swift_errorRetain();
          sub_1001D1A90();
          v26 = v23;
          v10 = v45;
          (*v42)(v22, v26);
        }

        os_unfair_lock_unlock(v18);

        ++v12;
        if (v16 == i)
        {
          goto LABEL_16;
        }
      }

      if (v12 >= *(v47 + 16))
      {
        goto LABEL_14;
      }

      v15 = *(v10 + 8 * v12 + 32);

      v16 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
    v27 = *(v0 + 496);
    sub_100011F00(v0 + 16, &qword_1002295E8, &unk_1001E0660);
    v49 = 1;
    v2 = v41;
    *(v41 + 24) = v40;
    *(v27 + 32) = 0u;
    *(v27 + 48) = 0u;
    *(v27 + 64) = 0;
    *(v27 + 72) = 257;
  }

  os_unfair_lock_unlock((v2 + 16));

  if (sub_1001D1C30())
  {
    if (qword_100227968 != -1)
    {
LABEL_30:
      swift_once();
    }

    v28 = qword_10022FB98;
    do
    {
      v29 = v28 - 1;
      if (__OFSUB__(v28, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      v30 = v28;
      atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v30, v29, memory_order_relaxed, memory_order_relaxed);
      v31 = v30 == v28;
      v28 = v30;
    }

    while (!v31);

    v32 = sub_1001D0E50();
    v33 = sub_1001D1DE0();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = *(v0 + 464);
      v34 = *(v0 + 472);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_1000954E0(v35, v34, &v48);
      *(v36 + 12) = 2048;
      *(v36 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: end after being cancelled counter=%ld", v36, 0x16u);
      sub_100011CF0(v37);
    }
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100087DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_10013ED28(a1);
}

uint64_t sub_100087E48(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = sub_100011AC0(&qword_1002295D8, &qword_1001D6988);
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v37 - v9;
  if (qword_100227968 != -1)
  {
LABEL_23:
    swift_once();
  }

  v10 = qword_10022FB98;
  do
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v12 = v10;
    atomic_compare_exchange_strong_explicit(&qword_10022FB98, &v12, v11, memory_order_relaxed, memory_order_relaxed);
    v13 = v12 == v10;
    v10 = v12;
  }

  while (!v13);

  v14 = sub_1001D0E50();
  v15 = sub_1001D1DE0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v48[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_1000954E0(a2, a3, v48);
    *(v16 + 12) = 2048;
    *(v16 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s withUnstructuredTaskAndLeakyTaskCancellation: cancelled counter=%ld", v16, 0x16u);
    sub_100011CF0(v17);
  }

  sub_1001D1C20();
  sub_1001D1AC0();
  sub_10008A830(&qword_1002295E0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  v18 = swift_allocError();
  sub_1001D16E0();
  os_unfair_lock_lock((a5 + 16));
  v49 = *(a5 + 72);
  v19 = *(a5 + 40);
  v48[0] = *(a5 + 24);
  v48[1] = v19;
  v48[2] = *(a5 + 56);
  if ((v49 & 0x100) == 0)
  {
    v20 = *(a5 + 40);
    v46[0] = *(a5 + 24);
    v46[1] = v20;
    v46[2] = *(a5 + 56);
    v47 = *(a5 + 72);
    swift_errorRetain();
    sub_10001208C(v48, v45, &qword_1002295E8, &unk_1001E0660);
    sub_100011F00(v46, &qword_1002295E8, &unk_1001E0660);
    a3 = *&v48[0];
    v38 = a5;
    if (*&v48[0] >> 62)
    {
      a5 = sub_1001D2190();
      if (a5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      a5 = *((*&v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5)
      {
LABEL_11:
        v21 = 0;
        v22 = v8;
        v8 = a3 & 0xC000000000000001;
        v23 = a3 & 0xFFFFFFFFFFFFFF8;
        v43 = (v22 + 48);
        v40 = (v22 + 16);
        v39 = (v22 + 8);
        v41 = a3 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v8)
          {
            v24 = sub_1001D2040();
            a2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_20;
            }
          }

          else
          {
            if (v21 >= *(v23 + 16))
            {
              goto LABEL_22;
            }

            v24 = *(a3 + 8 * v21 + 32);

            a2 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          v25 = (v24 + *(*v24 + 88));
          swift_errorRetain();
          os_unfair_lock_lock(v25);
          v26 = *(sub_100011AC0(&qword_1002295F0, &qword_1001D6990) + 28);
          if (!(*v43)(v25 + v26, 1, v44))
          {
            v27 = v25 + v26;
            v28 = v42;
            v29 = a3;
            v30 = v8;
            v31 = a5;
            v32 = v44;
            (*v40)(v42, v27, v44);
            sub_100011AC0(&qword_100227A58, &qword_1001D3600);
            v33 = swift_allocError();
            *v34 = v18;
            v45[0] = v33;
            swift_errorRetain();
            sub_1001D1A90();
            v35 = v32;
            a5 = v31;
            v8 = v30;
            a3 = v29;
            v23 = v41;
            (*v39)(v28, v35);
          }

          os_unfair_lock_unlock(v25);

          ++v21;
        }

        while (a2 != a5);
      }
    }

    sub_100011F00(v48, &qword_1002295E8, &unk_1001E0660);
    LOBYTE(v45[0]) = 1;
    a5 = v38;
    *(v38 + 24) = v18;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0;
    *(a5 + 72) = 257;
  }

  os_unfair_lock_unlock((a5 + 16));
}

uint64_t sub_1000883CC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_100075AA4(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100088534(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100088598(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008864C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_10007BF30(a1, v4);
}

uint64_t sub_1000886EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a3;
  v10 = swift_task_alloc();
  *(v8 + 16) = v10;
  *v10 = v8;
  v10[1] = sub_10005B61C;

  return sub_100061E40(a1, a2, v9, a4, a5, a6, a7, a8);
}

BOOL sub_100088818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  v4 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  isa = v4[-1].isa;
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = v33 - v5;
  v7 = sub_1001D0180();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D05B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v37 = v8[13];
  v37(v10, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v7);
  v43 = v7;
  v35 = sub_10008A830(&qword_100229588, &type metadata accessor for PrivateCloudComputeFeatureFlags, &protocol conformance descriptor for PrivateCloudComputeFeatureFlags);
  v44 = v35;
  v15 = sub_10003B47C(&v41);
  v36 = v8[2];
  v36(v15, v10, v7);
  v16 = sub_1001CFEC0();
  v34 = v8[1];
  v34(v10, v7);
  sub_100011CF0(&v41);
  if ((v16 & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0350();
  sub_10005956C();
  sub_1001D0210();
  (*(isa + 1))(v6, v39);
  (*(v12 + 8))(v14, v11);
  v17 = v42;
  if (v42)
  {
    v18 = v41;
    if (v41 == 0x79786F7270 && v42 == 0xE500000000000000 || (sub_1001D2470() & 1) != 0)
    {

      return 1;
    }

    if (v18 == 0x746365726964 && v17 == 0xE600000000000000 || (sub_1001D2470() & 1) != 0)
    {

      return 0;
    }

    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v20;
      v40 = v23;
      v24 = v23;
      *v22 = 136446210;
      v25 = sub_1000954E0(v18, v17, &v40);

      *(v22 + 4) = v25;
      v26 = v39;
      _os_log_impl(&_mh_execute_header, v39, v21, "unexpected node kind override, ignoring, overrideNodeKind=%{public}s", v22, 0xCu);
      sub_100011CF0(v24);
    }

    else
    {
    }
  }

  v37(v10, enum case for PrivateCloudComputeFeatureFlags.forceTrustedProxyProtocol(_:), v7);
  v43 = v7;
  v44 = v35;
  v27 = sub_10003B47C(&v41);
  v36(v27, v10, v7);
  v28 = sub_1001CFEC0();
  v34(v10, v7);
  sub_100011CF0(&v41);
  if (v28)
  {
    return 1;
  }

  v29 = sub_1001060E4();
  if (v30)
  {
    return 0;
  }

  v31 = *&v29;
  sub_100108A1C();
  return v32 < v31;
}

unint64_t sub_100088DD8()
{
  result = qword_100229538;
  if (!qword_100229538)
  {
    sub_100011DF4(&qword_100229530, &qword_1001D6858);
    sub_10008A830(&qword_100229540, &type metadata accessor for Prefetch.Response, &protocol conformance descriptor for Prefetch.Response);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229538);
  }

  return result;
}

uint64_t sub_100088E8C()
{

  return _swift_deallocObject(v0, 192, 7);
}

void sub_100088F14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005B61C;

  JUMPOUT(0x1000886ECLL);
}

uint64_t sub_100089054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008906C()
{
  v1 = sub_1001D08A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100089144(uint64_t a1)
{
  v4 = *(sub_1001D08A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005B61C;

  return sub_100063C1C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100089270()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000892B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005B61C;

  return sub_100064484(a1, v4, v5, v6);
}

uint64_t sub_100089360(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10005B61C;

  return sub_100064854(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100089478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000894E0()
{
  v1 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v24 = *(*(v1 - 8) + 80);
  v22 = *(*(v1 - 8) + 64);
  v29 = sub_1001D08A0();
  v27 = *(v29 - 8);
  v21 = *(v27 + 80);
  v20 = *(v27 + 64);
  v28 = sub_1001CFDA0();
  v2 = *(v28 - 8);
  v3 = *(v2 + 80);
  v19 = *(v2 + 64);
  v26 = sub_1001CFD60();
  v4 = *(v26 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  swift_unknownObjectRelease();

  v23 = (v24 + 40) & ~v24;
  v6 = v0 + v23;
  sub_100011E48(*v6, *(v6 + 8));

  v7 = *(v1 + 24);
  v8 = sub_1001D0940();
  (*(*(v8 - 8) + 8))(v0 + v23 + v7, v8);
  v9 = *(v1 + 32);
  v10 = sub_1001D08D0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v23 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v24 | v21 | v3 | v5;
  v13 = (v23 + v22 + v21) & ~v21;
  v14 = (v13 + v20 + v3) & ~v3;
  v15 = (v19 + v3 + v14) & ~v3;
  v16 = (v5 + ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v5;

  (*(v27 + 8))(v0 + v13, v29);
  v17 = *(v2 + 8);
  v17(v0 + v14, v28);
  v17(v0 + v15, v28);
  (*(v4 + 8))(v0 + v16, v26);

  return _swift_deallocObject(v0, v16 + v25, v12 | 7);
}

uint64_t sub_100089888(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Proto_Ropes_Common_Attestation(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1001D08A0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1001CFDA0() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = (*(v10 + 64) + v11 + v12) & ~v11;
  sub_1001CFD60();
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_10005B61C;

  return sub_100067CB4(a1, v14, v15, v16, v1 + v5, v1 + v8, v1 + v12, v1 + v13);
}

uint64_t sub_100089AD4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100089B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100089BE4()
{
  result = qword_100229570;
  if (!qword_100229570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229570);
  }

  return result;
}

uint64_t sub_100089C38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012038(result, a2);
  }

  return result;
}

uint64_t sub_100089C58()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100089CEC()
{
  result = qword_1002295B8;
  if (!qword_1002295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002295B8);
  }

  return result;
}

uint64_t sub_100089D40(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_10002683C(result, a2);
  }

  return result;
}

uint64_t sub_100089D84(uint64_t a1)
{
  v2 = sub_1001CFA10();
  v3 = [v2 domain];
  v4 = sub_1001D17D0();
  v6 = v5;

  if (v4 == 0xD000000000000017 && 0x80000001001E3D20 == v6)
  {
  }

  else
  {
    v8 = sub_1001D2470();

    v9 = a1;
    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v10 = [v2 code];
  if ((v10 - 1001) < 0x10)
  {
    v11 = v10 + 24;
  }

  else
  {
    v11 = 17;
  }

  v12 = [v2 userInfo];
  v13 = sub_1001D1700();

  if (!*(v13 + 16) || (v14 = sub_100006028(0xD000000000000014, 0x80000001001E3D40), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100089F9C(*(v13 + 56) + 32 * v14, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 23;
    goto LABEL_17;
  }

  v16 = sub_100131544(v20, v21);
LABEL_17:
  sub_100011AC0(&qword_100227B70, &qword_1001D3718);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001D39F0;
  *(v17 + 32) = a1;
  sub_100089BE4();
  v9 = swift_allocError();
  *v18 = v11;
  *(v18 + 1) = v16;
  *(v18 + 8) = v17;
LABEL_18:
  swift_errorRetain();

  return v9;
}

uint64_t sub_100089F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10008A000()
{
  v1 = sub_1001D20F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1001D20D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10008A150(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001D20F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1001D20D0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10005B61C;

  return sub_10008F6F4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10008A2A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005B61C;

  return sub_100159A10(v2, v3, v4);
}

uint64_t sub_10008A348()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A380(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005B61C;

  return sub_10008F128(a1, v4);
}

uint64_t sub_10008A438(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005B61C;

  return sub_10008864C(a1, (v1 + 16));
}

uint64_t sub_10008A4E8()
{
  v1 = sub_1001D0E60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008A5F0(uint64_t a1)
{
  v3 = *(sub_1001D0E60() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1000130E0;

  return sub_100086FFC(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10008A758(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_100087DAC(a1);
}

uint64_t sub_10008A830(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008A894(uint64_t a1)
{
  sub_1001D1880();
  if (v1[3] >> 60 == 15)
  {
    sub_1001D25A0(0);
  }

  else
  {
    sub_1001D25A0(1u);
    sub_1001CFC10();
  }

  sub_1001D1880();
  sub_1001D1880();
  if (!v1[9])
  {
    sub_1001D25A0(0);
    if (v1[11])
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1001D25A0(0);
    return;
  }

  sub_1001D25A0(1u);
  sub_1001D1880();
  if (!v1[11])
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_1001D25A0(1u);

  sub_1001D1880();
}

Swift::Int sub_10008A994()
{
  sub_1001D2580();
  sub_10008A894(v1);
  return sub_1001D25C0();
}

Swift::Int sub_10008A9D8()
{
  sub_1001D2580();
  sub_10008A894(v1);
  return sub_1001D25C0();
}

BOOL sub_10008AA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_10008AA70(v9, v10);
}

BOOL sub_10008AA70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v15 = *(a2 + 16);
  v16 = v5;
  v6 = v5;
  v7 = v15;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v15 + 1) >> 60 == 15)
    {
      sub_10008B298(&v16, v14);
      sub_10008B298(&v15, v14);
      sub_10002683C(v6, *(&v6 + 1));
      goto LABEL_13;
    }

LABEL_10:
    sub_10008B298(&v16, v14);
    sub_10008B298(&v15, v14);
    sub_10002683C(v6, *(&v6 + 1));
    sub_10002683C(v7, *(&v7 + 1));
    return 0;
  }

  if (*(&v15 + 1) >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_10008B298(&v16, v14);
  sub_10008B298(&v15, v14);
  v9 = sub_1000A1A5C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_10002683C(v7, *(&v7 + 1));
  sub_10002683C(v6, *(&v6 + 1));
  if (!v9)
  {
    return 0;
  }

LABEL_13:
  if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_1001D2470() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (sub_1001D2470() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[9];
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (a1[8] != *(a2 + 64) || v10 != v11) && (sub_1001D2470() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[11];
  v13 = *(a2 + 88);
  if (v12)
  {
    return v13 && (a1[10] == *(a2 + 80) && v12 == v13 || (sub_1001D2470() & 1) != 0);
  }

  return !v13;
}

uint64_t sub_10008AC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v5 = sub_1001D1470();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001D1460();
  v49 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v12 = *a1;
  v11 = a1[1];
  sub_10008B0A8(&qword_100229378, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1001D1440();
  sub_100012038(v12, v11);
  sub_100158DE0(v12, v11, v8);
  sub_100011E48(v12, v11);
  v13 = v48;
  sub_1001D1430();
  (*(v6 + 8))(v8, v5);
  v57 = v9;
  v58 = sub_10008B0A8(&qword_100229380, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v14 = sub_10003B47C(v56);
  v15 = v49;
  v16 = v13;
  (*(v49 + 16))(v14, v13, v9);
  sub_100024DC8(v56, v57);
  sub_1001CF8E0();
  v17 = v54;
  v18 = v55;
  sub_100011CF0(v56);
  v19 = sub_1001CFBF0(0);
  v51 = v20;
  v52 = v19;
  sub_100011E48(v17, v18);
  v21 = sub_1001D08A0();
  (*(*(v21 - 8) + 8))(v53, v21);
  (*(v15 + 8))(v16, v9);
  v22 = v50;
  v23 = *v50;
  v24 = v50[1];
  v25 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  v26 = (v22 + v25[9]);
  v27 = v26[1];
  if (v27)
  {
    v53 = *v26;
    v49 = v27;
  }

  else
  {
    v53 = 0;
    v49 = 0xE000000000000000;
  }

  v28 = (v22 + v25[10]);
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    v47 = v29;
    v48 = v30;
  }

  else
  {
    v47 = 0xE000000000000000;
    v48 = 0;
  }

  v31 = (v22 + v25[11]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v45 = v32;
    v46 = v33;
  }

  else
  {
    v45 = 0xE000000000000000;
    v46 = 0;
  }

  v34 = (v22 + v25[12]);
  if (v34[1])
  {
    v35 = *v34;
    v36 = v34[1];
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  sub_100012038(v23, v24);

  result = sub_10008B0F0(v22);
  v38 = v51;
  *a3 = v52;
  a3[1] = v38;
  a3[2] = v23;
  a3[3] = v24;
  v40 = v48;
  v39 = v49;
  a3[4] = v53;
  a3[5] = v39;
  v42 = v46;
  v41 = v47;
  a3[6] = v40;
  a3[7] = v41;
  v43 = v45;
  a3[8] = v42;
  a3[9] = v43;
  a3[10] = v35;
  a3[11] = v36;
  return result;
}

uint64_t sub_10008B0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008B0F0(uint64_t a1)
{
  v2 = type metadata accessor for Proto_Ropes_Common_Attestation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008B14C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_10008B174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10008B190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_10008B1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10008B244()
{
  result = qword_100229640;
  if (!qword_100229640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229640);
  }

  return result;
}

uint64_t sub_10008B298(uint64_t a1, uint64_t a2)
{
  v4 = sub_100011AC0(qword_100229648, &unk_1001D6B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B310(uint64_t a1)
{
  result = sub_1001D0E60();
  if (v2 <= 0x3F)
  {
    result = sub_1001D02E0();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = sub_1001D0020();
        if (v5 <= 0x3F)
        {
          result = sub_1001D0000();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10008B3E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_1001D0E60();
  v6 = *(v5 - 8);
  v43 = v5;
  v7 = *(v6 + 84);
  v41 = sub_1001D02E0();
  v8 = *(v41 - 8);
  v9 = *(v8 + 84);
  v42 = v9;
  if (v9 <= v7)
  {
    v9 = v7;
  }

  v39 = *(a3 + 16);
  v10 = *(v39 - 8);
  v40 = *(v10 + 84);
  if (v40 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v37 = sub_1001D0020();
  v12 = *(v37 - 8);
  v38 = *(v12 + 84);
  if (v38 > v11)
  {
    v11 = *(v12 + 84);
  }

  v13 = *(sub_1001D0000() - 8);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v12 + 80);
  v19 = *(v13 + 80);
  if (*(v13 + 84) <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 64) + v14;
  v22 = *(v12 + 64) + v19;
  v23 = a1;
  if (a2 > v20)
  {
    v24 = ((v22 + ((v17 + v18 + ((v15 + (v21 & ~v14) + v16) & ~v16)) & ~v18)) & ~v19) + *(v13 + 64);
    v25 = 8 * v24;
    if (v24 <= 3)
    {
      v27 = ((a2 - v20 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v27))
      {
        v26 = *(a1 + v24);
        if (!v26)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v27 > 0xFF)
      {
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v27 < 2)
      {
LABEL_34:
        if (v20)
        {
          goto LABEL_35;
        }

        return 0;
      }
    }

    v26 = *(a1 + v24);
    if (!*(a1 + v24))
    {
      goto LABEL_34;
    }

LABEL_21:
    v28 = (v26 - 1) << v25;
    if (v24 > 3)
    {
      v28 = 0;
    }

    if (v24)
    {
      if (v24 <= 3)
      {
        v29 = v24;
      }

      else
      {
        v29 = 4;
      }

      if (v29 > 2)
      {
        if (v29 == 3)
        {
          v30 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v30 = *a1;
        }
      }

      else if (v29 == 1)
      {
        v30 = *a1;
      }

      else
      {
        v30 = *a1;
      }
    }

    else
    {
      v30 = 0;
    }

    return v20 + (v30 | v28) + 1;
  }

LABEL_35:
  if (v7 == v20)
  {
    v31 = v43;
    v32 = *(v6 + 48);
    v33 = v7;
    goto LABEL_37;
  }

  v23 = ((a1 + v21) & ~v14);
  if (v42 == v20)
  {
    v32 = *(v8 + 48);
    v33 = v42;
    v31 = v41;

    return v32(v23, v33, v31);
  }

  v23 = ((v23 + v15 + v16) & ~v16);
  if (v40 == v20)
  {
    v32 = *(v10 + 48);
    v33 = v40;
    v31 = v39;
    goto LABEL_37;
  }

  v23 = ((v23 + v17 + v18) & ~v18);
  if (v38 == v20)
  {
    v32 = *(v12 + 48);
    v33 = v38;
    v31 = v37;
LABEL_37:

    return v32(v23, v33, v31);
  }

  v35 = *(v13 + 48);
  v36 = (v23 + v22) & ~v19;

  return v35(v36);
}

void sub_10008B87C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1001D0E60() - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_1001D02E0() - 8);
  v44 = v7;
  v8 = *(v7 + 84);
  v39 = v8;
  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = *(*(a4 + 16) - 8);
  v43 = v9;
  v38 = *(v9 + 84);
  if (v38 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(sub_1001D0020() - 8);
  v37 = *(v11 + 84);
  if (v37 > v10)
  {
    v10 = *(v11 + 84);
  }

  v12 = *(sub_1001D0000() - 8);
  v13 = v12;
  v14 = *(v5 + 64);
  if (*(v12 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v7 + 80);
  v17 = v14 + v16;
  v18 = *(v7 + 64);
  v19 = *(v9 + 80);
  v20 = *(v9 + 64);
  v21 = *(v11 + 80);
  v22 = (v20 + v21 + ((v18 + ((v14 + v16) & ~v16) + v19) & ~v19)) & ~v21;
  v23 = *(v12 + 80);
  v24 = *(v11 + 64) + v23;
  v25 = ((v24 + v22) & ~v23) + *(v12 + 64);
  if (a3 <= v15)
  {
    v27 = 0;
    v26 = a1;
  }

  else
  {
    v26 = a1;
    if (v25 <= 3)
    {
      v30 = ((a3 - v15 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v15 < a2)
  {
    v28 = ~v15 + a2;
    if (v25 < 4)
    {
      v29 = (v28 >> (8 * v25)) + 1;
      if (v25)
      {
        v32 = v28 & ~(-1 << (8 * v25));
        bzero(v26, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v26 = v32;
            if (v27 > 1)
            {
LABEL_52:
              if (v27 == 2)
              {
                *&v26[v25] = v29;
              }

              else
              {
                *&v26[v25] = v29;
              }

              return;
            }
          }

          else
          {
            *v26 = v28;
            if (v27 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v26 = v32;
        v26[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v26, v25);
      *v26 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v27)
    {
      v26[v25] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&v26[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&v26[v25] = 0;
  }

  else if (v27)
  {
    v26[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v6 == v15)
  {
    v33 = *(v5 + 56);
    v34 = v26;
LABEL_58:

    v33(v34);
    return;
  }

  v34 = (&v26[v17] & ~v16);
  if (v39 == v15)
  {
    v33 = *(v44 + 56);
    goto LABEL_58;
  }

  v34 = (&v34[v18 + v19] & ~v19);
  if (v38 == v15)
  {
    v33 = *(v43 + 56);
    goto LABEL_58;
  }

  v34 = (&v34[v20 + v21] & ~v21);
  if (v37 == v15)
  {
    v33 = *(v11 + 56);
    goto LABEL_58;
  }

  v35 = *(v13 + 56);
  v36 = &v34[v24] & ~v23;

  v35(v36);
}

uint64_t sub_10008BD78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 968) = v4;
  *(v5 + 960) = a4;
  *(v5 + 1360) = a3;
  *(v5 + 952) = a2;
  *(v5 + 904) = a1;
  *(v5 + 976) = *(a4 - 8);
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = swift_task_alloc();
  v6 = sub_1001D0180();
  *(v5 + 1000) = v6;
  *(v5 + 1008) = *(v6 - 8);
  *(v5 + 1016) = swift_task_alloc();
  sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  *(v5 + 1024) = swift_task_alloc();
  v7 = sub_1001D20D0();
  *(v5 + 1032) = v7;
  v8 = *(v7 - 8);
  *(v5 + 1040) = v8;
  *(v5 + 1048) = *(v8 + 64);
  *(v5 + 1056) = swift_task_alloc();
  *(v5 + 1064) = swift_task_alloc();
  v9 = sub_1001D20F0();
  *(v5 + 1072) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1080) = v10;
  *(v5 + 1088) = *(v10 + 64);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  *(v5 + 1120) = swift_task_alloc();
  v11 = sub_1001D00F0();
  *(v5 + 1128) = v11;
  *(v5 + 1136) = *(v11 - 8);
  *(v5 + 1144) = swift_task_alloc();
  *(v5 + 1152) = swift_task_alloc();
  v12 = sub_1001CFD60();
  *(v5 + 1160) = v12;
  *(v5 + 1168) = *(v12 - 8);
  *(v5 + 1176) = swift_task_alloc();
  *(v5 + 1184) = swift_task_alloc();
  *(v5 + 1192) = swift_task_alloc();
  v13 = sub_1001D0040();
  *(v5 + 1200) = v13;
  *(v5 + 1208) = *(v13 - 8);
  *(v5 + 1216) = swift_task_alloc();
  *(v5 + 1224) = swift_task_alloc();
  *(v5 + 1232) = swift_task_alloc();
  v14 = sub_1001CFFB0();
  *(v5 + 1240) = v14;
  *(v5 + 1248) = *(v14 - 8);
  *(v5 + 1256) = swift_task_alloc();
  *(v5 + 1264) = swift_task_alloc();

  return _swift_task_switch(sub_10008C1B0, 0, 0);
}

uint64_t sub_10008C1B0()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  v0[159] = v2;
  v3 = *(v1 + 24);
  v0[160] = v3;
  if (v3 >> 60 == 15)
  {
    sub_100089BE4();
    swift_allocError();
    *v4 = 5913;
    *(v4 + 8) = _swiftEmptyArrayStorage;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_100089C38(v2, v3);
    sub_100012038(v2, v3);
    sub_1001CFFA0();
    v7 = v0[121];
    v8 = v0[120];
    (*(v0[156] + 32))(v0[158], v0[157], v0[155]);
    v9 = swift_task_alloc();
    v0[161] = v9;
    v10 = *(v8 + 16);
    v0[162] = v10;
    v9[2] = v10;
    v11 = *(v8 + 24);
    v0[163] = v11;
    v9[3] = v11;
    v9[4] = v7;
    sub_1001D20E0();

    return _swift_task_switch(sub_10008C4A8, 0, 0);
  }
}

uint64_t sub_10008C4A8()
{
  v1 = v0[138];
  v24 = v0[137];
  v25 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[132];
  v26 = v0[161];
  v6 = v0[130];
  v7 = v0[129];
  v8 = v0[128];
  sub_100090448(&qword_100229578, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1001D2500();
  v0[111] = 0x158E460913D00000;
  v0[112] = 1;
  sub_100090448(&qword_100229580, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1001D2100();
  v9 = *(v6 + 8);
  v0[164] = v9;
  v0[165] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = sub_1001D1BA0();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v2 + 16))(v24, v1, v3);
  (*(v6 + 16))(v5, v4, v7);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = (v25 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v2 + 32))(v13 + v11, v24, v3);
  (*(v6 + 32))(v13 + v12, v5, v7);
  v14 = sub_10008F210(0, 0, v8, &unk_1001D6BC0, v13);
  v0[166] = v14;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = sub_10008FE58;
  v15[4] = v26;
  v16 = swift_allocObject();
  v0[167] = v16;
  *(v16 + 16) = &unk_1001DEF90;
  *(v16 + 24) = v15;

  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  v0[168] = v17;
  *v17 = v0;
  v17[1] = sub_10008C84C;
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[158];
  v21 = v0[140];
  v22 = v0[121];

  return sub_10008DC2C(v21, v22, v20, v19, v18);
}

uint64_t sub_10008C84C()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_10008D720;
  }

  else
  {
    v2 = sub_10008C960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008C960()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10008C9F8, v0 + 912);
}

uint64_t sub_10008CA14()
{
  v1 = v0[164];
  v2 = v0[138];
  v3 = v0[135];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[129];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10008CAF4, 0, 0);
}

uint64_t sub_10008CAF4()
{
  v155 = v0;
  v146 = *(v0 + 1304);
  v151 = *(v0 + 1296);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1136);
  v130 = *(v0 + 1128);
  v134 = *(v0 + 1152);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1112);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 1008);
  v137 = *(v0 + 1000);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  (*(*(v0 + 1208) + 32))(*(v0 + 1232), v5, *(v0 + 1200));
  (*(v2 + 32))(v1, v5 + v9, v3);
  (*(v4 + 32))(v134, v5 + v10, v130);
  (*(v8 + 104))(v7, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v137);
  LOBYTE(v1) = (*(v146 + 8))(v7, v151);
  (*(v8 + 8))(v7, v137);
  if ((v1 & 1) == 0 || (v11 = *(v0 + 1352), sub_10008E77C(*(v0 + 1152), *(v0 + 1360) & 1, *(v0 + 960)), !v11))
  {
    v22 = sub_1001D00C0();
    if (v23)
    {
      v24 = *(v0 + 952);
      v25 = *(v24 + 72);
      if (!v25 || v22 == *(v24 + 64) && v23 == v25)
      {
      }

      else
      {
        v93 = sub_1001D2470();

        if ((v93 & 1) == 0)
        {
          v94 = *(v0 + 952);
          sub_100089C90(v94, v0 + 792);
          v95 = sub_1001D0E50();
          v96 = sub_1001D1DE0();
          sub_10005AF88(v94);
          if (os_log_type_enabled(v95, v96))
          {
            v97 = *(v0 + 952);
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v154[0] = v99;
            *v98 = 136315138;
            *(v98 + 4) = sub_1000954E0(*v97, *(v97 + 8), v154);
            _os_log_impl(&_mh_execute_header, v95, v96, "RoutingHint mismatch detected for attestation=%s", v98, 0xCu);
            sub_100011CF0(v99);
          }

          v100 = *(v0 + 1280);
          v101 = *(v0 + 1272);
          v12 = *(v0 + 1248);
          v141 = *(v0 + 1240);
          v147 = *(v0 + 1264);
          v102 = *(v0 + 1208);
          v136 = *(v0 + 1200);
          v140 = *(v0 + 1232);
          v103 = *(v0 + 1168);
          v129 = *(v0 + 1160);
          v133 = *(v0 + 1192);
          v104 = *(v0 + 1152);
          v105 = *(v0 + 1136);
          v106 = *(v0 + 1128);
          sub_100089BE4();
          swift_allocError();
          *v107 = 5915;
          *(v107 + 8) = _swiftEmptyArrayStorage;
          swift_willThrow();
          sub_10002683C(v101, v100);
          (*(v105 + 8))(v104, v106);
          (*(v103 + 8))(v133, v129);
          (*(v102 + 8))(v140, v136);
          goto LABEL_4;
        }
      }
    }

    v26 = *(v0 + 1224);
    v27 = *(v0 + 1208);
    v28 = *(v0 + 1200);
    v148 = *(v0 + 1184);
    v152 = *(v0 + 1192);
    v29 = *(v0 + 1168);
    v139 = *(v0 + 1232);
    v142 = *(v0 + 1160);
    v30 = *(v0 + 1152);
    v31 = *(v0 + 1144);
    v32 = *(v0 + 1136);
    v33 = *(v0 + 1128);
    (*(*(v0 + 976) + 16))(*(v0 + 984), *(v0 + 968), *(v0 + 960));
    v131 = *(v27 + 16);
    v131(v26, v139, v28);
    (*(v32 + 16))(v31, v30, v33);
    v34 = v148;
    v149 = *(v29 + 16);
    v149(v34, v152, v142);
    v35 = sub_1001D0E50();
    v36 = sub_1001D1E00();
    v135 = v35;
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 1224);
    if (v37)
    {
      v143 = *(v0 + 1216);
      v39 = *(v0 + 1208);
      v40 = *(v0 + 1200);
      v121 = *(v0 + 1184);
      v119 = *(v0 + 1176);
      v128 = *(v0 + 1168);
      v120 = *(v0 + 1160);
      v118 = *(v0 + 1144);
      v125 = *(v0 + 1136);
      v126 = *(v0 + 1128);
      v41 = *(v0 + 984);
      v42 = *(v0 + 976);
      v123 = v36;
      v43 = *(v0 + 960);
      v44 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v44 = 136446978;
      v45 = sub_1001D02B0();
      v47 = v46;
      (*(v42 + 8))(v41, v43);
      v48 = sub_1000954E0(v45, v47, v154);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v131(v143, v38, v40);
      v49 = sub_1001D1820();
      v51 = v50;
      v144 = *(v39 + 8);
      v144(v38, v40);
      v52 = sub_1000954E0(v49, v51, v154);

      *(v44 + 14) = v52;
      *(v44 + 22) = 2080;
      sub_1001D00D0();
      sub_100090448(&qword_100227A40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v53 = sub_1001D23A0();
      v55 = v54;
      v56 = *(v128 + 8);
      v56(v119, v120);
      v57 = v126;
      v127 = *(v125 + 8);
      v127(v118, v57);
      v58 = sub_1000954E0(v53, v55, v154);

      *(v44 + 24) = v58;
      *(v44 + 32) = 2080;
      v59 = sub_1001D23A0();
      v61 = v60;
      v132 = v56;
      v56(v121, v120);
      v62 = sub_1000954E0(v59, v61, v154);

      *(v44 + 34) = v62;
      _os_log_impl(&_mh_execute_header, v135, v123, "verified attestation bundle environment=%{public}s publicKey=%s keyExpiration=%s attestationExpiry=%s", v44, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v63 = *(v0 + 1208);
      v145 = *(v0 + 1200);
      v64 = *(v0 + 1184);
      v65 = *(v0 + 1168);
      v66 = *(v0 + 1160);
      v67 = *(v0 + 1144);
      v68 = *(v0 + 1136);
      v69 = *(v0 + 1128);
      v124 = *(v0 + 984);
      v70 = *(v0 + 976);
      v122 = *(v0 + 960);

      v132 = *(v65 + 8);
      v132(v64, v66);
      v127 = *(v68 + 8);
      v127(v67, v69);
      v71 = v145;
      v144 = *(v63 + 8);
      v144(v38, v71);
      (*(v70 + 8))(v124, v122);
    }

    v111 = *(v0 + 1272);
    v112 = *(v0 + 1280);
    v117 = *(v0 + 1264);
    v115 = *(v0 + 1248);
    v116 = *(v0 + 1240);
    v72 = *(v0 + 1232);
    v114 = *(v0 + 1200);
    v73 = *(v0 + 1192);
    v74 = *(v0 + 1160);
    v75 = *(v0 + 1152);
    v108 = *(v0 + 1128);
    v113 = *(v0 + 1360);
    v76 = *(v0 + 952);
    v77 = *(v0 + 904);
    v78 = sub_100090174();
    v109 = v79;
    v110 = v78;
    v80 = type metadata accessor for ValidatedAttestation(0);
    v149(v77 + v80[7], v73, v74);
    v81 = sub_1001D00E0();
    v150 = v82;
    v153 = v81;
    v83 = sub_1001D00C0();
    v85 = v84;
    sub_10002683C(v111, v112);
    v127(v75, v108);
    v132(v73, v74);
    v144(v72, v114);
    v86 = v76[1];
    *v77 = *v76;
    *(v77 + 16) = v86;
    v87 = v76[2];
    v88 = v76[3];
    v89 = v76[5];
    *(v77 + 64) = v76[4];
    *(v77 + 80) = v89;
    *(v77 + 32) = v87;
    *(v77 + 48) = v88;
    *(v77 + 96) = v113 & 1;
    *(v77 + 104) = v110;
    *(v77 + 112) = v109;
    v90 = (v77 + v80[8]);
    *v90 = v153;
    v90[1] = v150;
    v91 = (v77 + v80[9]);
    *v91 = v83;
    v91[1] = v85;
    sub_100089C90(v76, v0 + 696);
    (*(v115 + 8))(v117, v116);

    v21 = *(v0 + 8);
    goto LABEL_14;
  }

  v147 = *(v0 + 1264);
  v12 = *(v0 + 1248);
  v138 = *(v0 + 1232);
  v141 = *(v0 + 1240);
  v13 = *(v0 + 1208);
  v14 = *(v0 + 1200);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1168);
  v17 = *(v0 + 1160);
  v18 = *(v0 + 1152);
  v19 = *(v0 + 1136);
  v20 = *(v0 + 1128);
  sub_10002683C(*(v0 + 1272), *(v0 + 1280));
  (*(v19 + 8))(v18, v20);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v138, v14);
LABEL_4:
  (*(v12 + 8))(v147, v141);

  v21 = *(v0 + 8);
LABEL_14:

  return v21();
}

uint64_t sub_10008D720()
{
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  sub_1001D1C20();

  return _swift_asyncLet_finish(v0 + 16, v1, sub_10008D7B8, v0 + 656);
}

uint64_t sub_10008D7D4()
{
  v1 = v0[164];
  v2 = v0[138];
  v3 = v0[135];
  v4 = v0[134];
  v5 = v0[133];
  v6 = v0[129];

  v1(v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10008D8A0, 0, 0);
}

uint64_t sub_10008D8A0()
{
  v29 = v0;
  v1 = v0[124];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];

  (*(v2 + 16))(v1, v3, v4);
  swift_errorRetain();
  v5 = sub_1001D0E50();
  v6 = sub_1001D1DE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[124];
    v8 = v0[122];
    v9 = v0[120];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v10 = 136446466;
    v12 = sub_1001D02B0();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = sub_1000954E0(v12, v14, &v28);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "unable to verify attestation, environment=%{public}s error=%@", v10, 0x16u);
    sub_100011F00(v11, &unk_1002301D0, &qword_1001D4F50);

    sub_100011CF0(v27);
  }

  else
  {
    v17 = v0[124];
    v18 = v0[122];
    v19 = v0[120];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[156];
  v24 = v0[155];
  swift_willThrow();
  sub_10002683C(v21, v20);
  (*(v23 + 8))(v22, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10008DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1001D00F0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_1001CFD60();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = sub_1001D0040();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = sub_1001D0180();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10008DE2C, 0, 0);
}

uint64_t sub_10008DE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[20];
  v5 = v4[21];
  v7 = v4[19];
  v9 = v4[5];
  v8 = v4[6];
  type metadata accessor for AttestationVerifier(0, v9, v8, a4);
  (*(v6 + 104))(v5, enum case for PrivateCloudComputeFeatureFlags.trustedProxyProtocol(_:), v7);
  LOBYTE(v8) = (*(v8 + 8))(v5, v9, v8);
  (*(v6 + 8))(v5, v7);
  v10 = sub_1001D0E50();
  v11 = sub_1001D1DD0();
  v12 = os_log_type_enabled(v10, v11);
  if (v8)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "validating attestation using mux validator", v13, 2u);
    }

    v14 = swift_task_alloc();
    v4[22] = v14;
    v15 = sub_1001D0000();
    v16 = sub_100090448(&qword_1002295B0, &type metadata accessor for MuxValidator, &protocol conformance descriptor for MuxValidator);
    *v14 = v4;
    v14[1] = sub_10008E134;
    v17 = v4[18];
    v18 = v4[14];
    v19 = v4[10];
  }

  else
  {
    if (v12)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "validating attestation using direct node validator", v20, 2u);
    }

    v21 = swift_task_alloc();
    v4[24] = v21;
    v15 = sub_1001D0020();
    v16 = sub_100090448(&qword_1002295A8, &type metadata accessor for NodeValidator, &protocol conformance descriptor for NodeValidator);
    *v21 = v4;
    v21[1] = sub_10008E3A0;
    v17 = v4[17];
    v18 = v4[13];
    v19 = v4[9];
  }

  v22 = v4[4];

  return Validator.validate(bundle:)(v17, v18, v19, v22, v15, v16);
}

uint64_t sub_10008E134()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10008E60C;
  }

  else
  {
    v2 = sub_10008E248;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E248()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v15 = v0[10];
  v6 = v0[8];
  v13 = v0[14];
  v14 = v0[7];
  v7 = v0[2];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008E3A0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10008E6C4;
  }

  else
  {
    v2 = sub_10008E4B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008E4B4()
{
  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v15 = v0[9];
  v6 = v0[8];
  v13 = v0[13];
  v14 = v0[7];
  v7 = v0[2];
  v8 = sub_100011AC0(&qword_100229568, &unk_1001DEF80);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  (*(v2 + 32))(v7, v1, v3);
  (*(v4 + 32))(v7 + v9, v13, v5);
  (*(v6 + 32))(v7 + v10, v15, v14);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008E60C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E6C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008E77C(uint64_t a1, int a2, uint64_t a3)
{
  result = sub_10008E990(a1);
  if (!v3 && ((result ^ a2) & 1) != 0)
  {
    v6 = result;
    v7 = sub_1001D0E50();
    v8 = sub_1001D1DE0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v9 = 136446466;
      if (a2)
      {
        v10 = 0x79786F7270;
      }

      else
      {
        v10 = 0x746365726964;
      }

      if (a2)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      v12 = sub_1000954E0(v10, v11, &v17);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      if (v6)
      {
        v13 = 0x79786F7270;
      }

      else
      {
        v13 = 0x746365726964;
      }

      if (v6)
      {
        v14 = 0xE500000000000000;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      v15 = sub_1000954E0(v13, v14, &v17);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "node kind mismatch expectedNodeKind=%{public}s, validatedNodeKind=%{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    sub_100089BE4();
    swift_allocError();
    *v16 = 5920;
    *(v16 + 8) = _swiftEmptyArrayStorage;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10008E954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001CFFF0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008E990(uint64_t a1)
{
  v2 = sub_1001D00F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100011AC0(&qword_100229590, &unk_1001D6BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1001D00A0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v44 = &v41 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - v16;
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  (*(v3 + 16))(v5, a1, v2);
  sub_1001D0090();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v19, v8, v9);
    v24 = *(v10 + 16);
    v24(v17, v19, v9);
    v25 = (*(v10 + 88))(v17, v9);
    v26 = v25;
    v27 = enum case for PCC.AttestationType.computeNode(_:);
    if (v25 == enum case for PCC.AttestationType.computeNode(_:))
    {
      (*(v10 + 8))(v19, v9);
      (*(v10 + 96))(v17, v9);
      v28 = sub_1001D0080();
    }

    else
    {
      if (v25 != enum case for PCC.AttestationType.proxyNode(_:))
      {
        v30 = v44;
        v24(v44, v19, v9);
        v31 = sub_1001D0E50();
        v20 = sub_1001D1DE0();
        if (os_log_type_enabled(v31, v20))
        {
          v32 = swift_slowAlloc();
          v41 = v32;
          v45 = swift_slowAlloc();
          v47 = v45;
          *v32 = 136315138;
          v42 = v20;
          v33 = v44;
          v24(v43, v44, v9);
          v34 = sub_1001D1820();
          v46 = v19;
          v35 = v17;
          v37 = v36;
          v38 = *(v10 + 8);
          v38(v33, v9);
          v39 = sub_1000954E0(v34, v37, &v47);
          v17 = v35;
          v19 = v46;

          v20 = v41;
          *(v41 + 1) = v39;
          _os_log_impl(&_mh_execute_header, v31, v42, "attestation kind can't be determined from attestationType=%s", v20, 0xCu);
          sub_100011CF0(v45);
        }

        else
        {

          v38 = *(v10 + 8);
          v38(v30, v9);
        }

        sub_100089BE4();
        swift_allocError();
        *v40 = 5919;
        *(v40 + 8) = _swiftEmptyArrayStorage;
        swift_willThrow();
        v38(v19, v9);
        v38(v17, v9);
        return v20;
      }

      (*(v10 + 8))(v19, v9);
      (*(v10 + 96))(v17, v9);
      v28 = sub_1001D0070();
    }

    v20 = v26 != v27;
    (*(*(v28 - 8) + 8))(v17, v28);
    return v20;
  }

  sub_100011F00(v8, &qword_100229590, &unk_1001D6BE0);
  v20 = sub_1001D0E50();
  v21 = sub_1001D1DE0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "attestation kind can't be determined from attestationType=nil", v22, 2u);
  }

  sub_100089BE4();
  swift_allocError();
  *v23 = 5919;
  *(v23 + 8) = _swiftEmptyArrayStorage;
  swift_willThrow();
  return v20;
}