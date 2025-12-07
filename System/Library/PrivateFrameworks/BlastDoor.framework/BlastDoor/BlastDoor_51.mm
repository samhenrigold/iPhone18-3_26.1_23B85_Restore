unint64_t sub_21448E200()
{
  result = qword_27C914480;
  if (!qword_27C914480)
  {
    result = swift_getWitnessTable(byte_21474D1D8, &type metadata for RCSClientAuthenticityRequest.Method.Name, v0, v1);
    atomic_store(result, &qword_27C914480);
  }

  return result;
}

uint64_t sub_21448E2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21448E2E8()
{
  result = qword_27C914488;
  if (!qword_27C914488)
  {
    result = swift_getWitnessTable(byte_2146FD420, &type metadata for RCSClientAuthenticityRequest, v0, v1);
    atomic_store(result, &qword_27C914488);
  }

  return result;
}

unint64_t sub_21448E33C()
{
  result = qword_27C914490;
  if (!qword_27C914490)
  {
    result = swift_getWitnessTable(byte_2146FD448, &type metadata for RCSClientAuthenticityRequest, v0, v1);
    atomic_store(result, &qword_27C914490);
  }

  return result;
}

uint64_t sub_21448E390(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_21448E3D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21448E480()
{
  result = qword_27C914498;
  if (!qword_27C914498)
  {
    result = swift_getWitnessTable(aAM_1, &type metadata for RCSClientAuthenticityRequest.Method.Name, v0, v1);
    atomic_store(result, &qword_27C914498);
  }

  return result;
}

void sub_21448E4D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2140A0060(0, v1, 0);
    v3 = v39;
    v4 = a1 + 64;
    v5 = sub_2146D9E58();
    v6 = 0;
    v7 = *(a1 + 36);
    v26 = v1;
    v27 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_35;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_36;
      }

      v28 = v6 + 1;
      v10 = *(a1 + 56);
      v35 = *(*(a1 + 48) + v5);
      sub_2140537E4(v10 + 32 * v5, v36);
      v33[0] = v35;
      sub_213FDC730(v36, &v34);
      sub_214493C2C(v33, v31);
      v11 = 0xE100000000000000;
      v12 = 99;
      v13 = v4;
      switch(v31[0])
      {
        case 1:
          v12 = 100;
          break;
        case 2:
          v12 = 115;
          break;
        case 3:
          v12 = 114;
          break;
        case 4:
          v12 = 112;
          break;
        case 5:
          v11 = 0xE200000000000000;
          v12 = 29296;
          break;
        case 6:
          v11 = 0xE200000000000000;
          v12 = 29795;
          break;
        case 7:
          v11 = 0xE200000000000000;
          v12 = 27507;
          break;
        case 8:
          v11 = 0xE200000000000000;
          v12 = 27504;
          break;
        case 9:
          v11 = 0xE200000000000000;
          v12 = 27501;
          break;
        case 0xA:
          v11 = 0xE200000000000000;
          v12 = 25699;
          break;
        case 0xB:
          v11 = 0xE200000000000000;
          v12 = 28777;
          break;
        case 0xC:
          v11 = 0xE200000000000000;
          v12 = 26995;
          break;
        default:
          break;
      }

      *&v37 = v12;
      *(&v37 + 1) = v11;
      sub_214493C2C(v33, v29);
      sub_213FDC730(&v30, v38);
      __swift_destroy_boxed_opaque_existential_1(v32);
      sub_214493C9C(v33);
      v39 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2140A0060((v14 > 1), v15 + 1, 1);
        v3 = v39;
      }

      *(v3 + 16) = v15 + 1;
      v16 = (v3 + 48 * v15);
      v17 = v37;
      v18 = v38[1];
      v16[3] = v38[0];
      v16[4] = v18;
      v16[2] = v17;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_37;
      }

      v19 = *(v13 + 8 * v9);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_38;
      }

      v4 = v13;
      v7 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_39;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (a1 + 72 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_214493D04(v5, v27, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_214493D04(v5, v27, 0);
      }

LABEL_4:
      v5 = v8;
      v6 = v28;
      if (v28 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

unint64_t sub_21448E838@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 16;
  *(v3 + 16) = sub_2140598E0;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_213FB7994;
  v6[3] = 0;
  v6[4] = 32;
  *(v5 + 16) = sub_2140598E0;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_21448EAA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448EBFC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 32;
  *(v4 + 16) = sub_2140598E0;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448ED58@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059904;
  v5[3] = 0;
  v5[4] = 97;
  *(v4 + 16) = sub_214059804;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21448EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v31 = a5;
  v5 = sub_2146D86D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v26 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v16 = swift_initStackObject();
  *(v16 + 16) = v26;
  sub_2146D8668();
  sub_2146D8658();
  sub_2146D8698();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_214493D10(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v18 + 16) = v28;
  *(v18 + 24) = v20;
  *(v16 + 32) = v18;
  v21 = sub_2142E0070(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  *(inited + 32) = v22;
  return sub_214042A28(inited, v24);
}

uint64_t sub_21448F198@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21448F1E4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F240@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F298(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F300@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F358(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t sub_21448F3C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F418(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F480@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F4D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t sub_21448F540@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  *a1 = *(v1 + 208);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F598(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[14].n128_i64[0];
  v7 = v1[14].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[13] = *a1;
  v1[14].n128_u64[0] = v3;
  v1[14].n128_u64[1] = v4;
  v1[15].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F600@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  v5 = *(v1 + 280);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F658(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 264);
  v7 = *(v1 + 272);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 248) = *a1;
  *(v1 + 264) = v3;
  *(v1 + 272) = v4;
  *(v1 + 280) = v5;
  return result;
}

uint64_t sub_21448F6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F718(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[19].n128_i64[0];
  v7 = v1[19].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[18] = *a1;
  v1[19].n128_u64[0] = v3;
  v1[19].n128_u64[1] = v4;
  v1[20].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F780@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F7D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 328) = *a1;
  *(v1 + 344) = v3;
  *(v1 + 352) = v4;
  *(v1 + 360) = v5;
  return result;
}

uint64_t sub_21448F844@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 392);
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  *a1 = *(v1 + 384);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21448F89C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[25].n128_i64[0];
  v7 = v1[25].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[24] = *a1;
  v1[25].n128_u64[0] = v3;
  v1[25].n128_u64[1] = v4;
  v1[26].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21448F904()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21448F980()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_21448FA00()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t sub_21448FA80()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t sub_21448FB00()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

uint64_t sub_21448FB80()
{
  if (*(v0 + 232) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 224);

    return v1;
  }

  return result;
}

uint64_t sub_21448FC00()
{
  if (*(v0 + 272) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 264);

    return v1;
  }

  return result;
}

uint64_t sub_21448FC80()
{
  if (*(v0 + 312) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 304);

    return v1;
  }

  return result;
}

uint64_t sub_21448FD00()
{
  if (*(v0 + 352) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 344);

    return v1;
  }

  return result;
}

uint64_t sub_21448FD80()
{
  if (*(v0 + 408) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 400);

    return v1;
  }

  return result;
}

uint64_t sub_21448FE00()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 112);
  v7 = *(v0 + 152);
  v19 = *(v0 + 104);
  v20 = *(v0 + 144);
  v8 = *(v0 + 192);
  v9 = *(v0 + 232);
  v21 = *(v0 + 184);
  v22 = *(v0 + 224);
  v10 = *(v0 + 272);
  v11 = *(v0 + 312);
  v23 = *(v0 + 264);
  v24 = *(v0 + 304);
  v27 = *(v0 + 352);
  v12 = *(v0 + 368);
  v28 = *(v0 + 376);
  v29 = *(v0 + 377);
  v25 = *(v0 + 344);
  v26 = *(v0 + 400);
  v30 = *(v0 + 408);
  v34 = MEMORY[0x277D84F98];
  if (!v1)
  {
    goto LABEL_37;
  }

  v13 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  v31 = v2;
  v32 = v1;

  sub_214480660(&v31, 0);
  v33 = MEMORY[0x277D839F8];
  v31 = v3;
  sub_214480660(&v31, 1);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v4;
    v32 = v5;

    sub_214480660(&v31, 2);
  }

  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v19;
    v32 = v6;

    sub_214480660(&v31, 3);
  }

  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v20;
    v32 = v7;

    sub_214480660(&v31, 4);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v21;
    v32 = v8;

    sub_214480660(&v31, 5);
  }

  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v22;
    v32 = v9;

    sub_214480660(&v31, 6);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v23;
    v32 = v10;

    sub_214480660(&v31, 7);
  }

  if (v11)
  {
    if (v11 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v24;
    v32 = v11;

    sub_214480660(&v31, 8);
  }

  if (v27)
  {
    if (v27 == 1)
    {
      goto LABEL_37;
    }

    v33 = v13;
    v31 = v25;
    v32 = v27;

    sub_214480660(&v31, 9);
  }

  if ((v28 & 1) == 0)
  {
    v33 = MEMORY[0x277D839F8];
    v31 = v12;
    sub_214480660(&v31, 10);
  }

  if (v29 != 2)
  {
    v33 = MEMORY[0x277D839B0];
    LOBYTE(v31) = v29 & 1;
    sub_214480660(&v31, 11);
  }

  if (!v30)
  {
    goto LABEL_33;
  }

  if (v30 == 1)
  {
LABEL_37:
    sub_2146DA018();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v33 = v13;
  v31 = v26;
  v32 = v30;

  sub_214480660(&v31, 12);
LABEL_33:
  sub_21448E4D8(v34);
  v15 = v14;

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v16 = sub_2146DA058();
  }

  else
  {
    v16 = MEMORY[0x277D84F98];
  }

  v31 = v16;

  sub_2146B7C30(v17, 1, &v31);

  return v31;
}

void sub_2144901A4(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 13;
  if (v4 < 0xD)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_214490254()
{
  result = 99;
  switch(*v0)
  {
    case 1:
      result = 100;
      break;
    case 2:
      result = 115;
      break;
    case 3:
      result = 114;
      break;
    case 4:
      result = 112;
      break;
    case 5:
      result = 29296;
      break;
    case 6:
      result = 29795;
      break;
    case 7:
      result = 27507;
      break;
    case 8:
      result = 27504;
      break;
    case 9:
      result = 27501;
      break;
    case 0xA:
      result = 25699;
      break;
    case 0xB:
      result = 28777;
      break;
    case 0xC:
      result = 26995;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214490300()
{
  v0 = sub_214490250();
  v2 = v1;
  if (v0 == sub_214490250() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21449039C()
{
  sub_2146DA958();
  sub_214490250();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214490404(uint64_t a1)
{
  sub_214490250();
  sub_2146D9698();

  return result;
}

uint64_t sub_214490468(uint64_t a1)
{
  sub_2146DA958();
  sub_214490250();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2144904D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214490250();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21449053C(uint64_t a1)
{
  v2 = sub_214493BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214490578(uint64_t a1)
{
  v2 = sub_214493BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2144905B4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144906FC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214490798(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void sub_214490860(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 64), *(v2 + 72));

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144909A4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void (*sub_214490A7C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

void sub_214490B1C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 88);
  v8 = *(v2 + 120);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 104), *(v2 + 112));

    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214490C60(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void (*sub_214490D38(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

void sub_214490DD8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 128);
  v8 = *(v2 + 160);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 144), *(v2 + 152));

    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214490F1C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2140556C8;
  }

  return result;
}

void (*sub_214490FF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

void sub_214491094(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 168);
  v8 = *(v2 + 200);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 184), *(v2 + 192));

    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144911D8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DF7BC;
  }

  return result;
}

void (*sub_2144912B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

void sub_214491350(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 232);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 224);
    a2[1] = v4;
  }
}

double sub_2144913C4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214491474(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 208);
  v8 = *(v2 + 240);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 224), *(v2 + 232));

    *(v2 + 224) = a1;
    *(v2 + 232) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144915B8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 224);
  *(v3 + 24) = v5;
  v6 = *(v1 + 232);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214491690;
  }

  return result;
}

void sub_214491690(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 208);
    v13 = *(v3 + 240);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 224) = v5;
      *(v9 + 232) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 208);
  v13 = *(v3 + 240);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 224) = v5;
  *(v7 + 232) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214491860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 224);
  v4 = *(a1 + 232);
  v5 = *(a1 + 240);
  *a2 = *(a1 + 208);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2144918B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 224);
  v9 = *(a2 + 232);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 208) = v4;
  *(a2 + 216) = v3;
  *(a2 + 224) = v5;
  *(a2 + 232) = v6;
  *(a2 + 240) = v7;
  return result;
}

void (*sub_21449193C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 216);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);
  *v4 = *(v1 + 208);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144919DC;
}

void sub_2144919DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 224);
  v10 = *(v3 + 232);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 208) = v5;
    *(v3 + 216) = v4;
    *(v3 + 224) = v7;
    *(v3 + 232) = v6;
    *(v3 + 240) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 208) = v5;
    *(v3 + 216) = v4;
    *(v3 + 224) = v7;
    *(v3 + 232) = v6;
    *(v3 + 240) = v8;
  }

  free(v2);
}

void sub_214491ABC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 272);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 264);
    a2[1] = v4;
  }
}

double sub_214491B30(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214491BE0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 248);
  v8 = *(v2 + 280);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 264), *(v2 + 272));

    *(v2 + 264) = a1;
    *(v2 + 272) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214491D24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 264);
  *(v3 + 24) = v5;
  v6 = *(v1 + 272);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214491DFC;
  }

  return result;
}

void sub_214491DFC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 248);
    v13 = *(v3 + 280);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 264) = v5;
      *(v9 + 272) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 248);
  v13 = *(v3 + 280);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 264) = v5;
  *(v7 + 272) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214491FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 256);
  v3 = *(a1 + 264);
  v4 = *(a1 + 272);
  v5 = *(a1 + 280);
  *a2 = *(a1 + 248);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214492020(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 264);
  v9 = *(a2 + 272);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 248) = v4;
  *(a2 + 256) = v3;
  *(a2 + 264) = v5;
  *(a2 + 272) = v6;
  *(a2 + 280) = v7;
  return result;
}

void (*sub_2144920A8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 256);
  v6 = *(v1 + 264);
  v7 = *(v1 + 272);
  v8 = *(v1 + 280);
  *v4 = *(v1 + 248);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214492148;
}

void sub_214492148(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 264);
  v10 = *(v3 + 272);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 248) = v5;
    *(v3 + 256) = v4;
    *(v3 + 264) = v7;
    *(v3 + 272) = v6;
    *(v3 + 280) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 248) = v5;
    *(v3 + 256) = v4;
    *(v3 + 264) = v7;
    *(v3 + 272) = v6;
    *(v3 + 280) = v8;
  }

  free(v2);
}

void sub_214492228(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 312);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 304);
    a2[1] = v4;
  }
}

double sub_21449229C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21449234C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 288);
  v8 = *(v2 + 320);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 304), *(v2 + 312));

    *(v2 + 304) = a1;
    *(v2 + 312) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214492490(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 304);
  *(v3 + 24) = v5;
  v6 = *(v1 + 312);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214492568;
  }

  return result;
}

void sub_214492568(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 288);
    v13 = *(v3 + 320);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 304) = v5;
      *(v9 + 312) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 288);
  v13 = *(v3 + 320);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 304) = v5;
  *(v7 + 312) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214492738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 320);
  *a2 = *(a1 + 288);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21449278C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 304);
  v9 = *(a2 + 312);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 288) = v4;
  *(a2 + 296) = v3;
  *(a2 + 304) = v5;
  *(a2 + 312) = v6;
  *(a2 + 320) = v7;
  return result;
}

void (*sub_214492814(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 296);
  v6 = *(v1 + 304);
  v7 = *(v1 + 312);
  v8 = *(v1 + 320);
  *v4 = *(v1 + 288);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144928B4;
}

void sub_2144928B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 304);
  v10 = *(v3 + 312);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 288) = v5;
    *(v3 + 296) = v4;
    *(v3 + 304) = v7;
    *(v3 + 312) = v6;
    *(v3 + 320) = v8;
  }

  free(v2);
}

void sub_214492994(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 352);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 344);
    a2[1] = v4;
  }
}

double sub_214492A08(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214492AB8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 328);
  v8 = *(v2 + 360);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 344), *(v2 + 352));

    *(v2 + 344) = a1;
    *(v2 + 352) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214492BFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 344);
  *(v3 + 24) = v5;
  v6 = *(v1 + 352);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214492CD4;
  }

  return result;
}

void sub_214492CD4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 328);
    v13 = *(v3 + 360);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 344) = v5;
      *(v9 + 352) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 328);
  v13 = *(v3 + 360);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 344) = v5;
  *(v7 + 352) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214492EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  v4 = *(a1 + 352);
  v5 = *(a1 + 360);
  *a2 = *(a1 + 328);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214492EF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 344);
  v9 = *(a2 + 352);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 328) = v4;
  *(a2 + 336) = v3;
  *(a2 + 344) = v5;
  *(a2 + 352) = v6;
  *(a2 + 360) = v7;
  return result;
}

void (*sub_214492F80(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 336);
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);
  v8 = *(v1 + 360);
  *v4 = *(v1 + 328);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214493020;
}

void sub_214493020(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 344);
  v10 = *(v3 + 352);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 328) = v5;
    *(v3 + 336) = v4;
    *(v3 + 344) = v7;
    *(v3 + 352) = v6;
    *(v3 + 360) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 328) = v5;
    *(v3 + 336) = v4;
    *(v3 + 344) = v7;
    *(v3 + 352) = v6;
    *(v3 + 360) = v8;
  }

  free(v2);
}

uint64_t sub_21449310C(uint64_t result, char a2)
{
  *(v2 + 368) = result;
  *(v2 + 376) = a2 & 1;
  return result;
}

void sub_21449316C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 408);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 400);
    a2[1] = v4;
  }
}

double sub_2144931E0(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214493290(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 384);
  v8 = *(v2 + 416);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 400), *(v2 + 408));

    *(v2 + 400) = a1;
    *(v2 + 408) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144933D4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 400);
  *(v3 + 24) = v5;
  v6 = *(v1 + 408);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144934AC;
  }

  return result;
}

void sub_2144934AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 384);
    v13 = *(v3 + 416);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 400) = v5;
      *(v9 + 408) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 384);
  v13 = *(v3 + 416);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 400) = v5;
  *(v7 + 408) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21449367C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 392);
  v3 = *(a1 + 400);
  v4 = *(a1 + 408);
  v5 = *(a1 + 416);
  *a2 = *(a1 + 384);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2144936D0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 400);
  v9 = *(a2 + 408);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 384) = v4;
  *(a2 + 392) = v3;
  *(a2 + 400) = v5;
  *(a2 + 408) = v6;
  *(a2 + 416) = v7;
  return result;
}

void (*sub_214493758(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 392);
  v6 = *(v1 + 400);
  v7 = *(v1 + 408);
  v8 = *(v1 + 416);
  *v4 = *(v1 + 384);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144937F8;
}

void sub_2144937F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 400);
  v10 = *(v3 + 408);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 384) = v5;
    *(v3 + 392) = v4;
    *(v3 + 400) = v7;
    *(v3 + 408) = v6;
    *(v3 + 416) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 384) = v5;
    *(v3 + 392) = v4;
    *(v3 + 400) = v7;
    *(v3 + 408) = v6;
    *(v3 + 416) = v8;
  }

  free(v2);
}

uint64_t sub_2144938D8()
{
  sub_21448FE00();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_21449392C()
{
  sub_21448FE00();
  v0 = sub_2146D9468();

  return v0;
}

unint64_t sub_214493984()
{
  result = qword_27C9144A0;
  if (!qword_27C9144A0)
  {
    result = swift_getWitnessTable(aYM_1, &type metadata for StatusKitInvitation.StatusKitInvitationKey, v0, v1);
    atomic_store(result, &qword_27C9144A0);
  }

  return result;
}

unint64_t sub_2144939DC()
{
  result = qword_27C9144A8;
  if (!qword_27C9144A8)
  {
    result = swift_getWitnessTable(byte_21474D688, &type metadata for StatusKitInvitation.StatusKitInvitationKey, v0, v1);
    atomic_store(result, &qword_27C9144A8);
  }

  return result;
}

unint64_t sub_214493A34()
{
  result = qword_27C9144B0;
  if (!qword_27C9144B0)
  {
    result = swift_getWitnessTable(aYM_2, &type metadata for StatusKitInvitation.StatusKitInvitationKey, v0, v1);
    atomic_store(result, &qword_27C9144B0);
  }

  return result;
}

unint64_t sub_214493A88(uint64_t a1)
{
  *(a1 + 8) = sub_21431FB9C();
  result = sub_21431F368();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214493AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 417))
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

uint64_t sub_214493B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 416) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 417) = 1;
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

    *(result + 417) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214493BD8()
{
  result = qword_27C9144B8;
  if (!qword_27C9144B8)
  {
    result = swift_getWitnessTable(byte_21474D610, &type metadata for StatusKitInvitation.StatusKitInvitationKey, v0, v1);
    atomic_store(result, &qword_27C9144B8);
  }

  return result;
}

uint64_t sub_214493C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144C0, qword_21474D958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214493C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144C0, qword_21474D958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_214493D04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_214493D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainsOnlyCharacterSetValidator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for ContainsOnlyCharacterSetValidator(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2146D86D8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214493E44(void *a1, uint64_t a2)
{
  type metadata accessor for ContainsOnlyCharacterSetValidator(0);

  return sub_21460413C(a1);
}

uint64_t type metadata accessor for SwiftRegexValidator(uint64_t a1)
{
  result = qword_27C9144C8;
  if (!qword_27C9144C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214493F40(uint64_t a1)
{
  sub_214493FAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_214493FAC()
{
  if (!qword_27C9144D8)
  {
    v0 = sub_2146D8DC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27C9144D8);
    }
  }
}

unint64_t sub_214493FFC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FB7994;
  v4[3] = 0;
  v4[4] = 300;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21408E9E0;
  *(v6 + 24) = v5;
  *(inited + 40) = v6;
  return sub_2140433DC(inited, a1);
}

uint64_t sub_214494148@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v3;
}

uint64_t type metadata accessor for MarkAsReviewedCommand(uint64_t a1)
{
  result = qword_280B2EF98;
  if (!qword_280B2EF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_2144941F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = (v1 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20));

  result = *a1;
  *v5 = *a1;
  v5[1].n128_u64[0] = v3;
  v5[1].n128_u8[8] = v4;
  return result;
}

void sub_21449425C()
{
  if (*(v0 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20) + 16))
  {
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

void sub_214494310(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20) + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_2144943A4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MarkAsReviewedCommand(0);
  sub_2140325F8(v1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214494460(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20);
  v8 = a1;
  v4 = *v3;
  v7 = *(v3 + 24);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v4(&v8, &v7, v6))
  {

    *(v3 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2144945A8(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MarkAsReviewedCommand(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    *a1 = v4;

    return sub_2140652FC;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214494658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
}

void sub_2144946BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a2 + *(type metadata accessor for MarkAsReviewedCommand(0) + 20);

  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void (*sub_214494740(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(type metadata accessor for MarkAsReviewedCommand(0) + 20);
  *(v4 + 28) = v5;
  v6 = (v1 + v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  LOBYTE(v6) = *(v6 + 24);
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;

  return sub_214065740;
}

uint64_t sub_2144947EC(uint64_t a1)
{
  *(a1 + 8) = sub_214494854(&qword_27C9144E0, byte_2146FAC20);
  result = sub_214494854(&qword_27C9144E8, byte_2146FAC48);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214494854(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MarkAsReviewedCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144948C0(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_214494944(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214494944(uint64_t a1)
{
  if (!qword_280B2E568)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v5 = type metadata accessor for Validated(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280B2E568);
    }
  }
}

__n128 PassPreview.init(headerImage:icon:background:primaryText:secondaryText:tertiaryText:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, const void *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a4[1];
  v34 = *a4;
  v11 = *(a4 + 4);
  v10 = *(a4 + 5);
  v12 = (a7 + 1352);
  v13 = *a5;
  v35 = *(a5 + 3);
  v36 = *(a5 + 1);
  v14 = a5[5];
  v39 = *(a6 + 3);
  v40 = *(a6 + 1);
  v37 = a6[5];
  v38 = *a6;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 256) = 0u;
  *(a7 + 272) = 0x1FFFFFFFELL;
  v15 = (a7 + 280);
  *(a7 + 280) = 0u;
  *(a7 + 296) = 0u;
  *(a7 + 312) = 0u;
  *(a7 + 328) = 0u;
  *(a7 + 344) = 0u;
  *(a7 + 360) = 0u;
  *(a7 + 376) = 0u;
  *(a7 + 392) = 0u;
  *(a7 + 408) = 0u;
  *(a7 + 424) = 0u;
  *(a7 + 440) = 0u;
  *(a7 + 456) = 0u;
  *(a7 + 472) = 0u;
  *(a7 + 488) = 0u;
  *(a7 + 504) = 0u;
  *(a7 + 520) = 0u;
  *(a7 + 536) = 0u;
  *(a7 + 552) = 0u;
  *(a7 + 568) = 0u;
  *(a7 + 584) = 0u;
  *(a7 + 600) = 0u;
  *(a7 + 616) = 0u;
  *(a7 + 632) = 0u;
  *(a7 + 648) = 0u;
  *(a7 + 664) = 0u;
  *(a7 + 680) = 0u;
  *(a7 + 696) = 0u;
  *(a7 + 712) = 0x1FFFFFFFELL;
  *(a7 + 720) = 0u;
  *(a7 + 736) = 0u;
  *(a7 + 752) = 0u;
  *(a7 + 768) = 0u;
  *(a7 + 784) = 0u;
  *(a7 + 800) = 0u;
  *(a7 + 816) = 0u;
  *(a7 + 832) = 0u;
  *(a7 + 848) = 0u;
  *(a7 + 864) = 0u;
  *(a7 + 1352) = 0u;
  *(a7 + 1368) = 0u;
  *(a7 + 1384) = 0u;
  *(a7 + 1400) = 0u;
  *(a7 + 1416) = 0u;
  *(a7 + 1432) = 0u;
  *(a7 + 1448) = 0u;
  *(a7 + 1464) = 0u;
  *(a7 + 1480) = 0u;
  if (*(a1 + 3))
  {
    v65 = a1[12];
    v67 = a1[13];
    v69 = a1[14];
    v71 = *(a1 + 30);
    v57 = a1[8];
    v59 = a1[9];
    v61 = a1[10];
    v63 = a1[11];
    v49 = a1[4];
    v51 = a1[5];
    v53 = a1[6];
    v55 = a1[7];
    v41 = *a1;
    v43 = a1[1];
    v45 = a1[2];
    v47 = a1[3];
    sub_213FB2DF4(a7, &qword_27C9144F0, qword_21475A4B0);
    LOWORD(v73) = 0;
    sub_2140615D0(&v73);
    v16 = v81;
    v17 = v83;
    v18 = v84;
    *(a7 + 392) = v82;
    *(a7 + 408) = v17;
    *(a7 + 424) = v18;
    v19 = v77;
    v20 = v79;
    v21 = v80;
    *(a7 + 328) = v78;
    *(a7 + 344) = v20;
    *(a7 + 360) = v21;
    *(a7 + 376) = v16;
    v22 = v74;
    *(a7 + 248) = v73;
    v23 = v75;
    v24 = v76;
    *(a7 + 264) = v22;
    *(a7 + 280) = v23;
    *(a7 + 296) = v24;
    *(a7 + 312) = v19;
    *(a7 + 240) = 0;
    *(a7 + 208) = 0u;
    *(a7 + 224) = 0u;
    *(a7 + 176) = 0u;
    *(a7 + 192) = 0u;
    *(a7 + 144) = 0u;
    *(a7 + 160) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    sub_213FB2DF4(a7, &qword_27C904858, &qword_214736F00);
    *(a7 + 192) = v65;
    *(a7 + 208) = v67;
    *(a7 + 224) = v69;
    *(a7 + 240) = v71;
    *(a7 + 128) = v57;
    *(a7 + 144) = v59;
    *(a7 + 160) = v61;
    *(a7 + 176) = v63;
    *(a7 + 64) = v49;
    *(a7 + 80) = v51;
    *(a7 + 96) = v53;
    *(a7 + 112) = v55;
    *a7 = v41;
    *(a7 + 16) = v43;
    *(a7 + 32) = v45;
    *(a7 + 48) = v47;
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C904858, &qword_214736F00);
    sub_213FB2DF4(a7, &qword_27C9144F0, qword_21475A4B0);
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 80) = 0u;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 144) = 0u;
    *(a7 + 160) = 0u;
    *(a7 + 176) = 0u;
    *(a7 + 192) = 0u;
    *(a7 + 208) = 0u;
    *(a7 + 224) = 0u;
    *(a7 + 240) = 0u;
    *(a7 + 256) = 0u;
    *(a7 + 272) = 0x1FFFFFFFELL;
    *v15 = 0u;
    v15[1] = 0u;
    v15[2] = 0u;
    v15[3] = 0u;
    v15[4] = 0u;
    v15[5] = 0u;
    v15[6] = 0u;
    v15[7] = 0u;
    v15[8] = 0u;
    v15[9] = 0u;
  }

  v25 = (a7 + 440);
  if (*(a2 + 3))
  {
    v66 = a2[12];
    v68 = a2[13];
    v70 = a2[14];
    v72 = *(a2 + 30);
    v58 = a2[8];
    v60 = a2[9];
    v62 = a2[10];
    v64 = a2[11];
    v50 = a2[4];
    v52 = a2[5];
    v54 = a2[6];
    v56 = a2[7];
    v42 = *a2;
    v44 = a2[1];
    v46 = a2[2];
    v48 = a2[3];
    sub_213FB2DF4(a7 + 440, &qword_27C9144F0, qword_21475A4B0);
    LOWORD(v73) = 0;
    sub_2140615D0(&v73);
    v26 = v82;
    *(a7 + 816) = v81;
    *(a7 + 832) = v26;
    v27 = v84;
    *(a7 + 848) = v83;
    *(a7 + 864) = v27;
    v28 = v78;
    *(a7 + 752) = v77;
    *(a7 + 768) = v28;
    v29 = v80;
    *(a7 + 784) = v79;
    *(a7 + 800) = v29;
    v30 = v74;
    *(a7 + 688) = v73;
    *(a7 + 704) = v30;
    v31 = v76;
    *(a7 + 720) = v75;
    *(a7 + 736) = v31;
    *(a7 + 680) = 0;
    *(a7 + 648) = 0u;
    *(a7 + 664) = 0u;
    *(a7 + 616) = 0u;
    *(a7 + 632) = 0u;
    *(a7 + 584) = 0u;
    *(a7 + 600) = 0u;
    *(a7 + 552) = 0u;
    *(a7 + 568) = 0u;
    *(a7 + 520) = 0u;
    *(a7 + 536) = 0u;
    *(a7 + 488) = 0u;
    *(a7 + 504) = 0u;
    *(a7 + 456) = 0u;
    *(a7 + 472) = 0u;
    *v25 = 0u;
    sub_213FB2DF4(a7 + 440, &qword_27C904858, &qword_214736F00);
    *(a7 + 632) = v66;
    *(a7 + 648) = v68;
    *(a7 + 664) = v70;
    *(a7 + 680) = v72;
    *(a7 + 568) = v58;
    *(a7 + 584) = v60;
    *(a7 + 600) = v62;
    *(a7 + 616) = v64;
    *(a7 + 504) = v50;
    *(a7 + 520) = v52;
    *(a7 + 536) = v54;
    *(a7 + 552) = v56;
    *v25 = v42;
    *(a7 + 456) = v44;
    *(a7 + 472) = v46;
    *(a7 + 488) = v48;
  }

  else
  {
    sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
    sub_213FB2DF4(a7 + 440, &qword_27C9144F0, qword_21475A4B0);
    *v25 = 0u;
    *(a7 + 456) = 0u;
    *(a7 + 472) = 0u;
    *(a7 + 488) = 0u;
    *(a7 + 504) = 0u;
    *(a7 + 520) = 0u;
    *(a7 + 536) = 0u;
    *(a7 + 552) = 0u;
    *(a7 + 568) = 0u;
    *(a7 + 584) = 0u;
    *(a7 + 600) = 0u;
    *(a7 + 616) = 0u;
    *(a7 + 632) = 0u;
    *(a7 + 648) = 0u;
    *(a7 + 664) = 0u;
    *(a7 + 680) = 0u;
    *(a7 + 696) = 0u;
    *(a7 + 712) = 0x1FFFFFFFELL;
    *(a7 + 720) = 0u;
    *(a7 + 736) = 0u;
    *(a7 + 752) = 0u;
    *(a7 + 768) = 0u;
    *(a7 + 784) = 0u;
    *(a7 + 800) = 0u;
    *(a7 + 816) = 0u;
    *(a7 + 832) = 0u;
    *(a7 + 848) = 0u;
    *(a7 + 864) = 0u;
  }

  memcpy((a7 + 880), a3, 0x1D8uLL);

  *v12 = v34;
  v12[1] = v33;
  *(a7 + 1384) = v11;
  *(a7 + 1392) = v10;

  *(a7 + 1400) = v13;
  *(a7 + 1424) = v35;
  *(a7 + 1408) = v36;
  *(a7 + 1440) = v14;

  *(a7 + 1448) = v38;
  result = v40;
  *(v12 + 120) = v39;
  *(v12 + 104) = v40;
  *(a7 + 1488) = v37;
  return result;
}

__n128 PassPreview.PassImage.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

uint64_t PassPreview.PassText.text.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PassPreview.PassText.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void __swiftcall PassPreview.PassText.init(text:color:)(BlastDoor::PassPreview::PassText *__return_ptr retstr, Swift::String text, BlastDoor::Color color)
{
  retstr->text = text;
  v4 = v3[1];
  *&retstr->color.red = *v3;
  *&retstr->color.blue = v4;
}

uint64_t sub_214494FD8()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1954047348;
  }
}

void sub_214495008(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2144950E0(uint64_t a1)
{
  v2 = sub_2144952EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449511C(uint64_t a1)
{
  v2 = sub_2144952EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassText.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9144F8, "Z4\b");
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144952EC();
  sub_2146DAA28();
  LOBYTE(v12) = 0;
  sub_2146DA328();
  if (!v2)
  {
    v12 = v10;
    v13 = v9;
    v14 = 1;
    sub_2142FCF88();
    sub_2146DA388();
  }

  return (*(v11 + 8))(v6, v4);
}

unint64_t sub_2144952EC()
{
  result = qword_27C914500;
  if (!qword_27C914500)
  {
    result = swift_getWitnessTable(aOm_0, &type metadata for PassPreview.PassText.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914500);
  }

  return result;
}

void PassPreview.PassText.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914508, &qword_21474DA10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144952EC();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v9 = sub_2146DA168();
    v11 = v10;
    v12 = v9;
    v16 = 1;
    sub_2142FCE0C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v13 = v15[0];
    v14 = v15[1];
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t PassPreview.PassImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*PassPreview.PassImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PassPreview.PassImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*PassPreview.PassImage.$image.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_2144957F8(uint64_t a1)
{
  v2 = sub_2144959E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214495834(uint64_t a1)
{
  v2 = sub_2144959E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassImage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914510, &qword_21474DA18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2144959E0()
{
  result = qword_27C914518;
  if (!qword_27C914518)
  {
    result = swift_getWitnessTable(aYom, &type metadata for PassPreview.PassImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914518);
  }

  return result;
}

uint64_t PassPreview.PassImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914520, &qword_21474DA20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  LOWORD(v26[0]) = 0;
  sub_2140615D0(v26);
  v23 = v26[9];
  v24 = v26[10];
  v25 = v26[11];
  v19 = v26[5];
  v20 = v26[6];
  v21 = v26[7];
  v22 = v26[8];
  v15 = v26[1];
  v16 = v26[2];
  v17 = v26[3];
  v18 = v26[4];
  v14 = v26[0];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    sub_21402EDB8(&v11, v12, &qword_27C905500, &qword_2146F2BE0);
    sub_214495CA4(v12, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214495C74(v12);
}

uint64_t sub_214495CF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914510, &qword_21474DA18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144959E0();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 PassPreview.PassBackground.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 440);
  v3 = *(v1 + 456);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 PassPreview.PassBackground.init(image:color:)@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = (a3 + 440);
  v6 = a2[1];
  v7 = *a2;
  if (*(a1 + 3))
  {
    v20 = a1[12];
    v21 = a1[13];
    v22 = a1[14];
    v23 = *(a1 + 30);
    v16 = a1[8];
    v17 = a1[9];
    v18 = a1[10];
    v19 = a1[11];
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[7];
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    LOWORD(v25[0]) = 0;
    sub_2140615D0(v25);
    *(&__src[24] + 8) = v25[9];
    *(&__src[25] + 8) = v25[10];
    *(&__src[26] + 8) = v25[11];
    *(&__src[20] + 8) = v25[5];
    *(&__src[21] + 8) = v25[6];
    *(&__src[22] + 8) = v25[7];
    *(&__src[23] + 8) = v25[8];
    *(&__src[16] + 8) = v25[1];
    *(&__src[17] + 8) = v25[2];
    *(&__src[18] + 8) = v25[3];
    *(&__src[19] + 8) = v25[4];
    *(&__src[15] + 8) = v25[0];
    memset(__src, 0, 248);
    sub_213FB2DF4(__src, &qword_27C904858, &qword_214736F00);
    __src[12] = v20;
    __src[13] = v21;
    __src[14] = v22;
    *&__src[15] = v23;
    __src[8] = v16;
    __src[9] = v17;
    __src[10] = v18;
    __src[11] = v19;
    __src[4] = v12;
    __src[5] = v13;
    __src[6] = v14;
    __src[7] = v15;
    __src[0] = v8;
    __src[1] = v9;
    __src[2] = v10;
    __src[3] = v11;
    memcpy(a3, __src, 0x1B8uLL);
  }

  else
  {
    sub_213FB2DF4(a1, &qword_27C904858, &qword_214736F00);
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[10] = 0u;
    a3[11] = 0u;
    a3[12] = 0u;
    a3[13] = 0u;
    a3[14] = 0u;
    a3[15] = 0u;
    a3[16] = 0u;
    *(a3 + 34) = 0x1FFFFFFFELL;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 328) = 0u;
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    *(a3 + 376) = 0u;
    *(a3 + 392) = 0u;
    *(a3 + 408) = 0u;
    *(a3 + 424) = 0u;
  }

  result = v6;
  *v4 = v7;
  v4[1] = v6;
  return result;
}

uint64_t sub_21449607C()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6567616D69;
  }
}

void sub_2144960A8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21449617C(uint64_t a1)
{
  v2 = sub_214496384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144961B8(uint64_t a1)
{
  v2 = sub_214496384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.PassBackground.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914528, &qword_21474DA28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496384();
  sub_2146DAA28();
  LOBYTE(v12) = 0;
  sub_2144963D8();
  sub_2146DA308();
  if (!v2)
  {
    v9 = *(v3 + 456);
    v12 = *(v3 + 440);
    v13 = v9;
    v11[15] = 1;
    sub_2142FCF88();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_214496384()
{
  result = qword_27C914530;
  if (!qword_27C914530)
  {
    result = swift_getWitnessTable(byte_21474ED60, &type metadata for PassPreview.PassBackground.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914530);
  }

  return result;
}

unint64_t sub_2144963D8()
{
  result = qword_27C914538;
  if (!qword_27C914538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassImage, &type metadata for PassPreview.PassImage, v0, v1);
    atomic_store(result, &qword_27C914538);
  }

  return result;
}

uint64_t PassPreview.PassBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914540, &qword_21474DA30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496384();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v11;
  v16 = 0;
  sub_21449665C();
  sub_2146DA148();
  memcpy(v13, v12, sizeof(v13));
  v16 = 1;
  sub_2142FCE0C();
  sub_2146DA1C8();
  (*(v5 + 8))(v7, v4);
  v14 = v12[0];
  v15 = v12[1];
  sub_2144966B0(v13, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2144966E8(v13);
}

unint64_t sub_21449665C()
{
  result = qword_27C914548;
  if (!qword_27C914548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassImage, &type metadata for PassPreview.PassImage, v0, v1);
    atomic_store(result, &qword_27C914548);
  }

  return result;
}

double PassPreview.primaryText.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1392);
  *a1 = *(v1 + 1352);
  *(a1 + 8) = *(v1 + 1360);
  *(a1 + 24) = *(v1 + 1376);
  *(a1 + 40) = v2;

  return result;
}

__n128 PassPreview.primaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1352) = *a1;
  *(v1 + 1368) = v6;
  *(v1 + 1384) = v3;
  *(v1 + 1392) = v4;
  return result;
}

double PassPreview.secondaryText.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1440);
  *a1 = *(v1 + 1400);
  *(a1 + 8) = *(v1 + 1408);
  *(a1 + 24) = *(v1 + 1424);
  *(a1 + 40) = v2;

  return result;
}

__n128 PassPreview.secondaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1400) = *a1;
  *(v1 + 1416) = v6;
  *(v1 + 1432) = v3;
  *(v1 + 1440) = v4;
  return result;
}

double PassPreview.tertiaryText.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1488);
  *a1 = *(v1 + 1448);
  *(a1 + 8) = *(v1 + 1456);
  *(a1 + 24) = *(v1 + 1472);
  *(a1 + 40) = v2;

  return result;
}

__n128 PassPreview.tertiaryText.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 1448) = *a1;
  *(v1 + 1464) = v6;
  *(v1 + 1480) = v3;
  *(v1 + 1488) = v4;
  return result;
}

__n128 PassPreview.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1320);
  v3 = *(v1 + 1336);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double PassPreview.Constraints.workingDirectory.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t PassPreview.Constraints.init(workingDirectory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_214496ADC(uint64_t a1)
{
  v2 = sub_214496CD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214496B18(uint64_t a1)
{
  v2 = sub_214496CD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.Constraints.encode(to:)(void *a1)
{
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914550, &qword_21474DA38);
  v3 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496CD4();

  sub_2146DAA28();
  v11[1] = v6;
  v11[2] = v7;
  v12 = v8;
  sub_2140A6418();
  v9 = v11[0];
  sub_2146DA388();

  return (*(v3 + 8))(v5, v9);
}

unint64_t sub_214496CD4()
{
  result = qword_27C914558;
  if (!qword_27C914558)
  {
    result = swift_getWitnessTable(byte_21474ED10, &type metadata for PassPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914558);
  }

  return result;
}

uint64_t PassPreview.Constraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914560, &qword_21474DA40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214496CD4();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406100C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v9 = v12[2];
    v10 = v13;
    *a2 = v12[1];
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214496ED0()
{
  v1 = *v0;
  v2 = 0x6D49726564616568;
  v3 = 0x547972616D697270;
  v4 = 0x7261646E6F636573;
  if (v1 != 4)
  {
    v4 = 0x7972616974726574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 0x756F72676B636162;
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

uint64_t sub_214496FAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214498660(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214496FD4(uint64_t a1)
{
  v2 = sub_214497340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214497010(uint64_t a1)
{
  v2 = sub_214497340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassPreview.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914568, &qword_21474DA48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214497340();
  sub_2146DAA28();
  LOBYTE(v15) = 0;
  sub_2144963D8();
  sub_2146DA308();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_2146DA308();
    LOBYTE(v15) = 2;
    sub_214497394();
    sub_2146DA388();
    v9 = *(v3 + 1392);
    v15 = *(v3 + 1352);
    v16 = *(v3 + 1360);
    v17 = *(v3 + 1376);
    v18 = v9;
    v14 = 3;
    sub_2144973E8();

    sub_2146DA308();

    v10 = *(v3 + 1440);
    v15 = *(v3 + 1400);
    v16 = *(v3 + 1408);
    v17 = *(v3 + 1424);
    v18 = v10;
    v14 = 4;

    sub_2146DA308();

    v11 = *(v3 + 1488);
    v15 = *(v3 + 1448);
    v16 = *(v3 + 1456);
    v17 = *(v3 + 1472);
    v18 = v11;
    v14 = 5;

    sub_2146DA308();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_214497340()
{
  result = qword_27C914570;
  if (!qword_27C914570)
  {
    result = swift_getWitnessTable(aIM_0, &type metadata for PassPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914570);
  }

  return result;
}

unint64_t sub_214497394()
{
  result = qword_27C914578;
  if (!qword_27C914578)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassBackground, &type metadata for PassPreview.PassBackground, v0, v1);
    atomic_store(result, &qword_27C914578);
  }

  return result;
}

unint64_t sub_2144973E8()
{
  result = qword_27C914580;
  if (!qword_27C914580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassText, &type metadata for PassPreview.PassText, v0, v1);
    atomic_store(result, &qword_27C914580);
  }

  return result;
}

void PassPreview.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  *&v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914588, &qword_21474DA50);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v14 - v5;
  memset(v20, 0, sizeof(v20));
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v21 = 0x1FFFFFFFELL;
  v33 = 0x1FFFFFFFELL;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214497340();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FB2DF4(v20, &qword_27C9144F0, qword_21475A4B0);
    sub_213FB2DF4(v32, &qword_27C9144F0, qword_21475A4B0);
  }

  else
  {
    *&v16 = v4;
    v54 = 0;
    sub_21449665C();
    v7 = v18;
    sub_2146DA148();
    sub_21402EDB8(v19, v20, &qword_27C9144F0, qword_21475A4B0);
    v54 = 1;
    sub_2146DA148();
    sub_21402EDB8(v19, v32, &qword_27C9144F0, qword_21475A4B0);
    v54 = 2;
    sub_21449797C();
    sub_2146DA1C8();
    memcpy(v44, v19, sizeof(v44));
    v54 = 3;
    sub_2144979D0();
    sub_2146DA148();
    v8 = *&v19[32];
    v9 = *&v19[40];
    v14 = *&v19[16];
    v15 = *v19;

    v45 = v15;
    v46 = v14;
    *&v47 = v8;
    *(&v47 + 1) = v9;
    v54 = 4;
    sub_2146DA148();
    v10 = *&v19[32];
    v11 = *&v19[40];
    v14 = *&v19[16];
    v15 = *v19;

    v48 = v15;
    v49 = v14;
    *&v50 = v10;
    *(&v50 + 1) = v11;
    v54 = 5;
    sub_2146DA148();
    (*(v16 + 8))(v6, v7);
    v12 = *&v19[32];
    v13 = *&v19[40];
    v18 = *v19;
    v16 = *&v19[16];

    v51 = v18;
    v52 = v16;
    *&v53 = v12;
    *(&v53 + 1) = v13;
    sub_214497A24(v20, v17);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_214497A5C(v20);
  }
}

unint64_t sub_21449797C()
{
  result = qword_27C914590;
  if (!qword_27C914590)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassBackground, &type metadata for PassPreview.PassBackground, v0, v1);
    atomic_store(result, &qword_27C914590);
  }

  return result;
}

unint64_t sub_2144979D0()
{
  result = qword_27C914598;
  if (!qword_27C914598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.PassText, &type metadata for PassPreview.PassText, v0, v1);
    atomic_store(result, &qword_27C914598);
  }

  return result;
}

unint64_t sub_214497A90()
{
  result = qword_27C9145A0;
  if (!qword_27C9145A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.Constraints, &type metadata for PassPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C9145A0);
  }

  return result;
}

unint64_t sub_214497AE8()
{
  result = qword_27C9145A8;
  if (!qword_27C9145A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview.Constraints, &type metadata for PassPreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C9145A8);
  }

  return result;
}

unint64_t sub_214497B3C(uint64_t a1)
{
  result = sub_214497B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214497B64()
{
  result = qword_27C9145B0;
  if (!qword_27C9145B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview, &type metadata for PassPreview, v0, v1);
    atomic_store(result, &qword_27C9145B0);
  }

  return result;
}

unint64_t sub_214497BB8(uint64_t a1)
{
  *(a1 + 8) = sub_214497BE8();
  result = sub_214497C3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214497BE8()
{
  result = qword_27C9145B8;
  if (!qword_27C9145B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview, &type metadata for PassPreview, v0, v1);
    atomic_store(result, &qword_27C9145B8);
  }

  return result;
}

unint64_t sub_214497C3C()
{
  result = qword_27C9145C0;
  if (!qword_27C9145C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PassPreview, &type metadata for PassPreview, v0, v1);
    atomic_store(result, &qword_27C9145C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor11PassPreviewV0C5ImageVSg(uint64_t a1)
{
  if ((*(a1 + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214497CE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1496))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 272) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_214497D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1496) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1496) = 0;
    }

    if (a2)
    {
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 264) = 0;
      *(result + 272) = 2 * ~a2;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0u;
      *(result + 408) = 0u;
      *(result + 424) = 0u;
    }
  }

  return result;
}

uint64_t sub_214497F74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 472))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 272) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_214497FD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 472) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 472) = 0;
    }

    if (a2)
    {
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 264) = 0;
      *(result + 272) = 2 * ~a2;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0u;
      *(result + 408) = 0u;
      *(result + 424) = 0u;
    }
  }

  return result;
}

unint64_t sub_21449813C()
{
  result = qword_27C9145C8;
  if (!qword_27C9145C8)
  {
    result = swift_getWitnessTable(byte_21474E9B8, &type metadata for PassPreview.PassText.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145C8);
  }

  return result;
}

unint64_t sub_214498194()
{
  result = qword_27C9145D0;
  if (!qword_27C9145D0)
  {
    result = swift_getWitnessTable(aY_27, &type metadata for PassPreview.PassImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145D0);
  }

  return result;
}

unint64_t sub_2144981EC()
{
  result = qword_27C9145D8;
  if (!qword_27C9145D8)
  {
    result = swift_getWitnessTable(byte_21474EB28, &type metadata for PassPreview.PassBackground.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145D8);
  }

  return result;
}

unint64_t sub_214498244()
{
  result = qword_27C9145E0;
  if (!qword_27C9145E0)
  {
    result = swift_getWitnessTable(aM_113, &type metadata for PassPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145E0);
  }

  return result;
}

unint64_t sub_21449829C()
{
  result = qword_27C9145E8;
  if (!qword_27C9145E8)
  {
    result = swift_getWitnessTable(a1_8, &type metadata for PassPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145E8);
  }

  return result;
}

unint64_t sub_2144982F4()
{
  result = qword_27C9145F0;
  if (!qword_27C9145F0)
  {
    result = swift_getWitnessTable(byte_21474EC08, &type metadata for PassPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145F0);
  }

  return result;
}

unint64_t sub_21449834C()
{
  result = qword_27C9145F8;
  if (!qword_27C9145F8)
  {
    result = swift_getWitnessTable(byte_21474EC30, &type metadata for PassPreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9145F8);
  }

  return result;
}

unint64_t sub_2144983A4()
{
  result = qword_27C914600;
  if (!qword_27C914600)
  {
    result = swift_getWitnessTable(aQim0, &type metadata for PassPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914600);
  }

  return result;
}

unint64_t sub_2144983FC()
{
  result = qword_27C914608;
  if (!qword_27C914608)
  {
    result = swift_getWitnessTable(aA_31, &type metadata for PassPreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914608);
  }

  return result;
}

unint64_t sub_214498454()
{
  result = qword_27C914610;
  if (!qword_27C914610)
  {
    result = swift_getWitnessTable(aUm_4, &type metadata for PassPreview.PassBackground.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914610);
  }

  return result;
}

unint64_t sub_2144984AC()
{
  result = qword_27C914618;
  if (!qword_27C914618)
  {
    result = swift_getWitnessTable(byte_21474EAC0, &type metadata for PassPreview.PassBackground.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914618);
  }

  return result;
}

unint64_t sub_214498504()
{
  result = qword_27C914620;
  if (!qword_27C914620)
  {
    result = swift_getWitnessTable(byte_21474E9E0, &type metadata for PassPreview.PassImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914620);
  }

  return result;
}

unint64_t sub_21449855C()
{
  result = qword_27C914628;
  if (!qword_27C914628)
  {
    result = swift_getWitnessTable(byte_21474EA08, &type metadata for PassPreview.PassImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914628);
  }

  return result;
}

unint64_t sub_2144985B4()
{
  result = qword_27C914630;
  if (!qword_27C914630)
  {
    result = swift_getWitnessTable(aYtm, &type metadata for PassPreview.PassText.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914630);
  }

  return result;
}

unint64_t sub_21449860C()
{
  result = qword_27C914638;
  if (!qword_27C914638)
  {
    result = swift_getWitnessTable(byte_21474E950, &type metadata for PassPreview.PassText.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914638);
  }

  return result;
}

uint64_t sub_214498660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D49726564616568 && a2 == 0xEB00000000656761;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547972616D697270 && a2 == 0xEB00000000747865 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEC00000074786554)
  {

    return 5;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_21449887C()
{
  v0 = sub_2146D9588();

  return v0;
}

uint64_t StickerEffect.bridgedToObjectiveC.getter()
{
  v0 = sub_2146D9588();

  return v0;
}

const __CFDictionary *sub_214498A28(CGImageSource *a1)
{
  result = BitmapEncoder.encode(imageSource:)(a1);
  v5 = v1;
  if (v1)
  {
    v26 = v4;
    v23 = result;
    v6 = v1;
    sub_214689A34(v1, 0, 0, v24);
    v7 = v24[1];
    v8 = v24[3];
    v21 = v24[2];
    v22 = v24[0];
    if (v25)
    {
      v9 = v24[4];
    }

    else
    {
      v9 = 0;
    }

    if (v25)
    {
      v10 = v25;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v24[0] = 0;
    v24[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v24, "-SourceFormat(");
    HIBYTE(v24[1]) = -18;
    v11 = CGImageSourceGetType(a1);
    if (v11)
    {
      v12 = v11;
      v13 = sub_2146D95B8();
      v15 = v14;
    }

    else
    {
      v15 = 0xE700000000000000;
      v13 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v13, v15);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v16 = v24[0];
    v17 = v24[1];
    v24[0] = v9;
    v24[1] = v10;

    MEMORY[0x2160545D0](v16, v17);

    v18 = v24[0];
    v19 = v24[1];
    sub_21404A6EC();
    swift_allocError();
    *v20 = v22;
    v20[1] = v7;
    v20[2] = v21;
    v20[3] = v8;
    v20[4] = v18;
    v20[5] = v19;

    swift_willThrow();

    return v23;
  }

  return result;
}

uint64_t sub_214498C18(void *a1)
{
  type metadata accessor for CGImageSource(0);
  v27 = v3;
  v28 = &off_28269F370;
  v26[0] = a1;
  v4 = a1;
  v5 = sub_2146411E0(v26);
  v6 = v1;
  if (v1)
  {
    v30 = v5;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v7 = v1;
    sub_214689A34(v1, 0, 0, v26);
    v8 = v26[1];
    v9 = v27;
    v24 = v26[2];
    v25 = v26[0];
    if (v29)
    {
      v10 = v28;
    }

    else
    {
      v10 = 0;
    }

    if (v29)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v26[0] = 0;
    v26[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v26, "-SourceFormat(");
    HIBYTE(v26[1]) = -18;
    v12 = CGImageSourceGetType(v4);
    if (v12)
    {
      v13 = v12;
      v14 = sub_2146D95B8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v14, v16);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v20 = v26[0];
    v19 = v26[1];
    v26[0] = v10;
    v26[1] = v11;

    MEMORY[0x2160545D0](v20, v19);

    v21 = v26[0];
    v22 = v26[1];
    sub_21404A6EC();
    swift_allocError();
    *v23 = v25;
    v23[1] = v8;
    v23[2] = v24;
    v23[3] = v9;
    v23[4] = v21;
    v23[5] = v22;

    swift_willThrow();

    return v30;
  }

  else
  {
    v17 = v5;
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v17;
  }
}

uint64_t ImageEncoder.encodeThrowingSourceFormat(imageSource:)(CGImageSource *a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))(a1, a2);
  v7 = v3;
  if (v3)
  {
    v28 = v6;
    v25 = result;
    v8 = v3;
    sub_214689A34(v3, 0, 0, v26);
    v9 = v26[1];
    v10 = v26[3];
    v23 = v26[2];
    v24 = v26[0];
    if (v27)
    {
      v11 = v26[4];
    }

    else
    {
      v11 = 0;
    }

    if (v27)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v26[0] = 0;
    v26[1] = 0xE000000000000000;

    sub_2146D9EF8();

    strcpy(v26, "-SourceFormat(");
    HIBYTE(v26[1]) = -18;
    v13 = CGImageSourceGetType(a1);
    if (v13)
    {
      v14 = v13;
      v15 = sub_2146D95B8();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x2160545D0](v15, v17);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v18 = v26[0];
    v19 = v26[1];
    v26[0] = v11;
    v26[1] = v12;

    MEMORY[0x2160545D0](v18, v19);

    v20 = v26[0];
    v21 = v26[1];
    sub_21404A6EC();
    swift_allocError();
    *v22 = v24;
    v22[1] = v9;
    v22[2] = v23;
    v22[3] = v10;
    v22[4] = v20;
    v22[5] = v21;

    swift_willThrow();

    return v25;
  }

  return result;
}

void sub_214499230(CGImageSource *a1)
{
  sub_214061118();
  v2 = swift_allocError();
  *v3 = 1281;
  *(v3 + 8) = 0;
  swift_willThrow();
  v4 = v2;
  sub_214689A34(v2, 0, 0, v21);
  v5 = v21[1];
  v22 = v21[0];
  v6 = v21[3];
  v20 = v21[2];
  v21[0] = 0;
  v8 = v21[4];
  v7 = v21[5];
  v9 = 0xE000000000000000;
  v21[1] = 0xE000000000000000;

  sub_2146D9EF8();

  strcpy(v21, "-SourceFormat(");
  HIBYTE(v21[1]) = -18;
  v10 = CGImageSourceGetType(a1);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2146D95B8();
    v14 = v13;
  }

  else
  {
    v14 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E55;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x2160545D0](v12, v14);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v15 = v21[0];
  v16 = v21[1];
  v21[0] = v8;
  v21[1] = v9;

  MEMORY[0x2160545D0](v15, v16);

  v17 = v21[0];
  v18 = v21[1];
  sub_21404A6EC();
  swift_allocError();
  *v19 = v22;
  v19[1] = v5;
  v19[2] = v20;
  v19[3] = v6;
  v19[4] = v17;
  v19[5] = v18;

  swift_willThrow();
}

void sub_21449943C(CGImageSource *a1, uint64_t (*a2)(void), uint64_t a3)
{
  a2();
  v4 = swift_allocError();
  *v5 = 3;
  swift_willThrow();
  v6 = v4;
  sub_214689A34(v4, 0, 0, v23);
  v7 = v23[1];
  v24 = v23[0];
  v8 = v23[3];
  v22 = v23[2];
  v23[0] = 0;
  v10 = v23[4];
  v9 = v23[5];
  v11 = 0xE000000000000000;
  v23[1] = 0xE000000000000000;

  sub_2146D9EF8();

  strcpy(v23, "-SourceFormat(");
  HIBYTE(v23[1]) = -18;
  v12 = CGImageSourceGetType(a1);
  if (v12)
  {
    v13 = v12;
    v14 = sub_2146D95B8();
    v16 = v15;
  }

  else
  {
    v16 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x2160545D0](v14, v16);

  MEMORY[0x2160545D0](41, 0xE100000000000000);
  v17 = v23[0];
  v18 = v23[1];
  v23[0] = v10;
  v23[1] = v11;

  MEMORY[0x2160545D0](v17, v18);

  v19 = v23[0];
  v20 = v23[1];
  sub_21404A6EC();
  swift_allocError();
  *v21 = v24;
  v21[1] = v7;
  v21[2] = v22;
  v21[3] = v8;
  v21[4] = v19;
  v21[5] = v20;

  swift_willThrow();
}

unint64_t sub_214499648()
{
  result = qword_27C914640;
  if (!qword_27C914640)
  {
    result = swift_getWitnessTable(byte_2147715FC, &type metadata for PNGEncodingError, v0, v1);
    atomic_store(result, &qword_27C914640);
  }

  return result;
}

unint64_t sub_21449969C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x6D754E656E6F6870;
  v4 = inited + 32;
  *(inited + 40) = 0xEB00000000726562;
  if (v1)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    v5 = inited;

    v6 = sub_2140457C0(v5);
    swift_setDeallocating();
    sub_21404C938(v4);
    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21449979C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v111 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v100 - v10;
  v12 = type metadata accessor for CollaborationMetadata(0);
  v13 = v12[6];
  v14 = sub_2146D8B08();
  v15 = *(v14 - 8);
  v109 = *(v15 + 56);
  v110 = v13;
  v108 = v15 + 56;
  v109(v13 + a2, 1, 1, v14);
  v16 = &a2[v12[10]];
  sub_21449AEE0(v122);
  v17 = v122[5];
  *(v16 + 4) = v122[4];
  *(v16 + 5) = v17;
  v18 = v122[7];
  *(v16 + 6) = v122[6];
  *(v16 + 7) = v18;
  v19 = v122[1];
  *v16 = v122[0];
  *(v16 + 1) = v19;
  v20 = v122[3];
  *(v16 + 2) = v122[2];
  *(v16 + 3) = v20;
  v102 = v16;
  v21 = a1;
  v22 = [v21 collaborationIdentifier];
  v23 = sub_2146D95B8();
  v25 = v24;

  *a2 = v23;
  *(a2 + 1) = v25;
  v106 = a2;
  v26 = [v21 title];

  if (v26)
  {
    v27 = sub_2146D95B8();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = v106;
  v106[2] = v27;
  v30[3] = v29;
  v31 = v30;
  v32 = [v21 creationDate];
  v33 = v111;
  if (v32)
  {
    v34 = v32;
    sub_2146D8AE8();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = 1;
  v109(v11, v35, 1, v14);
  sub_2140924F0(v11, v110 + v31);
  v37 = [v21 contentType];
  v38 = v21;
  if (v37)
  {
    v39 = v37;
    sub_2146D9188();

    v36 = 0;
  }

  v40 = sub_2146D91A8();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v33, v36, 1, v40);
  sub_21449AEF8(v33, v8);
  if ((*(v41 + 48))(v8, 1, v40) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C913D58, &qword_214747238);
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v42 = sub_2146D9168();
    v43 = v44;
    (*(v41 + 8))(v8, v40);
  }

  v45 = v12[8];
  v46 = (v31 + v12[7]);
  *v46 = v42;
  v46[1] = v43;
  *(v31 + v45) = 0;
  v47 = v38;
  v48 = [v38 ckAppBundleIDs];
  if (v48)
  {
    v49 = v48;
    v50 = sub_2146D9918();
  }

  else
  {
    v50 = 0;
  }

  *(v31 + v12[9]) = v50;
  v51 = &off_27817C000;
  if ([v47 respondsToSelector_])
  {
    v52 = [v47 handleToIdentityMap];
    if (v52)
    {
      v53 = v52;
      v100 = v45;
      v101 = v47;
      sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
      v54 = sub_2146D9488();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914658, &unk_21474EF10);
      v55 = sub_2146DA038();
      v56 = v55;
      v57 = 0;
      v59 = v54 + 64;
      v58 = *(v54 + 64);
      v104 = v55;
      v105 = v54;
      v60 = 1 << *(v54 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & v58;
      v63 = (v60 + 63) >> 6;
      v103 = v55 + 64;
      v64 = &off_27817C000;
      if ((v61 & v58) != 0)
      {
        while (1)
        {
          v65 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
LABEL_26:
          v68 = v65 | (v57 << 6);
          v69 = *(v105 + 56);
          v70 = *(v105 + 48) + 16 * v68;
          v71 = *(v70 + 8);
          v109 = *v70;
          v72 = *(v69 + 8 * v68);
          v110 = v71;

          v73 = [v72 rootHash];
          v74 = sub_2146D8A58();
          v107 = v75;
          v108 = v74;

          v76 = [v72 v51[133]];
          v111 = MEMORY[0x277D84F90];
          if (v76)
          {
            v77 = [v72 publicKeys];
            v111 = sub_2146D9918();
          }

          if ([v72 v51[133]])
          {
            v78 = [v72 v64[149]];

            if (v78)
            {
              v79 = sub_2146D8A58();
              v81 = v80;
            }

            else
            {

              v79 = 0;
              v81 = 0xF000000000000000;
            }

            sub_213FDC6BC(0, 0xF000000000000000);
            v51 = &off_27817C000;
          }

          else
          {

            v79 = 0;
            v81 = 0xF000000000000000;
          }

          v56 = v104;
          *(v103 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
          v82 = (v56[6] + 16 * v68);
          v83 = v110;
          *v82 = v109;
          v82[1] = v83;
          v84 = (v56[7] + 40 * v68);
          v85 = v107;
          *v84 = v108;
          v84[1] = v85;
          v84[2] = v111;
          v84[3] = v79;
          v84[4] = v81;
          v86 = v56[2];
          v87 = __OFADD__(v86, 1);
          v88 = v86 + 1;
          if (v87)
          {
            break;
          }

          v56[2] = v88;
          v64 = &off_27817C000;
          if (!v62)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v66 = v57;
        while (1)
        {
          v57 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v57 >= v63)
          {

            v31 = v106;
            v45 = v100;
            v47 = v101;
            goto LABEL_39;
          }

          v67 = *(v59 + 8 * v57);
          ++v66;
          if (v67)
          {
            v65 = __clz(__rbit64(v67));
            v62 = (v67 - 1) & v67;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }

    v56 = 0;
LABEL_39:
    *(v31 + v45) = v56;
  }

  if (![v47 v51[133]] || (v89 = objc_msgSend(v47, sel_containerSetupInfo)) == 0)
  {

    return;
  }

  v90 = [v47 containerSetupInfo];
  if (v90)
  {
    sub_21449AC64(v90, v112);

    v117 = v112[4];
    v118 = v112[5];
    v119 = v112[6];
    v120 = v112[7];
    v113 = v112[0];
    v114 = v112[1];
    v115 = v112[2];
    v116 = v112[3];
    nullsub_1();
    v91 = v102;
    v92 = *(v102 + 5);
    v121[4] = *(v102 + 4);
    v121[5] = v92;
    v93 = *(v102 + 7);
    v121[6] = *(v102 + 6);
    v121[7] = v93;
    v94 = *(v102 + 1);
    v121[0] = *v102;
    v121[1] = v94;
    v95 = *(v102 + 3);
    v121[2] = *(v102 + 2);
    v121[3] = v95;
    sub_213FB2DF4(v121, &qword_27C905020, ")\r");
    v96 = v118;
    *(v91 + 4) = v117;
    *(v91 + 5) = v96;
    v97 = v120;
    *(v91 + 6) = v119;
    *(v91 + 7) = v97;
    v98 = v114;
    *v91 = v113;
    *(v91 + 1) = v98;
    v99 = v116;
    *(v91 + 2) = v115;
    *(v91 + 3) = v99;
    return;
  }

LABEL_47:
  __break(1u);
}

char *sub_214499F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917510, &unk_214757860);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v67 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - v8;
  v10 = sub_2146D9588();
  v11 = *(v0 + 24);
  v78 = *(v0 + 16);
  v79 = v10;
  v12 = type metadata accessor for CollaborationMetadata(0);
  sub_2144716D8(v0 + *(v12 + 24), v9);
  v13 = sub_2146D91A8();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v6, 1, 1, v13);
  v73 = v12;
  v74 = v0;
  v77 = *(v0 + *(v12 + 36));
  v15 = sub_2146D8808();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v80 = v3;
  v17(v3, 1, 1, v15);
  if (v11)
  {
    v78 = sub_2146D9588();
  }

  else
  {
    v78 = 0;
  }

  v18 = sub_2146D8B08();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v9, 1, v18) != 1)
  {
    v20 = sub_2146D8AD8();
    (*(v19 + 8))(v9, v18);
  }

  v21 = v20;
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_2146D9178();
    (*(v14 + 8))(v6, v13);
  }

  v24 = v79;
  v23 = v80;
  v25 = v78;
  if (v77)
  {
    v26 = sub_2146D98E8();
  }

  else
  {
    v26 = 0;
  }

  if ((*(v16 + 48))(v23, 1, v15) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2146D87E8();
    (*(v16 + 8))(v23, v15);
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CDC6C0]) initWithCollaborationIdentifier:v24 title:v25 defaultOptions:0 creationDate:v21 contentType:v22 ckAppBundleIDs:v26 initiatorHandle:0 initiatorNameComponents:v27];

  v29 = &off_27817C000;
  if (![v28 respondsToSelector_])
  {
LABEL_35:
    if ([v28 respondsToSelector_])
    {
      v61 = (v74 + *(v73 + 40));
      v62 = v61[5];
      v93 = v61[4];
      v94 = v62;
      v63 = v61[7];
      v95 = v61[6];
      v96 = v63;
      v64 = v61[1];
      v89 = *v61;
      v90 = v64;
      v65 = v61[3];
      v91 = v61[2];
      v92 = v65;
      if (sub_21449A78C(&v89) == 1)
      {
        v66 = 0;
      }

      else
      {
        v85 = v93;
        v86 = v94;
        v87 = v95;
        v88 = v96;
        v81 = v89;
        v82 = v90;
        v83 = v91;
        v84 = v92;
        v66 = sub_21449A99C();
      }

      [v28 setContainerSetupInfo_];
    }

    return v28;
  }

  v30 = *(v74 + *(v73 + 32));
  if (!v30)
  {
    v60 = 0;
LABEL_34:
    [v28 v29[132]];

    goto LABEL_35;
  }

  v68 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914648, &qword_21474EEA0);
  result = sub_2146DA038();
  v32 = 0;
  v33 = v30 + 64;
  v34 = 1 << *(v30 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v30 + 64);
  v37 = (v34 + 63) >> 6;
  v71 = result + 64;
  v72 = result;
  v69 = v37;
  v70 = v30;
  if (v36)
  {
    while (1)
    {
      v38 = __clz(__rbit64(v36));
      v75 = (v36 - 1) & v36;
LABEL_26:
      v41 = v38 | (v32 << 6);
      v42 = *(v30 + 56);
      v43 = (*(v30 + 48) + 16 * v41);
      v44 = v43[1];
      v79 = *v43;
      v80 = v44;
      v45 = (v42 + 40 * v41);
      v47 = *v45;
      v46 = v45[1];
      v49 = v45[2];
      v48 = v45[3];
      v50 = v45[4];

      sub_21402D9F8(v47, v46);

      sub_213FDCA18(v48, v50);
      sub_21402D9F8(v47, v46);
      v51 = sub_2146D8A38();
      v78 = v49;
      v52 = sub_2146D98E8();
      v77 = v48;
      v53 = v50 >> 60 == 15 ? 0 : sub_2146D8A38();
      v76 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v51 publicKeys:v52 trackingPreventionSalt:v53];

      sub_213FB54FC(v47, v46);
      sub_213FB54FC(v47, v46);

      result = sub_213FDC6BC(v77, v50);
      v54 = v72;
      *&v71[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
      v55 = (v54[6] + 16 * v41);
      v56 = v80;
      *v55 = v79;
      v55[1] = v56;
      *(v54[7] + 8 * v41) = v76;
      v57 = v54[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        break;
      }

      v54[2] = v59;
      v37 = v69;
      v30 = v70;
      v36 = v75;
      if (!v75)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v32 >= v37)
      {
        sub_21404A8B8(0, &unk_27C9178A0, 0x277CDC6F8);
        v60 = sub_2146D9468();

        v28 = v68;
        v29 = &off_27817C000;
        goto LABEL_34;
      }

      v40 = *(v33 + 8 * v32);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v75 = (v40 - 1) & v40;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21449A6DC()
{
  v1 = *(v0 + 32);
  v2 = sub_2146D8A38();
  v3 = sub_2146D98E8();
  if (v1 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2146D8A38();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v2 publicKeys:v3 trackingPreventionSalt:v4];

  return v5;
}

uint64_t sub_21449A78C(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_21449A7A4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 rootHash];
  v5 = sub_2146D8A58();
  v7 = v6;

  if ([v3 respondsToSelector_])
  {
    v8 = [v3 publicKeys];
    v9 = sub_2146D9918();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if ([v3 respondsToSelector_])
  {
    v10 = [v3 trackingPreventionSalt];

    if (v10)
    {
      v11 = sub_2146D8A58();
      v13 = v12;
    }

    else
    {

      v11 = 0;
      v13 = 0xF000000000000000;
    }

    sub_213FDC6BC(0, 0xF000000000000000);
  }

  else
  {

    v11 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
}

id sub_21449A8EC()
{
  v1 = *(v0 + 32);
  v2 = sub_2146D8A38();
  v3 = sub_2146D98E8();
  if (v1 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_2146D8A38();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CDC6F8]) initWithRootHash:v2 publicKeys:v3 trackingPreventionSalt:v4];

  return v5;
}

id sub_21449A99C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v5 = *(v0 + 7);
  v19 = *(v0 + 9);
  v20 = *(v0 + 11);
  v21 = v0[96];
  v6 = *(v0 + 15);
  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_2146D9588();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v6];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  [v10 setUseZoneWidePCS_];
  [v10 setMmcsEncryptionSupport_];
  if (v3)
  {
    v11 = sub_2146D9588();
  }

  else
  {
    v11 = 0;
  }

  [v10 setEncryptionServiceName_];

  if (v4)
  {
    v12 = sub_2146D9588();
  }

  else
  {
    v12 = 0;
  }

  [v10 setApplicationBundleIdentifierOverrideForContainerAccess_];

  if (v5)
  {
    v13 = sub_2146D9588();
  }

  else
  {
    v13 = 0;
  }

  [v10 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

  if (v19)
  {
    v14 = sub_2146D9588();
  }

  else
  {
    v14 = 0;
  }

  [v10 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

  if (v20)
  {
    v15 = sub_2146D9588();
  }

  else
  {
    v15 = 0;
  }

  [v10 setApplicationBundleIdentifierOverrideForTCC_];

  [v10 setPrefersHiddenAllowedSharingOptionsUI_];
  sub_21404A8B8(0, &qword_27C914650, 0x277CBC238);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector_])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBC238]) initWithContainerID:v9 options:v10];
    if (v16)
    {
      v17 = v16;

      return v17;
    }

    __break(1u);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21449AC64(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 containerID];
  v5 = [v4 containerIdentifier];

  v6 = sub_2146D95B8();
  v41 = v7;
  v42 = v6;

  v8 = [a1 containerID];
  v40 = [v8 environment];

  v9 = [a1 containerOptions];
  v39 = [v9 useZoneWidePCS];
  v38 = [v9 mmcsEncryptionSupport];
  v10 = [v9 encryptionServiceName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2146D95B8();
    v36 = v13;
    v37 = v12;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v14 = [v9 applicationBundleIdentifierOverrideForContainerAccess];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2146D95B8();
    v34 = v17;
    v35 = v16;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = [v9 applicationBundleIdentifierOverrideForNetworkAttribution];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2146D95B8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [v9 applicationBundleIdentifierOverrideForPushTopicGeneration];
  if (v23)
  {
    v24 = v23;
    v25 = sub_2146D95B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v9 applicationBundleIdentifierOverrideForTCC];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2146D95B8();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v33 = [v9 prefersHiddenAllowedSharingOptionsUI];

  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v34;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  *(a2 + 64) = v25;
  *(a2 + 72) = v27;
  *(a2 + 80) = v30;
  *(a2 + 88) = v32;
  *(a2 + 96) = v33;
  *(a2 + 104) = v42;
  *(a2 + 112) = v41;
  *(a2 + 120) = v40;
}

double sub_21449AEE0(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21449AEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913D58, &qword_214747238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21449AF68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2146D8958();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21449AFD0(uint64_t a1)
{
  v3 = sub_2146D8958();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

double sub_21449B058()
{
  type metadata accessor for ServerCharacteristic(0);

  return result;
}

uint64_t type metadata accessor for ServerCharacteristic(uint64_t a1)
{
  result = qword_27C914660;
  if (!qword_27C914660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21449B0D8(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerCharacteristic(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_21449B184(char a1)
{
  result = type metadata accessor for ServerCharacteristic(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_21449B1FC(uint64_t a1)
{
  *(a1 + 8) = sub_21449B264(&qword_27C9091E0, aIgml8);
  result = sub_21449B264(&qword_27C909200, byte_2146FD1C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21449B264(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ServerCharacteristic(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_21449B2D0(uint64_t a1)
{
  sub_2146D8958();
  if (v1 <= 0x3F)
  {
    sub_21449B35C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21449B35C()
{
  if (!qword_27C914670)
  {
    v0 = sub_2146D9978();
    if (!v1)
    {
      atomic_store(v0, &qword_27C914670);
    }
  }
}

uint64_t sub_21449B45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21449B4AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 305))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 41);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21449B4F8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 296) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 304) = 0;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 305) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 8;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0;
      return result;
    }

    *(a1 + 305) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21449B5D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 290))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 41);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21449B620(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 280) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 288) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 290) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 8;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 192) = 0u;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0u;
      *(a1 + 256) = 0u;
      *(a1 + 272) = 0u;
      *(a1 + 288) = 0;
      return result;
    }

    *(a1 + 290) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21449B6E0(uint64_t result, __int16 a2)
{
  v2 = *(result + 80);
  v3 = *(result + 120);
  v4 = *(result + 160);
  v5 = *(result + 200);
  v6 = *(result + 232) & 0xFF01FFLL;
  v7 = *(result + 248) & 1;
  v8 = *(result + 288) & 0x1FF | (a2 << 14);
  *(result + 40) = *(result + 40);
  *(result + 80) = v2;
  *(result + 120) = v3;
  *(result + 160) = v4;
  *(result + 200) = v5;
  *(result + 232) = v6;
  *(result + 248) = v7;
  *(result + 288) = v8;
  return result;
}

uint64_t sub_21449B748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 290))
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

uint64_t sub_21449B790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 290) = 1;
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

    *(result + 290) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21449B8E4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282653B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282653BB8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449BACC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C68, &unk_2147319E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21474EF80;
  *(v4 + 16) = sub_21449BD64;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0688(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F8, &qword_2146EAA48);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21449BD7C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044968(inited, a1);
}

unint64_t sub_21449BC44@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21449BD7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  else
  {
    return sub_214047B58();
  }
}

uint64_t ImageProvider.withImage<A>(enforcedEncoding:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[9];
  v14[8] = a1[8];
  v14[9] = v6;
  v7 = a1[11];
  v14[10] = a1[10];
  v14[11] = v7;
  v8 = a1[5];
  v14[4] = a1[4];
  v14[5] = v8;
  v9 = a1[7];
  v14[6] = a1[6];
  v14[7] = v9;
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v11 = a1[3];
  v14[2] = a1[2];
  v14[3] = v11;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a2;
  v13[6] = a3;
  return (*(a6 + 8))(v14, sub_21449C108, v13, a5, a4);
}

uint64_t ImageProvider.withImageSource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2140615A8(v12);
  v11[8] = v12[8];
  v11[9] = v12[9];
  v11[10] = v12[10];
  v11[11] = v12[11];
  v11[4] = v12[4];
  v11[5] = v12[5];
  v11[6] = v12[6];
  v11[7] = v12[7];
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  return (*(a5 + 8))(v11, a1, a2, a4, a3, a5);
}

uint64_t ImageProvider.withImage<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2140615A8(v12);
  v11[8] = v12[8];
  v11[9] = v12[9];
  v11[10] = v12[10];
  v11[11] = v12[11];
  v11[4] = v12[4];
  v11[5] = v12[5];
  v11[6] = v12[6];
  v11[7] = v12[7];
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  return (*(a5 + 16))(v11, a1, a2, a4, a3, a5);
}

void sub_21449C058(CGImageSource *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (ImageAtIndex)
  {
    v8 = ImageAtIndex;
    a2();
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }
}

void sub_21449C12C(uint64_t a1, void (*a2)(void))
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v4 = VTCreateCGImageFromCVPixelBuffer(v2, 0, v12);
  if (v12[0])
  {
    v5 = v12[0];
    a2();
  }

  else
  {
    v6 = v4;
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v7 = sub_2146D9208();
    __swift_project_value_buffer(v7, qword_280B34D98);
    v8 = sub_2146D91E8();
    v9 = sub_2146D9BA8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_213FAF000, v8, v9, "Unable to create image from pixel buffer with error: %d", v10, 8u);
      MEMORY[0x216056AC0](v10, -1, -1);
    }

    sub_214061118();
    swift_allocError();
    *v11 = 1536;
    *(v11 + 8) = 0;
    swift_willThrow();
  }
}

unint64_t sub_21449C358(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912220, &qword_214734E10);
  v2 = swift_allocObject();
  v3 = *MEMORY[0x277CD3648];
  *(v2 + 32) = *MEMORY[0x277CD3648];
  *(v2 + 16) = xmmword_2146E6910;
  v4 = MEMORY[0x277D839B0];
  v5 = MEMORY[0x277CD35B8];
  *(v2 + 40) = 1;
  v6 = *v5;
  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 104) = v4;
  *(v2 + 80) = 1;
  v7 = v3;
  v8 = v6;
  v9 = sub_214045EE0(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A0, &unk_214771CE0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v10 = a1[9];
  v35 = a1[8];
  v36 = v10;
  v11 = a1[11];
  v37 = a1[10];
  v38 = v11;
  v12 = a1[5];
  v31 = a1[4];
  v32 = v12;
  v13 = a1[7];
  v33 = a1[6];
  v34 = v13;
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  v15 = a1[3];
  v29 = a1[2];
  v30 = v15;
  if (sub_21449D3A8(&v27) != 1)
  {
    v39[8] = v35;
    v39[9] = v36;
    v39[10] = v37;
    v39[11] = v38;
    v39[4] = v31;
    v39[5] = v32;
    v39[6] = v33;
    v39[7] = v34;
    v39[0] = v27;
    v39[1] = v28;
    v39[2] = v29;
    v39[3] = v30;
    v16 = sub_21405FB08(v39);
    switch(v16)
    {
      case 4:
        v17 = *MEMORY[0x277CD3668];
        goto LABEL_8;
      case 3:
        v17 = *MEMORY[0x277CD3668];
        goto LABEL_8;
      case 0:
        sub_214061EDC(v39);
        v17 = *MEMORY[0x277CD3668];
LABEL_8:
        v18 = sub_2146D9588();
        type metadata accessor for CFString(0);
        v26 = v19;
        *&v25 = v18;
        sub_213FDC730(&v25, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_2140529F8(v24, v17, isUniquelyReferenced_nonNull_native);
        v21 = *MEMORY[0x277CD35A8];
        v26 = v4;
        LOBYTE(v25) = 1;
        sub_213FDC730(&v25, v24);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_2140529F8(v24, v21, v22);
        break;
    }
  }

  return v9;
}

void Data.withImageSource<A>(enforcedEncoding:_:)(__int128 *a1@<X0>, void (*a2)(CGImageSourceRef)@<X1>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = a1[9];
  v18[8] = a1[8];
  v18[9] = v9;
  v10 = a1[11];
  v18[10] = a1[10];
  v18[11] = v10;
  v11 = a1[5];
  v18[4] = a1[4];
  v18[5] = v11;
  v12 = a1[7];
  v18[6] = a1[6];
  v18[7] = v12;
  v13 = a1[1];
  v18[0] = *a1;
  v18[1] = v13;
  v14 = a1[3];
  v18[2] = a1[2];
  v18[3] = v14;
  sub_21449C358(v18);
  v15 = sub_2146D8A38();
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v16 = sub_2146D9468();

  v17 = CGImageSourceCreateWithData(v15, v16);

  if (v17)
  {
    a2(v17);
  }

  else
  {
    (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  }
}

CGImageSourceRef sub_21449C904(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - v9;
  v10 = sub_2146D8958();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  sub_21449C358(a4);
  v51 = 47;
  v52 = 0xE100000000000000;
  v53 = a1;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v45 = sub_2140610B4();
  v46 = v16;
  v17 = sub_2146D9558();
  v19 = v18;

  MEMORY[0x2160545D0](v17, v19);

  sub_2146D8888();

  v20 = sub_2146D8898();
  v49 = v11;
  v23 = *(v11 + 8);
  v22 = v11 + 8;
  v21 = v23;
  v47 = v10;
  v23(v15, v10);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v24 = sub_2146D9468();

  v25 = CGImageSourceCreateWithURL(v20, v24);

  if (!v25)
  {
    v40 = v22;
    v41 = v21;
    v26 = v47;
    v27 = v48;
    v43 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v42 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2146EA710;
    v51 = 47;
    v52 = 0xE100000000000000;
    v53 = a1;

    v29 = sub_2146D9558();
    v31 = v30;

    MEMORY[0x2160545D0](v29, v31);

    v32 = v27;
    sub_2146D8888();

    v33 = v49;
    (*(v49 + 56))(v27, 0, 1, v26);
    v34 = v50;
    sub_21407E1D8(v27, v50);
    if ((*(v33 + 48))(v34, 1, v26) == 1)
    {
      sub_21407E248(v34);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v37 = v44;
      (*(v33 + 32))(v44, v34, v26);
      (*(v33 + 16))(v15, v37, v26);
      v36 = sub_2146D9618();
      v35 = v38;
      v41(v37, v26);
    }

    sub_21407E248(v32);
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = sub_213FB2DA0();
    *(v28 + 32) = v36;
    *(v28 + 40) = v35;
    sub_2146D91D8(v43, &dword_213FAF000, v42, "BlastDoor unable to create CGImageSource with URL: %@", 53, 2, v28);

    return 0;
  }

  return v25;
}

void sub_21449CDC4(uint64_t a1@<X0>, __int128 *a2@<X3>, void (*a3)(CGImageSourceRef)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v51 = a6;
  v48 = a5;
  v49 = a4;
  v50 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - v11;
  v12 = sub_2146D8958();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  sub_21449C358(a2);
  v52 = 47;
  v53 = 0xE100000000000000;
  v54 = a1;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v44 = v18;
  v19 = sub_2146D9558();
  v21 = v20;

  MEMORY[0x2160545D0](v19, v21);

  sub_2146D8888();

  v22 = sub_2146D8898();
  v45 = v13;
  v23 = *(v13 + 8);
  v23(v17, v12);
  type metadata accessor for CFString(0);
  sub_2143A6B04();
  v24 = sub_2146D9468();

  v25 = CGImageSourceCreateWithURL(v22, v24);

  if (v25)
  {
    v50(v25);
  }

  else
  {
    v41 = v17;
    v42 = v23;
    v50 = v12;
    v26 = sub_2146D9BA8();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v49 = qword_280B35410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2146EA710;
    v52 = 47;
    v53 = 0xE100000000000000;
    v54 = a1;

    v28 = sub_2146D9558();
    v30 = v29;

    MEMORY[0x2160545D0](v28, v30);

    v31 = v47;
    sub_2146D8888();

    v32 = v45;
    v33 = v50;
    (*(v45 + 56))(v31, 0, 1, v50);
    v34 = v46;
    sub_21407E1D8(v31, v46);
    if ((*(v32 + 48))(v34, 1, v33) == 1)
    {
      sub_21407E248(v34);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v37 = v43;
      (*(v32 + 32))(v43, v34, v33);
      (*(v32 + 16))(v41, v37, v33);
      v36 = sub_2146D9618();
      v35 = v38;
      v42(v37, v33);
    }

    v39 = v48;
    v40 = v51;
    sub_21407E248(v31);
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_213FB2DA0();
    *(v27 + 32) = v36;
    *(v27 + 40) = v35;
    sub_2146D91D8(v26, &dword_213FAF000, v49, "BlastDoor unable to create CGImageSource with URL: %@", 53, 2, v27);

    (*(*(v39 - 8) + 56))(v40, 1, 1, v39);
  }
}

uint64_t sub_21449D3A8(uint64_t a1)
{
  if ((*(a1 + 24) >> 1) > 0x80000000)
  {
    return -(*(a1 + 24) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21449D400()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_21449D43C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_21449D520(uint64_t a1)
{
  v2 = sub_21449D72C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449D55C(uint64_t a1)
{
  v2 = sub_21449D72C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21449D598(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914678, &qword_21474FB00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449D72C();
  sub_2146DAA28();
  v8[15] = 0;
  sub_2146DA368();
  if (!v1)
  {
    v8[14] = 1;
    sub_2146DA348();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21449D72C()
{
  result = qword_27C914680;
  if (!qword_27C914680)
  {
    result = swift_getWitnessTable(byte_214750068, &type metadata for WatchfacePreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914680);
  }

  return result;
}

uint64_t sub_21449D780@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914688, &qword_21474FB08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449D72C();
  sub_2146DAA08();
  if (!v2)
  {
    v13[15] = 0;
    v9 = sub_2146DA1A8();
    v13[14] = 1;
    sub_2146DA188();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21449D960@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_21449D9F8(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*sub_21449DA78(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21449DB90(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*sub_21449DBE4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t sub_21449DC70(uint64_t a1)
{
  v2 = sub_21449DE58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21449DCAC(uint64_t a1)
{
  v2 = sub_21449DE58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21449DCE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914690, &qword_21474FB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21449DE58()
{
  result = qword_27C914698;
  if (!qword_27C914698)
  {
    result = swift_getWitnessTable(byte_214750018, &type metadata for WatchfacePreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914698);
  }

  return result;
}

uint64_t sub_21449DEAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9146A0, &qword_21474FB18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  LOWORD(v26[0]) = 0;
  sub_2140615D0(v26);
  v23 = v26[9];
  v24 = v26[10];
  v25 = v26[11];
  v19 = v26[5];
  v20 = v26[6];
  v21 = v26[7];
  v22 = v26[8];
  v15 = v26[1];
  v16 = v26[2];
  v17 = v26[3];
  v18 = v26[4];
  v14 = v26[0];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    sub_2146DA1C8();
    (*(v5 + 8))(v7, v4);
    sub_2140A4E24(&v11, v12);
    sub_21449E10C(v12, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21449E0DC(v12);
}

uint64_t sub_21449E15C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914690, &qword_21474FB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21449DE58();
  sub_2146DAA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_21449E2CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOWORD(v21[0]) = 0;
  sub_2140615D0(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_21449E3C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

unint64_t sub_21449E3D4()
{
  result = qword_27C9146A8;
  if (!qword_27C9146A8)
  {
    result = swift_getWitnessTable(aMQ, &type metadata for WatchfacePreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C9146A8);
  }

  return result;
}

unint64_t sub_21449E42C()
{
  result = qword_27C9146B0;
  if (!qword_27C9146B0)
  {
    result = swift_getWitnessTable(byte_21474FB48, &type metadata for WatchfacePreview.Constraints, v0, v1);
    atomic_store(result, &qword_27C9146B0);
  }

  return result;
}

unint64_t sub_21449E480(uint64_t a1)
{
  result = sub_21449E4A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21449E4A8()
{
  result = qword_27C9146B8;
  if (!qword_27C9146B8)
  {
    result = swift_getWitnessTable(byte_21474FB9C, &type metadata for WatchfacePreview, v0, v1);
    atomic_store(result, &qword_27C9146B8);
  }

  return result;
}

unint64_t sub_21449E4FC(uint64_t a1)
{
  *(a1 + 8) = sub_21449E52C();
  result = sub_21449E580();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21449E52C()
{
  result = qword_27C9146C0;
  if (!qword_27C9146C0)
  {
    result = swift_getWitnessTable(aQ_25, &type metadata for WatchfacePreview, v0, v1);
    atomic_store(result, &qword_27C9146C0);
  }

  return result;
}

unint64_t sub_21449E580()
{
  result = qword_27C9146C8;
  if (!qword_27C9146C8)
  {
    result = swift_getWitnessTable(byte_21474FBE0, &type metadata for WatchfacePreview, v0, v1);
    atomic_store(result, &qword_27C9146C8);
  }

  return result;
}

unint64_t sub_21449E618()
{
  result = qword_27C9146D0;
  if (!qword_27C9146D0)
  {
    result = swift_getWitnessTable(byte_21474FF38, &type metadata for WatchfacePreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146D0);
  }

  return result;
}

unint64_t sub_21449E670()
{
  result = qword_27C9146D8;
  if (!qword_27C9146D8)
  {
    result = swift_getWitnessTable(a0_2, &type metadata for WatchfacePreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146D8);
  }

  return result;
}

unint64_t sub_21449E6C8()
{
  result = qword_27C9146E0;
  if (!qword_27C9146E0)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for WatchfacePreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146E0);
  }

  return result;
}

unint64_t sub_21449E720()
{
  result = qword_27C9146E8;
  if (!qword_27C9146E8)
  {
    result = swift_getWitnessTable(aQ_26, &type metadata for WatchfacePreview.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146E8);
  }

  return result;
}

unint64_t sub_21449E778()
{
  result = qword_27C9146F0;
  if (!qword_27C9146F0)
  {
    result = swift_getWitnessTable(byte_21474FEA8, &type metadata for WatchfacePreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146F0);
  }

  return result;
}

unint64_t sub_21449E7D0()
{
  result = qword_27C9146F8;
  if (!qword_27C9146F8)
  {
    result = swift_getWitnessTable(asc_21474FED0, &type metadata for WatchfacePreview.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9146F8);
  }

  return result;
}

unint64_t sub_21449E858@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 500;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449E9A4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449EAF0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449EC44@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v28 = xmmword_2146E9BF0;
  v31 = inited;
  *(inited + 16) = xmmword_2146E9BF0;
  v29 = v5;
  v30 = swift_initStackObject();
  *(v30 + 16) = v28;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = __swift_project_value_buffer(v7, qword_27CA19E80);
  v9 = *(*(v7 - 8) + 16);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v10 = swift_allocObject();
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  sub_2144A041C(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v10 + 16) = sub_2144A066C;
  *(v10 + 24) = v12;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27CA19F60);
  v9(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v7);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  sub_2144A041C(v4, v15 + v11);
  *(v14 + 16) = sub_2144A066C;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146EAEB0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21439DF60;
  *(v17 + 24) = v10;
  *(v16 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_21439DF60;
  *(v18 + 24) = v14;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v19 + 16) = sub_21439DF94;
  *(v19 + 24) = v20;
  v21 = v30;
  *(v30 + 32) = v19;
  v22 = sub_2142E0070(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 16) = sub_214032610;
  *(v23 + 24) = v24;
  v25 = v31;
  v26 = v32;
  *(v31 + 32) = v23;
  return sub_214042A28(v25, v26);
}

unint64_t sub_21449F034@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 200;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449F180@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_21449F2D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_282652C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

void *MBDBrandInfo.init(payloadData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v156 = a2;
  v148 = a1;
  v149 = a3;
  v3 = type metadata accessor for SwiftRegexValidator(0);
  v153 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v158 = v4;
  v167 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v6 = swift_allocObject();
  v159 = xmmword_2146E9BF0;
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  LOBYTE(v165[0]) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 100;
  *(v9 + 24) = v165[0];
  *(v8 + 16) = sub_21406418C;
  *(v8 + 24) = v9;
  *(v6 + 32) = v8;
  sub_214042B80(v6, &v166[2]);
  v10 = swift_allocObject();
  *(v10 + 16) = v159;
  v11 = swift_allocObject();
  *(v11 + 16) = v159;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21439DF24;
  *(v12 + 24) = 0;
  *(v11 + 32) = v12;
  v13 = sub_2142E0070(v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v15 + 16) = sub_21403254C;
  *(v15 + 24) = v16;
  *(v10 + 32) = v15;
  sub_214042A28(v10, &v166[8]);
  v17 = swift_allocObject();
  *(v17 + 16) = v159;
  v18 = swift_allocObject();
  *(v18 + 16) = v159;
  v19 = swift_allocObject();
  LOBYTE(v165[0]) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 500;
  *(v20 + 24) = v165[0];
  *(v19 + 16) = sub_21438F518;
  *(v19 + 24) = v20;
  *(v18 + 32) = v19;
  v21 = sub_2142E0070(v18);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_214032610;
  *(v22 + 24) = v23;
  *(v17 + 32) = v22;
  sub_214042A28(v17, &v166[18]);
  v24 = swift_allocObject();
  *(v24 + 16) = v159;
  v25 = swift_allocObject();
  *(v25 + 16) = v159;
  v26 = swift_allocObject();
  LOBYTE(v165[0]) = 1;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v165[0];
  *(v26 + 16) = sub_21438F518;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  v28 = sub_2142E0070(v25);
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v29 + 16) = sub_214032610;
  *(v29 + 24) = v30;
  *(v24 + 32) = v29;
  sub_214042A28(v24, &v166[23]);
  v31 = swift_allocObject();
  *(v31 + 16) = v159;
  v32 = swift_allocObject();
  *(v32 + 16) = v159;
  v33 = sub_214069764(&unk_2826592A0);
  v34 = swift_allocObject();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v34 + 16) = sub_214059810;
  *(v34 + 24) = v35;
  *(v32 + 32) = v34;
  v36 = sub_2142E0070(v32);
  v155 = v14;
  v37 = swift_allocObject();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v37 + 16) = sub_214032610;
  *(v37 + 24) = v38;
  *(v31 + 32) = v37;
  sub_214042A28(v31, &v166[28]);
  v151 = swift_allocObject();
  *(v151 + 16) = v159;
  v154 = v5;
  v150 = swift_allocObject();
  *(v150 + 16) = v159;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v40 = __swift_project_value_buffer(v39, qword_27CA19E80);
  v41 = *(*(v39 - 8) + 16);
  v42 = v167;
  v41(v167, v40, v39);
  v43 = swift_allocObject();
  v152 = v7;
  v44 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v45 = swift_allocObject();
  sub_2144A041C(v42, v45 + v44);
  *(v43 + 16) = sub_214302808;
  *(v43 + 24) = v45;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v39, qword_27CA19F60);
  v47 = v167;
  v41(v167, v46, v39);
  v48 = swift_allocObject();
  v49 = swift_allocObject();
  sub_2144A041C(v47, v49 + v44);
  *(v48 + 16) = sub_2144A066C;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2146EAEB0;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_21439DF28;
  *(v51 + 24) = v43;
  *(v50 + 32) = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_21439DF60;
  *(v52 + 24) = v48;
  *(v50 + 40) = v52;
  v53 = swift_allocObject();
  v54 = swift_allocObject();
  *(v54 + 16) = v50;
  *(v53 + 16) = sub_21439DF54;
  *(v53 + 24) = v54;
  v55 = v150;
  *(v150 + 32) = v53;
  v56 = sub_2142E0070(v55);
  v57 = swift_allocObject();
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v57 + 16) = sub_214032610;
  *(v57 + 24) = v58;
  v59 = v151;
  *(v151 + 32) = v57;
  sub_214042A28(v59, &v166[33]);
  v60 = swift_allocObject();
  *(v60 + 16) = v159;
  v61 = swift_allocObject();
  *(v61 + 16) = v159;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_21439DF24;
  *(v62 + 24) = 0;
  *(v61 + 32) = v62;
  v63 = sub_2142E0070(v61);
  v64 = swift_allocObject();
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v64 + 16) = sub_214032610;
  *(v64 + 24) = v65;
  *(v60 + 32) = v64;
  sub_214042A28(v60, &v166[38]);
  v66 = swift_allocObject();
  *(v66 + 16) = v159;
  v67 = swift_allocObject();
  *(v67 + 16) = v159;
  v68 = swift_allocObject();
  LOBYTE(v165[0]) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = 200;
  *(v69 + 24) = v165[0];
  *(v68 + 16) = sub_21438F518;
  *(v68 + 24) = v69;
  *(v67 + 32) = v68;
  v70 = sub_2142E0070(v67);
  v71 = swift_allocObject();
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  *(v71 + 16) = sub_214032610;
  *(v71 + 24) = v72;
  *(v66 + 32) = v71;
  sub_214042A28(v66, &v166[43]);
  v73 = swift_allocObject();
  *(v73 + 16) = v159;
  v74 = swift_allocObject();
  *(v74 + 16) = v159;
  v75 = sub_214069764(&unk_2826592E0);
  v76 = swift_allocObject();
  v77 = swift_allocObject();
  *(v77 + 16) = v75;
  *(v76 + 16) = sub_2140598E4;
  *(v76 + 24) = v77;
  *(v74 + 32) = v76;
  v78 = sub_2142E0070(v74);
  v79 = swift_allocObject();
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  *(v79 + 16) = sub_214032610;
  *(v79 + 24) = v80;
  *(v73 + 32) = v79;
  sub_214042A28(v73, &v166[48]);
  v81 = swift_allocObject();
  *(v81 + 16) = v159;
  v82 = swift_allocObject();
  *(v82 + 16) = v159;
  v83 = sub_214069764(&unk_282659320);
  v84 = swift_allocObject();
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  *(v84 + 16) = sub_2140598E4;
  *(v84 + 24) = v85;
  *(v82 + 32) = v84;
  v86 = sub_2142E0070(v82);
  v87 = swift_allocObject();
  v88 = swift_allocObject();
  *(v88 + 16) = v86;
  *(v87 + 16) = sub_214032610;
  *(v87 + 24) = v88;
  *(v81 + 32) = v87;
  sub_214042A28(v81, &v166[55]);
  v89 = v156;
  if (v156 >> 60 == 15)
  {

    v90 = v166[10];
    v91 = v166[11];

    sub_213FDC6D0(v90, v91);
    v92 = v166[20];
    v93 = v166[21];

    sub_213FDC6D0(v92, v93);
    v94 = v166[25];
    v95 = v166[26];

    sub_213FDC6D0(v94, v95);
    v96 = v166[30];
    v97 = v166[31];

    sub_213FDC6D0(v96, v97);
    v98 = v166[35];
    v99 = v166[36];

    sub_213FDC6D0(v98, v99);
    v100 = v166[40];
    v101 = v166[41];

    sub_213FDC6D0(v100, v101);
    v102 = v166[45];
    v103 = v166[46];

    sub_213FDC6D0(v102, v103);
    v104 = v166[50];
    v105 = v166[51];

    sub_213FDC6D0(v104, v105);
    v106 = v166[57];
    v107 = v166[58];

    sub_213FDC6D0(v106, v107);
    sub_2144A0480(v165);
    return memcpy(v149, v165, 0x1F0uLL);
  }

  else
  {
    sub_2146D85C8();
    swift_allocObject();
    v109 = v148;
    sub_21402D9F8(v148, v89);
    sub_2146D85B8();
    sub_2144A04C8();
    v110 = v157;
    sub_2146D8598();

    sub_213FDC6BC(v109, v89);
    sub_213FDC6BC(v109, v89);
    if (v110)
    {

      v111 = v166[10];
      v112 = v166[11];

      sub_213FDC6D0(v111, v112);
      v113 = v166[20];
      v114 = v166[21];

      sub_213FDC6D0(v113, v114);
      v115 = v166[25];
      v116 = v166[26];

      sub_213FDC6D0(v115, v116);
      v117 = v166[30];
      v118 = v166[31];

      sub_213FDC6D0(v117, v118);
      v119 = v166[35];
      v120 = v166[36];

      sub_213FDC6D0(v119, v120);
      v121 = v166[40];
      v122 = v166[41];

      sub_213FDC6D0(v121, v122);
      v123 = v166[45];
      v124 = v166[46];

      sub_213FDC6D0(v123, v124);
      v125 = v166[50];
      v126 = v166[51];

      sub_213FDC6D0(v125, v126);
      v127 = v166[57];
      v128 = v166[58];

      return sub_213FDC6D0(v127, v128);
    }

    else
    {
      memcpy(v161, v165, sizeof(v161));

      v129 = v166[10];
      v130 = v166[11];

      sub_213FDC6D0(v129, v130);
      v131 = v166[20];
      v132 = v166[21];

      sub_213FDC6D0(v131, v132);
      v133 = v166[25];
      v134 = v166[26];

      sub_213FDC6D0(v133, v134);
      v135 = v166[30];
      v136 = v166[31];

      sub_213FDC6D0(v135, v136);
      v137 = v166[35];
      v138 = v166[36];

      sub_213FDC6D0(v137, v138);
      v139 = v166[40];
      v140 = v166[41];

      sub_213FDC6D0(v139, v140);
      v141 = v166[45];
      v142 = v166[46];

      sub_213FDC6D0(v141, v142);
      v143 = v166[50];
      v144 = v166[51];

      sub_213FDC6D0(v143, v144);
      v145 = v166[57];
      v146 = v166[58];

      sub_213FDC6D0(v145, v146);
      memcpy(v166, v161, 0x1F0uLL);
      memcpy(v162, v161, sizeof(v162));
      memcpy(v163, v161, sizeof(v163));
      nullsub_1();
      memcpy(v149, v163, 0x1F0uLL);
      memcpy(v164, v166, sizeof(v164));
      sub_2142E5E24(v162, &v160);
      return sub_214045958(v164);
    }
  }
}

uint64_t sub_2144A041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftRegexValidator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2144A0480(_OWORD *a1)
{
  result = 0.0;
  a1[29] = 0u;
  a1[30] = 0u;
  a1[27] = 0u;
  a1[28] = 0u;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2144A04C8()
{
  result = qword_27C914700;
  if (!qword_27C914700)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDBrandInfo, &type metadata for MBDBrandInfo, v0, v1);
    atomic_store(result, &qword_27C914700);
  }

  return result;
}

unint64_t sub_2144A051C(uint64_t a1)
{
  *(a1 + 8) = sub_2142FE99C();
  result = sub_2142FEC24();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144A0554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 496))
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

uint64_t sub_2144A059C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 488) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 496) = 1;
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

    *(result + 496) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144A0724()
{
  v1 = 0x74726F506863616DLL;
  v2 = 0x7365726464416D76;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x6953726566667562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2144A07A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2144A2418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2144A07D0(uint64_t a1)
{
  v2 = sub_2144A0ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144A080C(uint64_t a1)
{
  v2 = sub_2144A0ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LargeImage.Context.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914708, &qword_214750310);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A0ADC();
  sub_2146DAA28();
  v11 = *v3;
  v10[11] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318);
  sub_21432076C(qword_280B32A38, &unk_27C914A40, &qword_214750318, protocol conformance descriptor for XPCCodable<A>);
  sub_2146DA388();
  if (!v2)
  {
    v10[10] = 1;
    sub_2146DA368();
    v10[9] = 2;
    sub_2146DA378();
    type metadata accessor for LargeImage.Context(0);
    v10[8] = 3;
    type metadata accessor for MediaMetadata(0);
    sub_2144A0ECC(&qword_280B34670, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2144A0ADC()
{
  result = qword_280B34B50;
  if (!qword_280B34B50)
  {
    result = swift_getWitnessTable(byte_214750618, &type metadata for LargeImage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34B50);
  }

  return result;
}

uint64_t LargeImage.Context.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for MediaMetadata(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914710, &qword_214750320);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for LargeImage.Context(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2144A0ADC();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = v6;
    v22 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914A40, &qword_214750318);
    v30 = 0;
    sub_21432076C(&qword_280B30B08, &unk_27C914A40, &qword_214750318, protocol conformance descriptor for XPCCodable<A>);
    v15 = v24;
    sub_2146DA1C8();
    v16 = v22;
    *v22 = v31;
    v29 = 1;
    v17 = sub_2146DA1A8();
    v18 = v25;
    *(v16 + 8) = v17;
    v28 = 2;
    *(v16 + 16) = sub_2146DA1B8();
    v27 = 3;
    sub_2144A0ECC(&qword_280B34BE8, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
    v20 = v21;
    sub_2146DA1C8();
    (*(v18 + 8))(v10, v15);
    sub_2144A0F14(v20, v16 + *(v11 + 28), type metadata accessor for MediaMetadata);
    sub_2144A0F14(v16, v23, type metadata accessor for LargeImage.Context);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_2144A0ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144A0F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LargeImage.image.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LargeImage.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LargeImage(0) + 20);

  return sub_2144A10B0(a1, v3);
}

uint64_t sub_2144A10B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144A115C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

void sub_2144A1194(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_2144A126C(uint64_t a1)
{
  v2 = sub_2144A1500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144A12A8(uint64_t a1)
{
  v2 = sub_2144A1500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LargeImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914718, &qword_214750328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A1500();
  sub_2146DAA28();
  v11 = *v3;
  v10[7] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0);
  sub_21432076C(&qword_280B30B00, &qword_27C917A10, &unk_214756CB0, protocol conformance descriptor for XPCCodable<A>);
  sub_2146DA388();

  if (!v2)
  {
    type metadata accessor for LargeImage(0);
    v10[6] = 1;
    type metadata accessor for MediaMetadata(0);
    sub_2144A0ECC(&qword_280B34670, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2144A1500()
{
  result = qword_280B34B58;
  if (!qword_280B34B58)
  {
    result = swift_getWitnessTable(aA_33, &type metadata for LargeImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34B58);
  }

  return result;
}

uint64_t LargeImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for MediaMetadata(0);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914720, &qword_214750330);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LargeImage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144A1500();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v11;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917A10, &unk_214756CB0);
  v23 = 0;
  sub_21432076C(&qword_280B32A30, &qword_27C917A10, &unk_214756CB0, protocol conformance descriptor for XPCCodable<A>);
  v12 = v21;
  sub_2146DA1C8();
  v13 = v16;
  *v16 = v24;
  v22 = 1;
  sub_2144A0ECC(&qword_280B34BE8, type metadata accessor for MediaMetadata, protocol conformance descriptor for MediaMetadata);
  sub_2146DA1C8();
  (*(v20 + 8))(v8, v12);
  sub_2144A0F14(v5, v13 + *(v9 + 20), type metadata accessor for MediaMetadata);
  sub_2144A18BC(v13, v18, type metadata accessor for LargeImage);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_2144A1E04(v13, type metadata accessor for LargeImage);
}

uint64_t sub_2144A18BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LargeImage.init(image:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for LargeImage(0);
  return sub_2144A0F14(a2, a3 + *(v5 + 20), type metadata accessor for MediaMetadata);
}

uint64_t LargeImage.Context.init(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  address[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == 1)
  {
    v3 = 0x800000021479B3E0;
    sub_21404A6EC();
    swift_allocError();
    *v4 = 0xD00000000000002ELL;
    v4[1] = 0x80000002147998A0;
    v5 = 0xD000000000000031;
LABEL_3:
    v4[2] = v5;
    v4[3] = v3;
    v4[4] = 0xD000000000000022;
    v4[5] = 0x800000021479B420;
LABEL_10:
    swift_willThrow();
    return sub_2144A1E04(a1, type metadata accessor for MediaMetadata);
  }

  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  address[0] = 0;
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x277D85F48];
  v11 = vm_allocate(*MEMORY[0x277D85F48], address, v8, 3);
  if (v11)
  {
    v12 = v11;
    sub_2146D9EF8();

    v23 = 0xD000000000000024;
    v24 = 0x800000021479B450;
    LODWORD(size) = v12;
LABEL_9:
    v13 = sub_2146DA428();
    MEMORY[0x2160545D0](v13);

    MEMORY[0x2160545D0](41, 0xE100000000000000);
    v14 = v23;
    v15 = v24;
    sub_21404A6EC();
    swift_allocError();
    *v16 = 0xD00000000000002ELL;
    v16[1] = 0x80000002147998A0;
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = 0xD000000000000022;
    v16[5] = 0x800000021479B420;
    goto LABEL_10;
  }

  object_handle = 0;
  size = v8;
  if (mach_make_memory_entry_64(*v10, &size, address[0], 4194307, &object_handle, 0))
  {
    MEMORY[0x216056C00](*v10, address[0], v8);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2146D9EF8();

    v23 = 0xD000000000000022;
    v24 = 0x800000021479B480;
    goto LABEL_9;
  }

  v18 = address[0];
  if (!address[0])
  {
    MEMORY[0x216056C00](*v10, 0, v8);
    mach_port_deallocate(*v10, object_handle);
    v3 = 0x800000021479B4E0;
    sub_21404A6EC();
    swift_allocError();
    *v4 = 0xD00000000000002ELL;
    v4[1] = 0x80000002147998A0;
    v5 = 0xD000000000000026;
    goto LABEL_3;
  }

  if (v8 < 0x21)
  {
    MEMORY[0x216056C00](*v10);
    mach_port_deallocate(*v10, object_handle);
    v3 = 0x800000021479B4B0;
    sub_21404A6EC();
    swift_allocError();
    *v4 = 0xD00000000000002ELL;
    v4[1] = 0x80000002147998A0;
    v5 = 0xD000000000000029;
    goto LABEL_3;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if ((v6 | v7) < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  if (v6 > 0xFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  *address[0] = 0xB1A57D002;
  *(v18 + 8) = v7;
  *(v18 + 12) = v6;
  *(v18 + 16) = v8;
  *(v18 + 24) = v8 - 32;
  *a2 = object_handle;
  v19 = address[0];
  *(a2 + 8) = v8;
  *(a2 + 16) = v19;
  v20 = type metadata accessor for LargeImage.Context(0);
  return sub_2144A0F14(a1, a2 + *(v20 + 28), type metadata accessor for MediaMetadata);
}

uint64_t sub_2144A1E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2144A1EF4(uint64_t a1)
{
  result = sub_2144A0ECC(&qword_280B34B28, type metadata accessor for LargeImage, protocol conformance descriptor for LargeImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2144A1F4C(uint64_t a1)
{
  *(a1 + 8) = sub_2144A0ECC(&qword_280B34C48, type metadata accessor for LargeImage, protocol conformance descriptor for LargeImage);
  result = sub_2144A0ECC(&qword_280B34B30, type metadata accessor for LargeImage, protocol conformance descriptor for LargeImage);
  *(a1 + 16) = result;
  return result;
}

void sub_2144A1FF8(uint64_t a1)
{
  sub_2144A207C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MediaMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144A207C(uint64_t a1)
{
  if (!qword_280B34C30)
  {
    v2 = type metadata accessor for MachImage();
    v5 = type metadata accessor for XPCCodable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280B34C30);
    }
  }
}

void sub_2144A20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2144A2198(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for MediaMetadata(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2144A2198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280B34E50[0])
  {
    v4 = type metadata accessor for XPCCodable(0, &type metadata for MachPort, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_280B34E50);
    }
  }
}

unint64_t sub_2144A220C()
{
  result = qword_27C914728;
  if (!qword_27C914728)
  {
    result = swift_getWitnessTable(aMH, &type metadata for LargeImage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914728);
  }

  return result;
}

unint64_t sub_2144A2264()
{
  result = qword_27C914730;
  if (!qword_27C914730)
  {
    result = swift_getWitnessTable(asc_2147505A0, &type metadata for LargeImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C914730);
  }

  return result;
}

unint64_t sub_2144A22BC()
{
  result = qword_280B34C58;
  if (!qword_280B34C58)
  {
    result = swift_getWitnessTable(byte_214750510, &type metadata for LargeImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C58);
  }

  return result;
}

unint64_t sub_2144A2314()
{
  result = qword_280B34C60;
  if (!qword_280B34C60)
  {
    result = swift_getWitnessTable(byte_214750538, &type metadata for LargeImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C60);
  }

  return result;
}

unint64_t sub_2144A236C()
{
  result = qword_280B34C50;
  if (!qword_280B34C50)
  {
    result = swift_getWitnessTable(aI_25, &type metadata for LargeImage.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B34C50);
  }

  return result;
}