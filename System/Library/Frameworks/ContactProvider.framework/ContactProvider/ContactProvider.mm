id ContactProviderExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_2370CDB10(v4, a1, a2, a4);
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of ContactProviderExtension.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370CD798;

  return v7(a1, a2);
}

uint64_t sub_2370CD798()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2370CD88C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2370CD8E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2370CD904(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2370CD94C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2370CD96C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_2370CD9A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2370CD9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2370CDA54(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_2370CDB74(uint64_t a1)
{
  *(v2 + 344) = v1;
  v4 = sub_2370F4758();
  *(v2 + 352) = v4;
  *(v2 + 360) = *(v4 - 8);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v5 = sub_2370F4778();
  *(v2 + 384) = v5;
  *(v2 + 392) = *(v5 - 8);
  *(v2 + 400) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92760, &unk_2370F5480);
  *(v2 + 408) = v6;
  *(v2 + 416) = *(v6 - 8);
  *(v2 + 424) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  *(v2 + 432) = v7;
  *(v2 + 440) = *(v7 - 8);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = *a1;
  *(v2 + 472) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_2370CDD84, 0, 0);
}

uint64_t sub_2370CDD84()
{
  v1 = *(v0 + 344);
  v2 = v1;
  if (v1[18])
  {

    sub_2370F4398();

    v2 = *(v0 + 344);
  }

  v27 = *(v0 + 464);
  v28 = *(v0 + 472);
  v3 = *(v0 + 448);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 416);
  v7 = *(v0 + 424);
  v25 = *(v0 + 408);
  v26 = *(v0 + 456);
  sub_2370CFF28((v2 + 7), v0 + 16);
  type metadata accessor for ItemChangeObserverImpl(0);
  v8 = swift_allocObject();
  *(v0 + 480) = v8;
  v9 = OBJC_IVAR____TtC15ContactProvider22ItemChangeObserverImpl__state;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 120) = 0x80;
  sub_2370F43A8();
  (*(v4 + 32))(v8 + v9, v3, v5);
  *(v8 + 16) = 5;
  sub_2370CFE24((v0 + 16), v8 + 24);
  swift_beginAccess();
  sub_2370F43B8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_2370CFE7C();
  v10 = sub_2370F4408();

  (*(v6 + 8))(v7, v25);
  v1[18] = v10;

  v11 = v2[20];
  v12 = v2[21];
  v2[20] = v26;
  v2[21] = v27;
  v2[22] = v28;
  sub_2370CFCFC(v26, v27);
  sub_2370CF944(v11, v12);
  v13 = v2[21];
  if (v13 >> 60 == 15)
  {
    v14 = *(*(v0 + 344) + 152);
    if (v14 && (sub_2370CFD88(), v15 = swift_allocError(), *v16 = 7, v17 = v14, v18 = == infix(_:_:)(v14, v15), v15, v14, (v18 & 1) != 0))
    {
      sub_2370CFF28(*(v0 + 344) + 104, v0 + 56);
      v19 = swift_task_alloc();
      *(v0 + 568) = v19;
      *v19 = v0;
      v19[1] = sub_2370CF1D8;

      return sub_2370E2410(v0 + 56);
    }

    else
    {

      v24 = *(v0 + 8);

      return v24();
    }
  }

  else
  {
    *(v0 + 488) = v13;
    v21 = *(v0 + 344);
    v22 = v21[20];
    *(v0 + 496) = v22;
    *(v0 + 504) = v21[22];
    v23 = v21[23];
    *(v0 + 512) = v23;
    sub_2370CFCFC(v22, v13);

    return MEMORY[0x2822009F8](sub_2370CE158, v23, 0);
  }
}

uint64_t sub_2370CE180()
{
  if (*(v0 + 121))
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v1 = sub_2370F4388();
    __swift_project_value_buffer(v1, qword_27DE93E70);
    v2 = sub_2370F4368();
    v3 = sub_2370F4608();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2370CC000, v2, v3, "ItemChangeSession.sync() stopping, extension was invalidated", v4, 2u);
      MEMORY[0x2383C5B60](v4, -1, -1);
    }

    sub_2370CFD88();
    v5 = swift_allocError();
    *v6 = 8;
    v7 = sub_2370DA9D0();
    v8 = *(v0 + 496);
    v9 = *(v0 + 488);
    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 264) = 0;
      *(v0 + 272) = 0;
      *(v0 + 256) = v5;
      *(v0 + 280) = 64;
      v10 = v5;
      sub_2370F43E8();
    }

    else
    {
    }

    sub_2370CF944(v8, v9);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v12 = *(v0 + 496);
    v11 = *(v0 + 504);
    v14 = *(v0 + 480);
    v13 = *(v0 + 488);
    v15 = *(v0 + 400);
    v16 = *(v0 + 368);
    v28 = *(v0 + 376);
    v17 = *(v0 + 360);
    v30 = *(v0 + 352);
    v18 = *(v0 + 344);
    swift_beginAccess();
    v19 = swift_allocObject();
    *(v0 + 520) = v19;
    v19[2] = v18;
    v19[3] = v12;
    v19[4] = v13;
    v19[5] = v11;
    v19[6] = v14;
    sub_2370D009C(v12, v13);

    sub_2370F4768();
    sub_2370F4738();
    sub_2370F4748();
    v20 = *(v17 + 8);
    *(v0 + 528) = v20;
    *(v0 + 536) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v30);
    v21 = swift_task_alloc();
    *(v0 + 544) = v21;
    v21[2] = &unk_2370F5498;
    v21[3] = v19;
    v21[4] = v28;
    v21[5] = v15;
    v22 = swift_task_alloc();
    *(v0 + 552) = v22;
    *v22 = v0;
    v22[1] = sub_2370CE578;
    v23 = MEMORY[0x277D84F78] + 8;
    v24 = MEMORY[0x277D84F78] + 8;
    v25 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v22, v23, v24, 0, 0, &unk_2370F54A0, v21, v25);
  }
}

uint64_t sub_2370CE578()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_2370CE91C;
  }

  else
  {

    v2 = sub_2370CE694;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370CE694()
{
  v1 = v0[66];
  v2 = v0[62];
  v3 = v0[61];
  v4 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v8 = v0[44];

  v1(v7, v8);
  (*(v4 + 8))(v5, v6);
  sub_2370CF944(v2, v3);
  v9 = v0[43];
  v10 = v9[21];
  if (v10 >> 60 == 15)
  {
    v11 = v9[19];
    if (v11 && (sub_2370CFD88(), v12 = swift_allocError(), *v13 = 7, v14 = v11, v15 = == infix(_:_:)(v11, v12), v12, v11, (v15 & 1) != 0))
    {
      sub_2370CFF28(v0[43] + 104, (v0 + 7));
      v16 = swift_task_alloc();
      v0[71] = v16;
      *v16 = v0;
      v16[1] = sub_2370CF1D8;

      return sub_2370E2410((v0 + 7));
    }

    else
    {

      v20 = v0[1];

      return v20();
    }
  }

  else
  {
    v0[61] = v10;
    v18 = v9[20];
    v0[62] = v18;
    v0[63] = v9[22];
    v19 = v9[23];
    v0[64] = v19;
    sub_2370CFCFC(v18, v10);

    return MEMORY[0x2822009F8](sub_2370CE158, v19, 0);
  }
}

uint64_t sub_2370CE91C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 528);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 352);

  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  *(v0 + 336) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  if (swift_dynamicCast())
  {

    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v9 = sub_2370F4388();
    __swift_project_value_buffer(v9, qword_27DE93E70);
    v10 = sub_2370F4368();
    v11 = sub_2370F4608();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2370CC000, v10, v11, "ItemChangeSession.sync() did timeout", v12, 2u);
      MEMORY[0x2383C5B60](v12, -1, -1);
    }

    sub_2370CFD88();
    v13 = swift_allocError();
    *v14 = 7;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370F43D8();

    v15 = *(v0 + 192);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = swift_allocError();
    *v20 = 7;
    if (v18 >> 6 == 1)
    {
      sub_2370D0180(v15, v16, v17, v18);
      v21 = v19;
      v22 = == infix(_:_:)(v15, v19);
      sub_2370D019C(v15, v16, v17, v18);
      sub_2370D019C(v19, 0, 0, 0x40u);

      sub_2370D019C(v15, v16, v17, v18);
      if (v22)
      {
        v23 = *(v0 + 496);
        v24 = *(v0 + 488);
LABEL_18:
        sub_2370CF944(v23, v24);

        v49 = *(v0 + 344);
        v50 = v49[20];
        v51 = v49[21];
        *(v49 + 10) = xmmword_2370F53E0;
        v49[22] = 0;
        sub_2370CF944(v50, v51);

        goto LABEL_22;
      }
    }

    else
    {
      sub_2370D0180(v15, v16, v17, v18);
      v45 = v19;
      sub_2370D019C(v15, v16, v17, v18);
      sub_2370D019C(v19, 0, 0, 0x40u);

      sub_2370D019C(v15, v16, v17, v18);
    }

    v46 = *(v0 + 496);
    v47 = *(v0 + 488);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 232) = 0;
    *(v0 + 240) = 0;
    *(v0 + 224) = v13;
    *(v0 + 248) = 64;

    v48 = v13;
    sub_2370F43E8();
    v23 = v46;
    v24 = v47;
    goto LABEL_18;
  }

  if (qword_27DE92480 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 560);
  v26 = sub_2370F4388();
  __swift_project_value_buffer(v26, qword_27DE93E70);
  v27 = v25;
  v28 = sub_2370F4368();
  v29 = sub_2370F4608();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 560);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    v33 = v30;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_2370CC000, v28, v29, "ItemChangeSession.sync() error %{public}@", v31, 0xCu);
    sub_2370D01B8(v32);
    MEMORY[0x2383C5B60](v32, -1, -1);
    MEMORY[0x2383C5B60](v31, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  v36 = *(v0 + 128);
  v35 = *(v0 + 136);
  v37 = *(v0 + 144);
  v38 = *(v0 + 152);
  sub_2370CFD88();
  v39 = swift_allocError();
  *v40 = 7;
  if (v38 >> 6 != 1)
  {
    sub_2370D0180(v36, v35, v37, v38);
    v52 = v39;
    sub_2370D019C(v36, v35, v37, v38);
    sub_2370D019C(v39, 0, 0, 0x40u);

    sub_2370D019C(v36, v35, v37, v38);
    goto LABEL_20;
  }

  sub_2370D0180(v36, v35, v37, v38);
  v41 = v39;
  v42 = == infix(_:_:)(v36, v39);
  sub_2370D019C(v36, v35, v37, v38);
  sub_2370D019C(v39, 0, 0, 0x40u);

  sub_2370D019C(v36, v35, v37, v38);
  if ((v42 & 1) == 0)
  {
LABEL_20:
    v53 = *(v0 + 560);
    v43 = *(v0 + 496);
    v44 = *(v0 + 488);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 160) = v53;
    *(v0 + 184) = 64;

    sub_2370F43E8();
    goto LABEL_21;
  }

  v43 = *(v0 + 496);
  v44 = *(v0 + 488);

LABEL_21:
  sub_2370CF944(v43, v44);
  v54 = *(v0 + 344);
  v55 = v54[20];
  v56 = v54[21];
  *(v54 + 10) = xmmword_2370F53E0;
  v54[22] = 0;
  sub_2370CF944(v55, v56);
LABEL_22:
  v57 = *(v0 + 344);
  v58 = v57[21];
  if (v58 >> 60 == 15)
  {
    v59 = v57[19];
    if (v59 && (sub_2370CFD88(), v60 = swift_allocError(), *v61 = 7, v62 = v59, v63 = == infix(_:_:)(v59, v60), v60, v59, (v63 & 1) != 0))
    {
      sub_2370CFF28(*(v0 + 344) + 104, v0 + 56);
      v64 = swift_task_alloc();
      *(v0 + 568) = v64;
      *v64 = v0;
      v64[1] = sub_2370CF1D8;

      return sub_2370E2410(v0 + 56);
    }

    else
    {

      v68 = *(v0 + 8);

      return v68();
    }
  }

  else
  {
    *(v0 + 488) = v58;
    v66 = v57[20];
    *(v0 + 496) = v66;
    *(v0 + 504) = v57[22];
    v67 = v57[23];
    *(v0 + 512) = v67;
    sub_2370CFCFC(v66, v58);

    return MEMORY[0x2822009F8](sub_2370CE158, v67, 0);
  }
}

uint64_t sub_2370CF1D8()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return MEMORY[0x2822009F8](sub_2370CF2DC, 0, 0);
}

uint64_t sub_2370CF2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370CF378(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = v4;
    v8 = v5;
    sub_2370CF720(v7);
  }

  return result;
}

uint64_t sub_2370CF3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  return MEMORY[0x2822009F8](sub_2370CF424, 0, 0);
}

uint64_t sub_2370CF424()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v9 = *(v0 + 128);
  sub_2370CFF28(*(v0 + 120) + 104, v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 96) = v9;
  *(v0 + 112) = v2;
  *(v0 + 80) = type metadata accessor for ItemChangeObserverImpl(0);
  *(v0 + 88) = &protocol witness table for ItemChangeObserverImpl;
  *(v0 + 56) = v1;
  v5 = *(v4 + 16);

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_2370CF5B8;

  return v8(v0 + 96, v0 + 56, v3, v4);
}

uint64_t sub_2370CF5B8()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return MEMORY[0x2822009F8](sub_2370CF6BC, 0, 0);
}

uint64_t sub_2370CF6BC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370CF720(uint64_t result)
{
  v2 = v1;
  v3 = *result;
  v4 = *(result + 24);
  if (v4 >> 6)
  {
    if (v4 >> 6 != 1)
    {
      return result;
    }

    v5 = v1[19];
    v2[19] = v3;
    v6 = v3;

    sub_2370CFF28((v2 + 7), v16);
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v8 + 128))(v3, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v9 = v2[20];
    v10 = v2[21];
    *(v2 + 10) = xmmword_2370F53E0;
    v2[22] = 0;
  }

  else
  {
    v11 = *(result + 8);
    v12 = *(result + 16);
    sub_2370CFF28((v1 + 7), v16);
    v13 = v17;
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[0] = v3;
    v15[1] = v11;
    v15[2] = v12;
    (*(v14 + 120))(v15, v4 & 1, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v4)
    {
      sub_2370CFCFC(v3, v11);
    }

    else
    {
      v3 = 0;
      v12 = 0;
      v11 = 0xF000000000000000;
    }

    v9 = v1[20];
    v10 = v1[21];
    v1[20] = v3;
    v1[21] = v11;
    v1[22] = v12;
  }

  return sub_2370CF944(v9, v10);
}

uint64_t ItemChangeSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  sub_2370CF944(*(v0 + 160), *(v0 + 168));

  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_2370CF944(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2370CF958(a1, a2);
  }

  return a1;
}

uint64_t sub_2370CF958(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t ItemChangeSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  sub_2370CF944(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2370CFA98(void *a1)
{
  if (a1[24] <= 0)
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v14 = sub_2370F4388();
    __swift_project_value_buffer(v14, qword_27DE93E70);
    v15 = sub_2370F4368();
    v16 = sub_2370F4608();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2370CC000, v15, v16, "ItemChangeSession.sync() will retry enumerating the sync anchor", v17, 2u);
      MEMORY[0x2383C5B60](v17, -1, -1);
    }

    v18 = a1[24];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      a1[24] = v20;
    }
  }

  else
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v2 = sub_2370F4388();
    __swift_project_value_buffer(v2, qword_27DE93E70);
    v3 = sub_2370F4368();
    v4 = sub_2370F4608();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2370CC000, v3, v4, "ItemChangeSession.sync() did fail to save", v5, 2u);
      MEMORY[0x2383C5B60](v5, -1, -1);
    }

    sub_2370CFD88();
    v6 = swift_allocError();
    *v7 = 2;
    v8 = a1[19];
    a1[19] = v6;
    v9 = v6;

    sub_2370CFF28((a1 + 7), v21);
    v10 = v22;
    v11 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v11 + 112))(v6, v10, v11);

    __swift_destroy_boxed_opaque_existential_1(v21);
    v12 = a1[20];
    v13 = a1[21];
    *(a1 + 10) = xmmword_2370F53E0;
    a1[22] = 0;
    sub_2370CF944(v12, v13);
  }
}

uint64_t sub_2370CFCFC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2370CFD88()
{
  result = qword_27DE92BA0;
  if (!qword_27DE92BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92BA0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2370CFE24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2370CFE3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2370CFE7C()
{
  result = qword_27DE92770;
  if (!qword_27DE92770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92760, &unk_2370F5480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92770);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2370CFF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2370CFF8C()
{

  sub_2370CF958(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2370CFFD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2370D0220;

  return sub_2370CF3FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2370D009C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2370CFCFC(result, a2);
  }

  return result;
}

uint64_t sub_2370D00B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2370CD798;

  return sub_2370E7154(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2370D0180(uint64_t result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    return result;
  }

  if (!(a4 >> 6))
  {
    return sub_2370CFCFC(result, a2);
  }

  return result;
}

void sub_2370D019C(uint64_t result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
  }

  else if (!(a4 >> 6))
  {
    sub_2370CF958(result, a2);
  }
}

uint64_t sub_2370D01B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92780, &unk_2370F55D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2370D0224(uint64_t a1)
{
  *(v2 + 296) = v1;
  v4 = sub_2370F4758();
  *(v2 + 304) = v4;
  *(v2 + 312) = *(v4 - 8);
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  v5 = sub_2370F4778();
  *(v2 + 336) = v5;
  *(v2 + 344) = *(v5 - 8);
  *(v2 + 352) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92788, &qword_2370F55B0);
  *(v2 + 360) = v6;
  *(v2 + 368) = *(v6 - 8);
  *(v2 + 376) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  *(v2 + 384) = v7;
  *(v2 + 392) = *(v7 - 8);
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = *a1;
  *(v2 + 424) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_2370D0434, 0, 0);
}

uint64_t sub_2370D0434()
{
  v1 = *(v0 + 296);
  v2 = v1;
  if (*(v1 + 144))
  {

    sub_2370F4398();

    v2 = *(v0 + 296);
  }

  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);
  sub_2370CFF28(v2 + 56, v0 + 16);
  v7 = type metadata accessor for ItemContentObserverImpl(0);
  v8 = swift_allocObject();
  *(v0 + 432) = v8;
  v9 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl__state;
  *(v0 + 216) = xmmword_2370F5510;
  *(v0 + 232) = 0;
  sub_2370F43A8();
  (*(v4 + 32))(v8 + v9, v3, v6);
  *(v8 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize) = 20;
  sub_2370CFE24((v0 + 16), v8 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store);
  swift_beginAccess();
  sub_2370F43B8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_2370D201C();
  v10 = sub_2370F4408();

  (*(v30 + 8))(v5, v29);
  *(v1 + 144) = v10;

  v11 = &protocol witness table for ItemContentObserverImpl;
  if (*(v2 + 96) == 1)
  {
    *(v0 + 200) = v7;
    *(v0 + 208) = &protocol witness table for ItemContentObserverImpl;
    *(v0 + 176) = v8;
    v7 = type metadata accessor for ItemContentObserverActivityLoggingDecorator();
    v12 = swift_allocObject();
    sub_2370CFE24((v0 + 176), v12 + 16);
    v11 = &protocol witness table for ItemContentObserverActivityLoggingDecorator;
  }

  else
  {
    v12 = v8;
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 296);
  *(v0 + 80) = v7;
  *(v0 + 88) = v11;
  *(v0 + 56) = v12;
  v15 = *(v14 + 160);
  v16 = *(v14 + 168);
  v31 = *(v0 + 416);
  *(v14 + 160) = v13;
  *(v14 + 168) = v31;

  sub_2370CFCFC(v13, v31);
  sub_2370CF944(v15, v16);
  v17 = *(v14 + 168);
  if (v17 >> 60 == 15)
  {
    v18 = *(*(v0 + 296) + 152);
    if (v18 && (sub_2370CFD88(), v19 = swift_allocError(), *v20 = 7, v21 = v18, v22 = == infix(_:_:)(v18, v19), v19, v18, (v22 & 1) != 0))
    {
      sub_2370CFF28(*(v0 + 296) + 104, v0 + 96);
      v23 = swift_task_alloc();
      *(v0 + 520) = v23;
      *v23 = v0;
      v23[1] = sub_2370D15F0;

      return sub_2370E2410(v0 + 96);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));

      v28 = *(v0 + 8);

      return v28();
    }
  }

  else
  {
    *(v0 + 440) = v17;
    v25 = *(v0 + 296);
    v26 = v25[20];
    *(v0 + 448) = v26;
    *(v0 + 456) = v25[22];
    v27 = v25[23];
    *(v0 + 464) = v27;
    sub_2370CFCFC(v26, v17);

    return MEMORY[0x2822009F8](sub_2370D089C, v27, 0);
  }
}

uint64_t sub_2370D08C4()
{
  if (*(v0 + 528))
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v1 = sub_2370F4388();
    __swift_project_value_buffer(v1, qword_27DE93E70);
    v2 = sub_2370F4368();
    v3 = sub_2370F4608();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2370CC000, v2, v3, "ItemContentSession.enumerate() stopping, extension was invalidated", v4, 2u);
      MEMORY[0x2383C5B60](v4, -1, -1);
    }

    v5 = *(v0 + 448);
    v6 = *(v0 + 440);

    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v7);
    sub_2370CFD88();
    v9 = swift_allocError();
    *v10 = 8;
    (*(v8 + 32))(v9, v7, v8);
    sub_2370CF944(v5, v6);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v15 = *(v0 + 440);
    v16 = *(v0 + 352);
    v17 = *(v0 + 320);
    v27 = *(v0 + 328);
    v18 = *(v0 + 312);
    v29 = *(v0 + 304);
    v19 = *(v0 + 296);
    swift_beginAccess();
    sub_2370CFF28(v0 + 56, v0 + 136);
    v20 = swift_allocObject();
    *(v0 + 472) = v20;
    v20[2] = v19;
    v20[3] = v14;
    v20[4] = v15;
    v20[5] = v13;
    sub_2370CFE24((v0 + 136), (v20 + 6));
    sub_2370D009C(v14, v15);

    sub_2370F4768();
    sub_2370F4738();
    sub_2370F4748();
    v21 = *(v18 + 8);
    *(v0 + 480) = v21;
    *(v0 + 488) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v17, v29);
    v22 = swift_task_alloc();
    *(v0 + 496) = v22;
    v22[2] = &unk_2370F55C8;
    v22[3] = v20;
    v22[4] = v27;
    v22[5] = v16;
    v23 = swift_task_alloc();
    *(v0 + 504) = v23;
    *v23 = v0;
    v23[1] = sub_2370D0C9C;
    v24 = MEMORY[0x277D84F78] + 8;
    v25 = MEMORY[0x277D84F78] + 8;
    v26 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v23, v24, v25, 0, 0, &unk_2370F54A0, v22, v26);
  }
}

uint64_t sub_2370D0C9C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_2370D1044;
  }

  else
  {

    v2 = sub_2370D0DB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370D0DB8()
{
  v1 = v0[60];
  v2 = v0[56];
  v3 = v0[55];
  v4 = v0[43];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[38];

  v1(v7, v8);
  (*(v4 + 8))(v5, v6);
  sub_2370CF944(v2, v3);
  v9 = v0[37];
  v10 = v9[21];
  if (v10 >> 60 == 15)
  {
    v11 = v9[19];
    if (v11 && (sub_2370CFD88(), v12 = swift_allocError(), *v13 = 7, v14 = v11, v15 = == infix(_:_:)(v11, v12), v12, v11, (v15 & 1) != 0))
    {
      sub_2370CFF28(v0[37] + 104, (v0 + 12));
      v16 = swift_task_alloc();
      v0[65] = v16;
      *v16 = v0;
      v16[1] = sub_2370D15F0;

      return sub_2370E2410((v0 + 12));
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);

      v20 = v0[1];

      return v20();
    }
  }

  else
  {
    v0[55] = v10;
    v18 = v9[20];
    v0[56] = v18;
    v0[57] = v9[22];
    v19 = v9[23];
    v0[58] = v19;
    sub_2370CFCFC(v18, v10);

    return MEMORY[0x2822009F8](sub_2370D089C, v19, 0);
  }
}

uint64_t sub_2370D1044()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 480);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 304);

  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  *(v0 + 288) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  if (swift_dynamicCast())
  {

    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v9 = sub_2370F4388();
    __swift_project_value_buffer(v9, qword_27DE93E70);
    v10 = sub_2370F4368();
    v11 = sub_2370F4608();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2370CC000, v10, v11, "ItemContentSession.enumerate() did timeout", v12, 2u);
      MEMORY[0x2383C5B60](v12, -1, -1);
    }

    v13 = *(v0 + 448);
    v14 = *(v0 + 440);
    v15 = *(v0 + 296);

    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v16);
    sub_2370CFD88();
    v18 = swift_allocError();
    *v19 = 7;
    (*(v17 + 32))(v18, v16, v17);
    sub_2370CF944(v13, v14);

    v20 = v15[20];
    v21 = v15[21];
    *(v15 + 10) = xmmword_2370F53E0;
    v15[22] = 0;
    sub_2370CF944(v20, v21);
  }

  else
  {

    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 512);
    v23 = sub_2370F4388();
    __swift_project_value_buffer(v23, qword_27DE93E70);
    v24 = v22;
    v25 = sub_2370F4368();
    v26 = sub_2370F4608();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 512);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      v30 = v27;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_2370CC000, v25, v26, "ItemContentSession.enumerate() error %{public}@", v28, 0xCu);
      sub_2370D01B8(v29);
      MEMORY[0x2383C5B60](v29, -1, -1);
      MEMORY[0x2383C5B60](v28, -1, -1);
    }

    v32 = *(v0 + 512);
    v33 = *(v0 + 448);
    v34 = *(v0 + 440);
    v35 = *(v0 + 296);

    v36 = *(v0 + 80);
    v37 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v36);
    (*(v37 + 32))(v32, v36, v37);

    sub_2370CF944(v33, v34);
    v38 = v35[20];
    v39 = v35[21];
    *(v35 + 10) = xmmword_2370F53E0;
    v35[22] = 0;
    sub_2370CF944(v38, v39);
  }

  v40 = *(v0 + 296);
  v41 = v40[21];
  if (v41 >> 60 == 15)
  {
    v42 = v40[19];
    if (v42 && (sub_2370CFD88(), v43 = swift_allocError(), *v44 = 7, v45 = v42, v46 = == infix(_:_:)(v42, v43), v43, v42, (v46 & 1) != 0))
    {
      sub_2370CFF28(*(v0 + 296) + 104, v0 + 96);
      v47 = swift_task_alloc();
      *(v0 + 520) = v47;
      *v47 = v0;
      v47[1] = sub_2370D15F0;

      return sub_2370E2410(v0 + 96);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 56));

      v51 = *(v0 + 8);

      return v51();
    }
  }

  else
  {
    *(v0 + 440) = v41;
    v49 = v40[20];
    *(v0 + 448) = v49;
    *(v0 + 456) = v40[22];
    v50 = v40[23];
    *(v0 + 464) = v50;
    sub_2370CFCFC(v49, v41);

    return MEMORY[0x2822009F8](sub_2370D089C, v50, 0);
  }
}

uint64_t sub_2370D15F0()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return MEMORY[0x2822009F8](sub_2370D16F4, 0, 0);
}

uint64_t sub_2370D16F4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370D1798(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = v4;
    sub_2370D1A98(v6);
  }

  return result;
}

uint64_t sub_2370D1814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  return MEMORY[0x2822009F8](sub_2370D183C, 0, 0);
}

uint64_t sub_2370D183C()
{
  v1 = *(v0 + 104);
  v7 = *(v0 + 88);
  sub_2370CFF28(*(v0 + 80) + 104, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 56) = v7;
  *(v0 + 72) = v1;
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_2370D199C;
  v5 = *(v0 + 112);

  return v8(v0 + 56, v5, v2, v3);
}

uint64_t sub_2370D199C()
{

  return MEMORY[0x2822009F8](sub_2370CF6BC, 0, 0);
}

uint64_t sub_2370D1A98(uint64_t result)
{
  v2 = v1;
  v3 = *result;
  v4 = *(result + 8);
  v5 = (v4 >> 60) & 3;
  if (((v4 >> 60) & 3) > 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    v11 = v1[19];
    v2[19] = v3;
    v12 = v3;

    v13 = v2[10];
    v14 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v13);
    (*(v14 + 112))(v3, v13, v14);
  }

  else
  {
    if (!v5)
    {
      v6 = *(result + 16);
      v7 = v1[10];
      v8 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v7);
      v19[0] = v3;
      v19[1] = v4;
      v19[2] = v6;
      (*(v8 + 96))(v19, v7, v8);
      v9 = v1[20];
      v10 = v2[21];
      v2[20] = v3;
      v2[21] = v4;
      v2[22] = v6;
      sub_2370CFCFC(v3, v4);
      result = sub_2370CF944(v9, v10);
      v2[24] = 0;
      return result;
    }

    v15 = v1[10];
    v16 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v15);
    (*(v16 + 104))(v3, v4 & 0xCFFFFFFFFFFFFFFFLL, v15, v16);
  }

  v17 = v2[20];
  v18 = v2[21];
  *(v2 + 10) = xmmword_2370F53E0;
  v2[22] = 0;

  return sub_2370CF944(v17, v18);
}

uint64_t ItemContentSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  sub_2370CF944(*(v0 + 160), *(v0 + 168));

  return v0;
}

uint64_t ItemContentSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  sub_2370CF944(*(v0 + 160), *(v0 + 168));

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

void sub_2370D1D78(void *a1)
{
  if (a1[24] <= 0)
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v14 = sub_2370F4388();
    __swift_project_value_buffer(v14, qword_27DE93E70);
    v15 = sub_2370F4368();
    v16 = sub_2370F4608();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2370CC000, v15, v16, "ItemContentSession.enumerate() will retry enumerating the page", v17, 2u);
      MEMORY[0x2383C5B60](v17, -1, -1);
    }

    v18 = a1[24];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      a1[24] = v20;
    }
  }

  else
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v2 = sub_2370F4388();
    __swift_project_value_buffer(v2, qword_27DE93E70);
    v3 = sub_2370F4368();
    v4 = sub_2370F4608();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2370CC000, v3, v4, "ItemContentSession.enumerate() did fail to save", v5, 2u);
      MEMORY[0x2383C5B60](v5, -1, -1);
    }

    sub_2370CFD88();
    v6 = swift_allocError();
    *v7 = 2;
    v8 = a1[19];
    a1[19] = v6;
    v9 = v6;

    v10 = a1[10];
    v11 = a1[11];
    __swift_project_boxed_opaque_existential_1(a1 + 7, v10);
    (*(v11 + 112))(v6, v10, v11);

    v12 = a1[20];
    v13 = a1[21];
    *(a1 + 10) = xmmword_2370F53E0;
    a1[22] = 0;

    sub_2370CF944(v12, v13);
  }
}

uint64_t sub_2370D1FDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2370D201C()
{
  result = qword_27DE92798;
  if (!qword_27DE92798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE92788, &qword_2370F55B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92798);
  }

  return result;
}

uint64_t sub_2370D2080()
{

  sub_2370CF958(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2370D20C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2370D0220;

  return sub_2370D1814(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t ItemContentObserverImpl.__allocating_init(suggestedPageSize:store:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_2370F43A8();
  *(v4 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize) = a1;
  sub_2370CFE24(a2, v4 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store);
  return v4;
}

double sub_2370D2228@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_2370D22B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370D40F8(v2, v3);

  return sub_2370F43E8();
}

uint64_t sub_2370D2344()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();
}

uint64_t sub_2370D23BC(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  sub_2370F43B8();
  return swift_endAccess();
}

uint64_t sub_2370D2434(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92788, &qword_2370F55B0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  sub_2370F43C8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2370D25B8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  sub_2370F43B8();
  return swift_endAccess();
}

uint64_t sub_2370D262C()
{
  v1 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2370D2670(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ItemContentObserverImpl.init(suggestedPageSize:store:)(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl__state;
  v11[1] = 0;
  v12 = xmmword_2370F55E0;
  sub_2370F43A8();
  (*(v6 + 32))(v2 + v9, v8, v5);
  *(v2 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize) = a1;
  sub_2370CFE24(a2, v2 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store);
  return v2;
}

uint64_t sub_2370D285C(uint64_t a1)
{
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = xmmword_2370F55F0;
    v21 = 0;

    result = sub_2370F43E8();
    v3 = *(a1 + 16);
    if (v3)
    {
      v16 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store;
      v4 = (a1 + 56);
      do
      {
        v8 = *(v4 - 3);
        v9 = *(v4 - 2);
        v10 = *(v4 - 1);
        if (*v4)
        {
          sub_2370CFF28(v17 + v16, &v20);
          v5 = v22;
          v6 = v23;
          __swift_project_boxed_opaque_existential_1(&v20, v22);
          v18 = v9;
          v19 = v10;
          v14 = *(v6 + 48);
          v7 = v8;

          v14(v7, &v18, v5, v6);
        }

        else
        {
          sub_2370CFF28(v17 + v16, &v20);
          v11 = v22;
          v12 = v23;
          __swift_project_boxed_opaque_existential_1(&v20, v22);
          v18 = v9;
          v19 = v10;
          v15 = *(v12 + 32);
          v13 = v8;

          v15(v13, &v18, v11, v12);
        }

        sub_2370D2DE0(v8, v9, v10);
        result = __swift_destroy_boxed_opaque_existential_1(&v20);
        v4 += 32;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_2370D2A30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(v1, v2);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370D2AC4(uint64_t a1, unint64_t a2)
{
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(a1, a2);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370D2B5C(void *a1)
{
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;

    return sub_2370F43E8();
  }

  return result;
}

void *sub_2370D2BE8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  result = v5;
  v3 = v6;
  v4 = v7;
  if ((v6 & 0x3000000000000000) != 0)
  {
    sub_2370D2E18(v5, v6);
    result = 0;
    v4 = 0;
    v3 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_2370D2C84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  sub_2370CFD88();
  v0 = swift_allocError();
  *v1 = 7;
  sub_2370D40F8(v6, v7);
  v2 = v0;
  if ((v7 & 0x3000000000000000) == 0x2000000000000000)
  {
    v3 = == infix(_:_:)(v6, v0);
    sub_2370D2E18(v6, v7);
    sub_2370D2E18(v0, 0x2000000000000000uLL);

    v4 = v3 ^ 1;
  }

  else
  {
    sub_2370D2E18(v6, v7);
    sub_2370D2E18(v0, 0x2000000000000000uLL);

    v4 = 1;
  }

  sub_2370D2E18(v6, v7);
  return v4 & 1;
}

uint64_t sub_2370D2DE0(void *a1, uint64_t a2, uint64_t a3)
{
}

void sub_2370D2E18(void *a1, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) > 1)
  {
    if (v2 == 2)
    {
    }
  }

  else
  {
    if (v2)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    sub_2370CF958(a1, a2);
  }
}

uint64_t ItemContentObserverImpl.deinit()
{
  v1 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store));
  return v0;
}

uint64_t ItemContentObserverImpl.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92790, &qword_2370F55B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_store));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2370D2FA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(v1, v2);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370D303C(uint64_t a1, unint64_t a2)
{
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(a1, a2);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370D30D8(void *a1)
{
  result = sub_2370D2C84();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370D3168()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2370D31B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2370F5610;
  sub_2370F46D8();

  v4 = sub_2370F4838();
  MEMORY[0x2383C5040](v4);

  MEMORY[0x2383C5040](0x736D65746920, 0xE600000000000000);
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD00000000000001BLL;
  *(v3 + 40) = 0x80000002370F9690;
  sub_2370F4918();

  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  return (*(v6 + 8))(a1, v5, v6);
}

uint64_t sub_2370D3308(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2370F5610;
  sub_2370F46D8();
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x2383C5040](0xD00000000000002BLL, 0x80000002370F96B0);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_2370F4788();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_2370F4918();

  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  return (*(v7 + 16))(&v9, v6, v7);
}

uint64_t sub_2370D3458(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2370F5610;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD000000000000027;
  *(v5 + 40) = 0x80000002370F96E0;
  sub_2370F4918();

  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  return (*(v7 + 24))(a1, a2, v6, v7);
}

uint64_t sub_2370D3538(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2370F5610;
  sub_2370F46D8();
  MEMORY[0x2383C5040](0xD000000000000034, 0x80000002370F9710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
  sub_2370F4788();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_2370F4918();

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  return (*(v5 + 32))(a1, v4, v5);
}

uint64_t sub_2370D3680()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2370F5610;
  sub_2370F46D8();

  v5 = sub_2370F4838();
  MEMORY[0x2383C5040](v5);

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x80000002370F9750;
  sub_2370F4918();

  return v3;
}

uint64_t ItemContentObserverActivityLoggingDecorator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2370D3850(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927A8, &unk_2370F5670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2370F5610;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = 0xD000000000000027;
  *(v6 + 40) = 0x80000002370F96E0;
  sub_2370F4918();

  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v7);
  return (*(v8 + 24))(a1, a2, v7, v8);
}

uint64_t _s15ContactProvider23ItemContentObserverImplC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = (v2 >> 60) & 3;
  if (((v2 >> 60) & 3) > 1)
  {
    if (v8 == 2)
    {
      if ((v5 & 0x3000000000000000) == 0x2000000000000000)
      {
        sub_2370D40F8(*a1, v2);
        sub_2370D40F8(v6, v5);
        v12 = == infix(_:_:)(v3, v6);
        sub_2370D2E18(v3, v2);
        sub_2370D2E18(v6, v5);
        return v12 & 1;
      }
    }

    else if (v3 == 1 && v2 == 0x3000000000000000 && v4 == 0 && (v5 & 0x3000000000000000) == 0x3000000000000000 && v6 == 1 && v5 == 0x3000000000000000 && v7 == 0)
    {
      v11 = 1;
      sub_2370D2E18(1, 0x3000000000000000uLL);
      sub_2370D2E18(1, 0x3000000000000000uLL);
      return v11;
    }

    goto LABEL_30;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v5 & 0x3000000000000000) == 0;
  }

  if (!v9)
  {
LABEL_30:
    sub_2370D40F8(*a1, v2);
    sub_2370D40F8(v6, v5);
    sub_2370D2E18(v3, v2);
    sub_2370D2E18(v6, v5);
    return 0;
  }

  sub_2370D40F8(*a1, v2);
  sub_2370D40F8(v6, v5);
  sub_2370D40F8(v3, v2);
  sub_2370D40F8(v6, v5);
  v10 = sub_2370D9668(v3, v2, v6, v5);
  sub_2370D2E18(v3, v2);
  sub_2370D2E18(v6, v5);
  sub_2370D2E18(v6, v5);
  sub_2370D2E18(v3, v2);
  return v10 & (v4 == v7);
}

uint64_t sub_2370D3B94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2370D3BEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ContactProvider23ItemContentObserverImpl_suggestedPageSize;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for ItemContentObserverImpl(uint64_t a1)
{
  result = qword_27DE927B0;
  if (!qword_27DE927B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2370D3C94(uint64_t a1)
{
  sub_2370D3ED0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2370D3ED0()
{
  if (!qword_27DE927C0)
  {
    v0 = sub_2370F43F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE927C0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_15ContactProvider23ItemContentObserverImplC5StateO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2370D3F6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2370D3F8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void *sub_2370D3FC8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 1) = xmmword_2370F55E0;
  }

  return result;
}

id sub_2370D40F8(id result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (((a2 >> 60) & 3) > 1)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else
  {
    if (v2)
    {
      a2 &= 0xCFFFFFFFFFFFFFFFLL;
    }

    return sub_2370CFCFC(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of ContactItemEnumerator.enumerateContent(in:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2370D0220;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactItemEnumerator.enumerateChanges(startingAt:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2370D0220;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactItemEnumerator.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2370CD798;

  return v7(a1, a2);
}

uint64_t ContactProviderManager.__allocating_init(domainIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContactProviderManager.init(domainIdentifier:)(a1, a2);
  return v4;
}

uint64_t ContactProviderManager.init(domainIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0u;
  v5 = v2 + 64;
  *(v5 - 48) = 0;
  *(v5 + 16) = 0u;
  v34 = v5;
  *(v5 + 32) = 0;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  result = _s15ContactProvider0aB7ManagerC17registeredDomainsSayAA0aB6Domain_pGvgZ_0();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_2370CFF28(v10, &v36);
      v12 = v37;
      v11 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, v37);
      if ((*(v11 + 8))(v12, v11) == a1 && v13 == a2)
      {
        break;
      }

      v15 = sub_2370F4858();

      if (v15)
      {
        goto LABEL_17;
      }

      ++v9;
      result = __swift_destroy_boxed_opaque_existential_1(&v36);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

LABEL_17:

    sub_2370CFE24(&v36, v39);
    sub_2370CFE24(v39, &v40);
    sub_2370D6DB4(&v44);
    sub_2370CFE24(&v40, &v44);
    v17 = v35;
    v19 = *(&v45 + 1);
    if (!*(&v45 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

LABEL_10:

  if ((a1 != 0x44746C7561666564 || a2 != 0xED00006E69616D6FLL) && (sub_2370F4858() & 1) == 0)
  {
    goto LABEL_25;
  }

  v42 = &type metadata for DefaultContactProviderDomain;
  v43 = &protocol witness table for DefaultContactProviderDomain;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  v41 = sub_2370D68CC(MEMORY[0x277D84F90]);
  sub_2370D6E40(&v40, &v44);
  result = sub_2370D786C(&v44, &v40, &qword_27DE927C8, &unk_2370F5990);
  if (!v42)
  {
    goto LABEL_30;
  }

  v16 = v47;
  sub_2370D6EB0(&v40);
  v17 = v35;
  if (v16)
  {

    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_2370CFD88();
    swift_allocError();
    *v18 = 10;
    swift_willThrow();

LABEL_26:
    type metadata accessor for ContactProviderManager();
    sub_2370D6DB4(&v44);

    sub_2370D6DB4(v34);
    swift_deallocPartialClassInstance();
    return v17;
  }

  v47 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v19 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
LABEL_24:
    __break(1u);
LABEL_25:

    sub_2370CFD88();
    swift_allocError();
    *v32 = 10;
    swift_willThrow();
    v17 = v35;
    goto LABEL_26;
  }

LABEL_18:
  v20 = v46;
  v21 = __swift_project_boxed_opaque_existential_1(&v44, v19);
  v22 = *(v19 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24);
  (*(v20 + 8))(v19, v20);
  (*(v22 + 8))(v24, v19);
  v25 = objc_allocWithZone(MEMORY[0x277CBDA98]);
  v26 = sub_2370F4448();

  v27 = [v25 initWithDomainIdentifier_];

  v28 = *(v17 + 16);
  *(v17 + 16) = v27;

  result = sub_2370D786C(&v44, &v40, &qword_27DE927C8, &unk_2370F5990);
  if (v42)
  {

    sub_2370CFE24(&v40, v17 + 24);
    v29 = [objc_opt_self() processInfo];
    v30 = [v29 isiOSAppOnMac];

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = [objc_opt_self() isiOSAppOnVision] ^ 1;
    }

    *(v17 + 104) = v31;
    sub_2370D6DB4(&v44);
    return v17;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_2370D4B00()
{
  if (*(v0 + 104) != 1)
  {
    return 0;
  }

  result = *(v0 + 16);
  if (result)
  {
    return [result isDomainEnabled];
  }

  return result;
}

uint64_t sub_2370D4B60()
{
  v1 = v0[18];
  if (*(v1 + 104) == 1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v0[2] = v0;
      v0[3] = sub_2370D4D08;
      v3 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927D0, qword_2370F59A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2370D4E18;
      v0[13] = &block_descriptor;
      v0[14] = v3;
      [v2 enableDomainWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v5 = v0[1];
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_2370D4D08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_2370D7934;
  }

  else
  {
    v2 = sub_2370D7938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370D4E18(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2370D4EE4()
{
  v1 = v0[18];
  if (*(v1 + 104) == 1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v0[2] = v0;
      v0[3] = sub_2370D4D08;
      v3 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927D0, qword_2370F59A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2370D4E18;
      v0[13] = &block_descriptor_4;
      v0[14] = v3;
      [v2 disableDomainWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v5 = v0[1];
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_2370D50AC()
{
  v1 = *(v0 + 120);
  if (*(v1 + 104) == 1)
  {
    swift_beginAccess();
    sub_2370D786C(v1 + 64, v0 + 56, &qword_27DE927C8, &unk_2370F5990);
    if (*(v0 + 80))
    {
      sub_2370CFE24((v0 + 56), v0 + 16);
    }

    else
    {
      sub_2370CFF28(*(v0 + 120) + 24, v0 + 16);
      if (*(v0 + 80))
      {
        sub_2370D6DB4(v0 + 56);
      }
    }

    v4 = *(v0 + 120);
    v5 = [objc_allocWithZone(MEMORY[0x277CBDAA8]) init];
    *(v0 + 128) = v5;
    [v5 setSynchronizationReason_];
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    (*(v7 + 16))(v6, v7);
    v8 = sub_2370F4448();

    [v5 setDisplayName_];

    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 24))(v9, v10);
    v11 = sub_2370F4428();

    [v5 setUserInfo_];

    v12 = *(v4 + 16);
    *(v0 + 136) = v12;
    if (v12)
    {
      v12;
      v13 = v5;
      v14 = swift_task_alloc();
      *(v0 + 144) = v14;
      *v14 = v0;
      v14[1] = sub_2370D537C;

      return MEMORY[0x28210ECD8](v5);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v3 = *(v0 + 8);
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_2370D537C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2370D5508;
  }

  else
  {
    v4 = *(v2 + 136);

    v3 = sub_2370D549C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2370D549C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370D5508()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];

  _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v1);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2370D55CC()
{
  v1 = v0[18];
  if (*(v1 + 104) == 1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v0[2] = v0;
      v0[3] = sub_2370D5774;
      v3 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927D0, qword_2370F59A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2370D4E18;
      v0[13] = &block_descriptor_10;
      v0[14] = v3;
      [v2 invalidateExtensionWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v5 = v0[1];
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_2370D5774()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_2370D58E8;
  }

  else
  {
    v2 = sub_2370D5884;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370D5884()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2370D58E8()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v2);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2370D5998()
{
  v1 = v0[18];
  if (*(v1 + 104) == 1)
  {
    v2 = *(v1 + 16);
    v0[19] = v2;
    if (v2)
    {
      v0[2] = v0;
      v0[3] = sub_2370D4D08;
      v3 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927D0, qword_2370F59A0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2370D4E18;
      v0[13] = &block_descriptor_14;
      v0[14] = v3;
      [v2 resetEnumerationWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v5 = v0[1];
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t ContactProviderManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_2370D6DB4(v0 + 64);
  return v0;
}

uint64_t ContactProviderManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_2370D6DB4(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 105, 7);
}

uint64_t sub_2370D5BB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927F0, &qword_2370F5A68);
    v2 = sub_2370F47D8();
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
    sub_2370D71AC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2370D785C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2370D785C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2370D785C(v31, v32);
    result = sub_2370F4688();
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
    result = sub_2370D785C(v32, (*(v2 + 56) + 32 * v10));
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

void static ContactProviderManager.removeDomain(_:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isiOSAppOnMac];

  if (v3 & 1) != 0 || ([objc_opt_self() isiOSAppOnVision])
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
  }

  else
  {
    v5 = objc_opt_self();
    v6 = sub_2370F4448();
    v11[0] = 0;
    v7 = [v5 removeDomain:v6 error:v11];

    if (v7)
    {
      v8 = v11[0];
    }

    else
    {
      v9 = v11[0];
      v10 = sub_2370F4308();

      swift_willThrow();
      _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v10);
      swift_willThrow();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactProviderManager.enableExtension(_:)(Swift::String a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 104) == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_2370F4448();
    v4 = sub_2370F4448();
    v10[0] = 0;
    v5 = [v2 enableDomain:v3 bundleIdentifier:v4 shouldSynchronize:0 error:v10];

    if (v5)
    {
      v6 = v10[0];
    }

    else
    {
      v8 = v10[0];
      v9 = sub_2370F4308();

      swift_willThrow();
      _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v9);
      swift_willThrow();
    }
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContactProviderManager.disableExtension(_:)(Swift::String a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + 104) == 1)
  {
    v2 = objc_opt_self();
    v3 = sub_2370F4448();
    v4 = sub_2370F4448();
    v10[0] = 0;
    v5 = [v2 disableDomain:v3 bundleIdentifier:v4 error:v10];

    if (v5)
    {
      v6 = v10[0];
    }

    else
    {
      v8 = v10[0];
      v9 = sub_2370F4308();

      swift_willThrow();
      _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v9);
      swift_willThrow();
    }
  }

  else
  {
    sub_2370CFD88();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
  }
}

char *ContactProviderManager.allDomains()()
{
  if (*(v0 + 104) != 1)
  {
    sub_2370CFD88();
    swift_allocError();
    *v3 = 5;
    swift_willThrow();
    return v0;
  }

  v0 = sub_2370D7224();
  v2 = sub_2370F4618();
  if (v1)
  {
    _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v1);
    swift_willThrow();

    return v0;
  }

  v5 = v2;
  if (!(v2 >> 62))
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_2370F47A8();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = MEMORY[0x277D84F90];
  result = sub_2370D652C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v0 = v17;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383C5290](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 bundleIdentifier];
      v11 = sub_2370F4458();
      v13 = v12;

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2370D652C((v14 > 1), v15 + 1, 1);
      }

      ++v7;
      *(v17 + 16) = v15 + 1;
      v16 = v17 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v6 != v7);

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t ContactProviderManager.overrideDomain(_:)(uint64_t a1)
{
  sub_2370CFF28(a1, v3);
  swift_beginAccess();
  sub_2370D6E40(v3, v1 + 64);
  return swift_endAccess();
}

void *sub_2370D650C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2370D656C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2370D652C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2370D66B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2370D654C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2370D67C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2370D656C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92808, &qword_2370F5A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92810, &qword_2370F5A88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2370D66B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927E8, &qword_2370F5A58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2370D67C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927E0, &qword_2370F5A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2370D68CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927F8, &qword_2370F5A70);
    v3 = sub_2370F47D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2370D786C(v4, &v13, &qword_27DE92800, &qword_2370F5A78);
      v5 = v13;
      v6 = v14;
      result = sub_2370EE660(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2370D785C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_s15ContactProvider0aB7ManagerC17registeredDomainsSayAA0aB6Domain_pGvgZ_0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isiOSAppOnMac];

  if (v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = [objc_opt_self() isiOSAppOnVision];
  v2 = MEMORY[0x277D84F90];
  if (v3)
  {
    return v2;
  }

  sub_2370D7224();
  v4 = sub_2370F4628();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_24:

    return v2;
  }

  v6 = sub_2370F47A8();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_6:
  v39 = v2;
  result = sub_2370D650C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0xED00006E69616D6FLL;
    v34 = v5 & 0xC000000000000001;
    v2 = v39;
    v32 = v5;
    while (1)
    {
      v10 = v34 ? MEMORY[0x2383C5290](v8, v5) : *(v5 + 8 * v8 + 32);
      v11 = v10;
      v12 = [v10 domainIdentifier];
      v13 = sub_2370F4458();
      v15 = v14;

      if (v13 == 0x44746C7561666564 && v15 == v9)
      {
        break;
      }

      v17 = sub_2370F4858();

      if (v17)
      {
        goto LABEL_18;
      }

      v18 = [v11 domainIdentifier];
      v33 = sub_2370F4458();
      v20 = v19;

      v21 = v6;
      v22 = [v11 displayName];
      v23 = sub_2370F4458();
      v24 = v9;
      v26 = v25;

      v27 = [v11 userInfo];
      v28 = sub_2370F4438();

      v37 = &type metadata for CustomContactProviderDomain;
      v38 = &protocol witness table for CustomContactProviderDomain;
      v29 = swift_allocObject();
      *&v35 = v29;

      v29[2] = v33;
      v29[3] = v20;
      v29[4] = v23;
      v29[5] = v26;
      v29[6] = v28;
      v6 = v21;
      v5 = v32;

      v9 = v24;

LABEL_19:
      v39 = v2;
      v31 = *(v2 + 16);
      v30 = *(v2 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2370D650C((v30 > 1), v31 + 1, 1);
        v2 = v39;
      }

      ++v8;
      *(v2 + 16) = v31 + 1;
      sub_2370CFE24(&v35, v2 + 40 * v31 + 32);
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

LABEL_18:
    v37 = &type metadata for DefaultContactProviderDomain;
    v38 = &protocol witness table for DefaultContactProviderDomain;
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;

    v36 = MEMORY[0x277D84F98];
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2370D6DB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927C8, &unk_2370F5990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2370D6E40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE927C8, &unk_2370F5990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2370D6EB0(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isiOSAppOnMac];

  if (v3 & 1) != 0 || ([objc_opt_self() isiOSAppOnVision])
  {
    sub_2370CFD88();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
  }

  else
  {
    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    (*(v6 + 8))(v5, v6);
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    (*(v8 + 16))(v7, v8);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    v11 = (*(v10 + 24))(v9, v10);
    sub_2370D5BB8(v11);

    v12 = objc_allocWithZone(MEMORY[0x277CBDAA0]);
    v13 = sub_2370F4448();

    v14 = sub_2370F4448();

    v15 = sub_2370F4428();

    v16 = sub_2370F4448();
    v17 = [v12 initWithDomainIdentifer:v13 displayName:v14 userInfo:v15 bundleIdentifier:v16 registered:0 enabled:0];

    v21[0] = 0;
    if ([objc_opt_self() addDomain:v17 error:v21])
    {
      v18 = v21[0];
    }

    else
    {
      v19 = v21[0];
      v20 = sub_2370F4308();

      swift_willThrow();
      _s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(v20);
      swift_willThrow();
    }
  }
}

uint64_t sub_2370D71AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2370D7224()
{
  result = qword_27DE927D8;
  if (!qword_27DE927D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE927D8);
  }

  return result;
}

uint64_t dispatch thunk of ContactProviderManager.enable()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2370D0220;

  return v4();
}

uint64_t dispatch thunk of ContactProviderManager.disable()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2370D0220;

  return v4();
}

uint64_t dispatch thunk of ContactProviderManager.signalEnumerator(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2370D0220;

  return v6(a1);
}

uint64_t dispatch thunk of ContactProviderManager.invalidate()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2370CD798;

  return v4();
}

uint64_t dispatch thunk of ContactProviderManager.reset()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2370D0220;

  return v4();
}

_OWORD *sub_2370D785C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2370D786C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2370D78D4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2370D793C()
{
  v1 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2370D7980(int a1)
{
  v3 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2370D7A30()
{
  v1 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2370D7A74(char a1)
{
  v3 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StampedeManager.__allocating_init(notifyBatchSize:waitDivisor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  StampedeManager.init(notifyBatchSize:waitDivisor:)(a1, a2);
  return v4;
}

uint64_t StampedeManager.init(notifyBatchSize:waitDivisor:)(uint64_t a1, uint64_t a2)
{
  sub_2370F4378();
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishBatch) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishContent) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishChanges) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishWithError) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval) = 0;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait) = 1;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_notifyBatchSize) = a1;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitDivisor) = a2;
  return v2;
}

void sub_2370D7C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) = v3;
  }
}

uint64_t sub_2370D7C80(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) = v4;
  }

  return result;
}

uint64_t sub_2370D7CC8(uint64_t result)
{
  v2 = &OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishBatch;
  if ((result & 1) == 0)
  {
    v2 = &OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishChanges;
  }

  *(v1 + *v2) = 1;
  return result;
}

void sub_2370D7CF0(uint64_t a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishWithError) = 1;
  sub_2370CFD88();
  v4 = swift_allocError();
  *v5 = 8;
  LOBYTE(a1) = == infix(_:_:)(a1, v4);

  if (a1)
  {
    v6 = sub_2370F4368();
    v7 = sub_2370F4608();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2370CC000, v6, v7, "didFinishEnumeratingWithError(extensionInvalidated) - will not wait for stamepede after save", v8, 2u);
      MEMORY[0x2383C5B60](v8, -1, -1);
    }

    v9 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
    swift_beginAccess();
    *(v2 + v9) = 0;
  }
}

BOOL sub_2370D7E10()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount);
  v2 = ((*(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishContent) & 1) != 0 || *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishChanges) == 1) && v1 > 0;
  v3 = *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_notifyBatchSize);
  if (*(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishBatch) == 1 && *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishWithError) == 1)
  {
    if (v1 >= v3)
    {
      v2 = 1;
    }

    if (!v2)
    {
      return v1 > 0;
    }

    return 1;
  }

  v5 = v1 >= v3 || v2;
  return (v5 & 1) != 0;
}

uint64_t sub_2370D7ED0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval;
  swift_beginAccess();
  *(v0 + v2) = 0;
  result = sub_2370D7E10();
  if ((result & 1) == 0)
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount;
  v5 = ceil(*(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) / *(v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitDivisor));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 4294967300.0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  *(v0 + v2) = v5;
  v6 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
  result = swift_beginAccess();
  if (*(v0 + v6) == 1)
  {

    v7 = sub_2370F4368();
    v8 = sub_2370F4608();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67240448;
      *(v9 + 4) = *(v1 + v2);
      *(v9 + 8) = 2050;
      *(v9 + 10) = *(v1 + v4);

      _os_log_impl(&dword_2370CC000, v7, v8, "didSave() - sleeping %{public}u seconds for %{public}ld items", v9, 0x12u);
      MEMORY[0x2383C5B60](v9, -1, -1);
    }

    else
    {
    }

    result = sleep(*(v1 + v2));
  }

  *(v1 + v4) = 0;
  *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishBatch) = 0;
  *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishContent) = 0;
  *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishChanges) = 0;
  *(v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishWithError) = 0;
  *(v1 + v6) = 1;
  return result;
}

uint64_t StampedeManager.deinit()
{
  v1 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_logger;
  v2 = sub_2370F4388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StampedeManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_logger;
  v2 = sub_2370F4388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_2370D81C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(*v0 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) = v3;
  }
}

uint64_t sub_2370D81EC(uint64_t result)
{
  v2 = *(*v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(*v1 + OBJC_IVAR____TtC15ContactProvider15StampedeManager_itemCount) = v4;
  }

  return result;
}

uint64_t sub_2370D8240(uint64_t result)
{
  v2 = &OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishBatch;
  if ((result & 1) == 0)
  {
    v2 = &OBJC_IVAR____TtC15ContactProvider15StampedeManager_didFinishChanges;
  }

  *(*v1 + *v2) = 1;
  return result;
}

uint64_t sub_2370D82F8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2370D8344(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_2370D8354(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2370D8374@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2370D83A4@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2370D83FC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_waitTimeInterval;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2370D8450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2370D84A8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15ContactProvider15StampedeManager_shouldWait;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for StampedeManager(uint64_t a1)
{
  result = qword_27DE92850;
  if (!qword_27DE92850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2370D8618(uint64_t a1)
{
  result = sub_2370F4388();
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

uint64_t static ContactItemPage.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_2370D9668(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t ContactItemPage.init(generationMarker:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ContactItemPage.generationMarker.getter()
{
  v1 = *v0;
  sub_2370CFCFC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ContactItemPage.generationMarker.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2370CF958(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2370D8AF8()
{
  v1 = *v0;
  sub_2370F4928();
  MEMORY[0x2383C54E0](v1);
  return sub_2370F4948();
}

uint64_t sub_2370D8B6C(uint64_t a1)
{
  v2 = *v1;
  sub_2370F4928();
  MEMORY[0x2383C54E0](v2);
  return sub_2370F4948();
}

uint64_t sub_2370D8BB0()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2370D8BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002370F99D0 == a2 || (sub_2370F4858() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2370F4858();

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
  return result;
}

uint64_t sub_2370D8CE8(uint64_t a1)
{
  v2 = sub_2370D97D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2370D8D24(uint64_t a1)
{
  v2 = sub_2370D97D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactItemPage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92878, &qword_2370F5B30);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2370CFCFC(v7, v8);
  sub_2370D97D0();
  sub_2370F4968();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_2370D9824();
  sub_2370F4828();
  sub_2370CF958(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2370F4818();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t ContactItemPage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92890, &qword_2370F5B38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2370D97D0();
  sub_2370F4958();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_2370D9878();
  sub_2370F4808();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v11 = sub_2370F47F8();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;
  sub_2370CFCFC(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2370CF958(v10, v9);
}

uint64_t sub_2370D90E0(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_2370D9668(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

double sub_2370D9154()
{
  result = 0.0;
  xmmword_27DE92860 = xmmword_2370F5B20;
  qword_27DE92870 = 0;
  return result;
}

uint64_t static ContactItemPage.initialPage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE92470 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = xmmword_27DE92860;
  *a1 = xmmword_27DE92860;
  v3 = *(&xmmword_27DE92860 + 1);
  *(a1 + 8) = *(&xmmword_27DE92860 + 8);

  return sub_2370CFCFC(v2, v3);
}

uint64_t sub_2370D91F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2370F42A8();
    if (v10)
    {
      v11 = sub_2370F42C8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2370F42B8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2370F42A8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2370F42C8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2370F42B8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2370D9420(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2370D95B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2370CF958(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2370D91F0(v13, a3, a4, &v12);
  v10 = v4;
  sub_2370CF958(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2370D95B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2370F42A8();
  v11 = result;
  if (result)
  {
    result = sub_2370F42C8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2370F42B8();
  sub_2370D91F0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2370D9668(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2370CFCFC(a3, a4);
          return sub_2370D9420(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2370D97D0()
{
  result = qword_27DE92880;
  if (!qword_27DE92880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92880);
  }

  return result;
}

unint64_t sub_2370D9824()
{
  result = qword_27DE92888;
  if (!qword_27DE92888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92888);
  }

  return result;
}

unint64_t sub_2370D9878()
{
  result = qword_27DE92898;
  if (!qword_27DE92898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92898);
  }

  return result;
}

uint64_t sub_2370D98CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2370D9920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactItemPage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactItemPage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2370D9AF4()
{
  result = qword_27DE928A0;
  if (!qword_27DE928A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE928A0);
  }

  return result;
}

unint64_t sub_2370D9B4C()
{
  result = qword_27DE928A8;
  if (!qword_27DE928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE928A8);
  }

  return result;
}

unint64_t sub_2370D9BA4()
{
  result = qword_27DE928B0;
  if (!qword_27DE928B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE928B0);
  }

  return result;
}

uint64_t Data.init(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  return sub_2370D9DB8(&v2, &v3);
}

uint64_t Int.init(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_16;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 8)
      {
        goto LABEL_8;
      }

LABEL_16:
      v7 = 0;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) != 8)
  {
    goto LABEL_16;
  }

LABEL_8:
  v7 = a1;
  if (!v2)
  {
LABEL_22:
    sub_2370CF958(a1, a2);
    return v7;
  }

  if (v2 == 2)
  {
    v8 = a1;
    v9 = *(a1 + 16);
    v10 = a2;
    v11 = sub_2370F42A8();
    if (!v11)
    {
LABEL_28:
      sub_2370F42B8();
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = v11;
    v13 = sub_2370F42C8();
    if (!__OFSUB__(v9, v13))
    {
      v14 = (v9 - v13 + v12);
      sub_2370F42B8();
      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_21:
      v7 = *v14;
      a2 = v10;
      a1 = v8;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  v15 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = a1;
  v10 = a2;
  v16 = sub_2370F42A8();
  if (!v16)
  {
LABEL_30:
    result = sub_2370F42B8();
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  v18 = sub_2370F42C8();
  if (__OFSUB__(v15, v18))
  {
    goto LABEL_27;
  }

  v14 = (v15 - v18 + v17);
  result = sub_2370F42B8();
  if (v14)
  {
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2370D9DB8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t ItemChangeObserverImpl.__allocating_init(suggestedBatchSize:store:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_2370F43A8();
  *(v4 + 16) = a1;
  sub_2370CFE24(a2, v4 + 24);
  return v4;
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2370F42F8();
  v3 = sub_2370F42F8();
  v4 = [v2 code];
  if (v4 != [v3 code])
  {
    goto LABEL_7;
  }

  v5 = [v2 domain];
  v6 = sub_2370F4458();
  v8 = v7;

  v9 = [v3 domain];
  v10 = sub_2370F4458();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    goto LABEL_9;
  }

  v14 = sub_2370F4858();

  if (v14)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92778, &qword_2370F5A60);
    sub_2370F4788();
    sub_2370F4788();
    v15 = 1;

    return v15 & 1;
  }

LABEL_7:

  v15 = 0;
  return v15 & 1;
}

uint64_t sub_2370DA124(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

double sub_2370DA1B4@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2370DA244(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370D0180(v2, v3, v4, v5);

  return sub_2370F43E8();
}

uint64_t sub_2370DA2EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();
}

uint64_t sub_2370DA364(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  sub_2370F43B8();
  return swift_endAccess();
}

uint64_t sub_2370DA3DC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92760, &unk_2370F5480);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  sub_2370F43C8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2370DA560()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  sub_2370F43B8();
  return swift_endAccess();
}

uint64_t ItemChangeObserverImpl.init(suggestedBatchSize:store:)(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC15ContactProvider22ItemChangeObserverImpl__state;
  memset(v11, 0, sizeof(v11));
  v12 = 0x80;
  sub_2370F43A8();
  (*(v6 + 32))(v2 + v9, v8, v5);
  *(v2 + 16) = a1;
  sub_2370CFE24(a2, v2 + 24);
  return v2;
}

uint64_t sub_2370DA6FC(uint64_t a1)
{
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6[1] = 0;
    v6[2] = 0;
    v6[0] = 1;
    LOBYTE(v7) = 0x80;

    sub_2370F43E8();
    sub_2370CFF28(v1 + 24, v6);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 40))(a1, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_2370DA7CC(uint64_t a1)
{
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6[1] = 0;
    v6[2] = 0;
    v6[0] = 1;
    LOBYTE(v7) = 0x80;

    sub_2370F43E8();
    sub_2370CFF28(v1 + 24, v6);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 64))(a1, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_2370DA89C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(v2, v3);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370DA944(void *a1)
{
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370DA9D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2370F43D8();

  sub_2370CFD88();
  v0 = swift_allocError();
  *v1 = 7;
  sub_2370D0180(v6, v7, v8, v9);
  v2 = v0;
  if (v9 >> 6 == 1)
  {
    v3 = == infix(_:_:)(v6, v0);
    sub_2370D019C(v6, v7, v8, v9);
    sub_2370D019C(v0, 0, 0, 0x40u);

    v4 = v3 ^ 1;
  }

  else
  {
    sub_2370D019C(v6, v7, v8, v9);
    sub_2370D019C(v0, 0, 0, 0x40u);

    v4 = 1;
  }

  sub_2370D019C(v6, v7, v8, v9);
  return v4 & 1;
}

uint64_t ItemChangeObserverImpl.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = OBJC_IVAR____TtC15ContactProvider22ItemChangeObserverImpl__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ItemChangeObserverImpl.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtC15ContactProvider22ItemChangeObserverImpl__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92768, &qword_2370F5DD0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2370DACCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2370CFCFC(v2, v3);

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370DAD78(void *a1)
{
  result = sub_2370DA9D0();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;

    return sub_2370F43E8();
  }

  return result;
}

uint64_t sub_2370DAE08()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t static Equatable<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(v7 + 16);
  v13(&v22 - v11);
  v14 = sub_2370F4848();
  if (v14)
  {
    v15 = v14;
    (*(v7 + 8))(v12, a3);
  }

  else
  {
    v15 = swift_allocError();
    (*(v7 + 32))(v16, v12, a3);
  }

  (v13)(v10, a2, a3);
  v17 = sub_2370F4848();
  if (v17)
  {
    v18 = v17;
    (*(v7 + 8))(v10, a3);
  }

  else
  {
    v18 = swift_allocError();
    (*(v7 + 32))(v19, v10, a3);
  }

  v20 = == infix(_:_:)(v15, v18);

  return v20 & 1;
}

uint64_t _s15ContactProvider22ItemChangeObserverImplC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      if ((v9 & 0xC0) == 0x40)
      {
        sub_2370D0180(*a2, *(a2 + 8), v8, v9);
        sub_2370D0180(v3, v2, v4, v5);
        v10 = == infix(_:_:)(v3, v7);
        sub_2370D019C(v3, v2, v4, v5);
        sub_2370D019C(v7, v6, v8, v9);
        return v10 & 1;
      }

      goto LABEL_15;
    }

    if ((v4 | v2 | v3 || v5 != 128) && (v9 & 0xC0) == 0x80 && v9 == 128 && v7 == 1 && !(v8 | v6))
    {
      v13 = 1;
      sub_2370D019C(1, 0, 0, 0x80u);
      sub_2370D019C(1, 0, 0, 0x80u);
      return v13;
    }

LABEL_15:
    sub_2370D0180(*a2, *(a2 + 8), v8, v9);
    sub_2370D0180(v3, v2, v4, v5);
    goto LABEL_16;
  }

  if (v9 >= 0x40)
  {
    goto LABEL_15;
  }

  sub_2370D0180(*a2, *(a2 + 8), v8, v9);
  sub_2370D0180(v3, v2, v4, v5);
  if ((v9 ^ v5))
  {
LABEL_16:
    sub_2370D019C(v3, v2, v4, v5);
    sub_2370D019C(v7, v6, v8, v9);
    return 0;
  }

  sub_2370D0180(v7, v6, v8, v9);
  sub_2370D0180(v3, v2, v4, v5);
  v12 = sub_2370D9668(v3, v2, v7, v6);
  sub_2370D019C(v3, v2, v4, v5);
  sub_2370D019C(v7, v6, v8, v9);
  sub_2370D019C(v7, v6, v8, v9);
  sub_2370D019C(v3, v2, v4, v5);
  return v12 & (v4 == v8);
}

uint64_t sub_2370DB2C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2370DB308(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t type metadata accessor for ItemChangeObserverImpl(uint64_t a1)
{
  result = qword_27DE928C0;
  if (!qword_27DE928C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2370DB3A8(uint64_t a1)
{
  sub_2370DB5C0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2370DB5C0()
{
  if (!qword_27DE928D0)
  {
    v0 = sub_2370F43F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE928D0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15ContactProvider22ItemChangeObserverImplC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2370DB644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FE && *(a1 + 25))
  {
    return (*a1 + 510);
  }

  v3 = ((*(a1 + 24) >> 6) | (4 * ((*(a1 + 8) >> 60) & 3 | (4 * ((*(a1 + 24) >> 1) & 0x1F))))) ^ 0x1FF;
  if (v3 >= 0x1FD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2370DB6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 510;
    if (a3 >= 0x1FE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 2) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = ((((-a2 >> 2) & 0x7F) - (a2 << 7)) >> 1) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_2370DB718(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x80;
  }

  return result;
}

uint64_t sub_2370DB764(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_2370DB7C4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2370DB810(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2370DB8B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_2370DB94C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_2370DB9E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

uint64_t sub_2370DBA7C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_2370DBB48(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2370DBBD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;
  v5 = *(v3 + 64);
  *(a2 + 8) = v5;
  return sub_2370CFCFC(v4, v5);
}

uint64_t sub_2370DBC30(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[7];
  v7 = v5[8];
  v5[7] = v2;
  v5[8] = v3;
  v5[9] = v4;
  sub_2370CFCFC(v2, v3);
  return sub_2370CF958(v6, v7);
}

uint64_t sub_2370DBCA8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *a1 = v3;
  v4 = *(v1 + 64);
  *(a1 + 8) = v4;
  return sub_2370CFCFC(v3, v4);
}

uint64_t sub_2370DBCFC(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[8];
  *(v1 + 7) = v6;
  v1[9] = v2;
  return sub_2370CF958(v3, v4);
}

uint64_t sub_2370DBDA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_2370D009C(v4, v5);
}

uint64_t sub_2370DBDF8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_beginAccess();
  v6 = v5[10];
  v7 = v5[11];
  v5[10] = v2;
  v5[11] = v3;
  v5[12] = v4;
  sub_2370D009C(v2, v3);
  return sub_2370CF944(v6, v7);
}

uint64_t sub_2370DBE84@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_2370D009C(v3, v4);
}

uint64_t sub_2370DBED4(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[10];
  v4 = v1[11];
  *(v1 + 5) = v6;
  v1[12] = v2;
  return sub_2370CF944(v3, v4);
}

uint64_t LocalStore.__allocating_init(contacts:groups:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 80) = xmmword_2370F53E0;
  *(v4 + 96) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  *(v4 + 48) = 0;
  if (qword_27DE92470 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = xmmword_27DE92860;
  *(v4 + 56) = xmmword_27DE92860;
  v6 = *(&xmmword_27DE92860 + 1);
  *(v4 + 64) = *(&xmmword_27DE92860 + 8);
  v7 = v4;
  sub_2370CFCFC(v5, v6);
  return v7;
}

uint64_t LocalStore.init(contacts:groups:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = xmmword_2370F53E0;
  *(v2 + 96) = 0;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  *(v2 + 48) = 0;
  if (qword_27DE92470 != -1)
  {
    swift_once();
  }

  v3 = xmmword_27DE92860;
  *(v2 + 56) = xmmword_27DE92860;
  v4 = *(&xmmword_27DE92860 + 1);
  *(v2 + 64) = *(&xmmword_27DE92860 + 8);
  sub_2370CFCFC(v3, v4);
  return v2;
}

uint64_t sub_2370DC0CC(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_2370F4448();
  [a1 setExternalIdentifier_];

  swift_beginAccess();
  v6 = a1;
  MEMORY[0x2383C5060]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2370F44E8();
  }

  sub_2370F44F8();
  return swift_endAccess();
}

void sub_2370DC198(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      if ((*v3 & 1) == 0)
      {
        v5 = *(v3 - 2);
        v4 = *(v3 - 1);
        v6 = *(v3 - 3);
        v8[0] = v5;
        v8[1] = v4;
        sub_2370DC8F8(v6, v5, v4);
        v7 = v6;

        sub_2370DC25C(v7, v8, v1);
        sub_2370D2DE0(v6, v5, v4);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_2370DC25C(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = [a1 externalURI];
  v45 = a3;
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v46 = sub_2370F4458();
  v47 = v6;

  swift_beginAccess();
  v7 = *(a3 + 32);
  if (v7 >> 62)
  {
    v8 = sub_2370F47A8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_19:

LABEL_20:
    swift_beginAccess();
    v7 = *(a3 + 32);
    if (v7 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2370F47A8())
    {

      if (!i)
      {
        break;
      }

      v21 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2383C5290](v21, v7);
        }

        else
        {
          if (v21 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v22 = *(v7 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v25 = [v22 identifier];
        v26 = sub_2370F4458();
        v28 = v27;

        v29 = [a1 identifier];
        v30 = sub_2370F4458();
        v32 = v31;

        if (v26 == v30 && v28 == v32)
        {

LABEL_40:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_2370F5F60;
          *(v38 + 32) = v23;
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_2370F5F60;
          *(v39 + 32) = a1;
          swift_beginAccess();
          v40 = a1;
          v41 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE928D8, &qword_2370F5FE0);
          sub_2370DE5D0(&qword_27DE928E0, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83990]);
          sub_2370DE5D0(&qword_27DE928E8, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83988]);
          sub_2370DE618(&qword_27DE928F0, &qword_27DE928F8, 0x277CBDB38);
          sub_2370F45E8();
          goto LABEL_43;
        }

        v34 = sub_2370F4858();

        if (v34)
        {
          goto LABEL_40;
        }

        ++v21;
        if (v24 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

LABEL_36:

    v35 = sub_2370F4448();
    [a1 setExternalIdentifier_];

    swift_beginAccess();
    v36 = a1;
    MEMORY[0x2383C5060]();
    if (*((*(v45 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v45 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2370F44E8();
    }

    sub_2370F44F8();
    return swift_endAccess();
  }

  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2383C5290](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = [v10 externalURI];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = v13;
    v15 = sub_2370F4458();
    v17 = v16;

    if (v15 == v46 && v17 == v47)
    {
      break;
    }

    v19 = sub_2370F4858();

    if (v19)
    {
      goto LABEL_42;
    }

LABEL_6:

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_19;
    }
  }

LABEL_42:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2370F5F60;
  *(v42 + 32) = v11;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2370F5F60;
  *(v43 + 32) = a1;
  swift_beginAccess();
  v41 = v11;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE928D8, &qword_2370F5FE0);
  sub_2370DE5D0(&qword_27DE928E0, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83990]);
  sub_2370DE5D0(&qword_27DE928E8, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83988]);
  sub_2370DE618(&qword_27DE928F0, &qword_27DE928F8, 0x277CBDB38);
  sub_2370F45E8();
LABEL_43:
  swift_endAccess();
}

uint64_t sub_2370DC8F8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
}

uint64_t sub_2370DC930(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_2370F4448();
  [a1 setExternalIdentifier_];

  swift_beginAccess();
  v6 = a1;
  MEMORY[0x2383C5060]();
  if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2370F44E8();
  }

  sub_2370F44F8();
  return swift_endAccess();
}

void sub_2370DC9FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      if (*v3 == 1)
      {
        v5 = *(v3 - 2);
        v4 = *(v3 - 1);
        v6 = *(v3 - 3);
        v8[0] = v5;
        v8[1] = v4;
        sub_2370DC8F8(v6, v5, v4);
        v7 = v6;

        sub_2370DCAC4(v7, v8, v1);
        sub_2370D2DE0(v6, v5, v4);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_2370DCAC4(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = [a1 externalURI];
  v45 = a3;
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v46 = sub_2370F4458();
  v47 = v6;

  swift_beginAccess();
  v7 = *(a3 + 40);
  if (v7 >> 62)
  {
    v8 = sub_2370F47A8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_19:

LABEL_20:
    swift_beginAccess();
    v7 = *(a3 + 40);
    if (v7 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2370F47A8())
    {

      if (!i)
      {
        break;
      }

      v21 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2383C5290](v21, v7);
        }

        else
        {
          if (v21 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v22 = *(v7 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v25 = [v22 identifier];
        v26 = sub_2370F4458();
        v28 = v27;

        v29 = [a1 identifier];
        v30 = sub_2370F4458();
        v32 = v31;

        if (v26 == v30 && v28 == v32)
        {

LABEL_40:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_2370F5F60;
          *(v38 + 32) = v23;
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_2370F5F60;
          *(v39 + 32) = a1;
          swift_beginAccess();
          v40 = a1;
          v41 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92900, &qword_2370F5FE8);
          sub_2370DE5D0(&qword_27DE92908, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83990]);
          sub_2370DE5D0(&qword_27DE92910, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83988]);
          sub_2370DE618(&qword_27DE92918, &qword_27DE92920, 0x277CBDB50);
          sub_2370F45E8();
          goto LABEL_43;
        }

        v34 = sub_2370F4858();

        if (v34)
        {
          goto LABEL_40;
        }

        ++v21;
        if (v24 == i)
        {
          goto LABEL_36;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

LABEL_36:

    v35 = sub_2370F4448();
    [a1 setExternalIdentifier_];

    swift_beginAccess();
    v36 = a1;
    MEMORY[0x2383C5060]();
    if (*((*(v45 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v45 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2370F44E8();
    }

    sub_2370F44F8();
    return swift_endAccess();
  }

  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2383C5290](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = [v10 externalURI];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = v13;
    v15 = sub_2370F4458();
    v17 = v16;

    if (v15 == v46 && v17 == v47)
    {
      break;
    }

    v19 = sub_2370F4858();

    if (v19)
    {
      goto LABEL_42;
    }

LABEL_6:

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_19;
    }
  }

LABEL_42:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2370F5F60;
  *(v42 + 32) = v11;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2370F5F60;
  *(v43 + 32) = a1;
  swift_beginAccess();
  v41 = v11;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92900, &qword_2370F5FE8);
  sub_2370DE5D0(&qword_27DE92908, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83990]);
  sub_2370DE5D0(&qword_27DE92910, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83988]);
  sub_2370DE618(&qword_27DE92918, &qword_27DE92920, 0x277CBDB50);
  sub_2370F45E8();
LABEL_43:
  swift_endAccess();
}

uint64_t sub_2370DD160(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = (result + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_2370DD1C8(v5, v4, v1);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2370DD1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v47 = a3;
  v6 = *(a3 + 32);
  if (v6 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2370F47A8())
  {

    if (i)
    {
      break;
    }

LABEL_23:

    swift_beginAccess();
    v6 = *(v47 + 40);
    if (v6 >> 62)
    {
      v25 = sub_2370F47A8();
    }

    else
    {
      v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v25)
    {
    }

    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x2383C5290](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v27 = *(v6 + 8 * j + 32);
      }

      v28 = v27;
      v29 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v30 = [v27 externalURI];
      if (v30)
      {
        v31 = v30;
        v32 = sub_2370F4458();
        v34 = v33;

        if (v32 == a1 && v34 == a2)
        {
LABEL_48:

LABEL_49:

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_2370F5F60;
          *(v45 + 32) = v28;
          swift_beginAccess();
          v44 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92900, &qword_2370F5FE8);
          sub_2370DE5D0(&qword_27DE92908, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83990]);
          sub_2370DE5D0(&qword_27DE92910, &qword_27DE92900, &qword_2370F5FE8, MEMORY[0x277D83988]);
          sub_2370DE618(&qword_27DE92918, &qword_27DE92920, 0x277CBDB50);
          sub_2370F45E8();
          goto LABEL_50;
        }

        v36 = sub_2370F4858();

        if (v36)
        {
          goto LABEL_49;
        }
      }

      v37 = [v28 identifier];
      v38 = sub_2370F4458();
      v40 = v39;

      if (v38 == a1 && v40 == a2)
      {
        goto LABEL_48;
      }

      v42 = sub_2370F4858();

      if (v42)
      {
        goto LABEL_49;
      }

      if (v29 == v25)
      {
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2383C5290](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v12 = [v9 externalURI];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = sub_2370F4458();
    v16 = v15;

    if (v14 == a1 && v16 == a2)
    {
      break;
    }

    v18 = sub_2370F4858();

    if (v18)
    {
      goto LABEL_47;
    }

LABEL_15:
    v19 = [v10 identifier];
    v20 = sub_2370F4458();
    v22 = v21;

    if (v20 == a1 && v22 == a2)
    {
      break;
    }

    v24 = sub_2370F4858();

    if (v24)
    {
      goto LABEL_47;
    }

    ++v8;
    if (v11 == i)
    {
      goto LABEL_23;
    }
  }

LABEL_47:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92BC0, &qword_2370F6AB0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2370F5F60;
  *(v43 + 32) = v10;
  swift_beginAccess();
  v44 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE928D8, &qword_2370F5FE0);
  sub_2370DE5D0(&qword_27DE928E0, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83990]);
  sub_2370DE5D0(&qword_27DE928E8, &qword_27DE928D8, &qword_2370F5FE0, MEMORY[0x277D83988]);
  sub_2370DE618(&qword_27DE928F0, &qword_27DE928F8, 0x277CBDB38);
  sub_2370F45E8();
LABEL_50:
  swift_endAccess();
}

uint64_t sub_2370DD7B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[7];
  v6 = v1[8];
  v1[7] = v2;
  v1[8] = v3;
  v1[9] = v4;
  sub_2370CFCFC(v2, v3);
  return sub_2370CF958(v5, v6);
}

uint64_t sub_2370DD830(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  *(v2 + 96) = 0;
  sub_2370CFCFC(a1, a2);
  sub_2370CF944(v5, v6);
  result = swift_beginAccess();
  *(v2 + 48) = 1;
  return result;
}

uint64_t sub_2370DD8D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[10];
  v6 = v1[11];
  v1[10] = v2;
  v1[11] = v3;
  v1[12] = v4;
  sub_2370CFCFC(v2, v3);
  return sub_2370CF944(v5, v6);
}

uint64_t sub_2370DD964()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 40) = v1;
}

void *LocalStore.deinit()
{

  sub_2370CF958(*(v0 + 56), *(v0 + 64));
  sub_2370CF944(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t LocalStore.__deallocating_deinit()
{

  sub_2370CF958(*(v0 + 56), *(v0 + 64));
  sub_2370CF944(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2370DDA70()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_2370DDAC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
}

uint64_t sub_2370DDC20()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_2370DDC60@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a1 = v4;
  v5 = *(v3 + 64);
  *(a1 + 8) = v5;
  return sub_2370CFCFC(v4, v5);
}

uint64_t sub_2370DDCB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  return sub_2370D009C(v4, v5);
}

uint64_t sub_2370DDD0C(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  swift_beginAccess();
  v6 = v2[7];
  v7 = v2[8];
  v2[7] = v3;
  v2[8] = v4;
  v2[9] = v5;
  sub_2370CFCFC(v3, v4);
  return sub_2370CF958(v6, v7);
}

uint64_t sub_2370DDD94(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  *(v5 + 96) = 0;
  sub_2370CFCFC(a1, a2);
  sub_2370CF944(v6, v7);
  result = swift_beginAccess();
  *(v5 + 48) = 1;
  return result;
}

uint64_t sub_2370DDE40(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  swift_beginAccess();
  v6 = v2[10];
  v7 = v2[11];
  v2[10] = v3;
  v2[11] = v4;
  v2[12] = v5;
  sub_2370CFCFC(v3, v4);
  return sub_2370CF944(v6, v7);
}

uint64_t sub_2370DDED0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2370DDF20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_2370DDF70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_2370DDFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_2370DE008(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t dispatch thunk of LocalStore.add(_:itemIdentifier:)()
{
  return (*(*v0 + 280))();
}

{
  return (*(*v0 + 296))();
}

uint64_t sub_2370DE5D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2370DE618(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2370DE668(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2370DE668(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static ContactItem.Identifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2370F4858();
  }
}

uint64_t ContactItem.hash(into:)(uint64_t a1)
{
  MEMORY[0x2383C54E0](*(v1 + 24));
  sub_2370F4658();

  return sub_2370F4488();
}

uint64_t ContactItem.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_2370F4928();
  MEMORY[0x2383C54E0](v1);
  sub_2370F4658();
  sub_2370F4488();
  return sub_2370F4948();
}

uint64_t sub_2370DE7E4()
{
  v1 = *(v0 + 24);
  sub_2370F4928();
  MEMORY[0x2383C54E0](v1);
  sub_2370F4658();
  sub_2370F4488();
  return sub_2370F4948();
}

uint64_t sub_2370DE860(uint64_t a1)
{
  MEMORY[0x2383C54E0](*(v1 + 24));
  sub_2370F4658();

  return sub_2370F4488();
}

uint64_t sub_2370DE8CC(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_2370F4928();
  MEMORY[0x2383C54E0](v2);
  sub_2370F4658();
  sub_2370F4488();
  return sub_2370F4948();
}

uint64_t ContactItem.Identifier.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactItem.Identifier.hashValue.getter()
{
  sub_2370F4928();
  sub_2370F4488();
  return sub_2370F4948();
}

uint64_t sub_2370DE9D4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2370F4858();
  }
}

uint64_t sub_2370DEA04()
{
  sub_2370F4928();
  sub_2370F4488();
  return sub_2370F4948();
}

uint64_t sub_2370DEA58(uint64_t a1)
{
  sub_2370F4928();
  sub_2370F4488();
  return sub_2370F4948();
}

BOOL _s15ContactProvider0A4ItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_2370DEF8C();
      sub_2370DC8F8(v5, v6, v7);
      sub_2370DC8F8(v3, v2, v4);

      if (sub_2370F4648())
      {
        if (v2 == v6 && v4 == v7)
        {
          goto LABEL_14;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_8:
    sub_2370DC8F8(*a2, *(a2 + 8), v7);
    sub_2370DC8F8(v3, v2, v4);
    sub_2370D2DE0(v3, v2, v4);
    v8 = v5;
    v9 = v6;
    v10 = v7;
LABEL_9:
    sub_2370D2DE0(v8, v9, v10);
    return 0;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_2370DEF8C();
  sub_2370DC8F8(v5, v6, v7);
  sub_2370DC8F8(v3, v2, v4);

  if ((sub_2370F4648() & 1) == 0)
  {
LABEL_15:

    sub_2370D2DE0(v3, v2, v4);
    v8 = v5;
    v9 = v6;
    v10 = v7;
    goto LABEL_9;
  }

  if (v2 == v6 && v4 == v7)
  {
LABEL_14:
    sub_2370D2DE0(v3, v2, v4);
    sub_2370D2DE0(v5, v2, v4);

    return 1;
  }

LABEL_17:
  v12 = sub_2370F4858();
  sub_2370D2DE0(v3, v2, v4);
  sub_2370D2DE0(v5, v6, v7);

  return (v12 & 1) != 0;
}

unint64_t sub_2370DED94()
{
  result = qword_27DE92928;
  if (!qword_27DE92928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92928);
  }

  return result;
}

unint64_t sub_2370DEDEC()
{
  result = qword_27DE92930;
  if (!qword_27DE92930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92930);
  }

  return result;
}

uint64_t sub_2370DEE4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2370DEE94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2370DEEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2370DEF40(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2370DEF8C()
{
  result = qword_27DE92938;
  if (!qword_27DE92938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE92938);
  }

  return result;
}

uint64_t static ContactItemSyncAnchor.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_2370D9668(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t ContactItemSyncAnchor.init(generationMarker:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ContactItemSyncAnchor.generationMarker.getter()
{
  v1 = *v0;
  sub_2370CFCFC(*v0, *(v0 + 8));
  return v1;
}

uint64_t ContactItemSyncAnchor.generationMarker.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2370CF958(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_2370DF0E4(uint64_t a1)
{
  v2 = sub_2370DF50C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2370DF120(uint64_t a1)
{
  v2 = sub_2370DF50C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactItemSyncAnchor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92940, &qword_2370F61A0);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2370CFCFC(v7, v8);
  sub_2370DF50C();
  sub_2370F4968();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_2370D9824();
  sub_2370F4828();
  sub_2370CF958(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_2370F4818();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t ContactItemSyncAnchor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92950, &qword_2370F61A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2370DF50C();
  sub_2370F4958();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = 0;
  sub_2370D9878();
  sub_2370F4808();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v11 = sub_2370F47F8();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;
  sub_2370CFCFC(v10, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2370CF958(v10, v9);
}

unint64_t sub_2370DF50C()
{
  result = qword_27DE92948;
  if (!qword_27DE92948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92948);
  }

  return result;
}

unint64_t sub_2370DF584()
{
  result = qword_27DE92958;
  if (!qword_27DE92958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92958);
  }

  return result;
}

unint64_t sub_2370DF5DC()
{
  result = qword_27DE92960;
  if (!qword_27DE92960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92960);
  }

  return result;
}

unint64_t sub_2370DF634()
{
  result = qword_27DE92968;
  if (!qword_27DE92968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE92968);
  }

  return result;
}

uint64_t sub_2370DF688(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = sub_2370F4358();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  result = sub_2370F4378();
  HIDWORD(v35) = a3;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  v12 = a1 >> 32;
  if (a1 >> 32)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v30 = (a1 & 0x3F) << 8;
    v31 = (a1 >> 6) + v30 + 33217;
    v32 = (v30 | (a1 >> 6) & 0x3F) << 8;
    v33 = (a1 >> 18) + ((v32 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v34 = (a1 >> 12) + v32 + 8487393;
    if (v12)
    {
      v13 = v33;
    }

    else
    {
      v13 = v34;
    }

    if (a1 < 0x800)
    {
      v13 = v31;
    }

    goto LABEL_9;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  v12 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_15;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_16;
  }

  v13 = a1 + 1;
LABEL_9:
  v36 = ((v13 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v13) >> 3)))));
LABEL_10:
  v36 = sub_2370F4478();
  v37 = v14;

  MEMORY[0x2383C5040](46, 0xE100000000000000);

  v15 = v36;
  v16 = v37;
  sub_2370F4348();
  v17 = sub_2370F4338();
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  v36 = v15;
  v37 = v16;

  MEMORY[0x2383C5040](v17, v19);

  v21 = v36;
  v20 = v37;
  *(v3 + 16) = v36;
  *(v3 + 24) = v20;

  v22 = sub_2370F4368();
  v23 = sub_2370F4608();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_2370EE0B8(v21, v20, &v36);
    _os_log_impl(&dword_2370CC000, v22, v23, "Opening transaction - %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2383C5B60](v25, -1, -1);
    MEMORY[0x2383C5B60](v24, -1, -1);
  }

  v26 = BYTE4(v35);
  sub_2370F4468();

  v27 = os_transaction_create();

  *(v4 + 32) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for OSActivity();
  v28 = swift_allocObject();
  *(v28 + 32) = 0;
  *(v28 + 24) = 0;
  *(v28 + 16) = sub_2370E0174(a1, v26, &dword_2370CC000);
  swift_beginAccess();
  v29 = swift_unknownObjectRetain();
  os_activity_scope_enter(v29, (v28 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v4 + 40) = v28;

  return v4;
}

void sub_2370DFAA8()
{
  v1 = v0;
  v2 = *(v0 + 40);

  oslog = sub_2370F4368();
  if (v2)
  {
    v3 = sub_2370F4608();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_2370EE0B8(*(v1 + 16), *(v1 + 24), v11);
      _os_log_impl(&dword_2370CC000, oslog, v3, "Closing transaction - %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x2383C5B60](v5, -1, -1);
      MEMORY[0x2383C5B60](v4, -1, -1);
    }

    v6 = *(v1 + 40);
    if (v6)
    {
      swift_beginAccess();

      os_activity_scope_leave((v6 + 24));
      swift_endAccess();
    }

    *(v1 + 40) = 0;

    *(v1 + 32) = 0;
    swift_unknownObjectRelease();
    *(v1 + 48) = 1;
  }

  else
  {
    v7 = sub_2370F45F8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_2370EE0B8(*(v1 + 16), *(v1 + 24), v11);
      _os_log_impl(&dword_2370CC000, oslog, v7, "Transaction already closed - %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2383C5B60](v9, -1, -1);
      MEMORY[0x2383C5B60](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2370DFCF4()
{
  v1 = v0;
  v2 = sub_2370F4388();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(v1 + 40))
    {
      (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC15ContactProvider13OSTransaction_logger, v2);

      v6 = sub_2370F4368();
      v7 = sub_2370F45F8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12 = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_2370EE0B8(*(v1 + 16), *(v1 + 24), &v12);
        _os_log_impl(&dword_2370CC000, v6, v7, "Transaction left open - %{public}s. Call complete() on this transaction!", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x2383C5B60](v9, -1, -1);
        MEMORY[0x2383C5B60](v8, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }

    sub_2370DFAA8();
  }

  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC15ContactProvider13OSTransaction_logger, v2);
  return v1;
}

uint64_t sub_2370DFF08()
{
  sub_2370DFCF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for OSTransaction(uint64_t a1)
{
  result = qword_27DE92978;
  if (!qword_27DE92978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2370DFFB4(uint64_t a1)
{
  result = sub_2370F4388();
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

uint64_t sub_2370E0064()
{
  v1 = *v0;
  sub_2370F46D8();

  MEMORY[0x2383C5040](*(v1 + 16), *(v1 + 24));
  return 0x61736E617254534FLL;
}

uint64_t sub_2370E00DC()
{
  qword_27DE92990 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_2370E0118()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

os_activity_t sub_2370E0174(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_27DE92478 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_27DE92990;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_2370F4798();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_27DE92478 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_27DE92990, OS_ACTIVITY_FLAG_DEFAULT);
}

void *static SyncManager.shouldInvalidateForError(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    sub_2370CFD88();
    v2 = swift_allocError();
    *v3 = 7;
    v4 = v1;
    v5 = == infix(_:_:)(v1, v2);

    return (v5 & 1);
  }

  return result;
}

uint64_t static SyncManager.invalidateEnumerator(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2370CD798;

  return sub_2370E2410(a1);
}

uint64_t sub_2370E04B4()
{
  v0 = sub_2370F4388();
  __swift_allocate_value_buffer(v0, qword_27DE93E70);
  __swift_project_value_buffer(v0, qword_27DE93E70);
  return sub_2370F4378();
}

uint64_t static SyncManager.enumerationTimeoutLimit.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27DE92998 = a1;
  return result;
}

uint64_t static SyncManager.invalidateTimeoutLimit.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27DE929A0 = a1;
  return result;
}

uint64_t sub_2370E0730(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t SyncManager.__allocating_init(store:)(void *a1)
{
  sub_2370CFF28(a1, v5);
  type metadata accessor for ExtensionState();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v2 + 112) = 0;
  type metadata accessor for SyncManager();
  v3 = swift_allocObject();
  *(v3 + 56) = 0;
  sub_2370CFE24(v5, v3 + 16);
  *(v3 + 64) = v2;
  return v3;
}

uint64_t SyncManager.__allocating_init(store:extensionState:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_2370E28B8(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t SyncManager.init(store:extensionState:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_2370E2394(v9, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_2370E094C(void *a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v4 = a1[1];
  v3[39] = *a1;
  v3[40] = v4;
  return MEMORY[0x2822009F8](sub_2370E0974, 0, 0);
}

uint64_t sub_2370E0974()
{
  v1 = *(*(v0 + 304) + 64);
  *(v0 + 328) = v1;

  return MEMORY[0x2822009F8](sub_2370E09EC, v1, 0);
}

uint64_t sub_2370E09EC()
{
  *(v0 + 416) = *(*(v0 + 328) + 112);

  return MEMORY[0x2822009F8](sub_2370E0A5C, 0, 0);
}

uint64_t sub_2370E0A5C()
{
  v39 = v0;
  if (*(v0 + 416))
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v1 = sub_2370F4388();
    __swift_project_value_buffer(v1, qword_27DE93E70);
    v2 = sub_2370F4368();
    v3 = sub_2370F4608();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 8;
      goto LABEL_14;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2370CC000, v2, v3, "ItemContentSession not starting, extension was invalidated", v4, 2u);
    v5 = 8;
LABEL_6:
    MEMORY[0x2383C5B60](v4, -1, -1);
LABEL_14:

    sub_2370CFD88();
    swift_allocError();
    *v17 = v5;
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }

  v6 = *(v0 + 304);
  v7 = v6[5];
  v8 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v7);
  (*(v8 + 136))(v7, v8);
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  if ((*(v10 + 72))(v9, v10))
  {
    v11 = *(v0 + 304);
    v12 = v11[5];
    v13 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
    (*(v13 + 88))(&v37, v12, v13);
    *(v0 + 360) = v37;
    v14 = v38;
    *(v0 + 368) = v38;
    if (v14 >> 60 == 15)
    {
      if (qword_27DE92480 != -1)
      {
        swift_once();
      }

      v15 = sub_2370F4388();
      __swift_project_value_buffer(v15, qword_27DE93E70);
      v2 = sub_2370F4368();
      v16 = sub_2370F45F8();
      v5 = 2;
      if (!os_log_type_enabled(v2, v16))
      {
        goto LABEL_14;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2370CC000, v2, v16, "ItemChangeSession not starting, have no sync anchor, throwing cannot enumerate", v4, 2u);
      goto LABEL_6;
    }

    v36 = *(*(v0 + 304) + 64);
    *(v0 + 384) = v36;

    return MEMORY[0x2822009F8](sub_2370E14DC, v36, 0);
  }

  else
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v20 = sub_2370F4388();
    *(v0 + 336) = __swift_project_value_buffer(v20, qword_27DE93E70);
    v21 = sub_2370F4368();
    v22 = sub_2370F4608();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2370CC000, v21, v22, "ItemContentSession starting", v23, 2u);
      MEMORY[0x2383C5B60](v23, -1, -1);
    }

    v24 = *(v0 + 296);
    v25 = *(v0 + 304);

    sub_2370CFF28(v24, v0 + 16);
    sub_2370CFF28((v6 + 2), v0 + 56);
    swift_beginAccess();
    v26 = *(v25 + 56);
    v27 = *(v25 + 64);
    type metadata accessor for ItemContentSession();
    v28 = swift_allocObject();
    *(v0 + 344) = v28;
    *(v28 + 152) = 0;
    *(v28 + 160) = 0;
    *(v28 + 144) = 0;
    *(v28 + 168) = xmmword_2370F6500;
    *(v28 + 192) = xmmword_2370F6510;
    sub_2370CFF28(v0 + 16, v28 + 16);
    sub_2370CFF28(v0 + 56, v28 + 56);
    *(v28 + 96) = v26;
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
    v37 = 0x746F6F722ELL;
    *&v38 = 0xE500000000000000;
    v31 = *(v30 + 8);

    v31(&v37, v29, v30);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    *(v28 + 184) = v27;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v32 = v6[5];
    v33 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v32);
    (*(v33 + 80))(v32, v33);
    v34 = *(v0 + 216);
    *(v0 + 224) = *(v0 + 200);
    *(v0 + 240) = v34;
    v35 = swift_task_alloc();
    *(v0 + 352) = v35;
    *v35 = v0;
    v35[1] = sub_2370E100C;

    return sub_2370D0224(v0 + 224);
  }
}

uint64_t sub_2370E100C()
{
  v1 = *v0;

  sub_2370CF958(*(v1 + 224), *(v1 + 232));

  return MEMORY[0x2822009F8](sub_2370E1138, 0, 0);
}

uint64_t sub_2370E1138()
{
  v30 = v0;
  v1 = *(*(v0 + 344) + 152);
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = sub_2370F4368();
    v5 = sub_2370F4608();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2370CC000, v4, v5, "ItemContentSession ended, throwing error %@", v6, 0xCu);
      sub_2370D01B8(v7);
      MEMORY[0x2383C5B60](v7, -1, -1);
      MEMORY[0x2383C5B60](v6, -1, -1);
    }

    swift_willThrow();

LABEL_13:
    v25 = *(v0 + 8);

    return v25();
  }

  v10 = *(v0 + 304);
  v11 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  (*(v12 + 136))(v11, v12);
  v13 = sub_2370F4368();
  v14 = sub_2370F4608();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2370CC000, v13, v14, "ItemContentSession ended", v15, 2u);
    MEMORY[0x2383C5B60](v15, -1, -1);
  }

  v16 = *(v0 + 304);
  v17 = v16[5];
  v18 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v17);
  (*(v18 + 88))(&v28, v17, v18);
  *(v0 + 360) = v28;
  v19 = v29;
  *(v0 + 368) = v29;
  if (v19 >> 60 == 15)
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v20 = sub_2370F4388();
    __swift_project_value_buffer(v20, qword_27DE93E70);
    v21 = sub_2370F4368();
    v22 = sub_2370F45F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2370CC000, v21, v22, "ItemChangeSession not starting, have no sync anchor, throwing cannot enumerate", v23, 2u);
      MEMORY[0x2383C5B60](v23, -1, -1);
    }

    sub_2370CFD88();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  v27 = *(*(v0 + 304) + 64);
  *(v0 + 384) = v27;

  return MEMORY[0x2822009F8](sub_2370E14DC, v27, 0);
}

uint64_t sub_2370E14DC()
{
  *(v0 + 417) = *(*(v0 + 384) + 112);

  return MEMORY[0x2822009F8](sub_2370E154C, 0, 0);
}

uint64_t sub_2370E154C()
{
  v28 = v0;
  if (*(v0 + 417))
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v1 = sub_2370F4388();
    __swift_project_value_buffer(v1, qword_27DE93E70);
    v2 = sub_2370F4368();
    v3 = sub_2370F4608();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2370CC000, v2, v3, "ItemChangeSession not starting, extension was invalidated", v4, 2u);
      MEMORY[0x2383C5B60](v4, -1, -1);
    }

    v5 = *(v0 + 368);
    v6 = *(v0 + 360);

    sub_2370CFD88();
    swift_allocError();
    *v7 = 8;
    swift_willThrow();
    sub_2370CF944(v6, v5);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    if (qword_27DE92480 != -1)
    {
      swift_once();
    }

    v10 = sub_2370F4388();
    *(v0 + 392) = __swift_project_value_buffer(v10, qword_27DE93E70);
    v11 = sub_2370F4368();
    v12 = sub_2370F4608();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2370CC000, v11, v12, "ItemChangeSession starting", v13, 2u);
      MEMORY[0x2383C5B60](v13, -1, -1);
    }

    v14 = *(v0 + 376);
    v26 = *(v0 + 360);
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);

    sub_2370CFF28(v17, v0 + 96);
    sub_2370CFF28(v18 + 16, v0 + 136);
    swift_beginAccess();
    v19 = *(v18 + 56);
    v20 = *(v18 + 64);
    type metadata accessor for ItemChangeSession();
    v21 = swift_allocObject();
    *(v0 + 400) = v21;
    *(v21 + 152) = 0;
    *(v21 + 160) = 0;
    *(v21 + 144) = 0;
    *(v21 + 168) = xmmword_2370F6500;
    *(v21 + 192) = xmmword_2370F6510;
    sub_2370CFF28(v0 + 96, v21 + 16);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v22);
    v27[0] = v16;
    v27[1] = v15;
    v24 = *(v23 + 8);

    v24(v27, v22, v23);
    sub_2370CFE24((v0 + 136), v21 + 56);
    *(v21 + 96) = v19;
    *(v21 + 184) = v20;
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    *(v0 + 272) = v26;
    *(v0 + 288) = v14;
    v25 = swift_task_alloc();
    *(v0 + 408) = v25;
    *v25 = v0;
    v25[1] = sub_2370E18F4;

    return sub_2370CDB74(v0 + 272);
  }
}

uint64_t sub_2370E18F4()
{

  return MEMORY[0x2822009F8](sub_2370E19F0, 0, 0);
}

uint64_t sub_2370E19F0()
{
  v1 = *(v0[50] + 152);
  if (v1)
  {
    v2 = v1;
    v3 = v1;
    v4 = sub_2370F4368();
    v5 = sub_2370F4608();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2370CC000, v4, v5, "ItemChangeSession ended, throwing error %{public}@", v6, 0xCu);
      sub_2370D01B8(v7);
      MEMORY[0x2383C5B60](v7, -1, -1);
      MEMORY[0x2383C5B60](v6, -1, -1);
    }

    v10 = v0[46];
    v11 = v0[45];

    swift_willThrow();

    sub_2370CF944(v11, v10);
    v12 = v0[1];
  }

  else
  {
    v13 = v0[38];
    v14 = v13[5];
    v15 = v13[6];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v14);
    (*(v15 + 136))(v14, v15);
    v16 = sub_2370F4368();
    v17 = sub_2370F4608();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2370CC000, v16, v17, "ItemChangeSession ended", v18, 2u);
      MEMORY[0x2383C5B60](v18, -1, -1);
    }

    sub_2370CF944(v0[45], v0[46]);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_2370E1C38(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v2[2] = *a1;
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_2370E1CE8;

  return sub_2370E094C(v2 + 2, a2);
}

uint64_t sub_2370E1CE8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2370E1E1C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2370E1E54()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2370E1F78;

  return v6(v2, v3);
}

uint64_t sub_2370E1F78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SyncManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t SyncManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2370E20D8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v2[2] = *a1;
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_2370E218C;

  return sub_2370E094C(v2 + 2, a2);
}

uint64_t sub_2370E218C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2370E3138, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2370E22C0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2370E2320(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2370E2394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 16));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 56) = 0;
  *(a3 + 64) = a2;
  return a3;
}

uint64_t sub_2370E2430()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  sub_2370CFF28(v1, v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  sub_2370CFE24((v0 + 16), v2 + 16);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_2370E2578;

  return (sub_2370E3BDC)();
}

uint64_t sub_2370E2578()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2370E26A8;
  }

  else
  {

    v2 = sub_2370E2694;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E26A8()
{

  if (qword_27DE92480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2370F4388();
  __swift_project_value_buffer(v2, qword_27DE93E70);
  v3 = v1;
  v4 = sub_2370F4368();
  v5 = sub_2370F4608();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2370CC000, v4, v5, "ContactItemEnumerator.invalidate() error %{public}@", v8, 0xCu);
    sub_2370D01B8(v9);
    MEMORY[0x2383C5B60](v9, -1, -1);
    MEMORY[0x2383C5B60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2370E28B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncManager();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
  (*(v9 + 32))(boxed_opaque_existential_1, v11, a4);
  *(v12 + 56) = 0;
  *(v12 + 64) = a2;
  return v12;
}

uint64_t sub_2370E29D0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27DE92998;
  return result;
}

uint64_t sub_2370E2A1C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27DE92998 = v1;
  return result;
}

uint64_t sub_2370E2A64@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27DE929A0;
  return result;
}

uint64_t sub_2370E2AB0(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27DE929A0 = v1;
  return result;
}

uint64_t sub_2370E2AF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_2370E2B40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t dispatch thunk of SyncManagerProtocol.signalEnumerator(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2370D0220;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SyncManager.sync(for:using:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2370D0220;

  return v8(a1, a2);
}

uint64_t dispatch thunk of SyncManager.signalEnumerator(for:using:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2370CD798;

  return v8(a1, a2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2370E3064()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2370E309C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2370D0220;

  return sub_2370E1E34(a1, v1 + 16);
}

uint64_t ContactProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_2370F4928();
  MEMORY[0x2383C54E0](v1);
  return sub_2370F4948();
}

uint64_t sub_2370E31C0(uint64_t a1)
{
  v2 = sub_2370E3AA4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2370E31FC(uint64_t a1)
{
  v2 = sub_2370E3AA4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t ContactProviderError.errorDescription.getter()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  if (v2 <= 4)
  {
    v7 = 0xD000000000000025;
    v8 = 0xD000000000000028;
    if (v2 != 3)
    {
      v8 = 0xD000000000000031;
    }

    if (v2 != 2)
    {
      v7 = v8;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000034;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v3 = 0xD00000000000004ELL;
    v4 = 0xD000000000000023;
    if (v2 != 9)
    {
      v4 = 0xD000000000000027;
    }

    if (v2 != 8)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000024;
    if (v2 == 6)
    {
      v5 = 0xD00000000000002BLL;
    }

    if (v2 == 5)
    {
      v5 = 0xD00000000000003CLL;
    }

    if (*v0 <= 7u)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t ContactProviderError.failureReason.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000064;
  v3 = 0xD000000000000066;
  if (v1 != 7)
  {
    v3 = 0;
  }

  if (v1 != 9)
  {
    v2 = v3;
  }

  if (v1 == 10)
  {
    return 0xD000000000000067;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2370E33F8()
{
  v1 = *v0;
  v2 = 0xD000000000000064;
  v3 = 0xD000000000000066;
  if (v1 != 7)
  {
    v3 = 0;
  }

  if (v1 != 9)
  {
    v2 = v3;
  }

  if (v1 == 10)
  {
    return 0xD000000000000067;
  }

  else
  {
    return v2;
  }
}

unint64_t ContactProviderError.errorUserInfo.getter()
{
  v0 = ContactProviderError.errorDescription.getter();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE929A8, &unk_2370F6600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2370F5610;
  *(inited + 32) = sub_2370F4458();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = v0;
  *(inited + 56) = v2;
  v5 = sub_2370D68CC(inited);
  swift_setDeallocating();
  sub_2370E3888(inited + 32);
  return v5;
}

void *_s15ContactProvider0aB5ErrorO12remapNSErrorys0C0_psAE_pFZ_0(void *a1)
{
  v2 = sub_2370F42F8();
  v3 = [v2 domain];
  v4 = sub_2370F4458();
  v6 = v5;

  sub_2370E3AA4();
  if (v4 == sub_2370F4298() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_2370F4858();

    if ((v9 & 1) == 0)
    {
LABEL_6:
      v10 = a1;
      goto LABEL_7;
    }
  }

  v12 = [v2 code];
  if (v12 <= 1004)
  {
    if (v12 <= 1001)
    {
      if (v12 == 1000)
      {
        sub_2370CFD88();
        a1 = swift_allocError();
        *v17 = 0;
        goto LABEL_7;
      }

      if (v12 == 1001)
      {
        sub_2370CFD88();
        a1 = swift_allocError();
        *v16 = 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v12 == 1002)
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v21 = 2;
    }

    else if (v12 == 1003)
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v18 = 3;
    }

    else
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v14 = 4;
    }
  }

  else
  {
    if (v12 > 1007)
    {
      switch(v12)
      {
        case 1008:
          sub_2370CFD88();
          a1 = swift_allocError();
          *v23 = 8;
          goto LABEL_7;
        case 1009:
          sub_2370CFD88();
          a1 = swift_allocError();
          *v20 = 9;
          goto LABEL_7;
        case 1010:
          sub_2370CFD88();
          a1 = swift_allocError();
          *v15 = 10;
          goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (v12 == 1005)
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v22 = 5;
    }

    else if (v12 == 1006)
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v19 = 6;
    }

    else
    {
      sub_2370CFD88();
      a1 = swift_allocError();
      *v13 = 7;
    }
  }

LABEL_7:

  return a1;
}

uint64_t sub_2370E3888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92800, &qword_2370F5A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2370E38F4()
{
  result = qword_27DE929B0;
  if (!qword_27DE929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE929B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactProviderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactProviderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2370E3AA4()
{
  result = qword_27DE929B8[0];
  if (!qword_27DE929B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DE929B8);
  }

  return result;
}

uint64_t sub_2370E3B00(uint64_t a1)
{
  result = sub_2370F4388();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2370E3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2370F4758();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_2370F4778();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2370E3D0C, 0, 0);
}

uint64_t sub_2370E3D0C(uint64_t a1)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v15 = *(v1 + 40);
  sub_2370F4768();
  sub_2370F4738();
  sub_2370F4748();
  v7 = *(v6 + 8);
  *(v1 + 112) = v7;
  *(v1 + 120) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v8 = swift_task_alloc();
  *(v1 + 128) = v8;
  *(v8 + 16) = v15;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  v9 = swift_task_alloc();
  *(v1 + 136) = v9;
  *v9 = v1;
  v9[1] = sub_2370E3E80;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x277D84F78] + 8;
  v12 = MEMORY[0x277D84F78] + 8;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v10, v11, v12, 0, 0, &unk_2370F54A0, v8, v13);
}

uint64_t sub_2370E3E80()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2370E4054;
  }

  else
  {

    v2 = sub_2370E3F9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2370E3F9C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  (*(v0 + 112))(*(v0 + 80), *(v0 + 56));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2370E4054()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v2(v5, v6);
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2370E4144(char a1)
{
  sub_2370F4928();
  MEMORY[0x2383C54E0](a1 & 1);
  return sub_2370F4948();
}

uint64_t sub_2370E418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return static Equatable<>.== infix(_:_:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_2370E4218(uint64_t a1)
{
  sub_2370F4928();
  sub_2370E411C(v3, *v1);
  return sub_2370F4948();
}

uint64_t sub_2370E4260(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_2370F4568();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  sub_2370E443C(0, 0, v9, &unk_2370F68E8, v11);
}

uint64_t sub_2370E4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_2370D0220;

  return sub_2370E4AE8(a5, a6, a7);
}

uint64_t sub_2370E443C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE92A40, &qword_2370F6840);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2370E9B40(a3, v25 - v10);
  v12 = sub_2370F4568();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2370E9CE8(v11, &qword_27DE92A40, &qword_2370F6840);
  }

  else
  {
    sub_2370F4558();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2370F4508();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2370F4468() + 32;
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

      sub_2370E9CE8(a3, &qword_27DE92A40, &qword_2370F6840);

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

  sub_2370E9CE8(a3, &qword_27DE92A40, &qword_2370F6840);
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

uint64_t sub_2370E472C(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_2370E4260(v8, sub_2370EA4AC, v7);
}