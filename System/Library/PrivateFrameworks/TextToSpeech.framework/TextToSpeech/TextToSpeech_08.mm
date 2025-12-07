uint64_t sub_1A93E4900(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  *(v2 + 136) = a1;

  sub_1A9378138((v2 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1A93E4A20, v3, 0);
}

char *sub_1A93E4A20()
{
  *(v0 + 56) = *(v0 + 136);
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = sub_1A937829C(&qword_1EB386E90, &unk_1A9589EF8);
  v4 = sub_1A93B744C(&qword_1EB386E98, &qword_1EB386E90, &unk_1A9589EF8, MEMORY[0x1E69E5DE8]);
  v5 = Sequence<>.filtered(axCriteria:)(v2, v3, v4, &protocol witness table for CoreSynthesizer.Voice);

  v7 = *(v5 + 16);
  v8 = *(v1 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 120);
  if (result && v9 <= *(v10 + 3) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v14 = v8 + v7;
  }

  else
  {
    v14 = v8;
  }

  result = sub_1A93A3558(result, v14, 1, *(v0 + 120));
  v10 = result;
  if (!*(v5 + 16))
  {
LABEL_13:

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_5:
  if ((*(v10 + 3) >> 1) - *(v10 + 2) < v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();

  if (v7)
  {
    v11 = *(v10 + 2);
    v12 = __OFADD__(v11, v7);
    v13 = v11 + v7;
    if (!v12)
    {
      *(v10 + 2) = v13;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_14:
  v15 = *(v0 + 112) + 1;
  if (v15 == *(v0 + 88))
  {

    v16 = *(v0 + 8);
    v17 = v10;
  }

  else
  {
    *(v0 + 112) = v15;
    *(v0 + 120) = v10;
    v18 = *(v0 + 96);
    sub_1A9379534(*(v0 + 80) + 40 * v15 + 32, v0 + 16);
    v20 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *v19 = v0;
    v19[1] = sub_1A93E4900;
    v17 = (v0 + 16);
    v16 = v20;
  }

  return v16(v17);
}

uint64_t sub_1A93E4CE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5[79] = v4;
  v5[78] = a2;
  v5[77] = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v5[80] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v5[81] = swift_task_alloc();
  v8 = a3[1];
  v5[82] = *a3;
  v5[83] = v8;
  v5[84] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1A93E4DE0, v4, 0);
}

uint64_t sub_1A93E4DE0()
{
  v14 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[79];
  v7 = sub_1A957B308();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v12 = v1;
  sub_1A9431DA8();
  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v3, v2, v5, &v13, &v12, v4);
  v11 = (*(*v6 + 392) + **(*v6 + 392));
  v8 = swift_task_alloc();
  v0[85] = v8;
  *v8 = v0;
  v8[1] = sub_1A93E4FA8;
  v9 = v0[81];

  return v11(v9);
}

uint64_t sub_1A93E4FA8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = v4[79];
  if (v1)
  {

    v11 = (*(*v7 + 424) + **(*v7 + 424));
    v8 = swift_task_alloc();
    v5[87] = v8;
    *v8 = v6;
    v8[1] = sub_1A93E5254;
    v9 = v5[81];

    return v11(v9);
  }

  else
  {
    v5[86] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1A93E51E0, v7, 0);
  }
}

uint64_t sub_1A93E51E0()
{
  v0[88] = v0[86];
  v1 = v0[79];
  sub_1A9391040(v0[81]);

  return MEMORY[0x1EEE6DFA0](sub_1A93E538C, v1, 0);
}

uint64_t sub_1A93E5254(uint64_t a1)
{
  v3 = *v1;

  v3[88] = a1;
  v4 = v3[79];
  sub_1A9391040(v3[81]);

  return MEMORY[0x1EEE6DFA0](sub_1A93E538C, v4, 0);
}

uint64_t sub_1A93E538C()
{
  v1 = *(v0 + 704);
  if (*(v1 + 16))
  {
    memcpy((v0 + 16), (v1 + 32), 0x118uLL);
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    sub_1A937B3DC(v0 + 16, v0 + 296);

    if (v2)
    {
      v6 = *(**(v0 + 632) + 232);

      v8 = v6(v7);
      if (*(v8 + 16))
      {
        v9 = sub_1A937A490(v3, v2);
        if (v10)
        {
          v11 = *(v0 + 624);
          v12 = *(v0 + 616);
          sub_1A9379534(*(v8 + 56) + 40 * v9, v0 + 576);
          sub_1A93B10AC(v3, v2, v5, v4);

          sub_1A932D070((v0 + 576), v11);
          memcpy(v12, (v0 + 16), 0x118uLL);

          v13 = *(v0 + 8);
          goto LABEL_10;
        }
      }

      sub_1A937B48C(v0 + 16);

      sub_1A93B10AC(v3, v2, v5, v4);
    }

    else
    {
      sub_1A937B48C(v0 + 16);
    }
  }

  else
  {
  }

  sub_1A93D7B08();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();

  v13 = *(v0 + 8);
LABEL_10:

  return v13();
}

uint64_t sub_1A93E55A8(void *__src, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2544) = v3;
  *(v4 + 2536) = a2;
  memcpy((v4 + 296), __src, 0x118uLL);
  *(v4 + 2592) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1A93E5630, v3, 0);
}

uint64_t sub_1A93E5630()
{
  v1 = *(v0 + 2536);
  v2 = v1[3];
  v3 = v1[4];
  sub_1A93780F4(v1, v2);
  v6 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  *(v0 + 2552) = v4;
  *v4 = v0;
  v4[1] = sub_1A93E5760;

  return v6(v0 + 16, v0 + 296, v2, v3);
}

uint64_t sub_1A93E5760()
{
  v2 = *v1;
  *(*v1 + 2560) = v0;

  v3 = *(v2 + 2544);
  if (v0)
  {
    v4 = sub_1A93E5C38;
  }

  else
  {
    v4 = sub_1A93E5878;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E5878()
{
  v2 = *(v0 + 2592);
  if (v2 != 4)
  {
    *(v0 + 209) = v2;
  }

  v3 = (*(**(v0 + 2544) + 208))();
  *(v0 + 2568) = v3;
  memcpy((v0 + 576), (v0 + 16), 0x118uLL);
  memcpy((v0 + 856), (v0 + 16), 0x118uLL);
  v4 = *(*v3 + 144);
  sub_1A937B3DC(v0 + 576, v0 + 1136);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 2576) = v5;
  *v5 = v0;
  v5[1] = sub_1A93E5A08;
  v6 = *(v0 + 2536);

  return v8(v0 + 856, v6);
}

uint64_t sub_1A93E5A08()
{
  v2 = *v1;
  v2[323] = v0;

  v3 = v2[318];
  if (v0)
  {
    memcpy(v2 + 212, v2 + 107, 0x118uLL);
    sub_1A937B48C((v2 + 212));

    v4 = sub_1A93E5C50;
  }

  else
  {
    memcpy(v2 + 282, v2 + 107, 0x118uLL);
    sub_1A937B48C((v2 + 282));

    v4 = sub_1A93E5B94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E5B94()
{
  (*(**(v0 + 2544) + 352))();
  memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
  sub_1A937B48C(v0 + 1976);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E5C50()
{
  memcpy(v0 + 177, v0 + 2, 0x118uLL);
  sub_1A937B48C((v0 + 177));
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A93E5CC4(void *__src)
{
  *(v2 + 1480) = v1;
  memcpy((v2 + 296), __src, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E5D38, v1, 0);
}

uint64_t sub_1A93E5D38()
{
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9587160;
  *(v1 + 32) = *sub_1A9493C84();
  v0[183] = v1;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v0[184] = v0[182];
  v2 = swift_task_alloc();
  v0[186] = v2;
  *v2 = v0;
  v2[1] = sub_1A93E5EA0;

  return sub_1A93E4CE4((v0 + 2), (v0 + 177), v0 + 37, v0 + 184);
}

uint64_t sub_1A93E5EA0()
{
  v2 = *v1;
  *(*v1 + 1496) = v0;

  v3 = *(v2 + 1480);
  if (v0)
  {
    v4 = sub_1A93F0EEC;
  }

  else
  {
    v4 = sub_1A93E5FB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E5FB8()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[180];
  v2 = v0[181];
  sub_1A93780F4(v0 + 177, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v5 = (*(v2 + 96) + **(v2 + 96));
  v3 = swift_task_alloc();
  v0[188] = v3;
  *v3 = v0;
  v3[1] = sub_1A93E6108;

  return v5(v0 + 107, v1, v2);
}

uint64_t sub_1A93E6108()
{
  v2 = *v1;
  *(v2 + 1512) = v0;

  if (v0)
  {
    v3 = *(v2 + 1480);

    return MEMORY[0x1EEE6DFA0](sub_1A93F0EF0, v3, 0);
  }

  else
  {
    memcpy((v2 + 1136), (v2 + 576), 0x118uLL);
    *(v2 + 1536) = 2;
    v4 = swift_task_alloc();
    *(v2 + 1520) = v4;
    *v4 = v2;
    v4[1] = sub_1A93E629C;

    return sub_1A93E55A8((v2 + 1136), v2 + 1416, (v2 + 1536));
  }
}

uint64_t sub_1A93E629C()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  v3 = *(v2 + 1480);
  if (v0)
  {
    v4 = sub_1A93F0F08;
  }

  else
  {
    v4 = sub_1A93F0EF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E63B4(void *__src)
{
  *(v2 + 1480) = v1;
  memcpy((v2 + 296), __src, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E6428, v1, 0);
}

uint64_t sub_1A93E6428()
{
  v0[183] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v0[184] = v0[182];
  v1 = swift_task_alloc();
  v0[186] = v1;
  *v1 = v0;
  v1[1] = sub_1A93E655C;

  return sub_1A93E4CE4((v0 + 2), (v0 + 177), v0 + 37, v0 + 184);
}

uint64_t sub_1A93E655C()
{
  v2 = *v1;
  *(*v1 + 1496) = v0;

  v3 = *(v2 + 1480);
  if (v0)
  {
    v4 = sub_1A93E6ADC;
  }

  else
  {
    v4 = sub_1A93E6674;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E6674()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[180];
  v2 = v0[181];
  sub_1A93780F4(v0 + 177, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v5 = (*(v2 + 88) + **(v2 + 88));
  v3 = swift_task_alloc();
  v0[188] = v3;
  *v3 = v0;
  v3[1] = sub_1A93E67C4;

  return v5(v0 + 107, v1, v2);
}

uint64_t sub_1A93E67C4()
{
  v2 = *v1;
  *(v2 + 1512) = v0;

  if (v0)
  {
    v3 = *(v2 + 1480);

    return MEMORY[0x1EEE6DFA0](sub_1A93E6AF4, v3, 0);
  }

  else
  {
    memcpy((v2 + 1136), (v2 + 576), 0x118uLL);
    *(v2 + 1536) = 2;
    v4 = swift_task_alloc();
    *(v2 + 1520) = v4;
    *v4 = v2;
    v4[1] = sub_1A93E6958;

    return sub_1A93E55A8((v2 + 1136), v2 + 1416, (v2 + 1536));
  }
}

uint64_t sub_1A93E6958()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  v3 = *(v2 + 1480);
  if (v0)
  {
    v4 = sub_1A93E6B60;
  }

  else
  {
    v4 = sub_1A93E6A70;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E6A70()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1416));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E6AF4()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1416));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E6B60()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1416));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E6BCC(uint64_t a1, const void *a2)
{
  v3[221] = v2;
  v3[220] = a1;
  v5 = sub_1A937829C(&qword_1EB386E08, &qword_1A9589BB0);
  v3[222] = v5;
  v3[223] = *(v5 - 8);
  v3[224] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB386E10, qword_1A9589BB8);
  v3[225] = v6;
  v3[226] = *(v6 - 8);
  v3[227] = swift_task_alloc();
  memcpy(v3 + 37, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E6D18, v2, 0);
}

uint64_t sub_1A93E6D18()
{
  v0[218] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v0[219] = v0[217];
  v1 = swift_task_alloc();
  v0[228] = v1;
  *v1 = v0;
  v1[1] = sub_1A93E6E4C;

  return sub_1A93E4CE4((v0 + 2), (v0 + 212), v0 + 37, v0 + 219);
}

uint64_t sub_1A93E6E4C()
{
  v2 = *v1;
  *(*v1 + 1832) = v0;

  v3 = *(v2 + 1768);
  if (v0)
  {
    v4 = sub_1A93E7768;
  }

  else
  {
    v4 = sub_1A93E6F64;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E6F64()
{
  memcpy((v0 + 576), (v0 + 16), 0x118uLL);
  if ((*(v0 + 769) & 0xFE) != 2 && *(v0 + 824) == 0)
  {
    v6 = *(v0 + 1816);
    v7 = *(v0 + 1808);
    v8 = *(v0 + 1800);
    v9 = *(v0 + 1792);
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1776);
    (*(v10 + 104))(v9, *MEMORY[0x1E69E8650], v11);
    sub_1A957C698();
    (*(v10 + 8))(v9, v11);
    sub_1A957C6C8();
    sub_1A937B48C(v0 + 576);
    (*(v7 + 8))(v6, v8);
    sub_1A9378138((v0 + 1696));

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = *(v0 + 1720);
    v3 = *(v0 + 1728);
    sub_1A93780F4((v0 + 1696), v2);
    memcpy((v0 + 856), (v0 + 576), 0x118uLL);
    v13 = (*(v3 + 80) + **(v3 + 80));
    v4 = swift_task_alloc();
    *(v0 + 1840) = v4;
    *v4 = v0;
    v4[1] = sub_1A93E71DC;

    return v13(v0 + 856, v2, v3);
  }
}

uint64_t sub_1A93E71DC()
{
  v2 = *v1;
  *(v2 + 1848) = v0;

  if (v0)
  {
    v3 = *(v2 + 1768);

    return MEMORY[0x1EEE6DFA0](sub_1A93E77D8, v3, 0);
  }

  else
  {
    memcpy((v2 + 1136), (v2 + 576), 0x118uLL);
    *(v2 + 1888) = 3;
    v4 = swift_task_alloc();
    *(v2 + 1856) = v4;
    *v4 = v2;
    v4[1] = sub_1A93E7370;

    return sub_1A93E55A8((v2 + 1136), v2 + 1696, (v2 + 1888));
  }
}

uint64_t sub_1A93E7370()
{
  v2 = *v1;
  *(*v1 + 1864) = v0;

  v3 = *(v2 + 1768);
  if (v0)
  {
    v4 = sub_1A93E7858;
  }

  else
  {
    v4 = sub_1A93E7488;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E7488()
{
  v1 = v0[215];
  v2 = v0[216];
  sub_1A93780F4(v0 + 212, v1);
  memcpy(v0 + 177, v0 + 72, 0x118uLL);
  v6 = (*(v2 + 104) + **(v2 + 104));
  v3 = swift_task_alloc();
  v0[234] = v3;
  *v3 = v0;
  v3[1] = sub_1A93E75CC;
  v4 = v0[220];

  return v6(v4, v0 + 177, v1, v2);
}

uint64_t sub_1A93E75CC()
{
  v2 = *v1;
  *(*v1 + 1880) = v0;

  v3 = *(v2 + 1768);
  if (v0)
  {
    v4 = sub_1A93E78D8;
  }

  else
  {
    v4 = sub_1A93E76E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E76E4()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E77D8()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7858()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E78D8()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7958(uint64_t a1, const void *a2)
{
  v3[151] = v2;
  v3[150] = a1;
  memcpy(v3 + 37, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93E79CC, v2, 0);
}

uint64_t sub_1A93E79CC()
{
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9587160;
  *(v1 + 32) = *sub_1A9493C84();
  v0[148] = v1;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v0[149] = v0[147];
  v2 = swift_task_alloc();
  v0[152] = v2;
  *v2 = v0;
  v2[1] = sub_1A93E7B34;

  return sub_1A93E4CE4((v0 + 2), (v0 + 142), v0 + 37, v0 + 149);
}

uint64_t sub_1A93E7B34()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  v3 = *(v2 + 1208);
  if (v0)
  {
    v4 = sub_1A93E7F24;
  }

  else
  {
    v4 = sub_1A93E7C4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E7C4C()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  v1 = v0[145];
  v2 = v0[146];
  sub_1A93780F4(v0 + 142, v1);
  memcpy(v0 + 107, v0 + 72, 0x118uLL);
  v6 = (*(v2 + 112) + **(v2 + 112));
  v3 = swift_task_alloc();
  v0[154] = v3;
  *v3 = v0;
  v3[1] = sub_1A93E7DA0;
  v4 = v0[150];

  return v6(v4, v0 + 107, v1, v2);
}

uint64_t sub_1A93E7DA0()
{
  v2 = *v1;
  *(*v1 + 1240) = v0;

  v3 = *(v2 + 1208);
  if (v0)
  {
    v4 = sub_1A93E7F3C;
  }

  else
  {
    v4 = sub_1A93E7EB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A93E7EB8()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7F3C()
{
  sub_1A937B48C(v0 + 576);
  sub_1A9378138((v0 + 1136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E7FA8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1A957B078();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93E80AC, v1, 0);
}

uint64_t sub_1A93E80AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v1 + 32);
    *(v0 + 216) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -(-1 << v3));
    }

    v6 = v4 & *(v1 + 56);
    *(v0 + 120) = OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs;

    if (v6)
    {
      v8 = 0;
LABEL_12:
      *(v0 + 128) = v6;
      *(v0 + 136) = v8;
      v12 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v12;
      *(v0 + 144) = *v12;
      v14 = v12[1];
      *(v0 + 152) = v14;
      v15 = *(*v2 + 208);

      v17 = v15(v16);
      *(v0 + 160) = v17;
      v22 = (*(*v17 + 136) + **(*v17 + 136));
      v18 = swift_task_alloc();
      *(v0 + 168) = v18;
      *v18 = v0;
      v18[1] = sub_1A93E83C4;

      return v22(v13, v14);
    }

    else
    {
      v11 = 0;
      while (((63 - v5) >> 6) - 1 != v11)
      {
        v8 = v11 + 1;
        v6 = *(v7 + 8 * v11++ + 64);
        if (v6)
        {
          goto LABEL_12;
        }
      }

      (*(**(v0 + 72) + 352))(v19);

      v20 = *(v0 + 8);

      return v20();
    }
  }

  else
  {
    v9 = (*(*v2 + 208))();
    *(v0 + 184) = v9;
    v10 = (*v9 + 120) & 0xFFFFFFFFFFFFLL | 0x8CB1000000000000;
    *(v0 + 192) = *(*v9 + 120);
    *(v0 + 200) = v10;

    return MEMORY[0x1EEE6DFA0](sub_1A93E8B04, v9, 0);
  }
}

uint64_t sub_1A93E83C4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_1A93E8CA8;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 72);

    v4 = sub_1A93E851C;
    v5 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1A93E851C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v2 + 56);
  v5 = *(*(v0 + 72) + *(v0 + 120));
  v4(v1, 1, 1, v3);
  v63 = (*(*v5 + 200))(v0 + 16);
  v7 = v6;
  v8 = (*(v2 + 48))(v1, 1, v3);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  if (v8 == 1)
  {
    sub_1A937B960(*(v0 + 112), &qword_1EB386E78, qword_1A9589E60);
    v11 = sub_1A937A490(v10, v9);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v19 = 1;
      goto LABEL_12;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 48) = *v7;
    *v7 = 0x8000000000000000;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_4:
      v15 = *(v0 + 104);
      v17 = *(v0 + 80);
      v16 = *(v0 + 88);
      v18 = *(v0 + 48);

      (*(v16 + 32))(v15, *(v18 + 56) + *(v16 + 72) * v11, v17);
      sub_1A93EC54C(v11, v18);
      *v7 = v18;

      v19 = 0;
LABEL_12:
      v35 = *(v0 + 104);
      v4(v35, v19, 1, *(v0 + 80));
      sub_1A937B960(v35, &qword_1EB386E78, qword_1A9589E60);
      goto LABEL_22;
    }

LABEL_17:
    sub_1A93ECE64();
    goto LABEL_4;
  }

  v20 = *(v0 + 88);
  v22 = *(v20 + 32);
  v4 = (v20 + 32);
  v21 = v22;
  v22(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *(v0 + 56) = *v7;
  *v7 = 0x8000000000000000;
  v24 = sub_1A937A490(v10, v9);
  v26 = *(v11 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
    goto LABEL_17;
  }

  v30 = v25;
  if (*(v11 + 24) >= v29)
  {
    if ((v23 & 1) == 0)
    {
      v42 = v24;
      sub_1A93ECE64();
      v24 = v42;
      v36 = *(v0 + 152);
      if (v30)
      {
        goto LABEL_15;
      }

LABEL_19:
      v43 = *(v0 + 144);
      v45 = *(v0 + 88);
      v44 = *(v0 + 96);
      v46 = *(v0 + 80);
      v41 = *(v0 + 56);
      v41[(v24 >> 6) + 8] |= 1 << v24;
      v47 = (v41[6] + 16 * v24);
      *v47 = v43;
      v47[1] = v36;
      result = v21(v41[7] + *(v45 + 72) * v24, v44, v46);
      v48 = v41[2];
      v28 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v28)
      {
LABEL_35:
        __break(1u);
        return result;
      }

      v41[2] = v49;
      goto LABEL_21;
    }
  }

  else
  {
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    sub_1A93EB520(v29, v23);
    v24 = sub_1A937A490(v32, v31);
    if ((v30 & 1) != (v33 & 1))
    {

      return sub_1A957D438();
    }
  }

  v36 = *(v0 + 152);
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  v40 = v24;

  v41 = *(v0 + 56);
  (*(v38 + 40))(v41[7] + *(v38 + 72) * v40, v37, v39);
LABEL_21:
  *v7 = v41;

LABEL_22:
  result = v63(v0 + 16, 0);
  v50 = *(v0 + 136);
  v51 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v51)
  {
    result = *(v0 + 64);
LABEL_28:
    *(v0 + 128) = v51;
    *(v0 + 136) = v50;
    v53 = *(v0 + 72);
    v54 = (*(result + 48) + ((v50 << 10) | (16 * __clz(__rbit64(v51)))));
    v55 = *v54;
    *(v0 + 144) = *v54;
    v56 = v54[1];
    *(v0 + 152) = v56;
    v57 = *(*v53 + 208);

    v59 = v57(v58);
    *(v0 + 160) = v59;
    v64 = (*(*v59 + 136) + **(*v59 + 136));
    v60 = swift_task_alloc();
    *(v0 + 168) = v60;
    *v60 = v0;
    v60[1] = sub_1A93E83C4;

    return v64(v55, v56);
  }

  else
  {
    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      result = *(v0 + 64);
      if (v52 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v51 = *(result + 8 * v52 + 56);
      ++v50;
      if (v51)
      {
        v50 = v52;
        goto LABEL_28;
      }
    }

    (*(**(v0 + 72) + 352))(v61);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_1A93E8B04()
{
  (*(v0 + 192))();
  *(v0 + 208) = 0;
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A93E8BA8, v1, 0);
}

uint64_t sub_1A93E8BA8()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase_prefs);
  v2 = sub_1A93EE5B4(MEMORY[0x1E69E7CC0]);
  v3 = (*(*v1 + 192))(v2);
  (*(**(v0 + 72) + 352))(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A93E8CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E8D30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93E8DB8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A93E8DD8, v1, 0);
}

uint64_t sub_1A93E8DD8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = (*(**(v0 + 24) + 232))();
    v1 = sub_1A93E90A0(v2);
  }

  *(v0 + 32) = v1;
  v3 = *(v0 + 24);
  v4 = sub_1A93F0AAC(&qword_1EB386160, 255, type metadata accessor for VoiceDatabase, &protocol conformance descriptor for VoiceDatabase);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1A93E8F58;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v6, v7, v8, v3, v4, &unk_1A9589F80, v5, v9);
}

void sub_1A93E8F58()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x1EEE6DFA0](sub_1A93F0F04, v3, 0);
  }
}

uint64_t sub_1A93E90A0(uint64_t a1)
{
  result = MEMORY[0x1AC585770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A93AB260(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93E91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93E926C, a4, 0);
}

uint64_t sub_1A93E926C()
{
  v1 = *(v0 + 200);
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v37 = v1 + 56;
  v35 = v1;
  if (v5)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = (*(v1 + 48) + ((v8 << 10) | (16 * v10)));
        v13 = *v11;
        v12 = v11[1];
        v14 = *(**(v0 + 208) + 232);

        v16 = v14(v15);
        if (*(v16 + 16))
        {
          break;
        }

LABEL_6:

        v2 = v37;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v17 = sub_1A937A490(v13, v12);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        goto LABEL_6;
      }

      v20 = *(v0 + 224);
      v36 = *(v0 + 216);
      v21 = *(v0 + 208);
      sub_1A9379534(*(v16 + 56) + 40 * v17, v0 + 56);

      sub_1A932D070((v0 + 56), v0 + 16);
      v22 = sub_1A957C688();
      v23 = *(v22 - 8);
      v24 = v20;
      (*(v23 + 56))(v20, 1, 1, v22);
      sub_1A9379534(v0 + 16, v0 + 96);
      v25 = swift_allocObject();
      v25[2] = 0;
      v26 = v25 + 2;
      v25[3] = 0;
      v25[4] = v21;
      sub_1A932D070((v0 + 96), (v25 + 5));
      sub_1A9391BAC(v24, v36, &qword_1EB388000, &qword_1A9587710);
      LODWORD(v24) = (*(v23 + 48))(v36, 1, v22);

      v27 = *(v0 + 216);
      if (v24 == 1)
      {
        sub_1A937B960(*(v0 + 216), &qword_1EB388000, &qword_1A9587710);
        if (!*v26)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1A957C678();
        (*(v23 + 8))(v27, v22);
        if (!*v26)
        {
LABEL_17:
          v28 = 0;
          v30 = 0;
          goto LABEL_18;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_1A957C5A8();
      v30 = v29;
      swift_unknownObjectRelease();
LABEL_18:
      v31 = **(v0 + 192);

      if (v30 | v28)
      {
        v32 = v0 + 136;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0;
        *(v0 + 152) = v28;
        *(v0 + 160) = v30;
      }

      else
      {
        v32 = 0;
      }

      v33 = *(v0 + 224);
      *(v0 + 168) = 1;
      *(v0 + 176) = v32;
      *(v0 + 184) = v31;
      swift_task_create();

      sub_1A937B960(v33, &qword_1EB388000, &qword_1A9587710);
      result = sub_1A9378138((v0 + 16));
      v1 = v35;
      v2 = v37;
      if (!v5)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1A93E968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1A93836DC;

  return sub_1A93E0E30(a5);
}

uint64_t sub_1A93E9728()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5080(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A93E97A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);

    sub_1A957BA08();
    type metadata accessor for VoiceDatabase.Preferences();
    sub_1A93F0400();
    sub_1A93F04C0();
    sub_1A93F0AAC(&qword_1EB386328, v6, type metadata accessor for VoiceDatabase.Preferences, &unk_1A958A1B8);
    v5 = sub_1A957B8D8();
    *(a1 + 16) = v5;
  }

  *a2 = v5;
}

unint64_t sub_1A93E9938@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A93EE5B4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A93E9968()
{

  sub_1A937829C(&qword_1EB386EA8, &qword_1A9589F90);
  sub_1A957BA88();
}

uint64_t sub_1A93E99DC()
{
  (*(*v0 + 168))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A93E9A3C(uint64_t a1)
{
  (*(*v1 + 168))();
  sub_1A957B8F8();
}

void (*sub_1A93E9AA0(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0x2002000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

void sub_1A93E9B5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[3];
  if (a2)
  {

    (v4)(v5);
    v2[1] = v3;
    sub_1A957B8F8();
  }

  else
  {
    v4();
    v2[1] = v3;
    sub_1A957B8F8();
  }

  free(v2);
}

uint64_t sub_1A93E9BFC()
{
  v1 = (*(*v0 + 168))();
  v13 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v14 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98, MEMORY[0x1E6988248]);
  *&v12 = v1;
  sub_1A932D070(&v12, v11);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2;
  v4 = sub_1A9396054(v11, v11[3]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_1A93EDA0C(*v6, 0x616F4C7473616C24, 0xED00006E4F646564, isUniquelyReferenced_nonNull_native, &v10);
  sub_1A9378138(v11);
  return v10;
}

uint64_t sub_1A93E9DA4()
{

  sub_1A9378138((v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_1A93E9DFC()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  sub_1A957B9B8();
  swift_allocObject();
  v0[4] = sub_1A957B9A8();
  sub_1A957B998();
  swift_allocObject();
  v0[5] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

uint64_t sub_1A93E9E98()
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A93E9F04(uint64_t a1)
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](0);
  return sub_1A957D548();
}

uint64_t sub_1A93E9F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A95C1D50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A957D3E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A93EA00C(uint64_t a1)
{
  v2 = sub_1A93EE940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93EA048(uint64_t a1)
{
  v2 = sub_1A93EE940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93EA084()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A93EA0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A93EA188(uint64_t a1)
{
  v2 = sub_1A93EE994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93EA1C4(uint64_t a1)
{
  v2 = sub_1A93EE994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceDatabase.Trigger.encode(to:)(void *a1)
{
  v11[0] = sub_1A937829C(&qword_1EB386EC0, &qword_1A9589FA0);
  v13 = *(v11[0] - 8);
  MEMORY[0x1EEE9AC00](v11[0]);
  v3 = v11 - v2;
  v4 = sub_1A937829C(&qword_1EB386EC8, &qword_1A9589FA8);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  sub_1A93780F4(a1, a1[3]);
  sub_1A93EE940();
  sub_1A957D598();
  v7 = v4;
  v8 = v11[0];
  sub_1A93EE994();
  sub_1A957D288();
  v15 = 0;
  v9 = v11[1];
  sub_1A957D2E8();
  if (!v9)
  {
    v14 = 1;
    sub_1A957D2D8();
  }

  (*(v13 + 8))(v3, v8);
  return (*(v12 + 8))(v6, v7);
}

uint64_t VoiceDatabase.Trigger.hash(into:)(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  if (v3 == 1)
  {
    return sub_1A957D518();
  }

  sub_1A957D518();
  return MEMORY[0x1AC5863F0](v2);
}

uint64_t VoiceDatabase.Trigger.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v3 != 1)
  {
    MEMORY[0x1AC5863F0](v2);
  }

  return sub_1A957D548();
}

uint64_t VoiceDatabase.Trigger.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_1A937829C(&qword_1EB386ED0, &qword_1A9589FB0);
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = sub_1A937829C(&qword_1EB386ED8, &qword_1A9589FB8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v27 = a1;
  sub_1A93780F4(a1, v11);
  sub_1A93EE940();
  sub_1A957D588();
  if (!v2)
  {
    v12 = v8;
    if (*(sub_1A957D268() + 16) == 1)
    {
      sub_1A93EE994();
      v13 = v6;
      sub_1A957D178();
      v18 = swift_allocObject();
      v29 = 0;
      *(v18 + 16) = sub_1A957D1E8();
      *(v18 + 24) = v19;
      v28 = 1;
      v21 = sub_1A957D1D8();
      v22 = v13;
      LOBYTE(v13) = v23;
      (*(v26 + 8))(v22, v4);
      (*(v12 + 8))(v10, v7);
      swift_unknownObjectRelease();
      *(v18 + 32) = v21;
      *(v18 + 40) = v13 & 1;
      *v25 = v18;
    }

    else
    {
      v14 = sub_1A957CF58();
      swift_allocError();
      v15 = v7;
      v17 = v16;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v17 = &type metadata for VoiceDatabase.Trigger;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v14);
      swift_willThrow();
      (*(v8 + 8))(v10, v15);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v27);
}

uint64_t sub_1A93EAA00()
{
  v1 = *v0;
  sub_1A957D4F8();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v3 != 1)
  {
    MEMORY[0x1AC5863F0](v2);
  }

  return sub_1A957D548();
}

uint64_t sub_1A93EAAA0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  if (v3 == 1)
  {
    return sub_1A957D518();
  }

  sub_1A957D518();
  return MEMORY[0x1AC5863F0](v2);
}

uint64_t sub_1A93EAB20(uint64_t a1)
{
  v2 = *v1;
  sub_1A957D4F8();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v4 != 1)
  {
    MEMORY[0x1AC5863F0](v3);
  }

  return sub_1A957D548();
}

uint64_t VoiceDatabase.deinit()
{
  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceDatabase____lazy_storage___currentBootTime, &qword_1EB386E78, qword_1A9589E60);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabase.__deallocating_deinit()
{
  VoiceDatabase.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1A93EAD8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB388460, &qword_1A958A728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93EAED4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB386F40, &qword_1A958A770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386F50, &qword_1A958A790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93EB008(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1A93EB098(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xEA0EA0EA0EA0EA1) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

unint64_t sub_1A93EB130(uint64_t a1)
{
  sub_1A957D4F8();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  MEMORY[0x1AC5863C0](0);
  sub_1A957C228();
  sub_1A957D518();
  if (v3 != 1)
  {
    MEMORY[0x1AC5863F0](v2);
  }

  v4 = sub_1A957D548();

  return sub_1A93EB1F4(a1, v4);
}

unint64_t sub_1A93EB1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    do
    {
      v13 = *(v7 + 8 * v5);
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 16) == v8 && *(v13 + 24) == v9;
      if (v16 || (sub_1A957D3E8() & 1) != 0)
      {
        if (v15)
        {
          if (v11)
          {
            return v5;
          }
        }

        else
        {
          if (v14 == v10)
          {
            v12 = v11;
          }

          else
          {
            v12 = 1;
          }

          if ((v12 & 1) == 0)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1A93EB2E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A937A490(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      v10 = v12;
    }

    sub_1A932D070((*(v10 + 56) + 40 * v8), a3);
    sub_1A93EC390(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A93EB3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A937A490(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A93ECE64();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1A957B078();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1A93EC54C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1A957B078();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1A93EB520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1A957B078();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
  v42 = v4;
  result = sub_1A957D118();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A93EB8A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
  v35 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v34 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      v22 = *(v20 + 32);
      v23 = *(v20 + 40);
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      sub_1A957D518();
      if (v23 != 1)
      {
        MEMORY[0x1AC5863F0](v22);
      }

      result = sub_1A957D548();
      v7 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v34 + 48) + 8 * v15) = v20;
      *(*(v34 + 56) + 8 * v15) = v21;
      ++*(v34 + 16);
      v5 = v33;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1A93EBBA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1A937829C(a3, a4);
  v36 = v7;
  result = sub_1A957D118();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_1A9379534(v27, v38);
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_1A93EBE70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v35 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      if (v35)
      {
        v25 = *(v5 + 56) + 280 * v21;
        v38 = *(v25 + 8);
        v39 = *v25;
        v40 = *(v25 + 32);
        v43 = *(v25 + 40);
        v41 = *(v25 + 24);
        v42 = *(v25 + 48);
        v44 = *(v25 + 56);
        v48 = *(v25 + 80);
        v45 = *(v25 + 64);
        v51 = *(v25 + 104);
        v49 = *(v25 + 112);
        v46 = *(v25 + 120);
        v47 = *(v25 + 57);
        v53 = *(v25 + 128);
        v54 = *(v25 + 96);
        v50 = *(v25 + 136);
        v56 = *(v25 + 144);
        v52 = *(v25 + 152);
        v55 = *(v25 + 160);
        v26 = *(v25 + 176);
        v36 = *(v25 + 192);
        v37 = *(v25 + 184);
        v58 = *(v25 + 188);
        v59 = *(v25 + 193);
        v60 = *(v25 + 200);
        v61 = *(v25 + 248);
        v62 = *(v25 + 216);
        v57 = *(v25 + 232);
        v63 = *(v25 + 272);
        v64 = *(v25 + 264);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 280 * v21), 0x118uLL);
        v63 = *&__dst[17];
        v64 = *(&__dst[16] + 1);
        v60 = *(&__dst[12] + 8);
        v61 = *(&__dst[15] + 8);
        v62 = *(&__dst[13] + 8);
        v57 = *(&__dst[14] + 8);
        v58 = HIDWORD(__dst[11]);
        v59 = BYTE1(__dst[12]);
        v36 = __dst[12];
        v37 = BYTE8(__dst[11]);
        v55 = __dst[10];
        v26 = *&__dst[11];
        v52 = *(&__dst[9] + 1);
        v56 = *&__dst[9];
        v53 = *&__dst[8];
        v54 = *&__dst[6];
        v50 = *(&__dst[8] + 1);
        v51 = *(&__dst[6] + 1);
        v49 = *&__dst[7];
        v48 = __dst[5];
        v45 = __dst[4];
        v46 = BYTE8(__dst[7]);
        v47 = BYTE9(__dst[3]);
        v44 = BYTE8(__dst[3]);
        v42 = *&__dst[3];
        v43 = *(&__dst[2] + 1);
        v40 = *&__dst[2];
        v41 = *(&__dst[1] + 1);
        v39 = *&__dst[0];
        v38 = *(__dst + 8);

        sub_1A937B3DC(__dst, v65);
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(__dst[0]) = v37;
      v65[0] = v36;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 280 * v15;
      *v17 = v39;
      *(v17 + 8) = v38;
      *(v17 + 24) = v41;
      *(v17 + 32) = v40;
      *(v17 + 40) = v43;
      *(v17 + 48) = v42;
      *(v17 + 56) = v44;
      *(v17 + 57) = v47;
      *(v17 + 64) = v45;
      *(v17 + 80) = v48;
      *(v17 + 96) = v54;
      *(v17 + 104) = v51;
      *(v17 + 112) = v49;
      *(v17 + 120) = v46;
      *(v17 + 128) = v53;
      *(v17 + 136) = v50;
      *(v17 + 144) = v56;
      *(v17 + 152) = v52;
      *(v17 + 160) = v55;
      *(v17 + 176) = v26;
      *(v17 + 184) = __dst[0];
      *(v17 + 188) = v58;
      *(v17 + 192) = v65[0];
      *(v17 + 193) = v59;
      *(v17 + 200) = v60;
      *(v17 + 216) = v62;
      *(v17 + 232) = v57;
      *(v17 + 248) = v61;
      *(v17 + 264) = v64;
      *(v17 + 272) = v63;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A93EC390(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v11 = sub_1A957D548();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A93EC54C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    while (1)
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v9 = sub_1A957D548();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1A957B078() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A93EC738(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A93ED248(&qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A93EBBA0(v16, a4 & 1, &qword_1EB386F58, &qword_1A958A798, sub_1A93F0F10);
    v11 = sub_1A937A490(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1A957D438();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_1A9378138(v22);

    return sub_1A932D070(a1, v22);
  }

  else
  {
    sub_1A93ECD44(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1A93EC8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A937A490(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A93ECE64();
      goto LABEL_7;
    }

    sub_1A93EB520(v15, a4 & 1);
    v26 = sub_1A937A490(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1A957B078();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1A93ECDB4(v12, a2, a3, a1, v18);
}

uint64_t sub_1A93ECA58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A93EB130(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A93EB8A0(v14, a3 & 1);
      v9 = sub_1A93EB130(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A93ED0E4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

uint64_t sub_1A93ECBB8(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A93EBE70(v16, a4 & 1);
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A93ED3EC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 280 * v11;

    return sub_1A93F0618(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  memcpy((v21[7] + 280 * v11), a1, 0x118uLL);
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1A93ECD44(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A932D070(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1A93ECDB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1A957B078();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_1A93ECE64()
{
  v1 = v0;
  v35 = sub_1A957B078();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
  v3 = *v0;
  v4 = sub_1A957D108();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1A93ED0E4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A93ED248(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_1A937829C(a1, a2);
  v5 = *v3;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_1A9379534(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1A93ED3EC()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1A937B3DC(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 280 * v16;
      memcpy(__dst, (*(v2 + 56) + 280 * v16), 0x118uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x118uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A93ED5A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93ED5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A93ED5C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A937829C(&qword_1EB386E80, &qword_1A9596E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB388460, &qword_1A958A728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A93ED710(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 280 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x118uLL);
      memmove(v11, v18, 0x118uLL);
      if (v14 == v10)
      {
        sub_1A937B3DC(__dst, v22);
        goto LABEL_23;
      }

      v11 += 280;
      sub_1A937B3DC(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1A93ED8A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1A9379534(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1A932D070(v20, v21);
      sub_1A932D070(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A93EDA0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v30 = v10;
  v31 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98, MEMORY[0x1E6988248]);
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_1A937A490(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_1A9378138(v20);
      return sub_1A932D070(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1A93ED248(&qword_1EB386F00, &qword_1A958A680, sub_1A93F0F10);
    goto LABEL_7;
  }

  sub_1A93EBBA0(v16, a4 & 1, &qword_1EB386F00, &qword_1A958A680, sub_1A93F0F10);
  v22 = sub_1A937A490(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_1A9396054(&v29, v10);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1A93EDC84(v13, a2, a3, *v26, v19);

  return sub_1A9378138(&v29);
}

uint64_t sub_1A93EDC84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_1A937829C(&qword_1EB386EB0, &qword_1A9589F98);
  v17 = sub_1A93B744C(&qword_1EB386EB8, &qword_1EB386EB0, &qword_1A9589F98, MEMORY[0x1E6988248]);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1A932D070(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1A93EDD74()
{
  v0 = sub_1A957BC88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB389260 != -1)
  {
    swift_once();
  }

  v4 = sub_1A937731C(v0, qword_1EB389268);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "--------- VOICE CACHE UPDATE ---------", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = sub_1A957C1C8();
  notify_post((v8 + 32));
}

unint64_t sub_1A93EDF30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386F48, &qword_1A958A788);
    v3 = sub_1A957D128();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1A93EB130(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A93EE028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386F58, &qword_1A958A798);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, &v13, &qword_1EB386F60, &qword_1A958A7A0);
      v5 = v13;
      v6 = v14;
      result = sub_1A937A490(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A932D070(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for VoiceDatabase(uint64_t a1)
{
  result = qword_1EB390D00;
  if (!qword_1EB390D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93EE1A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93DB8A8(v7, a2, v6, v5);
}

uint64_t sub_1A93EE250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93DD364(v7, a2, v6, v5);
}

uint64_t sub_1A93EE2F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return sub_1A93DE410(v6, a2, v5);
}

uint64_t sub_1A93EE394()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A93DECA8(v3, v4, v5, v2);
}

void *sub_1A93EE428(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB386F20, &qword_1A958A6C0);
  v3 = sub_1A957D128();

  memcpy(__dst, a1 + 4, 0x128uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_1A9391BAC(__dst, v15, &qword_1EB386F28, &unk_1A958C770);
  v6 = sub_1A937A490(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 41;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 280 * v6), &__dst[2], 0x118uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x128uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1A9391BAC(__dst, v15, &qword_1EB386F28, &unk_1A958C770);
    v6 = sub_1A937A490(v4, v5);
    v8 += 37;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A93EE5B4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386F10, &unk_1A958A6A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A937829C(&qword_1EB386F08, &qword_1A958A6A0);
    v7 = sub_1A957D128();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v9, v5, &qword_1EB386F10, &unk_1A958A6A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A937A490(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1A957B078();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A93EE7A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93E91BC(v7, a2, v6, v5);
}

uint64_t sub_1A93EE874@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t _s12TextToSpeech13VoiceDatabaseC7TriggerO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a2 + 32);
  v5 = *(*a2 + 40);
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24);
  if (v6 || (v7 = sub_1A957D3E8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_1A93EE940()
{
  result = qword_1EB393ED0;
  if (!qword_1EB393ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB393ED0);
  }

  return result;
}

unint64_t sub_1A93EE994()
{
  result = qword_1EB393ED8[0];
  if (!qword_1EB393ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB393ED8);
  }

  return result;
}

unint64_t sub_1A93EE9EC()
{
  result = qword_1EB386EE8;
  if (!qword_1EB386EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386EE8);
  }

  return result;
}

unint64_t sub_1A93EEA44()
{
  result = qword_1EB386EF0;
  if (!qword_1EB386EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386EF0);
  }

  return result;
}

unint64_t sub_1A93EEA9C()
{
  result = qword_1EB386168;
  if (!qword_1EB386168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386168);
  }

  return result;
}

void sub_1A93EEBE0(uint64_t a1)
{
  sub_1A93F0104(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of VoiceDatabase.add(loaders:)(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.triggerLoaderFirstBoot(loaderIds:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.triggerLoaderFirstBootAll()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of VoiceDatabase.remove(loaderId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.handle(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.initialize()()
{
  v4 = (*(*v0 + 328) + **(*v0 + 328));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of VoiceDatabase.voices(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 392) + **(*v1 + 392));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93D7EAC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.locales(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93EF6A0;

  return v6(a1);
}

uint64_t sub_1A93EF6A0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.fallbackLocales(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 416) + **(*v1 + 416));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93918CC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.fallbackVoices(forQuery:)(uint64_t a1)
{
  v6 = (*(*v1 + 424) + **(*v1 + 424));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93916A8;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.purge(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 456) + **(*v1 + 456));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.cancelDownload(voice:)(uint64_t a1)
{
  v6 = (*(*v1 + 464) + **(*v1 + 464));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.download(voice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 472) + **(*v2 + 472));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.contentUrl(forVoice:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 480) + **(*v2 + 480));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A9382328;

  return v8(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabase.reset(loaderIds:)(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

uint64_t dispatch thunk of VoiceDatabase.load(loaderIds:)(uint64_t a1)
{
  v6 = (*(*v1 + 496) + **(*v1 + 496));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A93836DC;

  return v6(a1);
}

void sub_1A93F0104(uint64_t a1)
{
  if (!qword_1EB3864A0)
  {
    sub_1A957B078();
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3864A0);
    }
  }
}

unint64_t sub_1A93F01A0()
{
  result = qword_1EB394360[0];
  if (!qword_1EB394360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394360);
  }

  return result;
}

unint64_t sub_1A93F01F8()
{
  result = qword_1EB394570[0];
  if (!qword_1EB394570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394570);
  }

  return result;
}

unint64_t sub_1A93F0250()
{
  result = qword_1EB394680;
  if (!qword_1EB394680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB394680);
  }

  return result;
}

unint64_t sub_1A93F02A8()
{
  result = qword_1EB394688[0];
  if (!qword_1EB394688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394688);
  }

  return result;
}

unint64_t sub_1A93F0300()
{
  result = qword_1EB394710;
  if (!qword_1EB394710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB394710);
  }

  return result;
}

unint64_t sub_1A93F0358()
{
  result = qword_1EB394718[0];
  if (!qword_1EB394718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB394718);
  }

  return result;
}

unint64_t sub_1A93F0400()
{
  result = qword_1EB386288;
  if (!qword_1EB386288)
  {
    sub_1A93A7B68(&qword_1EB386EA8, &qword_1A9589F90);
    sub_1A93F0AAC(&qword_1EB386368, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386288);
  }

  return result;
}

unint64_t sub_1A93F04C0()
{
  result = qword_1EB386290;
  if (!qword_1EB386290)
  {
    sub_1A93A7B68(&qword_1EB386EA8, &qword_1A9589F90);
    sub_1A93F0AAC(&qword_1EB386370, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386290);
  }

  return result;
}

uint64_t sub_1A93F0580()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93E968C(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0674()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A93DEE78(v0);
}

uint64_t sub_1A93F0704(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A93836DC;

  return sub_1A93DF0F0(v5, a2, v2);
}

unint64_t sub_1A93F079C()
{
  result = qword_1EB386000;
  if (!qword_1EB386000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386000);
  }

  return result;
}

uint64_t sub_1A93F07F0()
{
  swift_unknownObjectRelease();

  sub_1A9378138((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1A93F0838()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DF628(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F08D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DE7D4(v2);
}

uint64_t sub_1A93F097C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DE8BC(v3, v4, v5, v2);
}

uint64_t sub_1A93F0A14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DC3D4(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0AAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93F0AF4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DC3D4(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_1A93F0B8C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DF990(v2, v0 + 24);
}

uint64_t sub_1A93F0C24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(*v2 + 296);

  v7 = v5(v6);
  if (*(v7 + 16) && (v8 = sub_1A93EB130(v4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386F40, &qword_1A958A770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  sub_1A9379534(v3, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_1A932D070(v19, v12 + 24);
  *(inited + 32) = &unk_1A958A780;
  *(inited + 40) = v12;
  *&v19[0] = v10;

  sub_1A93E31DC(inited);
  v13 = *&v19[0];
  v14 = (*(*v2 + 312))(v19);
  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v16;
  *v16 = 0x8000000000000000;
  sub_1A93ECA58(v13, v4, isUniquelyReferenced_nonNull_native);

  *v16 = v20;
  return v14(v19, 0);
}

uint64_t sub_1A93F0E14()
{

  sub_1A9378138((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A93F0E54()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A93DFA2C(v3, v2, v0 + 24);
}

uint64_t sub_1A93F0F20()
{
  v0 = sub_1A9510DD0();
  swift_beginAccess();
  v1 = v0[1];
  *&xmmword_1EB3A7920 = *v0;
  *(&xmmword_1EB3A7920 + 1) = v1;
}

uint64_t sub_1A93F0F70()
{
  sub_1A957CF08();
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1EB3A7920;

  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  return v0;
}

void *sub_1A93F1030()
{
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1EB3A7920;

  v1 = sub_1A938983C();
  v2 = sub_1A9547340();
  v4 = v3;
  v5 = sub_1A954735C();
  v7 = v6;
  v8 = sub_1A9547378();
  v10 = v9;
  sub_1A9547394();
  return MobileAssetManager.init(assetType:currentCompatibilityVersion:compatibilityVersionKey:assetSupported:identifierKey:catalogDownloadOptions:)(v0, *(&v0 + 1), v1, v2, v4, v5, v7, v8, &xmmword_1EB3A78D0, v10, &v12);
}

uint64_t static AXCatalogUpdater.updateCatalog()()
{
  *(v1 + 40) = v0;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F1218, 0, 0);
}

uint64_t sub_1A93F1218()
{
  sub_1A93F1648();
  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB3A7920;
  *(v0 + 56) = xmmword_1EB3A7920;
  sub_1A937829C(&qword_1EB386F68, &qword_1A958A7B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A95873F0;
  *(v2 + 32) = *sub_1A9459540();
  static MobileAssetManager.DownloadOptions.downloadTimeout(_:)(300, (v2 + 40));
  *(v0 + 24) = v2;
  sub_1A93F1694();
  sub_1A937829C(&qword_1EB386F70, &qword_1A958A7C0);
  sub_1A93F16E8();
  sub_1A957CE08();
  *(v0 + 32) = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1A93F13B8;

  return static MAAsset.downloadCatalog(_:options:)(v1, *(&v1 + 1), (v0 + 32));
}

uint64_t sub_1A93F13B8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A93CBF20;
  }

  else
  {
    v2 = sub_1A93F14CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A93F14CC()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_1A957CF08();

  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v3 = sub_1A957C1C8();

  notify_post((v3 + 32));

  v4 = sub_1A957C688();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  sub_1A93C4B70(0, 0, v1, &unk_1A958A7D0, v5);

  v6 = v0[1];

  return v6();
}

unint64_t sub_1A93F1648()
{
  result = qword_1EB385EA8;
  if (!qword_1EB385EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB385EA8);
  }

  return result;
}

unint64_t sub_1A93F1694()
{
  result = qword_1EB386038;
  if (!qword_1EB386038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386038);
  }

  return result;
}

unint64_t sub_1A93F16E8()
{
  result = qword_1EB385F90;
  if (!qword_1EB385F90)
  {
    sub_1A93A7B68(&qword_1EB386F70, &qword_1A958A7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F90);
  }

  return result;
}

uint64_t sub_1A93F174C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return sub_1A93F3C3C();
}

uint64_t sub_1A93F17EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A93F174C();
}

uint64_t static AXCatalogUpdater.downloadSampleAsset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A93F3C3C();
}

uint64_t static AXCatalogUpdater.sampleUrl()(uint64_t a1)
{
  *(v1 + 416) = a1;
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  *(v1 + 424) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F19B4, 0, 0);
}

uint64_t sub_1A93F19B4()
{
  if (qword_1EB38A088 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB3A78D0;
  *(v0 + 16) = xmmword_1EB3A78D0;
  v3 = xmmword_1EB3A7900;
  v2 = xmmword_1EB3A7910;
  v4 = xmmword_1EB3A78F0;
  v5 = xmmword_1EB3A78E0;
  *(v0 + 32) = xmmword_1EB3A78E0;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 80) = v2;
  *(v0 + 96) = v1;
  *(v0 + 112) = v5;
  v6 = xmmword_1EB3A7900;
  *(v0 + 128) = xmmword_1EB3A78F0;
  *(v0 + 144) = v6;
  *(v0 + 160) = xmmword_1EB3A7910;
  sub_1A93F1120(v0 + 16, v0 + 176);
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_1A93F1ABC;

  return MobileAssetManager.sampleAsset()();
}

uint64_t sub_1A93F1ABC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 440) = a1;

  if (v1)
  {

    v4 = v3[6];
    v5 = v3[7];
    v6 = v3[8];
    v7 = v3[10];
    v3[19] = v3[9];
    v3[20] = v7;
    v3[17] = v5;
    v3[18] = v6;
    v3[16] = v4;
    sub_1A93F4788((v3 + 16));
    v8 = sub_1A93F1DE4;
  }

  else
  {
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[10];
    v3[24] = v3[9];
    v3[25] = v12;
    v3[22] = v10;
    v3[23] = v11;
    v3[21] = v9;
    sub_1A93F4788((v3 + 21));
    v8 = sub_1A93F1C18;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A93F1C18()
{
  v1 = *(v0 + 440);
  if (v1)
  {
    [*(v0 + 440) refreshState];
    if ([v1 state] == 2 || objc_msgSend(v1, sel_state) == 3)
    {
      v2 = [v1 getLocalUrl];
      if (v2)
      {
        v3 = v2;
        sub_1A957AF98();

        v4 = 0;
      }

      else
      {
        v4 = 1;
      }

      v8 = *(v0 + 416);
      v7 = *(v0 + 424);

      v9 = sub_1A957AFD8();
      (*(*(v9 - 8) + 56))(v7, v4, 1, v9);
      sub_1A93F47DC(v7, v8);
    }

    else
    {
      v10 = *(v0 + 416);
      v11 = sub_1A957AFD8();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    }
  }

  else
  {
    v5 = *(v0 + 416);
    v6 = sub_1A957AFD8();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A93F1DE4()
{
  v1 = *(v0 + 416);
  v2 = sub_1A957AFD8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A93F1E88()
{
  v1 = sub_1A94A8B3C();
  swift_beginAccess();
  v2 = *v1;
  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;

  sub_1A957CF08();

  if (qword_1EB38A090 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1EB3A7920;
  v14[0] = xmmword_1EB3A7920;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v4 = v14[0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  (*(*v2 + 120))(v4, *(&v4 + 1), &unk_1A958A800, v5);

  swift_beginAccess();
  v6 = *v1;

  sub_1A957CF08();

  *(&v14[0] + 1) = *(&v3 + 1);
  MEMORY[0x1AC585140](0x676F6C617461632ELL, 0xEE00657461647055);
  v13 = 0;
  *&v14[0] = 0x40D5180000000000;
  v15[1] = 0;
  v12 = *sub_1A953C330();
  v11 = 0;
  v7 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(v3, *(&v3 + 1), v14, &v12, &v11, v9);
  (*(*v6 + 128))(v9, v7);

  v14[2] = v9[2];
  *v15 = *v10;
  *&v15[9] = *&v10[9];
  v14[0] = v9[0];
  v14[1] = v9[1];
  return sub_1A93F03AC(v14);
}

uint64_t sub_1A93F2100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93F2190;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A93F2190()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A93F22C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A93F22C4()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1A93F2328(unint64_t *a1)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v77 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v77 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v77 - v11;
  v13 = sub_1A957BC88();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v77 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v77 - v22;
  v24 = a1[1];
  v86 = *a1;
  if (TTSIsInternalBuild(v21, v25))
  {
    v84 = v14;
    if (qword_1EB38A090 != -1)
    {
      swift_once();
    }

    v80 = *(&xmmword_1EB3A7920 + 1);
    v81 = xmmword_1EB3A7920;
    v26 = sub_1A957C0C8();
    v87[0] = 0;
    v27 = ASServerURLForAssetType();

    v28 = v87[0];
    v29 = v17;
    if (v27)
    {
      sub_1A957AF98();
      v30 = v28;

      v31 = sub_1A957AFD8();
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    }

    else
    {
      v37 = sub_1A957AFD8();
      (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
      v38 = v28;
    }

    v39 = v7;
    sub_1A93F47DC(v10, v12);
    v79 = v29;
    if (v28)
    {

      v40 = sub_1A93772F8();
      (*(v84 + 16))(v20, v40, v13);
      v41 = sub_1A957BC68();
      v42 = sub_1A957CA78();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v28;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1A9324000, v41, v42, "Failed to retrieve asset server url.", v44, 2u);
        v45 = v44;
        v28 = v43;
        MEMORY[0x1AC587CD0](v45, -1, -1);
      }

      (*(v84 + 8))(v20, v13);
    }

    v82 = v28;
    v78 = v13;
    v46 = 0xD00000000000001ELL;
    v47 = 0x80000001A95C1DE0;
    v48 = v86;
    if (v24)
    {
      v46 = v86;
      v47 = v24;
    }

    if (v24 == 1)
    {
      v49 = 0xD000000000000024;
    }

    else
    {
      v49 = v46;
    }

    v50 = v24;
    if (v24 == 1)
    {
      v51 = 0x80000001A95C1DB0;
    }

    else
    {
      v51 = v47;
    }

    v83 = v12;
    sub_1A9391BAC(v12, v39, &unk_1EB387B80, qword_1A9587740);
    v52 = sub_1A957AFD8();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    v55 = v54(v39, 1, v52);
    sub_1A93F48E0(v48, v50);
    if (v55 == 1)
    {
      sub_1A937B960(v39, &unk_1EB387B80, qword_1A9587740);
LABEL_24:
      v56 = v85;
      sub_1A957AFB8();

      if (v54(v56, 1, v52) == 1)
      {
        v57 = 0;
      }

      else
      {
        v57 = sub_1A957AF58();
        (*(v53 + 8))(v56, v52);
      }

      v65 = v83;
      v66 = sub_1A957C0C8();
      ASSetAssetServerURLForAssetType();

      v67 = v65;
LABEL_36:
      sub_1A937B960(v67, &unk_1EB387B80, qword_1A9587740);

      return;
    }

    v58 = v79;
    v59 = sub_1A957AF18();
    v61 = v60;
    (*(v53 + 8))(v39, v52);
    if (v59 == v49 && v51 == v61)
    {
      v62 = v49;

      v63 = v51;
      v64 = v58;
    }

    else
    {
      v62 = v49;
      v63 = v51;
      v68 = sub_1A957D3E8();

      v64 = v58;
      if ((v68 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v69 = sub_1A93772F8();
    v70 = v84;
    v71 = v78;
    (*(v84 + 16))(v64, v69, v78);

    v72 = sub_1A957BC68();
    v73 = sub_1A957CA58();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v87[0] = v75;
      *v74 = 136315138;
      v76 = sub_1A937A5C0(v62, v63, v87);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_1A9324000, v72, v73, "Asset server url already set to %s", v74, 0xCu);
      sub_1A9378138(v75);
      MEMORY[0x1AC587CD0](v75, -1, -1);
      MEMORY[0x1AC587CD0](v74, -1, -1);
    }

    else
    {
    }

    (*(v70 + 8))(v64, v71);
    v67 = v83;
    goto LABEL_36;
  }

  v32 = sub_1A93772F8();
  (*(v14 + 16))(v23, v32, v13);
  v33 = sub_1A957BC68();
  v34 = sub_1A957CA78();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v13;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1A9324000, v33, v34, "Catalog server update is only supported in internal builds.", v36, 2u);
    MEMORY[0x1AC587CD0](v36, -1, -1);

    (*(v14 + 8))(v23, v35);
  }

  else
  {

    (*(v14 + 8))(v23, v13);
  }
}

uint64_t sub_1A93F2B70()
{
  v1 = 0x696C69626176696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1A93F2BCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A93F4F28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A93F2C00(uint64_t a1)
{
  v2 = sub_1A93F48F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2C3C(uint64_t a1)
{
  v2 = sub_1A93F48F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A93F2D04(uint64_t a1)
{
  v2 = sub_1A93F4948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2D40(uint64_t a1)
{
  v2 = sub_1A93F4948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2D7C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1A93F2DAC(uint64_t a1)
{
  v2 = sub_1A93F499C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2DE8(uint64_t a1)
{
  v2 = sub_1A93F499C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A93F2E24(uint64_t a1)
{
  v2 = sub_1A93F49F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A93F2E60(uint64_t a1)
{
  v2 = sub_1A93F49F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CatalogServer.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB386F78, &qword_1A958A808);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v19 - v4;
  v5 = sub_1A937829C(&qword_1EB386F80, &qword_1A958A810);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v19 - v6;
  v7 = sub_1A937829C(&qword_1EB386F88, &qword_1A958A818);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1A937829C(&qword_1EB386F90, &qword_1A958A820);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = v1[1];
  v19 = *v1;
  sub_1A93780F4(a1, a1[3]);
  sub_1A93F48F4();
  sub_1A957D598();
  if (!v14)
  {
    v28 = 0;
    sub_1A93F49F0();
    sub_1A957D288();
    (*(v20 + 8))(v9, v21);
    return (*(v11 + 8))(v13, v10);
  }

  if (v14 == 1)
  {
    v29 = 1;
    sub_1A93F499C();
    v15 = v22;
    sub_1A957D288();
    (*(v23 + 8))(v15, v24);
    return (*(v11 + 8))(v13, v10);
  }

  v30 = 2;
  sub_1A93F4948();
  v17 = v25;
  sub_1A957D288();
  v18 = v27;
  sub_1A957D2E8();
  (*(v26 + 8))(v17, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t CatalogServer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v39 = sub_1A937829C(&qword_1EB386F98, &qword_1A958A828);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v37 - v3;
  v4 = sub_1A937829C(&qword_1EB386FA0, &qword_1A958A830);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = sub_1A937829C(&qword_1EB386FA8, &qword_1A958A838);
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1A937829C(&qword_1EB386FB0, &qword_1A958A840);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v46 = a1;
  sub_1A93780F4(a1, v15);
  sub_1A93F48F4();
  v16 = v45;
  sub_1A957D588();
  if (!v16)
  {
    v37 = 0;
    v45 = v12;
    v17 = sub_1A957D268();
    v18 = *(v17 + 16);
    if (!v18 || ((v19 = *(v17 + 32), v18 == 1) ? (v20 = v19 == 3) : (v20 = 1), v20))
    {
      v21 = sub_1A957CF58();
      swift_allocError();
      v22 = v11;
      v24 = v23;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v24 = &type metadata for CatalogServer;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v21 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v45 + 8))(v14, v22);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_1A9378138(v46);
    }

    if (!*(v17 + 32))
    {
      v47 = 0;
      sub_1A93F49F0();
      v26 = v14;
      v32 = v37;
      sub_1A957D178();
      if (!v32)
      {
        (*(v38 + 8))(v10, v8);
        (*(v45 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 0;
        v31 = v43;
        goto LABEL_22;
      }

      v28 = v45;
      goto LABEL_17;
    }

    if (v19 == 1)
    {
      v48 = 1;
      sub_1A93F499C();
      v26 = v14;
      v27 = v37;
      sub_1A957D178();
      v28 = v45;
      if (!v27)
      {
        (*(v41 + 8))(v7, v40);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v29 = 0;
        v30 = 1;
        v31 = v43;
LABEL_22:
        *v31 = v29;
        v31[1] = v30;
        return sub_1A9378138(v46);
      }

LABEL_17:
      (*(v28 + 8))(v26, v11);
      goto LABEL_9;
    }

    v49 = 2;
    sub_1A93F4948();
    v33 = v37;
    sub_1A957D178();
    v31 = v43;
    v34 = v45;
    if (!v33)
    {
      v41 = v11;
      v35 = v39;
      v29 = sub_1A957D1E8();
      v30 = v36;
      (*(v42 + 8))(v44, v35);
      (*(v34 + 8))(v14, v41);
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    (*(v45 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v46);
}

uint64_t static VoiceDatabaseClient.sampleUrl.getter()
{
  v0 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = sub_1A937829C(&qword_1EB386FB8, &qword_1A958A848);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1A9511040();
  swift_beginAccess();

  sub_1A957BA78();

  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  sub_1A957C6D8();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 16))(v8, v10, v4);
  sub_1A957B938();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1A93F3B04(uint64_t a1)
{
  type metadata accessor for AXCatalogUpdater();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return static AXCatalogUpdater.sampleUrl()(a1);
}

uint64_t sub_1A93F3BA0(uint64_t a1)
{
  type metadata accessor for AXCatalogUpdater();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return static AXCatalogUpdater.sampleUrl()(a1);
}

uint64_t sub_1A93F3C3C()
{
  v1 = sub_1A957BC88();
  v0[53] = v1;
  v0[54] = *(v1 - 8);
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F3D10, 0, 0);
}

uint64_t sub_1A93F3D10()
{
  if (qword_1EB38A088 != -1)
  {
    swift_once();
  }

  v1 = xmmword_1EB3A78D0;
  *(v0 + 16) = xmmword_1EB3A78D0;
  v3 = xmmword_1EB3A7900;
  v2 = xmmword_1EB3A7910;
  v4 = xmmword_1EB3A78F0;
  v5 = xmmword_1EB3A78E0;
  *(v0 + 32) = xmmword_1EB3A78E0;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 80) = v2;
  *(v0 + 96) = v1;
  *(v0 + 112) = v5;
  v6 = xmmword_1EB3A7900;
  *(v0 + 128) = xmmword_1EB3A78F0;
  *(v0 + 144) = v6;
  *(v0 + 160) = xmmword_1EB3A7910;
  sub_1A93F1120(v0 + 16, v0 + 176);
  v7 = swift_task_alloc();
  *(v0 + 464) = v7;
  *v7 = v0;
  v7[1] = sub_1A93F3E18;

  return MobileAssetManager.sampleAsset()();
}

uint64_t sub_1A93F3E18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v7 = *(v3 + 160);
  if (v1)
  {
    *(v3 + 304) = *(v3 + 144);
    *(v3 + 320) = v7;
    *(v3 + 272) = v5;
    *(v3 + 288) = v6;
    *(v3 + 256) = v4;
    sub_1A93F4788(v3 + 256);
    v8 = sub_1A93F44E0;
  }

  else
  {
    *(v3 + 384) = *(v3 + 144);
    *(v3 + 400) = v7;
    *(v3 + 352) = v5;
    *(v3 + 368) = v6;
    *(v3 + 336) = v4;
    sub_1A93F4788(v3 + 336);
    v8 = sub_1A93F3F6C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A93F3F6C()
{
  v1 = *(v0 + 472);
  if (!v1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
    v16 = *(v0 + 432);
    v15 = *(v0 + 440);
    v17 = *(v0 + 424);
    v18 = sub_1A93772F8();
    (*(v16 + 16))(v15, v18, v17);
    v19 = sub_1A957BC68();
    v20 = sub_1A957CA78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A9324000, v19, v20, "Failed to download sample asset.", v21, 2u);
      MEMORY[0x1AC587CD0](v21, -1, -1);
    }

    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v24 = *(v0 + 424);

    (*(v23 + 8))(v22, v24);
    swift_willThrow();

    v13 = *(v0 + 8);
    goto LABEL_10;
  }

  [*(v0 + 472) refreshState];
  if ([v1 state] == 2 || objc_msgSend(v1, sel_state) == 3)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    v5 = sub_1A93772F8();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_1A957BC68();
    v7 = sub_1A957CA78();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 448);
    v10 = *(v0 + 424);
    v11 = *(v0 + 432);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A9324000, v6, v7, "Sample asset already installed.", v12, 2u);
      MEMORY[0x1AC587CD0](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);

    v13 = *(v0 + 8);
LABEL_10:

    return v13();
  }

  v26 = *(v0 + 456);
  v27 = *(v0 + 424);
  v28 = *(v0 + 432);
  v29 = sub_1A93772F8();
  (*(v28 + 16))(v26, v29, v27);
  v30 = sub_1A957BC68();
  v31 = sub_1A957CA78();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A9324000, v30, v31, "Downloading samples asset...", v32, 2u);
    MEMORY[0x1AC587CD0](v32, -1, -1);
  }

  v33 = *(v0 + 456);
  v34 = *(v0 + 424);
  v35 = *(v0 + 432);

  (*(v35 + 8))(v33, v34);
  sub_1A954A228();
  v36 = swift_task_alloc();
  *(v0 + 488) = v36;
  *v36 = v0;
  v36[1] = sub_1A93F434C;

  return MAAsset.download(options:)((v0 + 416));
}

uint64_t sub_1A93F434C()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1A93F4630;
  }

  else
  {
    v2 = sub_1A93F4460;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A93F4460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93F44E0()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = sub_1A93772F8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Failed to download sample asset.", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = v0[54];
  v8 = v0[55];
  v10 = v0[53];

  (*(v9 + 8))(v8, v10);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A93F4630()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = sub_1A93772F8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "Failed to download sample asset.", v7, 2u);
    MEMORY[0x1AC587CD0](v7, -1, -1);
  }

  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  v10 = *(v0 + 424);

  (*(v9 + 8))(v8, v10);
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A93F47DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F484C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return sub_1A93F2100();
}

uint64_t sub_1A93F48E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1A93F48F4()
{
  result = qword_1EB38DE20;
  if (!qword_1EB38DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE20);
  }

  return result;
}

unint64_t sub_1A93F4948()
{
  result = qword_1EB3947A8;
  if (!qword_1EB3947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3947A8);
  }

  return result;
}

unint64_t sub_1A93F499C()
{
  result = qword_1EB3947B0;
  if (!qword_1EB3947B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3947B0);
  }

  return result;
}

unint64_t sub_1A93F49F0()
{
  result = qword_1EB38D968[0];
  if (!qword_1EB38D968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D968);
  }

  return result;
}

uint64_t sub_1A93F4A80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A93F4A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A93F4AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A93F4B48(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A93F4BBC()
{
  result = qword_1EB3947C0[0];
  if (!qword_1EB3947C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3947C0);
  }

  return result;
}

unint64_t sub_1A93F4C14()
{
  result = qword_1EB3948D0[0];
  if (!qword_1EB3948D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3948D0);
  }

  return result;
}

unint64_t sub_1A93F4C6C()
{
  result = qword_1EB38D950;
  if (!qword_1EB38D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D950);
  }

  return result;
}

unint64_t sub_1A93F4CC4()
{
  result = qword_1EB38D958;
  if (!qword_1EB38D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D958);
  }

  return result;
}

unint64_t sub_1A93F4D1C()
{
  result = qword_1EB38DAF0;
  if (!qword_1EB38DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DAF0);
  }

  return result;
}

unint64_t sub_1A93F4D74()
{
  result = qword_1EB38DAF8[0];
  if (!qword_1EB38DAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38DAF8);
  }

  return result;
}

unint64_t sub_1A93F4DCC()
{
  result = qword_1EB38DC80;
  if (!qword_1EB38DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DC80);
  }

  return result;
}

unint64_t sub_1A93F4E24()
{
  result = qword_1EB38DC88[0];
  if (!qword_1EB38DC88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38DC88);
  }

  return result;
}

unint64_t sub_1A93F4E7C()
{
  result = qword_1EB38DE10;
  if (!qword_1EB38DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE10);
  }

  return result;
}

unint64_t sub_1A93F4ED4()
{
  result = qword_1EB38DE18;
  if (!qword_1EB38DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38DE18);
  }

  return result;
}

uint64_t sub_1A93F4F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C69626176696CLL && a2 == 0xEA00000000007974 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A93F5050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[3] = &type metadata for PlainStringMarkup;
  v10[4] = &off_1F1CF4998;

  v4 = sub_1A93775FC();
  v5 = sub_1A93ADEC0();
  v7 = v6;
  v8 = sub_1A93775FC();
  return sub_1A94A50A4(v10, 1, a1, v4 & 1, v5, v7, v8 & 1, a2);
}

uint64_t sub_1A93F513C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
  swift_allocObject();
  v9 = sub_1A957BC38();
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v12 = sub_1A93F81F8(&qword_1EB386FC0, v11, type metadata accessor for AudioRenderer, &unk_1A958AD60);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v12;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = v9;
  swift_retain_n();

  sub_1A938A404(0, 0, v8, &unk_1A958AD58, v13);

  return v9;
}

uint64_t sub_1A93F52E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7[15] = swift_task_alloc();
  v7[16] = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F53E8, a4, 0);
}

uint64_t sub_1A93F53E8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = sub_1A937A490(v4, v3);
    if (v6)
    {
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = (*(v2 + 56) + 16 * v5);
      v10 = *v9;
      *(v0 + 176) = *v9;
      *(v0 + 184) = v9[1];

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      sub_1A957C748();
      swift_beginAccess();

      sub_1A93F6188(0, 0, v8, v7);
      swift_endAccess();
      v11 = *(v10 + 16);
      *(v0 + 192) = v11;
      if (v11)
      {
        v12 = *(v0 + 128);
        v13 = *(v12 + 80);
        *(v0 + 256) = v13;
        v14 = (v13 + 32) & ~v13;
        *(v0 + 200) = *(v12 + 72);
        *(v0 + 208) = 0;
        v15 = *(v0 + 176);
        v16 = *(v0 + 144);

        sub_1A93F8058(v15 + v14, v16);
        v17 = swift_task_alloc();
        *(v0 + 216) = v17;
        *v17 = v0;
        v17[1] = sub_1A93F5968;
        v18 = *(v0 + 144);

        return MEMORY[0x1EEDEE810](v18);
      }

      else
      {
        v22 = *(v0 + 176);
        v23 = *(v0 + 120);
        v25 = *(v0 + 96);
        v24 = *(v0 + 104);
        v26 = *(v0 + 88);
        sub_1A957BC18();
        v27 = sub_1A957C688();
        (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
        v29 = sub_1A93F81F8(&qword_1EB386FC0, v28, type metadata accessor for AudioRenderer, &unk_1A958AD60);
        v30 = swift_allocObject();
        v30[2] = v26;
        v30[3] = v29;
        v30[4] = v26;
        v30[5] = v25;
        v30[6] = v24;
        swift_retain_n();

        v31 = sub_1A93C4B70(0, 0, v23, &unk_1A958AF58, v30);
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v26 + 112);
        *(v26 + 112) = 0x8000000000000000;
        sub_1A93F76B8(v22, v31, v25, v24, isUniquelyReferenced_nonNull_native);

        *(v26 + 112) = v35;
        swift_endAccess();

        v33 = *(v0 + 8);

        return v33();
      }
    }
  }

  v19 = swift_task_alloc();
  *(v0 + 152) = v19;
  *v19 = v0;
  v19[1] = sub_1A93F5834;
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);

  return sub_1A93F6298(v21, v20);
}

uint64_t sub_1A93F5834(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 88);
  if (v1)
  {
    v6 = sub_1A93F60FC;
  }

  else
  {
    v6 = sub_1A93F5D70;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A93F5968()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 88);

  sub_1A93D0B8C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A93F5A94, v2, 0);
}

uint64_t sub_1A93F5A94()
{
  v1 = *(v0 + 208) + 1;
  if (v1 == *(v0 + 192))
  {

    v2 = *(v0 + 176);
    v3 = *(v0 + 120);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    sub_1A957BC18();
    v7 = sub_1A957C688();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v9 = sub_1A93F81F8(&qword_1EB386FC0, v8, type metadata accessor for AudioRenderer, &unk_1A958AD60);
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v9;
    v10[4] = v6;
    v10[5] = v5;
    v10[6] = v4;
    swift_retain_n();

    v11 = sub_1A93C4B70(0, 0, v3, &unk_1A958AF58, v10);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + 112);
    *(v6 + 112) = 0x8000000000000000;
    sub_1A93F76B8(v2, v11, v5, v4, isUniquelyReferenced_nonNull_native);

    *(v6 + 112) = v17;
    swift_endAccess();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    *(v0 + 208) = v1;
    sub_1A93F8058(*(v0 + 176) + ((*(v0 + 256) + 32) & ~*(v0 + 256)) + *(v0 + 200) * v1, *(v0 + 144));
    v15 = swift_task_alloc();
    *(v0 + 216) = v15;
    *v15 = v0;
    v15[1] = sub_1A93F5968;
    v16 = *(v0 + 144);

    return MEMORY[0x1EEDEE810](v16);
  }
}

uint64_t sub_1A93F5D70()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (v2)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v4 + 80);
    *(v0 + 260) = v5;
    *(v0 + 232) = *(v4 + 72);
    *(v0 + 240) = 0;
    sub_1A93F8058(v1 + ((v5 + 32) & ~v5), v3);
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = sub_1A93F5E9C;
    v7 = *(v0 + 136);

    return MEMORY[0x1EEDEE810](v7);
  }

  else
  {

    sub_1A957BC18();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A93F5E9C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 88);

  sub_1A93D0B8C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A93F5FC8, v2, 0);
}

uint64_t sub_1A93F5FC8()
{
  v1 = *(v0 + 240) + 1;
  if (v1 == *(v0 + 224))
  {

    sub_1A957BC18();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 240) = v1;
    sub_1A93F8058(*(v0 + 160) + ((*(v0 + 260) + 32) & ~*(v0 + 260)) + *(v0 + 232) * v1, *(v0 + 136));
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_1A93F5E9C;
    v5 = *(v0 + 136);

    return MEMORY[0x1EEDEE810](v5);
  }
}

uint64_t sub_1A93F60FC()
{
  v1 = *(v0 + 168);
  sub_1A957BBF8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A93F6188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1A93F76B8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1A937A490(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1A93F7848();
        v16 = v18;
      }

      result = sub_1A93CEB8C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1A93F6298(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3[9] = swift_task_alloc();
  sub_1A957B0B8();
  v3[10] = swift_task_alloc();
  v3[11] = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = sub_1A957AFD8();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F6464, v2, 0);
}

uint64_t sub_1A93F6464()
{
  sub_1A957AF38();
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1A957C0C8();
  v3 = [v1 fileExistsAtPath_];

  if (!v3)
  {
    v7 = v0[6];
    v6 = v0[7];
    sub_1A93F7DA8();
    swift_allocError();
    *v8 = v7;
    v8[1] = v6;
    v8[2] = 0;
    swift_willThrow();

LABEL_4:
    (*(v0[15] + 8))(v0[17], v0[14]);

    v9 = v0[1];

    return v9();
  }

  v4 = v0[16];
  (*(v0[15] + 16))(v4, v0[17], v0[14]);
  v5 = objc_allocWithZone(MEMORY[0x1E6958410]);
  v11 = sub_1A93F72A8(v4);
  v12 = [v11 processingFormat];
  v13 = [objc_allocWithZone(MEMORY[0x1E6958438]) initWithPCMFormat:v12 frameCapacity:4096];
  if (!v13)
  {
    sub_1A93F7DA8();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    v33[2] = 0xC000000000000000;
    swift_willThrow();

    goto LABEL_4;
  }

  v14 = v13;
  v55 = v12;
  if ([v11 length] >= 1)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v56 = v0[11];
    v17 = &selRef_taskRequestForIdentifier_;
    while (1)
    {
      [v11 setFramePosition_];
      v0[5] = 0;
      v18 = [v11 readIntoBuffer:v14 error:v0 + 5];
      v19 = v0[5];
      if (!v18)
      {
        v46 = v0[6];
        v45 = v0[7];
        v47 = v19;

        v48 = sub_1A957AEF8();

        swift_willThrow();
        sub_1A93F7DA8();
        swift_allocError();
        *v49 = v46;
        v49[1] = v45;
        v49[2] = v48 | 0x8000000000000000;
        swift_willThrow();

        v50 = v48;

        goto LABEL_27;
      }

      v20 = v19;
      if (![v14 v17[363]])
      {
        goto LABEL_22;
      }

      v21 = [objc_allocWithZone(TTSAudioBuffer) initWithAVBuffer_];
      if (!v21)
      {
        break;
      }

      if (HIDWORD(v15))
      {
        __break(1u);
      }

      v22 = v11;
      v23 = v17;
      v25 = v0[12];
      v24 = v0[13];
      v26 = v0[10];
      v27 = v21;
      sub_1A93D1228(v27);
      sub_1A93C77FC(v26, v15, v27, MEMORY[0x1E69E7CC0], v24);
      sub_1A93F8058(v24, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1A93F79D4(0, v16[2] + 1, 1, v16);
      }

      v29 = v16[2];
      v28 = v16[3];
      if (v29 >= v28 >> 1)
      {
        v16 = sub_1A93F79D4((v28 > 1), v29 + 1, 1, v16);
      }

      v30 = v0[12];
      v31 = v0[13];
      v16[2] = v29 + 1;
      sub_1A93F80BC(v30, v16 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v29);
      v17 = v23;
      v32 = [v14 v23 + 350];

      sub_1A93D0B8C(v31);
      v15 += v32;
      v11 = v22;
      if (v15 >= [v22 length])
      {
        goto LABEL_22;
      }
    }

    sub_1A93F7DA8();
    swift_allocError();
    *v51 = xmmword_1A958AD30;
    *(v51 + 16) = 0xC000000000000000;
    swift_willThrow();

LABEL_27:
    goto LABEL_4;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v54 = v0[17];
  v52 = v0[15];
  v53 = v0[14];
  v34 = v0[9];
  v36 = v0[7];
  v35 = v0[8];
  v37 = v0[6];
  v38 = sub_1A957C688();
  (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
  v40 = sub_1A93F81F8(&qword_1EB386FC0, v39, type metadata accessor for AudioRenderer, &unk_1A958AD60);
  v41 = swift_allocObject();
  v41[2] = v35;
  v41[3] = v40;
  v41[4] = v35;
  v41[5] = v37;
  v41[6] = v36;
  swift_retain_n();

  v42 = sub_1A93C4B70(0, 0, v34, &unk_1A958AF38, v41);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v35 + 112);
  *(v35 + 112) = 0x8000000000000000;
  sub_1A93F76B8(v16, v42, v37, v36, isUniquelyReferenced_nonNull_native);

  *(v35 + 112) = v57;
  swift_endAccess();

  (*(v52 + 8))(v54, v53);

  v44 = v0[1];

  return v44(v16);
}

uint64_t sub_1A93F6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_1A957D018();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93F6CA4, a4, 0);
}

uint64_t sub_1A93F6CA4(uint64_t a1)
{
  sub_1A957D468();
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1A93F6D70;

  return sub_1A93CC26C(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_1A93F6D70()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1A93F6FAC;
  }

  else
  {
    v7 = sub_1A93F6EF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A93F6EF8()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();

  sub_1A93F6188(0, 0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A93F6FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93F7010()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A93F7048()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_1A93F7BAC(MEMORY[0x1E69E7CC0]);
  *(v0 + 120) = 60000;
  return v0;
}

unint64_t sub_1A93F7094(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_1A957CF08();

      v8 = 0xD00000000000001ELL;
      MEMORY[0x1AC585140](a1, a2);
      return v8;
    }

    sub_1A957CF08();

    v8 = 0xD000000000000020;
    MEMORY[0x1AC585140](a1, a2);
    MEMORY[0x1AC585140](0x3A726F727245202ELL, 0xE900000000000020);
    swift_getErrorValue();
LABEL_7:
    v6 = sub_1A957D478();
    MEMORY[0x1AC585140](v6);

    return v8;
  }

  if (v5 == 2)
  {
    sub_1A957CF08();

    v8 = 0xD000000000000025;
    MEMORY[0x1AC585140](a1, a2);
    MEMORY[0x1AC585140](0x3A726F727245202ELL, 0xE900000000000020);
    swift_getErrorValue();
    goto LABEL_7;
  }

  if (a2 | a1 || a3 != 0xC000000000000000)
  {
    return 0xD000000000000031;
  }

  else
  {
    return 0xD000000000000028;
  }
}

id sub_1A93F72A8(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A957AF58();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1A957AFD8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1A957AEF8();

    swift_willThrow();
    v11 = sub_1A957AFD8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1A93F73F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
  v33 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A93F76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A937A490(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A93F73F4(v18, a5 & 1);
      v13 = sub_1A937A490(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A93F7848();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1A93F7848()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A93F79D4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v10 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1A93F7BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386FD8, &unk_1A958AF48);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1A937A490(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A93F7CF8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A93F52E0(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1A93F7DA8()
{
  result = qword_1EB386FC8;
  if (!qword_1EB386FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386FC8);
  }

  return result;
}

uint64_t sub_1A93F7DFC(uint64_t a1)
{
  v1 = *(a1 + 16) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A93F7E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A93F7E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A93F7EDC(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = xmmword_1A958AD40;
  }

  return result;
}

uint64_t sub_1A93F7F1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A93F7F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A93F7FB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A93F6BDC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A93F8058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F80BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F8120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F8190(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93F81F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93F8240()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A93F8288()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A93F6BDC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A93F8330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93F837C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t sub_1A93F83E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A93F8430(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t StringStream.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t StringStream.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A93F8510(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 104))(v7);
  MEMORY[0x1AC585140](a1, a2);
  return v5(v7, 0);
}

uint64_t StringStream.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A93F8778()
{
  result = qword_1ED96FE90;
  if (!qword_1ED96FE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FE90);
  }

  return result;
}

uint64_t sub_1A93F87C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A93F881C(a1, a2, a3);
  return v6;
}

uint64_t sub_1A93F881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v47 = sub_1A937829C(&qword_1EB386FF0, &qword_1A958AFE8);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v33 - v5;
  v48 = sub_1A937829C(&qword_1EB386FE0, &unk_1A958AFD0);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v33 - v6;
  v7 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v33 - v12;
  v41 = sub_1A957CAD8();
  v13 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A957CAC8();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v39 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue;
  v38 = sub_1A93F8778();
  sub_1A957BF38();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1A93FA040(&qword_1ED96FE98, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A93B744C(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0, MEMORY[0x1E69E6328]);
  v18 = v40;
  sub_1A957CE08();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8090], v41);
  *(v3 + v39) = sub_1A957CB08();
  v19 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  v20 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v22(v4 + v19, 1, 1, v20);
  *(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 1;
  v22(v18, 1, 1, v20);
  v49 = v18;
  sub_1A937829C(&qword_1EB387000, &qword_1A958AFF8);
  (*(v45 + 104))(v44, *MEMORY[0x1E69E8650], v47);
  v23 = v43;
  v24 = v42;
  sub_1A957C718();
  (*(v46 + 32))(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_stream, v23, v48);
  sub_1A93F8F9C(v18, v24);
  result = (*(v21 + 48))(v24, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v34;
    (*(v21 + 32))(v34, v24, v20);
    v22(v26, 0, 1, v20);
    swift_beginAccess();
    sub_1A93F900C(v26, v4 + v19);
    swift_endAccess();
    v27 = objc_allocWithZone(MEMORY[0x1E6977A90]);
    v28 = [v27 initWithUnit_];
    *(v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizer) = v28;
    v29 = (v4 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_string);
    v30 = v37;
    *v29 = v36;
    v29[1] = v30;
    v31 = v28;

    v32 = sub_1A957C0C8();

    [v31 setString_];

    sub_1A93F94E4();
    sub_1A937B960(v18, &qword_1EB386FF8, &qword_1A958AFF0);
    return v4;
  }

  return result;
}

uint64_t sub_1A93F8EC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1A937B960(v3, &qword_1EB386FF8, &qword_1A958AFF0);
  v4 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_1A93F8F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93F900C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StreamingTokenizer.deinit()
{
  *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 0;
  v1 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue;
  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue);
  v8[4] = nullsub_23;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A93F921C;
  v8[3] = &unk_1F1CED6F8;
  v3 = _Block_copy(v8);
  v4 = v2;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v6 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_stream;
    v7 = sub_1A937829C(&qword_1EB386FE0, &unk_1A958AFD0);
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation, &qword_1EB386FF8, &qword_1A958AFF0);

    return v0;
  }

  return result;
}

uint64_t StreamingTokenizer.__deallocating_deinit()
{
  StreamingTokenizer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A93F929C()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  v6 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  *(v1 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue) = 0;
  v12 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  swift_beginAccess();
  sub_1A93F8F9C(v1 + v12, v11);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1A937B960(v11, &qword_1EB386FF8, &qword_1A958AFF0);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1A937B960(v11, &qword_1EB386FF8, &qword_1A958AFF0);
    sub_1A957C6C8();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  swift_beginAccess();
  sub_1A93F900C(v9, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_1A93F94E4()
{
  v1 = sub_1A957BF18();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957BF48();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizerQueue);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A93FA038;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF4BB8;
  v8 = _Block_copy(aBlock);

  sub_1A957BF28();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A93FA040(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1A93F97D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A93F9830(uint64_t a1)
{
  v1 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_tokenizer);
    sub_1A957CA28();

    v11 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
    swift_beginAccess();
    sub_1A93F8F9C(v9 + v11, v7);
    if ((*(v2 + 48))(v7, 1, v1))
    {

      return sub_1A937B960(v7, &qword_1EB386FF8, &qword_1A958AFF0);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1A937B960(v7, &qword_1EB386FF8, &qword_1A958AFF0);
      sub_1A957C6C8();

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

uint64_t sub_1A93F9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A937829C(&qword_1EB386FE8, &qword_1A958AFE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = sub_1A937829C(&qword_1EB386FF8, &qword_1A958AFF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_1A937829C(&qword_1EB387028, &qword_1A958B0B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v24 - v14;
  v16 = OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_continuation;
  swift_beginAccess();
  sub_1A93F8F9C(a3 + v16, v12);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_1A937B960(v12, &qword_1EB386FF8, &qword_1A958AFF0);
    v17 = 1;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_1A937B960(v12, &qword_1EB386FF8, &qword_1A958AFF0);
    v18 = sub_1A957C3B8();
    v24[1] = a1;
    v24[2] = a2;
    v24[3] = v18;
    v24[4] = v19;
    v24[5] = v20;
    v24[6] = v21;
    sub_1A957C6B8();
    (*(v7 + 8))(v9, v6);
    v17 = 0;
  }

  v22 = sub_1A937829C(&qword_1EB387030, &unk_1A958B0B8);
  (*(*(v22 - 8) + 56))(v15, v17, 1, v22);
  sub_1A937B960(v15, &qword_1EB387028, &qword_1A958B0B0);
  return *(a3 + OBJC_IVAR____TtC12TextToSpeech18StreamingTokenizer_shouldContinue);
}

uint64_t sub_1A93F9D84()
{
  (*(**v0 + 128))();
}

uint64_t type metadata accessor for StreamingTokenizer(uint64_t a1)
{
  result = qword_1EB394C90;
  if (!qword_1EB394C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A93F9E30(uint64_t a1)
{
  sub_1A93F9FD4(319, &qword_1EB387018, &qword_1EB387000, &qword_1A958AFF8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1A93F9FD4(319, &qword_1EB387020, &qword_1EB386FE8, &qword_1A958AFE0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A93F9FD4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A93A7B68(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A93FA040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A93FA0D4(int a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1A93FA1E8(int a1)
{
  v3 = swift_beginAccess();
  v1[12] = a1;
  result = (*(*v1 + 144))(v3);
  if (result)
  {
    v5 = v1[12];
    result = (*(*v1 + 120))();
    if (v5 < result)
    {
      swift_continuation_throwingResume();
      return (*(*v1 + 152))(0);
    }
  }

  return result;
}

uint64_t (*sub_1A93FA2BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A93FA310;
}

uint64_t sub_1A93FA310(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    result = (*(**(a1 + 24) + 144))(result);
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = v5[12];
      result = (*(*v5 + 120))();
      if (v6 < result)
      {
        v7 = *(a1 + 24);
        swift_continuation_throwingResume();
        return (*(*v7 + 152))(0);
      }
    }
  }

  return result;
}

uint64_t sub_1A93FA3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  type metadata accessor for BufferedAudioQueue();
  v4[16] = sub_1A93FB68C(&qword_1EB387038, v5, type metadata accessor for BufferedAudioQueue, &protocol conformance descriptor for BufferedAudioQueue);
  v7 = sub_1A957C5A8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A93FA4A4, v7, v6);
}

uint64_t sub_1A93FA4A4()
{
  v1 = *(v0 + 120);
  v2 = (*(*v1 + 168))();
  if (v2 >= (*(*v1 + 120))())
  {
    v24 = *(v0 + 128);
    v25 = swift_task_alloc();
    *(v0 + 152) = v25;
    *(v25 + 16) = *(v0 + 104);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    *(v5 + 8) = sub_1A93FA780;
    v7 = *(v0 + 120);
    v6 = &unk_1A958B0D0;
    v8 = sub_1A93FAD70;
    v12 = MEMORY[0x1E69E7CA8] + 8;
    v9 = v25;
    v10 = v1;
    v11 = v24;

    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v3 = *(v0 + 120);
  v4 = [*(v0 + 96) frameLength];
  v5 = (*(*v3 + 184))(v0 + 64);
  v13 = *v6 + v4;
  if (__CFADD__(*v6, v4))
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  *v6 = v13;
  (v5)(v0 + 64, 0);
  v18 = *(v14 + 24);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v15;
  v19[4] = v14;
  v19[5] = v16;
  *(v0 + 48) = sub_1A93FB020;
  *(v0 + 56) = v19;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1A93FB164;
  *(v0 + 40) = &unk_1F1CED720;
  v20 = _Block_copy((v0 + 16));

  v21 = v16;

  [v18 playBuffer:v21 completionHandler:v20];
  _Block_release(v20);
  v22 = *(v0 + 8);

  return v22();
}

void sub_1A93FA780()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);

    MEMORY[0x1EEE6DFA0](sub_1A93FA8B8, v3, v4);
  }
}

void (*sub_1A93FA8B8())(void *, void)
{
  v1 = *(v0 + 120);
  v2 = [*(v0 + 96) frameLength];
  result = (*(*v1 + 184))(v0 + 64);
  v5 = *v4 + v2;
  if (__CFADD__(*v4, v2))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    *v4 = v5;
    result((v0 + 64), 0);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v7;
    v11[4] = v6;
    v11[5] = v8;
    *(v0 + 48) = sub_1A93FB020;
    *(v0 + 56) = v11;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1A93FB164;
    *(v0 + 40) = &unk_1F1CED720;
    v12 = _Block_copy((v0 + 16));

    v13 = v8;

    [v10 playBuffer:v13 completionHandler:v12];
    _Block_release(v12);
    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_1A93FAA8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  sub_1A93FB68C(&qword_1EB387038, a2, type metadata accessor for BufferedAudioQueue, &protocol conformance descriptor for BufferedAudioQueue);
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_1A957C5A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A93FAB50, v4, v6);
}

uint64_t sub_1A93FAB50()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1A93FAC04;
  v2 = swift_continuation_init();
  (*(*v1 + 152))(v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A93FAC04()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_1A93FACE0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return sub_1A93FAA8C(v2, v0);
}

uint64_t sub_1A93FAD9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  a2(a1);
  v15 = *(a4 + 16);
  v16 = sub_1A957C688();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  sub_1A93F8120(v14, v12);
  v19 = (*(v17 + 48))(v12, 1, v16);

  v20 = a5;
  if (v19 == 1)
  {
    sub_1A93F8190(v12);
  }

  else
  {
    sub_1A957C678();
    (*(v17 + 8))(v12, v16);
  }

  v21 = sub_1A93FB68C(&qword_1ED96FE68, 255, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1A958B190;
  *(v22 + 24) = v18;
  v24[0] = 6;
  v24[1] = 0;
  v24[2] = v15;
  v24[3] = v21;
  swift_unknownObjectRetain();
  swift_task_create();

  return sub_1A93F8190(v14);
}

uint64_t sub_1A93FB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = (*a2 + 200) & 0xFFFFFFFFFFFFLL | 0xB017000000000000;
  v3[4] = *(*a2 + 200);
  v3[5] = v4;
  type metadata accessor for BufferedAudioQueue();
  sub_1A93FB68C(&qword_1EB387038, v5, type metadata accessor for BufferedAudioQueue, &protocol conformance descriptor for BufferedAudioQueue);
  v7 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A93FB100, v7, v6);
}

uint64_t sub_1A93FB100()
{
  (*(v0 + 32))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A93FB164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1A93FB1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_1A93FB1D0(void *a1))(_BYTE *, void)
{
  v2 = [a1 frameLength];
  result = (*(*v1 + 184))(v5);
  if (*v4 < v2)
  {
    __break(1u);
  }

  else
  {
    *v4 -= v2;
    return result(v5, 0);
  }

  return result;
}

uint64_t BufferedAudioQueue.__allocating_init(queue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v3 = TTSExecutor.__allocating_init()();
  *(v2 + 32) = 441000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t BufferedAudioQueue.init(queue:)(uint64_t a1)
{
  type metadata accessor for TTSExecutor();
  v3 = TTSExecutor.__allocating_init()();
  *(v1 + 32) = 441000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t BufferedAudioQueue.deinit()
{

  return v0;
}

uint64_t sub_1A93FB368()
{
  v0 = type metadata accessor for BufferedAudioQueue();
  v2 = sub_1A93FB68C(&qword_1EB387040, v1, type metadata accessor for BufferedAudioQueue, &protocol conformance descriptor for BufferedAudioQueue);

  return TTSActor.unownedExecutor.getter(v0, v2);
}

uint64_t sub_1A93FB3D8(uint64_t a1, uint64_t a2)
{
  result = sub_1A93FB68C(&qword_1EB387038, a2, type metadata accessor for BufferedAudioQueue, &protocol conformance descriptor for BufferedAudioQueue);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of BufferedAudioQueue.play(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A9382328;

  return v10(a1, a2, a3);
}

uint64_t sub_1A93FB594(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return a2(v2, a1, 7);
}

uint64_t sub_1A93FB5F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A93FB02C(v4, v2, v3);
}

uint64_t sub_1A93FB68C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93FB6D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A938F98C(a1, v4);
}

uint64_t Sequence<>.filtered(axCriteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, a2);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a1;
  v22 = sub_1A957C3F8();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  swift_getAssociatedTypeWitness();
  sub_1A957C578();
  swift_getWitnessTable();
  v11 = sub_1A957C418();

  return v11;
}

uint64_t sub_1A93FB938(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A957B2E8();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v53 - v11;
  v12 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v53 - v13;
  v14 = sub_1A957B308();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  if (*(a2 + *(Criteria + 28) + 8))
  {
    v16 = sub_1A957C1A8();
    v17 = a1;
    v19 = v18;
    v20 = *(a5 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = v17;
    v20(AssociatedTypeWitness, a5);
    v23 = sub_1A957C1A8();
    v25 = v24;

    if (v23 == v16 && v25 == v19)
    {

LABEL_7:

      a1 = v22;
      goto LABEL_8;
    }

    v26 = sub_1A957D3E8();

    if (v26)
    {
      goto LABEL_7;
    }

    v41 = *(a5 + 32);
    v58 = AssociatedTypeWitness;
    v42 = v41(AssociatedTypeWitness, a5);
    v64[0] = v16;
    v64[1] = v19;
    MEMORY[0x1EEE9AC00](v42);
    *(&v53 - 2) = v64;
    v43 = v63;
    v44 = sub_1A93FC564(sub_1A9394148, (&v53 - 4), v42);

    if ((v44 & 1) == 0)
    {
      v33 = 0;
      return v33 & 1;
    }

    v63 = v43;
    a1 = v22;
    AssociatedTypeWitness = v58;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

LABEL_8:
  v27 = *a2;
  v28 = *(a5 + 8);
  v58 = a1;
  v28(&v67, AssociatedTypeWitness, a5);
  v66 = v27;
  sub_1A93FC780();
  sub_1A957C438();
  sub_1A93FC7D4();
  sub_1A957D5D8();
  sub_1A9387410();
  sub_1A957CDA8();
  v67 = v64[0];
  sub_1A957CDF8();
  sub_1A93B1F40();
  if (sub_1A957C098() & 1) != 0 && ((v64[0] = a2[1], sub_1A957CDF8(), (sub_1A957C098()) || (v28(&v67, AssociatedTypeWitness, a5), v64[0] = a2[1], (sub_1A957CD88())))
  {
    v29 = a2 + *(Criteria + 24);
    v30 = v60;
    sub_1A93B5960(v29, v60);
    v32 = v61;
    v31 = v62;
    if ((*(v61 + 48))(v30, 1, v62) != 1)
    {
      v35 = AssociatedTypeWitness;
      v36 = v57;
      (*(v32 + 32))(v57, v30, v31);
      v37 = v53;
      sub_1A957B2F8();
      v38 = v56;
      sub_1A957B2B8();
      (*(v54 + 8))(v37, v55);
      v39 = sub_1A957B188();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_1A937B960(v38, &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v45 = Locale.LanguageCode.childLanguages.getter();
        v46 = v38;
        v47 = v45;
        (*(v40 + 8))(v46, v39);
        if (*(v47 + 16))
        {
          (*(a5 + 16))(v64, v35, a5);
          sub_1A93780F4(v64, v65);
          v48 = sub_1A957C3D8();
          v49 = sub_1A93ACF58(v48);

          sub_1A9378138(v64);
          v50 = sub_1A93A5804(v47, v49);

          v51 = *(v50 + 16);

          v33 = v51 != 0;
          (*(v32 + 8))(v36, v31);
          return v33 & 1;
        }
      }

      (*(a5 + 16))(v64, v35, a5);
      v52 = sub_1A93780F4(v64, v65);
      MEMORY[0x1EEE9AC00](v52);
      *(&v53 - 2) = v36;
      v33 = sub_1A957C428();
      sub_1A9378138(v64);
      (*(v32 + 8))(v36, v31);
      return v33 & 1;
    }

    sub_1A937B960(v30, &qword_1EB386988, &qword_1A9587830);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1A93FC148()
{
  v0 = sub_1A957B2E8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B2F8();
  sub_1A957B2B8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A93FC22C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = sub_1A957B2E8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v15 = *(v3 + 8);
  v31 = v2;
  v15(v8, v2);
  v16 = sub_1A957B188();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
    v29 = 0;
    v19 = 0;
  }

  else
  {
    v29 = sub_1A957B148();
    v20 = v14;
    v19 = v21;
    (*(v17 + 8))(v20, v16);
  }

  sub_1A957B2F8();
  sub_1A957B2B8();
  v15(v6, v31);
  if (v18(v12, 1, v16) == 1)
  {
    sub_1A937B960(v12, &qword_1EB386A68, &qword_1A9587F40);
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_14:
    v26 = 0;
LABEL_19:

    return v26 & 1;
  }

  v22 = sub_1A957B148();
  v24 = v23;
  (*(v17 + 8))(v12, v16);
  if (v19)
  {
    if (v24)
    {
      if (v29 == v22 && v19 == v24)
      {

        v26 = 1;
      }

      else
      {
        v26 = sub_1A957D3E8();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v24)
  {
    v26 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1A93FC564(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A93FC610()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  if (*(v1 + *(type metadata accessor for VoiceQueryCriteria(0) + 28) + 8))
  {
    v3 = sub_1A957C1A8();
    v5 = v4;
    v6 = *(v2 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6(AssociatedTypeWitness, v2);
    v8 = sub_1A957C1A8();
    v10 = v9;

    if (v8 == v3 && v10 == v5)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1A957D3E8();
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

unint64_t sub_1A93FC780()
{
  result = qword_1ED96FFF8;
  if (!qword_1ED96FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFF8);
  }

  return result;
}

unint64_t sub_1A93FC7D4()
{
  result = qword_1ED96FFE0;
  if (!qword_1ED96FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFE0);
  }

  return result;
}

uint64_t sub_1A93FC8CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x138))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FC930(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x140);

  return v2(v3);
}

uint64_t (*sub_1A93FC9E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FC858(v4);
  return sub_1A93FCB44;
}

uint64_t type metadata accessor for CoreSynthesizer(uint64_t a1)
{
  result = qword_1EB390800;
  if (!qword_1EB390800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93FCBFC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FCC60(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);

  return v2(v3);
}

uint64_t (*sub_1A93FCD28(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FCB9C(v4);
  return sub_1A93FCE88;
}

uint64_t sub_1A93FD12C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FD190(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);

  return v2(v3);
}

uint64_t (*sub_1A93FD21C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FCF58(v4);
  return sub_1A93FD37C;
}

uint64_t sub_1A93FD3E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FD44C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);

  return v2(v3);
}

uint64_t sub_1A93FD4CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__voices;
  swift_beginAccess();

  v5 = sub_1A940FE38(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v1;
    v10 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6A0))(v8, sub_1A940FF78);
  }
}

uint64_t (*sub_1A93FD60C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FD388(v4);
  return sub_1A93FD76C;
}

void sub_1A93FD908(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer__audioQueue;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A9387478(0, &qword_1EB387070, off_1E787F320);
  v6 = v5;
  v7 = sub_1A957CC18();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6A0))(v10, sub_1A940FF98);
  }
}

uint64_t sub_1A93FDA64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A93FDB34(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FD824(v4);
  return sub_1A93FDC94;
}

uint64_t sub_1A93FDD00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FDD64(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x230);

  return v2(v3);
}

uint64_t (*sub_1A93FDE0C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FDCA0(v4);
  return sub_1A93FDF6C;
}

uint64_t sub_1A93FDFEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE050(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);

  return v2(v3);
}

uint64_t (*sub_1A93FE0E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FDF78(v4);
  return sub_1A93FE244;
}

uint64_t sub_1A93FE2C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93FE328(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x290);

  return v2(v3);
}

uint64_t (*sub_1A93FE3BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x698))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A9412F70(&qword_1EB3862E0, type metadata accessor for CoreSynthesizer, &protocol conformance descriptor for CoreSynthesizer);
  sub_1A957B348();

  v4[7] = sub_1A93FE250(v4);
  return sub_1A93FE51C;
}

uint64_t sub_1A93FE594()
{
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC12TextToSpeech15CoreSynthesizer____lazy_storage___offlineChain) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}