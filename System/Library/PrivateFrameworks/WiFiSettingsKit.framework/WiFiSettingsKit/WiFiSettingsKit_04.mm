uint64_t sub_2740FC13C(uint64_t a1)
{
  v4 = *(type metadata accessor for EnterpriseURLCredentialsPromptView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27409D648;

  return sub_2740F9D90(a1, v6, v7, v1 + v5);
}

unint64_t sub_2740FC230()
{
  result = qword_280939848;
  if (!qword_280939848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939850, &qword_2741D0678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B8, &qword_2741D0398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F30, &unk_2741D7CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809396B0, &qword_2741D0390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F38, &unk_2741CB670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937F40, &qword_2741D5B30);
    sub_2740FB1EC();
    sub_2740A5DB0();
    sub_2740A5EE4();
    swift_getOpaqueTypeConformance2();
    sub_2740A5F60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939848);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2740FC414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2740FC45C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740FC4E8()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2740FC628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939860, &qword_2741D0788);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v38 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939868, &qword_2741D0790);
  v11 = v10 - 8;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  sub_2740FD264(a1, &v45);
  v19 = swift_allocObject();
  v20 = v50;
  v21 = v52;
  *(v19 + 112) = v51;
  *(v19 + 128) = v21;
  *(v19 + 144) = v53;
  v22 = v48;
  *(v19 + 48) = v47;
  *(v19 + 64) = v22;
  *(v19 + 80) = v49;
  *(v19 + 96) = v20;
  v23 = v46;
  *(v19 + 16) = v45;
  *(v19 + 32) = v23;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939870, &qword_2741D0798);
  sub_2740A6D24(&qword_280939878, &qword_280939870, &qword_2741D0798, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  *&v18[*(v11 + 44)] = sub_2741C736C();
  v37 = v18;
  *(&v46 + 1) = &type metadata for ScannedNetwork;
  *&v47 = sub_2740F2248();
  *&v45 = swift_allocObject();
  sub_2740ACAC8(a1 + 16, v45 + 16);
  type metadata accessor for AssociationModel(0);
  sub_2740FD34C(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  v24 = sub_2741C6CEC();
  v26 = v25;
  type metadata accessor for NetworksListModel(0);
  sub_2740FD34C(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v27 = sub_2741C6CEC();
  *(&v47 + 1) = v24;
  LOBYTE(v48) = v26 & 1;
  *(&v48 + 1) = v27;
  LOBYTE(v49) = v28 & 1;
  v42 = 0;
  sub_2741C7A2C();
  BYTE8(v49) = v43;
  v50 = v44;
  LOBYTE(v51) = 1;
  sub_2740FC4E8();
  sub_2740FD394();
  v29 = v38;
  sub_2741C770C();

  sub_2740FD3E8(&v45);
  sub_2740A6D94(v18, v15, &qword_280939868, &qword_2741D0790);
  v30 = *(v4 + 16);
  v31 = v39;
  v32 = v29;
  v30(v39, v29, v3);
  v33 = v40;
  sub_2740A6D94(v15, v40, &qword_280939868, &qword_2741D0790);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939890, &qword_2741D07A0);
  v30((v33 + *(v34 + 48)), v31, v3);
  v35 = *(v4 + 8);
  v35(v32, v3);
  sub_27409D420(v37, &qword_280939868, &qword_2741D0790);
  v35(v31, v3);
  return sub_27409D420(v15, &qword_280939868, &qword_2741D0790);
}

uint64_t sub_2740FCB08(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_280937B90 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_280946F08 object:0 userInfo:0];

  return (*(a1 + 120))();
}

double sub_2740FCBAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2741C70EC();
  v23 = 1;
  sub_2740FCD34(a1, &v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  sub_2740A6D94(&v24, &v11, &qword_280939898, &qword_2741D07A8);
  sub_27409D420(v34, &qword_280939898, &qword_2741D07A8);
  *&v22[55] = v27;
  *&v22[39] = v26;
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[7] = v24;
  *&v22[23] = v25;
  v5 = *&v22[112];
  *(a2 + 113) = *&v22[96];
  *(a2 + 129) = v5;
  *(a2 + 145) = *&v22[128];
  v6 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v6;
  v7 = *&v22[80];
  *(a2 + 81) = *&v22[64];
  *(a2 + 97) = v7;
  result = *v22;
  v9 = *&v22[16];
  *(a2 + 17) = *v22;
  v22[151] = v33;
  v10 = v23;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 161) = *&v22[144];
  *(a2 + 33) = v9;
  return result;
}

uint64_t sub_2740FCD34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[5])
  {
    v3 = sub_2741C71BC();
    sub_2740FD078(&v25);
    *&v23[7] = v25;
    *&v23[23] = v26;
    *&v23[39] = v27;
    *&v23[55] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398C8, &qword_2741D07C8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2741CC090;
    v5 = sub_2741C752C();
    *(v4 + 32) = v5;
    v6 = sub_2741C753C();
    *(v4 + 33) = v6;
    v7 = sub_2741C755C();
    sub_2741C755C();
    if (sub_2741C755C() != v5)
    {
      v7 = sub_2741C755C();
    }

    sub_2741C755C();
    if (sub_2741C755C() != v6)
    {
      v7 = sub_2741C755C();
    }

    sub_2741C6C6C();
    *&v35[17] = *&v23[16];
    *&v35[33] = *&v23[32];
    *&v35[49] = *&v23[48];
    v24[0] = 0;
    v34 = v3;
    v35[0] = 0;
    *&v35[64] = *&v23[63];
    *&v35[1] = *v23;
    v35[72] = v7;
    *&v36 = v8;
    *(&v36 + 1) = v9;
    *&v37 = v10;
    *(&v37 + 1) = v11;
    LOBYTE(v38) = 0;
    sub_2740FD500(&v34);
  }

  else
  {
    sub_2740A6A74();

    *&v34 = sub_2741C76AC();
    *(&v34 + 1) = v12;
    v35[0] = v13 & 1;
    *&v35[8] = v14;
    sub_2740FD43C(&v34);
  }

  v45 = v36;
  v46 = v37;
  v47 = v38;
  v41 = *&v35[16];
  v42 = *&v35[32];
  v43 = *&v35[48];
  v44 = *&v35[64];
  v39 = v34;
  v40 = *v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809398A0, &qword_2741D07B0);
  sub_2740FD448();
  sub_2741C72CC();
  v45 = v54;
  v46 = v55;
  v15 = v50;
  v41 = v50;
  v42 = v51;
  v16 = v52;
  v43 = v52;
  v44 = v53;
  v17 = v48;
  v39 = v48;
  v40 = v49;
  v18 = v55;
  v31 = v54;
  v32 = v55;
  v19 = v51;
  v27 = v50;
  v28 = v51;
  v20 = v53;
  v29 = v52;
  v30 = v53;
  v21 = v49;
  v25 = v48;
  v26 = v49;
  v47 = v56;
  v33 = v56;
  LOWORD(v38) = v56;
  v36 = v54;
  v37 = v55;
  *&v35[16] = v50;
  *&v35[32] = v51;
  *&v35[48] = v52;
  *&v35[64] = v53;
  v34 = v48;
  *v35 = v49;
  v24[136] = 1;
  *(a2 + 96) = v54;
  *(a2 + 112) = v18;
  *(a2 + 32) = v15;
  *(a2 + 48) = v19;
  *(a2 + 64) = v16;
  *(a2 + 80) = v20;
  *a2 = v17;
  *(a2 + 16) = v21;
  *(a2 + 128) = v38;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  sub_2740A6D94(&v25, v24, &qword_2809398C0, &qword_2741D07C0);
  return sub_27409D420(&v39, &qword_2809398C0, &qword_2741D07C0);
}

uint64_t sub_2740FD078@<X0>(uint64_t a4@<X8>)
{
  sub_2740A6A74();

  v5 = sub_2741C76AC();
  v23 = v6;
  v24 = v5;
  v22 = v7;
  v25 = v8;

  v9 = sub_2741C76AC();
  v11 = v10;
  v13 = v12;
  sub_2741C75DC();
  v14 = sub_2741C767C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2740A6AC8(v9, v11, v13 & 1);

  *a4 = v24;
  *(a4 + 8) = v23;
  *(a4 + 16) = v22 & 1;
  *(a4 + 24) = v25;
  *(a4 + 32) = v14;
  *(a4 + 40) = v16;
  *(a4 + 48) = v18 & 1;
  *(a4 + 56) = v20;
  sub_27409861C(v24, v23, v22 & 1);

  sub_27409861C(v14, v16, v18 & 1);

  sub_2740A6AC8(v14, v16, v18 & 1);

  sub_2740A6AC8(v24, v23, v22 & 1);
}

uint64_t sub_2740FD210@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939858, &qword_2741D0780);
  return sub_2740FC628(v2, a2 + *(v4 + 44));
}

uint64_t sub_2740FD29C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2740FD304()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2740FD34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2740FD394()
{
  result = qword_280939888;
  if (!qword_280939888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939888);
  }

  return result;
}

unint64_t sub_2740FD448()
{
  result = qword_2809398A8;
  if (!qword_2809398A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809398A0, &qword_2741D07B0);
    sub_2740A6D24(&qword_2809398B0, &qword_2809398B8, &qword_2741D07B8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809398A8);
  }

  return result;
}

unint64_t sub_2740FD560()
{
  result = qword_2809398E0;
  if (!qword_2809398E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809398E0);
  }

  return result;
}

uint64_t NetworkRequestErrorCode.init(rawValue:)(uint64_t result)
{
  if (result == -100)
  {
    v1 = -100;
  }

  else
  {
    v1 = 0;
  }

  if (result == -200)
  {
    v1 = -200;
  }

  if (result != -300)
  {
    return v1;
  }

  return result;
}

uint64_t *sub_2740FD5E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == -200)
  {
    v3 = -200;
  }

  else
  {
    v3 = 0;
  }

  v4 = *result != -200;
  if (v2 == -100)
  {
    v3 = -100;
    v4 = 0;
  }

  v5 = v2 == -300;
  if (v2 != -300)
  {
    v2 = v3;
  }

  if (v5)
  {
    v4 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

id NetworkRequestError.__allocating_init(code:network:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_errorCode] = a1;
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_network] = a2;
  *&v7[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_underlyingError] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id NetworkRequestError.init(code:network:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_errorCode] = a1;
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_network] = a2;
  *&v3[OBJC_IVAR____TtC15WiFiSettingsKit19NetworkRequestError_underlyingError] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for NetworkRequestError();
  return objc_msgSendSuper2(&v5, sel_init);
}

id NetworkRequestError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_2741C7E3C();

  if (a4)
  {
    v9 = sub_2741C7D4C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id NetworkRequestError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkRequestError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2740FD8BC()
{
  result = qword_280939900;
  if (!qword_280939900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939900);
  }

  return result;
}

uint64_t sub_2740FD9AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2740FDA38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DNSServerTextField(uint64_t a1)
{
  result = qword_280939910;
  if (!qword_280939910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740FDB00(uint64_t a1)
{
  sub_2740FDB6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2740FDB6C(uint64_t a1)
{
  if (!qword_280939920)
  {
    type metadata accessor for DNSServer(255);
    v1 = sub_2741C7BFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280939920);
    }
  }
}

uint64_t sub_2740FDBE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939908, qword_2741D0970);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - v3;
  sub_2741C714C();
  sub_2741C7BCC();
  swift_getKeyPath();
  sub_2741C7BEC();

  (*(v1 + 8))(v4, v0);
  return sub_2741C7C8C();
}

unint64_t sub_2740FDD78()
{
  result = qword_280938148;
  if (!qword_280938148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938118, &unk_2741CB890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280938148);
  }

  return result;
}

uint64_t sub_2740FDDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D54CB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938D48, &qword_2741CDC10);
  swift_allocObject();
  *(v3 + 24) = sub_2741C6B7C();
  *(v3 + 32) = &unk_288326350;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 80) = a3;
  *(v3 + 72) = 0;
  v8 = *(v3 + 16);

  v9 = v8;
  v10 = sub_2741C7E3C();

  [v9 setNetworkName_];

  [*(v4 + 16) setDelegate_];
  return v4;
}

id sub_2740FDED8()
{
  if (![objc_opt_self() passwordSharingAvailability])
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 16);
    v4 = (v2 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (v5 == *(v0 + 80))
      {
        if (*(v0 + 72))
        {

          return sub_2740CB218(0xD00000000000002ALL, 0x80000002741DBA20, 0x6574617669746361, 0xEA00000000002928);
        }

        else
        {
          sub_2740CB460(0xD000000000000024, 0x80000002741DB9F0);
          result = [*(v0 + 16) activate];
          *(v0 + 72) = 1;
        }

        return result;
      }
    }
  }

  return sub_2740CB460(0xD000000000000021, 0x80000002741DB960);
}

id sub_2740FDFF0()
{
  if (![objc_opt_self() passwordSharingAvailability])
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 16);
    v4 = (v2 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (v5 == *(v0 + 80))
      {
        if (*(v0 + 72) == 1)
        {
          sub_2740CB460(0xD000000000000026, 0x80000002741DB9C0);
          result = [*(v0 + 16) invalidate];
          *(v0 + 72) = 0;
        }

        else
        {

          return sub_2740CB218(0xD000000000000026, 0x80000002741DB990, 0x6176697463616564, 0xEC00000029286574);
        }

        return result;
      }
    }
  }

  return sub_2740CB460(0xD000000000000021, 0x80000002741DB960);
}

uint64_t sub_2740FE110(uint64_t a1, void *a2)
{
  sub_2740CB460(0xD000000000000028, 0x80000002741DB930);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = [a2 psk];
    sub_2741C7E7C();

    sub_2741C6B6C();
  }

  return result;
}

uint64_t sub_2740FE248()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2740FE2C4(void *a1)
{
  v3 = sub_2741C7CCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2741C7CFC();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_2741C856C();

  aBlock = 0xD00000000000001FLL;
  v21 = 0x80000002741DB900;
  MEMORY[0x2743E5FB0](*(v1 + 40), *(v1 + 48));
  sub_2740CB460(aBlock, v21);

  sub_2740D3950();
  v12 = sub_2741C82CC();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v24 = sub_2740FE63C;
  v25 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2740B96AC;
  v23 = &block_descriptor_7;
  v15 = _Block_copy(&aBlock);
  v16 = a1;

  sub_2741C7CEC();
  aBlock = MEMORY[0x277D84F90];
  sub_2740BA1AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938598, &unk_2741D0A90);
  sub_2740BA204();
  sub_2741C83FC();
  MEMORY[0x2743E6360](0, v11, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v8 + 8))(v11, v19);
}

uint64_t sub_2740FE5C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2740FE5FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740FE65C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 16, a1, &qword_2809399A8, &qword_2741D3F40);
}

uint64_t sub_2740FE6FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 16, a2, &qword_2809399A8, &qword_2741D3F40);
}

uint64_t sub_2740FE7CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2740FF138(a2, a1 + 16, &qword_2809399A8, &qword_2741D3F40);
  return swift_endAccess();
}

uint64_t sub_2740FE840@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 56, a1, &qword_2809395D8, &qword_2741CFF78);
}

uint64_t sub_2740FE8E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 56, a2, &qword_2809395D8, &qword_2741CFF78);
}

uint64_t sub_2740FE980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_2740A6D94(a1, v11, a5, a6);
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C69FC();

  return sub_27409D420(v11, a5, a6);
}

uint64_t sub_2740FEA4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2740FF138(a2, a1 + 56, &qword_2809395D8, &qword_2741CFF78);
  return swift_endAccess();
}

uint64_t sub_2740FEAC0()
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  return *(v0 + 96);
}

uint64_t sub_2740FEB30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_2740FEBA8(uint64_t result)
{
  if (*(v1 + 96) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740FF018();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2740FEC80()
{
  sub_27409D420(v0 + 16, &qword_2809399A8, &qword_2741D3F40);
  sub_27409D420(v0 + 56, &qword_2809395D8, &qword_2741CFF78);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit16AssociationState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationState(uint64_t a1)
{
  result = qword_280939990;
  if (!qword_280939990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2740FEDA0(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_2740FEE48()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C6A0C();

  return *(v1 + 96);
}

uint64_t sub_2740FEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  swift_getKeyPath();
  sub_2740FF018();
  sub_2741C69FC();

  return sub_27409D420(a1, a6, a7);
}

unint64_t sub_2740FEFF0(uint64_t a1)
{
  result = sub_2740FF018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2740FF018()
{
  result = qword_2809399A0;
  if (!qword_2809399A0)
  {
    type metadata accessor for AssociationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809399A0);
  }

  return result;
}

uint64_t sub_2740FF138(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_2740FF20C()
{
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit23ControllerWiFiInterface__knownNetworks;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E0, &qword_2741D0C48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ControllerWiFiInterface(uint64_t a1)
{
  result = qword_2809399C0;
  if (!qword_2809399C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2740FF328(uint64_t a1)
{
  sub_2740FF3D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2740FF3D4(uint64_t a1)
{
  if (!qword_2809399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399D8, &unk_2741D32B0);
    v1 = sub_2741C6C0C();
    if (!v2)
    {
      atomic_store(v1, &qword_2809399D0);
    }
  }
}

uint64_t sub_2740FF438@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ControllerWiFiInterface(0);
  result = sub_2741C6B5C();
  *a1 = result;
  return result;
}

uint64_t sub_2740FF478(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2740FF4C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2740FF52C@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v50 = a3;
  v3 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F0, &qword_2741D0CF0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F8, &qword_2741D0CF8);
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v46 = &v40 - v21;
  v45 = swift_allocBox();
  v23 = v22;
  type metadata accessor for NetworkDetailsModel(0);
  v24 = sub_2740DD380();

  v44 = v24;
  sub_2741C7BDC();
  v25 = *(v11 + 16);
  v43 = v23;
  v41 = v25;
  v25(v15, v23, v10);
  sub_2741C7BCC();
  v26 = *(v11 + 8);
  v26(v15, v10);
  swift_getKeyPath();
  sub_2741C7BEC();

  v26(v18, v10);
  swift_getKeyPath();
  sub_2741C7B0C();

  sub_27410035C(v9);
  v55 = v57;
  v56 = v58;
  if (v42)
  {
    if (qword_280937A28 != -1)
    {
      swift_once();
    }

    v27 = &qword_280946C38;
  }

  else
  {
    if (qword_280937A20 != -1)
    {
      swift_once();
    }

    v27 = &qword_280946C28;
  }

  v28 = *v27;

  v51 = v28;
  v52 = v29;
  sub_2740A6A74();
  v51 = sub_2741C76AC();
  v52 = v30;
  v53 = v31 & 1;
  v54 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A00, &unk_2741D0D48);
  sub_2740A6D24(&qword_280939A08, &qword_280939A00, &unk_2741D0D48, MEMORY[0x277CE14C0]);
  v33 = v46;
  sub_2741C7AAC();
  v41(v15, v43, v10);
  sub_2741C7BBC();
  v26(v15, v10);
  v34 = v51;
  swift_getKeyPath();
  v51 = v34;
  sub_2741C6A0C();

  v35 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  v36 = v49;
  sub_2740BA058(v34 + v35, v49);

  v37 = *(v36 + 152);
  sub_2740CC5A0(v36);
  *&v57 = v37;
  sub_2740A6D24(&qword_280939A10, &qword_2809399F8, &qword_2741D0CF8, MEMORY[0x277CDF038]);

  v38 = v48;
  sub_2741C78CC();

  (*(v47 + 8))(v33, v38);
}

uint64_t sub_2740FFB0C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A18, &qword_2741D0D68);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v29 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - v17;
  if (qword_280937A30 != -1)
  {
    swift_once();
  }

  v29 = qword_280946C48;
  v30 = unk_280946C50;
  sub_2740A6A74();

  *v18 = sub_2741C76AC();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 4) = 1;
  v18[40] = 1;
  if (qword_280937A38 != -1)
  {
    swift_once();
  }

  v29 = qword_280946C58;
  v30 = unk_280946C60;

  *v15 = sub_2741C76AC();
  *(v15 + 1) = v22;
  v15[16] = v23 & 1;
  *(v15 + 3) = v24;
  *(v15 + 4) = 2;
  v15[40] = 1;
  v25 = *(v3 + 16);
  v25(v11, v18, v2);
  v25(v7, v15, v2);
  v25(a1, v11, v2);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A20, &unk_2741D0D70);
  v25(&a1[*(v26 + 48)], v7, v2);
  v27 = *(v3 + 8);
  v27(v15, v2);
  v27(v18, v2);
  v27(v7, v2);
  return (v27)(v11, v2);
}

uint64_t sub_2740FFDF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = *a2;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2741C856C();

  v17 = 0xD00000000000001CLL;
  v18 = 0x80000002741DBB10;
  v16[1] = v9;
  v10 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v10);

  sub_2740CB218(v17, v18, 2036625250, 0xE400000000000000);

  v11 = sub_2741C80DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_2741C80AC();

  v12 = sub_2741C809C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a3;
  sub_2740CE980(0, 0, v8, &unk_2741D0D60, v13);
}

uint64_t sub_2740FFFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399F0, &qword_2741D0CF0);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_2741C80AC();
  v4[7] = sub_2741C809C();
  v7 = sub_2741C805C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_2741000B0, v7, v6);
}

uint64_t sub_2741000B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_projectBox();
  (*(v2 + 16))(v1, v4, v3);
  sub_2741C7BBC();
  (*(v2 + 8))(v1, v3);
  v0[10] = v0[2];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_27410019C;

  return sub_2741020B8();
}

uint64_t sub_27410019C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2741002E0, v3, v2);
}

uint64_t sub_2741002E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27410035C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809399E8, &unk_2741D3C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2741003CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27410040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_2740FFFB0(a1, v4, v5, v6);
}

uint64_t sub_2741004C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809399F8, &qword_2741D0CF8);
  sub_2740A6D24(&qword_280939A10, &qword_2809399F8, &qword_2741D0CF8, MEMORY[0x277CDF038]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2741005AC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v7 = *a3;
  swift_beginAccess();
  return sub_2740BA058(v6 + v7, a4);
}

uint64_t sub_274100678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2740BA058(a1, v10);
  return a5(v10);
}

uint64_t sub_274100748@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v6 = *a2;
  swift_beginAccess();
  return sub_2740BA058(v3 + v6, a3);
}

uint64_t sub_274100838(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NetworkSettings(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  swift_beginAccess();
  sub_2740BA058(v4 + v11, v10);
  LOBYTE(a2) = sub_2740B9F04(v10, a1);
  sub_2741041FC(v10, type metadata accessor for NetworkSettings);
  if (a2)
  {
    sub_2740BA058(a1, v10);
    swift_beginAccess();
    sub_2741040C8(v10, v4 + v11);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v13);
    v15[-2] = v4;
    v15[-1] = a1;
    v15[1] = v4;
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C69FC();
  }

  return sub_2741041FC(a1, type metadata accessor for NetworkSettings);
}

uint64_t sub_274100A1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_27410412C(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_274100A84@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  return sub_27409D4E4(v5 + v3, a1);
}

uint64_t sub_274100B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  return sub_27409D4E4(v3 + v4, a2);
}

uint64_t sub_274100C14(uint64_t a1, uint64_t *a2)
{
  sub_27409D4E4(a1, v3);
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C69FC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_274100CF4(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

uint64_t sub_274100D60()
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
}

uint64_t sub_274100E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  return result;
}

uint64_t sub_274100EE0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C69FC();
  }

  return result;
}

double sub_274101000@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v10 = v1;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = (v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config);
  swift_beginAccess();
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14 = v3[4];
  v15 = *(v3 + 10);
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  sub_2740B2AC0(&v10, &v9);
  v6 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v6;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  result = *&v10;
  v8 = v11;
  *a1 = v10;
  *(a1 + 16) = v8;
  return result;
}

uint64_t sub_274101114@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v15[0] = v3;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v4 = v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v15[0] = *v4;
  v15[1] = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v16 = *(v4 + 80);
  v15[3] = v7;
  v15[4] = v8;
  v15[2] = v6;
  v9 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v9;
  v10 = *(v4 + 32);
  v11 = *(v4 + 48);
  v12 = *(v4 + 64);
  *(a2 + 80) = *(v4 + 80);
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *(a2 + 32) = v10;
  return sub_2740B2AC0(v15, &v14);
}

uint64_t sub_274101228(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C69FC();
}

uint64_t sub_274101314(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  v4 = *(a2 + 48);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = *(a2 + 80);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  sub_2740B2AC0(a2, &v7);
}

void sub_2741013F4(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = (v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v4 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v5 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  sub_274103F80(v4, v3[1], v6, v7, v8);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
}

void sub_2741014D8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v4 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v5 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v6 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v7 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v8 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  sub_274103F80(v4, v5, v6, v7, v8);
}

uint64_t sub_2741015A0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C69FC();
}

void sub_27410167C(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  v3 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v4 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v5 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16);
  v6 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24);
  v7 = *(a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32);
  v8 = *(a2 + 16);
  *v2 = *a2;
  *(v2 + 16) = v8;
  *(v2 + 32) = *(a2 + 32);
  sub_274103FF0(a2, v9);
  sub_2740CC5FC(v3, v4, v5, v6, v7);
}

uint64_t sub_274101708@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v7;
}

uint64_t sub_274101810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v4 = v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 48);
  *a2 = *v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v4 + 32);
  *(a2 + 48) = v8;
}

uint64_t sub_274101920(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C69FC();
}

uint64_t sub_274101A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  sub_274103138(a2, &v6);
}

uint64_t sub_274101ABC()
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  swift_beginAccess();
}

uint64_t sub_274101B7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_274101C70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C69FC();
  }
}

uint64_t sub_274101DA0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_274101E10()
{
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);
}

uint64_t sub_274101EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork);
  return result;
}

uint64_t sub_274101F90(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_2741020B8()
{
  *(v1 + 88) = v0;
  type metadata accessor for NetworkSettings(0);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274102148, 0, 0);
}

uint64_t sub_274102148()
{
  v2 = v0[11];
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v2;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings;
  swift_beginAccess();
  sub_2740BA058(v2 + v3, v1);
  swift_getKeyPath();
  v0[9] = v2;
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings;
  swift_beginAccess();
  LOBYTE(v3) = sub_2740B9F04(v1, v2 + v4);
  sub_2741041FC(v1, type metadata accessor for NetworkSettings);
  if (v3)
  {
    sub_2740CB460(0xD00000000000002ALL, 0x80000002741DBC30);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[11];
    v8 = v0[12];
    sub_2740CB460(0xD000000000000026, 0x80000002741DBC00);
    v9 = __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
    swift_getKeyPath();
    v0[10] = v7;
    sub_2741C6A0C();

    sub_2740BA058(v2 + v4, v8);
    __swift_project_boxed_opaque_existential_1((*v9 + 56), *(*v9 + 80));
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_274102404;
    v11 = v0[12];

    return sub_27410DE80(v11);
  }
}

uint64_t sub_274102404()
{

  return MEMORY[0x2822009F8](sub_274102500, 0, 0);
}

uint64_t sub_274102500()
{
  sub_2741041FC(*(v0 + 96), type metadata accessor for NetworkSettings);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27410257C()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v10[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v2, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v8 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  swift_beginAccess();
  sub_2740CC180(v1 + v8, v5, v7);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_274102778()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v10[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v2, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v8 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  swift_beginAccess();
  sub_2740CC2BC(v1 + v8, v5, v7);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_274102974()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  swift_getKeyPath();
  v10[0] = v0;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  swift_beginAccess();
  sub_27409D4E4(v1 + v2, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  swift_getKeyPath();
  sub_2741C6A0C();

  swift_getKeyPath();
  sub_2741C6A2C();

  v8 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings;
  swift_beginAccess();
  sub_2740CC3F8(v1 + v8, v5, v7);
  swift_endAccess();

  swift_getKeyPath();
  sub_2741C6A1C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_274102B70()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_2741041FC(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  sub_2741041FC(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network));

  sub_2740CC5FC(*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config), *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8), *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 16), *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 24), *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 32));

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_274102CE0()
{
  sub_274102B70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkDetailsModel(uint64_t a1)
{
  result = qword_280939A78;
  if (!qword_280939A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_274102D8C(uint64_t a1)
{
  result = type metadata accessor for NetworkSettings(319);
  if (v2 <= 0x3F)
  {
    result = sub_2741C6A4C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void *sub_274103260(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v88 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v88, v10);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NetworkSettings(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116[3] = a4;
  v116[4] = a5;
  v100 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v116);
  v18 = *(*(a4 - 8) + 32);
  v98 = boxed_opaque_existential_1;
  v99 = a4;
  v18(boxed_opaque_existential_1, a1, a4);
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v19 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v19 = xmmword_2741D0D80;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v20 = type metadata accessor for NetworkConfigurationState(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v23 = *(v13 + 56);
  v23(v21 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v12);
  v23(v21 + v22, 1, 1, v12);
  sub_2741C6A3C();
  *(&v110 + 1) = v20;
  *&v111 = sub_2741041B4(&qword_280939A90, type metadata accessor for NetworkConfigurationState, &unk_2741CFF38);
  *&v109 = v21;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v93 = v21;

  v25 = sub_274192EC8(v24, &v109);
  v26 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v25;
  v27 = a3 + 2;
  a3[5] = v26;
  a3[6] = &off_288327F88;
  __swift_project_boxed_opaque_existential_1(a3 + 2, v26);
  sub_2740CBF04(v116, v16);
  sub_2740BA058(v16, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings);
  sub_2740BA058(v16, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings);
  v28 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v116, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v94 = a2;
  v95 = v16;
  v92 = v28;
  if (a2)
  {

    v30 = v98;
    v29 = v99;
    v31 = v100;
    v97 = sub_27410B850(v98, a2, v99, v100);
  }

  else
  {
    v97 = 0;
    v29 = v99;
    v31 = v100;
    v30 = v98;
  }

  v32 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v33 = __swift_project_boxed_opaque_existential_1((*v32 + 56), *(*v32 + 80));
  sub_27410F168(v30, *v33, v29, v31, v117);
  v34 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v35 = v117[3];
  *(v34 + 2) = v117[2];
  *(v34 + 3) = v35;
  *(v34 + 4) = v117[4];
  *(v34 + 10) = v118;
  v36 = v117[1];
  *v34 = v117[0];
  *(v34 + 1) = v36;
  v37 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v38 = *(*v37 + 16);
  v39 = *(*v37 + 24);
  v40 = *(*v37 + 32);
  v41 = *(*v37 + 40);
  v42 = *(*v37 + 48);
  v43 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v96 = a3;
  v44 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v45 = v43[1];
  v90 = v43[2];
  v91 = v27;
  v46 = v43[3];
  v89 = v43[4];
  sub_274103F80(v38, v39, v40, v41, v42);
  v47 = v44;
  v48 = v96;
  sub_2740CC5FC(v47, v45, v90, v46, v89);
  *v43 = v38;
  v43[1] = v39;
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = v42;
  v49 = v91;
  v50 = __swift_project_boxed_opaque_existential_1(v91, v48[5]);
  v51 = __swift_project_boxed_opaque_existential_1((*v50 + 56), *(*v50 + 80));
  v53 = v98;
  v52 = v99;
  v54 = v100;
  sub_27410F5EC(v98, *v51, v99, v100, v119);
  v55 = v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v56 = v119[1];
  *v55 = v119[0];
  *(v55 + 1) = v56;
  *(v55 + 2) = v119[2];
  *(v55 + 6) = v120;
  v57 = __swift_project_boxed_opaque_existential_1(v49, v48[5]);
  v58 = __swift_project_boxed_opaque_existential_1((*v57 + 56), *(*v57 + 80));
  *(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_27410F8E0(v53, *v58, v52, v54);
  swift_getKeyPath();
  *&v101 = v48;
  sub_2741041B4(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v59 = v92;
  swift_beginAccess();
  sub_27409D4E4(v48 + v59, &v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v113 = v105;
    v114 = v106;
    v115 = v107;
    v109 = v101;
    v110 = v102;
    v111 = v103;
    v112 = v104;
    if (v97)
    {
      v60 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v61 = v95;
      if (*(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v109);
        *(v48 + v60) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v66);
      *(&v86 - 2) = v48;
      *(&v86 - 8) = 1;
      *&v101 = v48;
    }

    else
    {
      v63 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v64 = *(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      v61 = v95;
      if (BYTE9(v111))
      {
        if (v64 == 2)
        {
          sub_2740ACB2C(&v109);
          *(v48 + v63) = 2;
          goto LABEL_24;
        }

        v69 = swift_getKeyPath();
        MEMORY[0x28223BE20](v69, v70);
        *(&v86 - 2) = v48;
        *(&v86 - 8) = 2;
        *&v101 = v48;
      }

      else
      {
        if (v64 == 3)
        {
          sub_2740ACB2C(&v109);
          *(v48 + v63) = 3;
          goto LABEL_24;
        }

        v71 = swift_getKeyPath();
        MEMORY[0x28223BE20](v71, v72);
        *(&v86 - 2) = v48;
        *(&v86 - 8) = 3;
        *&v101 = v48;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v109);
  }

  else
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    sub_27409D420(&v101, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v101 = v48;
    sub_2741C6A0C();

    sub_27409D4E4(v48 + v59, &v109);
    v62 = v87;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v62, type metadata accessor for KnownNetwork);
      v61 = v95;
      if (*(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v67 = swift_getKeyPath();
        MEMORY[0x28223BE20](v67, v68);
        *(&v86 - 2) = v48;
        *(&v86 - 8) = 4;
        *&v109 = v48;
        sub_2741C69FC();
      }
    }

    else
    {
      v61 = v95;
    }
  }

LABEL_24:
  v73 = v97 & 1;
  if ((v97 & 1) == *(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v73;
  }

  else
  {
    v74 = swift_getKeyPath();
    MEMORY[0x28223BE20](v74, v75);
    *(&v86 - 2) = v48;
    *(&v86 - 8) = v73;
    *&v109 = v48;
    sub_2741C69FC();
  }

  *&v109 = 0;
  *(&v109 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v101 = v48;
  sub_2741C6A0C();

  v76 = *(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v76 <= 1)
  {
    if (*(v48 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v77 = 0xEF6B726F7774656ELL;
      v78 = 0x20746E6572727563;
    }

    else
    {
      v77 = 0x80000002741DBD20;
      v78 = 0xD000000000000019;
    }
  }

  else if (v76 == 2)
  {
    v77 = 0x80000002741DBD00;
    v78 = 0xD00000000000001CLL;
  }

  else if (v76 == 3)
  {
    v77 = 0x80000002741DBCE0;
    v78 = 0xD00000000000001ELL;
  }

  else
  {
    v77 = 0x80000002741DBCB0;
    v78 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v78, v77);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  v79 = (*(v100 + 32))(v99);
  MEMORY[0x2743E5FB0](v79);

  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v97)
  {
    v80 = 1702195828;
  }

  else
  {
    v80 = 0x65736C6166;
  }

  if (v97)
  {
    v81 = 0xE400000000000000;
  }

  else
  {
    v81 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v80, v81);

  sub_2740CB460(v109, *(&v109 + 1));

  v82 = v93;
  swift_setDeallocating();
  sub_27409D420(v82 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v83 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v84 = sub_2741C6A4C();
  (*(*(v84 - 8) + 8))(v82 + v83, v84);
  swift_deallocClassInstance();
  sub_2741041FC(v61, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v116);
  return v48;
}

void sub_274103F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_274103FF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A88, &qword_2741D0FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741040C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSettings(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27410412C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSettings(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2741041B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2741041FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2741042E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AA8, &qword_2741D10E0);
  sub_274104AE4();
  return sub_2741C762C();
}

uint64_t sub_274104354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AC8, &qword_2741D1110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AC0, &unk_2741D10E8);
  sub_2740A6D24(&qword_280939AD0, &qword_280939AC8, &qword_2741D1110, MEMORY[0x277D83980]);
  sub_2740FBAC0();
  sub_2740A6D24(&qword_280939AB8, &qword_280939AC0, &unk_2741D10E8, MEMORY[0x277CDF028]);
  return sub_2741C7B5C();
}

uint64_t sub_2741044D4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AD8, &unk_2741D1118);
  sub_2740A6D24(&qword_280939AE0, &qword_280939AD8, &unk_2741D1118, MEMORY[0x277CE1138]);
  return sub_2741C7A7C();
}

uint64_t sub_2741045EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v10, v5);
  v6 = v10;
  if (*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != a4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v6;
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

__n128 sub_27410470C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = sub_2741C70EC();
  sub_2741047C0(v8, a2, a3, a4, v13);
  *&v12[55] = v13[3];
  *&v12[39] = v13[2];
  *&v12[23] = v13[1];
  *&v12[7] = v13[0];
  *(a5 + 33) = *&v12[16];
  result = *&v12[32];
  *(a5 + 49) = *&v12[32];
  *(a5 + 65) = *&v12[48];
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 80) = *&v12[63];
  *(a5 + 17) = *v12;
  return result;
}

uint64_t sub_2741047C0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    if (qword_280937480 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (qword_280937488 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_7:

LABEL_8:
  sub_2740A6A74();
  v10 = sub_2741C76AC();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938140, &qword_2741CB8E0);
  MEMORY[0x2743E5B70](&v23, v17);
  v18 = v23;
  swift_getKeyPath();
  v24 = v18;
  sub_2740C91EC();
  sub_2741C6A0C();

  v19 = *(v18 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);

  if (v19 == v9)
  {
    v20 = sub_2741C79CC();
    v21 = sub_2741C797C();
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  sub_27409861C(v10, v12, v14 & 1);

  sub_274104BD8(v20, v21);
  sub_274104C18(v20, v21);
  LOBYTE(v24) = v14 & 1;
  LOBYTE(v23) = 1;
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v14 & 1;
  *(a5 + 24) = v16;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v20;
  *(a5 + 56) = v21;
  sub_274104C18(v20, v21);
  sub_2740A6AC8(v10, v12, v14 & 1);
}

uint64_t sub_274104A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939A98, &qword_2741D10D8);
  sub_2740A6D24(&qword_280939AA0, &qword_280939A98, &qword_2741D10D8, MEMORY[0x277CDE5A0]);
  return sub_2741C7B9C();
}

unint64_t sub_274104AE4()
{
  result = qword_280939AB0;
  if (!qword_280939AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AA8, &qword_2741D10E0);
    sub_2740A6D24(&qword_280939AB8, &qword_280939AC0, &unk_2741D10E8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939AB0);
  }

  return result;
}

uint64_t sub_274104BD8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274104C18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_274104C7C()
{
  result = qword_280939AE8;
  if (!qword_280939AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280939AF0, qword_2741D1150);
    sub_2740A6D24(&qword_280939AA0, &qword_280939A98, &qword_2741D10D8, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939AE8);
  }

  return result;
}

uint64_t sub_274104D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_27409D118(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_274106598(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2741051E0(a1);
    v7 = sub_274125ECC();
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_274106CC0();
        v11 = v13;
      }

      sub_27409D118((*(v11 + 56) + 40 * v9), v14);
      sub_27410615C(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2741051E0(v14);
  }

  return result;
}

uint64_t sub_274104E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 80) = a4;
  return MEMORY[0x2822009F8](sub_274104E48, 0, 0);
}

uint64_t sub_274104E48()
{
  *(v0 + 88) = sub_2741C80AC();
  *(v0 + 96) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274104EE0, v2, v1);
}

uint64_t sub_274104EE0()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_274104F78, 0, 0);
}

uint64_t sub_274104F78(uint64_t a1)
{
  *(v1 + 104) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274105004, v3, v2);
}

uint64_t sub_274105004()
{

  *(v0 + 112) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274105080, 0, 0);
}

uint64_t sub_274105080(uint64_t a1)
{
  *(v1 + 120) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27410510C, v3, v2);
}

uint64_t sub_27410510C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 128);

  sub_27409D4E4(v1, v0 + 16);
  swift_beginAccess();
  sub_274104D38(v0 + 16, v2);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2741051E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939AF8, &qword_2741D11A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274105248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
  v33 = v4;
  result = sub_2741C866C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_27409D2F8(v24, v34);
      }

      else
      {
        sub_27409D308(v24, v34);
      }

      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_27409D2F8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_274105500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
  result = sub_2741C866C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_27409D2F8((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2740BA2B0(v23, &v36);
        sub_27409D308(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_2741C84EC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_27409D2F8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2741057B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v30 = v4;
  result = sub_2741C866C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2741C87DC();
      MEMORY[0x2743E6870](v20);
      result = sub_2741C880C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_274105A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
  result = sub_2741C866C();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_27409D118(v21, v30);
      }

      else
      {
        sub_27409D4E4(v21, v30);
      }

      sub_2741C87DC();
      MEMORY[0x2743E6870](v20);
      result = sub_2741C880C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_27409D118(v30, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_274105CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
  v33 = v4;
  result = sub_2741C866C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_27409D118(v24, v34);
      }

      else
      {
        sub_27409D4E4(v24, v34);
      }

      sub_2741C87DC();
      sub_2741C7F0C();
      result = sub_2741C880C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_27409D118(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_274105FAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2741C841C() + 1) & ~v5;
    do
    {
      sub_2741C87DC();

      sub_2741C7F0C();
      v10 = sub_2741C880C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_27410615C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2741C841C() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      sub_2741C87DC();
      MEMORY[0x2743E6870](v11);
      result = sub_2741C880C();
      v12 = result & v7;
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
        v14 = (v13 + v3);
        v15 = (v13 + v6);
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

_OWORD *sub_2741062FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2741251AC(a2, a3);
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
      sub_27410681C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_274105248(v16, a4 & 1);
    v11 = sub_2741251AC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2741C871C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_27409D2F8(a1, v22);
  }

  else
  {
    sub_2741066C8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_27410644C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_274125164(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2741069C0();
      goto LABEL_7;
    }

    sub_274105500(v13, a3 & 1);
    v19 = sub_274125164(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2740BA2B0(a2, v21);
      return sub_274106734(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2741C871C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_27409D2F8(a1, v17);
}

uint64_t sub_274106598(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a2;
  v8 = *v3;
  v9 = sub_274125ECC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_274106CC0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_274105A48(v14, a3 & 1);
    v9 = sub_274125ECC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_2741C871C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_27409D118(a1, v20);
  }

  else
  {

    return sub_2741067B0(v9, v6, a1, v19);
  }
}

_OWORD *sub_2741066C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_27409D2F8(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_274106734(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_27409D2F8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2741067B0(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_27409D118(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_27410681C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385C0, &qword_2741D11C0);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_27409D308(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27409D2F8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2741069C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
  v2 = *v0;
  v3 = sub_2741C865C();
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
        v18 = 40 * v17;
        sub_2740BA2B0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_27409D308(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_27409D2F8(v22, (*(v4 + 56) + v17));
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

void *sub_274106B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B08, &unk_2741D11B0);
  v2 = *v0;
  v3 = sub_2741C865C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_274106CC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B00, &qword_2741D11A8);
  v2 = *v0;
  v3 = sub_2741C865C();
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
        v18 = *(*(v2 + 48) + v17);
        sub_27409D4E4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_27409D118(v19, *(v4 + 56) + 40 * v17);
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

void *sub_274106E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B18, &qword_2741D11C8);
  v2 = *v0;
  v3 = sub_2741C865C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_27409D4E4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_27409D118(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_274106FE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_274107030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741070AC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_27410710C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_274107158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_274107230(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

void *PasswordRelayer.__allocating_init(networkName:securityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PasswordSharingInterface();
  swift_allocObject();

  v7 = sub_2740FDDDC(a1, a2, a3);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = v7;
  v6[6] = *(v7 + 24);

  return v6;
}

void *PasswordRelayer.init(networkName:securityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PasswordSharingInterface();
  swift_allocObject();

  v7 = sub_2740FDDDC(a1, a2, a3);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v7;
  v3[6] = *(v7 + 24);

  return v3;
}

void *PasswordRelayer.deinit()
{

  return v0;
}

uint64_t PasswordRelayer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2741074A0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_2741074F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_27410759C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_2741075DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

uint64_t sub_2741076D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_274107720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_274107768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_27410791C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_2741079B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_274107A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_274107AD8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_274107B20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a2);
}

uint64_t sub_274107BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_274099294(a1, &v7 - v4);
  return sub_274108BF8(v5);
}

uint64_t sub_274107C98()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_274107D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_274107D80(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274107E58()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_274107ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_274108008()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_274108088(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_2741081B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v22 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = v22 - v12;
  swift_getKeyPath();
  v23 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v14 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v0 + v14, v13);
  v15 = type metadata accessor for EnterpriseIdentity(0);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v13, 1, v15);
  result = sub_27409D420(v13, &qword_280937DA0, &qword_2741CB190);
  if (v17 != 1)
  {
    (*(v16 + 56))(v10, 1, 1, v15);
    sub_274099294(v1 + v14, v6);
    v19 = sub_27410ADC8(v6, v10);
    sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
    if (v19)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v21);
      v22[-2] = v1;
      v22[-1] = v10;
      v22[2] = v1;
      sub_2741C69FC();
    }

    else
    {
      sub_274099294(v10, v6);
      sub_2741089B4(v6);
    }

    return sub_27409D420(v10, &qword_280937DA0, &qword_2741CB190);
  }

  return result;
}

uint64_t sub_27410847C()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_2741084FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56) == a1 && *(v2 + 64) == a2;
  if (v5 || (sub_2741C86DC() & 1) != 0)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;

    return sub_2741081B8();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_274108630()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + 72);
}

uint64_t sub_2741086A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_274108740(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274108828()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();
}

uint64_t sub_27410889C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a2 = *(v3 + 88);
}

uint64_t sub_274108918(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C69FC();
}

uint64_t sub_2741089B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_27410B054(a1, v1 + v7);
  swift_endAccess();
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001BLL, 0x80000002741DBF50);
  swift_getKeyPath();
  v9 = v1;
  sub_2740C91EC();
  sub_2741C6A0C();

  sub_274099294(v1 + v7, v6);
  sub_2741C862C();
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  sub_2740CB460(v10, v11);

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274108B60@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2740C91EC();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v5 + v3, a1);
}

uint64_t sub_274108BF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  sub_274099294(v1 + v7, v6);
  LOBYTE(v7) = sub_27410ADC8(v6, a1);
  sub_27409D420(v6, &qword_280937DA0, &qword_2741CB190);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_2740C91EC();
    sub_2741C69FC();
  }

  else
  {
    sub_274099294(a1, v6);
    sub_2741089B4(v6);
  }

  return sub_27409D420(a1, &qword_280937DA0, &qword_2741CB190);
}

uint64_t sub_274108D90(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v8 - v5;
  sub_274099294(a2, &v8 - v5);
  return sub_2741089B4(v6);
}

uint64_t sub_274108E2C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a1 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode);
  return result;
}

unsigned __int8 *sub_274108EAC(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

uint64_t sub_274108F9C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) != 0)
  {
    swift_getKeyPath();
    sub_2741C6A0C();

    v3 = *(v0 + v2) == 160;
  }

  else
  {
    v3 = 1;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_2741C69FC();
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v1 + v2) == 512)
  {
    sub_2741084FC(0, 0xE000000000000000);
    return sub_274108088(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_274109168()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType);
}

uint64_t sub_2741091E0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == a1)
  {

    return sub_274108F9C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_2740C91EC();
    sub_2741C69FC();
  }
}

uint64_t sub_27410931C()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);
}

uint64_t sub_2741093A8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_274109454(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_2740C91EC();
    sub_2741C69FC();
  }

  return result;
}

BOOL sub_274109544()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if (*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) == 4)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 16)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 64)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  if (*(v0 + v1) == 80)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_2741C6A0C();

  return *(v0 + v1) == 20;
}

BOOL sub_274109704()
{
  v1 = v0;
  v37 = sub_2741C66FC();
  v2 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v37 - v12;
  swift_getKeyPath();
  v38 = v0;
  sub_2740C91EC();
  sub_2741C6A0C();

  v14 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType;
  if ((*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) & 0xFFFFFFFFFFFFFB57) == 0 || (swift_getKeyPath(), v38 = v0, sub_2741C6A0C(), , *(v0 + v14) == 160))
  {
    swift_getKeyPath();
    v38 = v0;
    sub_2741C6A0C();

    if (*(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) == 2)
    {
      swift_getKeyPath();
      v38 = v0;
      sub_2741C6A0C();

      v15 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
      swift_beginAccess();
      sub_274099294(v1 + v15, v13);
      v16 = type metadata accessor for EnterpriseIdentity(0);
      v17 = (*(*(v16 - 8) + 48))(v13, 1, v16) != 1;
      sub_27409D420(v13, &qword_280937DA0, &qword_2741CB190);
      return v17;
    }

    swift_getKeyPath();
    v38 = v0;
    sub_2741C6A0C();

    v19 = v0[6];
    v20 = v0[5] & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v19) & 0xF;
    }

    if (v20)
    {
      swift_getKeyPath();
      v38 = v0;
      sub_2741C6A0C();

      v21 = v0[8];
      v22 = v0[7] & 0xFFFFFFFFFFFFLL;
      if ((v21 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v21) & 0xF;
      }

      return v22 != 0;
    }

    return 0;
  }

  swift_getKeyPath();
  v38 = v0;
  sub_2741C6A0C();

  if (*(v0 + v14) == 1)
  {
    swift_getKeyPath();
    v38 = v0;
    sub_2741C6A0C();

    v23 = sub_2741C7F1C();

    if (v23 < 5)
    {
      return 0;
    }

    swift_getKeyPath();
    v38 = v1;
    sub_2741C6A0C();

    v24 = sub_2741C7F1C();

    return v24 < 59;
  }

  if (!sub_274109544())
  {
    swift_getKeyPath();
    v38 = v0;
    sub_2741C6A0C();

    v34 = v0[8];
    v35 = v0[7] & 0xFFFFFFFFFFFFLL;
    if ((v34 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v34) & 0xF;
    }

    if (!v35)
    {
      return 0;
    }

    swift_getKeyPath();
    v38 = v0;
    sub_2741C6A0C();

    v36 = sub_2741C7F1C();

    return v36 < 65;
  }

  sub_2741C66DC();
  sub_2741C66EC();
  v26 = *(v2 + 8);
  v27 = v37;
  v26(v6, v37);
  swift_getKeyPath();
  v38 = v0;
  sub_2741C6A0C();

  v28 = v0[8];
  v38 = v0[7];
  v39 = v28;
  sub_2740A6A74();
  sub_2741C83BC();
  v30 = v29;
  swift_getKeyPath();
  v38 = v0;
  sub_2741C6A0C();

  v31 = sub_2741C7F1C();

  if (v31 >= 8 && (swift_getKeyPath(), v38 = v1, sub_2741C6A0C(), , , v32 = sub_2741C7F1C(), , v32 <= 63))
  {
    v26(v9, v27);
    return 1;
  }

  else
  {
    swift_getKeyPath();
    v38 = v1;
    sub_2741C6A0C();

    v33 = sub_2741C7F1C();

    v26(v9, v27);
    return (v33 == 64) & v30;
  }
}

uint64_t sub_274109E08()
{

  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity, &qword_280937DA0, &qword_2741CB190);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssociationCredentials(uint64_t a1)
{
  result = qword_280939B48;
  if (!qword_280939B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274109F40(uint64_t a1)
{
  sub_2740997F4(319);
  if (v1 <= 0x3F)
  {
    sub_2741C6A4C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27410A05C()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  v2 = type metadata accessor for EnterpriseIdentity(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__mode) = 1;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__selectedSecurityType) = 80;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode) = 3;
  sub_2741C6A3C();
  return v0;
}

uint64_t sub_27410A158()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_27410A1D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_27410A258()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = *(v1 + 56);

  return v2;
}

uint64_t sub_27410A2D8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__privateMACAddressMode);
}

uint64_t sub_27410A350()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + 72);
}

uint64_t sub_27410A3C0()
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();
}

uint64_t sub_27410A434(uint64_t a1)
{
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C69FC();
}

uint64_t sub_27410A4D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit22AssociationCredentials__tlsIdentity;
  swift_beginAccess();
  return sub_274099294(v3 + v4, a1);
}

uint64_t sub_27410A570()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  return *(v1 + 16);
}

uint64_t sub_27410A5E0()
{
  v15 = 60;
  v16 = 0xE100000000000000;
  swift_getMetatypeMetadata();
  v1 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v1);

  strcpy(v14, " username: '");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  swift_getKeyPath();
  sub_2740C91EC();
  sub_2741C6A0C();

  v2 = 0xE000000000000000;
  if (v0[5] || v0[6] != 0xE000000000000000)
  {
    v4 = sub_2741C86DC();
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x657463616465723CLL;
    }

    if (v5)
    {
      v2 = 0xEA00000000003E64;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2743E5FB0](v3, v2);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v14[0], v14[1]);

  strcpy(v14, " password: '");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  swift_getKeyPath();
  sub_2741C6A0C();

  v6 = 0xE000000000000000;
  if (v0[7] || v0[8] != 0xE000000000000000)
  {
    v8 = sub_2741C86DC();
    v9 = (v8 & 1) == 0;
    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x657463616465723CLL;
    }

    if (v9)
    {
      v6 = 0xEA00000000003E64;
    }
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x2743E5FB0](v7, v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v14[0], v14[1]);

  MEMORY[0x2743E5FB0](0x27203A65646F6D20, 0xE800000000000000);
  swift_getKeyPath();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000018, 0x80000002741DBED0);
  swift_getKeyPath();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741DBEF0);
  swift_getKeyPath();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](0, 0xE000000000000000);

  sub_2741C856C();

  v14[0] = 0xD000000000000014;
  v14[1] = 0x80000002741DBF10;
  swift_getKeyPath();
  sub_2741C6A0C();

  v10 = v0[11];
  if (v10)
  {
    v11 = 0x657463616465723CLL;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = 0xEA00000000003E64;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x2743E5FB0](v11, v12);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  MEMORY[0x2743E5FB0](v14[0], v14[1]);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return v15;
}

uint64_t sub_27410AC20()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t keypath_set_88Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_27410ADC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnterpriseIdentity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_274099294(a1, &v23 - v16);
  sub_274099294(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_274099294(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2740F23D4(&v17[v18], v8);
      v21 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_2740FBC6C(v8);
      sub_2740FBC6C(v12);
      sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
      v20 = !v21;
      return v20 & 1;
    }

    sub_2740FBC6C(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27409D420(v17, &qword_280939B58, &unk_2741D15B0);
    v20 = 1;
    return v20 & 1;
  }

  sub_27409D420(v17, &qword_280937DA0, &qword_2741CB190);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_27410B054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_27410B0D4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;

  return sub_2741081B8();
}

uint64_t sub_27410B124()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_27410B164()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_27410B1EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27410B808(&qword_280938350, type metadata accessor for CurrentNetworkModel, &unk_2741D1610);
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_27409D4E4(v1 + 24, a1);
}

uint64_t sub_27410B2AC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2);
  return swift_endAccess();
}

uint64_t sub_27410B310()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = type metadata accessor for KnownNetwork(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  swift_getKeyPath();
  v18[0] = v10;
  sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v10 + 32, v18, &qword_280938340, &qword_2741D1660);
  v11 = v18[1];
  sub_27409D420(v18, &qword_280938340, &qword_2741D1660);
  if (!v11)
  {
    return 0;
  }

  swift_getKeyPath();
  v18[0] = v10;
  sub_2741C6A0C();

  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v10 + v12, v4, &qword_280938570, &qword_2741D1630);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_27409D420(v4, &qword_280938570, &qword_2741D1630);
    v13 = 1;
  }

  else
  {
    sub_27409D240(v4, v9);
    v14 = v9[115];
    sub_27409D050(v9);
    v13 = v14 ^ 1;
  }

  swift_getKeyPath();
  v17 = v10;
  sub_2741C6A0C();

  if (*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v17 = v10;
  sub_2741C6A0C();

  return ((*(v10 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) & 1) == 0) & v13;
}

uint64_t sub_27410B638()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentNetworkModel(uint64_t a1)
{
  result = qword_280939B68;
  if (!qword_280939B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27410B738(uint64_t a1)
{
  result = sub_2741C6A4C();
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

uint64_t sub_27410B808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27410B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  MEMORY[0x28223BE20](v57, v7);
  v58 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for KnownNetwork(0);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v56 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v54 - v27;
  v75[3] = a3;
  v75[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_27409D4E4(v75, &v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v30 = swift_dynamicCast();
  v31 = *(v22 + 56);
  if (!v30)
  {
    v42 = v59;
    v31(v20, 1, 1, v21);
    sub_27409D420(v20, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v75, v72);
    if (swift_dynamicCast())
    {
      v73[4] = v67;
      v73[5] = v68;
      v74 = v69;
      v73[0] = v63;
      v73[1] = v64;
      v73[2] = v65;
      v73[3] = v66;
      v43 = *(v42 + 16);
      swift_getKeyPath();
      *&v63 = v43;
      sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v73, v72);
      sub_2740A6D94(v43 + 32, &v63, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v72, v70, &qword_280938340, &qword_2741D1660);
      if (*(&v63 + 1))
      {
        sub_2740A6D94(&v63, v62, &qword_280938340, &qword_2741D1660);
        if (*(&v70[0] + 1))
        {
          v60[4] = v70[4];
          v60[5] = v70[5];
          v61 = v71;
          v60[0] = v70[0];
          v60[1] = v70[1];
          v60[2] = v70[2];
          v60[3] = v70[3];
          if (v62[0] == v70[0])
          {
            v44 = 1;
          }

          else
          {
            v44 = sub_2741C86DC();
          }

          sub_27409D420(v72, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v73);
          sub_2740ACB2C(v60);
          sub_2740ACB2C(v62);
          v50 = &v63;
          v51 = &qword_280938340;
          v52 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v72, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v73);
        sub_2740ACB2C(v62);
      }

      else
      {
        sub_27409D420(v72, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v73);
        if (!*(&v70[0] + 1))
        {
          v39 = &qword_280938340;
          v40 = &qword_2741D1660;
          v41 = &v63;
          goto LABEL_19;
        }
      }

      v46 = &qword_280939B80;
      v47 = &qword_2741D4800;
    }

    else
    {
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v46 = &qword_280938340;
      v47 = &qword_2741D1660;
    }

    v48 = &v63;
    goto LABEL_25;
  }

  v54 = v13;
  v31(v20, 0, 1, v21);
  sub_27409D240(v20, v28);
  sub_27409CF58(v28, v17);
  v31(v17, 0, 1, v21);
  v55 = v22;
  v32 = *(v59 + 16);
  swift_getKeyPath();
  *&v63 = v32;
  sub_27410B808(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  v33 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v34 = v58;
  v35 = *(v57 + 48);
  sub_2740A6D94(v17, v58, &qword_280938570, &qword_2741D1630);
  v36 = v32 + v33;
  v37 = v55;
  sub_2740A6D94(v36, v34 + v35, &qword_280938570, &qword_2741D1630);
  v38 = *(v37 + 48);
  if (v38(v34, 1, v21) != 1)
  {
    v45 = v54;
    sub_2740A6D94(v34, v54, &qword_280938570, &qword_2741D1630);
    if (v38(v34 + v35, 1, v21) == 1)
    {
      sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
      sub_27409D050(v28);
      sub_27409D050(v45);
      goto LABEL_12;
    }

    v49 = v56;
    sub_27409D240(v34 + v35, v56);
    if (*v45 == *v49 && v45[1] == v49[1])
    {
      v44 = 1;
    }

    else
    {
      v44 = sub_2741C86DC();
    }

    sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
    sub_27409D050(v28);
    sub_27409D050(v49);
    sub_27409D050(v45);
    v50 = v34;
    v51 = &qword_280938570;
    v52 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v50, v51, v52);
    goto LABEL_29;
  }

  sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
  sub_27409D050(v28);
  if (v38(v34 + v35, 1, v21) != 1)
  {
LABEL_12:
    v46 = &qword_280939B78;
    v47 = &unk_2741D6DB0;
    v48 = v34;
LABEL_25:
    sub_27409D420(v48, v46, v47);
    v44 = 0;
    goto LABEL_29;
  }

  v39 = &qword_280938570;
  v40 = &qword_2741D1630;
  v41 = v34;
LABEL_19:
  sub_27409D420(v41, v39, v40);
  v44 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  return v44 & 1;
}

unint64_t InteractionStyle.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_27410C054()
{
  result = qword_280939B88;
  if (!qword_280939B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B88);
  }

  return result;
}

unint64_t *sub_27410C0A8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkWarning(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27410C238(_BYTE *a1)
{
  v1 = 0;
  switch(*a1)
  {
    case 0:
    case 1:
      if (qword_2809374B8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460A8;
      goto LABEL_38;
    case 5:
    case 6:
    case 0xB:
    case 0xD:
    case 0xE:
      if (qword_2809374C8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460C8;
      goto LABEL_38;
    case 7:
      if (qword_2809374C0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460B8;
      goto LABEL_38;
    case 8:
    case 0xC:
      if (qword_2809374F8 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946128;
      goto LABEL_38;
    case 9:
      if (qword_2809374F0 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946118;
      goto LABEL_38;
    case 0xA:
      if (qword_2809374E8 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946108;
      goto LABEL_38;
    case 0xF:
      if (qword_280937500 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946138;
      goto LABEL_38;
    case 0x10:
      if (qword_280937508 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946148;
      goto LABEL_38;
    case 0x12:
      if (qword_2809374E0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460F8;
      goto LABEL_38;
    case 0x13:
      if (qword_2809374D0 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460D8;
      goto LABEL_38;
    case 0x14:
      if (qword_2809374D8 != -1)
      {
        swift_once();
      }

      v2 = &qword_2809460E8;
      goto LABEL_38;
    case 0x15:
      if (qword_280937510 != -1)
      {
        swift_once();
      }

      v2 = &qword_280946158;
LABEL_38:
      v1 = *v2;

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_27410C5C0(_BYTE *a1)
{
  v2 = 0;
  switch(*a1)
  {
    case 0:
    case 1:
      if (*(v1 + 1) == 1)
      {
        if (qword_280937520 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946178;
      }

      else
      {
        if (qword_280937518 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946168;
      }

      goto LABEL_54;
    case 5:
      if (qword_280937538 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461A8;
      goto LABEL_54;
    case 6:
      if (qword_280937530 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946198;
      goto LABEL_54;
    case 7:
      if (qword_280937528 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946188;
      goto LABEL_54;
    case 8:
      if (qword_280937568 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946208;
      goto LABEL_54;
    case 9:
      if (qword_280937560 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461F8;
      goto LABEL_54;
    case 0xA:
      if (qword_280937558 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461E8;
      goto LABEL_54;
    case 0xB:
      if (qword_280937580 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946238;
      goto LABEL_54;
    case 0xC:
      if (qword_280937588 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946248;
      goto LABEL_54;
    case 0xD:
      if (qword_280937590 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946258;
      goto LABEL_54;
    case 0xE:
      if (qword_280937598 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946268;
      goto LABEL_54;
    case 0xF:
      if (qword_280937570 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946218;
      goto LABEL_54;
    case 0x10:
      if (qword_280937578 != -1)
      {
        swift_once();
      }

      v3 = &qword_280946228;
      goto LABEL_54;
    case 0x12:
      if (qword_280937550 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461D8;
      goto LABEL_54;
    case 0x13:
      if (qword_280937540 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461B8;
      goto LABEL_54;
    case 0x14:
      if (qword_280937548 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809461C8;
LABEL_54:
      v2 = *v3;

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_27410CA84(_BYTE *a1)
{
  v2 = 0;
  switch(*a1)
  {
    case 0:
    case 1:
      if (*(v1 + 1))
      {
        if (qword_2809375A0 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946278;
      }

      else
      {
        if (qword_2809375A8 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946288;
      }

      goto LABEL_78;
    case 5:
    case 6:
    case 0xB:
      if (*(v1 + 1))
      {
        if (qword_2809375C0 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809462B8;
      }

      else
      {
        if (qword_2809375C8 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809462C8;
      }

      goto LABEL_78;
    case 7:
      if (*(v1 + 1))
      {
        if (qword_2809375B0 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946298;
      }

      else
      {
        if (qword_2809375B8 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809462A8;
      }

      goto LABEL_78;
    case 8:
    case 0xC:
      if (*(v1 + 1))
      {
        if (qword_280937628 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946388;
      }

      else
      {
        if (qword_280937630 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946398;
      }

      goto LABEL_78;
    case 9:
      if (*(v1 + 1))
      {
        if (qword_280937618 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946368;
      }

      else
      {
        if (qword_280937620 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946378;
      }

      goto LABEL_78;
    case 0xA:
      if (*(v1 + 1))
      {
        if (qword_280937608 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946348;
      }

      else
      {
        if (qword_280937610 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946358;
      }

      goto LABEL_78;
    case 0xD:
    case 0xE:
    case 0xF:
      if (qword_2809375D0 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809462D8;
      goto LABEL_78;
    case 0x10:
      if (qword_280937638 != -1)
      {
        swift_once();
      }

      v3 = &qword_2809463A8;
      goto LABEL_78;
    case 0x12:
      if (*(v1 + 1))
      {
        if (qword_2809375F8 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946328;
      }

      else
      {
        if (qword_280937600 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946338;
      }

      goto LABEL_78;
    case 0x13:
      if (*(v1 + 1))
      {
        if (qword_2809375D8 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809462E8;
      }

      else
      {
        if (qword_2809375E0 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809462F8;
      }

      goto LABEL_78;
    case 0x14:
      if (*(v1 + 1))
      {
        if (qword_2809375E8 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946308;
      }

      else
      {
        if (qword_2809375F0 != -1)
        {
          swift_once();
        }

        v3 = &qword_280946318;
      }

      goto LABEL_78;
    case 0x15:
      if (*(v1 + 1))
      {
        if (qword_280937640 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809463B8;
      }

      else
      {
        if (qword_280937648 != -1)
        {
          swift_once();
        }

        v3 = &qword_2809463C8;
      }

LABEL_78:
      v2 = *v3;

      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_27410D098@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2047)
  {
    if (result < 0x10000)
    {
      if (result < 0x2000)
      {
        if (result == 2048)
        {
          *a2 = 11;
          return result;
        }

        if (result == 4096)
        {
          *a2 = 12;
          return result;
        }
      }

      else
      {
        switch(result)
        {
          case 0x2000:
            *a2 = 17;
            return result;
          case 0x4000:
            *a2 = 18;
            return result;
          case 0x8000:
            *a2 = 1;
            return result;
        }
      }
    }

    else if (result >= 0x80000)
    {
      switch(result)
      {
        case 0x80000:
          *a2 = 21;
          return result;
        case 0x100000:
          *a2 = 13;
          return result;
        case 0x200000:
          *a2 = 14;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 0x10000:
          *a2 = 2;
          return result;
        case 0x20000:
          *a2 = 3;
          return result;
        case 0x40000:
          *a2 = 4;
          return result;
      }
    }
  }

  else if (result <= 31)
  {
    if (result <= 3)
    {
      if (result == 1)
      {
        *a2 = 0;
        return result;
      }

      if (result == 2)
      {
        *a2 = 5;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          *a2 = 6;
          return result;
        case 8:
          *a2 = 7;
          return result;
        case 16:
          *a2 = 19;
          return result;
      }
    }
  }

  else if (result > 255)
  {
    switch(result)
    {
      case 256:
        *a2 = 9;
        return result;
      case 512:
        *a2 = 15;
        return result;
      case 1024:
        *a2 = 16;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 32:
        *a2 = 20;
        return result;
      case 64:
        *a2 = 10;
        return result;
      case 128:
        *a2 = 8;
        return result;
    }
  }

  *a2 = 22;
  return result;
}

uint64_t sub_27410D288()
{
  sub_2741C87DC();
  sub_2741C87FC();
  sub_2741C87FC();
  return sub_2741C880C();
}

uint64_t sub_27410D328(uint64_t a1)
{
  sub_2741C87DC();
  sub_2741C87FC();
  sub_2741C87FC();
  return sub_2741C880C();
}

unint64_t sub_27410D3B0()
{
  result = qword_280939B90;
  if (!qword_280939B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B90);
  }

  return result;
}

BOOL sub_27410D404(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v21 = *a1;
  v3 = sub_27410C238(&v21);
  if (v4)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5;
  }

  if (!v7)
  {
    return 0;
  }

  v20[1] = v1;
  v20[2] = v2;
  v20[0] = v1;
  v8 = sub_27410C5C0(v20);
  if (v9)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10;
  }

  if (!v12)
  {
    return 0;
  }

  v19[1] = v1;
  v19[2] = v2;
  v19[0] = v1;
  v13 = sub_27410CA84(v19);
  if (v14)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15;
  }

  return v17 != 0;
}

unint64_t sub_27410D51C()
{
  result = qword_280939B98;
  if (!qword_280939B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939B98);
  }

  return result;
}

void *sub_27410D570@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result == 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27410D598(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 3 < 3)
  {
    if (qword_280937970 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a3 == 6)
  {
    if (qword_280937990 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a3 == 2)
  {
    if (qword_280937960 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_2809379A0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2741CB550;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_27410D7BC();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_2741C7E4C();

  return v6;
}

unint64_t sub_27410D7BC()
{
  result = qword_280939BA0;
  if (!qword_280939BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockdownModeAlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockdownModeAlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27410D964()
{
  result = qword_280939BA8;
  if (!qword_280939BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BA8);
  }

  return result;
}

void *sub_27410D9B8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_27410DAFC(a2);
  if (!v3)
  {
    v6 = result;
    v7 = sub_2740CD860([*(v2 + 16) privateMACAddressModeForNetworkProfile_]);
    if (v7 == 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [*(v2 + 16) privateMACAddressForNetworkProfile_];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2741C7E7C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [*(v2 + 16) hardwareMACAddress];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2741C7E7C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    LOBYTE(v20) = v8;
    *(&v20 + 1) = v11;
    v21 = v13;
    v22 = v16;
    v23 = v18;
    v24 = v8;
    v19[3] = sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
    v19[4] = &off_2883287E8;
    v19[0] = v6;
    return sub_2740B6AC8(v19, &v20, a1);
  }

  return result;
}

void *sub_27410DAFC(void *a1)
{
  v3 = sub_2741C696C();
  v22 = *(v3 - 1);
  MEMORY[0x28223BE20](v3, v4);
  v21 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v8 = *(v6 + 80);
  v8(&v23, v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    return v25;
  }

  v18 = v3;
  v8(&v23, v7, v6);
  v19 = sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  if ((swift_dynamicCast() & 1) == 0 || (v17[1] = v1, v9 = v25, v3 = [v25 matchingKnownNetworkProfile], v9, !v3))
  {
    v8(&v23, v7, v6);
    if (swift_dynamicCast())
    {
      v10 = v25;
      v3 = [v25 networkProfile];
      [v3 setPrivateMACAddressModeUserSetting_];
      v11 = v21;
      sub_2741C695C();
      v12 = sub_2741C692C();
      (*(v22 + 8))(v11, v18);
      [v3 setAddedAt_];
    }

    else
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_2741C856C();

      v23 = 0xD00000000000002FLL;
      v24 = 0x80000002741DC0A0;
      v13 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v15 = (*(v14 + 32))(v13, v14);
      MEMORY[0x2743E5FB0](v15);

      sub_2740CB218(v23, v24, 0xD000000000000014, 0x80000002741DC0D0);

      sub_27410FC08();
      swift_allocError();
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_27410DE80(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;

  return MEMORY[0x2822009F8](sub_27410DF10, 0, 0);
}

uint64_t sub_27410DF10()
{
  v1 = v0[33];
  v2 = *(v1 + 96);
  v3 = sub_27410EA7C(v1);
  v4 = v0[34];
  [v3 setAutoJoinDisabled_];
  v5 = qword_280937320;
  v6 = *(v4 + 16);
  if (v5 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v7 = sub_2741C81DC();
  v0[32] = 0;
  v8 = [v6 updateKnownNetworkProfile:v3 properties:v7 error:v0 + 32];

  v9 = v0[32];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v11 = v9;
    v12 = sub_2741C681C();

    swift_willThrow();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_2741C856C();
    v0[9] = 0;
    v0[10] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741DBFC0);
    v0[21] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[9], v0[10], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v13 = v0[33];
  v14 = *(v13 + 98);
  v15 = sub_27410EA7C(v13);
  v16 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BB0, &qword_2741D1A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CB550;
  *(inited + 32) = 0x4265766974706143;
  v18 = inited + 32;
  *(inited + 40) = 0xED00007373617079;
  *(inited + 48) = v14 ^ 1;
  v19 = sub_274178114(inited);
  swift_setDeallocating();
  sub_27409D420(v18, &qword_280939BB8, &qword_2741D1A38);
  sub_2741123D0(v19);

  v20 = sub_2741C7D4C();

  [v15 setCaptiveProfile_];

  v21 = qword_280937328;
  v22 = *(v16 + 16);
  if (v21 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v23 = sub_2741C81DC();
  v0[31] = 0;
  v24 = [v22 updateKnownNetworkProfile:v15 properties:v23 error:v0 + 31];

  v25 = v0[31];
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v27 = v25;
    v28 = sub_2741C681C();

    swift_willThrow();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_2741C856C();
    v0[11] = 0;
    v0[12] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741DBFE0);
    v0[22] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[11], v0[12], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v29 = v0[33];
  v30 = *(v29 + 56);
  v31 = sub_27410EA7C(v29);
  v32 = v31;
  v33 = v0[34];
  if (v30)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  [v31 setLowDataMode_];
  v35 = qword_280937330;
  v36 = *(v33 + 16);
  if (v35 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v37 = sub_2741C81DC();
  v0[30] = 0;
  v38 = [v36 updateKnownNetworkProfile:v32 properties:v37 error:v0 + 30];

  v39 = v0[30];
  if (v38)
  {
    v40 = v39;
  }

  else
  {
    v41 = v39;
    v42 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[13] = 0;
    v0[14] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ELL, 0x80000002741DC000);
    v0[23] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[13], v0[14], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v43 = v0[33];
  v44 = *(v43 + 99);
  v45 = sub_27410EA7C(v43);
  v46 = v0[34];
  [v45 setPrivacyProxyEnabled_];
  v47 = qword_280937338;
  v48 = *(v46 + 16);
  if (v47 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v49 = sub_2741C81DC();
  v0[29] = 0;
  v50 = [v48 updateKnownNetworkProfile:v45 properties:v49 error:v0 + 29];

  v51 = v0[29];
  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v53 = v51;
    v54 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[15] = 0;
    v0[16] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DC020);
    v0[24] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[15], v0[16], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v55 = v0[33];
  v56 = v55[19];
  v57 = sub_27410EA7C(v55);
  v58 = v0[34];
  [v57 setDisable6EMode_];
  v59 = qword_280937340;
  v60 = *(v58 + 16);
  if (v59 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v61 = sub_2741C81DC();
  v0[28] = 0;
  v62 = [v60 updateKnownNetworkProfile:v57 properties:v61 error:v0 + 28];

  v63 = v0[28];
  if (v62)
  {
    v64 = v63;
  }

  else
  {
    v65 = v63;
    v66 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[17] = 0;
    v0[18] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001DLL, 0x80000002741DC050);
    v0[25] = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[17], v0[18], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v67 = v0[33];
  v68 = *(v67 + 104);
  v69 = sub_27410EA7C(v67);
  v70 = v0[34];
  [v69 setPrivateMACAddressModeUserSetting_];
  v71 = qword_280937348;
  v72 = *(v70 + 16);
  if (v71 != -1)
  {
    swift_once();
  }

  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v73 = sub_2741C81DC();
  v0[27] = 0;
  v74 = [v72 updateKnownNetworkProfile:v69 properties:v73 error:v0 + 27];

  v75 = v0[27];
  if (v74)
  {
    v76 = v75;
  }

  else
  {
    v77 = v75;
    v78 = sub_2741C681C();

    swift_willThrow();
    sub_2741C856C();
    v0[19] = 0;
    v0[20] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD000000000000021, 0x80000002741DC070);
    v0[26] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v0[19], v0[20], 0x7465732865766173, 0xEF293A73676E6974);
  }

  v79 = v0[1];

  return v79();
}

uint64_t sub_27410EA7C(void *a1)
{
  sub_27409D4E4(a1, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    return v10;
  }

  sub_27409D4E4(a1, &v11);
  sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 16);
    v5 = [v4 knownNetworkProfileMatchingScanResult_];

    if (v5)
    {
      return v5;
    }
  }

  sub_27409D4E4(a1, &v11);
  if (swift_dynamicCast())
  {
    v6 = [v10 networkProfile];

    if (v6)
    {
      return v6;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2741C856C();

  v11 = 0xD00000000000002FLL;
  v12 = 0x80000002741DC0A0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938580, &qword_2741CD4E0);
  v9 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v9);

  sub_2740CB218(v11, v12, 0xD000000000000014, 0x80000002741DC0D0);

  sub_27410FC08();
  swift_allocError();
  return swift_willThrow();
}

void sub_27410ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BC8, &qword_2741D1A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2741CB550;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v11 = sub_274177EC4(inited);
  swift_setDeallocating();
  sub_27409D420(inited + 32, &qword_280939BD0, &qword_2741D1A58);
  v12 = [*(v5 + 16) userSettings];
  if (v12)
  {
    v13 = v12;
    v14 = [v13 OSSpecificAttributes];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2741C7D6C();

      *(&v31 + 1) = 0x80000002741DA4E0;
      sub_2741C850C();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BE0, &qword_2741D1A68);
      *&v31 = v11;
      sub_27409D2F8(&v31, v30);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_27410644C(v30, &v33, isUniquelyReferenced_nonNull_native);
      sub_27409D2A4(&v33);
      if (v16)
      {
        v18 = sub_2741C7D4C();
      }

      else
      {
        v18 = 0;
      }

      [v13 setOSSpecificAttributes_];
    }

    else
    {
      [v13 setOSSpecificAttributes_];
    }
  }

  else
  {
    v19 = [objc_allocWithZone(MEMORY[0x277D02B60]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BD8, &qword_2741D1A60);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_2741CB550;
    v33 = 0xD000000000000017;
    v34 = 0x80000002741DA4E0;
    v13 = v19;
    sub_2741C850C();
    *(v20 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BE0, &qword_2741D1A68);
    *(v20 + 72) = v11;

    sub_274177FD8(v20);
    swift_setDeallocating();
    sub_27409D420(v20 + 32, &qword_280939BE8, qword_2741D1A70);
    v21 = sub_2741C7D4C();

    [v13 setOSSpecificAttributes_];
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_2741C856C();

  v33 = 0xD000000000000016;
  v34 = 0x80000002741DC0F0;
  v22 = sub_2741C7D7C();
  v24 = v23;

  MEMORY[0x2743E5FB0](v22, v24);

  sub_2740CB460(v33, v34);

  v25 = *(v5 + 16);
  v33 = 0;
  v26 = v25;
  v27 = [v26 applyUserSettings:v13 properties:0 error:&v33];

  if (v27)
  {
    v28 = v33;
  }

  else
  {
    v29 = v33;
    sub_2741C681C();

    swift_willThrow();
  }
}

__n128 sub_27410F168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(a4 + 32))(v6, a4);
  v14 = v13;
  v15 = [*(a2 + 16) interfaceName];
  if (v15)
  {
    v49 = v9;
    v50 = v6;
    v16 = v15;
    v17 = sub_2741C7E7C();
    v19 = v18;

    v20 = [*(a2 + 16) userSettings];
    if (v20)
    {
      v21 = v20;

      sub_2740CCBEC(v21, v17, v19, v12, v14, v70);
      v22 = v76;
      if (v76)
      {
        v23 = v75;
        v53 = v73;
        v54 = v74;
        v51 = v71;
        v52 = v72;
        v24 = v70[0];

LABEL_18:
        v9 = v49;
        v6 = v50;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v28 = [*(a2 + 16) IPv4Addresses];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2741C7FEC();
    }

    else
    {
      v30 = 0;
    }

    v31 = [*(a2 + 16) IPv4SubnetMasks];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2741C7FEC();
    }

    else
    {
      v33 = 0;
    }

    v34 = [*(a2 + 16) IPv4RouterAddress];
    if (v34)
    {
      v35 = v34;
      v36 = sub_2741C7E7C();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v56[0] = 0;
    *&v57 = v30;
    *(&v57 + 1) = v33;
    *&v58 = v36;
    *(&v58 + 1) = v38;
    v59 = 0u;
    v60 = 0u;
    v61 = v17;
    v62 = v19;
    v63[0] = 0;
    *&v64 = v30;
    *(&v64 + 1) = v33;
    *&v65 = v36;
    *(&v65 + 1) = v38;
    v66 = 0u;
    v67 = 0u;
    v68 = v17;
    v69 = v19;
    sub_2740B2AC0(v56, &v55);
    sub_2740B2B1C(v63);
    v23 = v61;
    v22 = v62;
    v53 = v59;
    v54 = v60;
    v51 = v57;
    v52 = v58;
    v24 = v56[0];
    goto LABEL_18;
  }

  sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
  v25 = [*(a2 + 16) IPv4Addresses];
  if (v25)
  {
    v26 = v25;
    v27 = sub_2741C7FEC();
  }

  else
  {
    v27 = 0;
  }

  v39 = [*(a2 + 16) IPv4SubnetMasks];
  if (v39)
  {
    v40 = v39;
    v41 = sub_2741C7FEC();
  }

  else
  {
    v41 = 0;
  }

  v42 = [*(a2 + 16) IPv4RouterAddress];
  if (v42)
  {
    v43 = v42;
    v44 = sub_2741C7E7C();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v63[0] = 0;
  *&v64 = v27;
  *(&v64 + 1) = v41;
  *&v65 = v44;
  *(&v65 + 1) = v46;
  v66 = 0u;
  v67 = 0u;
  v68 = 0x6E776F6E6B6E75;
  v69 = 0xE700000000000000;
  v70[0] = 0;
  *&v71 = v27;
  *(&v71 + 1) = v41;
  *&v72 = v44;
  *(&v72 + 1) = v46;
  v73 = 0u;
  v74 = 0u;
  v75 = 0x6E776F6E6B6E75;
  v76 = 0xE700000000000000;
  sub_2740B2AC0(v63, v56);
  sub_2740B2B1C(v70);
  v23 = v68;
  v22 = v69;
  v53 = v66;
  v54 = v67;
  v51 = v64;
  v52 = v65;
  v24 = v63[0];
LABEL_27:
  (*(v9 + 8))(v11, v6);
  *a5 = v24;
  v47 = v52;
  *(a5 + 8) = v51;
  *(a5 + 24) = v47;
  result = v54;
  *(a5 + 40) = v53;
  *(a5 + 56) = result;
  *(a5 + 72) = v23;
  *(a5 + 80) = v22;
  return result;
}

uint64_t sub_27410F5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(a4 + 32))(a3, a4);
  v14 = v13;
  v15 = [*(a2 + 16) interfaceName];
  if (!v15)
  {
    v33 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v27 = [*(a2 + 16) DNSServerAddresses];
    if (v27)
    {
      v28 = v27;
      v22 = sub_2741C7FEC();

      v26 = 0;
      v23 = 0;
      v24 = 0;
      v19 = 0xE700000000000000;
LABEL_10:
      v25 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v26 = 0;
    v23 = 0;
    v24 = 0;
    v19 = 0xE700000000000000;
LABEL_13:
    v22 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v16 = v15;
  v17 = sub_2741C7E7C();
  v19 = v18;

  v20 = [*(a2 + 16) userSettings];
  v33 = v17;
  if (!v20)
  {

    goto LABEL_8;
  }

  v21 = v20;

  sub_2740CDB4C(v21, v17, v19, v12, v14, &v34);
  v22 = v35;
  if (!v35)
  {
LABEL_8:
    v29 = [*(a2 + 16) DNSServerAddresses];
    if (v29)
    {
      v30 = v29;
      v22 = sub_2741C7FEC();

      v26 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_10;
    }

    v26 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_13;
  }

  v32 = v40;
  v33 = v39;
  v23 = v37;
  v24 = v38;
  v25 = v36;
  v41 = v34;

  v26 = v41;
  v19 = v32;
LABEL_14:
  result = (*(v9 + 8))(v11, a3);
  *a5 = v26;
  *(a5 + 8) = v22;
  *(a5 + 16) = v25;
  *(a5 + 24) = v23;
  *(a5 + 32) = v24;
  *(a5 + 40) = v33;
  *(a5 + 48) = v19;
  return result;
}

uint64_t sub_27410F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v9 = v33;
  v10 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v11 = *(a4 + 32);
  v12 = v11(a3, a4);
  v14 = v13;
  v15 = [*(a2 + 16) interfaceName];
  if (!v15)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v26 = 0x6E776F6E6B6E75;
    v27 = 0xE700000000000000;
LABEL_8:
    v25 = sub_274113B80(v26, v27);
    goto LABEL_9;
  }

  v16 = v15;
  v31 = sub_2741C7E7C();
  v18 = v17;

  v19 = [*(a2 + 16) userSettings];
  if (!v19)
  {

    v21 = v10;
    v23 = v31;
    goto LABEL_7;
  }

  v20 = v19;
  sub_2741C856C();

  v30 = v14;
  v21 = v10;
  v22 = v11(v9, v10);
  MEMORY[0x2743E5FB0](v22);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v23 = v31;
  v24 = sub_274113658(v20, v31, v18, v12, v30);
  if (!v24)
  {
LABEL_7:
    sub_2741C856C();

    v28 = v11(v9, v21);
    MEMORY[0x2743E5FB0](v28);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v26 = v23;
    v27 = v18;
    goto LABEL_8;
  }

  v25 = v24;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v25;
}

unint64_t sub_27410FC08()
{
  result = qword_280939BC0;
  if (!qword_280939BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BC0);
  }

  return result;
}

unint64_t sub_27410FC70()
{
  result = qword_280939BF0;
  if (!qword_280939BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939BF0);
  }

  return result;
}

uint64_t sub_27410FCC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_27410FDCC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_2741C878C();

  return [v2 convertWiFiErrorCodeToWiFiEAPErrorCode_];
}

uint64_t sub_27410FE34(uint64_t a1, unsigned int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939BF8, &qword_2741D1B88);
  v2 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C00, &qword_2741D1B90);
  v3 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0x6D616E7265737520, 0xEB00000000203A65);

  v4 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0x726F777373617020, 0xEB00000000203A64);

  sub_2741C856C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C08, &qword_2741D1B98);
  v5 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v5);

  MEMORY[0x2743E5FB0](0xD000000000000013, 0x80000002741DC200);

  MEMORY[0x2743E5FB0](62, 0xE100000000000000);
  return 60;
}

BOOL sub_274110040()
{
  sub_2740A609C(v0, &v8);
  v1 = v8;
  v2 = v9;
  v3 = v10;
  sub_2741C856C();

  v4 = sub_27410FE34(v1, v2 | (v3 << 8));
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB460(0xD000000000000029, 0x80000002741DC220);

  if (v1)
  {

    v5 = 0;
  }

  else
  {
    v5 = v2 != 2 || v3 != 2;
  }

  sub_2741110E8(&v11);
  return v5;
}

uint64_t sub_274110160()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 48);
  if (v4 > 6)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[5];
    if (*(v0 + 48) <= 9u)
    {
      if (v4 == 7)
      {
        sub_2741C856C();
        MEMORY[0x2743E5FB0](10256610, 0xA300000000000000);
        MEMORY[0x2743E5FB0](v2, v1);
        MEMORY[0x2743E5FB0](0x1000000000000020, 0x80000002741DC5E0);
        MEMORY[0x2743E5FB0](v3, v10);
        MEMORY[0x2743E5FB0](0x746F6E202C9D80E2, 0xAC0000009C80E220);
        MEMORY[0x2743E5FB0](v9, v11);
        MEMORY[0x2743E5FB0](10322146, 0xA300000000000000);
        v12 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v4 != 8)
        {
          sub_2741C856C();

          MEMORY[0x2743E5FB0](v2, v1);
          MEMORY[0x2743E5FB0](0x1000000000000020, 0x80000002741DC580);
          v13 = [objc_opt_self() mainBundle];
          goto LABEL_24;
        }

        sub_2741C856C();

        MEMORY[0x2743E5FB0](v2, v1);
        MEMORY[0x2743E5FB0](0x80E26957209D80E2, 0xAB00000000694691);
        v12 = [objc_opt_self() mainBundle];
      }

      goto LABEL_23;
    }

    if (v4 - 10 >= 2)
    {
      v15 = [objc_opt_self() mainBundle];
      v18 = sub_2741C676C();

      return v18;
    }

    goto LABEL_14;
  }

  if (*(v0 + 48) <= 2u)
  {
    if (!*(v0 + 48) || v4 != 1)
    {
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v2, v1);
      MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
      v12 = [objc_opt_self() mainBundle];
LABEL_23:
      v13 = v12;
      goto LABEL_24;
    }

LABEL_14:
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v2, v1);
    MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
    v13 = [objc_opt_self() mainBundle];
LABEL_24:
    v16 = sub_2741C676C();

    return v16;
  }

  if (*(v0 + 48) > 4u)
  {
    v14 = [objc_opt_self() mainBundle];
    v17 = sub_2741C676C();

    return v17;
  }

  if (v4 != 3)
  {
    sub_2741C856C();

    MEMORY[0x2743E5FB0](v2, v1);
    MEMORY[0x2743E5FB0](10322146, 0xA300000000000000);
    v12 = [objc_opt_self() mainBundle];
    goto LABEL_23;
  }

  v5 = v0[1];
  v6 = v0[2];
  v7 = *v0;

  return sub_27410D598(v5, v6, v7);
}

uint64_t sub_2741109F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0;
  switch(*(v0 + 48))
  {
    case 1:
    case 4:
      return v3;
    case 2:
    case 7:
    case 8:
    case 9:
    case 0xC:
      v8 = [objc_opt_self() mainBundle];
      v3 = sub_2741C676C();

      return v3;
    case 3:
      v4 = *v0;
      if (v4 <= 3)
      {
        if (v4 == 2)
        {
          if (qword_280937968 != -1)
          {
            swift_once();
          }

          v5 = &qword_280946A18;
        }

        else
        {
          if (v4 != 3)
          {
LABEL_31:
            if (qword_2809379A8 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A98;
            goto LABEL_34;
          }

          if (qword_280937978 != -1)
          {
            swift_once();
          }

          v5 = &qword_280946A38;
        }
      }

      else
      {
        switch(v4)
        {
          case 4u:
            if (qword_280937980 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A48;
            break;
          case 5u:
            if (qword_280937988 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A58;
            break;
          case 6u:
            if (qword_280937998 != -1)
            {
              swift_once();
            }

            v5 = &qword_280946A78;
            break;
          default:
            goto LABEL_31;
        }
      }

LABEL_34:
      v3 = *v5;

      return v3;
    case 5:
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](0x1000000000000015, 0x80000002741DC4A0);
      v7 = [objc_opt_self() mainBundle];
      goto LABEL_14;
    case 6:
      sub_2741C856C();
      MEMORY[0x2743E5FB0](0x1000000000000017, 0x80000002741DC430);
      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](0x100000000000002BLL, 0x80000002741DC450);
      v6 = [objc_opt_self() mainBundle];
      goto LABEL_13;
    case 0xA:
    case 0xB:
      return 0;
    default:
      sub_2741C856C();

      MEMORY[0x2743E5FB0](v1, v2);
      MEMORY[0x2743E5FB0](11763938, 0xA300000000000000);
      v6 = [objc_opt_self() mainBundle];
LABEL_13:
      v7 = v6;
LABEL_14:
      v3 = sub_2741C676C();

      return v3;
  }
}

uint64_t sub_2741110E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937FB8, &unk_2741D0410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_274111150(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_11;
  }

  v2 = sub_2741251AC(0xD000000000000019, 0x80000002741DC250);
  if (v3 & 1) != 0 && (sub_27409D308(*(a1 + 56) + 32 * v2, v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939C10, &qword_2741D1BA0), (swift_dynamicCast()))
  {
    v4 = v15;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if (!*(a1 + 16))
    {
LABEL_11:

      return v4;
    }
  }

  v5 = sub_2741251AC(0xD000000000000012, 0x80000002741DC270);
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_27409D308(*(a1 + 56) + 32 * v5, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v9 = v15;
    strcpy(v16, "UserName");
    BYTE1(v16[2]) = 0;
    HIWORD(v16[2]) = 0;
    v16[3] = -402653184;
    MEMORY[0x28223BE20](v7, v8);
    v14 = v16;
    v10 = sub_27410FCC4(sub_2741113A8, v13, v15);
    strcpy(v16, "UserPassword");
    BYTE1(v16[3]) = 0;
    HIWORD(v16[3]) = -5120;
    MEMORY[0x28223BE20](v10, v11);
    v14 = v16;
    sub_27410FCC4(sub_274111730, v13, v9);
  }

  return v4;
}

uint64_t sub_2741113C4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC() & 1;
  }
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit0aB16AssociationErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 0xB)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_274111454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 49))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_27411149C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2741114F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_15WiFiSettingsKit11Credentials_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274111540(uint64_t *a1, unsigned int a2)
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

uint64_t sub_27411159C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_274111620(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t sub_27411167C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2741116E0(uint64_t a1)
{
  result = sub_2740F21F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274111708(uint64_t a1)
{
  result = sub_2740F2380();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27411174C()
{
  type metadata accessor for CurrentUser();
  result = swift_initStaticObject();
  qword_280939C18 = result;
  return result;
}

uint64_t static CurrentUser.shared.getter()
{
  type metadata accessor for CurrentUser();

  return swift_initStaticObject();
}

BOOL sub_2741117CC()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [v0 ubiquityIdentityToken];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_2741119B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 120);
  v6[0] = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = v3;
  return v4(v6, a2);
}

uint64_t sub_274111A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 144);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v9[0] = *a1;
  v6 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = v6;
  v7 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v7;
  v14 = v4;
  v15 = v5;
  return v3(v9, a2);
}

uint64_t sub_274111AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 168);
  v6[0] = *a1;
  v4 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v4;
  return v3(v6, a2);
}

uint64_t sub_274111B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a3 + 192);
  v8[0] = *a1;
  v6 = *(a1 + 24);
  v9 = *(a1 + 8);
  v10 = v6;
  v11 = v3;
  v12 = v4;
  return v5(v8, a2);
}

uint64_t sub_274111BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a3 + 216);
  v7[0] = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = v3;
  v5 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v5;
  v13 = *(a1 + 80);
  return v4(v7, a2);
}

uint64_t sub_274111C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27409D648;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_274111D88()
{
  result = qword_280939C20;
  if (!qword_280939C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C20);
  }

  return result;
}

uint64_t sub_274111E54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_27409D308(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_27409D2F8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_27409D2F8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_27409D2F8(v31, v32);
    result = sub_2741C84EC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_27409D2F8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_27411211C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_2740BA2B0(*(a1 + 48) + 40 * v13, v35);
    v14 = (*(a1 + 56) + 16 * v13);
    v15 = v14[1];
    v37 = *v14;
    v38 = v15;
    v23 = v35[0];
    v25 = v35[1];
    v27 = v36;
    *&v34[0] = v37;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    v30 = v23;
    v31 = v25;
    v32 = v27;
    sub_27409D2F8(&v29, v33);
    v24 = v30;
    v26 = v31;
    v28 = v32;
    sub_27409D2F8(v33, v34);
    result = sub_2741C84EC();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v26;
    *(v11 + 32) = v28;
    result = sub_27409D2F8(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2741123D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B10, &unk_2741D20A0);
    v2 = sub_2741C867C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_27409D2F8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_27409D2F8(v29, v30);
    result = sub_2741C84EC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_27409D2F8(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_274112688()
{
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v2 = sub_2741C682C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938518, &unk_2741D2090);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v45 - v9;
  v11 = sub_2741C689C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0xD000000000000045;
  v1[3] = 0x80000002741DC760;
  (*(v12 + 56))(v10, 1, 1, v11);
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_2741C688C();
  v16 = v45[1];
  v17 = sub_2741C68AC();
  if (v16)
  {
    (*(v12 + 8))(v15, v11);

    v19 = v1;
LABEL_3:
    type metadata accessor for EnterpriseNetworkArchiveFetcher();
    swift_deallocPartialClassInstance();
    return v19;
  }

  v20 = v17;
  v21 = v18;
  (*(v12 + 8))(v15, v11);
  v1[4] = v20;
  v1[5] = v21;
  v22 = objc_opt_self();
  v23 = v1[4];
  v24 = v1[5];
  sub_274112DBC(v23, v24);
  v25 = sub_2741C68CC();
  sub_274112D68(v23, v24);
  v48 = 0;
  v26 = [v22 propertyListWithData:v25 options:0 format:0 error:&v48];

  v19 = v1;
  if (!v26)
  {
    v30 = v48;
    sub_2741C681C();

    swift_willThrow();

    sub_274112D68(v1[4], v1[5]);
    goto LABEL_3;
  }

  v27 = v48;
  sub_2741C83DC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if (swift_dynamicCast())
  {
    v28 = v46;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_2741C856C();

    v48 = 0xD000000000000017;
    v49 = 0x80000002741DC830;
    v29 = sub_2741C7D7C();
    MEMORY[0x2743E5FB0](v29);

    sub_2740CB460(v48, v49);
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_2741C856C();

    v48 = 0xD000000000000027;
    v49 = 0x80000002741DC7B0;
    v31 = v1[4];
    v32 = v1[5];
    sub_274112DBC(v31, v32);
    v33 = sub_2741C68BC();
    MEMORY[0x2743E5FB0](v33);

    sub_274112D68(v31, v32);
    sub_2740CB218(v48, v49, 0x292874696E69, 0xE600000000000000);

    v28 = sub_274177B3C(MEMORY[0x277D84F90]);
  }

  v1[6] = v28;
  sub_274111E54(v34);

  v35 = objc_allocWithZone(MEMORY[0x277D02B58]);
  v36 = sub_2741C7D4C();

  v37 = [v35 initWithScanRecord:v36 includeProperties:0];

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_2741C856C();

  v48 = 0xD000000000000026;
  v49 = 0x80000002741DC7E0;
  v38 = [v37 description];
  v39 = sub_2741C7E7C();
  v41 = v40;

  MEMORY[0x2743E5FB0](v39, v41);

  sub_2740CB460(v48, v49);

  v42 = v37;
  sub_27409D85C(v42, &v48);
  sub_2740ACAC8(&v48, (v1 + 7));
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_2741C856C();

  v46 = 0xD000000000000018;
  v47 = 0x80000002741DC810;
  v43 = sub_27409DCD8();
  MEMORY[0x2743E5FB0](v43);

  sub_2740CB460(v46, v47);

  sub_2740ACB2C(&v48);
  return v19;
}

uint64_t sub_274112CF4()
{

  sub_274112D68(*(v0 + 32), *(v0 + 40));

  sub_2740ACB2C(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_274112D68(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_274112DBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_274112E24()
{
  result = qword_280939C28;
  if (!qword_280939C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C28);
  }

  return result;
}

unint64_t sub_274112E7C()
{
  result = qword_280939C30;
  if (!qword_280939C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C30);
  }

  return result;
}

unint64_t sub_274112ED4()
{
  result = qword_280939C38;
  if (!qword_280939C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C38);
  }

  return result;
}

unint64_t sub_274112F2C()
{
  result = qword_280939C40;
  if (!qword_280939C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280939C40);
  }

  return result;
}

id WiFiKeys.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WiFiKeys.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiKeys();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WiFiKeys.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WiFiKeys();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2741132F8(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*v3 *a3];
  if (result)
  {
    v5 = result;
    v6 = sub_2741C7E7C();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_274113354()
{
  result = [*v0 channel];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2741133E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27409D648;

  return v9(a1, a2, a3);
}

uint64_t WiFiStateProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_274113658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 80) = 1;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = a2;
  *(v5 + 136) = a3;

  v12 = [a1 OSSpecificAttributes];
  if (!v12)
  {

    v30 = 0u;
    v31 = 0u;
    goto LABEL_15;
  }

  v13 = v12;
  v14 = sub_2741C7D6C();

  sub_2741C850C();
  if (!*(v14 + 16) || (v15 = sub_274125164(&v28), (v16 & 1) == 0))
  {

    sub_27409D2A4(&v28);
    v30 = 0u;
    v31 = 0u;
    goto LABEL_13;
  }

  sub_27409D308(*(v14 + 56) + 32 * v15, &v30);
  sub_27409D2A4(&v28);

  if (!*(&v31 + 1))
  {
LABEL_13:

LABEL_15:
    sub_2740B29E8(&v30);
LABEL_16:
    sub_2740CB218(0xD000000000000023, 0x80000002741DA520, 0xD000000000000029, 0x80000002741DA550);
LABEL_17:

    type metadata accessor for ProxySettings();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385B8, &qword_2741CD5E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v17 = v28;
  if (!*(v28 + 16) || (v18 = sub_2741251AC(a4, a5), (v19 & 1) == 0))
  {

LABEL_21:

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_2741C856C();

    v28 = 0xD000000000000017;
    v29 = 0x80000002741DA580;
    MEMORY[0x2743E5FB0](a4, a5);

    sub_2740CB218(v28, v29, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  sub_27409D308(*(v17 + 56) + 32 * v18, &v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = v30;
  type metadata accessor for SystemIPConfiguration();
  swift_allocObject();

  if (!sub_2740ADCF8(v20, *(&v20 + 1), a2, a3))
  {
    goto LABEL_21;
  }

  *(v6 + 112) = v20;

  v21 = sub_2740AE850();
  if (!v21)
  {
    sub_2740CB218(0xD000000000000030, 0x80000002741DCA20, 0xD000000000000029, 0x80000002741DA550);

    goto LABEL_17;
  }

  *(v6 + 16) = *(v21 + 16);
  v22 = *(v21 + 32);
  *(v6 + 24) = *(v21 + 24);
  *(v6 + 32) = v22;
  v23 = v21;

  v24 = *(v23 + 48);
  *(v6 + 40) = *(v23 + 40);
  *(v6 + 48) = v24;

  v25 = *(v23 + 80);
  *(v6 + 72) = *(v23 + 72);
  *(v6 + 80) = v25;
  v26 = *(v23 + 96);
  *(v6 + 88) = *(v23 + 88);
  *(v6 + 96) = v26;

  *(v6 + 81) = *(v23 + 81);
  *(v6 + 104) = *(v23 + 104);
  *(v6 + 105) = *(v23 + 105);
  *(v6 + 17) = 1;
  sub_274113D14();
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741DCA60);
  *&v30 = v23;
  type metadata accessor for ProxySettings();
  sub_2741C862C();
  sub_2740CB460(v28, v29);

  return v6;
}