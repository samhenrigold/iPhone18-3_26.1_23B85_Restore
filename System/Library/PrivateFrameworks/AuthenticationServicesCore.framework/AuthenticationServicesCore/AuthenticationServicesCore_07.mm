uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1C2161C0C(uint64_t a1)
{
  sub_1C21703B4();
  if (v1 <= 0x3F)
  {
    sub_1C2161CF4(319, &qword_1EBF250B0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C2161CF4(319, &qword_1EBF25190, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2161CF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C2161D48()
{
  result = qword_1EBF25198;
  if (!qword_1EBF25198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25198);
  }

  return result;
}

unint64_t sub_1C2161DA0()
{
  result = qword_1EBF251A0;
  if (!qword_1EBF251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251A0);
  }

  return result;
}

unint64_t sub_1C2161DF8()
{
  result = qword_1EBF251A8;
  if (!qword_1EBF251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251A8);
  }

  return result;
}

unint64_t sub_1C2161E50()
{
  result = qword_1EBF251B0;
  if (!qword_1EBF251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251B0);
  }

  return result;
}

unint64_t sub_1C2161EA8()
{
  result = qword_1EBF251B8;
  if (!qword_1EBF251B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251B8);
  }

  return result;
}

unint64_t sub_1C2161F00()
{
  result = qword_1EBF251C0;
  if (!qword_1EBF251C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251C0);
  }

  return result;
}

id ASCRelatedOriginFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C2161FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E696769726FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C2162080(uint64_t a1)
{
  v2 = sub_1C216395C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21620BC(uint64_t a1)
{
  v2 = sub_1C216395C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C21620F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C21637D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C2162124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1C216FCB4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v5[11] = swift_task_alloc();
  v7 = sub_1C2170024();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_1C216FDA4();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C21622E8, 0, 0);
}

uint64_t sub_1C21622E8(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[11];
  v6 = v1[5];
  v5 = v1[6];
  sub_1C216FD94();
  sub_1C216FD84();

  MEMORY[0x1C6913010](v6, v5);
  MEMORY[0x1C6913020](0xD000000000000015, 0x80000001C21870A0);
  sub_1C216FD54();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1C20DD6F0(v1[11]);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v7 = sub_1C21705A4();
    __swift_project_value_buffer(v7, qword_1EDD4CB08);
    v8 = sub_1C2170584();
    v9 = sub_1C2170C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C20AD000, v8, v9, "Failed to create /.well-known/webauthn URL", v10, 2u);
      MEMORY[0x1C6915360](v10, -1, -1);
    }

    v12 = v1[17];
    v11 = v1[18];
    v13 = v1[16];

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.AuthenticationServicesCore.AuthorizationError" code:1 userInfo:0];
    swift_willThrow();
    (*(v12 + 8))(v11, v13);

    v14 = v1[1];

    return v14(0);
  }

  else
  {
    v17 = v1[14];
    v16 = v1[15];
    v18 = v1[12];
    v19 = v1[13];
    v20 = v1[7];
    (*(v19 + 32))(v16, v1[11], v18);
    (*(v19 + 16))(v17, v16, v18);
    sub_1C216FC84();
    sub_1C216FCA4();
    v21 = [objc_opt_self() defaultSessionConfiguration];
    v1[19] = v21;
    v1[20] = [objc_opt_self() sessionWithConfiguration:v21 delegate:v20 delegateQueue:0];
    v22 = swift_task_alloc();
    v1[21] = v22;
    *v22 = v1;
    v22[1] = sub_1C21626AC;
    v23 = v1[10];

    return MEMORY[0x1EEDC6260](v23, 0);
  }
}

uint64_t sub_1C21626AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;
  v5[25] = v3;

  if (v3)
  {
    v6 = sub_1C2162AA4;
  }

  else
  {
    v6 = sub_1C21627C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C21627C4()
{
  v1 = v0[25];
  sub_1C216FCE4();
  swift_allocObject();
  sub_1C216FCD4();
  sub_1C21630C4();
  sub_1C216FCC4();
  if (v1)
  {
    v2 = v0[23];
    v3 = v0[22];
    v4 = v0[20];
    v27 = v0[19];
    v28 = v0[24];
    v5 = v0[17];
    v33 = v0[16];
    v34 = v0[18];
    v6 = v0[13];
    v29 = v0[12];
    v31 = v0[15];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];

    sub_1C20D3174(v3, v2);
    (*(v7 + 8))(v8, v9);
    (*(v6 + 8))(v31, v29);
    (*(v5 + 8))(v34, v33);

    v10 = v0[1];
    v11 = 0;
  }

  else
  {

    v12 = v0[2];
    v13 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v14 = sub_1C21708F4();
    v15 = [v13 initWithString_];

    v16 = v0[20];
    if (v15)
    {
      v35 = sub_1C2163118(v15, v12);
    }

    else
    {

      v35 = 0;
    }

    v17 = v0[24];
    v18 = v0[18];
    v19 = v0[19];
    v20 = v0[17];
    v21 = v0[15];
    v32 = v0[16];
    v22 = v0[13];
    v30 = v0[12];
    v23 = v0[10];
    v25 = v0[8];
    v24 = v0[9];
    sub_1C20D3174(v0[22], v0[23]);

    (*(v24 + 8))(v23, v25);
    (*(v22 + 8))(v21, v30);
    (*(v20 + 8))(v18, v32);

    v10 = v0[1];
    v11 = v35 & 1;
  }

  return v10(v11);
}

uint64_t sub_1C2162AA4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v12 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v12, v3);

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1C2162D50(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1C2170914();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1C2170914();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1C2162E4C;

  return sub_1C2162124(v6, v8, v9, v11);
}

uint64_t sub_1C2162E4C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1C216FF84();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

id ASCRelatedOriginFetcher.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ASCRelatedOriginFetcher.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASCRelatedOriginFetcher();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C21630C4()
{
  result = qword_1EBF251D8;
  if (!qword_1EBF251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251D8);
  }

  return result;
}

uint64_t sub_1C2163118(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1C2170024();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1E69E7CD0];
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v8 + 48);
    v39 = (v8 + 8);
    v40 = (v8 + 32);
    v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = a1;
    v37 = v11;
    v38 = a2 + 32;
    while (1)
    {

      sub_1C2170014();

      if ((*v13)(v6, 1, v7) == 1)
      {
        sub_1C20DD6F0(v6);
      }

      else
      {
        (*v40)(v10, v6, v7);
        sub_1C216FFE4();
        if (!v14)
        {
          goto LABEL_21;
        }

        v15 = sub_1C21708F4();

        v16 = [v15 safari_stringByRemovingTopLevelDomainFromHost];

        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = sub_1C2170914();
        v19 = v18;

        v41[0] = v17;
        v41[1] = v19;
        v41[9] = 46;
        v41[10] = 0xE100000000000000;
        sub_1C21197CC();
        v20 = sub_1C2170D84();

        v21 = *(v20 + 16);
        if (!v21)
        {

LABEL_21:
          (*v39)(v10, v7);
          goto LABEL_4;
        }

        v22 = (v20 + 16 + 16 * v21);
        v24 = *v22;
        v23 = v22[1];

        v25 = v42;
        if (!*(v42 + 16))
        {
          goto LABEL_22;
        }

        sub_1C2171434();
        sub_1C21709B4();
        v26 = sub_1C2171454();
        v27 = -1 << *(v25 + 32);
        v28 = v26 & ~v27;
        if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (1)
          {
            v30 = (*(v25 + 48) + 16 * v28);
            v31 = *v30 == v24 && v30[1] == v23;
            if (v31 || (sub_1C2171324() & 1) != 0)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          v10 = v35;
          a1 = v36;
LABEL_24:
          v32 = sub_1C216FFB4();
          v33 = [a1 safari:v32 hasSameOriginAsURL:?];

          (*v39)(v10, v7);
          v11 = v37;
          if (v33)
          {
            v11 = 1;
            break;
          }

          goto LABEL_4;
        }

LABEL_18:
        v10 = v35;
        a1 = v36;
        if (*(v25 + 16) != 5)
        {
LABEL_22:
          sub_1C214C8C4(v41, v24, v23);

          goto LABEL_24;
        }

        (*v39)(v35, v7);

        v11 = v37;
      }

LABEL_4:
      if (++v12 == v11)
      {
        v11 = 0;
        break;
      }
    }
  }

  return v11;
}

uint64_t dispatch thunk of ASCRelatedOriginFetcher.isOrigin(_:relatedToRelyingPartyIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C21636CC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C21636CC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_1C21637D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251E8, &qword_1C2181098);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216395C();
  sub_1C2171464();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C21639B0();
    sub_1C21711D4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_1C216395C()
{
  result = qword_1EBF251F0;
  if (!qword_1EBF251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251F0);
  }

  return result;
}

unint64_t sub_1C21639B0()
{
  result = qword_1EBF23E10;
  if (!qword_1EBF23E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF236E0, &qword_1C2176D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E10);
  }

  return result;
}

uint64_t sub_1C2163A2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C20DBD8C;

  return sub_1C2162D50(v2, v3, v5, v4);
}

unint64_t sub_1C2163B00()
{
  result = qword_1EBF251F8;
  if (!qword_1EBF251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF251F8);
  }

  return result;
}

unint64_t sub_1C2163B58()
{
  result = qword_1EBF25200;
  if (!qword_1EBF25200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25200);
  }

  return result;
}

unint64_t sub_1C2163BB0()
{
  result = qword_1EBF25208;
  if (!qword_1EBF25208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25208);
  }

  return result;
}

uint64_t sub_1C2163C04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_1C2164C50();
    a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v4 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t sub_1C2163D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v4 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t sub_1C2163E0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
  }

  else
  {
    sub_1C20D865C(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      a1 = sub_1C21713D4();
    }

    else
    {
      sub_1C2171034();
      a1 = 0;
    }

    sub_1C20D3174(a3, a4);
  }

  return a1;
}

uint64_t sub_1C2163F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {

    return a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      swift_getErrorValue();
      v3 = sub_1C21713D4();

      return v3;
    }

    else
    {
      sub_1C2171034();
      return 0;
    }
  }
}

uint64_t sub_1C2164014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = sub_1C2170964();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C2170224();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CableRequest.AllocationRequest(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  sub_1C21703A4();
  v20 = &v19[*(v14 + 28)];
  v32 = xmmword_1C21769B0;
  *v20 = xmmword_1C21769B0;
  v21 = *(v14 + 32);
  v19[v21] = 2;
  v22 = *v20;
  v23 = *(v20 + 1);
  *v20 = a1;
  *(v20 + 1) = a2;
  sub_1C20D865C(a1, a2);
  sub_1C20B23C8(v22, v23);
  v19[v21] = v33;
  v24 = type metadata accessor for CableRequest.OneOf_Request(0);
  v25 = *(*(v24 - 8) + 56);
  v25(a4, 1, 1, v24);
  v26 = type metadata accessor for CableRequest(0);
  sub_1C21703A4();
  v27 = a4 + *(v26 + 24);
  *v27 = v32;
  sub_1C2164C9C(v19, v17, type metadata accessor for CableRequest.AllocationRequest);
  sub_1C20EB498(a4, &qword_1EBF23760, &qword_1C2176DC8);
  sub_1C2164D04(v17, a4, type metadata accessor for CableRequest.AllocationRequest);
  swift_storeEnumTagMultiPayload();
  v25(a4, 0, 1, v24);
  sub_1C2170214();
  sub_1C2170204();
  (*(v34 + 8))(v12, v35);
  sub_1C2170954();
  v28 = sub_1C2170924();
  v30 = v29;

  result = (*(v36 + 8))(v9, v37);
  if (v30 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1C20B23C8(*v27, *(v27 + 8));
    *v27 = v28;
    *(v27 + 8) = v30;
    return sub_1C2164D6C(v19, type metadata accessor for CableRequest.AllocationRequest);
  }

  return result;
}

uint64_t sub_1C216439C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CableResponse.AllocationResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1C2164BE0(v2, &v17 - v12);
  v14 = type metadata accessor for CableResponse.OneOf_Response(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  sub_1C2164BE0(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2164D6C(v11, type metadata accessor for CableResponse.OneOf_Response);
LABEL_4:
    (*(v5 + 56))(a1, 1, 1, v4);
    return sub_1C20EB498(v13, &qword_1EBF24FD0, &unk_1C2180BE0);
  }

  sub_1C2164D04(v11, v7, type metadata accessor for CableResponse.AllocationResponse);
  v15 = (v5 + 56);
  if (sub_1C2164628())
  {
    sub_1C2164D04(v7, a1, type metadata accessor for CableResponse.AllocationResponse);
    (*v15)(a1, 0, 1, v4);
  }

  else
  {
    sub_1C2164D6C(v7, type metadata accessor for CableResponse.AllocationResponse);
    (*v15)(a1, 1, 1, v4);
  }

  return sub_1C20EB498(v13, &qword_1EBF24FD0, &unk_1C2180BE0);
}

uint64_t sub_1C2164628()
{
  v1 = type metadata accessor for CableResponse.AllocationResponse(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v28 - v6;
  if (*(v0 + *(v5 + 20) + 8) >> 60 != 15)
  {
    if (*(v0 + *(v5 + 24) + 4) != 1)
    {
      return 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v17 = sub_1C21705A4();
    __swift_project_value_buffer(v17, qword_1EDD4CB08);
    sub_1C2164C9C(v0, v7, type metadata accessor for CableResponse.AllocationResponse);
    v18 = sub_1C2170584();
    v19 = sub_1C2170C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315138;
      v22 = sub_1C21649FC();
      v24 = v23;
      sub_1C2164D6C(v7, type metadata accessor for CableResponse.AllocationResponse);
      v25 = sub_1C20D7F2C(v22, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1C20AD000, v18, v19, "Allocation response is missing domain: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1C6915360](v21, -1, -1);
      MEMORY[0x1C6915360](v20, -1, -1);

      return 0;
    }

    v26 = v7;
LABEL_14:
    sub_1C2164D6C(v26, type metadata accessor for CableResponse.AllocationResponse);
    return 0;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v8 = sub_1C21705A4();
  __swift_project_value_buffer(v8, qword_1EDD4CB08);
  sub_1C2164C9C(v0, v4, type metadata accessor for CableResponse.AllocationResponse);
  v9 = sub_1C2170584();
  v10 = sub_1C2170C54();
  if (!os_log_type_enabled(v9, v10))
  {

    v26 = v4;
    goto LABEL_14;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v29 = v12;
  *v11 = 136315138;
  v13 = sub_1C21649FC();
  v15 = v14;
  sub_1C2164D6C(v4, type metadata accessor for CableResponse.AllocationResponse);
  v16 = sub_1C20D7F2C(v13, v15, &v29);

  *(v11 + 4) = v16;
  _os_log_impl(&dword_1C20AD000, v9, v10, "Allocation response is missing routingID: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  MEMORY[0x1C6915360](v12, -1, -1);
  MEMORY[0x1C6915360](v11, -1, -1);

  return 0;
}

uint64_t sub_1C21649FC()
{
  v1 = type metadata accessor for CableResponse.AllocationResponse(0);
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    sub_1C20B22B8(v3, v4);
  }

  v5 = v1[7];
  v6 = (v0 + v1[6]);
  v7 = *v6;
  v8 = *(v6 + 4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  if (v10 >> 60 != 15)
  {
    sub_1C20B22B8(*(v0 + v5), *(v0 + v5 + 8));
  }

  sub_1C2170F34();
  MEMORY[0x1C6913CB0](0xD000000000000020, 0x80000001C2187160);
  v11 = sub_1C2163E0C(0x3E6C696E3CLL, 0xE500000000000000, v3, v4);
  MEMORY[0x1C6913CB0](v11);

  MEMORY[0x1C6913CB0](0xD000000000000011, 0x80000001C2187190);
  v12 = sub_1C2163F1C(0x3E6C696E3CLL, 0xE500000000000000, v7 | (v8 << 32));
  MEMORY[0x1C6913CB0](v12);

  MEMORY[0x1C6913CB0](0x6361746E6F63203BLL, 0xED0000203A444974);
  v13 = sub_1C2163E0C(0x3E6C696E3CLL, 0xE500000000000000, v9, v10);
  MEMORY[0x1C6913CB0](v13);

  MEMORY[0x1C6913CB0](62, 0xE100000000000000);
  sub_1C20B23C8(v9, v10);
  sub_1C20B23C8(v3, v4);
  return 0;
}

uint64_t sub_1C2164BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2164C50()
{
  result = qword_1EBF25210;
  if (!qword_1EBF25210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF25210);
  }

  return result;
}

uint64_t sub_1C2164C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2164D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2164D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CodingUserInfoKey.CBOREncodingFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t sub_1C2164E58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF25238, &unk_1C2181280);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C2171054();
  __swift_allocate_value_buffer(v3, qword_1EBF25218);
  v4 = __swift_project_value_buffer(v3, qword_1EBF25218);
  sub_1C2171044();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.as_CBOREncodingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBF23138 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2171054();
  v3 = __swift_project_value_buffer(v2, qword_1EBF25218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C2165034()
{
  result = qword_1EBF25230;
  if (!qword_1EBF25230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25230);
  }

  return result;
}

id ASProgressiveBackoffManager.__allocating_init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDurationSeconds:)(uint64_t a1, double a2)
{
  swift_allocObject();
  v3 = sub_1C21714B4();
  v5 = v4;
  v6 = type metadata accessor for ASProgressiveBackoffManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v7[14] = a1;
  v7[15] = v3;
  v7[16] = v5;
  v7[17] = v8;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id ASProgressiveBackoffManager.init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDurationSeconds:)(uint64_t a1, double a2)
{
  v3 = sub_1C21714B4();
  v5 = v4;
  v6 = type metadata accessor for ASProgressiveBackoffManager();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v7[14] = a1;
  v7[15] = v3;
  v7[16] = v5;
  v7[17] = v8;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id ASProgressiveBackoffManager.__allocating_init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v7[14] = a1;
  v7[15] = a2;
  v7[16] = a3;
  v7[17] = v8;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ASProgressiveBackoffManager.init(numberOfOperationsBeforeTriggeringBackoff:minimumCooldownDuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  v7 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v3[14] = a1;
  v3[15] = a2;
  v3[16] = a3;
  v3[17] = v7;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ASProgressiveBackoffManager();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1C21653D4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C21653F8, v2, 0);
}

uint64_t sub_1C21653F8()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];

    v5 = sub_1C2121F88(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      goto LABEL_6;
    }
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v15 = *(v8 + 112);
  v11 = *(v8 + 128);
  type metadata accessor for ASProgressiveBackoffManager.Context();
  v7 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 112) = v10;
  *(v7 + 120) = v9;
  *(v7 + 128) = v15;
  *(v7 + 144) = v11;
  *(v7 + 152) = 12;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + 136);
  *(v1 + 136) = 0x8000000000000000;
  sub_1C213CAAC(v7, v10, v9, isUniquelyReferenced_nonNull_native);

  *(v1 + 136) = v16;
  swift_endAccess();
LABEL_6:
  v0[11] = v7;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1C21655BC;

  return sub_1C2165CD4();
}

uint64_t sub_1C21655BC()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1C21656CC, v1, 0);
}

uint64_t sub_1C21656CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C21658B8(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_1C2170914();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C216598C;

  return sub_1C21653D4(v4, v6);
}

uint64_t sub_1C216598C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void ASProgressiveBackoffManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ASProgressiveBackoffManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t ASProgressiveBackoffManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ASProgressiveBackoffManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2165C08()
{
  v2 = v1[20];
  v3 = v1[16];
  if (v3 >= v2)
  {
    return 0;
  }

  v5 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v1[19] >= v7)
  {
    v0 = v7;
  }

  else
  {
    v0 = v1[19];
  }

  if (v0 - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((v0 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v8 = 0;
    result = 0;
    if (v0 <= 0xFFFFFFFFFFFFFFC0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v0 >= 0x40)
  {
    return 0;
  }

  v8 = 1 << v0;
LABEL_13:
  v9 = 3600;
  if (v8 < 3600)
  {
    v9 = v8;
  }

  return 1000000000000000000 * v9;
}

uint64_t sub_1C2165CD4()
{
  v1[2] = v0;
  v2 = sub_1C2171014();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2165D94, v0, 0);
}

uint64_t sub_1C2165D94()
{
  v1 = v0[2];
  result = sub_1C2165C08();
  v5 = *(v1 + 160);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 160) = v7;
    if (v4)
    {
      sub_1C21661F4();

      v8 = v0[1];

      return v8();
    }

    else
    {
      v9 = result;
      v10 = v3;
      sub_1C21713A4();
      v11 = swift_task_alloc();
      v0[6] = v11;
      *v11 = v0;
      v11[1] = sub_1C2165ECC;

      return sub_1C2167044(v9, v10, 0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_1C2165ECC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1C21660C0;
  }

  else
  {
    v7 = sub_1C2166054;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C2166054(uint64_t a1)
{
  sub_1C21661F4();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C21660C0()
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v1 = sub_1C21705A4();
  __swift_project_value_buffer(v1, qword_1EDD4CB08);
  v2 = sub_1C2170584();
  v3 = sub_1C2170C74();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C20AD000, v2, v3, "Task canceled before backoff timer finished.", v6, 2u);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  sub_1C21661F4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C21661F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  if (v0[21])
  {

    sub_1C2170BF4();
  }

  v4 = sub_1C2165C08();
  if (v6)
  {
    v7 = v0[17];
    v8 = v0[18];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v7 = v0[17];
    v8 = v0[18];
    if (sub_1C21714A4())
    {
      v7 = v9;
      v8 = v10;
    }
  }

  v11 = sub_1C2170BE4();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v13 = sub_1C2167754(&qword_1EDD4B770, v12, type metadata accessor for ASProgressiveBackoffManager.Context, &unk_1C2181360);
  v14 = swift_allocObject();
  v14[2] = v0;
  v14[3] = v13;
  v14[4] = v0;
  v14[5] = v7;
  v14[6] = v8;
  swift_retain_n();
  v0[21] = sub_1C211E0FC(0, 0, v3, &unk_1C2181398, v14);
}

uint64_t sub_1C21663C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1C2171014();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C216648C, a4, 0);
}

uint64_t sub_1C216648C()
{
  v15 = v0;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v1 = sub_1C21705A4();
  v0[8] = __swift_project_value_buffer(v1, qword_1EDD4CB08);

  v2 = sub_1C2170584();
  v3 = sub_1C2170C34();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1C20D7F2C(*(v4 + 112), *(v4 + 120), &v14);
    *(v5 + 12) = 2080;
    v7 = sub_1C2171494();
    v9 = sub_1C20D7F2C(v7, v8, &v14);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1C20AD000, v2, v3, "Scheduling %{public}s cooldown for %s.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v6, -1, -1);
    MEMORY[0x1C6915360](v5, -1, -1);
  }

  sub_1C21713A4();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1C21666BC;
  v12 = v0[3];
  v11 = v0[4];

  return sub_1C2167044(v12, v11, 0, 0, 1);
}

uint64_t sub_1C21666BC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1C21669DC;
  }

  else
  {
    v7 = sub_1C2166844;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C2166844()
{
  v13 = v0;

  v1 = sub_1C2170584();
  v2 = sub_1C2170C34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1C20D7F2C(*(v3 + 112), *(v3 + 120), &v12);
    *(v4 + 12) = 2080;
    v6 = sub_1C2171494();
    v8 = sub_1C20D7F2C(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1C20AD000, v1, v2, "Cooldown %{public}s for %s completed.", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v5, -1, -1);
    MEMORY[0x1C6915360](v4, -1, -1);
  }

  v9 = *(v0 + 16);
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C21669DC()
{
  v14 = v0;

  v1 = sub_1C2170584();
  v2 = sub_1C2170C34();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1C20D7F2C(*(v5 + 112), *(v5 + 120), &v13);
    *(v6 + 12) = 2080;
    v8 = sub_1C2171494();
    v10 = sub_1C20D7F2C(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1C20AD000, v1, v2, "Cooldown %{public}s for %s aborted.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v7, -1, -1);
    MEMORY[0x1C6915360](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C2166B78()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2166BB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C20DBF8C;

  return v6();
}

uint64_t sub_1C2166CA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C20DBD8C;

  return v7();
}

uint64_t sub_1C2166D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C2167850(a3, v23 - v10);
  v12 = sub_1C2170BE4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C21678C0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C2170BD4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1C2170BA4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1C2170994() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1C21678C0(a3);

    return v21;
  }

LABEL_8:
  sub_1C21678C0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C2167044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C2171004();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C2167144, 0, 0);
}

uint64_t sub_1C2167144()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C2171014();
  v5 = sub_1C2167754(&qword_1EDD4B778, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C2171384();
  sub_1C2167754(&unk_1EDD4B780, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C2171024();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C21672DC;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C21672DC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C2167498, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1C2167498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of ASProgressiveBackoffManager.performAfterBackoff(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C20DBD8C;

  return v9(a1, a2);
}

uint64_t sub_1C216768C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C20DBF8C;

  return sub_1C21663C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C2167754(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C216779C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C20DBF8C;

  return sub_1C21658B8(v2, v3, v4);
}

uint64_t sub_1C2167850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C21678C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2167928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C20DBF8C;

  return sub_1C2122A0C(a1, v4);
}

uint64_t sub_1C21679E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C20DBD8C;

  return sub_1C2122A0C(a1, v4);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(secret1:secret2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2170764();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0) + 20);

  return sub_1C210B21C(a2, v7);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

__n128 ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(result:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1C2167BA4(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  sub_1C2167FA4(&unk_1EBF25248, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionOutputs);
  v2 = sub_1C216FD24();
  v4 = v3;

  v5 = sub_1C2170154();
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  return sub_1C20D3174(v2, v4);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2167FA4(&qword_1EBF25258, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionOutputs);
    sub_1C216FCC4();

    v7 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
    v8 = sub_1C216B5E4(v10);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v8;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1C2167FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id ASCPublicKeyCredentialAssertionExtensionOutputs.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = -1;
  v2 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v3 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C21681C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0x6F69736E65747845;
  v31 = 0xEF0A207B203A736ELL;
  v12 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (v13 != 255)
  {
    v23 = v8;
    v14 = *(v12 + 8);
    v27 = *v12;
    v15 = v27;
    v28 = v14;
    v29 = v13 & 1;
    sub_1C216B884(v27, v14, v13 & 1);
    v16 = ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.description.getter();
    v24 = v4;
    v25 = 9;
    v26 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v16);

    v27 = v25;
    v28 = v26;

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v27, v28);
    v4 = v24;

    v17 = v14;
    v8 = v23;
    sub_1C2142F40(v15, v17, v13);
  }

  v18 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v18, v7, &qword_1EBF24840, &qword_1C217E130);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C20EB498(v7, &qword_1EBF24840, &qword_1C217E130);
  }

  else
  {
    sub_1C216B7C4(v7, v11);
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
    sub_1C2170764();
    sub_1C2171034();
    MEMORY[0x1C6913CB0](32, 0xE100000000000000);
    sub_1C20EB3E8(&v11[*(v8 + 20)], v4, &qword_1EBF23BF0, &unk_1C21813F0);
    v19 = sub_1C2170974();
    MEMORY[0x1C6913CB0](v19);

    v20 = v25;
    v21 = v26;
    v25 = 9;
    v26 = 0xE100000000000000;
    MEMORY[0x1C6913CB0](v20, v21);

    MEMORY[0x1C6913CB0](10, 0xE100000000000000);

    MEMORY[0x1C6913CB0](v25, v26);

    sub_1C216B828(v11);
  }

  v25 = v30;
  v26 = v31;

  MEMORY[0x1C6913CB0](125, 0xE100000000000000);

  return v25;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    sub_1C2170F34();

    v8 = 0xD000000000000011;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1C6913CB0](v2, v3);

    return v8;
  }

  v4 = *(v0 + 8);
  if (v4 >> 60 == 15)
  {
    return 0xD000000000000013;
  }

  sub_1C20D865C(v1, v4);
  sub_1C20D865C(v1, v4);
  sub_1C2170F34();

  v8 = 0xD000000000000010;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2 || !__OFSUB__(*(v1 + 24), *(v1 + 16)))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_19:
    v7 = sub_1C21712E4();
    MEMORY[0x1C6913CB0](v7);

    MEMORY[0x1C6913CB0](0x736574796220, 0xE600000000000000);
    sub_1C2142F58(v1, v4, 0);
    sub_1C2142F58(v1, v4, 0);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - v2;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
  sub_1C2170764();
  sub_1C2171034();
  MEMORY[0x1C6913CB0](32, 0xE100000000000000);
  v4 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  sub_1C20EB3E8(v0 + *(v4 + 20), v3, &qword_1EBF23BF0, &unk_1C21813F0);
  v5 = sub_1C2170974();
  MEMORY[0x1C6913CB0](v5);

  return v7[0];
}

uint64_t sub_1C21688CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_1C216B890(v4, v5, v6);
}

uint64_t sub_1C216892C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  sub_1C216B890(v2, v3, v5);
  return sub_1C2142F40(v6, v7, v8);
}

uint64_t sub_1C21689C4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1C216B890(v4, v5, v6);
}

uint64_t sub_1C2168A20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  v8 = *(v5 + 16);
  *(v5 + 16) = v4;
  return sub_1C2142F40(v6, v7, v8);
}

uint64_t sub_1C2168AF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C20EB3E8(a1, &v10 - v5, &qword_1EBF24840, &qword_1C217E130);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C216B8A8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1C2168BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v1 + v3, a1, &qword_1EBF24840, &qword_1C217E130);
}

uint64_t sub_1C2168C30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C216B8A8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C2168CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v37[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37[-v6];
  v8 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v13 = *(v12 + 16);
  *&v43 = v8;
  if (v13 == 255)
  {
    v41 = 0;
    v42 = 0;
    v16 = 0;
    v40 = 0;
    v17 = 0;
    v18 = 3;
    goto LABEL_11;
  }

  v15 = *v12;
  v14 = *(v12 + 8);
  if ((v13 & 1) == 0)
  {
    v19 = v14 >> 60;
    if (v14 >> 60 == 15)
    {
      v20 = 0;
      v41 = *(v12 + 8);
      v42 = v15;
LABEL_7:
      v40 = v20;
      v17 = v19 > 0xE;
      v18 = 2;
      v16 = 2;
      goto LABEL_11;
    }

    *&v38 = v14 >> 60;
    sub_1C216B884(v15, v14, 0);
    v21 = sub_1C2170044();
    v40 = 0;
    v41 = v22;
    v42 = v21;
    v23 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v23 != 2)
      {
LABEL_26:
        sub_1C2142F40(v15, v14, v13);
        v20 = 0;
        goto LABEL_27;
      }

      v36 = *(v15 + 16);
      v35 = *(v15 + 24);
      sub_1C2142F40(v15, v14, v13);
      v20 = v35 - v36;
      if (!__OFSUB__(v35, v36))
      {
LABEL_24:
        v19 = v38;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v23)
    {
      sub_1C2142F40(v15, v14, v13);
      v20 = BYTE6(v14);
LABEL_27:
      v19 = v38;
      goto LABEL_7;
    }

    result = sub_1C2142F40(v15, v14, v13);
    LODWORD(v20) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      return result;
    }

    v20 = v20;
    goto LABEL_24;
  }

  sub_1C2142F40(*v12, *(v12 + 8), v13);
  v40 = 0;
  v16 = v15 & 1;
  v17 = 1;
  v41 = 0xF000000000000000;
  v42 = 0;
  v18 = 2;
LABEL_11:
  v24 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v24, v7, &qword_1EBF24840, &qword_1C217E130);
  v25 = v43;
  if ((*(v9 + 48))(v7, 1, v43) == 1)
  {
    result = sub_1C20EB498(v7, &qword_1EBF24840, &qword_1C217E130);
    v27 = 0uLL;
    v28 = 3;
    v29 = 0uLL;
    v31 = v41;
    v30 = v42;
  }

  else
  {
    sub_1C216B7C4(v7, v11);
    sub_1C2170734();
    v38 = v44;
    v32 = v39;
    sub_1C20EB3E8(&v11[*(v25 + 20)], v39, &qword_1EBF23BF0, &unk_1C21813F0);
    v33 = sub_1C2170764();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_1C216B828(v11);
      result = sub_1C20EB498(v32, &qword_1EBF23BF0, &unk_1C21813F0);
      v29 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      sub_1C216B828(v11);
      v43 = v44;
      result = (*(v34 + 8))(v32, v33);
      v29 = v43;
    }

    v28 = 2;
    v31 = v41;
    v30 = v42;
    v27 = v38;
  }

  *a1 = v18;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31;
  *(a1 + 24) = v16;
  *(a1 + 32) = v40;
  *(a1 + 40) = v17;
  *(a1 + 48) = v28;
  *(a1 + 56) = v27;
  *(a1 + 72) = v29;
  *(a1 + 88) = 2;
  return result;
}

uint64_t sub_1C21693A0(uint64_t a1)
{
  v2 = sub_1C216B918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21693DC(uint64_t a1)
{
  v2 = sub_1C216B918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2169428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C21694B0(uint64_t a1)
{
  v2 = sub_1C216B9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21694EC(uint64_t a1)
{
  v2 = sub_1C216B9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2169540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C21695C8(uint64_t a1)
{
  v2 = sub_1C216B96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2169604(uint64_t a1)
{
  v2 = sub_1C216B96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25270, &qword_1C2181400);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25278, &qword_1C2181408);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25280, &qword_1C2181410);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v19 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216B918();
  sub_1C2171484();
  if (v13 == 1)
  {
    LOBYTE(v26) = 1;
    sub_1C216B96C();
    v14 = v25;
    sub_1C2171214();
    v15 = v23;
    sub_1C2171284();
    (*(v22 + 8))(v5, v15);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1C216B9C0();
    v14 = v25;
    sub_1C2171214();
    v26 = v24;
    v27 = v19;
    sub_1C20D8CEC();
    v16 = v21;
    sub_1C2171264();
    (*(v20 + 8))(v8, v16);
  }

  return (*(v9 + 8))(v11, v14);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252A8, &qword_1C2181418);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v28[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252B0, &qword_1C2181420);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252B8, &unk_1C2181428);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28[-v10];
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1C216B918();
  v13 = v35;
  sub_1C2171464();
  if (!v13)
  {
    v30 = v5;
    v35 = v9;
    v15 = v33;
    v14 = v34;
    v16 = sub_1C2171204();
    v17 = (2 * *(v16 + 16)) | 1;
    v38 = v16;
    v39 = v16 + 32;
    v40 = 0;
    v41 = v17;
    v18 = sub_1C20DA3C4();
    if (v18 == 2 || v40 != v41 >> 1)
    {
      v22 = sub_1C2170F74();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0);
      *v24 = &type metadata for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult;
      sub_1C2171154();
      sub_1C2170F64();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v35 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = v18;
      if (v18)
      {
        LOBYTE(v36) = 1;
        sub_1C216B96C();
        sub_1C2171144();
        v19 = sub_1C21711C4();
        (*(v31 + 8))(v4, v15);
        (*(v35 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v20 = 0;
        v21 = v19 & 1;
      }

      else
      {
        LOBYTE(v36) = 0;
        sub_1C216B9C0();
        sub_1C2171144();
        sub_1C20D8E24();
        v26 = v30;
        sub_1C21711A4();
        v27 = v35;
        (*(v32 + 8))(v7, v26);
        (*(v27 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v21 = v36;
        v20 = v37;
      }

      *v14 = v21;
      *(v14 + 8) = v20;
      *(v14 + 16) = v29 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v42);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1C216B884(v2, v3, v4);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1C2142F58(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1C2169F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C2171324();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C2169F94(uint64_t a1)
{
  v2 = sub_1C216BA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2169FD0(uint64_t a1)
{
  v2 = sub_1C216BA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252C0, &qword_1C2181438);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216B884(v6, v7, v8);
  sub_1C216BA14();
  sub_1C2171484();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1C216BA68();
  v9 = v11;
  sub_1C2171294();
  sub_1C2142F58(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252D8, &qword_1C2181440);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BA14();
  sub_1C2171464();
  if (!v2)
  {
    sub_1C216BABC();
    sub_1C21711D4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C216A330()
{
  if (*v0)
  {
    return 0x32746572636573;
  }

  else
  {
    return 0x31746572636573;
  }
}

uint64_t sub_1C216A364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x31746572636573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x32746572636573 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C216A440(uint64_t a1)
{
  v2 = sub_1C216BB10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C216A47C(uint64_t a1)
{
  v2 = sub_1C216BB10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.secret1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2170764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1C2170764();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252E8, &qword_1C2181448);
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB10();
  v12 = v30;
  sub_1C2171464();
  if (v12)
  {
    v15 = a1;
  }

  else
  {
    v30 = a1;
    v26 = v6;
    v33 = 0;
    sub_1C20D8E24();
    sub_1C21711D4();
    v13 = v31;
    v25 = v32;
    v33 = 1;
    sub_1C21711A4();
    v14 = v29;
    v18 = v31;
    v17 = v32;
    v31 = v13;
    v32 = v25;
    sub_1C20D865C(v13, v25);
    sub_1C2170744();
    if (v17 >> 60 == 15)
    {
      sub_1C20D3174(v13, v25);
      (*(v14 + 8))(v11, v9);
      v19 = 1;
      v20 = v27;
      v21 = v5;
    }

    else
    {
      v31 = v18;
      v32 = v17;
      v21 = v5;
      sub_1C2170744();
      sub_1C20D3174(v13, v25);
      (*(v14 + 8))(v11, v9);
      v19 = 0;
      v20 = v27;
    }

    v22 = v26;
    v23 = v28;
    (*(v28 + 56))(v21, v19, 1, v26);
    (*(v23 + 32))(v20, v8, v22);
    v24 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C210B21C(v21, v20 + *(v24 + 20));
    v15 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF252F8, &qword_1C2181450);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB10();
  sub_1C2171484();
  sub_1C2170734();
  v19 = 0;
  sub_1C20D8CEC();
  sub_1C2171294();
  sub_1C20D3174(v18, *(&v18 + 1));
  if (!v2)
  {
    v12 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C20EB3E8(v3 + *(v12 + 20), v7, &qword_1EBF23BF0, &unk_1C21813F0);
    v13 = sub_1C2170764();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {
      sub_1C20EB498(v7, &qword_1EBF23BF0, &unk_1C21813F0);
      v15 = xmmword_1C21769B0;
    }

    else
    {
      sub_1C2170734();
      v17 = v18;
      (*(v14 + 8))(v7, v13);
      v15 = v17;
    }

    v18 = v15;
    v19 = 1;
    sub_1C2171264();
    sub_1C20B23C8(v18, *(&v18 + 1));
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C216AC98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - v4;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  MEMORY[0x1C6913CB0](0x203A465250, 0xE500000000000000);
  sub_1C2170764();
  sub_1C2171034();
  MEMORY[0x1C6913CB0](32, 0xE100000000000000);
  sub_1C20EB3E8(v1 + *(a1 + 20), v5, &qword_1EBF23BF0, &unk_1C21813F0);
  v6 = sub_1C2170974();
  MEMORY[0x1C6913CB0](v6);

  return v8[0];
}

uint64_t sub_1C216ADC4(uint64_t a1)
{
  v2 = sub_1C216BB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C216AE00(uint64_t a1)
{
  v2 = sub_1C216BB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialAssertionExtensionOutputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C216AECC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25300, &qword_1C2181458);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C216BB64();
  sub_1C2171484();
  v12 = v3 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17 = *v12;
  v18 = v13;
  v19 = v14;
  v20 = 0;
  sub_1C216B890(v17, v13, v14);
  sub_1C216BBB8();
  sub_1C2171264();
  sub_1C2142F40(v17, v18, v19);
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
    swift_beginAccess();
    sub_1C20EB3E8(v3 + v15, v7, &qword_1EBF24840, &qword_1C217E130);
    v20 = 1;
    type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
    sub_1C2167FA4(&qword_1EBF25318, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
    sub_1C2171264();
    sub_1C20EB498(v7, &qword_1EBF24840, &qword_1C217E130);
  }

  return (*(v9 + 8))(v11, v8);
}

char *ASCPublicKeyCredentialAssertionExtensionOutputs.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25320, &qword_1C2181460);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = -1;
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v12 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  v13 = *(*(v12 - 8) + 56);
  v35 = v11;
  v13(&v2[v11], 1, 1, v12);
  v14 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1C216BB64();
  v15 = v28;
  sub_1C2171464();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    sub_1C2142F40(*v10, *(v10 + 1), v10[16]);
    sub_1C20EB498(&v2[v35], &qword_1EBF24840, &qword_1C217E130);
    type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = 0;
    sub_1C216BC0C();
    sub_1C21711A4();
    v16 = v31;
    v17 = v32;
    v18 = v33;
    swift_beginAccess();
    v19 = *v10;
    v20 = *(v10 + 1);
    *v10 = v16;
    *(v10 + 1) = v17;
    v21 = v27;
    v22 = v10[16];
    v10[16] = v18;
    sub_1C2142F40(v19, v20, v22);
    LOBYTE(v31) = 1;
    sub_1C2167FA4(&unk_1EBF25330, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF, &protocol conformance descriptor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
    sub_1C21711A4();
    v24 = v35;
    swift_beginAccess();
    sub_1C216B8A8(v6, &v2[v24]);
    swift_endAccess();
    v25 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
    v30.receiver = v2;
    v30.super_class = v25;
    v2 = objc_msgSendSuper2(&v30, sel_init);
    (*(v26 + 8))(v9, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  return v2;
}

char *sub_1C216B568@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0));
  result = ASCPublicKeyCredentialAssertionExtensionOutputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C216B5E4(uint64_t a1)
{
  v2 = a1;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = -1;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v8 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = v2 + OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_largeBlob;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v9) = *(v9 + 16);
  swift_beginAccess();
  v13 = *v6;
  v12 = *(v6 + 1);
  *v6 = v10;
  *(v6 + 1) = v11;
  LOBYTE(v2) = v6[16];
  v6[16] = v9;
  sub_1C216B890(v10, v11, v9);
  sub_1C2142F40(v13, v12, v2);
  v14 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  v15 = v19;
  swift_beginAccess();
  sub_1C20EB3E8(v15 + v14, v5, &qword_1EBF24840, &qword_1C217E130);
  swift_beginAccess();
  sub_1C216B8A8(v5, &v1[v7]);
  swift_endAccess();
  v16 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs(0);
  v20.receiver = v1;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1C216B7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C216B828(uint64_t a1)
{
  v2 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C216B884(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1C20B22B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1C216B890(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C216B884(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C216B8A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24840, &qword_1C217E130);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C216B918()
{
  result = qword_1EBF25288;
  if (!qword_1EBF25288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25288);
  }

  return result;
}

unint64_t sub_1C216B96C()
{
  result = qword_1EBF25290;
  if (!qword_1EBF25290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25290);
  }

  return result;
}

unint64_t sub_1C216B9C0()
{
  result = qword_1EBF25298;
  if (!qword_1EBF25298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25298);
  }

  return result;
}

unint64_t sub_1C216BA14()
{
  result = qword_1EBF252C8;
  if (!qword_1EBF252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252C8);
  }

  return result;
}

unint64_t sub_1C216BA68()
{
  result = qword_1EBF252D0;
  if (!qword_1EBF252D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252D0);
  }

  return result;
}

unint64_t sub_1C216BABC()
{
  result = qword_1EBF252E0;
  if (!qword_1EBF252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252E0);
  }

  return result;
}

unint64_t sub_1C216BB10()
{
  result = qword_1EBF252F0;
  if (!qword_1EBF252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF252F0);
  }

  return result;
}

unint64_t sub_1C216BB64()
{
  result = qword_1EBF25308;
  if (!qword_1EBF25308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25308);
  }

  return result;
}

unint64_t sub_1C216BBB8()
{
  result = qword_1EBF25310;
  if (!qword_1EBF25310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25310);
  }

  return result;
}

unint64_t sub_1C216BC0C()
{
  result = qword_1EBF25328;
  if (!qword_1EBF25328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25328);
  }

  return result;
}

void sub_1C216BC68(uint64_t a1)
{
  sub_1C216C0C8(319, &unk_1EBF25350, type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C216BF58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C216BFA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1C216C028(uint64_t a1)
{
  sub_1C2170764();
  if (v1 <= 0x3F)
  {
    sub_1C216C0C8(319, &qword_1EBF23C90, MEMORY[0x1E6966458]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C216C0C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2170D24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C216C180()
{
  result = qword_1EBF25370;
  if (!qword_1EBF25370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25370);
  }

  return result;
}

unint64_t sub_1C216C1D8()
{
  result = qword_1EBF25378;
  if (!qword_1EBF25378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25378);
  }

  return result;
}

unint64_t sub_1C216C230()
{
  result = qword_1EBF25380;
  if (!qword_1EBF25380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25380);
  }

  return result;
}

unint64_t sub_1C216C288()
{
  result = qword_1EBF25388;
  if (!qword_1EBF25388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25388);
  }

  return result;
}

unint64_t sub_1C216C2E0()
{
  result = qword_1EBF25390;
  if (!qword_1EBF25390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25390);
  }

  return result;
}

unint64_t sub_1C216C338()
{
  result = qword_1EBF25398;
  if (!qword_1EBF25398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25398);
  }

  return result;
}

unint64_t sub_1C216C390()
{
  result = qword_1EBF253A0;
  if (!qword_1EBF253A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253A0);
  }

  return result;
}

unint64_t sub_1C216C3E8()
{
  result = qword_1EBF253A8;
  if (!qword_1EBF253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253A8);
  }

  return result;
}

unint64_t sub_1C216C440()
{
  result = qword_1EBF253B0;
  if (!qword_1EBF253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253B0);
  }

  return result;
}

unint64_t sub_1C216C498()
{
  result = qword_1EBF253B8;
  if (!qword_1EBF253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253B8);
  }

  return result;
}

unint64_t sub_1C216C4F0()
{
  result = qword_1EBF253C0;
  if (!qword_1EBF253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253C0);
  }

  return result;
}

unint64_t sub_1C216C548()
{
  result = qword_1EBF253C8;
  if (!qword_1EBF253C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253C8);
  }

  return result;
}

unint64_t sub_1C216C5A0()
{
  result = qword_1EBF253D0;
  if (!qword_1EBF253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253D0);
  }

  return result;
}

unint64_t sub_1C216C5F8()
{
  result = qword_1EBF253D8;
  if (!qword_1EBF253D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253D8);
  }

  return result;
}

unint64_t sub_1C216C650()
{
  result = qword_1EBF253E0;
  if (!qword_1EBF253E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253E0);
  }

  return result;
}

unint64_t sub_1C216C6A8()
{
  result = qword_1EBF253E8;
  if (!qword_1EBF253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253E8);
  }

  return result;
}

unint64_t sub_1C216C700()
{
  result = qword_1EBF253F0;
  if (!qword_1EBF253F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253F0);
  }

  return result;
}

unint64_t sub_1C216C758()
{
  result = qword_1EBF253F8;
  if (!qword_1EBF253F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF253F8);
  }

  return result;
}

Swift::String __swiftcall Optional.loggerDescription(defaultValue:)(Swift::String defaultValue)
{
  object = defaultValue._object;
  countAndFlagsBits = defaultValue._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](defaultValue._countAndFlagsBits);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
  }

  else
  {
    (*(v5 + 32))(v11, v13, v4);
    (*(v5 + 16))(v8, v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    if (swift_dynamicCast())
    {
      v16 = v23;
      swift_getErrorValue();
      countAndFlagsBits = sub_1C21713D4();
      object = v17;
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1C21712F4();
      countAndFlagsBits = v23;
      object = v24;
    }

    v18 = *(v5 + 8);
    v18(v11, v4);
    v18(v8, v4);
  }

  v19 = countAndFlagsBits;
  v20 = object;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

Swift::String __swiftcall SymmetricKey.hexString()()
{
  sub_1C2170734();
  v0 = sub_1C2170084();
  v2 = v1;
  sub_1C20D3174(v6, v7);
  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1C216CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1C213F048(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1C213F108(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1C213F184(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t UnsignedInteger<>.init<A>(littleEndianSequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a4;
  v34 = a1;
  v9 = *(a2 - 8);
  v31 = a5;
  v32 = v9;
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v27 - v18;
  v36 = *(a4[1] + 24);
  v20 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v20);
  swift_getAssociatedConformanceWitness();
  sub_1C2171354();
  sub_1C2171304();
  v35 = sub_1C2171064();
  (*(v33 + 16))(v29, v34, a3);
  v38 = v19;
  sub_1C2170AD4();
  v31 = a3;
  v21 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v22 = 0;
  v23 = (v32 + 8);
  while (1)
  {
    sub_1C2170D74();
    if (v42)
    {
LABEL_5:
      (*(v33 + 8))(v34, v31);
      return (*(v28 + 8))(v38, v21);
    }

    v40 = v41;
    sub_1C216D008();
    sub_1C2170E14();
    v39 = v22;
    sub_1C216D05C();
    sub_1C2170DC4();
    v24 = *v23;
    (*v23)(v12, a2);
    sub_1C21710C4();
    result = (v24)(v15, a2);
    v26 = v22 + 8;
    if (__OFADD__(v22, 8))
    {
      break;
    }

    v22 += 8;
    if (v26 >= v35)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C216D008()
{
  result = qword_1EBF25400;
  if (!qword_1EBF25400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25400);
  }

  return result;
}

unint64_t sub_1C216D05C()
{
  result = qword_1EBF25408;
  if (!qword_1EBF25408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF25408);
  }

  return result;
}

uint64_t UnsignedInteger<>.littleEndianData(preservingWidth:)(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v49[1] = a3;
  v4 = *(*(*(a3 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v56 = v49 - v7;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v49 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v58 = v49 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v62 = xmmword_1C2176980;
  v17 = *(v8 + 16);
  v59 = v49 - v18;
  v51 = v17;
  v17();
  v54 = v4;
  v19 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = v8 + 16;
  v53 = v11;
  v21 = (v8 + 8);
  v55 = v19;
  v57 = AssociatedConformanceWitness;
  do
  {
    while (1)
    {
      sub_1C2171354();
      sub_1C2171304();
      v23 = v58;
      sub_1C2170DB4();
      v24 = *v21;
      (*v21)(v14, a2);
      if (sub_1C2170E04())
      {
        sub_1C2171354();
        sub_1C2171304();
        v25 = sub_1C21708D4();
        v24(v14, a2);
        if ((v25 & 1) == 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v26 = sub_1C2170DF4();
      v27 = v53;
      v28 = v23;
      if (v26 > 7)
      {
        LOBYTE(v61[0]) = -1;
        v29 = sub_1C2170E04();
        v30 = sub_1C2170DF4();
        if ((v29 & 1) == 0)
        {
          if (v30 < 9)
          {
            v28 = v58;
LABEL_14:
            sub_1C2170DE4();
            goto LABEL_15;
          }

LABEL_11:
          sub_1C216D008();
          sub_1C2170DA4();
          v28 = v58;
          v32 = sub_1C21708C4();
          v24(v14, a2);
          if (v32)
          {
            goto LABEL_39;
          }

          goto LABEL_15;
        }

        if (v30 > 8)
        {
          goto LABEL_11;
        }

        sub_1C2171354();
        sub_1C2171304();
        v28 = v58;
        v31 = sub_1C21708B4();
        v24(v14, a2);
        if (v31)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      v33 = sub_1C2170DE4();
      v24(v28, a2);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24860, &qword_1C217E150);
      v61[3] = v34;
      v61[4] = sub_1C216D830();
      LOBYTE(v61[0]) = v33;
      v60 = *__swift_project_boxed_opaque_existential_1(v61, v34);
      sub_1C2170104();
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      v61[0] = 8;
      sub_1C216D05C();
      v35 = v59;
      sub_1C2170DD4();
      (v51)(v27, v35, a2);
      LOBYTE(v35) = sub_1C2170E04();
      v36 = sub_1C2170DF4();
      if (v35)
      {
        break;
      }

      if (v36 > 63)
      {
        goto LABEL_19;
      }

LABEL_2:
      v22 = sub_1C2170DE4();
      v24(v27, a2);
      if (v22 <= 0)
      {
        goto LABEL_20;
      }
    }

    if (v36 <= 64)
    {
      goto LABEL_2;
    }

LABEL_19:
    v61[0] = 0;
    sub_1C2170DA4();
    v37 = sub_1C21708C4();
    v24(v14, a2);
    v24(v27, a2);
  }

  while ((v37 & 1) != 0);
LABEL_20:
  if ((v50 & 1) == 0)
  {
LABEL_36:
    v24(v59, a2);
    goto LABEL_37;
  }

  v38 = sub_1C2171064();
  v39 = v38 / 8;
  if (v38 >= 0 && (v38 & 0x8000000000000007) != 0)
  {
    ++v39;
  }

  v40 = v62;
  v41 = *(&v62 + 1) >> 62;
  if ((*(&v62 + 1) >> 62) <= 1)
  {
    if (!v41)
    {
      v40 = BYTE14(v62);
      goto LABEL_33;
    }

LABEL_30:
    v44 = __OFSUB__(HIDWORD(v40), v40);
    LODWORD(v40) = HIDWORD(v40) - v40;
    if (!v44)
    {
      v40 = v40;
      goto LABEL_33;
    }

LABEL_41:
    __break(1u);
  }

  if (v41 == 2)
  {
    v42 = *(v62 + 16);
    v43 = *(v62 + 24);
    v44 = __OFSUB__(v43, v42);
    v40 = v43 - v42;
    if (v44)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v40 = 0;
  }

LABEL_33:
  v45 = v39 - v40;
  if (__OFSUB__(v39, v40))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v45 < 1)
  {
    goto LABEL_36;
  }

  v46 = sub_1C2170B84();
  *(v46 + 16) = v45;
  bzero((v46 + 32), v45);
  sub_1C2170114();
  v24(v59, a2);

LABEL_37:
  v47 = v62;
  sub_1C20D865C(v62, *(&v62 + 1));
  sub_1C20D3174(v47, *(&v47 + 1));
  return v47;
}

unint64_t sub_1C216D830()
{
  result = qword_1EBF24868;
  if (!qword_1EBF24868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF24860, &qword_1C217E150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24868);
  }

  return result;
}

void isClientWithAuditTokenProperlyEntitled_cold_1(_OWORD *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a2;
  v4 = WBSApplicationIdentifierFromAuditToken();
  LODWORD(v5[0]) = 138543362;
  *(v5 + 4) = v4;
  _os_log_fault_impl(&dword_1C20AD000, v3, OS_LOG_TYPE_FAULT, "Rejecting connection from unentitled process %{public}@.", v5, 0xCu);
}

void __getWBUFeatureManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBUFeatureManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASFeatureManager.m" lineNumber:29 description:{@"Unable to find class %s", "WBUFeatureManager"}];

  __break(1u);
}

void __getWBUFeatureManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASFeatureManager.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
  sub_1C216FC54();
}