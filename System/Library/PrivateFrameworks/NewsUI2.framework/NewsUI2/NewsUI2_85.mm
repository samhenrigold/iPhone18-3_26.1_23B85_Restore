BOOL sub_219057878(id *a1, uint64_t a2)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(a2) = sub_2188537B8(v4, v6, a2);

  return (a2 & 1) == 0;
}

double sub_219057908@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v24 = v2[4];
  v25 = v4;
  v5 = v2[7];
  v26 = v2[6];
  v27 = v5;
  v6 = v2[1];
  v20 = *v2;
  v21 = v6;
  v7 = v2[3];
  v22 = v2[2];
  v23 = v7;
  sub_21904FFA0(a1, v13);
  v8 = v17;
  a2[4] = v16;
  a2[5] = v8;
  v9 = v19;
  a2[6] = v18;
  a2[7] = v9;
  v10 = v13[1];
  *a2 = v13[0];
  a2[1] = v10;
  result = *&v14;
  v12 = v15;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

uint64_t sub_219057988(_OWORD *a1)
{
  v3 = a1[5];
  *(v2 + 208) = a1[4];
  *(v2 + 224) = v3;
  v4 = a1[7];
  *(v2 + 240) = a1[6];
  *(v2 + 256) = v4;
  v5 = a1[1];
  *(v2 + 144) = *a1;
  *(v2 + 160) = v5;
  v6 = a1[3];
  *(v2 + 176) = a1[2];
  *(v2 + 192) = v6;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v9;
  *(v2 + 16) = v7;
  *(v2 + 32) = v8;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[7];
  *(v2 + 112) = v1[6];
  *(v2 + 128) = v12;
  *(v2 + 80) = v10;
  *(v2 + 96) = v11;
  v13 = swift_task_alloc();
  *(v2 + 272) = v13;
  *v13 = v2;
  v13[1] = sub_219057A60;

  return sub_219053B20(v2 + 144);
}

uint64_t sub_219057A60(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

void sub_219057B68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_219BF7AA4();

      sub_219BF5524();
      v14 = sub_219BF7AE4();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

uint64_t sub_219057D44(uint64_t a1, uint64_t a2)
{
  sub_219058560(0, &unk_280E8FE30, MEMORY[0x277D34410]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219057DC4(uint64_t a1)
{
  sub_219058560(0, &unk_280E8FE30, MEMORY[0x277D34410]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219057E3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057140(a1);
}

uint64_t sub_219057ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057140(a1);
}

uint64_t sub_219057F74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_2190570A0(a1);
}

uint64_t sub_219058010(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_2190570A0(a1);
}

uint64_t sub_2190580AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057000(a1);
}

uint64_t sub_219058148(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219057000(a1);
}

uint64_t sub_2190581E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_219056EC0(a1);
}

uint64_t sub_219058280(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_219056F60(a1);
}

uint64_t sub_21905831C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219058384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219058404(uint64_t a1)
{
  if (!qword_27CC15600)
  {
    sub_219BEFC44();
    sub_218A450F0();
    v1 = sub_219BF5C24();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15600);
    }
  }
}

uint64_t sub_219058474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2190584DC()
{
  result = qword_27CC15608;
  if (!qword_27CC15608)
  {
    sub_218799690(255, &qword_280E8ECA0, &qword_280E8E430, &protocolRef_FCPuzzleProviding, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15608);
  }

  return result;
}

void sub_219058560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219058608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219057284(a1, v4, v5, (v1 + 4), v6);
}

void sub_2190586E4()
{
  if (!qword_280E8F2C8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F2C8);
    }
  }
}

unint64_t sub_219058734()
{
  result = qword_27CC0CBF0;
  if (!qword_27CC0CBF0)
  {
    sub_218799690(255, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CBF0);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2190587DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_219058824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI217MagazineGridModelV4KindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_219058918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_219058960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2190589C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81260(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_219BF7884();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_21905C21C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_219058AFC(void *a1)
{
  sub_218C4014C(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_218C81274(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_21905BEC4(v6);
  *a1 = v4;
}

uint64_t sub_219058BA4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v76 = a2;
  v70 = a1;
  v74 = sub_219BE6DF4();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BBE4(0, &qword_27CC11768, MEMORY[0x277D6DF88]);
  v73 = v6;
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v59 - v7;
  sub_21905BBE4(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v10 = v9;
  v68 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v59 - v11;
  v13 = type metadata accessor for MagazineGridItemModel(0);
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v80 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v59 - v16;
  sub_21897BFEC(0);
  v79 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BCA4(0);
  MEMORY[0x28223BE20](v22);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = *(*v3 + 16);
  v75 = a3;
  if (v29)
  {
    v66 = v59 - v27;
    v60 = v24;
    v61 = v28;
    v67 = v26;
    v65 = v13;
    v62 = v12;
    v64 = v8;
    __swift_project_boxed_opaque_existential_1(v3 + 8, *(v3 + 11));
    v30 = v3[1];
    v84[0] = *v3;
    v84[1] = v30;
    *v85 = v3[2];
    *&v85[9] = *(v3 + 41);
    v77 = v3;
    v31 = sub_218BA4C6C(v84);
    sub_2190595D8(v31);
    v32 = v77;
    v34 = v33;

    v35 = v32[1];
    v82[0] = *v32;
    v82[1] = v35;
    v83[0] = v32[2];
    *(v83 + 9) = *(v32 + 41);
    v36 = *(v34 + 16);
    v63 = v10;
    if (v36)
    {
      v81 = MEMORY[0x277D84F90];
      sub_218C368F0(0, v36, 0);
      v37 = v81;
      v38 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v59[1] = v34;
      v39 = v34 + v38;
      v78 = *(v78 + 72);
      do
      {
        sub_21905DBD0(v39, v17, type metadata accessor for MagazineGridItemModel);
        sub_21905DBD0(v17, v80, type metadata accessor for MagazineGridItemModel);
        sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
        sub_219BE5FB4();
        sub_21905DCE4(v17, type metadata accessor for MagazineGridItemModel);
        v81 = v37;
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_218C368F0((v40 > 1), v41 + 1, 1);
          v37 = v81;
        }

        *(v37 + 16) = v41 + 1;
        (*(v19 + 32))(v37 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v41, v21, v79);
        v39 += v78;
        --v36;
      }

      while (v36);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v51 = v74;
    v52 = v72;
    v53 = v69;
    v54 = v64;
    v55 = v66;
    if (*&v83[0])
    {
      if (*&v83[0] == 1)
      {
        sub_219059A10(v37, v66);
      }

      else if (*&v83[0] == 2)
      {
        sub_21905A864(v82, v37);
      }

      else
      {
        sub_21905A4BC(v82, v37);
      }
    }

    else
    {
      sub_21905966C(v82, v37);
    }

    v56 = v60;

    v57 = v61;
    (*(v61 + 16))(v56, v55, v67);
    sub_21895164C();
    sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v58 = v62;
    sub_219BEB2D4();
    (*(v52 + 104))(v53, *MEMORY[0x277D6D868], v51);
    sub_218D4F180();
    sub_219BE85E4();
    (*(v52 + 8))(v53, v51);
    v76(v54);
    (*(v71 + 8))(v54, v73);
    (*(v68 + 8))(v58, v63);
    return (*(v57 + 8))(v66, v67);
  }

  else
  {
    sub_218951594(0);
    v43 = v42;
    v44 = v10;
    v45 = sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
    v46 = sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v43, v45, v46);
    sub_21895164C();
    sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    sub_219BEB2D4();
    v47 = v72;
    v48 = v69;
    v49 = v74;
    (*(v72 + 104))(v69, *MEMORY[0x277D6D868], v74);
    sub_218D4F180();
    sub_219BE85E4();
    (*(v47 + 8))(v48, v49);
    (*(v68 + 8))(v12, v44);
    v76(v8);
    return (*(v71 + 8))(v8, v73);
  }
}

double sub_2190595D8(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1;

      sub_219B11034(&v4);
      return result;
    }
  }

  else if (v2 - 1 >= 2)
  {
    v4 = a1;

    sub_219B10FF4(&v4);
    return result;
  }

  return result;
}

uint64_t sub_21905966C(uint64_t a1, uint64_t a2)
{
  sub_21905BD70(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
  sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
  v19[0] = v6;
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4(0);
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_21938C450();
  v19[3] = v10;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = 0;
  v20 = 1;
  v19[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();
  v13 = sub_219BF56E4();

  sub_21897BFEC(0);
  v15 = v14;
  v16 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
  v17 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v13, v15, v16, v17);
  type metadata accessor for MagazineGridItemModel(0);
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
  sub_219BE6924();
  sub_21905BCA4(0);
  sub_219BE2424();
  return (*(v7 + 8))(v9, v19[0]);
}

void sub_219059A10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  sub_218C4014C(0);
  v83 = v3;
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v60 - v6;
  sub_21897BFEC(0);
  v8 = v7;
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905BD70(0);
  v74 = v11;
  v86 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v60 - v14;
  sub_218951594(0);
  v75 = v15;
  v76 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BDBF94();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBF34();
  v60 = v19;
  v89 = v19;
  v20 = a1;
  v21 = 0;
  sub_218D24F1C(MEMORY[0x277D84F98], sub_21905DBB4, v88, v20);
  v23 = v22;
  v24 = *(v22 + 16);
  if (v24)
  {
    v79 = 0;
    v25 = sub_21947D47C(v24, 0);
    v85 = sub_2194AC28C(v90, v25 + 4, v24, v23);
    v26 = v90[0];
    v21 = v91;
    v80 = v92;
    swift_bridgeObjectRetain_n();
    sub_21892DE98(v26);
    if (v85 != v24)
    {
      __break(1u);
      goto LABEL_34;
    }

    v21 = v79;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v90[0] = v25;
  sub_2190589C8(v90);
  if (v21)
  {
LABEL_34:

    __break(1u);
    return;
  }

  v27 = v90[0];
  v28 = *(v90[0] + 2);
  if (v28)
  {
    v29 = v90[0] + 32;
    v64 = (v84 + 32);
    v67 = (v86 + 16);
    v66 = (v86 + 8);
    v65 = v76 + 32;
    v30 = MEMORY[0x277D84F90];
    v71 = v17;
    v70 = v23;
    v69 = v90[0];
    v68 = v90[0] + 32;
    while (v28 <= *(v27 + 2))
    {
      --v28;
      if (*(v23 + 16))
      {
        v31 = *&v29[8 * v28];
        v32 = sub_219320C04(v31);
        if (v33)
        {
          v78 = v31;
          v90[0] = *(*(v23 + 56) + 8 * v32);
          swift_bridgeObjectRetain_n();
          sub_219058AFC(v90);
          if (v21)
          {
            goto LABEL_34;
          }

          v79 = v30;
          v80 = v28;

          v34 = v90[0];
          v35 = *(v90[0] + 2);
          if (v35)
          {
            v77 = 0;
            v90[0] = MEMORY[0x277D84F90];
            sub_218C368F0(0, v35, 0);
            v36 = *(v34 + 2);
            v37 = v90[0];
            v85 = &v34[(*(v87 + 80) + 32) & ~*(v87 + 80)];
            v38 = v36 - 1;
            v39 = v64;
            v86 = v34;
            while (v38 != -1)
            {
              if (v38 >= *(v34 + 2))
              {
                goto LABEL_28;
              }

              v40 = v81;
              sub_21905DBD0(&v85[*(v87 + 72) * v38], v81, sub_218C4014C);
              v41 = v10;
              v42 = v82;
              sub_21905DC38(v40, v82);
              v43 = *(v83 + 48);
              v44 = *v39;
              (*v39)(v41, v42, v8);
              v45 = sub_219BDBD34();
              (*(*(v45 - 8) + 8))(v42 + v43, v45);
              v90[0] = v37;
              v46 = v8;
              v48 = *(v37 + 2);
              v47 = *(v37 + 3);
              v30 = (v48 + 1);
              if (v48 >= v47 >> 1)
              {
                sub_218C368F0((v47 > 1), v48 + 1, 1);
                v37 = v90[0];
              }

              *(v37 + 2) = v30;
              v44(&v37[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v48], v41, v46);
              --v38;
              --v35;
              v8 = v46;
              v10 = v41;
              v34 = v86;
              if (!v35)
              {

                v21 = v77;
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }

          v37 = MEMORY[0x277D84F90];
LABEL_23:
          v90[0] = v37;
          sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
          sub_21905BE3C();
          v49 = sub_219BF56E4();

          v50 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
          v51 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);
          v52 = v72;
          MEMORY[0x21CEB9170](v49, v8, v50, v51);
          sub_21905DC9C(&qword_27CC15658, sub_21905BD70, MEMORY[0x277D6CC48]);
          v53 = v74;
          sub_219BF5DF4();
          sub_219BF5E84();
          v54 = sub_219BF5E74();
          v90[0] = v78;
          v90[1] = v54;
          v90[2] = 0;
          v91 = 0;
          LOBYTE(v92) = 2;
          (*v67)(v73, v52, v53);
          type metadata accessor for MagazineGridItemModel(0);
          sub_21895164C();
          sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
          v55 = v71;
          sub_219BE6924();
          (*v66)(v52, v53);
          v30 = v79;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2191F9A38(0, v30[2] + 1, 1, v30);
          }

          v27 = v69;
          v28 = v80;
          v29 = v68;
          v57 = v30[2];
          v56 = v30[3];
          if (v57 >= v56 >> 1)
          {
            v30 = sub_2191F9A38((v56 > 1), v57 + 1, 1, v30);
          }

          v30[2] = v57 + 1;
          (*(v76 + 32))(v30 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v57, v55, v75);
          v23 = v70;
        }
      }

      if (!v28)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_30:
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v58 = sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
  v59 = sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v30, v75, v58, v59);
  (*(v61 + 8))(v60, v62);
}

uint64_t sub_21905A4BC(uint64_t a1, uint64_t a2)
{
  sub_21905BD70(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
  sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
  v20[0] = v6;
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4(0);
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v20[3] = v10;
  v20[4] = v11;
  v20[5] = v12;
  v20[6] = v13;
  v21 = 0;
  v20[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();

  v14 = sub_219BF56E4();

  sub_21897BFEC(0);
  v16 = v15;
  v17 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
  v18 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for MagazineGridItemModel(0);
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
  sub_219BE6924();
  sub_21905BCA4(0);
  sub_219BE2424();
  return (*(v7 + 8))(v9, v20[0]);
}

uint64_t sub_21905A864(uint64_t a1, uint64_t a2)
{
  sub_21905BD70(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218951594(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
  sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
  sub_219BE2444();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);

  if ((v11 - 1) >= 4)
  {
    sub_21905ABFC();
    sub_21905BCA4(0);
    sub_219BE23F4();

    a2 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v18[3] = v10;
  v18[4] = v11;
  v18[5] = 0;
  v18[6] = 0;
  v19 = 3;
  v18[2] = a2;
  sub_21905DD44(0, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
  sub_21905BE3C();
  v12 = sub_219BF56E4();

  sub_21897BFEC(0);
  v14 = v13;
  v15 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
  v16 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v12, v14, v15, v16);
  type metadata accessor for MagazineGridItemModel(0);
  sub_21895164C();
  sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
  sub_219BE6924();
  sub_21905BCA4(0);
  sub_219BE2424();
  return (*(v7 + 8))(v9, v6);
}

void sub_21905ABFC()
{
  sub_21905BD70(0);
  MEMORY[0x28223BE20](v0 - 8);
  v48 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951594(0);
  v47 = v2;
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_21905D730(v4);
  v46 = 0;

  v6 = MEMORY[0x277D84F90];
  v7 = &unk_282A25958;
  v8 = 10;
  do
  {
    if (*(v5 + 2))
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = sub_21870F700(v10, v9);
      if ((v12 & 1) != 0 && (v13 = *(*(v5 + 7) + 8 * v11), (v14 = *(v13 + 16)) != 0))
      {
        v15 = v6[2];
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
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
          return;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v16 > v6[3] >> 1)
        {
          if (v15 <= v16)
          {
            v18 = v15 + v14;
          }

          else
          {
            v18 = v15;
          }

          v6 = sub_2191F9A6C(isUniquelyReferenced_nonNull_native, v18, 1, v6);
        }

        if (!*(v13 + 16))
        {
          goto LABEL_44;
        }

        v19 = (v6[3] >> 1) - v6[2];
        sub_21897BFEC(0);
        if (v19 < v14)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        v20 = v6[2];
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_43;
        }

        v6[2] = v22;
        sub_21870F700(v10, v9);
        v24 = v23;

        if (v24)
        {
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v51[0] = v5;
          if (!v25)
          {
            sub_219493E94();
            v5 = v51[0];
          }

          sub_2194B7E5C();
        }
      }

      else
      {
      }
    }

    v7 += 2;
    --v8;
  }

  while (v8);
  if (v6[2])
  {

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v5;
    sub_21948D83C(v6, 35, 0xE100000000000000, v26);
    v5 = v51[0];
  }

  v27 = *(v5 + 2);
  if (v27)
  {
    v28 = sub_21947D1C0(*(v5 + 2), 0);
    v29 = sub_2194B7E3C();
    v30 = v51[0];
    swift_bridgeObjectRetain_n();
    sub_21892DE98(v30);
    if (v29 == v27)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  v28 = MEMORY[0x277D84F90];
LABEL_27:
  v51[0] = v28;
  v8 = v46;
  sub_21871B098(v51);
  if (v8)
  {
    goto LABEL_45;
  }

  v31 = *(v51[0] + 2);
  if (v31)
  {
    v45 = v51[0];
    v46 = v49 + 32;
    v32 = (v51[0] + 40);
    v33 = MEMORY[0x277D84F90];
    do
    {
      if (*(v5 + 2))
      {
        v35 = *(v32 - 1);
        v34 = *v32;

        v36 = sub_21870F700(v35, v34);
        if ((v37 & 1) != 0 && *(*(*(v5 + 7) + 8 * v36) + 16))
        {
          v51[0] = v35;
          v51[1] = v34;
          v51[2] = 0;
          v51[3] = 0;
          LOBYTE(v52) = 4;
          sub_21897BFEC(0);
          v39 = v38;
          v40 = sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
          v41 = sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);

          MEMORY[0x21CEB9170](v42, v39, v40, v41);
          type metadata accessor for MagazineGridItemModel(0);
          sub_21895164C();
          sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
          sub_219BE6924();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_2191F9A38(0, v33[2] + 1, 1, v33);
          }

          v44 = v33[2];
          v43 = v33[3];
          if (v44 >= v43 >> 1)
          {
            v33 = sub_2191F9A38((v43 > 1), v44 + 1, 1, v33);
          }

          v33[2] = v44 + 1;
          (*(v49 + 32))(v33 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v44, v50, v47);
        }

        else
        {
        }
      }

      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

uint64_t sub_21905B208(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v90 = a1;
  sub_218C4014C(0);
  v85 = v4;
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905DD44(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v86 = &v74 - v7;
  v8 = sub_219BDBD34();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v16 = sub_219BDB534();
  v93 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  v23 = v22;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *v21;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_2189E9530(*(v21 + 4), *(v21 + 5), *(v21 + 6));
      sub_2189E9570(0);
      v27 = &v21[*(v26 + 64)];
      v28 = *&v21[*(v26 + 80) + 32];

      v29 = sub_219BF0744();
    }

    else
    {

      sub_2189E93F4(0);
      v27 = &v21[*(v49 + 48)];
      v50 = *&v21[*(v49 + 64) + 32];

      v29 = sub_219BF0444();
    }

    v51 = v29;
  }

  else
  {
    v75 = a2;
    v76 = v12;
    v74 = v23;
    v83 = v18;
    v81 = v16;
    v30 = *(v21 + 2);
    v78 = v15;
    v79 = v30;
    sub_2189E96A0(0);
    v80 = v31;
    v32 = *(v31 + 64);
    v77 = v21;
    v33 = *&v21[v32 + 32];

    sub_21905DD44(0, &qword_27CC247B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v34 = sub_219BDBF74();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09BA0;
    (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9988], v34);
    sub_2194B2E6C(v37);
    swift_setDeallocating();
    (*(v35 + 8))(v37 + v36, v34);
    swift_deallocClassInstance();
    v38 = [v25 sortDate];
    v82 = v25;
    if (v38)
    {
      v39 = v76;
      v40 = v38;
      sub_219BDBCA4();

      v42 = v91;
      v41 = v92;
      v43 = *(v91 + 32);
      v44 = v86;
      v43(v86, v39, v92);
      (*(v42 + 56))(v44, 0, 1, v41);
      v45 = v78;
      v43(v78, v44, v41);
      v46 = v88;
      v47 = v81;
      v48 = v93;
    }

    else
    {
      v42 = v91;
      v41 = v92;
      v52 = v86;
      (*(v91 + 56))(v86, 1, 1, v92);
      v53 = [v25 publicationDate];
      v45 = v78;
      sub_219BDBCA4();

      v54 = (*(v42 + 48))(v52, 1, v41);
      v46 = v88;
      v47 = v81;
      v48 = v93;
      if (v54 != 1)
      {
        sub_2189DD39C(v52);
      }
    }

    v55 = v83;
    sub_219BDBEA4();

    (*(v42 + 8))(v45, v41);
    v56 = sub_219BDB494();
    v58 = v89;
    v57 = v90;
    if (v59)
    {
      (*(v48 + 8))(v55, v47);

      v60 = v77;
    }

    else
    {
      v61 = *v90;
      v62 = *(*v90 + 16);
      v88 = v56;
      if (v62)
      {
        v63 = sub_219320C04(v56);
        v64 = v75;
        if (v65)
        {
          v66 = *(*(v61 + 56) + 8 * v63);
        }

        else
        {
          v66 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
        v64 = v75;
      }

      v67 = [v82 publicationDate];
      v68 = v84;
      sub_219BDBCA4();

      v69 = *(v85 + 48);
      (*(*(v74 - 8) + 16))(v46, v64);
      (*(v91 + 32))(v46 + v69, v68, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_2191F9BC4(0, v66[2] + 1, 1, v66);
      }

      v60 = v77;
      v71 = v66[2];
      v70 = v66[3];
      if (v71 >= v70 >> 1)
      {
        v66 = sub_2191F9BC4((v70 > 1), v71 + 1, 1, v66);
      }

      v66[2] = v71 + 1;
      sub_21905DC38(v46, v66 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = *v57;
      sub_21948D868(v66, v88, isUniquelyReferenced_nonNull_native);

      *v57 = v94;
      (*(v93 + 8))(v83, v47);
    }

    v27 = &v60[*(v80 + 48)];
    v51 = sub_219BF0744();
  }

  return (*(*(v51 - 8) + 8))(v27);
}

uint64_t sub_21905BAC0@<X0>(uint64_t *a1@<X8>)
{
  sub_21897BFEC(0);
  result = sub_219BE5F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21905BB08(uint64_t a1)
{
  v2 = sub_21905DDA8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21905BB48()
{
  result = qword_27CC15610;
  if (!qword_27CC15610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15610);
  }

  return result;
}

void sub_21905BBE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_21905DC9C(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21905BCA4(uint64_t a1)
{
  if (!qword_27CC15618)
  {
    sub_218951594(255);
    sub_21905DC9C(&qword_27CC15620, sub_218951594, MEMORY[0x277D6D720]);
    sub_21905DC9C(&qword_27CC15628, sub_218951594, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15618);
    }
  }
}

void sub_21905BD70(uint64_t a1)
{
  if (!qword_27CC15630)
  {
    sub_21897BFEC(255);
    sub_21905DC9C(&qword_27CC15638, sub_21897BFEC, MEMORY[0x277D6D408]);
    sub_21905DC9C(&qword_27CC15640, sub_21897BFEC, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15630);
    }
  }
}

unint64_t sub_21905BE3C()
{
  result = qword_27CC15650;
  if (!qword_27CC15650)
  {
    sub_21905DD44(255, &qword_27CC15648, sub_21897BFEC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15650);
  }

  return result;
}

void sub_21905BEC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C4014C(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      sub_218C4014C(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_21905C768(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_21905BFF0(0, v2, 1, a1);
  }
}

void sub_21905BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_218C4014C(0);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_21905DBD0(v23, v17, sub_218C4014C);
      sub_21905DBD0(v20, v13, sub_218C4014C);
      v24 = sub_219BDBC24();
      sub_21905DCE4(v13, sub_218C4014C);
      sub_21905DCE4(v17, sub_218C4014C);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_21905DC38(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_21905DC38(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21905C21C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_218C81048(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_21905D034((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = sub_2191F6B60((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_21905D034((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_21905C768(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  sub_218C4014C(0);
  v10 = v9;
  v107 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v101 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v96 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v96 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  v109 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v91 = a4;
    }

    else
    {
LABEL_128:
      v91 = sub_218C81048(a4);
    }

    v112 = v91;
    a4 = *(v91 + 2);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *&v91[16 * a4];
        v93 = v91;
        v94 = *&v91[16 * a4 + 24];
        sub_21905D228(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *&v91[16 * a4 + 16], *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v94 < v92)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_122;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        sub_218C80FBC(a4 - 1);
        v91 = v112;
        a4 = *(v112 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v98 = a4;
  v111 = v10;
  while (1)
  {
    v102 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v23 = *v109;
      v24 = *(v107 + 72);
      v5 = *v109 + v24 * (v21 + 1);
      sub_21905DBD0(v5, v19, sub_218C4014C);
      sub_21905DBD0(v23 + v24 * v21, v16, sub_218C4014C);
      LODWORD(v106) = sub_219BDBC24();
      sub_21905DCE4(v16, sub_218C4014C);
      sub_21905DCE4(v19, sub_218C4014C);
      v97 = v21;
      v25 = v21 + 2;
      v108 = v24;
      v26 = v23 + v24 * v25;
      while (v20 != v25)
      {
        sub_21905DBD0(v26, v19, sub_218C4014C);
        sub_21905DBD0(v5, v16, sub_218C4014C);
        v27 = sub_219BDBC24() & 1;
        sub_21905DCE4(v16, sub_218C4014C);
        sub_21905DCE4(v19, sub_218C4014C);
        ++v25;
        v26 += v108;
        v5 += v108;
        if ((v106 & 1) != v27)
        {
          v20 = v25 - 1;
          break;
        }
      }

      v21 = v97;
      a4 = v98;
      if (v106)
      {
        if (v20 < v97)
        {
          goto LABEL_125;
        }

        if (v97 < v20)
        {
          v96 = v6;
          v28 = v108 * (v20 - 1);
          v29 = v20;
          v30 = v20 * v108;
          v106 = v20;
          v31 = v97;
          v32 = v97 * v108;
          do
          {
            if (v31 != --v29)
            {
              v33 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              v5 = v33 + v32;
              sub_21905DC38(v33 + v32, v101);
              if (v32 < v28 || v5 >= v33 + v30)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v32 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21905DC38(v101, v33 + v28);
            }

            ++v31;
            v28 -= v108;
            v30 -= v108;
            v32 += v108;
          }

          while (v31 < v29);
          v6 = v96;
          v21 = v97;
          a4 = v98;
          v20 = v106;
        }
      }
    }

    v34 = v109[1];
    if (v20 < v34)
    {
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_124;
      }

      if (v20 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v34)
        {
          v35 = v109[1];
        }

        else
        {
          v35 = v21 + a4;
        }

        if (v35 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v35)
        {
          break;
        }
      }
    }

    v36 = v20;
    if (v20 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v102;
    }

    else
    {
      v22 = sub_2191F6B60(0, *(v102 + 2) + 1, 1, v102);
    }

    a4 = *(v22 + 2);
    v37 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v37 >> 1)
    {
      v22 = sub_2191F6B60((v37 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v38 = &v22[16 * a4];
    *(v38 + 4) = v21;
    *(v38 + 5) = v36;
    v39 = *v99;
    if (!*v99)
    {
      goto LABEL_133;
    }

    v103 = v36;
    if (a4)
    {
      while (1)
      {
        v40 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v41 = *(v22 + 4);
          v42 = *(v22 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_52:
          if (v44)
          {
            goto LABEL_112;
          }

          v57 = &v22[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_115;
          }

          v63 = &v22[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_119;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v67 = &v22[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_66:
        if (v62)
        {
          goto LABEL_114;
        }

        v70 = &v22[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_117;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v40 - 1;
        if (v40 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_127;
        }

        if (!*v109)
        {
          goto LABEL_130;
        }

        v78 = v22;
        v79 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v40 + 40];
        sub_21905D228(*v109 + *(v107 + 72) * v79, *v109 + *(v107 + 72) * *&v22[16 * v40 + 32], *v109 + *(v107 + 72) * v5, v39);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v79)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_218C81048(v78);
        }

        if (a4 >= *(v78 + 2))
        {
          goto LABEL_109;
        }

        v80 = &v78[16 * a4];
        *(v80 + 4) = v79;
        *(v80 + 5) = v5;
        v112 = v78;
        sub_218C80FBC(v40);
        v22 = v112;
        v5 = *(v112 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v22[16 * v5 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_110;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_111;
      }

      v52 = &v22[16 * v5];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_113;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_116;
      }

      if (v56 >= v48)
      {
        v74 = &v22[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_120;
        }

        if (v43 < v77)
        {
          v40 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v103;
    a4 = v98;
    if (v103 >= v20)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  v81 = v20;
  v82 = v21;
  v83 = *v109;
  v84 = *(v107 + 72);
  v85 = *v109 + v84 * (v20 - 1);
  v86 = -v84;
  v97 = v82;
  v87 = v82 - v20;
  v106 = v81;
  v100 = v84;
  v5 = v83 + v81 * v84;
  v103 = v35;
LABEL_85:
  v104 = v5;
  v105 = v87;
  v108 = v85;
  v88 = v85;
  while (1)
  {
    a4 = sub_218C4014C;
    sub_21905DBD0(v5, v19, sub_218C4014C);
    sub_21905DBD0(v88, v16, sub_218C4014C);
    v89 = sub_219BDBC24();
    sub_21905DCE4(v16, sub_218C4014C);
    sub_21905DCE4(v19, sub_218C4014C);
    if ((v89 & 1) == 0)
    {
LABEL_84:
      v85 = v108 + v100;
      v87 = v105 - 1;
      v36 = v103;
      v5 = v104 + v100;
      if (++v106 != v103)
      {
        goto LABEL_85;
      }

      v6 = v96;
      v21 = v97;
      if (v103 < v97)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v83)
    {
      break;
    }

    a4 = v110;
    sub_21905DC38(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_21905DC38(a4, v88);
    v88 += v86;
    v5 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_21905D034(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_21905D228(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_218C4014C(0);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_21905DBD0(v30, v43, sub_218C4014C);
          v32 = v44;
          sub_21905DBD0(v27, v44, sub_218C4014C);
          v33 = sub_219BDBC24();
          sub_21905DCE4(v32, sub_218C4014C);
          sub_21905DCE4(v31, sub_218C4014C);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_21905DBD0(a2, v43, sub_218C4014C);
        v21 = v44;
        sub_21905DBD0(a4, v44, sub_218C4014C);
        v22 = sub_219BDBC24();
        sub_21905DCE4(v21, sub_218C4014C);
        sub_21905DCE4(v20, sub_218C4014C);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_2189F1984(&v48, &v47, &v46);
}

void *sub_21905D730(uint64_t a1)
{
  v2 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v49 - v10;
  v11 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v14 = *(v7 + 16);
  v13 = v7 + 16;
  v51 = *(v13 + 64);
  v15 = *(v13 + 56);
  v56 = (v51 + 32) & ~v51;
  v57 = v14;
  v16 = a1 + v56;
  v59 = (v13 + 16);
  v50 = xmmword_219C09BA0;
  v54 = v13;
  v55 = v4;
  v52 = v6;
  v53 = v15;
  while (1)
  {
    v57(v60, v16, v6);
    sub_219BE5FC4();
    sub_218EF7D18();
    sub_21905DCE4(v4, type metadata accessor for MagazineGridItemModel);
    v20 = sub_219BF54D4();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_219BF5654();

      v24 = sub_219BF5304();
      v26 = v25;
    }

    else
    {

      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v28 = sub_21870F700(v24, v26);
    v29 = v11[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v11[3] < v31)
    {
      sub_219483AD0(v31, 1);
      v11 = v61;
      v33 = sub_21870F700(v24, v26);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_24;
      }

      v28 = v33;
    }

    if (v32)
    {

      v35 = v6;
      v36 = v11[7];
      v37 = *v59;
      (*v59)(v58, v60, v35);
      v38 = *(v36 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v36 + 8 * v28) = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_2191F9A6C(0, v38[2] + 1, 1, v38);
        *(v36 + 8 * v28) = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_2191F9A6C((v40 > 1), v41 + 1, 1, v38);
        *(v36 + 8 * v28) = v38;
      }

      v17 = v53;
      v38[2] = v41 + 1;
      v18 = v38 + v56 + v41 * v17;
      v19 = v17;
      v6 = v52;
      v37(v18, v58, v52);
    }

    else
    {
      sub_21905DD44(0, &unk_27CC0FA90, sub_21897BFEC, MEMORY[0x277D84560]);
      v42 = v56;
      v43 = swift_allocObject();
      *(v43 + 16) = v50;
      (*v59)((v43 + v42), v60, v6);
      v11[(v28 >> 6) + 8] |= 1 << v28;
      v44 = (v11[6] + 16 * v28);
      *v44 = v24;
      v44[1] = v26;
      *(v11[7] + 8 * v28) = v43;
      v45 = v11[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_23;
      }

      v11[2] = v47;
      v19 = v53;
    }

    v4 = v55;
    v16 += v19;
    if (!--v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_21905DBD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21905DC38(uint64_t a1, uint64_t a2)
{
  sub_218C4014C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21905DC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21905DCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21905DD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21905DDA8()
{
  result = qword_27CC15660;
  if (!qword_27CC15660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15660);
  }

  return result;
}

uint64_t type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs(uint64_t a1)
{
  result = qword_280E9B6F0;
  if (!qword_280E9B6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21905DE88(uint64_t a1)
{
  sub_2186E4FBC(319);
  if (v1 <= 0x3F)
  {
    sub_218D1D174(319);
    if (v2 <= 0x3F)
    {
      sub_218CC4F9C();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2186F95C4();
          if (v5 <= 0x3F)
          {
            sub_218CC4F34(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21905DF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21905DFB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_219BEFD94();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs(0);
  MEMORY[0x28223BE20](v6);
  v50 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21905F1D0(0, &qword_280E8C870, MEMORY[0x277D844C8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21905F118();
  v15 = v52;
  sub_219BF7B34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v5;
  v43 = 0;
  v44 = v12;
  v45 = a1;
  v38 = v6;
  sub_219BEF814();
  LOBYTE(v59) = 0;
  sub_21905DF6C(&qword_280E912E8, MEMORY[0x277D32720], MEMORY[0x277D32738]);
  v17 = v49;
  sub_219BF7674();
  sub_218D1D174(0);
  LOBYTE(v58) = 1;
  v18 = MEMORY[0x277D32620];
  sub_21905DF6C(&qword_280E91468, sub_218D1D174, MEMORY[0x277D32620]);
  sub_219BF7674();
  v19 = v59;
  sub_218CC4F9C();
  v21 = v20;
  LOBYTE(v57) = 2;
  sub_21905DF6C(&qword_280E91798, sub_218CC4F9C, MEMORY[0x277D32448]);
  v36[1] = v21;
  sub_219BF7674();
  v52 = v58;
  sub_2186ECA28();
  v23 = v22;
  LOBYTE(v56) = 3;
  sub_21905DF6C(&qword_280E913D8, sub_2186ECA28, v18);
  v36[2] = v23;
  sub_219BF7674();
  v42 = v57;
  sub_2186F95C4();
  LOBYTE(v55) = 4;
  sub_21905DF6C(&qword_280E913F8, sub_2186F95C4, v18);
  sub_219BF7674();
  v46 = v56;
  LOBYTE(v54) = 5;
  sub_219BF7674();
  v39 = v55;
  sub_218CC4F34(0);
  LOBYTE(v53) = 6;
  sub_218CC84B8();
  sub_219BF7674();
  v41 = v54;
  v24 = v50;
  sub_2189B7614(v17, v50);
  v40 = v14;
  if (v19)
  {
    v25 = v19;
  }

  else
  {
    (*(v47 + 104))(v37, *MEMORY[0x277D32A90], v48);
    swift_allocObject();
    v25 = sub_219BEF534();
  }

  v26 = v38;
  *(v24 + v38[5]) = v25;
  v48 = v11;
  v27 = v52;
  v28 = v42;
  if (v52)
  {

    v29 = v27;
  }

  else
  {
    swift_allocObject();

    v29 = sub_219BEEE04();
  }

  *(v24 + v26[6]) = v29;
  if (v28)
  {

    v30 = v28;
  }

  else
  {
    v53 = 0;
    swift_allocObject();

    v30 = sub_219BEF534();
  }

  *(v24 + v26[7]) = v30;
  v31 = v44;
  v32 = v46;
  if (v46)
  {

    v33 = v32;
  }

  else
  {
    LOBYTE(v53) = 0;
    swift_allocObject();

    v33 = sub_219BEF534();
  }

  *(v24 + v26[8]) = v33;
  v34 = v39;
  if (v39)
  {
  }

  else
  {
    LOBYTE(v53) = 0;
    swift_allocObject();

    v34 = sub_219BEF534();
  }

  *(v24 + v26[9]) = v34;
  v35 = v41;
  if (!v41)
  {
    v35 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_21905F0B8(v17, sub_2186E4FBC);
  (*(v31 + 8))(v40, v48);
  *(v24 + v26[10]) = v35;
  sub_21905F16C(v24, v51);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_21905E714(void *a1)
{
  v3 = v1;
  sub_21905F1D0(0, &qword_280E8C260, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21905F118();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BEF814();
  sub_21905DF6C(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
  sub_219BF77E4();
  if (!v2)
  {
    v10 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218D1D174(0);
    sub_21905DF6C(&qword_280E91470, sub_218D1D174, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_218CC4F9C();
    sub_21905DF6C(&qword_280E917A0, sub_218CC4F9C, MEMORY[0x277D32440]);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186ECA28();
    sub_21905DF6C(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186F95C4();
    sub_21905DF6C(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_218CC4F34(0);
    sub_218CC6A10();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21905EB38()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000013;
    if (v1 != 1)
    {
      v5 = 0x546465726F6E6769;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6972657473756C63;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x796E41776F6C6C61;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21905EC40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21905F34C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21905EC68(uint64_t a1)
{
  v2 = sub_21905F118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21905ECA4(uint64_t a1)
{
  v2 = sub_21905F118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21905ED14(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC85CC(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_2189B7614(a1, v13);
  sub_2189B7614(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_2189B7614(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21905DF6C(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
      v17 = sub_219BF53A4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_21905F0B8(v13, sub_2186E4FBC);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_14:
      v20 = 0;
      return v20 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21905F0B8(v13, sub_218CC85CC);
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21905F0B8(v13, sub_2186E4FBC);
LABEL_8:
  sub_218D1D174(0);
  v19 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs(0);
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_218CC4F9C();
  if ((sub_219BEEDE4() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEF504() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21931A484(*(a1 + *(v19 + 40)), *(a2 + *(v19 + 40)));
  return v20 & 1;
}

uint64_t sub_21905F0B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21905F118()
{
  result = qword_280E9B720[0];
  if (!qword_280E9B720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9B720);
  }

  return result;
}

uint64_t sub_21905F16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21905F1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21905F118();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupChannelRecipeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21905F248()
{
  result = qword_27CC15668;
  if (!qword_27CC15668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15668);
  }

  return result;
}

unint64_t sub_21905F2A0()
{
  result = qword_280E9B710;
  if (!qword_280E9B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B710);
  }

  return result;
}

unint64_t sub_21905F2F8()
{
  result = qword_280E9B718;
  if (!qword_280E9B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B718);
  }

  return result;
}

uint64_t sub_21905F34C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CD76F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD6960 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796E41776F6C6C61 && a2 == 0xEF6C656E6E616843 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_21905F74C()
{
  sub_21905F7D8(&qword_280EE25B8, &unk_219C560E4);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21905F7D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SeparatorViewContainerView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21905F818()
{
  v28 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v1 = (&v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70(0);
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54DC8(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_218954350(0);
  sub_219BE6974();
  v30 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v12;
  (*(v12 + 16))(v14, v17, v11);
  sub_2186CC1DC(&qword_280EE7570, sub_21898BEA4, MEMORY[0x277D6CC40]);
  sub_219BF56A4();
  v18 = *(v7 + 44);
  sub_2186CC1DC(&qword_280EE7568, sub_21898BEA4, MEMORY[0x277D6CC48]);
  sub_219BF5E84();
  v19 = MEMORY[0x277D84F90];
  if (*&v9[v18] != v29[0])
  {
    v20 = (v27 + 16);
    v21 = (v27 + 8);
    do
    {
      v27 = v19;
      while (1)
      {
        v22 = sub_219BF5EC4();
        (*v20)(v5);
        v22(v29, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v21)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          break;
        }

        sub_2190624E0(v1, type metadata accessor for TagFeedModel);
        sub_219BF5E84();
        if (*&v9[v18] == v29[0])
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      v27 = *v1;
      MEMORY[0x21CECC690]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v30;
      sub_219BF5E84();
      v19 = v27;
    }

    while (*&v9[v18] != v29[0]);
  }

LABEL_10:
  sub_2190624E0(v9, sub_218F54DC8);
  (*(v26 + 8))(v25, v11);
  return v19;
}

uint64_t sub_21905FC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v29 = sub_219BDBD64();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21898BF70(0);
  v27 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BEA4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_2186CC1DC(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
  sub_2186CC1DC(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
  sub_219BE2444();
  sub_2186F0CC0(0);
  v18 = *(v17 + 48);
  sub_219BDBD54();
  v19 = sub_219BDBD44();
  v21 = v20;
  (*(v2 + 8))(v4, v29);
  *v6 = v19;
  v6[1] = v21;
  sub_219062540(v32, v6 + v18, type metadata accessor for TagFeedGapLocation);
  swift_storeEnumTagMultiPayload();
  sub_2186CC1DC(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v30 + 8))(v9, v27);
  type metadata accessor for TagFeedSectionGapDescriptor(0);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v34 = v22;
  (*(v12 + 16))(v31, v16, v11);
  sub_2186F7410();
  sub_219BE6924();
  return (*(v12 + 8))(v16, v11);
}

char *sub_2190600D0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v198 = a2;
  v218 = a1;
  v197 = a3;
  sub_219062430(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v5 - 8);
  v196 = &v173 - v6;
  sub_219062430(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v7 - 8);
  v195 = &v173 - v8;
  v174 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v174);
  v175 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE16E4();
  MEMORY[0x28223BE20](v10 - 8);
  v222 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_219BDF584();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v221 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BE1444();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v15 = v14;
  v16 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v205 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_219BDD374();
  v216 = *(v245 - 1);
  MEMORY[0x28223BE20](v245);
  v244 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_219BDEE04();
  v215 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_219BF04A4();
  v243 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v213 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C(0);
  v229 = v21;
  v232 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v228 = &v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_219BF0B74();
  v242 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v211 = &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v227 = v24;
  v241 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v226 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_219BF0F34();
  v230 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v209 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54(0);
  v225 = v27;
  v220 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v208 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_219BF07A4();
  v219 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240(0);
  v224 = v30;
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v223 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v249);
  v235 = &v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v173 - v35;
  sub_21898BF70(0);
  v38 = v37;
  v203 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v247 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v238 = &v173 - v41;
  sub_21898C06C(0);
  v43 = v42;
  MEMORY[0x28223BE20](v42);
  v239 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v173 - v47;
  v49 = MEMORY[0x277D84F90];
  v253 = MEMORY[0x277D84F90];
  v254 = MEMORY[0x277D84F90];
  v50 = *(v16 + 16);
  v204 = v16 + 16;
  v201 = v50;
  (v50)(&v173 - v47, v4, v15, v46);
  v202 = v43;
  v51 = *(v43 + 36);
  v52 = sub_2186CC1DC(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  sub_219BF5DF4();
  sub_219BF5E84();
  v53 = *(v51 + v48);
  v234 = v49;
  v233 = v4;
  v231 = v15;
  v248 = v38;
  v240 = v52;
  if (v53 != v252)
  {
    v237 = (v203 + 16);
    v236 = (v203 + 8);
    v192 = (v241 + 4);
    v191 = (v242 + 8);
    v190 = (v241 + 1);
    v189 = (v31 + 32);
    v188 = v219 + 1;
    v187 = (v31 + 8);
    v219 = (v220 + 8);
    v177 = v215 + 16;
    v176 = (v215 + 8);
    v241 = (v216 + 8);
    v242 = v216 + 16;
    v186 = (v232 + 32);
    v185 = (v243 + 8);
    v184 = (v232 + 8);
    v183 = (v220 + 32);
    v182 = (v230 + 8);
    v230 = v36;
    v49 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v67 = v36;
    v220 = v48;
    v246 = v51;
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v238;
      (*v237)(v238);
      v70(&v252, 0);
      v69 = v246;
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v236)(v71, v38);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
          v110 = *(v109 + 48);
          v111 = sub_219BF1584();
          v112 = v67 + v110;
          v69 = v246;
          (*(*(v111 - 8) + 8))(v112, v111);
          v72 = type metadata accessor for TagFeedGapLocation;
          goto LABEL_16;
        case 2u:
          v95 = v67;
          v96 = v208;
          v97 = v225;
          (*v183)(v208, v95, v225);
          v98 = v209;
          sub_219BF07D4();
          sub_219BF0F14();
          v99 = (*v182)(v98, v210);
          MEMORY[0x21CECC690](v99);
          if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          (*v219)(v96, v97);
          v67 = v230;
          v48 = v220;
          goto LABEL_12;
        case 3u:
          (*v186)(v228, v67, v229);
          v100 = v213;
          sub_219BF07D4();
          v101 = sub_219BF0404();
          (*v185)(v100, v214);
          v102 = [v101 identifier];
          swift_unknownObjectRelease();
          v103 = sub_219BF5414();
          v105 = v104;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_218840D24(0, *(v49 + 2) + 1, 1, v49);
          }

          v107 = *(v49 + 2);
          v106 = *(v49 + 3);
          if (v107 >= v106 >> 1)
          {
            v49 = sub_218840D24((v106 > 1), v107 + 1, 1, v49);
          }

          (*v184)(v228, v229);
          *(v49 + 2) = v107 + 1;
          v68 = &v49[16 * v107];
          goto LABEL_11;
        case 4u:
        case 6u:
        case 8u:
        case 9u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
          v72 = type metadata accessor for TagFeedModel;
LABEL_16:
          v73 = v72;
          v74 = v67;
          goto LABEL_17;
        case 5u:
          v85 = *v67;
          v86 = sub_219BE5B44();
          v87 = *(v86 + 16);
          v232 = v49;
          v217 = v85;
          if (v87)
          {
            v252 = MEMORY[0x277D84F90];
            sub_219BF73F4();
            v88 = (*(v215 + 80) + 32) & ~*(v215 + 80);
            v181 = v86;
            v89 = v86 + v88;
            v243 = *(v215 + 72);
            v90 = *(v215 + 16);
            v91 = v193;
            v92 = v194;
            v93 = v176;
            do
            {
              v90(v91, v89, v92);
              sub_219BDEDF4();
              (*v93)(v91, v92);
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
              v89 += v243;
              --v87;
            }

            while (v87);

            v94 = v252;
            v49 = v232;
            v67 = v230;
            v69 = v246;
          }

          else
          {

            v94 = MEMORY[0x277D84F90];
          }

          sub_2191ED6C8(v94);
          v122 = sub_219BE5B34();
          v123 = *(v122 + 16);
          if (v123)
          {
            v252 = MEMORY[0x277D84F90];
            sub_21870B65C(0, v123, 0);
            v124 = v252;
            v125 = (*(v216 + 80) + 32) & ~*(v216 + 80);
            v181 = v122;
            v126 = v122 + v125;
            v243 = *(v216 + 72);
            v127 = *(v216 + 16);
            do
            {
              v129 = v244;
              v128 = v245;
              v127(v244, v126, v245);
              v130 = sub_219BDD364();
              v131 = [v130 identifier];
              v132 = sub_219BF5414();
              v134 = v133;

              (*v241)(v129, v128);
              v252 = v124;
              v136 = *(v124 + 16);
              v135 = *(v124 + 24);
              if (v136 >= v135 >> 1)
              {
                sub_21870B65C((v135 > 1), v136 + 1, 1);
                v124 = v252;
              }

              *(v124 + 16) = v136 + 1;
              v137 = v124 + 16 * v136;
              *(v137 + 32) = v132;
              *(v137 + 40) = v134;
              v126 += v243;
              --v123;
            }

            while (v123);

            v49 = v232;
            v67 = v230;
            v69 = v246;
          }

          else
          {

            v124 = MEMORY[0x277D84F90];
          }

          sub_2191ED3E8(v124);

          v15 = v231;
          v38 = v248;
          v48 = v220;
          break;
        case 7u:
          sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
          (*v219)(v67 + *(v113 + 48), v225);
          sub_2186EAD48(0);
          (*(*(v114 - 8) + 8))(v67, v114);
          break;
        case 0xAu:
          (*v189)(v223, v67, v224);
          v115 = v206;
          sub_219BF07D4();
          v116 = sub_219BF06B4();
          (*v188)(v115, v207);
          v117 = [v116 identifier];

          v103 = sub_219BF5414();
          v105 = v118;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v234 = sub_218840D24(0, *(v234 + 2) + 1, 1, v234);
          }

          v120 = *(v234 + 2);
          v119 = *(v234 + 3);
          if (v120 >= v119 >> 1)
          {
            v234 = sub_218840D24((v119 > 1), v120 + 1, 1, v234);
          }

          (*v187)(v223, v224);
          v121 = v234;
          *(v234 + 2) = v120 + 1;
          v68 = &v121[16 * v120];
LABEL_11:
          *(v68 + 4) = v103;
          *(v68 + 5) = v105;
          goto LABEL_12;
        case 0xEu:
          (*v192)(v226, v67, v227);
          v75 = v211;
          sub_219BF07D4();
          v76 = sub_219BF0B44();
          (*v191)(v75, v212);
          v77 = [v76 identifier];

          v78 = sub_219BF5414();
          v80 = v79;

          v81 = v253;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_218840D24(0, *(v81 + 2) + 1, 1, v81);
          }

          v83 = *(v81 + 2);
          v82 = *(v81 + 3);
          if (v83 >= v82 >> 1)
          {
            v81 = sub_218840D24((v82 > 1), v83 + 1, 1, v81);
          }

          (*v190)(v226, v227);
          *(v81 + 2) = v83 + 1;
          v84 = &v81[16 * v83];
          *(v84 + 4) = v78;
          *(v84 + 5) = v80;
          v253 = v81;
          v38 = v248;
LABEL_12:
          v69 = v246;
          break;
        default:

          sub_2186F0CC0(0);
          v73 = type metadata accessor for TagFeedGapLocation;
          v74 = v67 + *(v108 + 48);
LABEL_17:
          sub_2190624E0(v74, v73);
          break;
      }

      sub_219BF5E84();
    }

    while (*(v69 + v48) != v252);
  }

  v232 = v49;
  sub_2190624E0(v48, sub_21898C06C);
  v201(v205, v233, v15);
  sub_2186CC1DC(&unk_280EE5860, sub_218954350, MEMORY[0x277D6D728]);
  v54 = v239;
  sub_219BF56A4();
  v55 = *(v202 + 36);
  sub_219BF5E84();
  if (*(v54 + v55) == v252)
  {
    v56 = 0;
LABEL_5:
    sub_2190624E0(v54, sub_21898C06C);
    v57 = sub_219061F64();
    v58 = v218;
    if ((v198 & 1) != 0 && (sub_219BE6934(), v59 = sub_21943FD74(), , v59))
    {
      v60 = v178;
      sub_219BE1414();
      v61 = sub_219BE1434();
      v248 = v62;
      v249 = v61;
      swift_unknownObjectRelease();
      (*(v179 + 8))(v60, v180);
    }

    else
    {
      sub_219BE6934();
      v63 = sub_21943FD74();

      if (v63)
      {
        v64 = [v63 identifier];
        swift_unknownObjectRelease();
        v65 = sub_219BF5414();
        v248 = v66;
        v249 = v65;
      }

      else
      {
        v248 = 0;
        v249 = 0;
      }
    }

    (*(v199 + 104))(v221, *MEMORY[0x277D2DB58], v200);
    sub_219BE6934();
    sub_2194420E8(v252, v222);

    v139 = sub_219BE6944();
    if (v56 > 0x7FFFFFFF)
    {
      goto LABEL_77;
    }

    if (v58 < 0xFFFFFFFF80000000 || v56 < 0xFFFFFFFF80000000)
    {
      goto LABEL_78;
    }

    if (v58 > 0x7FFFFFFF)
    {
      goto LABEL_79;
    }

    v245 = v148;
    v15 = v254;
    if (v254 >> 62)
    {
      goto LABEL_80;
    }

    v149 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v246 = v139;
    v247 = v56;
    if (!v149)
    {
      goto LABEL_81;
    }

    goto LABEL_65;
  }

  v56 = 0;
  v245 = (v203 + 8);
  v246 = (v203 + 16);
  v138 = v235;
  while (1)
  {
    v141 = sub_219BF5EC4();
    v142 = v247;
    v143 = v248;
    (*v246)(v247);
    v141(&v252, 0);
    v57 = v15;
    sub_219BF5E94();
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    (*v245)(v142, v143);
    v139 = sub_2190624E0(v138, type metadata accessor for TagFeedModel);
    if (__OFADD__(v56++, 1))
    {
      goto LABEL_75;
    }

LABEL_53:
    v54 = v239;
    sub_219BF5E84();
    if (*(v54 + v55) == v252)
    {
      goto LABEL_5;
    }
  }

  v144 = *(sub_219BE5B44() + 16);

  v145 = v56 + v144;
  if (!__OFADD__(v56, v144))
  {
    v146 = sub_219BE5B34();

    v147 = *(v146 + 16);

    v139 = (*v245)(v247, v248);
    v56 = v145 + v147;
    if (__OFADD__(v145, v147))
    {
      goto LABEL_76;
    }

    v138 = v235;
    goto LABEL_53;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  v160 = v139;
  v149 = sub_219BF7214();
  v246 = v160;
  v247 = v56;
  if (!v149)
  {
LABEL_81:

    sub_219BE6934();
    if (((v251 >> 58) & 0x3C | (v251 >> 1) & 3) == 0xA)
    {
      v170 = swift_projectBox();
      v171 = v175;
      sub_219062540(v170, v175, type metadata accessor for CuratedTagFeedGroup);

      sub_2190624E0(v171, type metadata accessor for CuratedTagFeedGroup);
    }

    sub_219BE6934();
    v161 = (v250 >> 58) & 0x3C | (v250 >> 1) & 3;

    v162 = **(&unk_278242980 + v161);
    v163 = sub_219BE0674();
    v164 = *(v163 - 8);
    v165 = v195;
    (*(v164 + 104))(v195, v162, v163);
    (*(v164 + 56))(v165, 0, 1, v163);
    v166 = sub_219BDF474();
    v167 = v196;
    (*(*(v166 - 8) + 56))(v196, 1, 1, v166);
    v172 = v167;
    v168 = v197;
    sub_219BE15E4();
    v169 = sub_219BE16D4();
    return (*(*(v169 - 8) + 56))(v168, 0, 1, v169);
  }

LABEL_65:
  v251 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v149 & ~(v149 >> 63), 0);
  if ((v149 & 0x8000000000000000) == 0)
  {
    v244 = v57;
    v151 = 0;
    v152 = v251;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v151, v15);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v153 = [swift_unknownObjectRetain() articleID];
      v154 = sub_219BF5414();
      v156 = v155;
      swift_unknownObjectRelease_n();

      v251 = v152;
      v158 = *(v152 + 16);
      v157 = *(v152 + 24);
      if (v158 >= v157 >> 1)
      {
        sub_21870B65C((v157 > 1), v158 + 1, 1);
        v152 = v251;
      }

      ++v151;
      *(v152 + 16) = v158 + 1;
      v159 = v152 + 16 * v158;
      *(v159 + 32) = v154;
      *(v159 + 40) = v156;
    }

    while (v149 != v151);
    goto LABEL_81;
  }

  __break(1u);
  return result;
}

char *sub_219061F64()
{
  v0 = sub_219BF2DA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219062430(0, qword_280EDE900, type metadata accessor for TagFeedGroup);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_219062430(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_219BF1904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  sub_219BE6934();
  sub_21943EC40(v37, v6);

  v13 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_219062484(v6, qword_280EDE900, type metadata accessor for TagFeedGroup);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_219062484(v9, &qword_280E90840, MEMORY[0x277D33470]);
    return 0;
  }

  sub_2195A5C88(v9);
  sub_2190624E0(v6, type metadata accessor for TagFeedGroup);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v33, v9, v10);
  v15 = sub_219BF18F4();
  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = v11;
    v32 = v10;
    v18 = *(v1 + 16);
    v17 = v1 + 16;
    v19 = *(v17 + 64);
    v30 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v35 = *(v17 + 56);
    v36 = v18;
    v21 = (v17 - 8);
    v14 = MEMORY[0x277D84F90];
    v34 = v17;
    v18(v3, v20, v0);
    while (1)
    {
      v22 = *(sub_219BF2D94() + 16);

      if (v22)
      {
        sub_219BF2D84();
        v23 = sub_219BF3054();
        v25 = v24;

        (*v21)(v3, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_218840D24(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v14 = sub_218840D24((v26 > 1), v27 + 1, 1, v14);
        }

        *(v14 + 2) = v27 + 1;
        v28 = &v14[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
      }

      else
      {
        (*v21)(v3, v0);
      }

      v20 += v35;
      if (!--v16)
      {
        break;
      }

      v36(v3, v20, v0);
    }

    v11 = v31;
    v10 = v32;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  (*(v11 + 8))(v33, v10);
  return v14;
}

void sub_219062430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219062484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219062430(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190624E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219062540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190625A8()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2128](ObjectType);
}

uint64_t sub_2190625E4()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2118](ObjectType);
}

uint64_t sub_219062620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2120](a1, ObjectType, a3);
}

void sub_219062698(uint64_t a1, char a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      sub_219BF64F4();
    }

    else
    {
      sub_218725F94();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C146A0;
      *(v8 + 32) = [v5 tabBar];
      sub_219BF64F4();
    }

    sub_219BF6504();
  }

  else
  {
    v6 = sub_219BE3BF4();
    sub_219062C98();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D318C8], v6);
    swift_willThrow();
  }
}

void sub_2190627C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {
      sub_219BF64E4();
    }
  }
}

uint64_t sub_219062870()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 8);
  }

  v2 = Strong;
  v3 = [Strong traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {

    goto LABEL_12;
  }

  v5 = v0;
  v6 = v2;
  v7 = sub_2187DAD0C();

  if (!v7 || (type metadata accessor for FollowingViewController(0), sub_219BF6584(), v7, !v15))
  {
LABEL_11:

    v0 = v5;
    goto LABEL_12;
  }

  v8 = v15;
  v9 = sub_219BF65B4();

  v10 = [v9 searchController];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = [v10 isActive];

  v0 = v5;
  if (v11)
  {
    v12 = 1;
    v13 = 1;
    return v12 | (v13 << 8);
  }

LABEL_12:
  if (*(v0 + 32))
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(v0 + 32) ^ 1;
  return v12 | (v13 << 8);
}

uint64_t sub_2190629CC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_219062A14()
{
  sub_219062CF0(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE3874();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D31710], v4);
  v7 = *MEMORY[0x277D317C0];
  v8 = sub_219BE3994();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  sub_219BE3914();
  swift_allocObject();
  return sub_219BE3904();
}

unint64_t sub_219062C98()
{
  result = qword_27CC15678;
  if (!qword_27CC15678)
  {
    sub_219BE3BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15678);
  }

  return result;
}

void sub_219062CF0(uint64_t a1)
{
  if (!qword_280EE6590)
  {
    sub_219BE3994();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6590);
    }
  }
}

uint64_t sub_219062D48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -62;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 62;
  return (v6 ^ v3) & 1;
}

uint64_t sub_219062F20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAD04();
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190630E8()
{
  v1 = v0;
  sub_2187335C8(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEAF54();
  sub_219BEACB4();
  v11 = sub_219BEA954();

  if ((v11 & 1) == 0)
  {
LABEL_5:
    v14 = 1;
    return v14 & 1;
  }

  sub_219BDE124();
  sub_219BE20E4();

  sub_219BDDB74();
  sub_219067198(v10, sub_21883F194);
  v12 = type metadata accessor for AudioFeedTrack(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = 1;
  v15 = v13(v7, 1, v12);
  sub_219067198(v7, sub_2187335C8);
  if (v15 == 1)
  {
    sub_219BE20E4();
    if (v13(v4, 1, v12) != 1)
    {
      v17 = *v4;
      swift_unknownObjectRetain();
      sub_219067198(v4, type metadata accessor for AudioFeedTrack);
      v18 = [v17 identifier];
      swift_unknownObjectRelease();
      v19 = sub_219BF5414();
      v21 = v20;

      v22 = [*(v1 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineArticleManager) listenableArticleIDs];
      v23 = sub_219BF5D44();

      v14 = sub_2188537B8(v19, v21, v23);

      return v14 & 1;
    }

    sub_219067198(v4, sub_2187335C8);
    goto LABEL_5;
  }

  return v14 & 1;
}

uint64_t sub_2190633E4@<X0>(uint64_t a1@<X8>)
{
  sub_21883F194(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDE124();
  sub_219BE20E4();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218A6E5D0(0);
    v7 = *(v9 + 64);
    v8 = MEMORY[0x277D324A8];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218A6E554(0);
    v7 = *(v6 + 64);
    v8 = MEMORY[0x277D32498];
LABEL_5:
    v10 = *v8;
    v11 = sub_219BEEF64();
    (*(*(v11 - 8) + 104))(a1, v10, v11);
    v12 = sub_219BDD9E4();
    (*(*(v12 - 8) + 8))(&v4[v7], v12);
    return sub_219067198(v4, type metadata accessor for AudioFeedTrack);
  }

  v14 = *MEMORY[0x277D324A0];
  v15 = sub_219BEEF64();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

void sub_219063628(char *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v2 = a1;
    sub_219BEAD04();
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    sub_219BE6FD4();

    swift_unknownObjectRelease();
  }
}

void sub_219063754(void *a1, uint64_t a2)
{
  v3 = v2;
  v405 = a2;
  v407 = a1;
  v403 = sub_219BF2624();
  v396 = *(v403 - 8);
  MEMORY[0x28223BE20](v403);
  v381 = &v328 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = sub_219BF1D74();
  v380 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v378 = &v328 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_219BF1584();
  v377 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v376 = &v328 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187335C8(0);
  v344 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v346 = &v328 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v345 = &v328 - v10;
  sub_21883F194(0);
  v351 = v11;
  MEMORY[0x28223BE20](v11);
  v352 = &v328 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v383 = &v328 - v14;
  sub_21906711C(0);
  MEMORY[0x28223BE20](v15 - 8);
  v363 = &v328 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v375 = &v328 - v18;
  v354 = type metadata accessor for AudioFeedTrack(0);
  v357 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v328 = &v328 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v353 = &v328 - v21;
  MEMORY[0x28223BE20](v22);
  v355 = &v328 - v23;
  MEMORY[0x28223BE20](v24);
  v356 = (&v328 - v25);
  MEMORY[0x28223BE20](v26);
  v367 = (&v328 - v27);
  v28 = sub_219BDF874();
  v394 = *(v28 - 8);
  v395 = v28;
  MEMORY[0x28223BE20](v28);
  v342 = &v328 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v343 = &v328 - v31;
  MEMORY[0x28223BE20](v32);
  v374 = &v328 - v33;
  MEMORY[0x28223BE20](v34);
  v391 = &v328 - v35;
  v36 = sub_219BF1C74();
  v392 = *(v36 - 8);
  v393 = v36;
  MEMORY[0x28223BE20](v36);
  v340 = &v328 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v341 = &v328 - v39;
  MEMORY[0x28223BE20](v40);
  v372 = &v328 - v41;
  MEMORY[0x28223BE20](v42);
  v373 = &v328 - v43;
  MEMORY[0x28223BE20](v44);
  v389 = &v328 - v45;
  MEMORY[0x28223BE20](v46);
  v390 = &v328 - v47;
  v48 = sub_219BDF864();
  v401 = *(v48 - 8);
  v402 = v48;
  MEMORY[0x28223BE20](v48);
  v339 = &v328 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v350 = &v328 - v51;
  MEMORY[0x28223BE20](v52);
  v338 = &v328 - v53;
  MEMORY[0x28223BE20](v54);
  v362 = &v328 - v55;
  MEMORY[0x28223BE20](v56);
  v366 = &v328 - v57;
  MEMORY[0x28223BE20](v58);
  v371 = &v328 - v59;
  MEMORY[0x28223BE20](v60);
  v388 = &v328 - v61;
  MEMORY[0x28223BE20](v62);
  v400 = (&v328 - v63);
  v406 = sub_219BF2A04();
  v404 = *(v406 - 8);
  MEMORY[0x28223BE20](v406);
  v334 = &v328 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v337 = &v328 - v66;
  MEMORY[0x28223BE20](v67);
  v333 = &v328 - v68;
  MEMORY[0x28223BE20](v69);
  v336 = &v328 - v70;
  MEMORY[0x28223BE20](v71);
  v332 = &v328 - v72;
  MEMORY[0x28223BE20](v73);
  v335 = &v328 - v74;
  MEMORY[0x28223BE20](v75);
  v360 = &v328 - v76;
  MEMORY[0x28223BE20](v77);
  v361 = &v328 - v78;
  MEMORY[0x28223BE20](v79);
  v364 = &v328 - v80;
  MEMORY[0x28223BE20](v81);
  v365 = &v328 - v82;
  MEMORY[0x28223BE20](v83);
  v368 = &v328 - v84;
  MEMORY[0x28223BE20](v85);
  v370 = &v328 - v86;
  MEMORY[0x28223BE20](v87);
  v385 = &v328 - v88;
  MEMORY[0x28223BE20](v89);
  v386 = &v328 - v90;
  MEMORY[0x28223BE20](v91);
  v93 = &v328 - v92;
  MEMORY[0x28223BE20](v94);
  v96 = &v328 - v95;
  v399 = sub_219BE0774();
  v97 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v348 = &v328 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v349 = &v328 - v100;
  MEMORY[0x28223BE20](v101);
  v347 = &v328 - v102;
  MEMORY[0x28223BE20](v103);
  v359 = &v328 - v104;
  MEMORY[0x28223BE20](v105);
  v369 = &v328 - v106;
  MEMORY[0x28223BE20](v107);
  v387 = &v328 - v108;
  MEMORY[0x28223BE20](v109);
  v384 = &v328 - v110;
  MEMORY[0x28223BE20](v111);
  v113 = &v328 - v112;
  v114 = sub_219BF1324();
  v397 = *(v114 - 8);
  v398 = v114;
  MEMORY[0x28223BE20](v114);
  v331 = &v328 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v330 = &v328 - v117;
  MEMORY[0x28223BE20](v118);
  v329 = &v328 - v119;
  MEMORY[0x28223BE20](v120);
  v358 = &v328 - v121;
  MEMORY[0x28223BE20](v122);
  v124 = &v328 - v123;
  MEMORY[0x28223BE20](v125);
  v127 = &v328 - v126;
  MEMORY[0x28223BE20](v128);
  v130 = &v328 - v129;
  MEMORY[0x28223BE20](v131);
  v133 = &v328 - v132;
  if (sub_219BF1B84() & 1) != 0 || (sub_2190630E8())
  {
    v396 = v97;
    v403 = v2;
    sub_219BEAF54();
    sub_219BEACB4();
    v134 = sub_219BEA954();

    if (v134)
    {
      v135 = *(v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v407 = *(v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v135);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v113);
      (*(v397 + 8))(v133, v398);
      sub_219BF25A4();
      v136 = v404;
      v137 = v406;
      (*(v404 + 16))(v93, v96, v406);
      v138 = (*(v136 + 88))(v93, v137);
      if (v138 == *MEMORY[0x277D33A68])
      {
        v139 = MEMORY[0x277D2DDB0];
        v140 = v402;
LABEL_21:
        v179 = v407;
        (*(v136 + 8))(v96, v406);
        v180 = v401;
        (*(v401 + 104))(v400, *v139, v140);
        v181 = v390;
        sub_219BF2584();
        v183 = v392;
        v182 = v393;
        v184 = v389;
        (*(v392 + 16))(v389, v181, v393);
        v185 = (*(v183 + 88))(v184, v182);
        if (v185 == *MEMORY[0x277D33570])
        {
          v186 = MEMORY[0x277D2DDC8];
LABEL_25:
          (*(v183 + 8))(v181, v182);
          v188 = v394;
          v187 = v395;
          v189 = v391;
          (*(v394 + 104))(v391, *v186, v395);
          v190 = v179;
          v191 = v179[3];
          v192 = v400;
          v191(v113, v400, v189, v135, v190);
          (*(v188 + 8))(v189, v187);
          (*(v180 + 8))(v192, v140);
          (*(v396 + 8))(v113, v399);
          sub_219BDE164();
          return;
        }

        if (v185 == *MEMORY[0x277D33568])
        {
          v186 = MEMORY[0x277D2DDD8];
          goto LABEL_25;
        }

        goto LABEL_109;
      }

      v140 = v402;
      if (v138 == *MEMORY[0x277D33A78])
      {
        v139 = MEMORY[0x277D2DDC0];
        goto LABEL_21;
      }

      if (v138 == *MEMORY[0x277D33A70])
      {
        v139 = MEMORY[0x277D2DDB8];
        goto LABEL_21;
      }

LABEL_109:
      sub_219BF7514();
      __break(1u);
      return;
    }

    sub_219BEAC94();
    v141 = sub_219BEA954();

    v142 = v403;
    if (v141)
    {
      v143 = *(v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v144 = *(v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v403 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v143);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      v145 = v384;
      sub_218C8FF70(v384);
      (*(v397 + 8))(v130, v398);
      v146 = v386;
      sub_219BF25A4();
      v147 = v404;
      v148 = v385;
      v149 = v406;
      (*(v404 + 16))(v385, v146, v406);
      v150 = (*(v147 + 88))(v148, v149);
      v151 = v401;
      v152 = v402;
      if (v150 == *MEMORY[0x277D33A68])
      {
        v153 = MEMORY[0x277D2DDB0];
      }

      else if (v150 == *MEMORY[0x277D33A78])
      {
        v153 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v150 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v153 = MEMORY[0x277D2DDB8];
      }

      (*(v404 + 8))(v146, v406);
      v202 = v388;
      (*(v151 + 104))(v388, *v153, v152);
      (*(v144 + 16))(v145, v202, v143, v144);
      (*(v151 + 8))(v202, v152);
      (*(v396 + 8))(v145, v399);
      sub_219BDE184();
      return;
    }

    sub_219BEAD04();
    v166 = sub_219BEA954();

    v168 = v401;
    v167 = v402;
    if (v166)
    {
      v169 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v170 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      v407 = __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v169);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v387);
      (*(v397 + 8))(v127, v398);
      v171 = v370;
      sub_219BF25A4();
      v172 = v404;
      v173 = v368;
      v174 = v406;
      (*(v404 + 16))(v368, v171, v406);
      v175 = (*(v172 + 88))(v173, v174);
      if (v175 == *MEMORY[0x277D33A68])
      {
        v176 = MEMORY[0x277D2DDB0];
        v177 = v392;
        v178 = v371;
      }

      else
      {
        v177 = v392;
        v178 = v371;
        if (v175 == *MEMORY[0x277D33A78])
        {
          v176 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v175 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v176 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v404 + 8))(v171, v406);
      (*(v168 + 104))(v178, *v176, v167);
      v216 = v373;
      sub_219BF2584();
      v217 = v372;
      v218 = v393;
      (*(v177 + 16))(v372, v216, v393);
      v219 = (*(v177 + 88))(v217, v218);
      if (v219 == *MEMORY[0x277D33570])
      {
        v220 = v168;
        v221 = MEMORY[0x277D2DDC8];
      }

      else
      {
        if (v219 != *MEMORY[0x277D33568])
        {
          goto LABEL_109;
        }

        v220 = v168;
        v221 = MEMORY[0x277D2DDD8];
      }

      (*(v177 + 8))(v216, v218);
      v223 = v394;
      v222 = v395;
      v224 = v374;
      (*(v394 + 104))(v374, *v221, v395);
      v225 = v387;
      (*(v170 + 8))(v387, v178, v224, v169, v170);
      (*(v223 + 8))(v224, v222);
      (*(v220 + 8))(v178, v167);
      (*(v396 + 8))(v225, v399);
      sub_219BDE124();
      v226 = v383;
      sub_219BE20E4();

      v227 = v375;
      sub_218D5862C(v375);
      sub_219067198(v226, sub_21883F194);
      sub_218D58B4C(0);
      v229 = v228;
      if ((*(*(v228 - 8) + 48))(v227, 1, v228) == 1)
      {
        v230 = v227;
LABEL_74:
        sub_219067198(v230, sub_21906711C);
        sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
        v272 = sub_219BF6F74();
        v273 = sub_219BF61F4();
        sub_219BE5314("Asked to go to nextTrack when there is no currentItem", 53, 2, &dword_2186C1000, v272, v273, MEMORY[0x277D84F90]);

        return;
      }

      v231 = *(v227 + *(v229 + 48));
      v232 = v367;
      sub_21872D0AC(v227, v367, type metadata accessor for AudioFeedTrack);

      sub_219BE20E4();

      if (!v408[2])
      {

LABEL_61:
        sub_2197D77B0(v232, 0, v231);
        v247 = v232;
LABEL_76:
        sub_219067198(v247, type metadata accessor for AudioFeedTrack);
        return;
      }

      v233 = (*(v357 + 80) + 32) & ~*(v357 + 80);
      v234 = v355;
      sub_21872D4F8(v408 + v233, v355, type metadata accessor for AudioFeedTrack);

      v235 = v356;
      sub_21872D0AC(v234, v356, type metadata accessor for AudioFeedTrack);
      v236 = [*v235 identifier];
      v237 = sub_219BF5414();
      v239 = v238;

      v240 = [*v232 identifier];
      v241 = sub_219BF5414();
      v243 = v242;

      if (v237 == v241 && v239 == v243)
      {
      }

      else
      {
        v244 = sub_219BF78F4();

        if ((v244 & 1) == 0)
        {
LABEL_60:
          sub_219067198(v235, type metadata accessor for AudioFeedTrack);
          goto LABEL_61;
        }
      }

      if (sub_2198DB278((v235 + *(v354 + 32)), (v232 + *(v354 + 32))))
      {

        sub_219BE20E4();
        v245 = v408;
        v246 = v408[2];
        if (v246)
        {
          sub_218B671A8(v408, v408 + v233, 1, (2 * v246) | 1);
          v327 = v326;

          v245 = v327;
        }

        v408 = v245;
        sub_218EE32FC();
        sub_219BE2114();

        sub_219067198(v235, type metadata accessor for AudioFeedTrack);
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    sub_219BEAC34();
    v193 = sub_219BEA954();

    if (v193)
    {
      v194 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v195 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1((v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker), v194);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      sub_219BF2594();
      sub_218C8FF70(v369);
      (*(v397 + 8))(v124, v398);
      v196 = v365;
      sub_219BF25A4();
      v197 = v404;
      v198 = v364;
      v199 = v406;
      (*(v404 + 16))(v364, v196, v406);
      v200 = (*(v197 + 88))(v198, v199);
      if (v200 == *MEMORY[0x277D33A68])
      {
        v201 = MEMORY[0x277D2DDB0];
      }

      else if (v200 == *MEMORY[0x277D33A78])
      {
        v201 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v200 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v201 = MEMORY[0x277D2DDB8];
      }

      (*(v404 + 8))(v196, v406);
      v264 = v366;
      (*(v168 + 104))(v366, *v201, v167);
      v265 = v369;
      (*(v195 + 32))(v369, v264, v194, v195);
      (*(v168 + 8))(v264, v167);
      (*(v396 + 8))(v265, v399);
      sub_219BDE0F4();
      return;
    }

    sub_219BEABC4();
    v203 = sub_219BEA954();

    if (v203 & 1) != 0 || (sub_219BEAC84(), v204 = sub_219BEA954(), , (v204))
    {
      v205 = (v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker);
      v206 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
      v207 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 32);
      __swift_project_boxed_opaque_existential_1(v205, v206);
      sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
      v208 = v358;
      sub_219BF2594();
      v209 = v359;
      sub_218C8FF70(v359);
      (*(v397 + 8))(v208, v398);
      v210 = v361;
      sub_219BF25A4();
      v211 = v404;
      v212 = v360;
      v213 = v406;
      (*(v404 + 16))(v360, v210, v406);
      v214 = (*(v211 + 88))(v212, v213);
      if (v214 == *MEMORY[0x277D33A68])
      {
        v215 = MEMORY[0x277D2DDB0];
      }

      else if (v214 == *MEMORY[0x277D33A78])
      {
        v215 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v214 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v215 = MEMORY[0x277D2DDB8];
      }

      (*(v404 + 8))(v210, v406);
      v266 = *v215;
      v267 = v362;
      (*(v168 + 104))(v362, v266, v167);
      (*(v207 + 40))(v209, v267, v206, v207);
      (*(v168 + 8))(v267, v167);
      (*(v396 + 8))(v209, v399);
      sub_219BDE124();
      v268 = v383;
      sub_219BE20E4();

      v269 = v363;
      sub_218D5862C(v363);
      sub_219067198(v268, sub_21883F194);
      sub_218D58B4C(0);
      v271 = v270;
      if ((*(*(v270 - 8) + 48))(v269, 1, v270) == 1)
      {
        v230 = v269;
        goto LABEL_74;
      }

      v274 = *(v269 + *(v271 + 48));
      v275 = v353;
      sub_21872D0AC(v269, v353, type metadata accessor for AudioFeedTrack);
      sub_219BDE174();
      sub_2197D77B0(v275, 1u, v274);
      v247 = v275;
      goto LABEL_76;
    }

    sub_219BEABD4();
    v248 = sub_219BEA954();

    if ((v248 & 1) == 0)
    {
      return;
    }

    v407 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_playbackConductor);
    sub_219BDE124();
    sub_219BE20E4();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v250 = (v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker);
    v252 = *(v142 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_audioPlaybackTracker + 24);
    v251 = v250[4];
    v400 = __swift_project_boxed_opaque_existential_1(v250, v252);
    sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    v253 = (v397 + 8);
    v254 = (v404 + 16);
    v255 = (v404 + 88);
    if (!EnumCaseMultiPayload)
    {
      v276 = v329;
      sub_219BF2594();
      sub_218C8FF70(v347);
      (*v253)(v276, v398);
      v277 = v335;
      sub_219BF25A4();
      v278 = v332;
      v279 = v406;
      (*v254)(v332, v277, v406);
      v280 = (*v255)(v278, v279);
      if (v280 == *MEMORY[0x277D33A68])
      {
        v281 = MEMORY[0x277D2DDB0];
        v282 = v402;
      }

      else
      {
        v282 = v402;
        if (v280 == *MEMORY[0x277D33A78])
        {
          v281 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v280 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v281 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v404 + 8))(v277, v406);
      v306 = v338;
      (*(v168 + 104))(v338, *v281, v282);
      sub_218A6E5D0(0);
      v301 = *(v307 + 64);
      v308 = v347;
      (*(v251 + 16))(v347, v306, v252, v251);
      (*(v168 + 8))(v306, v282);
      (*(v396 + 8))(v308, v399);
      sub_219BDE184();
LABEL_98:
      v309 = sub_219BDD9E4();
      v310 = v352;
      (*(*(v309 - 8) + 8))(&v352[v301], v309);
      v247 = v310;
      goto LABEL_76;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v256 = v330;
      sub_219BF2594();
      sub_218C8FF70(v349);
      (*v253)(v256, v398);
      v257 = v336;
      sub_219BF25A4();
      v258 = v333;
      v259 = v406;
      (*v254)(v333, v257, v406);
      v260 = (*v255)(v258, v259);
      if (v260 == *MEMORY[0x277D33A68])
      {
        v261 = MEMORY[0x277D2DDB0];
        v262 = v402;
        v263 = v392;
      }

      else
      {
        v262 = v402;
        v263 = v392;
        if (v260 == *MEMORY[0x277D33A78])
        {
          v261 = MEMORY[0x277D2DDC0];
        }

        else
        {
          if (v260 != *MEMORY[0x277D33A70])
          {
            goto LABEL_109;
          }

          v261 = MEMORY[0x277D2DDB8];
        }
      }

      (*(v404 + 8))(v257, v406);
      (*(v168 + 104))(v350, *v261, v262);
      v290 = v341;
      sub_219BF2584();
      v291 = v340;
      v292 = v393;
      (*(v263 + 16))(v340, v290, v393);
      v293 = (*(v263 + 88))(v291, v292);
      if (v293 == *MEMORY[0x277D33570])
      {
        v294 = v251;
        v295 = v262;
        v296 = MEMORY[0x277D2DDC8];
      }

      else
      {
        if (v293 != *MEMORY[0x277D33568])
        {
          goto LABEL_109;
        }

        v294 = v251;
        v295 = v262;
        v296 = MEMORY[0x277D2DDD8];
      }

      (*(v263 + 8))(v290, v292);
      v298 = v394;
      v297 = v395;
      v299 = v343;
      (*(v394 + 104))(v343, *v296, v395);
      sub_218A6E554(0);
      v301 = *(v300 + 64);
      v302 = v294;
      v303 = *(v294 + 24);
      v304 = v349;
      v305 = v350;
      v303(v349, v350, v299, v252, v302);
      (*(v298 + 8))(v299, v297);
      (*(v168 + 8))(v305, v295);
      (*(v396 + 8))(v304, v399);
      sub_219BDE164();
      goto LABEL_98;
    }

    v283 = v331;
    sub_219BF2594();
    sub_218C8FF70(v348);
    (*v253)(v283, v398);
    v284 = v337;
    sub_219BF25A4();
    v285 = v334;
    v286 = v406;
    (*v254)(v334, v284, v406);
    v287 = (*v255)(v285, v286);
    if (v287 == *MEMORY[0x277D33A68])
    {
      v288 = MEMORY[0x277D2DDB0];
      v289 = v402;
    }

    else
    {
      v289 = v402;
      if (v287 == *MEMORY[0x277D33A78])
      {
        v288 = MEMORY[0x277D2DDC0];
      }

      else
      {
        if (v287 != *MEMORY[0x277D33A70])
        {
          goto LABEL_109;
        }

        v288 = MEMORY[0x277D2DDB8];
      }
    }

    (*(v404 + 8))(v284, v406);
    v311 = v339;
    (*(v168 + 104))(v339, *v288, v289);
    v313 = v394;
    v312 = v395;
    v314 = v342;
    (*(v394 + 104))(v342, *MEMORY[0x277D2DDC8], v395);
    v315 = v348;
    (*(v251 + 8))(v348, v311, v314, v252, v251);
    (*(v313 + 8))(v314, v312);
    (*(v168 + 8))(v311, v289);
    (*(v396 + 8))(v315, v399);
    sub_218729CB4(0, &unk_280E8BC40, sub_2187335C8, MEMORY[0x277D84560]);
    v316 = (*(v344 + 80) + 32) & ~*(v344 + 80);
    v317 = swift_allocObject();

    sub_219BE20E4();

    v318 = v345;
    sub_21872D4F8(v317 + v316, v345, sub_2187335C8);
    v319 = v318;
    v320 = v346;
    sub_21872D0AC(v319, v346, sub_2187335C8);
    v321 = v357;
    if ((*(v357 + 48))(v320, 1, v354) == 1)
    {
      sub_219067198(v320, sub_2187335C8);
      v322 = MEMORY[0x277D84F90];
    }

    else
    {
      v323 = v328;
      sub_21872D0AC(v320, v328, type metadata accessor for AudioFeedTrack);
      v322 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v322 = sub_2191F79E0(0, v322[2] + 1, 1, v322);
      }

      v325 = v322[2];
      v324 = v322[3];
      if (v325 >= v324 >> 1)
      {
        v322 = sub_2191F79E0((v324 > 1), v325 + 1, 1, v322);
      }

      v322[2] = v325 + 1;
      sub_21872D0AC(v323, v322 + ((*(v321 + 80) + 32) & ~*(v321 + 80)) + *(v321 + 72) * v325, type metadata accessor for AudioFeedTrack);
    }

    swift_setDeallocating();
    sub_219067198(v317 + v316, sub_2187335C8);
    swift_deallocClassInstance();
    v408 = v322;
    sub_218EE32FC();
    sub_219BE2114();

    sub_219BDE164();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_sceneProvider), *(v2 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_sceneProvider + 24));
    v154 = sub_219BE7174();
    if (v154)
    {
      v155 = v154;
      v156 = [v154 rootViewController];

      if (v156)
      {
        v157 = *(v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory + 24);
        v407 = *(v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory + 32);
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineAlertControllerFactory), v157);
        v158 = v376;
        sub_219BDDC44();
        v159 = v380;
        v160 = v378;
        v161 = v382;
        (*(v380 + 104))(v378, *MEMORY[0x277D33600], v382);
        v162 = v396;
        v163 = v381;
        v164 = v403;
        (*(v396 + 104))(v381, *MEMORY[0x277D33990], v403);
        v165 = sub_219BF4984();
        (*(v162 + 8))(v163, v164);
        (*(v159 + 8))(v160, v161);
        (*(v377 + 8))(v158, v379);
        [v156 presentViewController:v165 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_2190663A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a2;
  sub_218EE3174(0);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1C74();
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x28223BE20](v7);
  v105 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FB74C4(0);
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187335C8(0);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = (&v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v104 = &v92 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = &v92 - v17;
  MEMORY[0x28223BE20](v18);
  v113 = &v92 - v19;
  MEMORY[0x28223BE20](v20);
  v114 = &v92 - v21;
  MEMORY[0x28223BE20](v22);
  v112 = &v92 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v92 - v25;
  v27 = type metadata accessor for AudioFeedTrack(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v101 = (&v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = (&v92 - v31);
  MEMORY[0x28223BE20](v33);
  v115 = &v92 - v34;
  sub_219BEAF54();
  sub_219BEAD04();
  v35 = sub_219BEA954();

  if ((v35 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_219BDE104();
  sub_219BE20E4();

  v36 = *(v28 + 48);
  if (v36(v26, 1, v27) == 1)
  {
    v37 = sub_2187335C8;
    v38 = v26;
LABEL_13:
    sub_219067198(v38, v37);
    v55 = 0;
    return v55 & 1;
  }

  v93 = v28;
  v95 = v32;
  v94 = v6;
  v39 = v115;
  sub_21872D0AC(v26, v115, type metadata accessor for AudioFeedTrack);
  v97 = *(v39 + 24);
  v99 = v28 + 48;

  sub_219BE20E4();

  v96 = v3;
  v98 = v36;
  v117 = v118;
  sub_21872E140(0);
  sub_219067150(&qword_280E8F340, sub_21872E140, MEMORY[0x277D83988]);
  v100 = v27;
  sub_219BF5E04();

  v116 = 1;
  v40 = v112;
  v41 = v110;
  sub_219BE2084();
  v42 = *(v109 + 8);
  v42(v11, v41);
  v43 = v96;

  sub_219BE20E4();

  v117 = v118;
  v44 = v100;
  sub_219BF5E04();

  v116 = 1;
  v45 = v114;
  sub_219BE2084();
  v42(v11, v41);
  v46 = v40;
  v47 = sub_219062D48();
  v48 = v97;
  if ((v97 & 4) != 0)
  {
    v49 = v40;
  }

  else
  {
    v49 = v45;
  }

  if (v47)
  {
    v50 = v40;
  }

  else
  {
    v50 = v49;
  }

  v51 = v113;
  sub_21872D4F8(v50, v113, sub_2187335C8);
  v52 = v111;
  sub_21872D4F8(v51, v111, sub_2187335C8);
  v53 = v98;
  if (v98(v52, 1, v44) == 1)
  {
    v54 = sub_2187335C8;
    sub_219067198(v51, sub_2187335C8);
    sub_219067198(v45, sub_2187335C8);
    sub_219067198(v46, sub_2187335C8);
    sub_219067198(v115, type metadata accessor for AudioFeedTrack);
    v38 = v52;
LABEL_12:
    v37 = v54;
    goto LABEL_13;
  }

  v56 = v95;
  sub_21872D0AC(v52, v95, type metadata accessor for AudioFeedTrack);
  if ((sub_219BF1B84() & 1) == 0)
  {
    v57 = [*(v43 + OBJC_IVAR____TtC7NewsUI227AudioPlaybackCommandHandler_offlineArticleManager) listenableArticleIDs];
    v58 = sub_219BF5D44();

    v59 = [*v56 identifier];
    v60 = sub_219BF5414();
    v62 = v61;

    LOBYTE(v59) = sub_2188537B8(v60, v62, v58);
    v44 = v100;

    v45 = v114;

    if ((v59 & 1) == 0)
    {
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      v54 = type metadata accessor for AudioFeedTrack;
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      v38 = v56;
      goto LABEL_12;
    }
  }

  sub_218739AE0(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v63 = v105;
  sub_219BF2584();
  v64 = (*(v106 + 88))(v63, v107);
  v65 = v115;
  if (v64 == *MEMORY[0x277D33570])
  {
    v55 = sub_219062D48();
    sub_219067198(v51, sub_2187335C8);
    sub_219067198(v45, sub_2187335C8);
    sub_219067198(v46, sub_2187335C8);
    v66 = type metadata accessor for AudioFeedTrack;
    sub_219067198(v65, type metadata accessor for AudioFeedTrack);
    v67 = v95;
LABEL_18:
    sub_219067198(v67, v66);
    return v55 & 1;
  }

  if (v64 == *MEMORY[0x277D33568])
  {
    v68 = v94;
    v69 = v104;
    if ((v48 & 4) != 0)
    {
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v65, type metadata accessor for AudioFeedTrack);
      v73 = v95;
      v72 = type metadata accessor for AudioFeedTrack;
      goto LABEL_26;
    }

    v70 = v95;
    sub_21872D4F8(v95, v104, type metadata accessor for AudioFeedTrack);
    (*(v93 + 56))(v69, 0, 1, v44);
    v71 = *(v103 + 48);
    sub_21872D4F8(v69, v68, sub_2187335C8);
    v111 = v71;
    sub_21872D4F8(v45, v68 + v71, sub_2187335C8);
    if (v53(v68, 1, v44) == 1)
    {
      sub_219067198(v69, sub_2187335C8);
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      sub_219067198(v70, type metadata accessor for AudioFeedTrack);
      if (v53(v68 + v111, 1, v44) == 1)
      {
        v72 = sub_2187335C8;
        v73 = v68;
LABEL_26:
        sub_219067198(v73, v72);
LABEL_27:
        v55 = 1;
        return v55 & 1;
      }

LABEL_31:
      v37 = sub_218EE3174;
      v38 = v68;
      goto LABEL_13;
    }

    v75 = v102;
    sub_21872D4F8(v68, v102, sub_2187335C8);
    v76 = v111;
    if (v53(v68 + v111, 1, v44) == 1)
    {
      sub_219067198(v69, sub_2187335C8);
      sub_219067198(v51, sub_2187335C8);
      sub_219067198(v45, sub_2187335C8);
      sub_219067198(v46, sub_2187335C8);
      sub_219067198(v115, type metadata accessor for AudioFeedTrack);
      sub_219067198(v95, type metadata accessor for AudioFeedTrack);
      sub_219067198(v75, type metadata accessor for AudioFeedTrack);
      goto LABEL_31;
    }

    v77 = v68;
    v78 = v101;
    sub_21872D0AC(v68 + v76, v101, type metadata accessor for AudioFeedTrack);
    v79 = [*v75 identifier];
    v80 = sub_219BF5414();
    v82 = v81;

    v83 = [*v78 identifier];
    v84 = sub_219BF5414();
    v86 = v85;

    v87 = v115;
    if (v80 == v84 && v82 == v86)
    {

      v89 = v101;
      v88 = v102;
      v90 = v100;
    }

    else
    {
      v91 = sub_219BF78F4();

      v55 = 0;
      v89 = v101;
      v88 = v102;
      v90 = v100;
      if ((v91 & 1) == 0)
      {
LABEL_37:
        v66 = sub_2187335C8;
        sub_219067198(v104, sub_2187335C8);
        sub_219067198(v51, sub_2187335C8);
        sub_219067198(v114, sub_2187335C8);
        sub_219067198(v46, sub_2187335C8);
        sub_219067198(v87, type metadata accessor for AudioFeedTrack);
        sub_219067198(v89, type metadata accessor for AudioFeedTrack);
        sub_219067198(v95, type metadata accessor for AudioFeedTrack);
        sub_219067198(v88, type metadata accessor for AudioFeedTrack);
        v67 = v77;
        goto LABEL_18;
      }
    }

    v55 = sub_2198DB278((v88 + *(v90 + 32)), (v89 + *(v90 + 32)));
    goto LABEL_37;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219067150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219067198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219067204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE9834();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_219067284(uint64_t a1)
{
  v2 = sub_219068724(&qword_27CC156F0, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes, &unk_219C56390);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2190672F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E860];
  v3 = sub_219BE9C24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

int *sub_219067368@<X0>(double a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = COERCE_DOUBLE(sub_219BE9F64());
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  *&v200 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219068818(0, &qword_27CC156F8, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v203 = &v178 - v13;
  v14 = sub_219BDCAF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE8164();
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*&a1 + 16);
  v25 = *(*&a1 + 24);
  v205 = a1;
  v26 = HIBYTE(*&v25) & 0xFLL;
  if ((*&v25 & 0x2000000000000000) == 0)
  {
    v26 = *&v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v196 = v25;
    v201 = v24;
    v190 = v7;
    v191 = *&v6;
    v194 = v11;
    v199 = a3;
    v197 = v20;
    v27 = *(v20 + 16);
    v192 = a2;
    v198 = v19;
    v27(v23, a2, v19, v21);
    sub_219BE8004();
    v29 = v28;
    v30 = sub_219BE8034();
    v31 = [v30 preferredContentSizeCategory];

    v193 = sub_219BF6924();
    v32 = *__swift_project_boxed_opaque_existential_1((v208 + 16), *(v208 + 40));
    *&v206 = COERCE_DOUBLE(sub_219BF0CD4());
    v33 = *(v32 + 16);
    v34 = objc_opt_self();
    v35 = [v34 systemFontOfSize:20.0 weight:*MEMORY[0x277D74400]];
    v36 = [v33 scaledFontForFont:v35 maximumPointSize:48.0];
    v207 = *&v23;
    v37 = v36;

    v38 = *MEMORY[0x277D6D198];
    v39 = *(v15 + 104);
    v39(v17, v38, v14);
    v204 = COERCE_DOUBLE(sub_219BF0CB4());

    v40 = *(v15 + 8);
    v40(v17, v14);
    v41 = *(*__swift_project_boxed_opaque_existential_1((v208 + 16), *(v208 + 40)) + 24);
    v42 = [v34 systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
    v43 = [v41 scaledFontForFont_];

    v186 = v38;
    v187 = v15 + 104;
    v185 = v39;
    v39(v17, v38, v14);
    v44 = v17;
    v202 = sub_219BF0CB4();

    v189 = v14;
    v188 = v15 + 8;
    v184 = v40;
    v40(v17, v14);
    v45 = sub_219BE8074();
    v46 = objc_opt_self();
    v47 = [v46 traitCollectionWithHorizontalSizeClass_];
    LODWORD(v37) = [v45 containsTraitsInCollection_];

    if (v37 && (v48 = sub_219BE8034(), v49 = [v46 traitCollectionWithHorizontalSizeClass_], v50 = objc_msgSend(v48, sel_containsTraitsInCollection_, v49), v48, v49, (v50 & 1) != 0))
    {
      v51 = 0xE700000000000000;
      v52 = 0x746361706D6F63;
    }

    else
    {
      v51 = 0xEA00000000007463;
      v52 = 0x61706D6F636E6F6ELL;
    }

    v53 = MEMORY[0x277D837D0];
    sub_2186F83B8(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C10590;
    *(v54 + 32) = sub_219BF5CA4();
    *(v54 + 40) = v55;
    [*&v204 pointSize];
    *(v54 + 48) = sub_219BF5CA4();
    *(v54 + 56) = v56;
    v57 = v202;
    [v202 pointSize];
    *(v54 + 64) = sub_219BF5CA4();
    *(v54 + 72) = v58;
    v59 = v205;
    v212 = **&v205;
    *(v54 + 80) = v212;
    *(v54 + 96) = v52;
    *(v54 + 104) = v51;
    v60 = v196;
    *(v54 + 112) = v201;
    *(v54 + 120) = v60;
    v61 = *(*&v59 + 32);
    v62 = *(*&v59 + 40);
    v183 = v61;
    if (*&v62 == 0.0)
    {
      v63 = 0;
    }

    else
    {
      v63 = v61;
    }

    if (*&v62 == 0.0)
    {
      v64 = 0xE000000000000000;
    }

    else
    {
      v64 = v62;
    }

    v210 = 0;
    v211 = 0xE000000000000000;
    sub_218A18DB4(&v212, v209);

    v195 = *&v62;

    MEMORY[0x21CECC330](v63, v64);

    v65 = v211;
    *(v54 + 128) = v210;
    *(v54 + 136) = v65;
    v210 = 0;
    v211 = 0xE000000000000000;
    v66 = *(*&v59 + 64);
    if (v66)
    {
      v67 = *(*&v59 + 56);
    }

    else
    {
      v67 = 0;
    }

    if (v66)
    {
      v68 = *(*&v59 + 64);
    }

    else
    {
      v68 = 0xE000000000000000;
    }

    MEMORY[0x21CECC330](v67, v68);

    v69 = v211;
    *(v54 + 144) = v210;
    *(v54 + 152) = v69;
    v210 = v54;
    sub_2186F83B8(0, &qword_280E8EE20, v53, MEMORY[0x277D83940]);
    sub_2189DD328();
    v70 = sub_219BF5324();
    v72 = v71;

    v210 = v70;
    v211 = v72;

    v73 = *&v203;
    sub_219BE2DD4();

    v74 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v75 = *(v74 - 1);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      v180 = v75;
      v179 = v44;
      v181 = v70;
      v182 = v72;
      sub_21906876C(v73);
      v76 = type metadata accessor for ChannelPickerHeaderViewLayoutOptions(0);
      v77 = v192;
      v78 = *&v192[v76[7]];
      sub_219BE7FF4();
      v80 = v78 - v79;
      v81 = v200;
      sub_219BE7FB4();
      sub_219BE9F54();
      v83 = v82;
      v190[1](COERCE_CGFLOAT(*&v81), COERCE_DOUBLE(*&v191));
      v200 = v80 + v83;
      v84 = v76[6];
      v203 = *&v77[v76[5]];
      v191 = *&v77[v84];
      sub_219068818(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v86 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v87 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
      *(inited + 64) = v87;
      v88 = v204;
      *(inited + 40) = v204;
      v190 = v86;
      v192 = *&v88;
      sub_2188195F4(inited);
      swift_setDeallocating();
      sub_21899E5A8(inited + 32);
      v89 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v90 = sub_219BF53D4();
      type metadata accessor for Key(0);
      v92 = v91;
      sub_219068724(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
      v196 = v92;
      v93 = sub_219BF5204();

      v94 = [v89 initWithString:v90 attributes:v93];

      sub_219BE7FF4();
      sub_219BF6034();
      [v94 boundingRectWithSize:1 options:0 context:{v29 - v95, 1.79769313e308}];
      x = v213.origin.x;
      y = v213.origin.y;
      width = v213.size.width;
      height = v213.size.height;
      v204 = CGRectGetWidth(v213);
      v214.origin.x = x;
      v214.origin.y = y;
      v214.size.width = width;
      v214.size.height = height;
      v201 = CGRectGetHeight(v214);
      v100 = 0.0;
      if (v195 == 0.0)
      {
        v119 = 0.0;
        v120 = 0.0;
        v121 = 0.0;
        v122 = v207;
        v123 = v202;
      }

      else
      {
        v101 = swift_initStackObject();
        *(v101 + 16) = xmmword_219C09EC0;
        v102 = *MEMORY[0x277D740C0];
        *(v101 + 32) = *MEMORY[0x277D740C0];
        v103 = objc_opt_self();
        v104 = v102;
        v105 = [v103 secondaryLabelColor];
        v106 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
        *(v101 + 40) = v105;
        v107 = v190;
        *(v101 + 64) = v106;
        *(v101 + 72) = v107;
        v108 = v107;
        v109 = sub_219BF6BD4();
        v110 = v94;
        v111 = v179;
        v112 = v189;
        v185(v179, v186, v189);
        v113 = sub_219BF0CB4();

        v114 = v111;
        v94 = v110;
        v184(v114, v112);
        *(v101 + 104) = v87;
        *(v101 + 80) = v113;
        sub_2188195F4(v101);
        swift_setDeallocating();
        sub_218819588(0);
        swift_arrayDestroy();
        v115 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v116 = sub_219BF53D4();
        v117 = sub_219BF5204();

        v118 = [v115 initWithString:v116 attributes:v117];

        v119 = 0.0;
        v120 = 0.0;
        v121 = 0.0;
        v122 = v207;
        v123 = v202;
        if (v118)
        {
          sub_219BE7FF4();
          sub_219BF6034();
          [v118 boundingRectWithSize:33 options:0 context:{v29 - v124, 1.79769313e308}];
          v206 = v125;
          v127 = v126;
          v129 = v128;
          v131 = v130;
          v132 = v200;
          v215.origin.x = v200;
          v133 = v203;
          v215.origin.y = v203;
          v134 = v204;
          v215.size.width = v204;
          v135 = v29;
          v136 = v201;
          v215.size.height = v201;
          MinX = CGRectGetMinX(v215);
          v216.origin.x = v132;
          v216.origin.y = v133;
          v100 = MinX;
          v216.size.width = v134;
          v216.size.height = v136;
          v29 = v135;
          v119 = CGRectGetMaxY(v216) + 8.0;
          v138 = *&v206;
          *&v217.origin.x = v206;
          v217.origin.y = v127;
          v217.size.width = v129;
          v217.size.height = v131;
          v120 = CGRectGetWidth(v217);
          v218.origin.x = v138;
          v218.origin.y = v127;
          v218.size.width = v129;
          v218.size.height = v131;
          v121 = CGRectGetHeight(v218);
        }
      }

      v146 = sub_21906887C(*&v205);
      v148 = v147;
      v207 = v29;
      sub_219BE7FF4();
      v150 = v29 - v146 - v149 + -12.0;
      v151 = v192;
      [v192 lineHeight];
      v153 = v152;
      [v151 descender];
      v205 = v203 + v153 + v154 - *&v148 + -2.0;
      *&v206 = v146;
      if (v146 != 0.0 || *&v148 != 0.0)
      {
        [v94 boundingRectWithSize:3 options:0 context:{v150, 1.79769313e308}];
        v204 = v155;
        v201 = v156;
      }

      v219.origin.x = v100;
      v219.origin.y = v119;
      v219.size.width = v120;
      v219.size.height = v121;
      MaxY = CGRectGetMaxY(v219);
      v195 = v100;
      v158 = v200;
      v220.origin.x = v200;
      v202 = v148;
      v159 = v119;
      v160 = v203;
      v220.origin.y = v203;
      v196 = v150;
      v161 = v204;
      v220.size.width = v204;
      v162 = v121;
      v163 = v120;
      v164 = v201;
      v220.size.height = v201;
      v165 = CGRectGetMaxY(v220);
      if (MaxY > v165)
      {
        v165 = MaxY;
      }

      v166 = v191 + ceil(v165);
      v167 = *MEMORY[0x277D6E758];
      v168 = sub_219BE9834();
      v169 = v199;
      (*(*(v168 - 8) + 104))(v199, v167, v168);
      v170 = v169 + v74[5];
      *v170 = 0;
      *(v170 + 8) = 0;
      *(v170 + 16) = v207;
      *(v170 + 24) = v166;
      v171 = (v169 + v74[6]);
      *v171 = v158;
      v171[1] = v160;
      v171[2] = v161;
      v171[3] = v164;
      v172 = (v169 + v74[7]);
      *v172 = v195;
      v172[1] = v159;
      v172[2] = v163;
      v172[3] = v162;
      v173 = v169 + v74[8];
      v174 = v205;
      *v173 = v196;
      *(v173 + 8) = v174;
      v175 = v202;
      *(v173 + 16) = *&v206;
      *(v173 + 24) = v175;
      *(v173 + 32) = 0;
      *(v169 + v74[9]) = v193 & 1;
      v176 = v169;
      v177 = v194;
      sub_218967C78(v176, v194);
      (*(v180 + 56))(v177, 0, 1, v74);
      v210 = v181;
      v211 = v182;

      sub_219BE2DE4();

      return (*(v197 + 8))(COERCE_DOUBLE(*&v122), v198);
    }

    else
    {
      (*(v197 + 8))(COERCE_DOUBLE(*&v207), v198);

      return sub_219068A48(v73, v199);
    }
  }

  else
  {
    v139 = *MEMORY[0x277D6E758];
    v140 = sub_219BE9834();
    (*(*(v140 - 8) + 104))(a3, v139, v140);
    result = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v142 = (a3 + result[5]);
    *v142 = 0;
    v142[1] = 0;
    v142[2] = 0;
    v142[3] = 0x4020000000000000;
    v143 = (a3 + result[6]);
    *v143 = 0u;
    v143[1] = 0u;
    v144 = (a3 + result[7]);
    *v144 = 0u;
    v144[1] = 0u;
    v145 = a3 + result[8];
    *v145 = 0u;
    *(v145 + 16) = 0u;
    *(v145 + 32) = 1;
    *(a3 + result[9]) = 0;
  }

  return result;
}

void sub_2190685C4(uint64_t a1)
{
  sub_219BE9834();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      sub_2186F83B8(319, &qword_280EAEF70, &type metadata for SeeMoreButtonLayoutAttributes, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219068724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21906876C(uint64_t a1)
{
  sub_219068818(0, &qword_27CC156F8, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219068818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_21906887C(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    return 0.0;
  }

  sub_219068818(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = v2;
  v4 = sub_219130730();
  *(inited + 64) = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v4;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_219068724(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v7 = sub_219BF5204();

  v8 = [v5 initWithString:v6 attributes:v7];

  sub_219BF6B94();
  sub_219BF6784();
  v10 = v9;

  return v10;
}

uint64_t sub_219068A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219068AD4(uint64_t a1)
{
  result = sub_219BE8164();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TrendingMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9BFA0;
  if (!qword_280E9BFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219068BC0(uint64_t a1)
{
  result = sub_219BEF554();
  if (v2 <= 0x3F)
  {
    result = sub_219BF1934();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219068C74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_219BEF554();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v49);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1934();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219069800(0, &qword_280E8C888, MEMORY[0x277D844C8]);
  v54 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  v17 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_219069748();
  v55 = v16;
  v18 = v56;
  sub_219BF7B34();
  if (!v18)
  {
    v19 = v12;
    v46 = v6;
    v47 = v9;
    v56 = v7;
    v20 = v50;
    v21 = v51;
    v23 = v52;
    v22 = v53;
    v63 = 5;
    sub_219BF7694();
    v45 = v24;
    v62 = 1;
    v44 = sub_219BF76A4();
    v61 = 2;
    v43 = sub_219BF76A4();
    v60 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
    sub_219BF76E4();
    v59 = 4;
    v42 = sub_219BF76A4();
    v58 = 6;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    v26 = v14;
    v27 = v45;
    v28 = v46;
    *v46 = 10;
    v29 = 0x343334312D49544CLL;
    if (v27)
    {
      v29 = 0;
    }

    v41 = v29;
    v30 = v19;
    if (v27)
    {
      v31 = v27;
    }

    else
    {
      v31 = 0xED00006E652D3134;
    }

    (*(v26 + 8))(v55, v54);
    v32 = &v28[*(v49 + 36)];
    *v32 = v41;
    v32[1] = v31;
    v33 = v43;
    v28[1] = v44 & 1;
    v28[2] = (v33 == 2) | v33 & 1;
    v34 = v21;
    v35 = v21[6];
    if (v35(v30, 1, v23) == 1)
    {
      v36 = v21[13];
      v37 = v20;
      v36(v20, *MEMORY[0x277D32628], v23);
      if (v35(v30, 1, v23) != 1)
      {
        sub_218D15BD0(v30);
      }
    }

    else
    {
      v38 = v21[4];
      v37 = v20;
      v38(v20, v30, v23);
    }

    v39 = v49;
    v40 = v46;
    (v34[4])(&v46[*(v49 + 28)], v37, v23);
    *(v40 + *(v39 + 32)) = v42 & 1;
    (*(v48 + 32))(v40 + *(v39 + 40), v47, v56);
    sub_21906979C(v40, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_2190692A0(void *a1)
{
  v3 = v1;
  sub_219069800(0, &qword_280E8C270, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219069748();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    v11[12] = 2;
    sub_219BF7804();
    type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
    v11[11] = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF77F4();
    v11[8] = 6;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219069588()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1684957547;
    }
  }

  else
  {
    v2 = 0x4C656C6369747261;
    if (v1 != 5)
    {
      v2 = 0x746E65746E6F63;
    }

    v3 = 0xD00000000000001BLL;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219069678@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21906997C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2190696A0(uint64_t a1)
{
  v2 = sub_219069748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190696DC(uint64_t a1)
{
  v2 = sub_219069748();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219069748()
{
  result = qword_280E9BFD8[0];
  if (!qword_280E9BFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9BFD8);
  }

  return result;
}

uint64_t sub_21906979C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219069800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219069748();
    v7 = a3(a1, &type metadata for TrendingMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219069878()
{
  result = qword_27CC15710;
  if (!qword_27CC15710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15710);
  }

  return result;
}

unint64_t sub_2190698D0()
{
  result = qword_280E9BFC8;
  if (!qword_280E9BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BFC8);
  }

  return result;
}

unint64_t sub_219069928()
{
  result = qword_280E9BFD0;
  if (!qword_280E9BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9BFD0);
  }

  return result;
}

uint64_t sub_21906997C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C656C6369747261 && a2 == 0xED00004449747369 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for SearchMoreFeedGroup(uint64_t a1)
{
  result = qword_27CC15760;
  if (!qword_27CC15760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219069C88()
{
  result = qword_27CC15728;
  if (!qword_27CC15728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15728);
  }

  return result;
}

unint64_t sub_219069CE4()
{
  result = qword_27CC15730;
  if (!qword_27CC15730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15730);
  }

  return result;
}

unint64_t sub_219069D3C()
{
  result = qword_27CC15738;
  if (!qword_27CC15738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15738);
  }

  return result;
}

uint64_t sub_219069D90()
{
  v1 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for RecipesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v12, v6, type metadata accessor for RecipesSearchMoreFeedGroup);
      v14 = *v6;

      v15 = v6;
      v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v12, v3, type metadata accessor for TagsSearchMoreFeedGroup);
      v14 = *v3;

      v15 = v3;
      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v12, v9, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v14 = *v9;

    v15 = v9;
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v15, v16);
  return v14;
}

uint64_t sub_219069FB8()
{
  v1 = v0;
  v2 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v13, v7, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED7A4();
      v15 = v7;
      v16 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v13, v4, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED7A4();
      v15 = v4;
      v16 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v13, v10, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED7A4();
    v15 = v10;
    v16 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  return sub_218965120(v15, v16);
}

uint64_t sub_21906A214(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v3, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = sub_2189650B8(v15, v9, type metadata accessor for RecipesSearchMoreFeedGroup);
      v18 = a1(v17);
      v19 = v9;
      v20 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      v22 = sub_2189650B8(v15, v6, type metadata accessor for TagsSearchMoreFeedGroup);
      v18 = a1(v22);
      v19 = v6;
      v20 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    v21 = sub_2189650B8(v15, v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
    v18 = a1(v21);
    v19 = v12;
    v20 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v19, v20);
  return v18;
}

double sub_21906A480()
{
  v1 = v0;
  v2 = type metadata accessor for TagsSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v13, v7, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED7B4();
      v16 = v15;
      v17 = v7;
      v18 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v13, v4, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED7B4();
      v16 = v20;
      v17 = v4;
      v18 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v13, v10, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED7B4();
    v16 = v19;
    v17 = v10;
    v18 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v17, v18);
  return v16;
}

uint64_t sub_21906A6E4()
{
  v1 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *&aArticlesrecipe[8 * EnumCaseMultiPayload];
  sub_218965120(v3, *(&off_282A5A040 + EnumCaseMultiPayload));
  return v5;
}

uint64_t sub_21906A7A4@<X0>(_BYTE *a2@<X8>)
{
  v3 = v2;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = EnumCaseMultiPayload;
  result = sub_218965120(v6, *(&off_282A5A058 + EnumCaseMultiPayload));
  *a2 = v9;
  return result;
}

uint64_t sub_21906A8E0(uint64_t a1)
{
  v2 = sub_21906AC1C(&qword_27CC0B320, &unk_219C56620);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_21906A948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21906AC1C(&qword_27CC15718, &unk_219C56700);

  return sub_219BF1174();
}

uint64_t sub_21906A9BC(uint64_t a1)
{
  v2 = sub_21906AC1C(&qword_27CC15718, &unk_219C56700);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21906AA14(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v4, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = 0x73657069636552;
      v6 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      v6 = type metadata accessor for TagsSearchMoreFeedGroup;
      v7 = 1936154964;
    }
  }

  else
  {
    v7 = 0x73656C6369747241;
  }

  sub_218965120(v3, v6);
  return v7;
}

uint64_t sub_21906AB28(uint64_t a1)
{
  sub_21906AC1C(&qword_27CC15720, &unk_219C566A8);

  return sub_219BE2324();
}

uint64_t sub_21906AC1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchMoreFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21906AC60(uint64_t a1)
{
  sub_21906AD3C(319, &qword_27CC0D1E0, type metadata accessor for ArticlesSearchMoreFeedGroup);
  if (v1 <= 0x3F)
  {
    sub_21906AD3C(319, &qword_27CC0D1D8, type metadata accessor for RecipesSearchMoreFeedGroup);
    if (v2 <= 0x3F)
    {
      sub_21906AD3C(319, &qword_27CC0D1D0, type metadata accessor for TagsSearchMoreFeedGroup);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_21906AD3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21906ADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v35);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BEF874();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218768134(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v7 - 8);
  v29 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v28[1] = v28 - v10;
  v12 = sub_219BEF554();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v31 = v21;
  v32 = v20;
  (*(v17 + 8))(v19, v16);
  if (a1 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  v30 = v22;
  v23 = *(v13 + 104);
  v23(v15, *MEMORY[0x277D32638], v12);
  v24 = sub_219BE3184();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v5 + 104))(v33, *MEMORY[0x277D32750], v34);
  *v4 = 5;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 12) = 256;
  v26 = v35;
  v23(&v4[*(v35 + 32)], *MEMORY[0x277D32640], v12);
  *&v4[*(v26 + 36)] = 0;
  sub_21906C04C(&qword_280E98338, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData, &unk_219C568A0);
  sub_21906C04C(&qword_280E98340, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData, &unk_219C56878);
  return sub_219BEDD34();
}

uint64_t type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E98328;
  if (!qword_280E98328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21906B294(uint64_t a1)
{
  sub_2186DEEEC(319, &qword_280E8F860, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_219BEF554();
    if (v2 <= 0x3F)
    {
      sub_2186D0AF8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21906B36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_219BEF554();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218768134(0, &qword_280E91380, MEMORY[0x277D32648]);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v28 - v10;
  sub_21906BFE8(0, &qword_280E8C788, MEMORY[0x277D844C8]);
  v12 = v11;
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906BF30();
  v15 = v38;
  sub_219BF7B34();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v32 = a1;
  v38 = v5;
  LOBYTE(v39) = 1;
  sub_219BF7674();
  v29 = v41;
  v30 = v40;
  LOBYTE(v39) = 2;
  sub_219BF7674();
  v42 = v45;
  LOBYTE(v39) = 3;
  sub_219BF7674();
  v17 = v44;
  LOBYTE(v39) = 4;
  sub_21906C04C(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
  v18 = v37;
  v19 = v35;
  sub_219BF7674();
  sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
  v43 = 5;
  sub_218753294(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_219BF7674();
  (*(v33 + 8))(v14, v12);
  v33 = v39;
  *v8 = 5;
  v20 = v29;
  *(v8 + 1) = v30;
  *(v8 + 2) = v20;
  v8[24] = v42 & 1;
  v8[25] = (v17 == 2) | v17 & 1;
  v21 = v34;
  v22 = *(v34 + 48);
  if (v22(v18, 1, v19) == 1)
  {
    v23 = v38;
    (*(v21 + 104))(v38, *MEMORY[0x277D32640], v19);
    v24 = v22(v37, 1, v19);
    v25 = v23;
    v26 = v36;
    v27 = v32;
    if (v24 != 1)
    {
      sub_218D15BD0(v37);
    }
  }

  else
  {
    v25 = v38;
    (*(v21 + 32))(v38, v37, v19);
    v26 = v36;
    v27 = v32;
  }

  (*(v21 + 32))(&v8[*(v6 + 32)], v25, v19);
  *&v8[*(v6 + 36)] = v33;
  sub_21906BF84(v8, v26);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_21906B888(void *a1)
{
  v3 = v1;
  sub_21906BFE8(0, &qword_280E8C1F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906BF30();
  sub_219BF7B44();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = 1;
    sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
    sub_21897A7C0();
    sub_219BF7834();
    LOBYTE(v12) = 2;
    sub_219BF7804();
    LOBYTE(v12) = 3;
    sub_219BF7804();
    v10 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
    LOBYTE(v12) = 4;
    sub_219BEF554();
    sub_21906C04C(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
    sub_219BF7834();
    *&v12 = *(v3 + *(v10 + 36));
    v13 = 5;
    sub_2186D0AF8(0);
    sub_21906C094();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_21906BB80(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_21906BC8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21906C248(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21906BCBC@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x8000000219CD7500;
  v6 = 0x8000000219CD77C0;
  result = 10;
  v8 = 0xD00000000000001BLL;
  if (v2 == 4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x8000000219CD7220;
  }

  if (v2 == 3)
  {
    v8 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  v9 = 0xED0000656C746974;
  v10 = 0x62755370756F7267;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000219CD77A0;
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
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
  return result;
}

unint64_t sub_21906BD90()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD00000000000001BLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x62755370756F7267;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

unint64_t sub_21906BE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21906C248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21906BE88(uint64_t a1)
{
  v2 = sub_21906BF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21906BEC4(uint64_t a1)
{
  v2 = sub_21906BF30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21906BF30()
{
  result = qword_280E98358;
  if (!qword_280E98358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98358);
  }

  return result;
}

uint64_t sub_21906BF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21906BFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21906BF30();
    v7 = a3(a1, &type metadata for MyMagazinesMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21906C04C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21906C094()
{
  result = qword_280E8EDA0;
  if (!qword_280E8EDA0)
  {
    sub_2186D0AF8(255);
    sub_218753294(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EDA0);
  }

  return result;
}

unint64_t sub_21906C144()
{
  result = qword_27CC15770;
  if (!qword_27CC15770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15770);
  }

  return result;
}

unint64_t sub_21906C19C()
{
  result = qword_280E98348;
  if (!qword_280E98348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98348);
  }

  return result;
}

unint64_t sub_21906C1F4()
{
  result = qword_280E98350;
  if (!qword_280E98350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98350);
  }

  return result;
}

unint64_t sub_21906C248(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21906C294()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000040;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C(0);
  sub_21906C8B8(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v10, v12);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_21906C8B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21906C900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OfflineFeedManifest(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  if (([v9 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v10 = [v9 offlineDownloadsConfig];
  swift_unknownObjectRelease();
  v44 = v10;
  sub_2187381BC(0, &qword_280E8DC00, &qword_280E8DC08, 0x277D31188, MEMORY[0x277D83D88]);
  sub_219BF6F84();

  v11 = v43;
  if (!v43)
  {
LABEL_11:
    if (qword_27CC08680 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
    v41 = __swift_project_value_buffer(v40, qword_27CCD8CA8);
    return sub_21906CD84(v41, a2);
  }

  v44 = MEMORY[0x277D84F90];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 40))(v12, v13);
  v15 = v11;
  v16 = sub_21906CDE8(v14, v15, MEMORY[0x277D30B20]);

  sub_2191EF6DC(v16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 56))(v17, v18);
  v20 = v15;
  v21 = sub_21906D17C(v19, v20, MEMORY[0x277D30B28]);

  sub_2191EF6DC(v21);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 64))(v22, v23);
  v25 = v20;
  v26 = sub_21906CDE8(v24, v25, MEMORY[0x277D30B30]);

  sub_2191EF6DC(v26);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 72))(v27, v28);
  v30 = v25;
  v31 = sub_21906D17C(v29, v30, MEMORY[0x277D30B38]);

  sub_2191EF6DC(v31);
  v32 = v44;
  if (v44 >> 62)
  {
    v33 = sub_219BF7214();
  }

  else
  {
    v33 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_15:
    OfflineFeedManifest.init(_:)(v39, v8);

    sub_2187538EC(v8, a2);
    result = type metadata accessor for OfflineFeedGroupProcessorResult(0);
    *(a2 + *(result + 20)) = v34;
    *(a2 + *(result + 24)) = v32;
    return result;
  }

  v43 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v36 = (v32 + 32);
    do
    {
      v37 = *v36++;
      v38 = [v37 contentManifest];
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v33;
    }

    while (v33);
    v39 = v43;
    v34 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21906CD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21906CDE8(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = v3 + 32;
    v29 = i;
    v30 = v3;
    while (v33)
    {
      v7 = MEMORY[0x21CECE0F0](v5, v3);
      v8 = __OFADD__(v5, 1);
      v9 = v5 + 1;
      if (v8)
      {
        goto LABEL_39;
      }

LABEL_9:
      v10 = a3(v7, a2);
      sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
      v11 = sub_219BF5924();
      swift_unknownObjectRelease();

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_219BF7214();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v15 = sub_219BF7214();
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v13;
      v8 = __OFADD__(v15, v13);
      v16 = v15 + v13;
      if (v8)
      {
        goto LABEL_41;
      }

      v36 = v9;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      v6 = sub_219BF7364();
      v17 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v37 = v6;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        v20 = sub_219BF7214();
        if (v20)
        {
LABEL_25:
          if (((v19 >> 1) - v18) < v39)
          {
            goto LABEL_43;
          }

          v21 = v17 + 8 * v18 + 32;
          if (v12)
          {
            if (v20 < 1)
            {
              goto LABEL_45;
            }

            sub_2187381BC(0, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
            sub_21906D500();
            for (j = 0; j != v20; ++j)
            {
              v23 = sub_218A353D0(v38, j, v11);
              v25 = *v24;
              (v23)(v38, 0);
              *(v21 + 8 * j) = v25;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          i = v29;
          v3 = v30;
          v6 = v37;
          if (v39 >= 1)
          {
            v26 = *(v17 + 16);
            v8 = __OFADD__(v26, v39);
            v27 = v26 + v39;
            if (v8)
            {
              goto LABEL_44;
            }

            *(v17 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v6 = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v5 = v36;
      if (v36 == i)
      {
        return v6;
      }
    }

    if (v5 >= *(v32 + 16))
    {
      goto LABEL_40;
    }

    v7 = *(v31 + 8 * v5);
    swift_unknownObjectRetain();
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_39:
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
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21906D17C(unint64_t a1, uint64_t a2, uint64_t (*a3)(id, uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    v34 = v3 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v32 = v3 + 32;
    v30 = i;
    v31 = v3;
    while (1)
    {
      if (v34)
      {
        v7 = MEMORY[0x21CECE0F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_39;
        }

        v7 = *(v32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v11 = a3(v7, a2);
      sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
      v12 = sub_219BF5924();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_219BF7214();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v6 >> 62;
      if (v6 >> 62)
      {
        v16 = sub_219BF7214();
      }

      else
      {
        v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v14;
      v9 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v9)
      {
        goto LABEL_40;
      }

      v37 = v10;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          v18 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_219BF7214();
        goto LABEL_21;
      }

      if (v15)
      {
        goto LABEL_20;
      }

LABEL_21:
      v6 = sub_219BF7364();
      v18 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v38 = v6;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_219BF7214();
        if (v21)
        {
LABEL_26:
          if (((v20 >> 1) - v19) < v40)
          {
            goto LABEL_42;
          }

          v22 = v18 + 8 * v19 + 32;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_44;
            }

            sub_2187381BC(0, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
            sub_21906D500();
            for (j = 0; j != v21; ++j)
            {
              v24 = sub_218A353D0(v39, j, v12);
              v26 = *v25;
              (v24)(v39, 0);
              *(v22 + 8 * j) = v26;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          i = v30;
          v3 = v31;
          v6 = v38;
          if (v40 >= 1)
          {
            v27 = *(v18 + 16);
            v9 = __OFADD__(v27, v40);
            v28 = v27 + v40;
            if (v9)
            {
              goto LABEL_43;
            }

            *(v18 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      v6 = v38;
      if (v40 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v5 = v37;
      if (v37 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_39:
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
LABEL_45:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21906D500()
{
  result = qword_280E8ED30;
  if (!qword_280E8ED30)
  {
    sub_2187381BC(255, &qword_280E8ED48, &qword_280E8E770, 0x277D30E08, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8ED30);
  }

  return result;
}

uint64_t sub_21906D5A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21906D5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_21906D640(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3 <= 1)
  {
    v5 = *(v1 + 16);
    if (*(v1 + 32))
    {
      v5 = sub_21906E0D0(*(v1 + 16));
      v4 = v18;
      goto LABEL_11;
    }

    v4 = *(v1 + 24);
LABEL_7:

LABEL_11:
    v10 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_13;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  if (v3 != 2)
  {
    if (v3 == 3)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v8 = 0xE000000000000000;
      v5 = sub_219BDB5E4();
      v4 = v9;

      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v11 = MEMORY[0x277D83B88];
  v5 = sub_219BF7894();
  v13 = v12;
  type metadata accessor for Localized();
  v14 = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  if (v4 >= 2)
  {
    sub_2186F20D4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    v17 = MEMORY[0x277D83C10];
    *(v16 + 56) = v11;
    *(v16 + 64) = v17;
    *(v16 + 32) = v4;
    sub_219BF5454();
  }

  v10 = sub_219BF54E4();
  v8 = v19;

  v4 = v13;
LABEL_13:
  *a1 = v5;
  a1[1] = v4;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = v10;
  a1[5] = v8;
}

uint64_t sub_21906D910()
{
  v1 = *(v0 + 32);
  if (v1 <= 1)
  {
    if (*(v0 + 32))
    {
      return 0x697A6167614D796DLL;
    }

    else
    {
      return 0x69726F6765746163;
    }
  }

  else if (v1 == 2)
  {
    v3 = sub_219BF7894();
    MEMORY[0x21CECC330](v3);

    return 0x3A3A7372616579;
  }

  else if (v1 == 3)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    v4 = *v0;

    return v4;
  }
}

uint64_t sub_21906DA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v3;
  v9 = *(a2 + 32);
  sub_21906DD64(v6, v8);
  return v4 & 1;
}

uint64_t sub_21906DAA8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 <= 1)
  {
    if ((v1 - 1) >= 4)
    {
      return sub_219BF5544();
    }
  }

  else
  {
    v3 = v2 != 2 && v2 == 3;
    if (v3 && (v1 - 1) >= 4)
    {
      return sub_219BF5544();
    }
  }

  return 0;
}

uint64_t sub_21906DB24@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_21906DB94()
{
  if (*(v0 + 32) < 4u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_21906DBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_21941838C(*a1, *a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v2 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }
  }

  else if (v5 == 4 || (sub_21908A55C(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_219BF78F4();
}

BOOL sub_21906DCB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21941838C(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v2 != 4)
  {
    if (v4 == 4 || (sub_21908A55C(v2, v4) & 1) == 0)
    {
      return 0;
    }

    return v3 == v5;
  }

  if (v4 == 4)
  {
    return v3 == v5;
  }

  return 0;
}

void sub_21906DD64(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      return;
    }

    if (v5 == 3)
    {
      if (*(a2 + 32) == 3)
      {
        v6 = *a2;
        v7 = *(v3 + 16);
        if (v7 == *(*a2 + 16))
        {
          v8 = *(a2 + 8);
          if (v7)
          {
            v9 = v6 == v3;
          }

          else
          {
            v9 = 1;
          }

          if (!v9)
          {
            v10 = (v3 + 32);
            v11 = (v6 + 32);
            while (v7)
            {
              v12 = *v10;
              v13 = *v11;

              sub_21941805C(v12, v13);
              v15 = v14;

              if ((v15 & 1) == 0)
              {
                return;
              }

              ++v10;
              ++v11;
              if (!--v7)
              {
                goto LABEL_14;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            return;
          }

LABEL_14:
          if (v4 != 4 && v8 != 4)
          {
            sub_21908A55C(v4, v8);
          }
        }
      }

      return;
    }

    if (*(a2 + 32) != 4 || v3 == *a2 && v4 == a2[1])
    {
      return;
    }

LABEL_47:

    sub_219BF78F4();
    return;
  }

  v16 = a1[2];
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return;
    }

    v17 = *a2;
    v18 = *(v3 + 16);
    if (v18 != *(*a2 + 16))
    {
      return;
    }

    v19 = *(a2 + 8);
    v20 = a2[2];
    v38 = a2[3];
    v39 = a1[3];
    if (v18)
    {
      v21 = v17 == v3;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v3 + 32);
      v23 = (v17 + 32);
      while (v18)
      {
        v24 = *v22;
        v25 = *v23;

        sub_21941805C(v24, v25);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          return;
        }

        ++v22;
        ++v23;
        if (!--v18)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_62;
    }

LABEL_27:
    if (v4 == 4)
    {
      if (v19 != 4)
      {
        return;
      }
    }

    else if (v19 == 4 || (sub_21908A55C(v4, v19) & 1) == 0)
    {
      return;
    }

    if (v16 == v20 && v39 == v38)
    {
      return;
    }

    goto LABEL_47;
  }

  if (*(a2 + 32) == 1)
  {
    v28 = *a2;
    v29 = *(v3 + 16);
    if (v29 == *(*a2 + 16))
    {
      v30 = *(a2 + 8);
      if (v29)
      {
        v31 = v28 == v3;
      }

      else
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = (v3 + 32);
        v33 = (v28 + 32);
        while (v29)
        {
          v34 = *v32;
          v35 = *v33;

          sub_21941805C(v34, v35);
          v37 = v36;

          if ((v37 & 1) == 0)
          {
            return;
          }

          ++v32;
          ++v33;
          if (!--v29)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_61;
      }

LABEL_45:
      if (v4 != 4 && v30 != 4)
      {
        sub_21908A55C(v4, v30);
      }
    }
  }
}

uint64_t sub_21906E0D0(uint64_t a1)
{
  if (a1 < 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_219BDB5E4();

    return v11;
  }

  else
  {
    type metadata accessor for Localized();
    v2 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186F20D4(0);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_219C09BA0;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    v7 = sub_219BF5454();

    return v7;
  }
}

uint64_t sub_21906E2FC(uint64_t a1)
{
  v2 = sub_21906E754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21906E338(uint64_t a1)
{
  v2 = sub_21906E754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21906E374@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21906E7A8(0, &qword_27CC15798, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906E754();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_219BF76F4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_21906E500(void *a1)
{
  sub_21906E7A8(0, &unk_27CC157A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21906E754();
  sub_219BF7B44();
  sub_219BF77F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21906E650()
{
  result = qword_27CC15778;
  if (!qword_27CC15778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15778);
  }

  return result;
}

unint64_t sub_21906E6A8()
{
  result = qword_27CC15780;
  if (!qword_27CC15780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15780);
  }

  return result;
}

unint64_t sub_21906E700()
{
  result = qword_27CC15788;
  if (!qword_27CC15788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15788);
  }

  return result;
}

unint64_t sub_21906E754()
{
  result = qword_27CC15790;
  if (!qword_27CC15790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15790);
  }

  return result;
}

void sub_21906E7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21906E754();
    v7 = a3(a1, &type metadata for IssueSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for MyMagazinesBuildBlueprintModifier(uint64_t a1)
{
  result = qword_27CC157B0;
  if (!qword_27CC157B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21906E880(uint64_t a1)
{
  sub_21907060C(319, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  if (v1 <= 0x3F)
  {
    sub_2186C709C(319, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
    if (v2 <= 0x3F)
    {
      sub_218B7A520();
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21906E98C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v79 = a2;
  v78 = a3;
  v75 = a1;
  v3 = sub_219BE6DF4();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219070278(0, &unk_27CC157E0, MEMORY[0x277D6DF88]);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v59 - v6;
  sub_219070258(0);
  v8 = v7;
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E0BC(0);
  v12 = v11;
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = &v59 - v15;
  sub_21907060C(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = &v59 - v17;
  v62 = type metadata accessor for MyMagazinesIssue(0);
  v65 = *(v62 - 1);
  MEMORY[0x28223BE20](v62);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v59 = (&v59 - v21);
  v64 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v64);
  v68 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21907060C(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  sub_219070338(0);
  v29 = *(v28 - 8);
  v81 = v28;
  v82 = v29;
  MEMORY[0x28223BE20](v28);
  v72 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v59 - v32;
  v34 = sub_218B7E0BC;
  v35 = sub_219070758(&qword_27CC15808, sub_218B7E0BC, MEMORY[0x277D6D720]);
  v36 = sub_219070758(&qword_27CC15810, sub_218B7E0BC, MEMORY[0x277D6D718]);
  v83 = v33;
  v67 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v35, v36);
  (*(v25 + 16))(v27, v80, v24);
  v37 = (*(v25 + 88))(v27, v24);
  if (v37 == *MEMORY[0x277D6C9F0])
  {
    (*(v25 + 8))(v27, v24);
    v38 = v81;
    goto LABEL_15;
  }

  if (v37 != *MEMORY[0x277D6C9E8])
  {
    v38 = v81;
    if (v37 == *MEMORY[0x277D6C9E0])
    {
      goto LABEL_15;
    }

    sub_219BF7514();
    __break(1u);
    goto LABEL_8;
  }

  (*(v25 + 96))(v27, v24);
  v24 = v68;
  sub_2190704B8(v27, v68, type metadata accessor for MyMagazinesState);
  v33 = v63;
  sub_218C00858(v24, v63);
  v34 = v65;
  if ((*(v65 + 48))(v33, 1, v62) != 1)
  {
LABEL_8:
    v62 = type metadata accessor for MyMagazinesIssue;
    v39 = v33;
    v40 = v59;
    sub_2190704B8(v39, v59, type metadata accessor for MyMagazinesIssue);
    sub_2189D2C8C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_219C146A0;
    v42 = *v40;
    *(v41 + 32) = *v40;
    v43 = v42;
    v44 = v60;
    sub_21906F580(0, v41, v60);

    v38 = v81;
    sub_219BE2404();
    (*(v66 + 8))(v44, v67);
    sub_219070458(v40, v62);
    goto LABEL_9;
  }

  sub_2190706F8(v33, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88], sub_21907060C);
  v38 = v81;
LABEL_9:
  v45 = *(v24 + *(v64 + 20));
  v46 = *(v45 + 16);
  if (v46)
  {
    v84 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v47 = v45 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v48 = *(v34 + 9);
    do
    {
      sub_218C007F4(v47, v19);
      v49 = *v19;
      sub_219070458(v19, type metadata accessor for MyMagazinesIssue);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v47 += v48;
      --v46;
    }

    while (v46);
    v50 = v61;
    sub_21906F580(1, v84, v61);

    sub_219BE2404();
    (*(v66 + 8))(v50, v67);
    v51 = v68;
  }

  else
  {
    v51 = v24;
  }

  sub_219070458(v51, type metadata accessor for MyMagazinesState);
LABEL_15:
  (*(v82 + 16))(v72, v83, v38);
  type metadata accessor for MyMagazinesModel(0);
  sub_218B7DFD4();
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
  sub_219BEB2D4();
  sub_219070758(&qword_27CC15818, sub_219070258, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  v52 = sub_219BF5E74();
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v52 == sub_219BF5E74())
  {
    v54 = v69;
    v53 = v70;
    v55 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D6D868], v71);
    sub_219070404();
    v56 = v74;
    sub_219BE85E4();
    v57 = v54;
    v38 = v81;
    (*(v53 + 8))(v57, v55);
  }

  else
  {
    v56 = v74;
    sub_219BE85C4();
  }

  v79(v56);
  (*(v76 + 8))(v56, v77);
  (*(v73 + 8))(v10, v8);
  return (*(v82 + 8))(v83, v38);
}