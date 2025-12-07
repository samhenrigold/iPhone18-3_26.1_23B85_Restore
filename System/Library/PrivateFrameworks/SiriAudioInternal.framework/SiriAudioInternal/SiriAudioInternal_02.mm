uint64_t sub_26624C8E0(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v57 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#remove#fromAddMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateAddMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_266266BB8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2662670D8();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateAddMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_266266BB8();

              v59 = v45;
              sub_26624AAC4(v34);

              if (v59)
              {
                v46 = sub_266266B98();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_266266968();
    v49 = sub_266266D78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_26621EAF0(v58, a2, &v59);
      _os_log_impl(&dword_266219000, v48, v49, "InternalSignalsManager#remove#fromAddMediaIntent removed %s from addMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);
    }

    v56(v47, v5);

    sub_266265E88();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#remove#fromAddMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v56(v9, v5);

    sub_266265E88();
  }
}

uint64_t sub_26624CF14(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v57 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#remove#fromUpdateMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateUpdateMediaAffinityIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_266266BB8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2662670D8();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateUpdateMediaAffinityIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_266266BB8();

              v59 = v45;
              sub_26624AAC4(v34);

              if (v59)
              {
                v46 = sub_266266B98();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_266266968();
    v49 = sub_266266D78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_26621EAF0(v58, a2, &v59);
      _os_log_impl(&dword_266219000, v48, v49, "InternalSignalsManager#remove#fromUpdateMediaIntent removed %s from updateMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);
    }

    v56(v47, v5);

    sub_266265E88();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#remove#fromUpdateMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v56(v9, v5);

    sub_266265E88();
  }
}

uint64_t sub_26624D548(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v57 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#remove#fromSearchMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privateSearchForMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_266266BB8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2662670D8();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privateSearchForMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_266266BB8();

              v59 = v45;
              sub_26624AAC4(v34);

              if (v59)
              {
                v46 = sub_266266B98();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_266266968();
    v49 = sub_266266D78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_26621EAF0(v58, a2, &v59);
      _os_log_impl(&dword_266219000, v48, v49, "InternalSignalsManager#remove#fromSearchMediaIntent removed %s from searchMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);
    }

    v56(v47, v5);

    sub_266265E88();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#remove#fromSearchMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v56(v9, v5);

    sub_266265E88();
  }
}

uint64_t *logObject.unsafeMutableAddressor()
{
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  return &logObject;
}

uint64_t sub_26624DBF0()
{
  sub_26624DC58();
  result = sub_266266FA8();
  logObject = result;
  return result;
}

unint64_t sub_26624DC58()
{
  result = qword_280069B08;
  if (!qword_280069B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280069B08);
  }

  return result;
}

uint64_t sub_26624DCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x4E74736163646F70;
  v5 = 0xEB00000000656D61;
  v6 = 0xEC000000656D614ELL;
  if (a1 != 4)
  {
    v6 = 0xEC00000065707954;
  }

  if (a1 != 3)
  {
    v4 = 0x7473696C79616C70;
    v5 = v6;
  }

  v7 = 0x614E747369747261;
  v8 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v7 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x656D614E676E6F73;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000656D61;
      if (v9 != 0x4E74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 1701667150;
      }

      else
      {
        v12 = 1701869908;
      }

      v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000656DLL;
      if (v9 != 0x614E747369747261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000065;
      if (v9 != 0x6D614E6F69646172)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656D614E676E6F73)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_2662670D8();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_26624DEB0(unsigned __int8 a1)
{
  sub_266267158();
  sub_266266AB8();

  return sub_266267178();
}

uint64_t sub_26624DFD8(uint64_t a1, unsigned __int8 a2)
{
  sub_266267158();
  sub_266266AB8();

  return sub_266267178();
}

unint64_t sub_26624E0FC(char a1)
{
  result = 0x7974696E69666661;
  switch(a1)
  {
    case 1:
      result = 0x6E69666661736964;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x646F504179616C70;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6973754D79616C70;
      break;
    case 6:
      result = 0x5979425879616C70;
      break;
    case 7:
      result = 0x6974724179616C70;
      break;
    case 8:
      result = 0x6964615279616C70;
      break;
    case 9:
      result = 0x79616C5079616C70;
      break;
    case 10:
      result = 0x4E65685479616C70;
      break;
    case 11:
      result = 0x6572616873;
      break;
    case 12:
      result = 0x656C6666756873;
      break;
    case 13:
      result = 0x676E6F5374616877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26624E2DC()
{
  v1 = *v0;
  sub_266267158();
  sub_26624E0FC(v1);
  sub_266266AB8();

  return sub_266267178();
}

uint64_t sub_26624E340(uint64_t a1)
{
  sub_26624E0FC(*v1);
  sub_266266AB8();
}

uint64_t sub_26624E394(uint64_t a1)
{
  v2 = *v1;
  sub_266267158();
  sub_26624E0FC(v2);
  sub_266266AB8();

  return sub_266267178();
}

unint64_t sub_26624E3F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266250B14(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26624E424@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26624E0FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26624E450(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_26624E0FC(*a1);
  v5 = v4;
  if (v3 == sub_26624E0FC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2662670D8();
  }

  return v8 & 1;
}

uint64_t sub_26624E4E0(uint64_t a1)
{
  sub_266266AB8();
}

unint64_t sub_26624E5F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266250B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26624E628(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E676E6F73;
  v5 = 0xEB00000000656D61;
  v6 = 0x4E74736163646F70;
  v7 = 0xEC000000656D614ELL;
  if (v2 != 4)
  {
    v7 = 0xEC00000065707954;
  }

  if (v2 != 3)
  {
    v6 = 0x7473696C79616C70;
    v5 = v7;
  }

  v8 = 0xEA0000000000656DLL;
  v9 = 0x614E747369747261;
  if (v2 != 1)
  {
    v9 = 0x6D614E6F69646172;
    v8 = 0xE900000000000065;
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

uint64_t sub_26624E714()
{
  v0 = sub_2662667A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v4 = qword_2800694B8;
  v26 = qword_28006A4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v24 = 0x8000000266269680;
  v25 = 0x80000002662696A0;
  v23 = qword_28006A4C8;
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D60B98], v0);

  v21 = sub_266235BCC(0, v3);
  (*(v1 + 8))(v3, v0);
  v22 = 0x8000000266269700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  sub_266266808();
  v6 = swift_allocObject();
  v27 = xmmword_266267DB0;
  *(v6 + 16) = xmmword_266267DB0;
  sub_266266828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v27;
  v9 = *MEMORY[0x277D607E8];
  v10 = sub_266266728();
  (*(*(v10 - 8) + 104))(v8 + v7, v9, v10);
  v5((v8 + v7), *MEMORY[0x277D60BA0], v0);
  qword_28006A5F0 = 0;
  unk_28006A5E0 = 0u;
  unk_28006A5D0 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v11 = (type metadata accessor for SignalDefinition(0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v27;
  v14 = (v13 + v12);
  v15 = v11[7];
  *(v13 + v12 + v15) = v8;
  v16 = *MEMORY[0x277D61060];
  v17 = sub_266266838();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  (*(v18 + 56))(v14 + v15, 0, 1, v17);
  v19 = v14 + v11[8];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *v14 = v21;
  qword_28006A538 = 0xD000000000000019;
  qword_28006A540 = v24;
  unk_28006A548 = 0xD000000000000056;
  qword_28006A550 = v25;
  unk_28006A558 = v26;
  qword_28006A560 = v23;
  unk_28006A568 = v13;
  qword_28006A570 = 0x7974696E69666661;
  qword_28006A578 = 0xE800000000000000;
  unk_28006A580 = 0xD000000000000010;
  qword_28006A588 = v22;
  word_28006A590 = 256;
  qword_28006A598 = 0;
  unk_28006A5A0 = 0;
  qword_28006A5A8 = &unk_2877D9790;
  unk_28006A5B0 = v6;
  qword_28006A5B8 = v8;
  unk_28006A5C0 = sub_26624EC00;
  qword_28006A5C8 = 0;
  qword_28006A5F8 = MEMORY[0x277D84F90];
  unk_28006A600 = MEMORY[0x277D84F90];
}

uint64_t sub_26624EC00(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 != 2 && (v1 & 1) != 0)
  {
    return 0;
  }

  v3 = *a1;
  if (v3 == 2 || (v3 & 1) == 0)
  {
    return a1[33];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26624EC38()
{
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v0 = qword_2800694B8;
  v20 = qword_28006A4C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v19 = qword_28006A4C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  sub_266266808();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_266267DB0;

  sub_266266828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v2 = sub_2662667A8();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266267DB0;
  v6 = *MEMORY[0x277D607E8];
  v7 = sub_266266728();
  (*(*(v7 - 8) + 104))(v5 + v4, v6, v7);
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D60BA0], v2);
  qword_28006A6C0 = 0;
  *&algn_28006A6A0[16] = 0u;
  *algn_28006A6A0 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v8 = (type metadata accessor for SignalDefinition(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_266267DB0;
  v11 = (v10 + v9);
  v12 = v8[7];
  *(v10 + v9 + v12) = v5;
  v13 = *MEMORY[0x277D61060];
  v14 = sub_266266838();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v11[v12], v13, v14);
  (*(v15 + 56))(&v11[v12], 0, 1, v14);
  v16 = &v11[v8[8]];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = MEMORY[0x277D84F90];
  *v11 = MEMORY[0x277D84F90];
  qword_28006A608 = 0xD00000000000001CLL;
  unk_28006A610 = 0x8000000266269720;
  qword_28006A618 = 0xD000000000000056;
  qword_28006A620 = 0x80000002662696A0;
  unk_28006A628 = v20;
  qword_28006A630 = v19;
  unk_28006A638 = v10;
  qword_28006A640 = 0x6E69666661736964;
  qword_28006A648 = 0xEB00000000797469;
  unk_28006A650 = 0xD000000000000010;
  qword_28006A658 = 0x8000000266269700;
  word_28006A660 = 257;
  qword_28006A668 = 0;
  unk_28006A670 = 0;
  qword_28006A678 = &unk_2877D97E8;
  unk_28006A680 = v1;
  qword_28006A688 = v5;
  unk_28006A690 = sub_266226A7C;
  qword_28006A698 = 0;
  qword_28006A6C8 = v17;
  unk_28006A6D0 = v17;
}

double sub_26624F0C4()
{
  v0 = sub_266266478();
  v66 = *(v0 - 8);
  v67 = v0;
  MEMORY[0x28223BE20](v0);
  v65 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = (&v59 - v3);
  v63 = sub_2662667A8();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266266768();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  *&v77 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  if (qword_2800694B0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = qword_2800694B8;
    v64 = qword_28006A4C0;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(qword_28006A4C8 + 16);

    v76 = v15;
    if (!v15)
    {
      break;
    }

    v17 = 0;
    v74 = v6 + 16;
    LODWORD(v73) = *MEMORY[0x277D60988];
    v71 = (v6 + 32);
    v72 = v6 + 104;
    v78 = MEMORY[0x277D84F90];
    v69 = v13;
    v70 = v11;
    v75 = v16;
    v68 = v6 + 8;
    while (v17 < *(v16 + 16))
    {
      v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v19 = *(v6 + 72);
      (*(v6 + 16))(v13, v16 + v18 + v19 * v17, v5);
      (*(v6 + 104))(v11, v73, v5);
      sub_266250C1C(&qword_280069B30, MEMORY[0x277D609D0], MEMORY[0x277D609E8]);
      v20 = sub_266266A38();
      v21 = *(v6 + 8);
      v21(v11, v5);
      if (v20)
      {
        v21(v13, v5);
      }

      else
      {
        v22 = *v71;
        (*v71)(v77, v13, v5);
        v23 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v79 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266261BE8(0, *(v23 + 16) + 1, 1);
          v23 = v79;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_266261BE8((v25 > 1), v26 + 1, 1);
          v23 = v79;
        }

        v78 = v23;
        *(v23 + 16) = v26 + 1;
        v22(v23 + v18 + v26 * v19, v77, v5);
        v13 = v69;
        v11 = v70;
      }

      ++v17;
      v16 = v75;
      if (v76 == v17)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v78 = MEMORY[0x277D84F90];
LABEL_16:

  v75 = 0x8000000266269740;
  v76 = 0x80000002662696A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v27 = (type metadata accessor for SignalDefinition(0) - 8);
  v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v29 = swift_allocObject();
  v77 = xmmword_266267DB0;
  v74 = v29;
  *(v29 + 16) = xmmword_266267DB0;
  v30 = (v29 + v28);
  v32 = v61;
  v33 = *(v61 + 104);
  v34 = v60;
  LODWORD(v72) = *MEMORY[0x277D60B78];
  v31 = v72;
  v35 = v63;
  (v33)(v60, v72, v63);
  v71 = v33;
  v73 = sub_266235BCC(4u, v34);
  v36 = *(v32 + 8);
  v32 += 8;
  v36(v34, v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v69 = *(v32 + 64);
  v70 = v37;
  v38 = (*(v32 + 72) + 32) & ~*(v32 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = v77;
  (v33)(v39 + v38, v31, v35);
  v40 = v62;
  *v62 = v39;
  v41 = *MEMORY[0x277D61060];
  v42 = sub_266266838();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v40, v41, v42);
  (*(v43 + 56))(v40, 0, 1, v42);
  v44 = v30 + v27[8];
  *(v44 + 4) = 0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *v30 = v73;
  sub_266250BAC(v40, v30 + v27[7]);
  v73 = 0x8000000266268C20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B18, &qword_266268808);
  sub_266266808();
  v45 = swift_allocObject();
  *(v45 + 16) = v77;
  sub_266266828();
  v46 = v69;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_266268250;
  v48 = *MEMORY[0x277D607E8];
  v49 = sub_266266728();
  (*(*(v49 - 8) + 104))(v47 + v38, v48, v49);
  v50 = v71;
  (v71)(v47 + v38, *MEMORY[0x277D60BA0], v35);
  (v50)(&v46[v47 + v38], v72, v35);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v80 + 1) = sub_266266748();
  v81 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v79);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B38, &qword_266268828);
  v51 = swift_allocObject();
  *(v51 + 16) = v77;
  v52 = v65;
  sub_266266458();
  PartyMusicSubscriber = type metadata accessor for FirstPartyMusicSubscriber();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D556E8];
  v56 = v67;
  v54[5] = v67;
  v54[6] = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54 + 2);
  (*(v66 + 32))(boxed_opaque_existential_1, v52, v56);
  *(v51 + 56) = PartyMusicSubscriber;
  *(v51 + 64) = sub_266250C1C(&qword_280069B40, type metadata accessor for FirstPartyMusicSubscriber, &protocol conformance descriptor for FirstPartyMusicSubscriber);
  *(v51 + 32) = v54;
  qword_28006A6D8 = 0xD000000000000021;
  unk_28006A6E0 = v75;
  qword_28006A6E8 = 0xD000000000000056;
  qword_28006A6F0 = v76;
  unk_28006A6F8 = v64;
  qword_28006A700 = v78;
  unk_28006A708 = v74;
  qword_28006A710 = 0xD000000000000010;
  unk_28006A718 = v73;
  qword_28006A720 = 0xD000000000000010;
  unk_28006A728 = 0x8000000266269700;
  word_28006A730 = 260;
  qword_28006A738 = 0;
  unk_28006A740 = 0;
  qword_28006A748 = &unk_2877D9820;
  unk_28006A750 = v45;
  result = *&v80;
  unk_28006A780 = v80;
  qword_28006A758 = v47;
  unk_28006A760 = sub_2662257D4;
  qword_28006A768 = 0;
  unk_28006A770 = v79;
  qword_28006A790 = v81;
  qword_28006A798 = MEMORY[0x277D84F90];
  unk_28006A7A0 = v51;
  return result;
}

uint64_t sub_26624FB30()
{
  v0 = sub_2662667A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800694B0 != -1)
  {
    swift_once();
  }

  v4 = qword_28006A4C0;
  v5 = qword_2800694B8;

  if (v5 != -1)
  {
    swift_once();
  }

  v28 = 0x8000000266269790;
  v29 = 0x80000002662696A0;
  v6 = qword_28006A4C8;
  v7 = *MEMORY[0x277D60B98];
  v8 = *(v1 + 104);
  v8(v3, v7, v0);

  v25 = sub_266235BCC(5u, v3);
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  v10(v3, v0);
  v26 = 0x8000000266269700;
  v27 = 0x80000002662697B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v11 = *(v9 + 64);
  v12 = (*(v9 + 72) + 32) & ~*(v9 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266268250;
  v14 = v13 + v12;
  v8(v14, v7, v0);
  v8((v14 + v11), *MEMORY[0x277D60B80], v0);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v31 + 1) = sub_266266748();
  v32 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v15 = (type metadata accessor for SignalDefinition(0) - 8);
  v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266267DB0;
  v18 = (v17 + v16);
  v19 = v15[7];
  *(v17 + v16 + v19) = v13;
  v20 = *MEMORY[0x277D61060];
  v21 = sub_266266838();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v18 + v19, v20, v21);
  (*(v22 + 56))(v18 + v19, 0, 1, v21);
  v23 = v18 + v15[8];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v18 = v25;
  qword_28006A7A8 = 0xD00000000000001ALL;
  qword_28006A7B0 = v28;
  unk_28006A7B8 = 0xD000000000000056;
  qword_28006A7C0 = v29;
  unk_28006A7C8 = v4;
  qword_28006A7D0 = v6;
  unk_28006A7D8 = v17;
  qword_28006A7E0 = 0x6973754D79616C70;
  qword_28006A7E8 = 0xE900000000000063;
  unk_28006A7F0 = 0xD000000000000010;
  qword_28006A7F8 = v26;
  word_28006A800 = 261;
  qword_28006A808 = 0xD000000000000011;
  unk_28006A810 = v27;
  qword_28006A818 = 0;
  unk_28006A820 = 0;
  unk_28006A850 = v31;
  qword_28006A828 = v13;
  unk_28006A830 = sub_2662257D4;
  qword_28006A838 = 0;
  unk_28006A840 = v30;
  qword_28006A860 = v32;
  unk_28006A868 = MEMORY[0x277D84F90];
  qword_28006A870 = MEMORY[0x277D84F90];
}

uint64_t sub_26624FFD8(void *a1)
{
  v2 = [a1 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v4 = sub_266266BB8();

    v5 = v4 >> 62 ? sub_266267078() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
      return 0;
    }
  }

  v6 = [a1 mediaContainer];
  if (v6)
  {

    return 0;
  }

  return 1;
}

uint64_t sub_2662500A8()
{
  v0 = sub_2662667A8();
  v42 = *(v0 - 8);
  v43 = v0;
  MEMORY[0x28223BE20](v0);
  v41 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_266265BC8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  if (qword_2800694B0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = *(qword_28006A4C0 + 16);

    v10 = MEMORY[0x277D84F90];
    v50 = v8;
    if (!v8)
    {
      break;
    }

    v11 = 0;
    v47 = (v3 + 32);
    v48 = v3 + 16;
    v44 = (v3 + 8);
    v45 = v3;
    v46 = v2;
    v49 = v9;
    while (v11 < *(v9 + 16))
    {
      v53 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v54 = v10;
      v52 = *(v3 + 72);
      (*(v3 + 16))(v7, v9 + v53 + v52 * v11, v2);
      *&v55 = sub_266265BB8();
      *(&v55 + 1) = v12;
      MEMORY[0x28223BE20](v55);
      *(&v41 - 2) = &v55;
      v13 = v2;
      v14 = sub_266248E28(sub_26622F998, (&v41 - 4), &unk_2877D9870);
      swift_arrayDestroy();

      if (v14)
      {
        (*v44)(v7, v13);
        v10 = v54;
        v2 = v13;
      }

      else
      {
        v15 = *v47;
        (*v47)(v51, v7, v13);
        v10 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266261C2C(0, *(v10 + 16) + 1, 1);
          v10 = v58;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_266261C2C((v17 > 1), v18 + 1, 1);
          v10 = v58;
        }

        *(v10 + 16) = v18 + 1;
        v2 = v46;
        v15((v10 + v53 + v18 * v52), v51, v46);
        v3 = v45;
      }

      ++v11;
      v9 = v49;
      if (v50 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:
  v54 = v10;

  if (qword_2800694B8 != -1)
  {
    swift_once();
  }

  v52 = 0x8000000266269770;
  v53 = 0x80000002662696A0;
  v19 = qword_28006A4C8;
  v20 = *MEMORY[0x277D60B98];
  v22 = v41;
  v21 = v42;
  v23 = *(v42 + 104);
  v24 = v43;
  v23(v41, v20, v43);

  v25 = sub_266235BCC(0xAu, v22);
  v26 = *(v21 + 8);
  v21 += 8;
  v26(v22, v24);
  v51 = 0x8000000266269700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B20, &qword_266268810);
  v27 = *(v21 + 64);
  v28 = (*(v21 + 72) + 32) & ~*(v21 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_266268250;
  v30 = v29 + v28;
  v23(v30, v20, v24);
  v23((v30 + v27), *MEMORY[0x277D60B80], v24);
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  *(&v56 + 1) = sub_266266748();
  v57 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_1(&v55);
  sub_266266738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069B28, &qword_266268818);
  v31 = (type metadata accessor for SignalDefinition(0) - 8);
  v32 = (*(*v31 + 80) + 32) & ~*(*v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_266267DB0;
  v34 = (v33 + v32);
  v35 = v31[7];
  *(v34 + v35) = v29;
  v36 = *MEMORY[0x277D61060];
  v37 = sub_266266838();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v34 + v35, v36, v37);
  (*(v38 + 56))(v34 + v35, 0, 1, v37);
  v39 = v34 + v31[8];
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *v34 = v25;
  qword_28006A878 = 0xD00000000000001CLL;
  unk_28006A880 = v52;
  qword_28006A888 = 0xD000000000000056;
  qword_28006A890 = v53;
  unk_28006A898 = v54;
  qword_28006A8A0 = v19;
  unk_28006A8A8 = v33;
  qword_28006A8B0 = 0x4E65685479616C70;
  qword_28006A8B8 = 0xEB00000000737765;
  unk_28006A8C0 = 0xD000000000000010;
  qword_28006A8C8 = v51;
  word_28006A8D0 = 266;
  xmmword_28006A8D8 = 0u;
  unk_28006A8E8 = 0u;
  qword_28006A8F8 = v29;
  unk_28006A900 = sub_2662257D4;
  qword_28006A908 = 0;
  unk_28006A920 = v56;
  unk_28006A910 = v55;
  qword_28006A930 = v57;
  qword_28006A938 = MEMORY[0x277D84F90];
  unk_28006A940 = MEMORY[0x277D84F90];
}

unint64_t sub_2662507DC()
{
  if (sub_2662365D8(&unk_2877D9918))
  {
    return sub_2662363F0() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit0aB0O15IntentMatchable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_266250894(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_2662508DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSuggestion.ParameterName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.ParameterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266250AC0()
{
  result = qword_280069B10;
  if (!qword_280069B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069B10);
  }

  return result;
}

unint64_t sub_266250B14(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662670A8();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266250B60(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662670A8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266250BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266250C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AudioSuggestion.SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSuggestion.SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266250DC8()
{
  result = qword_280069B48;
  if (!qword_280069B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069B48);
  }

  return result;
}

uint64_t PodcastLibraryProvider.createLibraryController(completion:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_266266958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v6 = logObject;
  sub_266266938();
  sub_266266F38();
  sub_266266928();
  sub_266265C88();
  sub_266265C78();
  sub_266266F28();
  sub_266266928();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_266250FB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266266958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v6 = logObject;
  sub_266266938();
  sub_266266F38();
  sub_266266928();
  sub_266265C88();
  sub_266265C78();
  sub_266266F28();
  sub_266266928();
  return (*(v3 + 8))(v5, v2);
}

Swift::String __swiftcall INPlayMediaMediaItemResolutionResult.getAndClearExtraErrorInfo()()
{
  v1 = *(&xmmword_280069B50 + 1);
  v0 = xmmword_280069B50;
  *&xmmword_280069B50 = 0;
  *(&xmmword_280069B50 + 1) = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall INPlayMediaMediaItemResolutionResult.setExtraErrorInfo(extraErrorInfo:)(Swift::String extraErrorInfo)
{
  xmmword_280069B50 = extraErrorInfo;
}

uint64_t sub_2662511A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069D00, &qword_266268A40);
  swift_allocObject();
  result = sub_266266138();
  qword_280069B60 = result;
  return result;
}

uint64_t sub_26625120C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069D08, &qword_266268A48);
  swift_allocObject();
  result = sub_266265DF8();
  qword_280069B68 = result;
  return result;
}

uint64_t sub_266251288(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_2662665E8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  a1(v4);
  return sub_26622858C(v4, &unk_280069D10, &qword_266268600);
}

uint64_t sub_266251370()
{
  v0 = sub_266266A18();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266266A08();
  v4 = sub_266265FA8();
  result = (*(v1 + 8))(v3, v0);
  qword_280069B70 = v4;
  return result;
}

id INPlayMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INPlayMediaIntentHandler.init()()
{
  v0 = sub_266266548();
  v1 = *(v0 - 8);
  v53 = v0;
  v54 = v1;
  MEMORY[0x28223BE20](v0);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_266266378();
  v47 = v3;
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2662662D8();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_266265F98();
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662660F8();
  v51 = sub_2662660E8();
  v10 = sub_2662664D8();
  v11 = sub_2662664C8();
  v74[3] = v10;
  v74[4] = MEMORY[0x277D55728];
  v74[0] = v11;
  v46 = v9;
  sub_266265F88();
  sub_2662662C8();
  v12 = sub_266266218();
  v48 = sub_266266208();
  sub_266266368();
  v72 = v3;
  v73 = MEMORY[0x277D556B0];
  __swift_allocate_boxed_opaque_existential_1(v71);
  sub_266266368();
  v13 = sub_266265D38();
  v14 = sub_266265D28();
  v15 = MEMORY[0x277D55568];
  v69 = v13;
  v70 = MEMORY[0x277D55568];
  v68[0] = v14;
  v16 = sub_2662665B8();
  swift_allocObject();
  v45 = sub_2662665A8();
  v17 = sub_2662662B8();
  v44 = sub_2662662A8();
  v18 = sub_2662668C8();
  v19 = sub_2662668B8();
  v72 = v18;
  v73 = MEMORY[0x277D5FDD8];
  v71[0] = v19;
  v20 = sub_266265D58();
  swift_allocObject();
  v21 = sub_266265D48();
  v69 = v20;
  v70 = MEMORY[0x277D55570];
  v68[0] = v21;
  sub_266266538();
  v22 = sub_266266088();
  v23 = sub_266266078();
  v72 = v22;
  v73 = MEMORY[0x277D55660];
  v71[0] = v23;
  v24 = sub_266265D28();
  v69 = v13;
  v70 = v15;
  v68[0] = v24;
  v25 = type metadata accessor for INPlayMediaIntentHandler();
  v26 = objc_allocWithZone(v25);
  v67[3] = &type metadata for INLocalSearchProvider;
  v67[4] = &protocol witness table for INLocalSearchProvider;
  v67[0] = swift_allocObject();
  sub_266252478(v74, v67[0] + 16);
  v27 = v55;
  v66[3] = v55;
  v66[4] = MEMORY[0x277D55638];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(v58 + 16))(boxed_opaque_existential_1, v9, v27);
  v29 = v56;
  v65[3] = v56;
  v65[4] = MEMORY[0x277D55698];
  v30 = __swift_allocate_boxed_opaque_existential_1(v65);
  v31 = v49;
  (*(v57 + 16))(v30, v49, v29);
  v64[3] = v12;
  v64[4] = MEMORY[0x277D55678];
  v32 = v47;
  v64[0] = v48;
  v63[3] = v47;
  v63[4] = MEMORY[0x277D556B0];
  v33 = __swift_allocate_boxed_opaque_existential_1(v63);
  v34 = v52;
  v35 = v50;
  (*(v52 + 16))(v33, v50, v32);
  v62[3] = v16;
  v62[4] = MEMORY[0x277D557A0];
  v62[0] = v45;
  v61[3] = v17;
  v61[4] = MEMORY[0x277D55690];
  v61[0] = v44;
  v36 = v53;
  v60[3] = v53;
  v60[4] = MEMORY[0x277D55760];
  v37 = __swift_allocate_boxed_opaque_existential_1(v60);
  v38 = v54;
  v39 = v43;
  (*(v54 + 16))(v37, v43, v36);
  *&v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService] = v51;
  sub_266220C24(v67, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch]);
  sub_266220C24(v66, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider]);
  sub_266220C24(v65, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying]);
  sub_266220C24(v64, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider]);
  sub_266220C24(v62, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider]);
  sub_266220C24(v71, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider]);
  sub_266220C24(v63, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_featureFlagProvider]);
  sub_266220C24(v61, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nearDeviceProvider]);
  sub_266220C24(v68, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_siriKitTaskLoggingProvider]);
  sub_266220C24(v60, &v26[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_onscreenEntityProvider]);
  v59.receiver = v26;
  v59.super_class = v25;
  v40 = objc_msgSendSuper2(&v59, sel_init);
  (*(v38 + 8))(v39, v36);
  (*(v34 + 8))(v35, v32);
  (*(v57 + 8))(v31, v56);
  (*(v58 + 8))(v46, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  sub_2662524D4(v74);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v40;
}

id INPlayMediaIntentHandler.__allocating_init(playbackService:localSearch:deviceProvider:nowPlaying:seDeviceProvider:accountProvider:featureFlagProvider:appleMediaServicesProvider:nearDeviceProvider:siriKitTaskLoggingProvider:onscreenEntityProvider:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v42 = a2[4];
  v43 = a2[3];
  v46 = __swift_mutable_project_boxed_opaque_existential_1(a2, v43);
  v52 = a3;
  v41 = a3[3];
  v39 = a3[4];
  v44 = __swift_mutable_project_boxed_opaque_existential_1(a3, v41);
  v50 = a4;
  v36 = a4[3];
  v34 = a4[4];
  v40 = __swift_mutable_project_boxed_opaque_existential_1(a4, v36);
  v47 = a5;
  v16 = a5[3];
  v33 = a5[4];
  v37 = __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  v45 = a7;
  v17 = a7[3];
  v31 = a7[4];
  v35 = __swift_mutable_project_boxed_opaque_existential_1(a7, v17);
  v38 = a8;
  v18 = a8[3];
  v30 = a8[4];
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a8, v18);
  v19 = a9[3];
  v20 = a9[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  v23 = a11[3];
  v22 = a11[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a11, v23);
  *(&v29 + 1) = v20;
  *(&v28 + 1) = v31;
  *&v29 = v42;
  *&v28 = v33;
  *&v27 = v30;
  *(&v27 + 1) = v39;
  v25 = sub_266262570(a1, v46, v44, v40, v37, a6, v35, v32, v21, a10, v24, v49, v18, v41, v16, v17, v43, v19, v36, v23, v27, v28, v29, v34, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v25;
}

id INPlayMediaIntentHandler.init(playbackService:localSearch:deviceProvider:nowPlaying:seDeviceProvider:accountProvider:featureFlagProvider:appleMediaServicesProvider:nearDeviceProvider:siriKitTaskLoggingProvider:onscreenEntityProvider:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v80 = a6;
  v81 = a2;
  v82 = a11;
  v77 = a10;
  v78 = a1;
  v16 = a2[3];
  v75 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v72 = v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))();
  v20 = a3;
  v76 = a3;
  v21 = a3[3];
  v71 = v20[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v69 = v21;
  MEMORY[0x28223BE20](v22);
  v70 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))();
  v73 = a4;
  v25 = a4[3];
  v67 = a4[4];
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a4, v25);
  v65 = v25;
  MEMORY[0x28223BE20](v26);
  v66 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))();
  v68 = a5;
  v29 = a5[3];
  v63 = a5[4];
  v30 = __swift_mutable_project_boxed_opaque_existential_1(a5, v29);
  MEMORY[0x28223BE20](v30);
  v62 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))();
  v64 = a7;
  v33 = a7[3];
  v61 = a7[4];
  v34 = __swift_mutable_project_boxed_opaque_existential_1(a7, v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  v60 = a8;
  v38 = a8[3];
  v59 = a8[4];
  v39 = __swift_mutable_project_boxed_opaque_existential_1(a8, v38);
  MEMORY[0x28223BE20](v39);
  v41 = &v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  v58 = a9;
  v43 = a9[3];
  v57 = a9[4];
  v44 = __swift_mutable_project_boxed_opaque_existential_1(a9, v43);
  MEMORY[0x28223BE20](v44);
  v46 = &v56 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v46);
  v48 = v82[3];
  v49 = v82[4];
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v82, v48);
  MEMORY[0x28223BE20](v50);
  v52 = &v56 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52);
  v54 = sub_26626215C(v78, v74, v70, v66, v62, v80, v36, v41, v46, v77, v52, v79, v38, v69, v29, v33, v72, v43, v65, v48, v59, v71, v63, v61, v75, v57, v67, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  return v54;
}

uint64_t sub_266252440()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static INPlayMediaIntentHandler.removeContinuation(for:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v30 - v12;
  if (a2)
  {
    if (qword_280069568 != -1)
    {
      swift_once();
    }

    v30[1] = a1;
    v30[2] = a2;
    v14 = sub_266266128();
    if (v14)
    {
      v15 = v14;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v4, static Logger.default);
      swift_beginAccess();
      (*(v5 + 16))(v13, v16, v4);

      v17 = sub_266266968();
      v18 = sub_266266D58();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_26621EAF0(a1, a2, v30);
        _os_log_impl(&dword_266219000, v17, v18, "INPlayMediaIntentHandler#removeContinuation retrieved continuation for identifier: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x266780880](v20, -1, -1);
        MEMORY[0x266780880](v19, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      return v15;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v25, v4);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INPlayMediaIntentHandler#removeContinuation no continuation for identifier, returning no-op continuation", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v21, v4);
    v22 = sub_266266968();
    v23 = sub_266266D58();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266219000, v22, v23, "INPlayMediaIntentHandler#removeContinuation no identifier, returning no-op continuation", v24, 2u);
      MEMORY[0x266780880](v24, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  if (qword_280069570 != -1)
  {
    swift_once();
  }

  v15 = qword_280069B68;

  return v15;
}

uint64_t INPlayMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_2662669E8();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_266266A18();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = sub_266266968();
  v14 = sub_266266D68();

  if (os_log_type_enabled(v13, v14))
  {
    v32 = v4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = [v12 privatePlayMediaIntentData];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 audioSearchResults];

      if (v19)
      {
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        v18 = sub_266266BB8();
      }

      else
      {
        v18 = 0;
      }
    }

    v40 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069BE8, qword_266268988);
    v20 = sub_266266A68();
    v22 = sub_26621EAF0(v20, v21, aBlock);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_266219000, v13, v14, "INPlayMediaIntentHandler#resolveMediaItems looking at search results: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266780880](v16, -1, -1);
    MEMORY[0x266780880](v15, -1, -1);

    (*(v8 + 8))(v10, v7);
    v4 = v32;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (qword_280069578 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = v33;
  v26 = v34;
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v26;
  v24[5] = v12;
  aBlock[4] = sub_266262C60;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_266259D78;
  aBlock[3] = &block_descriptor_1;
  v27 = _Block_copy(aBlock);
  v28 = v12;

  v29 = v35;
  sub_2662669F8();
  v40 = MEMORY[0x277D84F90];
  sub_2662630A0(&qword_280069BD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069BD8, &qword_266268980);
  sub_266262C84();
  v30 = v37;
  sub_266266FD8();
  MEMORY[0x2667800E0](0, v29, v30, v27);
  _Block_release(v27);
  (*(v39 + 8))(v30, v4);
  (*(v36 + 8))(v29, v38);
}

uint64_t sub_266252FC8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v44 = a3;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_266266988();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = a4;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v19 = v5;
    v20 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v15, v20, v11);
    v21 = sub_266266968();
    v22 = sub_266266D78();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_266219000, v21, v22, "INPlayMediaIntentHandler#resolveMediaItems...", v23, 2u);
      MEMORY[0x266780880](v23, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v24 = swift_allocObject();
    *(v24 + 16) = v43;
    *(v24 + 24) = v44;
    v25 = qword_280069538;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = logObject;
    sub_266266938();
    v27 = v42;
    (*(v6 + 16))(v42, v10, v19);
    v28 = (*(v6 + 80) + 33) & ~*(v6 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = "playMediaIntentHandlerResolveMediaItems";
    *(v29 + 24) = 39;
    *(v29 + 32) = 2;
    (*(v6 + 32))(v29 + v28, v27, v19);
    v30 = (v29 + ((v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = sub_266241F94;
    v30[1] = v24;

    v31 = sub_266266F38();
    sub_266266918(v31, &dword_266219000, v26, "playMediaIntentHandlerResolveMediaItems", 39, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266262CEC;
    *(v32 + 24) = v29;
    MEMORY[0x28223BE20](v32);
    v33 = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CC8, &qword_266268A20);
    sub_266265E08();

    return (*(v6 + 8))(v10, v19);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v11, static Logger.default);
    swift_beginAccess();
    (*(v12 + 16))(v17, v35, v11);
    v36 = sub_266266968();
    v37 = sub_266266D68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "INPlayMediaIntentHandler#resolveMediaItems self deallocated", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    return v43(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2662535EC(id a1, uint64_t a2, void *a3, void *a4)
{
  v118 = a4;
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v110 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v117 = &v110 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v110 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v110 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v122 = v20;
  v128[1] = a3;
  sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  v120 = a2;

  if (sub_266266328())
  {
    sub_266266688();
    sub_266266678();
    sub_266266668();
  }

  v21 = [a3 privatePlayMediaIntentData];
  if (v21 && (v22 = v21, v23 = [v21 internalSignals], v22, v23))
  {
    v24 = sub_266266BB8();
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v124 = a3;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  v26 = v8 + 16;
  v123 = *(v8 + 16);
  v123(v19, v25, v7);

  v27 = sub_266266968();
  v28 = sub_266266D78();

  v29 = os_log_type_enabled(v27, v28);
  v121 = v24;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v115 = v25;
    v116 = v7;
    v114 = a1;
    v31 = v30;
    v32 = v8 + 16;
    v33 = swift_slowAlloc();
    v127[0] = v33;
    *v31 = 136315138;
    v34 = MEMORY[0x26677FD90](v24, MEMORY[0x277D837D0]);
    v36 = v8;
    v37 = sub_26621EAF0(v34, v35, v127);

    *(v31 + 4) = v37;
    v8 = v36;
    _os_log_impl(&dword_266219000, v27, v28, "INPlayMediaIntentHandler#resolveMediaItems sees private intent signals: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v38 = v33;
    v26 = v32;
    MEMORY[0x266780880](v38, -1, -1);
    v39 = v31;
    a1 = v114;
    v25 = v115;
    v7 = v116;
    MEMORY[0x266780880](v39, -1, -1);

    v40 = v36;
  }

  else
  {

    v40 = v8;
  }

  v41 = *(v40 + 8);
  v41(v19, v7);
  v42 = v124;
  v43 = sub_266266DF8();
  v44 = v125;
  if (v43)
  {

    v123(v44, v25, v7);
    v45 = v121;

    v46 = sub_266266968();
    v47 = sub_266266D68();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = a1;
      v50 = v41;
      v51 = swift_slowAlloc();
      v127[0] = v51;
      *v48 = 136315138;
      v52 = MEMORY[0x26677FD90](v45, MEMORY[0x277D837D0]);
      v54 = v53;

      v55 = sub_26621EAF0(v52, v54, v127);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_266219000, v46, v47, "INPlayMediaIntentHandler#resolveMediaItems got signal to immediately error as this is a follow up request that did not succeed, internal signals: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v48, -1, -1);

      v50(v125, v7);
      a1 = v49;
    }

    else
    {

      v41(v44, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    *(v73 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    v127[0] = v73;
    (a1)(v127);
  }

  v56 = swift_allocObject();
  v125 = v56;
  *(v56 + 16) = 0;
  v57 = (v56 + 16);
  if ((sub_266266EA8() & 1) == 0)
  {
    goto LABEL_52;
  }

  v58 = [v42 backingStore];
  objc_opt_self();
  v115 = swift_dynamicCastObjCClass();
  if (v115)
  {
    v116 = v41;
    v123(v119, v25, v7);
    v59 = sub_266266968();
    v60 = sub_266266D78();
    v61 = os_log_type_enabled(v59, v60);
    v114 = v58;
    if (v61)
    {
      v62 = v26;
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_266219000, v59, v60, "INPlayMediaIntentHandler#resolveMediaItems fallback: implicit recommendation signal detected", v63, 2u);
      v64 = v63;
      v26 = v62;
      MEMORY[0x266780880](v64, -1, -1);
    }

    v65 = v119;
    v119 = (v8 + 8);
    v116(v65, v7);
    v66 = v115;
    v67 = [v115 privatePlayMediaIntentData];
    v113 = v26;
    if (v67)
    {
      v68 = v67;
      v69 = [v67 audioSearchResults];

      if (v69)
      {
        sub_266228130(0, &qword_280069AF8, 0x277CD4360);
        v70 = sub_266266BB8();

        if (v70 >> 62)
        {
          result = sub_266267078();
        }

        else
        {
          result = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result)
        {
          if ((v70 & 0xC000000000000001) != 0)
          {
            v72 = MEMORY[0x266780220](0, v70);
          }

          else
          {
            if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v72 = *(v70 + 32);
          }

          v69 = v72;
        }

        else
        {

          v69 = 0;
        }

        v66 = v115;
      }
    }

    else
    {
      v69 = 0;
    }

    v74 = *v57;
    *v57 = v69;

    v75 = [v66 privatePlayMediaIntentData];
    if (v75)
    {
      v76 = v75;
      sub_266228130(0, &qword_280069AF8, 0x277CD4360);
      v77 = sub_266266B98();
      [v76 setAudioSearchResults_];
    }

    v78 = v117;
    v123(v117, v25, v7);

    v79 = sub_266266968();
    v80 = sub_266266D78();

    v112 = v80;
    v115 = v79;
    v81 = os_log_type_enabled(v79, v80);
    v42 = v124;
    v41 = v116;
    if (v81)
    {
      v111 = v13;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v128[0] = v83;
      *v82 = 136446466;
      swift_beginAccess();
      if (*v57)
      {
        v84 = a1;
        v85 = [*v57 identifier];
        if (v85)
        {
          v86 = v85;
          v87 = sub_266266A58();
          v89 = v88;
        }

        else
        {
          v87 = 0;
          v89 = 0;
        }
      }

      else
      {
        v84 = a1;
        v87 = 0;
        v89 = 0;
      }

      v126[0] = v87;
      v126[1] = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v90 = sub_266266A68();
      v92 = sub_26621EAF0(v90, v91, v128);

      *(v82 + 4) = v92;
      *(v82 + 12) = 2080;
      if (*v57)
      {
        v93 = [*v57 privateMediaItemValueData];
        a1 = v84;
        if (v93)
        {
          v94 = v93;
          v95 = [v93 internalSignals];

          v13 = v111;
          if (v95)
          {
            v96 = sub_266266BB8();
          }

          else
          {
            v96 = 0;
          }

          goto LABEL_51;
        }

        v96 = 0;
      }

      else
      {
        v96 = 0;
        a1 = v84;
      }

      v13 = v111;
LABEL_51:
      v126[0] = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CE0, &qword_266268A28);
      v97 = sub_266266A68();
      v99 = sub_26621EAF0(v97, v98, v128);

      *(v82 + 14) = v99;
      v100 = v115;
      _os_log_impl(&dword_266219000, v115, v112, "INPlayMediaIntentHandler#resolveMediaItems fallback: found fallback media item: %{public}s with internal signals: %s", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v83, -1, -1);
      MEMORY[0x266780880](v82, -1, -1);

      v41 = v116;
      v116(v117, v7);
      v42 = v124;
      goto LABEL_52;
    }

    v41(v78, v7);
  }

  else
  {
  }

LABEL_52:
  if (_s17SiriAudioInternal0C14SignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v42, &unk_2877D9BB0))
  {

    v123(v13, v25, v7);
    v101 = sub_266266968();
    v102 = sub_266266D58();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_266219000, v101, v102, "INPlayMediaIntentHandler#resolveMediaItems received audio search direct action intent requiring prompt for value", v103, 2u);
      MEMORY[0x266780880](v103, -1, -1);
    }

    v41(v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    *(v104 + 32) = [swift_getObjCClassFromMetadata() needsValue];
    v126[0] = v104;
    (a1)(v126);
  }

  v105 = v121;

  v106 = v125;

  v107 = v118;
  v108 = v42;
  v109 = v122;

  sub_2662651E0(v108, v107, v107, v108, sub_2662489AC, v109, v105, v106);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_266254360(unint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    result = sub_266267078();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v24 = a3;

    sub_266266618();
    goto LABEL_10;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x266780220](0, a1);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v16 = *(a1 + 32);

    v17 = v16;
  }

  v18 = v17;
  __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&a2[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = v18;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = a6;
  v19[9] = a7;
  v20 = v18;
  v21 = a3;

  v22 = a2;

  sub_266266608();

LABEL_10:
}

uint64_t sub_266254580(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v51[1] = a4;
  v52 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v51 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v51 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v51 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v51 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v51 - v22;
  if (a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v9, v24, v5);
    v25 = sub_266266968();
    v26 = sub_266266D58();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266219000, v25, v26, "INPlayMediaIntentHandler#resolveMediaItems User needs to sign GDPR, returning unsupported to allow for the GDPR dialog", v27, 2u);
      MEMORY[0x266780880](v27, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_266266DD8();
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v29 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_14;
  }

  if (sub_266266D98())
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v12, v30, v5);
    v31 = sub_266266968();
    v32 = sub_266266D58();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local and meets criteria for prompting for value", v33, 2u);
      MEMORY[0x266780880](v33, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v29 = [swift_getObjCClassFromMetadata() needsValue];
  }

  else if (sub_266266DB8())
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v15, v35, v5);
    v36 = sub_266266968();
    v37 = sub_266266D78();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have AmpError", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    (*(v6 + 8))(v15, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    v29 = [objc_opt_self() unsupportedForReason_];
  }

  else
  {
    if ((sub_266266E28() & 1) == 0)
    {
      if (sub_266266E18())
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v43 = __swift_project_value_buffer(v5, static Logger.default);
        swift_beginAccess();
        (*(v6 + 16))(v21, v43, v5);
        v44 = sub_266266968();
        v45 = sub_266266D48();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_266219000, v44, v45, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have unsafe self harm signal. Return unsupported.", v46, 2u);
          MEMORY[0x266780880](v46, -1, -1);
        }

        (*(v6 + 8))(v21, v5);
      }

      else
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v47 = __swift_project_value_buffer(v5, static Logger.default);
        swift_beginAccess();
        (*(v6 + 16))(v23, v47, v5);
        v48 = sub_266266968();
        v49 = sub_266266D68();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_266219000, v48, v49, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, returning unsupported", v50, 2u);
          MEMORY[0x266780880](v50, -1, -1);
        }

        (*(v6 + 8))(v23, v5);
      }

      goto LABEL_7;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v18, v39, v5);
    v40 = sub_266266968();
    v41 = sub_266266D68();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_266219000, v40, v41, "INPlayMediaIntentHandler#resolveMediaItems No search results from remote or local, have invalid AMP token", v42, 2u);
      MEMORY[0x266780880](v42, -1, -1);
    }

    (*(v6 + 8))(v18, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    v29 = [objc_opt_self() unsupportedForReason_];
  }

LABEL_14:
  *(v28 + 32) = v29;
  v52(v28);
}

uint64_t sub_266254E64(char a1, id a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, unint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9)
{
  v145 = a8;
  v146 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069CB8, &qword_2662689F8);
  MEMORY[0x28223BE20](v15 - 8);
  v142 = (&v129 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v140 = *(v17 - 8);
  v141 = v17;
  MEMORY[0x28223BE20](v17);
  v139 = (&v129 - v18);
  v19 = sub_266266988();
  v147 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v25 = MEMORY[0x28223BE20](v24);
  v144 = &v129 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v129 - v29;
  if (a1)
  {
    if (qword_280069528 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_101;
  }

  v130 = v28;
  v131 = v27;
  v137 = a4;
  v138 = a5;
  v151[3] = sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
  v151[4] = MEMORY[0x277D557D0];
  v151[0] = a2;
  a2 = a2;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(v151);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v19, static Logger.default);
  swift_beginAccess();
  v41 = v147;
  v42 = *(v147 + 16);
  v135 = v147 + 16;
  v136 = v40;
  v134 = v42;
  v42(v30, v40, v19);
  v43 = a3;
  v22 = sub_266266968();
  LOBYTE(a4) = sub_266266D78();
  v44 = os_log_type_enabled(v22, a4);
  v133 = v43;
  if (!v44)
  {

    v51 = v41;
    goto LABEL_38;
  }

  v45 = swift_slowAlloc();
  v143 = swift_slowAlloc();
  v150 = v143;
  *v45 = 136446466;
  v46 = [v43 identifier];
  if (v46)
  {
    v47 = v46;
    v48 = sub_266266A58();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v148 = v48;
  v149 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
  v59 = sub_266266A68();
  v61 = sub_26621EAF0(v59, v60, &v150);

  *(v45 + 4) = v61;
  *(v45 + 12) = 2050;
  a3 = v133;
  v62 = [v133 privateMediaItemValueData];
  if (!v62)
  {

    i = 0;
    goto LABEL_37;
  }

  v63 = v62;
  i = [v62 mediaSubItems];

  if (!i)
  {

    goto LABEL_37;
  }

  sub_266228130(0, &qword_280069C88, 0x277CD3DD0);
  v65 = sub_266266BB8();

  if (v65 >> 62)
  {
    goto LABEL_104;
  }

  for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266267078())
  {

LABEL_37:
    *(v45 + 14) = i;

    _os_log_impl(&dword_266219000, v22, a4, "INPlayMediaIntentHandler#resolveMediaItems resolved item with identifier: %{public}s and sub items: %{public}ld", v45, 0x16u);
    v66 = v143;
    __swift_destroy_boxed_opaque_existential_1Tm(v143);
    MEMORY[0x266780880](v66, -1, -1);
    MEMORY[0x266780880](v45, -1, -1);

    v51 = v147;
LABEL_38:
    a4 = *(v51 + 8);
    (a4)(v30, v19);
    v67 = &off_279BCA000;
    v68 = [a2 privatePlayMediaIntentData];
    v69 = [v68 entityConfidenceSignalsEnabled];

    v70 = [a2 privatePlayMediaIntentData];
    v71 = [v70 entityConfidenceSignalsFrequencyDenominatorProd];

    v72 = [a2 privatePlayMediaIntentData];
    v143 = [v72 entityConfidenceSignalsFrequencyDenominatorInternal];

    v30 = (a6 >> 62);
    if (a6 >> 62)
    {
      v73 = sub_266267078();
    }

    else
    {
      v73 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v146;
    if (v73 == 1 || (v22 = v146, (sub_266260290(v69, v143, v71) & 1) == 0))
    {
      if (sub_266266E78() & 1) != 0 || (sub_266266E98())
      {
        v132 = v69;
        v79 = a4;
        v80 = v144;
        v134(v144, v136, v19);
        v81 = v145;

        v82 = sub_266266968();
        v83 = sub_266266D68();

        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v148 = v85;
          *v84 = 136315138;
          v86 = MEMORY[0x26677FD90](v81, MEMORY[0x277D837D0]);
          v88 = v71;
          v89 = sub_26621EAF0(v86, v87, &v148);

          *(v84 + 4) = v89;
          v71 = v88;
          _os_log_impl(&dword_266219000, v82, v83, "INPlayMediaIntentHandler#resolveMediaItems got signal to immediately error as UnsupportedNonSubscriber or AcousticIdFollowUpSubscriptionNotActive present, internal signals: %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v85);
          MEMORY[0x266780880](v85, -1, -1);
          MEMORY[0x266780880](v84, -1, -1);
        }

        (v79)(v80, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_266267E70;
        *(v90 + 32) = [objc_opt_self() unsupportedForReason_];
        v137(v90);
      }

      else
      {
        v92 = v142;
        sub_26625E210(v133, a2, v142);
        v93 = v141;
        if ((*(v140 + 48))(v92, 1, v141) != 1)
        {
          v122 = v139;
          sub_266263128(v92, v139);
          v123 = *(&v74->isa + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService);
          v146 = *v122;
          v147 = v123;
          v144 = *(v93 + 48);
          v124 = swift_allocObject();
          v124[2] = a2;
          v124[3] = a6;
          v125 = v71;
          v126 = v138;
          v124[4] = v137;
          v124[5] = v126;
          v124[6] = v145;
          v124[7] = a9;
          v124[8] = v74;
          v127 = a2;

          v128 = v74;
          sub_2662660D8();

          return sub_26622858C(v122, &qword_280069C70, &qword_2662689D0);
        }

        sub_26622858C(v92, &unk_280069CB8, &qword_2662689F8);
        v134(v130, v136, v19);
        v94 = sub_266266968();
        v95 = sub_266266D48();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_266219000, v94, v95, "INPlayMediaIntentHandler#resolveMediaItems Problem converting intent to Playback objects", v96, 2u);
          MEMORY[0x266780880](v96, -1, -1);
        }

        (a4)(v130, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        *(v97 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        v137(v97);
      }
    }

    v75 = [a2 privatePlayMediaIntentData];
    v132 = v69;
    if (v75 && (v22 = v75, v76 = [v75 entityConfidenceSignalsMaxItemsToDisambiguate], v22, v76) && (v148 = 0, LOBYTE(v149) = 1, sub_266266C78(), v76, (v149 & 1) == 0))
    {
      a3 = v148;
      if ((v148 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_101:
        swift_once();
LABEL_3:
        v31 = __swift_project_value_buffer(v19, static Logger.default);
        swift_beginAccess();
        v32 = v147;
        (*(v147 + 16))(v22, v31, v19);
        v33 = sub_266266968();
        v34 = sub_266266D58();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_266219000, v33, v34, "INPlayMediaIntentHandler#resolveMediaItems User needs to sign GDPR, returning unsupported to allow for the GDPR dialog", v35, 2u);
          MEMORY[0x266780880](v35, -1, -1);
        }

        (*(v32 + 8))(v22, v19);
        v148 = a2;
        sub_266228130(0, &unk_280069CD0, 0x277CD3EC0);
        v36 = sub_266266658();
        if (v37)
        {
          v36 = sub_266266A78();
          v39 = v38;
        }

        else
        {
          v39 = 0;
        }

        v52 = [a3 privateMediaItemValueData];
        if (v52)
        {
          v53 = v52;
          v54 = [v52 sharedUserIdFromPlayableMusicAccount];

          if (v54)
          {
            sub_266266A58();

            v55 = sub_266266A78();
            v54 = v56;

            if (!v39)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v55 = 0;
            if (!v39)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v55 = 0;
          v54 = 0;
          if (!v39)
          {
            goto LABEL_25;
          }
        }

        if (v54)
        {
          if (v36 != v55 || v39 != v54)
          {
            v58 = sub_2662670D8();

            if ((v58 & 1) == 0)
            {
              sub_266266DA8();
            }

            goto LABEL_26;
          }
        }

LABEL_25:

LABEL_26:
        sub_266266DD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        *(v57 + 32) = [swift_getObjCClassFromMetadata() unsupported];
        a4(v57);
      }
    }

    else
    {
      a3 = 5;
    }

    if (v30)
    {
      if ((a6 & 0x8000000000000000) != 0)
      {
        v22 = a6;
      }

      else
      {
        v22 = (a6 & 0xFFFFFFFFFFFFFF8);
      }

      v98 = sub_266267078();
      if (sub_266267078() < 0)
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v98 >= a3)
      {
        v99 = a3;
      }

      else
      {
        v99 = v98;
      }

      if (v98 < 0)
      {
        v99 = a3;
      }

      v45 = a3 ? v99 : 0;
      v77 = sub_266267078();
    }

    else
    {
      v77 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v78 = v77 >= a3 ? a3 : *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = a3 ? v78 : 0;
    }

    if (v77 >= v45)
    {
      break;
    }

    __break(1u);
LABEL_104:
    ;
  }

  if ((a6 & 0xC000000000000001) == 0 || !v45)
  {

    if (!v30)
    {
      goto LABEL_83;
    }

LABEL_86:

    v22 = sub_266267088();
    a2 = v103;
    v98 = v104;
    if (v104)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);

  v100 = 0;
  do
  {
    v101 = v100 + 1;
    sub_266267048();
    v100 = v101;
  }

  while (v45 != v101);
  if (v30)
  {
    goto LABEL_86;
  }

LABEL_83:
  a2 = 0;
  v22 = (a6 & 0xFFFFFFFFFFFFFF8);
  v102 = (a6 & 0xFFFFFFFFFFFFFF8) + 32;
  v98 = (2 * v45) | 1;
  if ((v98 & 1) == 0)
  {
LABEL_87:
    sub_266261AB0(v22, v102, a2, v98);
    v106 = v105;
    goto LABEL_94;
  }

LABEL_88:
  v67 = v71;
  v146 = v102;
  sub_2662670E8();
  swift_unknownObjectRetain_n();
  v107 = swift_dynamicCastClass();
  if (!v107)
  {
    swift_unknownObjectRelease();
    v107 = MEMORY[0x277D84F90];
  }

  v108 = *(v107 + 16);

  if (__OFSUB__(v98 >> 1, a2))
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v108 != (v98 >> 1) - a2)
  {
LABEL_107:
    swift_unknownObjectRelease();
    v102 = v146;
    v71 = v67;
    goto LABEL_87;
  }

  v106 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v71 = v67;
  if (!v106)
  {
    v106 = MEMORY[0x277D84F90];
LABEL_94:
    swift_unknownObjectRelease();
  }

  v109 = v131;
  v134(v131, v136, v19);
  v110 = sub_266266968();
  v111 = sub_266266D58();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v146 = v71;
    v114 = v113;
    v148 = v113;
    *v112 = 136446210;
    v150 = a3;
    v115 = sub_2662670C8();
    v117 = sub_26621EAF0(v115, v116, &v148);

    *(v112 + 4) = v117;
    _os_log_impl(&dword_266219000, v110, v111, "INPlayMediaIntentHandler#resolveMediaItems Disambiguating with %{public}s results", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    v118 = v114;
    v71 = v146;
    MEMORY[0x266780880](v118, -1, -1);
    MEMORY[0x266780880](v112, -1, -1);
  }

  (a4)(v109, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_266267E70;
  sub_266255FF8(v106);

  v120 = sub_266266B98();

  v121 = [objc_opt_self() resolutionResultDisambiguationWithItemsToDisambiguate_];

  *(v119 + 32) = v121;
  v137(v119);
}

char *sub_266255FF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_266267078();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_266261C70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x266780220](i, a1);
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_266261C70((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_26622FB80(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_266261C70((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_26622FB80(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662561F4(void (*a1)(char *, uint64_t), void *a2, char *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v489 = a8;
  v490 = a7;
  v506 = a6;
  v529 = a5;
  v530 = a4;
  v521 = a3;
  v522 = a2;
  v531 = a1;
  v526 = sub_266265EB8();
  v525 = *(v526 - 8);
  v8 = MEMORY[0x28223BE20](v526);
  v494 = &v486 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v519 = &v486 - v11;
  MEMORY[0x28223BE20](v10);
  v527 = &v486 - v12;
  v538 = sub_2662665E8();
  v535 = *(v538 - 8);
  v13 = MEMORY[0x28223BE20](v538);
  v518 = &v486 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v493 = &v486 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v486 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v499 = &v486 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v508 = &v486 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v514 = &v486 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v512 = &v486 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v510 = &v486 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v502 = &v486 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v505 = &v486 - v33;
  MEMORY[0x28223BE20](v32);
  v528 = &v486 - v34;
  v35 = sub_266266958();
  v533 = *(v35 - 8);
  v534 = v35;
  MEMORY[0x28223BE20](v35);
  v532 = (&v486 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  MEMORY[0x28223BE20](v37);
  v39 = (&v486 - v38);
  v40 = sub_266266988();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v517 = &v486 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v496 = &v486 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v495 = &v486 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v500 = &v486 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v509 = &v486 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v516 = &v486 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v513 = &v486 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v511 = &v486 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v488 = &v486 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v487 = &v486 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v486 = &v486 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v503 = &v486 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v492 = &v486 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v498 = &v486 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v504 = &v486 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v491 = &v486 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v497 = &v486 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v501 = &v486 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v507 = &v486 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v524 = &v486 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v520 = &v486 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v515 = &v486 - v85;
  MEMORY[0x28223BE20](v84);
  v87 = &v486 - v86;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v40, static Logger.default);
  swift_beginAccess();
  p_isa = *(v41 + 16);
  v537 = (v41 + 16);
  (p_isa)(v87, v88, v40);
  v89 = sub_266266968();
  v90 = sub_266266D48();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = v40;
    v92 = v19;
    v93 = v88;
    v94 = v41;
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_266219000, v89, v90, "INPlayMediaIntentHandler#resolveMediaItems completed for INPlayMediaIntent (possibly success or failure)", v95, 2u);
    v96 = v95;
    v41 = v94;
    v88 = v93;
    v19 = v92;
    v40 = v91;
    MEMORY[0x266780880](v96, -1, -1);
  }

  v97 = *(v41 + 8);
  v539 = v41 + 8;
  (v97)(v87, v40);
  sub_266228524(v531, v39, &qword_280069CA8, &unk_2662689E8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v99 = 0x280069000uLL;
  v100 = MEMORY[0x277D837D0];
  if (EnumCaseMultiPayload == 1)
  {
    v521 = v19;
    v523 = v40;
    v524 = v88;
    v531 = v97;
    v101 = v528;
    (*(v535 + 32))(v528, v39, v538);
    v102 = v527;
    sub_2662665C8();
    v103 = sub_266265EA8();
    v105 = v104;
    v106 = (v525 + 8);
    v107 = *(v525 + 8);
    v108 = v526;
    v107(v102, v526);
    v109 = sub_266266F48();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    v110 = logObject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_266267DB0;
    *(v111 + 56) = MEMORY[0x277D837D0];
    *(v111 + 64) = sub_2662658EC();
    *(v111 + 32) = v103;
    *(v111 + 40) = v105;
    v112 = v532;
    sub_266266948();
    sub_266266918(v109, &dword_266219000, v110, "playMediaIntentHandlerResolvePlaybackCode", 41, 2, v112, "warm code=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 68, 2, v111);

    (*(v533 + 1))(v112, v534);
    sub_266265E28();
    sub_2662665C8();
    v113 = sub_266265E18();
    v107(v102, v108);
    v114 = v108;
    v115 = v101;
    if (v113)
    {
      v533 = v107;
      v534 = v106;
      v116 = v108;
      v117 = v517;
      v118 = v523;
      (p_isa)(v517, v524, v523);
      v119 = v535;
      v120 = v518;
      (*(v535 + 16))(v518, v115, v538);
      v121 = sub_266266968();
      v122 = sub_266266D68();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v542 = v124;
        *v123 = 136446210;
        sub_2662665C8();
        p_isa = sub_266265EA8();
        v126 = v125;
        v127 = v533;
        v533(v527, v526);
        v537 = *(v119 + 8);
        v128 = v120;
        v129 = v538;
        (v537)(v128, v538);
        v130 = v127;
        v131 = sub_26621EAF0(p_isa, v126, &v542);
        v102 = v527;

        *(v123 + 4) = v131;
        _os_log_impl(&dword_266219000, v121, v122, "INPlayMediaIntentHandler#resolveMediaItems identified PFSQ terminating error warming content with code: %{public}s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        v132 = v124;
        v133 = v129;
        v134 = v526;
        MEMORY[0x266780880](v132, -1, -1);
        MEMORY[0x266780880](v123, -1, -1);

        v531(v117, v523);
      }

      else
      {
        v186 = v118;

        v537 = *(v119 + 8);
        v133 = v538;
        (v537)(v120, v538);
        v531(v117, v186);
        v130 = v533;
        v134 = v116;
      }

      sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
      v187 = [swift_getObjCClassFromMetadata() unsupported];
      v188 = v528;
      sub_2662665C8();
      v189 = sub_266265EA8();
      v191 = v190;
      v130(v102, v134);
      *&xmmword_280069B50 = v189;
      *(&xmmword_280069B50 + 1) = v191;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_266267E70;
      *(v192 + 32) = v187;
      v193 = v187;
      v530(v192);

      return (v537)(v188, v133);
    }

    v150 = v523;
    v151 = v519;
    sub_2662665C8();
    v152 = (*(v525 + 88))(v151, v108);
    v153 = v538;
    if (v152 == *MEMORY[0x277D55580])
    {
      (p_isa)(v516, v524, v150);
      v154 = v535;
      v155 = v514;
      (*(v535 + 16))(v514, v115, v153);
      v156 = sub_266266968();
      v157 = sub_266266D68();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        p_isa = v158;
        v537 = swift_slowAlloc();
        v542 = v537;
        *v158 = 136446210;
        v159 = v527;
        sub_2662665C8();
        v160 = sub_266265EA8();
        v161 = v107;
        v162 = v153;
        v164 = v163;
        v161(v159, v108);
        v165 = *(v154 + 8);
        v165(v155, v162);
        v166 = sub_26621EAF0(v160, v164, &v542);
        v153 = v162;

        v167 = p_isa;
        *(p_isa + 4) = v166;
        v168 = v167;
        _os_log_impl(&dword_266219000, v156, v157, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, unsupported playback queue location", v167, 0xCu);
        v169 = v537;
        __swift_destroy_boxed_opaque_existential_1Tm(v537);
        MEMORY[0x266780880](v169, -1, -1);
        MEMORY[0x266780880](v168, -1, -1);
      }

      else
      {

        v165 = *(v154 + 8);
        v165(v155, v153);
      }

      v531(v516, v523);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_266267E70;
      v212 = [objc_opt_self() unsupportedForReason_];
LABEL_69:
      *(v211 + 32) = v212;
      v530(v211);

      return (v165)(v528, v153);
    }

    v534 = v106;
    v195 = v535;
    if (v152 == *MEMORY[0x277D555A0])
    {
      (p_isa)(v513, v524, v150);
      v196 = v512;
      (*(v195 + 16))(v512, v115, v153);
      v197 = sub_266266968();
      v198 = sub_266266D68();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        p_isa = v199;
        v537 = swift_slowAlloc();
        v542 = v537;
        *v199 = 136446210;
        v200 = v107;
        v201 = v527;
        sub_2662665C8();
        v202 = sub_266265EA8();
        v203 = v195;
        v204 = v153;
        v206 = v205;
        v200(v201, v108);
        v165 = *(v203 + 8);
        v165(v196, v204);
        v207 = sub_26621EAF0(v202, v206, &v542);
        v153 = v204;

        v208 = p_isa;
        *(p_isa + 4) = v207;
        v209 = v208;
        _os_log_impl(&dword_266219000, v197, v198, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, create radio failed", v208, 0xCu);
        v210 = v537;
        __swift_destroy_boxed_opaque_existential_1Tm(v537);
        MEMORY[0x266780880](v210, -1, -1);
        MEMORY[0x266780880](v209, -1, -1);
      }

      else
      {

        v165 = *(v195 + 8);
        v165(v196, v153);
      }

      v531(v513, v523);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_266267E70;
      v212 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v152 == *MEMORY[0x277D555A8])
    {
      (p_isa)(v511, v524, v150);
      v213 = v510;
      (*(v195 + 16))(v510, v115, v153);
      v214 = sub_266266968();
      v215 = sub_266266D68();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        p_isa = v216;
        v537 = swift_slowAlloc();
        v542 = v537;
        *v216 = 136446210;
        v217 = v107;
        v218 = v527;
        sub_2662665C8();
        v219 = sub_266265EA8();
        v220 = v195;
        v221 = v153;
        v223 = v222;
        v217(v218, v108);
        v165 = *(v220 + 8);
        v165(v213, v221);
        v224 = sub_26621EAF0(v219, v223, &v542);
        v153 = v221;

        v225 = p_isa;
        *(p_isa + 4) = v224;
        v226 = v225;
        _os_log_impl(&dword_266219000, v214, v215, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, playback device not found", v225, 0xCu);
        v227 = v537;
        __swift_destroy_boxed_opaque_existential_1Tm(v537);
        MEMORY[0x266780880](v227, -1, -1);
        MEMORY[0x266780880](v226, -1, -1);
      }

      else
      {

        v165 = *(v195 + 8);
        v165(v213, v153);
      }

      v531(v511, v523);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_266267E70;
      v212 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v152 == *MEMORY[0x277D555B0])
    {
      v246 = v509;
      v247 = v150;
      (p_isa)(v509, v524, v150);
      v248 = v508;
      (*(v195 + 16))(v508, v115, v153);
      v249 = sub_266266968();
      v250 = sub_266266D68();
      if (os_log_type_enabled(v249, v250))
      {
        v251 = swift_slowAlloc();
        v537 = swift_slowAlloc();
        v542 = v537;
        *v251 = 136446210;
        v252 = v107;
        v253 = v527;
        sub_2662665C8();
        p_isa = sub_266265EA8();
        v254 = v248;
        v255 = v195;
        v256 = v153;
        v258 = v257;
        v252(v253, v108);
        v165 = *(v255 + 8);
        v165(v254, v256);
        v259 = sub_26621EAF0(p_isa, v258, &v542);
        v153 = v256;

        *(v251 + 4) = v259;
        _os_log_impl(&dword_266219000, v249, v250, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, explicit content disabled", v251, 0xCu);
        v260 = v537;
        __swift_destroy_boxed_opaque_existential_1Tm(v537);
        MEMORY[0x266780880](v260, -1, -1);
        MEMORY[0x266780880](v251, -1, -1);

        v261 = v509;
        v262 = v523;
      }

      else
      {

        v277 = v248;
        v165 = *(v195 + 8);
        v165(v277, v153);
        v261 = v246;
        v262 = v247;
      }

      v531(v261, v262);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_266267E70;
      v212 = [objc_opt_self() unsupportedForReason_];
      goto LABEL_69;
    }

    if (v152 == *MEMORY[0x277D555B8])
    {
      (p_isa)(v507);
      v263 = v505;
      (*(v195 + 16))(v505, v115, v153);
      v264 = sub_266266968();
      v265 = sub_266266D68();
      if (os_log_type_enabled(v264, v265))
      {
        v266 = v263;
        v267 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v542 = v268;
        *v267 = 136446210;
        v269 = v527;
        LODWORD(v533) = v265;
        sub_2662665C8();
        v270 = sub_266265EA8();
        v271 = v107;
        v272 = v195;
        v273 = v153;
        v275 = v274;
        v271(v269, v526);
        v534 = *(v272 + 8);
        v534(v266, v273);
        v276 = sub_26621EAF0(v270, v275, &v542);
        v153 = v273;

        *(v267 + 4) = v276;
        _os_log_impl(&dword_266219000, v264, v533, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, requested content not found", v267, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v268);
        MEMORY[0x266780880](v268, -1, -1);
        v115 = v528;
        MEMORY[0x266780880](v267, -1, -1);
      }

      else
      {

        v534 = *(v195 + 8);
        v534(v263, v153);
      }

      v531(v507, v523);
      if (sub_266266E28())
      {
        v296 = v501;
        v297 = v150;
        (p_isa)();
        v298 = v506;

        v299 = sub_266266968();
        v300 = sub_266266D68();

        if (os_log_type_enabled(v299, v300))
        {
          v301 = swift_slowAlloc();
          v302 = swift_slowAlloc();
          v542 = v302;
          *v301 = 136315138;
          v303 = MEMORY[0x26677FD90](v298, MEMORY[0x277D837D0]);
          v305 = v153;
          v306 = sub_26621EAF0(v303, v304, &v542);

          *(v301 + 4) = v306;
          v153 = v305;
          _os_log_impl(&dword_266219000, v299, v300, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating invalid AMP token for user(s) - %s", v301, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v302);
          MEMORY[0x266780880](v302, -1, -1);
          v115 = v528;
          MEMORY[0x266780880](v301, -1, -1);
        }

        v531(v296, v297);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v350 = swift_allocObject();
        *(v350 + 16) = xmmword_266267E70;
        v351 = [objc_opt_self() unsupportedForReason_];
      }

      else if (sub_266266DB8())
      {
        v324 = v497;
        v325 = v150;
        (p_isa)();
        v326 = v506;

        v327 = sub_266266968();
        v328 = sub_266266D68();

        if (os_log_type_enabled(v327, v328))
        {
          v329 = swift_slowAlloc();
          v330 = swift_slowAlloc();
          v542 = v330;
          *v329 = 136315138;
          v331 = MEMORY[0x26677FD90](v326, MEMORY[0x277D837D0]);
          v333 = v153;
          v334 = sub_26621EAF0(v331, v332, &v542);

          *(v329 + 4) = v334;
          v153 = v333;
          _os_log_impl(&dword_266219000, v327, v328, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating have AmpError for user(s) - %s", v329, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v330);
          MEMORY[0x266780880](v330, -1, -1);
          v115 = v528;
          MEMORY[0x266780880](v329, -1, -1);
        }

        v531(v324, v325);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v350 = swift_allocObject();
        *(v350 + 16) = xmmword_266267E70;
        v351 = [objc_opt_self() unsupportedForReason_];
      }

      else
      {
        if (sub_266266E18())
        {
          v370 = v491;
          v371 = v150;
          (p_isa)();
          v372 = v506;

          v373 = sub_266266968();
          v374 = sub_266266D48();

          if (os_log_type_enabled(v373, v374))
          {
            v375 = swift_slowAlloc();
            v376 = swift_slowAlloc();
            v542 = v376;
            *v375 = 136315138;
            v377 = MEMORY[0x26677FD90](v372, MEMORY[0x277D837D0]);
            v379 = v153;
            v380 = sub_26621EAF0(v377, v378, &v542);

            *(v375 + 4) = v380;
            v153 = v379;
            _os_log_impl(&dword_266219000, v373, v374, "INPlayMediaIntentHandler#resolveMediaItems (notFound) got signal indicating unsafe self harm query - %s", v375, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v376);
            MEMORY[0x266780880](v376, -1, -1);
            v115 = v528;
            MEMORY[0x266780880](v375, -1, -1);
          }

          v531(v370, v371);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v350 = swift_allocObject();
        *(v350 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        v351 = [swift_getObjCClassFromMetadata() unsupported];
      }

      *(v350 + 32) = v351;
      v530(v350);

      v427 = v115;
      return (v534)(v427, v153);
    }

    if (v152 == *MEMORY[0x277D55588])
    {
      v533 = v107;
      v278 = v524;
      (p_isa)(v504);
      v279 = v502;
      (*(v195 + 16))(v502, v101, v153);
      v280 = sub_266266968();
      v281 = sub_266266D68();
      if (os_log_type_enabled(v280, v281))
      {
        v282 = swift_slowAlloc();
        v532 = swift_slowAlloc();
        v542 = v532;
        *v282 = 136446210;
        v283 = v279;
        v284 = v527;
        sub_2662665C8();
        v285 = sub_266265EA8();
        v286 = v195;
        v287 = v153;
        v289 = v288;
        v533(v284, v526);
        v290 = *(v286 + 8);
        v290(v283, v287);
        v291 = sub_26621EAF0(v285, v289, &v542);
        v153 = v287;
        v278 = v524;

        *(v282 + 4) = v291;
        v292 = v281;
        v293 = v290;
        _os_log_impl(&dword_266219000, v280, v292, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, empty library", v282, 0xCu);
        v294 = v532;
        __swift_destroy_boxed_opaque_existential_1Tm(v532);
        MEMORY[0x266780880](v294, -1, -1);
        v295 = v282;
        v115 = v528;
        MEMORY[0x266780880](v295, -1, -1);
      }

      else
      {

        v293 = *(v195 + 8);
        v293(v279, v153);
      }

      v531(v504, v523);
      v335 = v503;
      if (sub_266266E28())
      {
        v336 = v498;
        v337 = v278;
        v338 = v150;
        (p_isa)(v498, v337, v150);
        v339 = v506;

        v340 = sub_266266968();
        v341 = sub_266266D68();

        if (os_log_type_enabled(v340, v341))
        {
          v342 = swift_slowAlloc();
          v534 = v293;
          v343 = v342;
          v344 = swift_slowAlloc();
          v542 = v344;
          *v343 = 136315138;
          v345 = MEMORY[0x26677FD90](v339, MEMORY[0x277D837D0]);
          v347 = v153;
          v348 = sub_26621EAF0(v345, v346, &v542);

          *(v343 + 4) = v348;
          v153 = v347;
          _os_log_impl(&dword_266219000, v340, v341, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating invalid AMP token for user(s) - %s", v343, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v344);
          MEMORY[0x266780880](v344, -1, -1);
          v349 = v343;
          v115 = v528;
          v293 = v534;
          MEMORY[0x266780880](v349, -1, -1);
        }

        v531(v336, v338);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v396 = swift_allocObject();
        *(v396 + 16) = xmmword_266267E70;
        v397 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_124;
      }

      if (sub_266266DB8())
      {
        v381 = v492;
        v382 = v150;
        (p_isa)(v492, v278, v150);
        v383 = v506;

        v384 = sub_266266968();
        v385 = sub_266266D68();

        if (os_log_type_enabled(v384, v385))
        {
          v386 = swift_slowAlloc();
          v534 = v293;
          v387 = v115;
          v388 = v386;
          v389 = swift_slowAlloc();
          v542 = v389;
          *v388 = 136315138;
          v390 = MEMORY[0x26677FD90](v383, MEMORY[0x277D837D0]);
          v392 = v153;
          v393 = sub_26621EAF0(v390, v391, &v542);

          *(v388 + 4) = v393;
          v153 = v392;
          _os_log_impl(&dword_266219000, v384, v385, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating have AmpError for user(s) - %s", v388, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v389);
          MEMORY[0x266780880](v389, -1, -1);
          v394 = v388;
          v115 = v387;
          v293 = v534;
          MEMORY[0x266780880](v394, -1, -1);

          v531(v381, v523);
        }

        else
        {

          v531(v381, v382);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v396 = swift_allocObject();
        *(v396 + 16) = xmmword_266267E70;
        v397 = [objc_opt_self() unsupportedForReason_];
LABEL_124:
        *(v396 + 32) = v397;
        v530(v396);

        return (v293)(v115, v153);
      }

      if (sub_266266E18())
      {
        v413 = v150;
        (p_isa)(v335, v278, v150);
        v414 = v506;

        v415 = sub_266266968();
        v416 = sub_266266D48();

        if (os_log_type_enabled(v415, v416))
        {
          v417 = swift_slowAlloc();
          v534 = v293;
          v418 = v115;
          v419 = v417;
          v420 = swift_slowAlloc();
          v542 = v420;
          *v419 = 136315138;
          v421 = MEMORY[0x26677FD90](v414, MEMORY[0x277D837D0]);
          v423 = v153;
          v424 = sub_26621EAF0(v421, v422, &v542);

          *(v419 + 4) = v424;
          v153 = v423;
          _os_log_impl(&dword_266219000, v415, v416, "INPlayMediaIntentHandler#resolveMediaItems (emptyLibrary) got signal indicating unsafe self harm query - %s", v419, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v420);
          MEMORY[0x266780880](v420, -1, -1);
          v425 = v419;
          v115 = v418;
          v293 = v534;
          MEMORY[0x266780880](v425, -1, -1);

          v531(v335, v523);
        }

        else
        {

          v531(v335, v413);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v396 = swift_allocObject();
        *(v396 + 16) = xmmword_266267E70;
        sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
        v397 = [swift_getObjCClassFromMetadata() unsupported];
        goto LABEL_124;
      }

      v436 = v490;
      swift_beginAccess();
      v437 = *(v436 + 16);
      if (v437)
      {
        v534 = v293;
        v438 = v487;
        (p_isa)(v487, v278, v150);
        v439 = v437;
        v440 = v438;
        v441 = v439;
        v442 = sub_266266968();
        v443 = sub_266266D78();

        v444 = os_log_type_enabled(v442, v443);
        v533 = v441;
        if (v444)
        {
          v445 = v153;
          v446 = swift_slowAlloc();
          v447 = swift_slowAlloc();
          v541 = v447;
          *v446 = 136446210;
          v448 = [v441 identifier];
          if (v448)
          {
            v449 = v448;
            v450 = sub_266266A58();
            v452 = v451;
          }

          else
          {
            v450 = 0;
            v452 = 0;
          }

          v540[0] = v450;
          v540[1] = v452;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
          v460 = sub_266266A68();
          v462 = sub_26621EAF0(v460, v461, &v541);

          *(v446 + 4) = v462;
          _os_log_impl(&dword_266219000, v442, v443, "INPlayMediaIntentHandler#resolveMediaItems fallback item available for implicit recommendation: %{public}s", v446, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v447);
          MEMORY[0x266780880](v447, -1, -1);
          MEMORY[0x266780880](v446, -1, -1);

          v531(v440, v150);
          v153 = v445;
          v278 = v524;
        }

        else
        {

          v531(v440, v150);
        }

        v463 = [v522 backingStore];
        objc_opt_self();
        v464 = swift_dynamicCastObjCClass();
        if (v464)
        {
          v465 = v464;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
          v466 = swift_allocObject();
          *(v466 + 16) = xmmword_266267E70;
          v467 = v533;
          *(v466 + 32) = v533;
          sub_266228130(0, &qword_280069AF8, 0x277CD4360);
          v468 = v467;
          v469 = sub_266266B98();

          [v465 setMediaItems_];

          v463 = v469;
        }

        v470 = v522;
        sub_266266EB8();
        v471 = v488;
        v472 = v278;
        v473 = v150;
        (p_isa)(v488, v472, v150);
        v474 = v470;
        v475 = sub_266266968();
        v476 = sub_266266D78();

        if (os_log_type_enabled(v475, v476))
        {
          v477 = v153;
          v478 = swift_slowAlloc();
          v479 = swift_slowAlloc();
          v540[0] = v479;
          *v478 = 136446210;
          v480 = sub_266266DE8();
          v482 = sub_26621EAF0(v480, v481, v540);

          *(v478 + 4) = v482;
          v483 = v528;
          _os_log_impl(&dword_266219000, v475, v476, "INPlayMediaIntentHandler#resolveMediaItems restarting resolveMediaItems with intent: %{public}s", v478, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v479);
          MEMORY[0x266780880](v479, -1, -1);
          v484 = v478;
          v153 = v477;
          MEMORY[0x266780880](v484, -1, -1);

          v531(v471, v473);
        }

        else
        {

          v531(v471, v150);
          v483 = v528;
        }

        v485 = v533;
        INPlayMediaIntentHandler.resolveMediaItems(for:with:)(v474, v530, v529);

        v427 = v483;
        return (v534)(v427, v153);
      }

      v453 = v293;
      v454 = v486;
      (p_isa)(v486, v278, v150);
      v455 = sub_266266968();
      v456 = sub_266266D68();
      if (os_log_type_enabled(v455, v456))
      {
        v457 = swift_slowAlloc();
        *v457 = 0;
        _os_log_impl(&dword_266219000, v455, v456, "INPlayMediaIntentHandler#resolveMediaItems no fallback search item available for empty library result", v457, 2u);
        v458 = v457;
        v454 = v486;
        MEMORY[0x266780880](v458, -1, -1);
      }

      v531(v454, v150);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v459 = swift_allocObject();
      *(v459 + 16) = xmmword_266267E70;
      *(v459 + 32) = [objc_opt_self() unsupportedForReason_];
      v530(v459);

      return v453(v115, v153);
    }

    else
    {
      if (v152 == *MEMORY[0x277D55590])
      {
        v307 = v500;
        v308 = v150;
        (p_isa)(v500, v524, v150);
        v309 = v499;
        (*(v195 + 16))(v499, v115, v153);
        v310 = sub_266266968();
        v311 = sub_266266D68();
        if (os_log_type_enabled(v310, v311))
        {
          v312 = swift_slowAlloc();
          v537 = swift_slowAlloc();
          v542 = v537;
          *v312 = 136446210;
          v313 = v107;
          v314 = v527;
          sub_2662665C8();
          p_isa = sub_266265EA8();
          v315 = v309;
          v316 = v195;
          v317 = v153;
          v319 = v318;
          v313(v314, v108);
          v165 = *(v316 + 8);
          v165(v315, v317);
          v320 = sub_26621EAF0(p_isa, v319, &v542);
          v153 = v317;

          *(v312 + 4) = v320;
          _os_log_impl(&dword_266219000, v310, v311, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, need network to play content", v312, 0xCu);
          v321 = v537;
          __swift_destroy_boxed_opaque_existential_1Tm(v537);
          MEMORY[0x266780880](v321, -1, -1);
          MEMORY[0x266780880](v312, -1, -1);

          v322 = v500;
          v323 = v523;
        }

        else
        {

          v395 = v309;
          v165 = *(v195 + 8);
          v165(v395, v153);
          v322 = v307;
          v323 = v308;
        }

        v531(v322, v323);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v211 = swift_allocObject();
        *(v211 + 16) = xmmword_266267E70;
        v212 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_69;
      }

      v352 = (v535 + 16);
      if (v152 == *MEMORY[0x277D55598])
      {
        v353 = v495;
        v354 = v150;
        (p_isa)(v495, v524, v150);
        v355 = v521;
        (*v352)(v521, v115, v153);
        v356 = sub_266266968();
        v357 = sub_266266D68();
        if (os_log_type_enabled(v356, v357))
        {
          v358 = swift_slowAlloc();
          v537 = swift_slowAlloc();
          v542 = v537;
          *v358 = 136446210;
          v359 = v107;
          v360 = v527;
          sub_2662665C8();
          p_isa = sub_266265EA8();
          v361 = v355;
          v362 = v195;
          v363 = v153;
          v365 = v364;
          v359(v360, v108);
          v165 = *(v362 + 8);
          v165(v361, v363);
          v366 = sub_26621EAF0(p_isa, v365, &v542);
          v153 = v363;

          *(v358 + 4) = v366;
          _os_log_impl(&dword_266219000, v356, v357, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, need subscription to play podcast content", v358, 0xCu);
          v367 = v537;
          __swift_destroy_boxed_opaque_existential_1Tm(v537);
          MEMORY[0x266780880](v367, -1, -1);
          MEMORY[0x266780880](v358, -1, -1);

          v368 = v495;
          v369 = v523;
        }

        else
        {

          v426 = v355;
          v165 = *(v195 + 8);
          v165(v426, v153);
          v368 = v353;
          v369 = v354;
        }

        v531(v368, v369);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v211 = swift_allocObject();
        *(v211 + 16) = xmmword_266267E70;
        v212 = [objc_opt_self() unsupportedForReason_];
        goto LABEL_69;
      }

      v533 = v107;
      v398 = v496;
      v399 = v150;
      (p_isa)(v496, v524, v150);
      v400 = v493;
      (*v352)(v493, v115, v153);
      v401 = sub_266266968();
      v402 = sub_266266D68();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = v153;
        v404 = swift_slowAlloc();
        v405 = swift_slowAlloc();
        v542 = v405;
        *v404 = 136446210;
        v406 = v527;
        sub_2662665C8();
        v407 = sub_266265EA8();
        v409 = v408;
        v533(v406, v526);
        v410 = *(v195 + 8);
        p_isa = ((v195 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v537 = v410;
        (v410)(v400, v403);
        v411 = sub_26621EAF0(v407, v409, &v542);

        *(v404 + 4) = v411;
        _os_log_impl(&dword_266219000, v401, v402, "INPlayMediaIntentHandler#resolveMediaItems Error warming content with code: %{public}s, returning temporary failure type: restrictedContent", v404, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v405);
        v412 = v405;
        v114 = v526;
        MEMORY[0x266780880](v412, -1, -1);
        MEMORY[0x266780880](v404, -1, -1);

        v531(v496, v523);
      }

      else
      {

        v428 = *(v195 + 8);
        p_isa = ((v195 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v537 = v428;
        (v428)(v400, v153);
        v531(v398, v399);
        v406 = v527;
      }

      sub_266266348();
      sub_2662665C8();
      sub_266265EA8();
      v429 = v533;
      v533(v406, v114);
      v542 = 0;
      v543 = 0xE000000000000000;
      sub_266267038();
      MEMORY[0x26677FCB0](0xD00000000000003ALL, 0x8000000266269A50);
      v430 = v494;
      sub_2662665C8();
      v431 = v114;
      v432 = sub_266265EA8();
      v434 = v433;
      v429(v430, v431);
      MEMORY[0x26677FCB0](v432, v434);

      sub_266266338();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v435 = swift_allocObject();
      *(v435 + 16) = xmmword_266267E70;
      *(v435 + 32) = [objc_opt_self() unsupportedForReason_];
      v530(v435);

      (v537)(v528, v538);
      return (v429)(v519, v431);
    }
  }

  else
  {
    v538 = *v39;
    v135 = sub_266266F48();
    if (qword_280069538 != -1)
    {
      swift_once();
    }

    v136 = logObject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_266267DB0;
    *(v137 + 56) = v100;
    *(v137 + 64) = sub_2662658EC();
    *(v137 + 32) = 0x73736563637573;
    *(v137 + 40) = 0xE700000000000000;
    v138 = v532;
    sub_266266948();
    sub_266266918(v135, &dword_266219000, v136, "playMediaIntentHandlerResolvePlaybackCode", 41, 2, v138, "warm code=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 68, 2, v137);

    (*(v533 + 1))(v138, v534);
    v139 = sub_266266F78();
    if (!v140)
    {
      v170 = v515;
      v143 = v40;
      v144 = p_isa;
      (p_isa)(v515, v88, v40);
      v171 = sub_266266968();
      v172 = sub_266266D68();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&dword_266219000, v171, v172, "INPlayMediaIntentHandler#resolveMediaItems NO intentId for intent - not tracking continuation", v173, 2u);
        MEMORY[0x266780880](v173, -1, -1);
      }

      (v97)(v170, v40);
      goto LABEL_28;
    }

    v141 = v139;
    v99 = v140;
    v142 = v520;
    v143 = v40;
    v144 = p_isa;
    (p_isa)(v520, v88, v40);
    v145 = sub_266266968();
    v146 = sub_266266D48();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_266219000, v145, v146, "INPlayMediaIntentHandler#resolveMediaItems FOUND intentId for intent - tracking continuation", v147, 2u);
      v148 = v147;
      v142 = v520;
      MEMORY[0x266780880](v148, -1, -1);
    }

    (v97)(v142, v40);
    v149 = v538;
    if (qword_280069568 != -1)
    {
      swift_once();
    }

    if (v149)
    {
      goto LABEL_21;
    }

    if (qword_280069570 != -1)
    {
      goto LABEL_131;
    }

    while (1)
    {

LABEL_21:
      v542 = v141;
      v543 = v99;

      sub_266266148();
LABEL_28:
      v174 = v524;
      v144(v524, v88, v143);
      v88 = v521;

      v141 = sub_266266968();
      v175 = sub_266266D78();

      if (!os_log_type_enabled(v141, v175))
      {

        (v97)(v174, v143);
        goto LABEL_56;
      }

      v531 = v97;
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v542 = v177;
      *v176 = 136446210;
      p_isa = &v177->isa;
      v97 = v88 >> 62 ? sub_266267078() : *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v144 = MEMORY[0x277D84F90];
      v537 = v176;
      if (!v97)
      {
        break;
      }

      v540[0] = MEMORY[0x277D84F90];
      sub_266261C90(0, v97 & ~(v97 >> 63), 0);
      if ((v97 & 0x8000000000000000) == 0)
      {
        LODWORD(v535) = v175;
        v523 = v143;
        v144 = v540[0];
        if ((v88 & 0xC000000000000001) != 0)
        {
          v178 = v88;
          v179 = 0;
          do
          {
            MEMORY[0x266780220](v179, v178);
            v180 = sub_266266CD8();
            v182 = v181;
            swift_unknownObjectRelease();
            v540[0] = v144;
            v184 = *(v144 + 2);
            v183 = *(v144 + 3);
            if (v184 >= v183 >> 1)
            {
              sub_266261C90((v183 > 1), v184 + 1, 1);
              v144 = v540[0];
            }

            ++v179;
            *(v144 + 2) = v184 + 1;
            v185 = (v144 + 16 * v184);
            v185[4] = v180;
            v185[5] = v182;
          }

          while (v97 != v179);
        }

        else
        {
          v228 = (v88 + 32);
          do
          {
            v229 = *v228;
            v230 = sub_266266CD8();
            v232 = v231;

            v540[0] = v144;
            v234 = *(v144 + 2);
            v233 = *(v144 + 3);
            if (v234 >= v233 >> 1)
            {
              sub_266261C90((v233 > 1), v234 + 1, 1);
              v144 = v540[0];
            }

            *(v144 + 2) = v234 + 1;
            v235 = (v144 + 16 * v234);
            v235[4] = v230;
            v235[5] = v232;
            ++v228;
            --v97;
          }

          while (v97);
        }

        v143 = v523;
        LOBYTE(v175) = v535;
        break;
      }

      __break(1u);
LABEL_131:
      swift_once();
    }

    v236 = MEMORY[0x26677FD90](v144, MEMORY[0x277D837D0]);
    v238 = v237;

    v239 = sub_26621EAF0(v236, v238, &v542);

    v240 = v537;
    *(v537 + 4) = v239;
    _os_log_impl(&dword_266219000, v141, v175, "INPlayMediaIntentHandler#resolveMediaItems completed successfully with items: %{public}s", v240, 0xCu);
    v241 = p_isa;
    __swift_destroy_boxed_opaque_existential_1Tm(p_isa);
    MEMORY[0x266780880](v241, -1, -1);
    MEMORY[0x266780880](v240, -1, -1);

    v531(v524, v143);
LABEL_56:
    v242 = objc_opt_self();
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v243 = sub_266266B98();
    v244 = [v242 successesWithResolvedMediaItems_];

    sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
    v245 = sub_266266BB8();

    v530(v245);
  }
}

uint64_t sub_266259D78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_266259DF0(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &qword_280069CB0, 0x277CD3ED0);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_266259E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_280069528;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_266266968();
  v14 = sub_266266D58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266219000, v13, v14, "INPlayMediaIntentHandler: resolveNowPlayingItem resolving...", v15, 2u);
    MEMORY[0x266780880](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying), *(a3 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying + 24));
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2662489AC;
  *(v16 + 24) = v10;
  sub_2662663B8();
}

uint64_t sub_26625A0BC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v72 = a3;
  v73 = a2;
  v71 = a1;
  v3 = sub_266266038();
  v67 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v66 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = &v66 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  v10 = sub_266266988();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v70 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v69 = &v66 - v13;
  v14 = sub_266266398();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  sub_266228524(v71, &v66 - v22, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v20, v23, v14);
    v24 = v20;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = v75;
    v26 = __swift_project_value_buffer(v75, static Logger.default);
    swift_beginAccess();
    v27 = v74;
    v28 = v69;
    (*(v74 + 16))(v69, v26, v25);
    v29 = *(v15 + 16);
    v71 = v24;
    v29(v18, v24, v14);
    v30 = sub_266266968();
    v31 = sub_266266D68();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76 = v70;
      *v32 = 136446210;
      sub_2662630A0(&unk_280069720, MEMORY[0x277D556C8], MEMORY[0x277D556D8]);
      LODWORD(v68) = v31;
      v33 = sub_266267108();
      v35 = v34;
      v36 = *(v15 + 8);
      v36(v18, v14);
      v37 = sub_26621EAF0(v33, v35, &v76);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_266219000, v30, v68, "INPlayMediaIntentHandler: resolveNowPlayingMediaItem nowPlaying item error: %{public}s", v32, 0xCu);
      v38 = v70;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v32, -1, -1);

      (*(v27 + 8))(v69, v75);
    }

    else
    {

      v36 = *(v15 + 8);
      v36(v18, v14);
      (*(v27 + 8))(v28, v25);
    }

    v73(0);
    return (v36)(v71, v14);
  }

  else
  {
    v39 = v67;
    (*(v67 + 32))(v9, v23, v3);
    v40 = v9;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v41 = v75;
    v42 = __swift_project_value_buffer(v75, static Logger.default);
    swift_beginAccess();
    v43 = v74;
    v44 = v70;
    (*(v74 + 16))(v70, v42, v41);
    v45 = *(v39 + 16);
    v46 = v68;
    v45(v68, v9, v3);
    v47 = sub_266266968();
    v48 = sub_266266D78();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = v40;
      v50 = v3;
      v51 = v49;
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 136446210;
      v45(v66, v46, v50);
      v53 = sub_266266A68();
      v55 = v54;
      v56 = *(v39 + 8);
      v71 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57 = v46;
      v58 = v56;
      v56(v57, v50);
      v59 = sub_26621EAF0(v53, v55, &v76);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_266219000, v47, v48, "INPlayMediaIntentHandler: resolveNowPlayingMediaItem now playing: %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266780880](v52, -1, -1);
      v60 = v51;
      v3 = v50;
      v40 = v69;
      MEMORY[0x266780880](v60, -1, -1);

      (*(v74 + 8))(v70, v75);
    }

    else
    {

      v62 = *(v39 + 8);
      v71 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v63 = v46;
      v58 = v62;
      v62(v63, v3);
      (*(v43 + 8))(v44, v75);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    sub_266265FF8();
    sub_266265FC8();
    v65 = sub_266266CB8();

    *(v64 + 32) = v65;
    v73(v64);

    return v58(v40, v3);
  }
}

uint64_t INPlayMediaIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = sub_266266958();
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v6);
  v32 = &v32 - v7;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_266266968();
  v14 = sub_266266D78();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a3;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266219000, v13, v14, "INPlayMediaIntentHandler#handle...", v16, 2u);
    v17 = v16;
    a3 = v15;
    MEMORY[0x266780880](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = qword_280069538;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = logObject;
  v21 = v32;
  sub_266266938();
  v22 = v33;
  v23 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v35;
  (*(v33 + 16))(v23, v21);
  v25 = (*(v22 + 80) + 33) & ~*(v22 + 80);
  v26 = (v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = "playMediaIntentHandlerHandle";
  *(v27 + 24) = 28;
  *(v27 + 32) = 2;
  (*(v22 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_266245390;
  v28[1] = v18;

  v29 = sub_266266F38();
  sub_266266918(v29, &dword_266219000, v20, "playMediaIntentHandlerHandle", 28, 2, v21, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_266262CEC;
  *(v30 + 24) = v27;
  MEMORY[0x28223BE20](v30);
  sub_266228130(0, &unk_280069BF8, 0x277CD3EC8);

  sub_266265E08();

  return (*(v22 + 8))(v21, v35);
}

void sub_26625ADDC(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v81 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069CB8, &qword_2662689F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v75 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v75 - v13);
  v15 = sub_266266988();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v75 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v84 = a2;

  v23 = [a3 mediaItems];
  if (!v23)
  {

    if (qword_280069528 == -1)
    {
LABEL_15:
      v41 = v83;
      v42 = __swift_project_value_buffer(v83, static Logger.default);
      swift_beginAccess();
      v43 = v82;
      (*(v82 + 16))(v21, v42, v41);
      v44 = sub_266266968();
      v45 = sub_266266D68();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_266219000, v44, v45, "INPlayMediaIntentHandler#handle Unexpected nil or empty items in handle", v46, 2u);
        MEMORY[0x266780880](v46, -1, -1);
      }

      (*(v43 + 8))(v21, v41);
      v47 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v48 = sub_266266A48();
      v49 = [v47 initWithActivityType_];

      v40 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v49];
      v85 = v40;
      (a1)(&v85);
      goto LABEL_29;
    }

LABEL_33:
    swift_once();
    goto LABEL_15;
  }

  v24 = v23;
  v77 = a1;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  a1 = sub_266266BB8();

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_23:

    v51 = 0;
    goto LABEL_24;
  }

  if (!sub_266267078())
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_33;
  }

  v25 = MEMORY[0x266780220](0, a1);
LABEL_7:
  v26 = v25;
  v27 = [v25 type];

  if (v27 == 18 && (sub_266266E48() & 1) != 0)
  {

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v28 = v83;
    v29 = __swift_project_value_buffer(v83, static Logger.default);
    swift_beginAccess();
    v30 = v82;
    v31 = v76;
    (*(v82 + 16))(v76, v29, v28);
    v32 = sub_266266968();
    v33 = sub_266266D68();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v77;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266219000, v32, v33, "INPlayMediaIntentHandler#convert Unexpected music result for news podcast request", v36, 2u);
      MEMORY[0x266780880](v36, -1, -1);
    }

    (*(v30 + 8))(v31, v28);
    v37 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v38 = sub_266266A48();
    v39 = [v37 initWithActivityType_];

    v40 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v39];
    v85 = v40;
    v35(&v85);
LABEL_29:

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x266780220](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v50 = *(a1 + 32);
  }

  v51 = v50;

LABEL_24:
  v52 = v81;
  sub_26625E210(v51, a3, v9);

  v53 = v80;
  v54 = (*(v80 + 48))(v9, 1, v10);
  v27 = v77;
  if (v54 == 1)
  {

    sub_26622858C(v9, &unk_280069CB8, &qword_2662689F8);
    if (qword_280069528 == -1)
    {
LABEL_26:
      v55 = v83;
      v56 = __swift_project_value_buffer(v83, static Logger.default);
      swift_beginAccess();
      v57 = v82;
      v58 = v79;
      (*(v82 + 16))(v79, v56, v55);
      v59 = sub_266266968();
      v60 = sub_266266D48();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_266219000, v59, v60, "INPlayMediaIntentHandler#handle Problem converting intent to Playback objects", v61, 2u);
        MEMORY[0x266780880](v61, -1, -1);
      }

      (*(v57 + 8))(v58, v55);
      v62 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v63 = sub_266266A48();
      v64 = [v62 initWithActivityType_];

      v40 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v64];
      v85 = v40;
      v27(&v85);
      goto LABEL_29;
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  sub_266263128(v9, v14);
  v65 = sub_266266F78();
  v67 = v66;
  v83 = *v14;
  v84 = v65;
  v68 = *(v10 + 48);
  v69 = v78;
  sub_266228524(v14, v78, &qword_280069C70, &qword_2662689D0);
  v70 = (*(v53 + 80) + 40) & ~*(v53 + 80);
  v71 = (v11 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v72[2] = sub_2662489AC;
  v72[3] = v22;
  v72[4] = a3;
  sub_266263128(v69, v72 + v70);
  *(v72 + v71) = v52;
  v73 = a3;
  v74 = v52;
  sub_26625DD88(v84, v67, v83, (v14 + v68), sub_2662632B0, v72);

  sub_26622858C(v14, &qword_280069C70, &qword_2662689D0);
}

void sub_26625B754(uint64_t a1, void (*a2)(id), uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v94 = a6;
  v99 = a5;
  v102 = a2;
  v103 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v92 - v9;
  v104 = sub_266266988();
  v100 = *(v104 - 8);
  v10 = MEMORY[0x28223BE20](v104);
  v101 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v92 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v96 = &v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v93 = &v92 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  MEMORY[0x28223BE20](v97);
  v21 = &v92 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v92 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v92 - v29);
  sub_266228524(a1, &v92 - v29, &qword_280069CA8, &unk_2662689E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26622858C(v30, &qword_280069CA8, &unk_2662689E8);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = v104;
    v32 = __swift_project_value_buffer(v104, static Logger.default);
    swift_beginAccess();
    v33 = v100;
    (*(v100 + 16))(v101, v32, v31);
    sub_266228524(a1, v28, &qword_280069CA8, &unk_2662689E8);
    v34 = sub_266266968();
    v35 = sub_266266D68();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v105[0] = v37;
      *v36 = 136315138;
      sub_266228524(v28, v25, &qword_280069CA8, &unk_2662689E8);
      v38 = sub_266266A68();
      v40 = v39;
      sub_26622858C(v28, &qword_280069CA8, &unk_2662689E8);
      v41 = sub_26621EAF0(v38, v40, v105);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_266219000, v34, v35, "INPlayMediaIntentHandler#handle Error ensureWarm for content, returning temporary failure type: restrictedContent: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266780880](v37, -1, -1);
      MEMORY[0x266780880](v36, -1, -1);

      (*(v33 + 8))(v101, v104);
    }

    else
    {

      sub_26622858C(v28, &qword_280069CA8, &unk_2662689E8);
      (*(v33 + 8))(v101, v31);
    }

    v53 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v54 = sub_266266A48();
    v55 = [v53 initWithActivityType_];

    v56 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:10 userActivity:v55];
    v102(v56);
  }

  else
  {
    v42 = *v30;
    if (sub_266266DC8())
    {
      v43 = v104;
      v44 = v100;
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v43, static Logger.default);
      swift_beginAccess();
      (*(v44 + 16))(v14, v45, v43);
      v46 = sub_266266968();
      v47 = sub_266266D48();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_266219000, v46, v47, "INPlayMediaIntentHandler#resolveMediaItems GDPR needed, not immediately starting playback", v48, 2u);
        MEMORY[0x266780880](v48, -1, -1);
      }

      (*(v44 + 8))(v14, v43);
      v49 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v50 = sub_266266A48();
      v51 = [v49 initWithActivityType_];

      v52 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:2 userActivity:v51];
      v102(v52);
    }

    else
    {
      sub_266228524(v99, v21, &qword_280069C70, &qword_2662689D0);

      v57 = *(v97 + 48);
      v58 = sub_2662662E8();
      v59 = sub_266266308();
      (*(*(v59 - 8) + 8))(&v21[v57], v59);
      v60 = v104;
      v61 = v100;
      if (v58)
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v62 = __swift_project_value_buffer(v60, static Logger.default);
        swift_beginAccess();
        v63 = *(v61 + 16);
        v63(v98, v62, v60);

        v64 = sub_266266968();
        v65 = sub_266266D48();
        v66 = os_log_type_enabled(v64, v65);
        v101 = v42;
        if (v66)
        {
          v67 = swift_slowAlloc();
          *v67 = 67109120;
          *(v67 + 4) = v42 != 0;

          _os_log_impl(&dword_266219000, v64, v65, "INPlayMediaIntentHandler#handle Playback was started during 'warm' phase, skipping specific-play, continuation? %{BOOL}d", v67, 8u);
          MEMORY[0x266780880](v67, -1, -1);
        }

        else
        {
        }

        v78 = *(v61 + 8);
        v78(v98, v60);
        v79 = sub_266266F78();
        if (v80)
        {
          v81 = v79;
          v82 = v80;
          v63(v96, v62, v60);
          v83 = sub_266266968();
          v84 = sub_266266D48();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_266219000, v83, v84, "INPlayMediaIntentHandler#handle FOUND identifier for intent - tracking continuation for wrapper flow frame", v85, 2u);
            MEMORY[0x266780880](v85, -1, -1);
          }

          v78(v96, v60);
          if (qword_280069568 != -1)
          {
            swift_once();
          }

          if (!v101)
          {
            if (qword_280069570 != -1)
            {
              swift_once();
            }
          }

          v105[0] = v81;
          v105[1] = v82;

          sub_266266148();
        }

        v86 = swift_allocObject();
        v87 = v103;
        *(v86 + 16) = v102;
        *(v86 + 24) = v87;
        v88 = sub_266266C58();
        v89 = v95;
        (*(*(v88 - 8) + 56))(v95, 1, 1, v88);
        v90 = swift_allocObject();
        v90[2] = 0;
        v90[3] = 0;
        v90[4] = a4;
        v90[5] = sub_266265B50;
        v90[6] = v86;
        v91 = a4;

        sub_266224324(0, 0, v89, &unk_266268A10, v90);
      }

      else
      {
        if (qword_280069528 != -1)
        {
          swift_once();
        }

        v68 = __swift_project_value_buffer(v60, static Logger.default);
        swift_beginAccess();
        v69 = v93;
        (*(v61 + 16))(v93, v68, v60);
        v70 = sub_266266968();
        v71 = sub_266266D48();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_266219000, v70, v71, "INPlayMediaIntentHandler#play ensureWarm complete - moving to play", v72, 2u);
          MEMORY[0x266780880](v72, -1, -1);
        }

        (*(v61 + 8))(v69, v60);
        v73 = v94;
        v74 = swift_allocObject();
        v74[2] = a4;
        v74[3] = v73;
        v75 = v103;
        v74[4] = v102;
        v74[5] = v75;
        v76 = a4;
        v77 = v73;

        sub_2662660C8();
      }
    }
  }
}

uint64_t sub_26625C394(uint64_t a1, char *a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v85 = a4;
  v86 = a5;
  v84 = a2;
  v6 = sub_2662665E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v82 = &v80 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v80 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = (&v80 - v15);
  v16 = sub_266266988();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v81 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  MEMORY[0x28223BE20](v24);
  v26 = (&v80 - v25);
  sub_266228524(a1, &v80 - v25, &qword_280069CA8, &unk_2662689E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v13, v26, v6);
    v27 = v6;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v28 = v88;
    v29 = __swift_project_value_buffer(v88, static Logger.default);
    swift_beginAccess();
    v30 = v87;
    (*(v87 + 16))(v19, v29, v28);
    v31 = *(v7 + 16);
    v32 = v82;
    v84 = v13;
    v31(v82, v13, v27);
    v33 = sub_266266968();
    v34 = sub_266266D68();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89[0] = v83;
      *v35 = 136315138;
      LODWORD(v81) = v34;
      v31(v80, v32, v27);
      v36 = sub_266266A68();
      v38 = v37;
      v39 = *(v7 + 8);
      v39(v32, v27);
      v40 = sub_26621EAF0(v36, v38, v89);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_266219000, v33, v81, "INPlayMediaIntentHandler#play Unexpected error playing content, code: %s", v35, 0xCu);
      v41 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x266780880](v41, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);

      (*(v87 + 8))(v19, v88);
    }

    else
    {

      v39 = *(v7 + 8);
      v39(v32, v27);
      (*(v30 + 8))(v19, v28);
    }

    v52 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v53 = sub_266266A48();
    v54 = [v52 initWithActivityType_];

    v55 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:v54];
    v85(v55);

    return (v39)(v84, v27);
  }

  else
  {
    v42 = *v26;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v43 = v88;
    v44 = __swift_project_value_buffer(v88, static Logger.default);
    swift_beginAccess();
    v45 = v87;
    v46 = *(v87 + 16);
    v46(v23, v44, v43);

    v47 = sub_266266968();
    v48 = sub_266266D48();
    v49 = os_log_type_enabled(v47, v48);
    v82 = v42;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = v42 != 0;

      _os_log_impl(&dword_266219000, v47, v48, " Successfully played content, continuation? %{BOOL}d", v50, 8u);
      v51 = v50;
      v43 = v88;
      MEMORY[0x266780880](v51, -1, -1);
    }

    else
    {
    }

    v57 = *(v45 + 8);
    v57(v23, v43);
    v58 = v84;
    v59 = sub_266266F78();
    if (v60)
    {
      v61 = v59;
      v62 = v60;
      v63 = v81;
      v46(v81, v44, v43);
      v64 = v63;

      v65 = sub_266266968();
      v66 = sub_266266D48();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = v43;
        v69 = swift_slowAlloc();
        v89[0] = v69;
        *v67 = 136446210;
        *(v67 + 4) = sub_26621EAF0(v61, v62, v89);
        _os_log_impl(&dword_266219000, v65, v66, "INPlayMediaIntentHandler#play FOUND intentId for intent: %{public}s - tracking continuation for wrapper flow frame", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x266780880](v69, -1, -1);
        v70 = v67;
        v58 = v84;
        MEMORY[0x266780880](v70, -1, -1);

        v71 = v64;
        v72 = v68;
      }

      else
      {

        v71 = v64;
        v72 = v43;
      }

      v57(v71, v72);
      v73 = v82;
      if (qword_280069568 != -1)
      {
        swift_once();
      }

      if (!v73)
      {
        if (qword_280069570 != -1)
        {
          swift_once();
        }
      }

      v89[0] = v61;
      v89[1] = v62;

      sub_266266148();
    }

    v74 = swift_allocObject();
    v75 = v86;
    *(v74 + 16) = v85;
    *(v74 + 24) = v75;
    v76 = sub_266266C58();
    v77 = v83;
    (*(*(v76 - 8) + 56))(v83, 1, 1, v76);
    v78 = swift_allocObject();
    v78[2] = 0;
    v78[3] = 0;
    v78[4] = v58;
    v78[5] = sub_266263480;
    v78[6] = v74;

    v79 = v58;
    sub_266224324(0, 0, v77, &unk_266268A18, v78);
  }
}

uint64_t sub_26625CCE4(void (*a1)(id))
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v7 = sub_266266A48();
  v8 = [v6 initWithActivityType_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:4 userActivity:v8];
  a1(v9);

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_266266968();
  v12 = sub_266266D48();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266219000, v11, v12, "INPlayMediaIntentHandler#play completion called", v13, 2u);
    MEMORY[0x266780880](v13, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26625CF50(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_26625CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_266266378();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26625D0BC, 0, 0);
}

uint64_t sub_26625D0BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_266266368();
  v4 = sub_266266358();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_26625D1DC;
    v7 = *(v0 + 16);

    return static SuggestionsDonationProvider.donatePlayMediaIntentForSuggestions(intent:)(v7);
  }

  else
  {
    (*(v0 + 24))(v5);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26625D1DC()
{

  return MEMORY[0x2822009F8](sub_26625D2D8, 0, 0);
}

uint64_t sub_26625D2D8()
{
  (*(v0 + 24))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26625D348(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v97 = a2;
  v98 = a3;
  v101 = a1;
  v3 = sub_266266988();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v94 = (&v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v91 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v100 = (&v91 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v91 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v93 = &v91 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v91 - v16;
  if (qword_280069528 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v3, static Logger.default);
    swift_beginAccess();
    v19 = *(v4 + 16);
    v19(v17, v18, v3);
    v20 = sub_266266968();
    v21 = sub_266266D58();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v18;
      v23 = v19;
      v24 = v3;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_266219000, v20, v21, "INPlayMediaIntentHandler#item looking in private audiosearch results...", v25, 2u);
      v26 = v25;
      v3 = v24;
      v19 = v23;
      v18 = v22;
      MEMORY[0x266780880](v26, -1, -1);
    }

    v27 = *(v4 + 8);
    v99 = v4 + 8;
    v102 = v27;
    v27(v17, v3);
    v28 = [v101 privatePlayMediaIntentData];
    if (!v28)
    {
      goto LABEL_34;
    }

    v29 = v28;
    v30 = [v28 audioSearchResults];

    if (!v30)
    {
      goto LABEL_34;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v31 = sub_266266BB8();

    if (v31 >> 62)
    {
      break;
    }

    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_8:
    v32 = sub_266266CF8();

    v33 = v93;
    v19(v93, v18, v3);

    v34 = sub_266266968();
    v4 = sub_266266D78();

    if (!os_log_type_enabled(v34, v4))
    {

      v48 = v33;
      v49 = v3;
      goto LABEL_28;
    }

    v35 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v103 = v94;
    v95 = v35;
    *v35 = 136315138;
    if (v32 >> 62)
    {
      v17 = sub_266267078();
    }

    else
    {
      v17 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LODWORD(v96) = v4;
    v100 = v34;
    v92 = v3;
    if (!v17)
    {
      v37 = MEMORY[0x277D84F90];
LABEL_27:
      v50 = MEMORY[0x26677FD90](v37, MEMORY[0x277D837D0]);
      v52 = v51;

      v53 = sub_26621EAF0(v50, v52, &v103);

      v54 = v95;
      *(v95 + 1) = v53;
      v55 = v100;
      _os_log_impl(&dword_266219000, v100, v96, "INPlayMediaIntentHandler#item using unique private server search results: %s", v54, 0xCu);
      v56 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x266780880](v56, -1, -1);
      MEMORY[0x266780880](v54, -1, -1);

      v49 = v92;
      v48 = v93;
LABEL_28:
      v102(v48, v49);
      v97(v32);
    }

    v36 = 0;
    v101 = (v32 & 0xC000000000000001);
    v3 = v32 & 0xFFFFFFFFFFFFFF8;
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v101)
      {
        v13 = v32;
        v38 = MEMORY[0x266780220](v36, v32);
      }

      else
      {
        if (v36 >= *(v3 + 16))
        {
          goto LABEL_30;
        }

        v13 = v32;
        v38 = *(v32 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v4 = v17;
      v41 = sub_266266CD8();
      v43 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2662616F4(0, *(v37 + 2) + 1, 1, v37);
      }

      v45 = *(v37 + 2);
      v44 = *(v37 + 3);
      if (v45 >= v44 >> 1)
      {
        v37 = sub_2662616F4((v44 > 1), v45 + 1, 1, v37);
      }

      *(v37 + 2) = v45 + 1;
      v46 = &v37[16 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
      ++v36;
      v17 = v4;
      v47 = v40 == v4;
      v32 = v13;
      if (v47)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  if (sub_266267078())
  {
    goto LABEL_8;
  }

LABEL_33:

LABEL_34:
  v19(v13, v18, v3);
  v57 = sub_266266968();
  v58 = sub_266266D68();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v92 = v3;
    v61 = v60;
    v103 = v60;
    *v59 = 136446210;
    v62 = sub_2662666D8();
    v93 = v13;
    v64 = v18;
    v65 = sub_26621EAF0(v62, v63, &v103);

    *(v59 + 4) = v65;
    v18 = v64;
    _os_log_impl(&dword_266219000, v57, v58, "INPlayMediaIntentHandler#item %{public}s Intent has missing or invalid audioSearchResults (possibly expected for createRadio or wholeLibrary queries)", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v66 = v61;
    v3 = v92;
    MEMORY[0x266780880](v66, -1, -1);
    MEMORY[0x266780880](v59, -1, -1);

    v67 = v93;
  }

  else
  {

    v67 = v13;
  }

  v102(v67, v3);
  v68 = v18;
  v69 = v18;
  v70 = v19;
  v19(v100, v69, v3);
  v71 = sub_266266968();
  v72 = sub_266266D58();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v101;
  if (v73)
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_266219000, v71, v72, "INPlayMediaIntentHandler#item evaluating if create radio...", v75, 2u);
    MEMORY[0x266780880](v75, -1, -1);
  }

  v102(v100, v3);
  v76 = sub_266266EC8();
  if (sub_266266EE8())
  {
    v77 = sub_266266E68();
    if ((v76 & 1) == 0)
    {
      if ((v77 & 1) != 0 && (sub_266266EA8() & 1) == 0)
      {
        return sub_266262DC4(v97, v98);
      }

      goto LABEL_47;
    }

LABEL_45:
    v79 = v94;
    v70(v94, v68, v3);
    v80 = sub_266266968();
    v81 = sub_266266D78();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v103 = v83;
      *v82 = 136446210;
      v84 = sub_2662666D8();
      v86 = sub_26621EAF0(v84, v85, &v103);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_266219000, v80, v81, "INPlayMediaIntentHandler#item %{public}s Creating radio station from currently playing item", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x266780880](v83, -1, -1);
      MEMORY[0x266780880](v82, -1, -1);
    }

    v102(v79, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    *(v90 + 32) = sub_266266CB8();
    v97(v90);
  }

  if (v76)
  {
    goto LABEL_45;
  }

LABEL_47:
  v70(v96, v68, v3);
  v87 = sub_266266968();
  v88 = sub_266266D78();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_266219000, v87, v88, "INPlayMediaIntentHandler#item not create radio, trying local search as fallback", v89, 2u);
    MEMORY[0x266780880](v89, -1, -1);
  }

  v102(v96, v3);
  return sub_266260BB0(v74, 0, 0, v97, v98);
}

uint64_t sub_26625DD88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CA8, &unk_2662689E8);
  MEMORY[0x28223BE20](v33);
  v9 = (&v32 - v8);
  v10 = sub_266266988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (qword_280069568 != -1)
  {
    swift_once();
  }

  v39[1] = a1;
  v39[2] = a2;
  v17 = sub_266266128();
  if (v17)
  {
    v18 = v17;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v14, v19, v10);

    v20 = sub_266266968();
    v21 = sub_266266D48();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = a2;
      v39[0] = v34;
      *v22 = 136446210;
      v37 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v23 = sub_266266A68();
      v25 = sub_26621EAF0(v23, v24, v39);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_266219000, v20, v21, "INPlayMediaIntentHandler#ensureWarm Found continuation from previous 'resolve' for intentId: %{public}s", v22, 0xCu);
      v26 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266780880](v26, -1, -1);
      MEMORY[0x266780880](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    *v9 = v18;
    swift_storeEnumTagMultiPayload();

    v35(v9);

    return sub_26622858C(v9, &qword_280069CA8, &unk_2662689E8);
  }

  else
  {
LABEL_10:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v16, v28, v10);
    v29 = sub_266266968();
    v30 = sub_266266D48();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266219000, v29, v30, "INPlayMediaIntentHandler#ensureWarm No result present from previous call to warm, ensuring warmup before handle...", v31, 2u);
      MEMORY[0x266780880](v31, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    return sub_2662660D8();
  }
}

uint64_t sub_26625E210@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v172 = a2;
  v161 = sub_266266308();
  v167 = *(v161 - 8);
  v6 = MEMORY[0x28223BE20](v161);
  v160 = v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v166 = v152 - v8;
  v165 = sub_266266318();
  v164 = *(v165 - 8);
  v9 = MEMORY[0x28223BE20](v165);
  v11 = v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v171 = v152 - v12;
  v169 = sub_2662664E8();
  v168 = *(v169 - 8);
  v13 = MEMORY[0x28223BE20](v169);
  v163 = v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v170 = v152 - v15;
  v16 = sub_266266988();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v157 = (v152 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v152 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v159 = (v152 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v152 - v30;
  MEMORY[0x28223BE20](v29);
  v34 = (v152 - v33);
  if (!a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v16, static Logger.default);
    swift_beginAccess();
    (*(v17 + 16))(v20, v56, v16);
    v57 = sub_266266968();
    v58 = sub_266266D68();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = a3;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_266219000, v57, v58, "INPlayMediaIntentHandler#convert Unexpected missing item to convert", v60, 2u);
      v61 = v60;
      a3 = v59;
      MEMORY[0x266780880](v61, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
    v63 = *(*(v62 - 8) + 56);
    v64 = a3;
    goto LABEL_54;
  }

  v152[0] = v32;
  v154 = v3;
  v155 = v11;
  v158 = a3;
  v35 = qword_280069528;
  v36 = a1;
  if (v35 != -1)
  {
LABEL_75:
    swift_once();
  }

  v37 = __swift_project_value_buffer(v16, static Logger.default);
  swift_beginAccess();
  v38 = *(v17 + 16);
  v178 = v17 + 16;
  v179 = v37;
  v177 = v38;
  v38(v34, v37, v16);
  v39 = v36;
  v36 = v34;
  v40 = sub_266266968();
  v41 = sub_266266D58();

  v42 = os_log_type_enabled(v40, v41);
  v174 = v16;
  v156 = v25;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v187 = v44;
    *v43 = 136446466;
    v45 = sub_2662666C8();
    v47 = sub_26621EAF0(v45, v46, &v187);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v48 = sub_266266CD8();
    v36 = v49;
    v50 = sub_26621EAF0(v48, v49, &v187);

    *(v43 + 14) = v50;
    _os_log_impl(&dword_266219000, v40, v41, "INPlayMediaIntentHandler#convert %{public}s converting mediaItem: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v44, -1, -1);
    v51 = v43;
    v16 = v174;
    MEMORY[0x266780880](v51, -1, -1);
  }

  v180 = *(v17 + 8);
  v180(v34, v16);
  v52 = [v39 privateMediaItemValueData];
  v54 = MEMORY[0x277D84F90];
  if (v52)
  {
    v36 = v52;
    v55 = [v52 mediaSubItems];

    if (v55)
    {
      sub_266228130(0, &qword_280069C88, 0x277CD3DD0);
      v25 = sub_266266BB8();
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v187 = v54;
  v185 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 >> 62)
  {
    v65 = sub_266267078();
  }

  else
  {
    v65 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v162 = v39;
  v66 = v17 + 8;
  if (!v65)
  {
    v34 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v67 = 0;
  v184 = v25 & 0xC000000000000001;
  v34 = MEMORY[0x277D84F90];
  *&v53 = 136446210;
  v173 = v53;
  v181 = v25;
  v182 = v31;
  v183 = v65;
  do
  {
    v153 = v34;
    v17 = v67;
    while (1)
    {
      if (v184)
      {
        v69 = MEMORY[0x266780220](v17, v25);
      }

      else
      {
        if (v17 >= *(v185 + 16))
        {
          goto LABEL_74;
        }

        v69 = *(v25 + 8 * v17 + 32);
      }

      v70 = v69;
      v67 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v71 = [v69 identifier];
      if (v71)
      {
        break;
      }

      v177(v31, v179, v16);
      v34 = v70;
      v36 = sub_266266968();
      v74 = sub_266266D68();

      if (os_log_type_enabled(v36, v74))
      {
        v75 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        p_isa = &v176->isa;
        *v75 = v173;
        v76 = v34;
        v175 = v76;
        v77 = [v76 description];
        v78 = v66;
        v79 = sub_266266A58();
        v81 = v80;

        v82 = v79;
        v66 = v78;
        v83 = sub_26621EAF0(v82, v81, &p_isa);
        v16 = v174;

        *(v75 + 4) = v83;
        v65 = v183;
        _os_log_impl(&dword_266219000, v36, v74, "INPlayMediaIntentHandler#convert identifier nil for mediaSubItem: %{public}s", v75, 0xCu);
        v34 = v176;
        __swift_destroy_boxed_opaque_existential_1Tm(v176);
        v31 = v182;
        MEMORY[0x266780880](v34, -1, -1);
        v84 = v75;
        v25 = v181;
        MEMORY[0x266780880](v84, -1, -1);

        v180(v31, v16);
      }

      else
      {

        v180(v31, v16);
      }

LABEL_22:
      ++v17;
      if (v67 == v65)
      {
        v34 = v153;
        goto LABEL_40;
      }
    }

    v72 = v71;
    sub_266266A58();

    v73 = [v70 assetInfo];
    if (v73)
    {
      v68 = v73;
      sub_266266A58();
    }

    v65 = v183;
    sub_266265F68();
    v36 = swift_allocObject();
    v34 = sub_266265F78();

    v25 = v181;
    v31 = v182;
    if (!v34)
    {
      goto LABEL_22;
    }

    v36 = &v187;
    MEMORY[0x26677FD50]();
    if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266266BD8();
      v65 = v183;
    }

    sub_266266BF8();
    v34 = v187;
  }

  while (v67 != v65);
LABEL_40:

  v85 = v162;
  v86 = sub_26625F6C0(v162, v34);

  if (!v86)
  {
    v90 = v157;
    v177(v157, v179, v16);
    v91 = sub_266266968();
    v92 = sub_266266D68();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_266219000, v91, v92, "INPlayMediaIntentHandler#convert Unexpected nil PlaybackItem transforming from INMediaItem for container", v93, 2u);
      MEMORY[0x266780880](v93, -1, -1);
      v94 = v85;
    }

    else
    {
      v94 = v91;
      v91 = v85;
    }

    v101 = v158;

    v180(v90, v16);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
    v63 = *(*(v62 - 8) + 56);
    v64 = v101;
LABEL_54:
    v102 = 1;
    return v63(v64, v102, 1, v62);
  }

  v87 = v172;
  v88 = [v172 playShuffled];
  if (v88)
  {
    v89 = v88;
    [v88 BOOLValue];

    if ((sub_266266EC8() & 1) == 0)
    {
LABEL_56:
      v103 = [v87 playbackQueueLocation];
      sub_266236A4C(v103, v170);
      goto LABEL_57;
    }
  }

  else if ((sub_266266EC8() & 1) == 0)
  {
    goto LABEL_56;
  }

  if (sub_266266E68())
  {
    goto LABEL_56;
  }

  v95 = [v87 backingStore];
  objc_opt_self();
  v96 = swift_dynamicCastObjCClass();
  if (!v96)
  {

    v87 = v172;
    goto LABEL_56;
  }

  v97 = v96;
  v177(v152[0], v179, v16);
  v98 = sub_266266968();
  v99 = sub_266266D58();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_266219000, v98, v99, "INPlayMediaIntentHandler#convert User is asking to create station from currently playing and we received a station from server. Add that to up next", v100, 2u);
    MEMORY[0x266780880](v100, -1, -1);
  }

  v180(v152[0], v16);
  (*(v168 + 104))(v170, *MEMORY[0x277D55740], v169);
  [v97 setPlaybackQueueLocation_];

  v87 = v172;
LABEL_57:
  [v87 playbackRepeatMode];
  sub_266266F58();
  v104 = (v154 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider);
  __swift_project_boxed_opaque_existential_1((v154 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider), *(v154 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider + 24));
  if (sub_266266288())
  {
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    sub_266266298();
  }

  v105 = [v172 privatePlayMediaIntentData];
  if (v105)
  {
    v106 = v105;
    v107 = [v105 privateMediaIntentData];

    if (v107)
    {
      v108 = [v107 speakerIDInfo];

      if (v108)
      {
        v109 = [v108 sharedUserID];

        if (v109)
        {
          sub_266266A58();

          sub_266266A78();
        }
      }
    }
  }

  v185 = v86;
  (*(v168 + 16))(v163, v170, v169);
  v110 = v172;
  sub_266266E38();
  v111 = [v110 hashedRouteUIDs];
  if (v111)
  {
    v112 = v111;
    sub_266266BB8();
  }

  sub_266266E58();
  (*(v164 + 16))(v155, v171, v165);
  v113 = v166;
  sub_2662662F8();
  v114 = v159;
  v115 = v174;
  v177(v159, v179, v174);
  v116 = v185;

  v117 = sub_266266968();
  v118 = sub_266266D58();

  v119 = os_log_type_enabled(v117, v118);
  v152[1] = v66;
  if (v119)
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v187 = v121;
    *v120 = 136446466;
    v122 = sub_2662666C8();
    v124 = sub_26621EAF0(v122, v123, &v187);

    *(v120 + 4) = v124;
    *(v120 + 12) = 2082;
    p_isa = v116;
    sub_2662664A8();
    sub_2662630A0(&qword_280069C80, MEMORY[0x277D55720], MEMORY[0x277D55630]);
    v125 = sub_2662670C8();
    v127 = sub_26621EAF0(v125, v126, &v187);

    *(v120 + 14) = v127;
    _os_log_impl(&dword_266219000, v117, v118, "INPlayMediaIntentHandler#convert %{public}s PlaybackItem: %{public}s", v120, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v121, -1, -1);
    v128 = v120;
    v113 = v166;
    MEMORY[0x266780880](v128, -1, -1);
  }

  v180(v114, v115);
  v129 = v115;
  v130 = v161;
  v131 = v167;
  v132 = v156;
  v177(v156, v179, v115);
  v133 = v160;
  (*(v131 + 16))(v160, v113, v130);
  v134 = sub_266266968();
  v135 = sub_266266D58();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = v133;
    v138 = swift_slowAlloc();
    v187 = v138;
    *v136 = 136446466;
    v139 = sub_2662666C8();
    v141 = sub_26621EAF0(v139, v140, &v187);

    *(v136 + 4) = v141;
    *(v136 + 12) = 2082;
    sub_2662630A0(&qword_280069C78, MEMORY[0x277D556A0], MEMORY[0x277D556A8]);
    v142 = sub_2662670C8();
    v144 = v143;
    v145 = v137;
    v116 = v185;
    (*(v167 + 8))(v145, v130);
    v146 = sub_26621EAF0(v142, v144, &v187);
    v131 = v167;

    *(v136 + 14) = v146;
    _os_log_impl(&dword_266219000, v134, v135, "INPlayMediaIntentHandler#convert %{public}s PlaybackAttributes: %{public}s", v136, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v138, -1, -1);
    v147 = v136;
    v113 = v166;
    MEMORY[0x266780880](v147, -1, -1);
  }

  else
  {

    (*(v131 + 8))(v133, v130);
  }

  v180(v132, v129);
  (*(v164 + 8))(v171, v165);
  (*(v168 + 8))(v170, v169);
  v148 = v158;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  v150 = *(v149 + 48);
  *v148 = v116;
  (*(v131 + 32))(v148 + v150, v113, v130);
  v63 = *(*(v149 - 8) + 56);
  v64 = v148;
  v102 = 0;
  v62 = v149;
  return v63(v64, v102, 1, v62);
}

uint64_t sub_26625F6C0(void *a1, uint64_t a2)
{
  v92 = a2;
  v93 = sub_266266988();
  v90 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v84 - v6;
  v7 = sub_266265F58();
  v94 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C90, &qword_2662689D8);
  MEMORY[0x28223BE20](v91);
  v11 = &v84 - v10;
  v12 = sub_266265F08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C98, &qword_2662689E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v88 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - v22;
  v95 = a1;
  v24 = [a1 identifier];
  if (!v24)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = v93;
    v32 = __swift_project_value_buffer(v93, static Logger.default);
    swift_beginAccess();
    v33 = v90;
    (*(v90 + 16))(v5, v32, v31);
    v34 = v95;
    v35 = sub_266266968();
    v36 = sub_266266D68();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96 = v38;
      *v37 = 136446210;
      v39 = v34;
      v40 = [v39 description];
      v41 = sub_266266A58();
      v43 = v42;

      v44 = sub_26621EAF0(v41, v43, &v96);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_266219000, v35, v36, "INPlayMediaIntentHandler#convert identifier nil for mediaItem: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v37, -1, -1);

      (*(v33 + 8))(v5, v93);
    }

    else
    {

      (*(v33 + 8))(v5, v31);
    }

    return 0;
  }

  v25 = v24;
  v85 = v9;
  v26 = sub_266266A58();
  v28 = v27;

  sub_266265F68();
  swift_allocObject();

  v86 = v26;
  v89 = v28;
  if (sub_266265F78())
  {
    sub_266265F18();

    sub_266265EF8();
    (*(v13 + 8))(v15, v12);
    v29 = v94;
    v30 = *(v94 + 56);
    v30(v23, 0, 1, v7);
  }

  else
  {
    v29 = v94;
    v30 = *(v94 + 56);
    v30(v23, 1, 1, v7);
  }

  (*(v29 + 104))(v21, *MEMORY[0x277D555F8], v7);
  v30(v21, 0, 1, v7);
  v45 = *(v91 + 48);
  sub_266228524(v23, v11, &qword_280069C98, &qword_2662689E0);
  sub_266228524(v21, &v11[v45], &qword_280069C98, &qword_2662689E0);
  v46 = *(v29 + 48);
  if (v46(v11, 1, v7) == 1)
  {
    sub_26622858C(v21, &qword_280069C98, &qword_2662689E0);
    sub_26622858C(v23, &qword_280069C98, &qword_2662689E0);
    v47 = v46(&v11[v45], 1, v7);
    v48 = v95;
    if (v47 == 1)
    {
      sub_26622858C(v11, &qword_280069C98, &qword_2662689E0);
      v49 = v92;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v50 = v88;
  sub_266228524(v11, v88, &qword_280069C98, &qword_2662689E0);
  if (v46(&v11[v45], 1, v7) == 1)
  {
    sub_26622858C(v21, &qword_280069C98, &qword_2662689E0);
    sub_26622858C(v23, &qword_280069C98, &qword_2662689E0);
    (*(v94 + 8))(v50, v7);
    v48 = v95;
LABEL_14:
    sub_26622858C(v11, &qword_280069C90, &qword_2662689D8);
    goto LABEL_26;
  }

  v52 = v94;
  v53 = &v11[v45];
  v54 = v85;
  (*(v94 + 32))(v85, v53, v7);
  sub_2662630A0(&qword_280069CA0, MEMORY[0x277D55618], MEMORY[0x277D55620]);
  v55 = sub_266266A38();
  v56 = *(v52 + 8);
  v56(v54, v7);
  sub_26622858C(v21, &qword_280069C98, &qword_2662689E0);
  sub_26622858C(v23, &qword_280069C98, &qword_2662689E0);
  v56(v50, v7);
  sub_26622858C(v11, &qword_280069C98, &qword_2662689E0);
  v49 = v92;
  v48 = v95;
  if (v55)
  {
LABEL_19:

    if (v49 >> 62)
    {
      v57 = sub_266267078();
    }

    else
    {
      v57 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v93;
    v59 = v90;
    if (v57)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266780220](0, v49);
        goto LABEL_25;
      }

      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_25:
        sub_266265F38();
        v89 = v60;

        goto LABEL_26;
      }

      __break(1u);
    }

    else if (qword_280069528 == -1)
    {
      goto LABEL_37;
    }

    swift_once();
LABEL_37:
    v70 = __swift_project_value_buffer(v58, static Logger.default);
    swift_beginAccess();
    v71 = v87;
    (*(v59 + 16))(v87, v70, v58);
    v72 = v48;
    v73 = sub_266266968();
    v74 = sub_266266D68();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v59;
      v77 = swift_slowAlloc();
      v96 = v77;
      *v75 = 136446210;
      v78 = v72;
      v79 = [v78 description];
      v80 = sub_266266A58();
      v82 = v81;

      v83 = sub_26621EAF0(v80, v82, &v96);

      *(v75 + 4) = v83;
      _os_log_impl(&dword_266219000, v73, v74, "INPlayMediaIntentHandler#convert subItems empty for classicalRecording mediaItem: %{public}s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266780880](v77, -1, -1);
      MEMORY[0x266780880](v75, -1, -1);

      (*(v76 + 8))(v87, v58);
    }

    else
    {

      (*(v59 + 8))(v71, v58);
    }

    return 0;
  }

LABEL_26:
  v61 = [v48 privateMediaItemValueData];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 assetInfo];

    if (v63)
    {
      sub_266266A58();
    }
  }

  v64 = [v48 privateMediaItemValueData];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 recommendationId];

    if (v66)
    {
      sub_266266A58();
    }
  }

  v67 = [v48 privateMediaItemValueData];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 sharedUserIdFromPlayableMusicAccount];

    if (v69)
    {
      sub_266266A58();

      sub_266266A78();
    }
  }

  sub_2662664A8();
  swift_allocObject();

  return sub_2662664B8();
}

uint64_t sub_266260290(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_266266988();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v86 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v90 = &v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v86 - v20;
  sub_266228130(0, &qword_2800696C8, 0x277CCABB0);
  v22 = sub_266266F88();
  v23 = v22;
  if (!a1)
  {

    goto LABEL_12;
  }

  v24 = a1;
  v25 = sub_266266F98();

  if ((v25 & 1) == 0)
  {
LABEL_12:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v47 = v92;
    v48 = __swift_project_value_buffer(v92, static Logger.default);
    swift_beginAccess();
    v49 = v91;
    (*(v91 + 16))(v11, v48, v47);
    v50 = sub_266266968();
    v51 = sub_266266D58();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_266219000, v50, v51, "INPlayMediaIntentHandler#shouldDisambiguate Entity confidence disabled", v52, 2u);
      MEMORY[0x266780880](v52, -1, -1);
    }

    (*(v49 + 8))(v11, v47);
    return 0;
  }

  if (!a2 || !a3)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v53 = v92;
    v54 = __swift_project_value_buffer(v92, static Logger.default);
    swift_beginAccess();
    v55 = v91;
    (*(v91 + 16))(v14, v54, v53);
    v56 = sub_266266968();
    v57 = sub_266266D68();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_266219000, v56, v57, "INPlayMediaIntentHandler#shouldDisambiguate No ratios for internal / production", v58, 2u);
      MEMORY[0x266780880](v58, -1, -1);
    }

    (*(v55 + 8))(v14, v53);
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider), *(v4 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider + 24));
  v26 = a2;
  v27 = a3;
  v28 = sub_266266098();
  v29 = 0x280069000uLL;
  v88 = v27;
  v89 = v26;
  if (v28)
  {
    v30 = v92;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v30, static Logger.default);
    swift_beginAccess();
    v32 = v91;
    v87 = *(v91 + 16);
    v87(v21, v31, v30);
    v33 = v26;
    v34 = sub_266266968();
    v35 = sub_266266D58();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v94[0] = v37;
      *v36 = 136315138;
      v38 = v33;
      v39 = [v38 description];
      v40 = sub_266266A58();
      v42 = v41;

      v43 = v40;
      v30 = v92;
      v44 = sub_26621EAF0(v43, v42, v94);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_266219000, v34, v35, "INPlayMediaIntentHandler#shouldDisambiguate On internal build with ratio 1/%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v45 = v37;
      v29 = 0x280069000;
      MEMORY[0x266780880](v45, -1, -1);
      MEMORY[0x266780880](v36, -1, -1);
    }

    v46 = *(v32 + 8);
    v46(v21, v30);
  }

  else
  {
    v30 = v92;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v30, static Logger.default);
    swift_beginAccess();
    v61 = v91;
    v87 = *(v91 + 16);
    v87(v19, v60, v30);
    v62 = v27;
    v63 = sub_266266968();
    v64 = sub_266266D58();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v94[0] = v66;
      *v65 = 136315138;
      v67 = v62;
      v68 = [v67 description];
      v69 = sub_266266A58();
      v71 = v70;

      v72 = sub_26621EAF0(v69, v71, v94);
      v30 = v92;

      *(v65 + 4) = v72;
      _os_log_impl(&dword_266219000, v63, v64, "INPlayMediaIntentHandler#shouldDisambiguate On prod build with ratio 1/%s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      v73 = v66;
      v29 = 0x280069000uLL;
      MEMORY[0x266780880](v73, -1, -1);
      MEMORY[0x266780880](v65, -1, -1);
    }

    v46 = *(v61 + 8);
    v46(v19, v30);
  }

  v74 = v90;
  sub_266266C68();
  v76 = 1.0 / v75;
  v77 = vcvtd_n_f64_u64(sub_2662620D0(0x20000000000001uLL), 0x35uLL);
  LODWORD(v92) = v77 < v76;
  if (*(v29 + 1320) != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v30, static Logger.default);
  swift_beginAccess();
  v87(v74, v78, v30);
  v79 = sub_266266968();
  v80 = sub_266266D58();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93 = v82;
    *v81 = 134218498;
    *(v81 + 4) = v77 + 0.0;
    *(v81 + 12) = 2048;
    *(v81 + 14) = v76;
    *(v81 + 22) = 2080;
    if (v77 >= v76)
    {
      v83 = 0x65736C6166;
    }

    else
    {
      v83 = 1702195828;
    }

    if (v77 >= v76)
    {
      v84 = 0xE500000000000000;
    }

    else
    {
      v84 = 0xE400000000000000;
    }

    v85 = sub_26621EAF0(v83, v84, &v93);

    *(v81 + 24) = v85;
    _os_log_impl(&dword_266219000, v79, v80, "INPlayMediaIntentHandler#shouldDisambiguate Random number: %f Chance: %f Should disambiguate? %s", v81, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x266780880](v82, -1, -1);
    MEMORY[0x266780880](v81, -1, -1);
  }

  else
  {
  }

  v46(v74, v30);
  return v92;
}

uint64_t sub_266260BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a5;
  v44 = a2;
  v45 = a3;
  v9 = sub_266266988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 privatePlayMediaIntentData];
  if (v13 && (v14 = v13, v15 = [v13 privateMediaIntentData], v14, v15) && (v16 = objc_msgSend(v15, sel_speakerIDInfo), v15, v16) && (v17 = objc_msgSend(v16, sel_sharedUserID), v16, v17))
  {
    sub_266266A58();

    v41 = sub_266266A78();
    v42 = v18;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v19, v9);
  v20 = a1;
  v21 = sub_266266968();
  v22 = sub_266266D78();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a4;
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = sub_266266E08() & 1;

    _os_log_impl(&dword_266219000, v21, v22, "INPlayMediaIntentHandler#searchSpotlight executing local spotlight search, isPommesResponse=%{BOOL}d", v24, 8u);
    v25 = v24;
    a4 = v23;
    MEMORY[0x266780880](v25, -1, -1);
  }

  else
  {

    v21 = v20;
  }

  (*(v10 + 8))(v12, v9);
  v26 = *(v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch + 32);
  v39 = *(v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch + 24);
  v40 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch), v39);
  v27 = [v20 mediaSearch];
  v38 = MEMORY[0x26677F410](v20);
  v29 = v28;
  v30 = swift_allocObject();
  v32 = v44;
  v31 = v45;
  v30[2] = v44;
  v30[3] = v31;
  v33 = v43;
  v30[4] = a4;
  v30[5] = v33;
  v30[6] = v20;
  v34 = *(v26 + 8);
  v35 = v20;
  sub_266262DA4(v32, v31);

  v34(v27, v41, v42, v38, v29, v35, sub_266262D94, v30, v39, v26);
}

uint64_t sub_266260F78(void *a1, void *a2, uint64_t a3, void (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6)
{
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v72 - v19;
  if (a1)
  {
    v21 = qword_280069528;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v20, v23, v12);
    v24 = v12;
    v25 = v22;
    v26 = sub_266266968();
    v27 = sub_266266D48();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v79 = a5;
      v29 = v28;
      v76 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = v78;
      *v29 = 136446466;
      v30 = sub_2662666D8();
      v77 = v24;
      v32 = a4;
      v33 = sub_26621EAF0(v30, v31, &v80);

      *(v29 + 4) = v33;
      a4 = v32;
      *(v29 + 12) = 2114;
      *(v29 + 14) = v25;
      v34 = v76;
      *v76 = a1;
      v35 = v25;
      _os_log_impl(&dword_266219000, v26, v27, "INPlayMediaIntentHandler#item %{public}s Successful search result: %{public}@", v29, 0x16u);
      sub_26622858C(v34, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v34, -1, -1);
      v36 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v29, -1, -1);

      (*(v13 + 8))(v20, v77);
    }

    else
    {

      (*(v13 + 8))(v20, v24);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_266267E70;
    *(v68 + 32) = v25;
    v69 = v25;
    a4(v68);
  }

  else
  {
    v76 = v18;
    v74 = a6;
    v78 = a2;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    v38 = *(v13 + 16);
    v77 = v13 + 16;
    v73 = v38;
    v38(v17, v37, v12);
    v39 = sub_266266968();
    v40 = sub_266266D68();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v75 = a3;
      v42 = v41;
      v43 = swift_slowAlloc();
      v72 = a4;
      v44 = v43;
      v80 = v43;
      *v42 = 136446210;
      v45 = sub_2662666D8();
      v79 = a5;
      v47 = v37;
      v48 = v13;
      v49 = v12;
      v50 = sub_26621EAF0(v45, v46, &v80);
      a5 = v79;

      *(v42 + 4) = v50;
      v12 = v49;
      v13 = v48;
      v37 = v47;
      _os_log_impl(&dword_266219000, v39, v40, "INPlayMediaIntentHandler#searchSpotlight %{public}s No results from local search", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v51 = v44;
      a4 = v72;
      MEMORY[0x266780880](v51, -1, -1);
      v52 = v42;
      a3 = v75;
      MEMORY[0x266780880](v52, -1, -1);
    }

    v53 = *(v13 + 8);
    v53(v17, v12);
    v54 = v76;
    if (v78)
    {
      v73(v76, v37, v12);

      v55 = sub_266266968();
      v56 = sub_266266D68();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v75 = a3;
        v58 = v57;
        v59 = swift_slowAlloc();
        v79 = v53;
        v80 = v59;
        v60 = a4;
        v61 = v59;
        *v58 = 136446210;
        v62 = sub_2662666D8();
        v77 = v12;
        v64 = a5;
        v65 = sub_26621EAF0(v62, v63, &v80);

        *(v58 + 4) = v65;
        a5 = v64;
        _os_log_impl(&dword_266219000, v55, v56, "INPlayMediaIntentHandler#searchSpotlight %{public}s Local search using fallback completion due to nil result", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        v66 = v61;
        a4 = v60;
        MEMORY[0x266780880](v66, -1, -1);
        v67 = v58;
        a3 = v75;
        MEMORY[0x266780880](v67, -1, -1);

        v79(v54, v77);
      }

      else
      {

        v53(v54, v12);
      }

      v71 = v78;
      (v78)(v74, a4, a5);
      return sub_266262DB4(v71, a3);
    }

    else
    {
      return (a4)(0);
    }
  }
}

id INPlayMediaIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INPlayMediaIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2662616F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
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

void *sub_266261850(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_266261A80@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_266261AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_266261BA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &unk_280069D30, &qword_266268A50, MEMORY[0x277D55578]);
  *v3 = result;
  return result;
}

void *sub_266261BE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &unk_280069D20, &qword_266267D80, MEMORY[0x277D609D0]);
  *v3 = result;
  return result;
}

void *sub_266261C2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266261CD8(a1, a2, a3, *v3, &qword_2800695A8, &qword_266267D88, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_266261C70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266261EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266261C90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266261FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266261CD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_266261EB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CE8, &qword_266268A30);
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

char *sub_266261FC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800695D8, &qword_266267E40);
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

unint64_t sub_2662620D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x266780890](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x266780890](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26626215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v54[3] = a17;
  v54[4] = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a17 - 8) + 32))(boxed_opaque_existential_1, a2, a17);
  v53[3] = a14;
  v53[4] = a22;
  v30 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(a14 - 8) + 32))(v30, a3, a14);
  v52[3] = a19;
  v52[4] = a27;
  v31 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a19 - 8) + 32))(v31, a4, a19);
  v51[3] = a15;
  v51[4] = a23;
  v32 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a15 - 8) + 32))(v32, a5, a15);
  v50[3] = a16;
  v50[4] = a24;
  v33 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a16 - 8) + 32))(v33, a7, a16);
  v49[3] = a13;
  v49[4] = a21;
  v34 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a13 - 8) + 32))(v34, a8, a13);
  v48[3] = a18;
  v48[4] = a26;
  v35 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a18 - 8) + 32))(v35, a9, a18);
  v47[3] = a20;
  v47[4] = a28;
  v36 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a20 - 8) + 32))(v36, a11, a20);
  *&a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_playbackService] = a1;
  sub_266220C24(v54, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_localSearch]);
  sub_266220C24(v53, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_deviceProvider]);
  sub_266220C24(v52, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nowPlaying]);
  sub_266220C24(v51, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_seDeviceProvider]);
  sub_266220C24(v49, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider]);
  sub_266220C24(a6, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider]);
  sub_266220C24(v50, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_featureFlagProvider]);
  sub_266220C24(v48, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_nearDeviceProvider]);
  sub_266220C24(a10, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_siriKitTaskLoggingProvider]);
  sub_266220C24(v47, &a12[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_onscreenEntityProvider]);
  v46.receiver = a12;
  v46.super_class = type metadata accessor for INPlayMediaIntentHandler();
  v37 = objc_msgSendSuper2(&v46, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return v37;
}

id sub_266262570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, uint64_t a25)
{
  v88 = a8;
  v86 = a7;
  v97 = a6;
  v84 = a5;
  v82 = a4;
  v80 = a3;
  v77 = a2;
  v93 = a22;
  v94 = a21;
  v92 = a23;
  v90 = a25;
  v91 = a24;
  v89 = a11;
  v95 = a10;
  v96 = a1;
  v87 = a9;
  v70 = a15;
  v72 = a16;
  v64 = a14;
  v75 = a13;
  v85 = a20;
  v83 = *(a20 - 8);
  v79 = a18;
  v25 = MEMORY[0x28223BE20](a13);
  v81 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v76 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v73 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v98 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v33);
  v39 = &v62 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v39;
  v63 = a19;
  v40 = *(a19 - 8);
  v41 = MEMORY[0x28223BE20](v37);
  v43 = &v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v43;
  v45 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v41);
  v48 = &v62 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v48;
  v67 = a17;
  v49 = *(a17 - 8);
  MEMORY[0x28223BE20](v46);
  v51 = &v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = objc_allocWithZone(type metadata accessor for INPlayMediaIntentHandler());
  (*(v49 + 16))(v51, v77, a17);
  v52 = v64;
  (*(v45 + 16))(v48, v80, v64);
  (*(v40 + 16))(v43, v82, a19);
  v53 = v70;
  (*(v36 + 16))(v39, v84, v70);
  v54 = v72;
  (*(v71 + 16))(v98, v86, v72);
  v55 = v73;
  v56 = v75;
  (*(v74 + 16))(v73, v88, v75);
  v57 = v76;
  v58 = v79;
  (*(v78 + 16))(v76, v87, v79);
  v59 = v81;
  v60 = v85;
  (*(v83 + 16))(v81, v89, v85);
  return sub_26626215C(v96, v51, v68, v66, v65, v97, v98, v55, v57, v95, v59, v69, v56, v52, v53, v54, v67, v58, v63, v60, v94, *(&v94 + 1), v93, *(&v93 + 1), v92, *(&v92 + 1), v91, v90);
}

uint64_t sub_266262BE0()
{
  MEMORY[0x266780930](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266262C18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266262C84()
{
  result = qword_280069BE0;
  if (!qword_280069BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280069BD8, &qword_266268980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069BE0);
  }

  return result;
}

uint64_t sub_266262D04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266262D44()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266262DA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266262DB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266262DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266266958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280069538;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = logObject;
  sub_266266938();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "playMediaIntentHandlerResolveNowPlayingItem";
  *(v16 + 24) = 43;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_26626306C;
  v17[1] = v11;

  sub_266266F38();
  sub_266266928();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_266262CEC;
  *(v18 + 24) = v16;

  sub_266259E6C(sub_266242138, v18, v20[1]);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2662630A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662630E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266263128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266263198()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[14];
  v6 = sub_266266308();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2662632B0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069C70, &qword_2662689D0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26625B754(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_266263360()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662633B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228640;

  return sub_26625CFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_59Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662634E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266228320;

  return sub_26625CFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2662635AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_266266958() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + 32);

  return a2(a1, v6, v7, v11, v2 + v5, v9, v10);
}

uint64_t sub_266263670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662636A8(NSObject *a1, _DWORD *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v136 = a2;
  v147 = a1;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v144 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v145 = (&v133 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v146 = &v133 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v133 - v26);
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a4;
  v141 = a5;
  v28[4] = a5;
  v28[5] = a6;
  v28[6] = a7;
  v28[7] = a8;
  v29 = qword_280069528;
  v142 = a3;
  v140 = a4;
  v143 = a6;

  v137 = a7;

  v138 = a8;

  if (v29 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v30 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    isa = v15[2].isa;
    v149 = &v15[2];
    isa(v27, v30, v14);
    v31 = sub_266266968();
    v32 = sub_266266D58();
    v33 = v15;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = v30;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INPlayMediaIntentHandler#item looking in private audiosearch results...", v35, 2u);
      v36 = v35;
      v30 = v34;
      MEMORY[0x266780880](v36, -1, -1);
    }

    v39 = v33[1].isa;
    v37 = v33 + 1;
    v38 = v39;
    (v39)(v27, v14);
    v40 = v147;
    v41 = [v147 privatePlayMediaIntentData];
    if (!v41)
    {
      goto LABEL_38;
    }

    v42 = v41;
    v43 = [v41 audioSearchResults];

    if (!v43)
    {
      goto LABEL_38;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v44 = sub_266266BB8();

    if (!(v44 >> 62))
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_8;
    }

    if (!sub_266267078())
    {
      break;
    }

LABEL_8:
    v45 = sub_266266CF8();

    v46 = v135;
    isa(v135, v30, v14);

    v15 = sub_266266968();
    LODWORD(v47) = sub_266266D78();

    v48 = os_log_type_enabled(v15, v47);
    v49 = (v45 >> 62);
    v134 = v28;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      p_isa = &v133->isa;
      v136 = v50;
      *v50 = 136315138;
      if (!v49)
      {
        v27 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_11;
      }

      goto LABEL_67;
    }

    (v38)(v46, v14);
    while (1)
    {
      if (v49)
      {
        if (!sub_266267078())
        {
          goto LABEL_62;
        }
      }

      else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      if ((v45 & 0xC000000000000001) != 0)
      {

        v66 = MEMORY[0x266780220](0, v45);
        goto LABEL_32;
      }

      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v65 = *(v45 + 32);

        v66 = v65;
LABEL_32:
        v67 = v66;
        v68 = v45;
        v69 = v142;
        v70 = *&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
        v149 = *&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
        v71 = __swift_project_boxed_opaque_existential_1(&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v70);
        v147 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
        isa = v71;
        v72 = swift_allocObject();
        v74 = v140;
        v73 = v141;
        v72[2] = v140;
        v72[3] = v67;
        v75 = v143;
        v72[4] = v73;
        v72[5] = v75;
        v72[6] = v68;
        v72[7] = v69;
        v76 = v138;
        v72[8] = v137;
        v72[9] = v76;
        v77 = v67;
        v78 = v69;
        v79 = v74;

        v80 = v77;
        sub_266266608();

        goto LABEL_59;
      }

      __break(1u);
LABEL_67:
      v27 = sub_266267078();
LABEL_11:
      LODWORD(v139) = v47;
      v144 = v49;
      v145 = v15;
      v146 = v38;
      v147 = v37;
      isa = v14;
      if (v27)
      {
        break;
      }

      v38 = MEMORY[0x277D84F90];
LABEL_26:
      v60 = MEMORY[0x26677FD90](v38, MEMORY[0x277D837D0]);
      v62 = v61;

      v63 = sub_26621EAF0(v60, v62, &p_isa);

      v64 = v136;
      *(v136 + 1) = v63;
      v37 = v145;
      _os_log_impl(&dword_266219000, v145, v139, "INPlayMediaIntentHandler#item using unique private server search results: %s", v64, 0xCu);
      v15 = v133;
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x266780880](v15, -1, -1);
      MEMORY[0x266780880](v64, -1, -1);

      (v146)(v135, isa);
      v28 = v134;
      v49 = v144;
    }

    v47 = 0;
    v149 = v45 & 0xC000000000000001;
    v14 = v45 & 0xFFFFFFFFFFFFFF8;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v149)
      {
        v51 = MEMORY[0x266780220](v47, v45);
      }

      else
      {
        if (v47 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v51 = *(v45 + 8 * v47 + 32);
      }

      v52 = v51;
      v15 = (v47 + 1);
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v53 = v27;
      v28 = v45;
      v54 = sub_266266CD8();
      v56 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2662616F4(0, *(v38 + 2) + 1, 1, v38);
      }

      v58 = *(v38 + 2);
      v57 = *(v38 + 3);
      if (v58 >= v57 >> 1)
      {
        v38 = sub_2662616F4((v57 > 1), v58 + 1, 1, v38);
      }

      *(v38 + 2) = v58 + 1;
      v59 = &v38[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      ++v47;
      v27 = v53;
      v45 = v28;
      if (v15 == v53)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

LABEL_38:
  v81 = v146;
  isa(v146, v30, v14);
  v82 = sub_266266968();
  v83 = sub_266266D68();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v135 = v30;
    v86 = v85;
    p_isa = v85;
    *v84 = 136446210;
    v87 = sub_2662666D8();
    v89 = v14;
    v90 = v28;
    v91 = sub_26621EAF0(v87, v88, &p_isa);
    v40 = v147;

    *(v84 + 4) = v91;
    v28 = v90;
    v14 = v89;
    _os_log_impl(&dword_266219000, v82, v83, "INPlayMediaIntentHandler#item %{public}s Intent has missing or invalid audioSearchResults (possibly expected for createRadio or wholeLibrary queries)", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    v92 = v86;
    v30 = v135;
    MEMORY[0x266780880](v92, -1, -1);
    MEMORY[0x266780880](v84, -1, -1);

    v93 = v146;
    v94 = v89;
  }

  else
  {

    v93 = v81;
    v94 = v14;
  }

  (v38)(v93, v94);
  v95 = v145;
  isa(v145, v30, v14);
  v96 = sub_266266968();
  v97 = sub_266266D58();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_266219000, v96, v97, "INPlayMediaIntentHandler#item evaluating if create radio...", v98, 2u);
    MEMORY[0x266780880](v98, -1, -1);
  }

  (v38)(v95, v14);
  v99 = sub_266266EC8();
  if ((sub_266266EE8() & 1) == 0)
  {
    if ((v99 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v100 = sub_266266E68();
  if (v99)
  {
LABEL_49:
    v101 = v139;
    isa(v139, v30, v14);
    v102 = sub_266266968();
    v103 = sub_266266D78();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      p_isa = v105;
      *v104 = 136446210;
      v106 = sub_2662666D8();
      v108 = sub_26621EAF0(v106, v107, &p_isa);

      *(v104 + 4) = v108;
      _os_log_impl(&dword_266219000, v102, v103, "INPlayMediaIntentHandler#item %{public}s Creating radio station from currently playing item", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x266780880](v105, -1, -1);
      MEMORY[0x266780880](v104, -1, -1);

      (v38)(v139, v14);
    }

    else
    {

      (v38)(v101, v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v113 = sub_266266CB8();
    *(v112 + 32) = v113;
    if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v114 = v113;

      v134 = v28;
      if ((v112 & 0xC000000000000001) != 0)
      {
        v115 = MEMORY[0x266780220](0, v112);
      }

      else
      {
        v115 = v114;
      }

      v116 = v115;
      v117 = v142;
      v118 = *&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
      v149 = *&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      v119 = __swift_project_boxed_opaque_existential_1(&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v118);
      v147 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
      isa = v119;
      v120 = swift_allocObject();
      v122 = v140;
      v121 = v141;
      v120[2] = v140;
      v120[3] = v116;
      v123 = v143;
      v120[4] = v121;
      v120[5] = v123;
      v120[6] = v112;
      v120[7] = v117;
      v124 = v138;
      v120[8] = v137;
      v120[9] = v124;
      v125 = v116;
      v126 = v117;
      v127 = v122;

      v80 = v125;
      sub_266266608();

LABEL_59:
    }

    else
    {
LABEL_62:
      __swift_project_boxed_opaque_existential_1(&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&v142[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
      v128 = swift_allocObject();
      v130 = v140;
      v129 = v141;
      v128[2] = v140;
      v128[3] = v129;
      v128[4] = v143;
      v131 = v130;

      sub_266266618();
    }
  }

  if ((v100 & 1) != 0 && (sub_266266EA8() & 1) == 0)
  {
    sub_266262DC4(sub_266265B5C, v28);
  }

LABEL_51:
  isa(v144, v30, v14);
  v109 = sub_266266968();
  v110 = sub_266266D78();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_266219000, v109, v110, "INPlayMediaIntentHandler#item not create radio, trying local search as fallback", v111, 2u);
    MEMORY[0x266780880](v111, -1, -1);
  }

  (v38)(v144, v14);
  sub_266260BB0(v40, 0, 0, sub_266265B5C, v28);
}

uint64_t sub_26626453C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266266958();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_266266968();
  v14 = sub_266266D58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = v5;
    v17 = v4;
    v18 = a1;
    v19 = a2;
    v20 = v15;
    *v15 = 0;
    _os_log_impl(&dword_266219000, v13, v14, "INPlayMediaIntentHandler#logSpotlightResult", v15, 2u);
    v21 = v20;
    a2 = v19;
    a1 = v18;
    v4 = v17;
    v5 = v16;
    v7 = v28;
    MEMORY[0x266780880](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v22 = sub_266266F48();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v23 = logObject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069CF0, &qword_266268A38);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_266268250;
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = MEMORY[0x277D83B88];
  *(v24 + 64) = v26;
  *(v24 + 32) = a1;
  *(v24 + 96) = v25;
  *(v24 + 104) = v26;
  *(v24 + 72) = a2;
  sub_266266948();
  sub_266266918(v22, &dword_266219000, v23, "forceSpotlightResultReturned", 28, 2, v7, "executed=%{signpost.telemetry:number1,public}d failed=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 112, 2, v24);

  return (*(v5 + 8))(v7, v4);
}

void sub_2662648A0(NSObject *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v91 = a2;
  v97 = a1;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v87 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v90 = a5;
  v25[4] = a5;
  v25[5] = a6;
  v25[6] = a7;
  v25[7] = a8;
  v92 = v25;
  v26 = qword_280069528;
  v27 = a3;
  v28 = a4;
  v93 = a6;
  swift_retain_n();
  v96 = a7;
  swift_bridgeObjectRetain_n();
  v95 = a8;
  swift_retain_n();
  v98 = v27;
  v94 = v28;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, static Logger.default);
  swift_beginAccess();
  v30 = *(v15 + 16);
  v30(v24, v29, v14);
  v31 = sub_266266968();
  v32 = sub_266266D58();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_266219000, v31, v32, "INPlayMediaIntentHandler#searchMediaItem working to resolve item to play...", v33, 2u);
    MEMORY[0x266780880](v33, -1, -1);
  }

  v36 = *(v15 + 8);
  v35 = (v15 + 8);
  v34 = v36;
  v36(v24, v14);
  v30(v22, v29, v14);
  v37 = sub_266266968();
  v38 = sub_266266D58();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v34;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_266219000, v37, v38, "INPlayMediaIntentHandler#searchMediaItem evaluating if create radio and server search was suppressed (we have to handle on client)...", v40, 2u);
    v41 = v40;
    v34 = v39;
    MEMORY[0x266780880](v41, -1, -1);
  }

  v34(v22, v14);
  v42 = v97;
  if (sub_266266EC8() & 1) != 0 && (sub_266266E68())
  {
    v43 = v88;
    v30(v88, v29, v14);
    v44 = sub_266266968();
    v45 = sub_266266D78();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v99 = v48;
      *v47 = 136446210;
      v49 = sub_2662666D8();
      v51 = sub_26621EAF0(v49, v50, &v99);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_266219000, v44, v45, "INPlayMediaIntentHandler#searchMediaItem %{public}s Creating radio station from currently playing item when server search was suppressed", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266780880](v48, -1, -1);
      MEMORY[0x266780880](v47, -1, -1);

      v34(v46, v14);
    }

    else
    {

      v34(v43, v14);
    }

    v70 = v93;
    v71 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v73 = sub_266266CB8();
    *(v72 + 32) = v73;
    v65 = v94;
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = v73;

      if ((v72 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x266780220](0, v72);
      }

      else
      {
        v75 = v74;
      }

      v76 = v75;
      v77 = *&v71[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
      v97 = *&v71[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
      v93 = __swift_project_boxed_opaque_existential_1(&v71[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v77);
      v78 = swift_allocObject();
      v78[2] = v65;
      v78[3] = v76;
      v78[4] = v90;
      v78[5] = v70;
      v78[6] = v72;
      v78[7] = v71;
      v79 = v95;
      v78[8] = v96;
      v78[9] = v79;
      v80 = v76;
      v81 = v98;
      v82 = v65;

      v83 = v80;
      v65 = v94;
      sub_266266608();

      v71 = v98;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v71[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], *&v71[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24]);
      v84 = swift_allocObject();
      v85 = v90;
      v84[2] = v65;
      v84[3] = v85;
      v84[4] = v70;
      v86 = v65;

      sub_266266618();
    }
  }

  else
  {
    v88 = v35;
    v52 = swift_allocObject();
    v53 = v91;
    *(v52 + 16) = v91;
    v54 = v53;
    if (sub_266266E88())
    {
      v55 = v89;
      v30(v89, v29, v14);
      v56 = sub_266266968();
      v57 = sub_266266D78();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = v34;
        v60 = swift_slowAlloc();
        v99 = v60;
        *v58 = 136446210;
        v61 = sub_2662666D8();
        v63 = sub_26621EAF0(v61, v62, &v99);

        *(v58 + 4) = v63;
        v42 = v97;
        _os_log_impl(&dword_266219000, v56, v57, "INPlayMediaIntentHandler#searchMediaItem %{public}s Executing local search as force spotlight search flag was present", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x266780880](v60, -1, -1);
        MEMORY[0x266780880](v58, -1, -1);

        v59(v89, v14);
      }

      else
      {

        v34(v55, v14);
      }

      sub_26626453C(1, 0);

      sub_266260BB0(v42, sub_266265944, v52, sub_266265940, v92);

      v65 = v94;
    }

    else
    {
      v64 = v98;
      v65 = v94;
      v66 = v94;
      v67 = v93;

      v68 = v96;

      v69 = v95;

      sub_2662636A8(v42, v54, v64, v66, v90, v67, v68, v69);
    }
  }
}

uint64_t sub_2662651E0(NSObject *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v74 = a5;
  v71 = a2;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - v18;
  v20 = qword_280069528;
  v73 = a3;
  v72 = a4;
  v77 = a6;

  v76 = a7;

  v75 = a8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, static Logger.default);
  swift_beginAccess();
  v22 = *(v15 + 16);
  v22(v19, v21, v14);
  v23 = sub_266266968();
  v24 = sub_266266D58();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_266219000, v23, v24, "INPlayMediaIntentHandler#item working to resolve item to play...", v25, 2u);
    MEMORY[0x266780880](v25, -1, -1);
  }

  v26 = *(v15 + 8);
  v26(v19, v14);
  v27 = [a1 mediaItems];
  if (!v27)
  {
    goto LABEL_24;
  }

  v28 = v27;
  v69 = v26;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v29 = sub_266266BB8();

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_266267078())
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x266780220](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v30 = *(v29 + 32);
  }

  v28 = v30;

  v31 = [a1 mediaItems];
  if (!v31)
  {
LABEL_17:

LABEL_24:
    v62 = v73;
    v63 = v72;
    v64 = v77;

    v65 = v76;

    v66 = v75;

    sub_2662648A0(a1, v71, v62, v63, v74, v64, v65, v66);

    goto LABEL_25;
  }

  v32 = v31;
  v33 = sub_266266BB8();

  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_14;
  }

LABEL_28:
  v34 = sub_266267078();
LABEL_14:

  if (v34 != 1)
  {
    goto LABEL_17;
  }

  v35 = v70;
  v22(v70, v21, v14);
  v36 = v28;
  v37 = sub_266266968();
  v38 = sub_266266D78();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v36;
    v41 = swift_slowAlloc();
    v78 = v41;
    *v39 = 136446210;
    v42 = sub_266266CD8();
    v44 = v35;
    v45 = sub_26621EAF0(v42, v43, &v78);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_266219000, v37, v38, "INPlayMediaIntentHandler#item Overriding results with disambiguation selected item: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v46 = v41;
    v36 = v40;
    MEMORY[0x266780880](v46, -1, -1);
    MEMORY[0x266780880](v39, -1, -1);

    v47 = v44;
  }

  else
  {

    v47 = v35;
  }

  v69(v47, v14);
  v48 = v74;
  v49 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_266267E70;
  *(v50 + 32) = v36;
  v51 = v36;
  v52 = v77;
  v74 = v51;
  if ((v50 & 0xC000000000000001) != 0)
  {

    v53 = MEMORY[0x266780220](0, v50);
  }

  else
  {
    v53 = v51;
  }

  v54 = v73;
  v55 = *&v73[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 24];
  v72 = *&v73[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider + 32];
  v56 = __swift_project_boxed_opaque_existential_1(&v73[OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_appleMediaServicesProvider], v55);
  v70 = OBJC_IVAR____TtC17SiriAudioInternal24INPlayMediaIntentHandler_accountProvider;
  v71 = v56;
  v57 = swift_allocObject();
  v57[2] = v49;
  v57[3] = v53;
  v57[4] = v48;
  v57[5] = v52;
  v57[6] = v50;
  v57[7] = v54;
  v58 = v75;
  v57[8] = v76;
  v57[9] = v58;
  v59 = v53;
  v69 = v54;
  v60 = v49;

  v61 = v59;
  sub_266266608();

LABEL_25:
}

uint64_t sub_266265878()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2662658EC()
{
  result = qword_280069CF8;
  if (!qword_280069CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280069CF8);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_103Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}