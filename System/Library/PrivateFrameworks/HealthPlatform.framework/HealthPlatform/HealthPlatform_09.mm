id UserProfile.profileIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserProfile(0) + 20));

  return v1;
}

uint64_t type metadata accessor for UserProfile(uint64_t a1)
{
  result = qword_280DEDB60;
  if (!qword_280DEDB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void UserProfile.profileIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserProfile(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t UserProfile.init(profileIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  sub_22855C1BC();

  result = type metadata accessor for UserProfile(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t UserProfile.hash(into:)(uint64_t a1)
{
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22855D14C();
}

uint64_t static UserProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  type metadata accessor for UserProfile(0);
  return sub_22855D9AC() & 1;
}

uint64_t UserProfile.hashValue.getter()
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B3414()
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B349C(uint64_t a1)
{
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22855D14C();
}

uint64_t sub_2284B3520(uint64_t a1)
{
  sub_22855E22C();
  sub_22855C1DC();
  sub_2284B35EC(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284B35EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2284B3634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  return sub_22855D9AC() & 1;
}

uint64_t sub_2284B36D0(uint64_t a1)
{
  result = sub_22855C1DC();
  if (v2 <= 0x3F)
  {
    result = sub_2283EF310(319, &qword_280DEE7B0, 0x277CCD7C8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static SourceProfile.availableSourceProfiles(from:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD7D0]) initWithHealthStore_];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  sub_2284B392C(0);
  swift_allocObject();
  v4 = a1;
  return sub_22855CE0C();
}

void sub_2284B3800(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = sub_228476D24;
  v9[4] = v8;
  v12[4] = sub_2284B3DA4;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22852BFE0;
  v12[3] = &block_descriptor_16;
  v10 = _Block_copy(v12);

  v11 = a4;

  [a3 fetchAllProfilesWithCompletion_];
  _Block_release(v10);
}

void sub_2284B392C(uint64_t a1)
{
  if (!qword_27D83FC30)
  {
    sub_2284B3DB0(255, &qword_27D83FC38, MEMORY[0x277D83940]);
    v1 = sub_22855CDFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FC30);
    }
  }
}

uint64_t sub_2284B39B0(unint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, void))
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v6 = sub_22855DB4C();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_16;
    }

    v35 = MEMORY[0x277D84F90];
    sub_2284276D0(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v35;
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v6; ++i)
        {
          v9 = MEMORY[0x22AAB9D20](i, a1);
          v35 = v7;
          v11 = *(v7 + 2);
          v10 = *(v7 + 3);
          if (v11 >= v10 >> 1)
          {
            v12 = v9;
            sub_2284276D0((v10 > 1), v11 + 1, 1);
            v9 = v12;
            v7 = v35;
          }

          *(v7 + 2) = v11 + 1;
          *&v7[8 * v11 + 32] = v9;
        }
      }

      else
      {
        v29 = (a1 + 32);
        do
        {
          v30 = *v29;
          v35 = v7;
          v32 = *(v7 + 2);
          v31 = *(v7 + 3);
          v33 = v30;
          if (v32 >= v31 >> 1)
          {
            v34 = v33;
            sub_2284276D0((v31 > 1), v32 + 1, 1);
            v33 = v34;
            v7 = v35;
          }

          *(v7 + 2) = v32 + 1;
          *&v7[8 * v32 + 32] = v33;
          ++v29;
          --v6;
        }

        while (v6);
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_28;
  }

  v7 = a2;
  v6 = a3;
  if (qword_280DEEBE8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v13 = sub_22855CABC();
  __swift_project_value_buffer(v13, qword_280DEEBF0);
  v14 = v7;
  v15 = sub_22855CA8C();
  v16 = sub_22855D68C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136446466;
    sub_2284B3E04();
    v19 = sub_22855D1BC();
    v21 = sub_2283F8938(v19, v20, &v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = v7;
    sub_2284B3E4C(0);
    v23 = sub_22855D1BC();
    v25 = sub_2283F8938(v23, v24, &v35);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v15, v16, "[%{public}s]: Unable to fetch additional profiles. Proceeding with just primary profile: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  sub_2284B3DB0(0, &qword_27D83F430, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 1) = xmmword_228560580;
  *(v7 + 4) = [v6 profileIdentifier];
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2284269A8(0, *(v7 + 2) + 1, 1, v7);
  }

  v27 = *(v7 + 2);
  v26 = *(v7 + 3);
  if (v27 >= v26 >> 1)
  {
    v7 = sub_2284269A8((v26 > 1), v27 + 1, 1, v7);
  }

  *(v7 + 2) = v27 + 1;
  *&v7[8 * v27 + 32] = 0;
  a4(v7, 0);
}

void sub_2284B3DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SourceProfile);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2284B3E04()
{
  result = qword_27D83FC40;
  if (!qword_27D83FC40)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FC40);
  }

  return result;
}

void sub_2284B3E4C(uint64_t a1)
{
  if (!qword_280DE8EC0)
  {
    sub_228418D44();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE8EC0);
    }
  }
}

void sub_2284B3EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      sub_2284B6328(v16, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t PluginSharableModelDataError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

unint64_t *HKSharedSummary.init(model:pluginIdentifier:)(void *a1, void *a2, uint64_t a3)
{
  v62 = a2;
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = v61 - v6;
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = v61 - v8;
  v70 = sub_22855C4CC();
  v9 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v61[1] = a1[1];
  v61[2] = v12;
  v13 = a1[4];
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  v65 = a1;
  if (v14)
  {
    v61[0] = a3;
    v71 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v14, 0);
    v15 = v71;
    v17 = v9[2];
    v16 = (v9 + 2);
    v18 = v13 + ((v16[64] + 32) & ~v16[64]);
    v67 = *(v16 + 7);
    v68 = v17;
    v66 = v16 - 8;
    v69 = v16;
    do
    {
      v19 = v70;
      v68(v11, v18, v70);
      v20 = sub_22855C4BC();
      v21 = [v20 authorizationIdentifier];

      v22 = sub_22855D1AC();
      v24 = v23;

      (*v66)(v11, v19);
      v71 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2284272C0((v25 > 1), v26 + 1, 1);
        v15 = v71;
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v18 += v67;
      --v14;
      v9 = v69;
    }

    while (v14);
    a1 = v65;
  }

  v28 = sub_228406280(v15);

  v30 = sub_228428BF8(v29);

  v31 = [objc_allocWithZone(MEMORY[0x277CCD170]) init];
  v32 = v64;
  if (!v31)
  {

    sub_2284B7098();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
LABEL_18:
    sub_22848D7D8(a1);
    return v9;
  }

  v33 = v31;
  v69 = v30;
  v34 = sub_22855C08C();
  [v33 setUserData_];

  v35 = type metadata accessor for PluginSharableModel(0);
  v36 = v63;
  sub_2284B7148(a1 + *(v35 + 40), v63, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v37 = sub_22855C30C();
  v9 = *(v37 - 8);
  v38 = (v9[6])(v36, 1, v37);
  v70 = v28;
  if (v38 == 1)
  {
    sub_2284B70EC(v36, &qword_280DEE788, MEMORY[0x277CC9A70]);
    v39 = 0;
  }

  else
  {
    sub_22855C2FC();
    v41 = v9[1];
    ++v9;
    v41(v36, v37);
    v39 = sub_22855D17C();
  }

  [v33 setSourceTimeZoneIdentifier_];

  sub_2284B7148(a1 + *(v35 + 44), v32, &qword_280DECD58, MEMORY[0x277CC9788]);
  v42 = sub_22855C29C();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v32, 1, v42) == 1)
  {
    sub_2284B70EC(v32, &qword_280DECD58, MEMORY[0x277CC9788]);
    v44 = 0;
  }

  else
  {
    sub_22855C1FC();
    (*(v43 + 8))(v32, v42);
    v44 = sub_22855D17C();
  }

  [v33 setSourceLocaleIdentifier_];

  v45 = [v33 data];
  if (!v45)
  {

    sub_2284B7098();
    swift_allocError();
    *v59 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v46 = v45;
  v47 = sub_22855C09C();
  v49 = v48;

  v68 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v67 = sub_22855D17C();

  v66 = sub_22855D17C();
  v71 = a1[2];
  sub_22855E11C();
  v64 = sub_22855D17C();

  v71 = a1[3];
  sub_22855E11C();
  v63 = sub_22855D17C();

  v50 = sub_22855D50C();

  sub_2284B71B4();
  sub_22845D238();
  v51 = sub_22855D50C();
  v62 = v51;

  v52 = v47;
  v53 = v49;
  v70 = sub_22855C08C();
  v54 = v67;
  v55 = v66;
  v56 = v33;
  v57 = v63;
  v58 = v64;
  v9 = [v68 initWithPackage:v67 name:v66 version:v64 compatibilityVersion:v63 authorizationIdentifiers:v50 objectTypes:v51 summaryData:v70];

  sub_22842B38C(v52, v53);
  sub_22848D7D8(v65);
  return v9;
}

uint64_t HKSharedSummary.modelVersion.getter()
{
  swift_getObjectType();
  v1 = [v0 version];
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = [v0 compatibilityVersion];
  v6 = sub_22855D1AC();
  v8 = v7;

  sub_2284B4990(v2, v4, v6, v8);
}

Swift::Int sub_2284B4990(Swift::Int result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = HIBYTE(a2) & 0xF;
  v52 = result;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v12 = sub_2284B6698(v52, a2, 10);
    v51 = v50;

    if (v51)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v54[0] = result;
    v54[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v12 = 0;
          v22 = v54 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v8)
      {
        v12 = 0;
        v27 = v54;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v8)
    {
      if (--v8)
      {
        v12 = 0;
        v16 = v54 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v8)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_22855DD0C();
  }

  v11 = *result;
  if (v11 == 43)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_81;
  }

  if (v11 == 45)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_61;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_61;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_61;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v8) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9)
  {
    v12 = 0;
    if (result)
    {
      while (1)
      {
        v25 = *result - 48;
        if (v25 > 9)
        {
          goto LABEL_61;
        }

        v26 = 10 * v12;
        if ((v12 * 10) >> 64 != (10 * v12) >> 63)
        {
          goto LABEL_61;
        }

        v12 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v9)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v12 = 0;
  LOBYTE(v8) = 1;
LABEL_62:
  LOBYTE(v55) = v8;
  if (v8)
  {
LABEL_63:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEC98);

    v31 = sub_22855CA8C();
    v32 = sub_22855D68C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v34;
      *v33 = 136315394;
      v54[0] = v5;
      swift_getMetatypeMetadata();
      v35 = sub_22855D1BC();
      v37 = sub_2283F8938(v35, v36, &v55);
      v12 = -1;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2283F8938(v52, a2, &v55);
      _os_log_impl(&dword_2283ED000, v31, v32, "[%s]: Unable to determine current version number from: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v34, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    else
    {

      v12 = -1;
    }
  }

LABEL_68:

  v39 = sub_2284B4FE8(a3, a4, v38);
  if (v40)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v41 = sub_22855CABC();
    __swift_project_value_buffer(v41, qword_280DEEC98);

    v42 = sub_22855CA8C();
    v43 = sub_22855D68C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = -1;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v46;
      *v45 = 136315394;
      v54[0] = v5;
      swift_getMetatypeMetadata();
      v47 = sub_22855D1BC();
      v49 = sub_2283F8938(v47, v48, &v55);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_2283F8938(v52, a2, &v55);
      _os_log_impl(&dword_2283ED000, v42, v43, "[%s]: Unable to determine minimum supported version number from: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v46, -1, -1);
      MEMORY[0x22AABAD40](v45, -1, -1);
    }

    else
    {

      v44 = -1;
    }
  }

  else
  {
    v44 = v39;
  }

  return SharableModelVersion.init(latestSupported:minimumSupported:)(v12, v44).latestSupported;
}

unint64_t sub_2284B4FE8(unint64_t result, unint64_t a2, __n128 a3)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22855DD0C();
        v4 = v27;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v4)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v4) = 0;
LABEL_62:
          v29 = v4;
          v25 = v4;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_2284B6698(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t PluginSharableModel.init(sharedSummary:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22855C29C();
  v6 = *(v5 - 8);
  v144 = v5;
  v145 = v6;
  MEMORY[0x28223BE20](v5);
  v135 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for PluginSharableModel(0);
  MEMORY[0x28223BE20](v142);
  v149 = (&v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v136 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v138 = &v125 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v125 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v125 - v17;
  MEMORY[0x28223BE20](v16);
  v146 = &v125 - v18;
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v148 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = &v125 - v22;
  v23 = [a1 name];
  v137 = sub_22855D1AC();
  v25 = v24;

  v153 = MEMORY[0x277D84F90];
  v152 = MEMORY[0x277D84F90];
  v26 = [a1 authorizationIdentifiers];
  v27 = sub_22855D51C();

  sub_2284B3EE0(v27, &v153, &v152);
  v140 = v2;

  v28 = v152;
  if (*(v152 + 16))
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v29 = sub_22855CABC();
    __swift_project_value_buffer(v29, qword_280DEEC98);
    v30 = sub_22855CA8C();
    v31 = sub_22855D68C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v143 = a1;
      v33 = v25;
      v34 = a2;
      v35 = v32;
      v36 = swift_slowAlloc();
      v151[0] = v36;
      *v35 = 136315651;
      *(v35 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v151);
      *(v35 + 12) = 2048;
      *(v35 + 14) = *(v28 + 16);
      *(v35 + 22) = 2081;

      v38 = MEMORY[0x22AAB9430](v37, MEMORY[0x277D837D0]);
      v40 = v39;

      v41 = sub_2283F8938(v38, v40, v151);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_2283ED000, v30, v31, "%s Could not decode %ld authorization categories %{private}s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v36, -1, -1);
      a2 = v34;
      v25 = v33;
      a1 = v143;
      MEMORY[0x22AABAD40](v35, -1, -1);
    }
  }

  v141 = a2;
  v42 = [a1 objectTypes];
  sub_2284B71B4();
  sub_22845D238();
  v43 = sub_22855D51C();

  v44 = sub_2284439C8(v43);

  v45 = [a1 summaryData];
  v46 = sub_22855C09C();
  v48 = v47;

  v49 = objc_allocWithZone(MEMORY[0x277CCD170]);
  v50 = sub_22855C08C();
  sub_22842B38C(v46, v48);
  v51 = [v49 initWithData_];

  if (!v51)
  {

    sub_2284B7098();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v143 = v44;
  if (([v51 hasUserData] & 1) == 0 || (v52 = objc_msgSend(v51, sel_userData)) == 0)
  {

    sub_2284B7098();
    swift_allocError();
    *v60 = 2;
    swift_willThrow();

LABEL_15:
  }

  v131 = v28;
  v53 = v52;
  v128 = sub_22855C09C();
  v127 = v54;

  if ([v51 hasSourceTimeZoneIdentifier] && (v55 = objc_msgSend(v51, sel_sourceTimeZoneIdentifier)) != 0)
  {
    v56 = v55;
    sub_22855D1AC();

    v57 = v147;
    sub_22855C2EC();
    v58 = v57;

    v59 = v148;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v63 = sub_22855CABC();
    __swift_project_value_buffer(v63, qword_280DEEC98);
    v64 = sub_22855CA8C();
    v65 = sub_22855D68C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v151[0] = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v151);
      _os_log_impl(&dword_2283ED000, v64, v65, "[%s] Could not access sourceTimeZoneIdentifier", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x22AABAD40](v67, -1, -1);
      MEMORY[0x22AABAD40](v66, -1, -1);
    }

    v59 = v148;
    v68 = sub_22855C30C();
    v58 = v147;
    (*(*(v68 - 8) + 56))(v147, 1, 1, v68);
  }

  v69 = [v51 hasSourceLocaleIdentifier];
  v130 = v25;
  v129 = v51;
  if (!v69 || (v70 = [v51 sourceLocaleIdentifier]) == 0)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v93 = sub_22855CABC();
    __swift_project_value_buffer(v93, qword_280DEEC98);
    v94 = sub_22855CA8C();
    v95 = sub_22855D68C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v151[0] = v97;
      *v96 = 136315138;
      *(v96 + 4) = sub_2283F8938(0xD000000000000013, 0x8000000228571090, v151);
      _os_log_impl(&dword_2283ED000, v94, v95, "[%s] No sourceLocaleIdentifier was provided", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AABAD40](v97, -1, -1);
      v98 = v96;
      v58 = v147;
      MEMORY[0x22AABAD40](v98, -1, -1);
    }

    v59 = v148;
    v99 = *(v145 + 56);
    v132 = (v145 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v91 = v146;
    v92 = v144;
    v133 = v99;
    v99(v146, 1, 1, v144);
    goto LABEL_36;
  }

  v71 = v70;
  v72 = sub_22855D1AC();
  v74 = v73;

  v75 = v146;
  v126 = v72;
  sub_22855C1EC();
  v76 = v145;
  v77 = *(v145 + 56);
  v132 = (v145 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v78 = v144;
  v133 = v77;
  v77(v75, 0, 1, v144);
  v79 = v134;
  sub_2284B7148(v75, v134, &qword_280DECD58, MEMORY[0x277CC9788]);
  if ((*(v76 + 48))(v79, 1, v78) != 1)
  {

    sub_2284B70EC(v79, &qword_280DECD58, MEMORY[0x277CC9788]);
    v91 = v75;
LABEL_35:
    v92 = v144;
    v58 = v147;
    goto LABEL_36;
  }

  sub_2284B70EC(v79, &qword_280DECD58, MEMORY[0x277CC9788]);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v80 = sub_22855CABC();
  __swift_project_value_buffer(v80, qword_280DEEC98);
  v81 = v74;

  v82 = sub_22855CA8C();
  v83 = sub_22855D68C();

  if (!os_log_type_enabled(v82, v83))
  {

    v91 = v146;
    goto LABEL_35;
  }

  v84 = swift_slowAlloc();
  v85 = swift_slowAlloc();
  *v84 = 136315394;
  v150 = v142;
  v151[0] = v85;
  sub_2284B7364();
  v86 = sub_22855D1BC();
  v88 = sub_2283F8938(v86, v87, v151);

  *(v84 + 4) = v88;
  *(v84 + 12) = 2080;
  v89 = sub_2283F8938(v126, v81, v151);

  *(v84 + 14) = v89;
  v58 = v147;
  _os_log_impl(&dword_2283ED000, v82, v83, "[%s]: Unable to map locale identifier to locale: %s", v84, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AABAD40](v85, -1, -1);
  v90 = v84;
  v59 = v148;
  MEMORY[0x22AABAD40](v90, -1, -1);

  v91 = v146;
  v92 = v144;
LABEL_36:
  HKSharedSummary.modelVersion.getter();
  v144 = v151[0];
  v134 = v151[1];
  v100 = v153;
  sub_2284B7148(v58, v59, &qword_280DEE788, MEMORY[0x277CC9A70]);
  v101 = MEMORY[0x277CC9788];
  v102 = v139;
  sub_2284B7148(v91, v139, &qword_280DECD58, MEMORY[0x277CC9788]);
  v103 = v59;
  v104 = v142;
  v105 = *(v142 + 40);
  v106 = sub_22855C30C();
  v107 = v149;
  (*(*(v106 - 8) + 56))(v149 + v105, 1, 1, v106);
  v142 = *(v104 + 44);
  v133(v107 + v142, 1, 1, v92);
  v108 = v130;
  *v107 = v137;
  v107[1] = v108;
  v109 = v134;
  v107[2] = v144;
  v107[3] = v109;
  v110 = v143;
  v107[4] = v100;
  v107[5] = v110;
  v111 = v127;
  v107[6] = v128;
  v107[7] = v111;
  v144 = v100;

  v112 = a1;
  sub_2284B7200(v103, v107 + v105);
  v113 = v138;
  sub_2284B7148(v102, v138, &qword_280DECD58, v101);
  v114 = v145;
  v115 = v92;
  if ((*(v145 + 48))(v113, 1, v92) == 1)
  {

    v116 = MEMORY[0x277CC9788];
    sub_2284B70EC(v102, &qword_280DECD58, MEMORY[0x277CC9788]);
    v117 = MEMORY[0x277CC9A70];
    sub_2284B70EC(v148, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284B70EC(v146, &qword_280DECD58, v116);
    sub_2284B70EC(v147, &qword_280DEE788, v117);
    sub_2284B70EC(v113, &qword_280DECD58, v116);
    v118 = v149;
    v119 = v142;
    sub_2284B70EC(v149 + v142, &qword_280DECD58, v116);
    v133(&v118[v119], 1, 1, v115);
  }

  else
  {
    v120 = v135;
    (*(v114 + 32))(v135, v113, v92);
    sub_22855C1FC();
    v121 = v136;
    sub_22855C1EC();

    (*(v114 + 8))(v120, v92);
    v122 = MEMORY[0x277CC9788];
    sub_2284B70EC(v102, &qword_280DECD58, MEMORY[0x277CC9788]);
    v123 = MEMORY[0x277CC9A70];
    sub_2284B70EC(v148, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284B70EC(v146, &qword_280DECD58, v122);
    sub_2284B70EC(v147, &qword_280DEE788, v123);
    v133(v121, 0, 1, v115);
    sub_2284B72E4(v121, v149 + v142);
  }

  v124 = v149;
  v149[8] = a1;
  sub_2284B7280(v124, v141);
}

uint64_t sub_2284B6328(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v31 = a3;
  v32 = a2;
  sub_2284B7414(0, &qword_280DE9F68, MEMORY[0x277D11300]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_22855C4CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = objc_allocWithZone(MEMORY[0x277CCD960]);
  v17 = sub_22855D17C();
  [v16 initWithAuthorizationIdentifier_];

  sub_22855C4DC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2284B70EC(v6, &qword_280DE9F68, MEMORY[0x277D11300]);
    v18 = v31;
    v19 = *v31;

    result = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((result & 1) == 0)
    {
      result = sub_2283F7678(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *v18 = result;
    }

    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_2283F7678((v21 > 1), v22 + 1, 1, v19);
      v19 = result;
      *v18 = result;
    }

    *(v19 + 16) = v22 + 1;
    v23 = v19 + 16 * v22;
    *(v23 + 32) = v14;
    *(v23 + 40) = v15;
  }

  else
  {
    v31 = *(v8 + 32);
    (v31)(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v24 = v32;
    v25 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v24;
    }

    else
    {
      v25 = sub_228426ACC(0, v25[2] + 1, 1, v25);
      v27 = v24;
      *v24 = v25;
    }

    v29 = v25[2];
    v28 = v25[3];
    if (v29 >= v28 >> 1)
    {
      *v27 = sub_228426ACC((v28 > 1), v29 + 1, 1, v25);
    }

    (*(v8 + 8))(v13, v7);
    v30 = *v27;
    *(v30 + 16) = v29 + 1;
    return (v31)(v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, v11, v7);
  }

  return result;
}

unsigned __int8 *sub_2284B6698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22855D2AC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2284B6C24(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22855DD0C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2284B6C24(uint64_t a1, unint64_t a2)
{
  v2 = sub_22855D2BC();
  v6 = sub_2284B6CA4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2284B6CA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22855DA3C();
    if (!v9 || (v10 = v9, v11 = sub_2283FC634(v9, 0), v12 = sub_2284B6DFC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22855D1FC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22855D1FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22855DD0C();
LABEL_4:

  return sub_22855D1FC();
}

unint64_t sub_2284B6DFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2284B701C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22855D26C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22855DD0C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2284B701C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22855D24C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2284B701C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22855D27C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB92D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2284B7098()
{
  result = qword_27D83FC48;
  if (!qword_27D83FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC48);
  }

  return result;
}

uint64_t sub_2284B70EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2284B7414(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2284B7148(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284B7414(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2284B71B4()
{
  result = qword_280DEE7B8;
  if (!qword_280DEE7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEE7B8);
  }

  return result;
}

uint64_t sub_2284B7200(uint64_t a1, uint64_t a2)
{
  sub_2284B7414(0, &qword_280DEE788, MEMORY[0x277CC9A70]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284B7280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284B72E4(uint64_t a1, uint64_t a2)
{
  sub_2284B7414(0, &qword_280DECD58, MEMORY[0x277CC9788]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2284B7364()
{
  result = qword_27D83FC50;
  if (!qword_27D83FC50)
  {
    type metadata accessor for PluginSharableModel(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FC50);
  }

  return result;
}

unint64_t sub_2284B73B0()
{
  result = qword_27D83FC58;
  if (!qword_27D83FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC58);
  }

  return result;
}

void sub_2284B7414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284B749C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MockNotificationContentStateManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t MockNotificationContentStateManager.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_2284B7560()
{
  sub_2284B7804(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284B7838(0, &qword_27D83FC60, sub_2284B7804, MEMORY[0x277CBCE78]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_2284B789C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NotificationContentState(0);
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  sub_22855CDCC();
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  sub_22855CD9C();
  (*(v5 + 8))(v7, v4);
  sub_2284B7F68(&qword_27D83FC70, 255, sub_2284B789C, MEMORY[0x277CBCF40]);
  v14 = sub_22855CE6C();
  (*(v10 + 8))(v12, v9);
  return v14;
}

void sub_2284B7838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284B789C(uint64_t a1)
{
  if (!qword_27D83FC68)
  {
    sub_2284B7804(255);
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v1 = sub_22855E2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FC68);
    }
  }
}

uint64_t sub_2284B791C()
{
  v0 = MEMORY[0x277D84F78];
  sub_2284B883C(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  sub_2284B8888(0, &qword_280DE8EB0, v0 + 8);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_22855CDCC();
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  sub_22855CD9C();
  (*(v3 + 8))(v5, v2);
  sub_2284B89FC(&qword_280DE8EB8, &qword_280DE8EB0, v0 + 8);
  v11 = sub_22855CE6C();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_2284B7B10()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2284B7B50(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t sub_2284B7BE8(uint64_t a1, uint64_t *a2)
{
  sub_2283F9B10(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 24));
  sub_2283FAB3C(v5, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_2284B7C94(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  sub_2283FAB3C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t MockPluginNotificationManager.__allocating_init(contentStateManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MockPluginNotificationManager.init(contentStateManager:)(a1);
  return v2;
}

uint64_t MockPluginNotificationManager.init(contentStateManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for MockUNUserNotificationCenter());
  *(v1 + 16) = MockUNUserNotificationCenter.init()();
  sub_2284B7E78(a1, &v9);
  if (v10)
  {
    sub_2284B7FB0(a1);
    sub_2283FAB3C(&v9, &v11);
  }

  else
  {
    v5 = type metadata accessor for MockNotificationContentStateManager();
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v12 = v5;
    v13 = sub_2284B7F68(&qword_27D83FC88, v7, type metadata accessor for MockNotificationContentStateManager, &protocol conformance descriptor for MockNotificationContentStateManager);
    *&v11 = v6;
    sub_2284B7FB0(a1);
    if (v10)
    {
      sub_2284B7FB0(&v9);
    }
  }

  sub_2283FAB3C(&v11, v2 + 24);
  return v2;
}

uint64_t sub_2284B7E78(uint64_t a1, uint64_t a2)
{
  sub_2284B7EDC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284B7EDC(uint64_t a1)
{
  if (!qword_27D83FC78)
  {
    sub_2283F9B94(255, &qword_27D83FC80, &protocol descriptor for NotificationContentStateManager);
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FC78);
    }
  }
}

uint64_t sub_2284B7F68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2284B7FB0(uint64_t a1)
{
  sub_2284B7EDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284B800C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = UNUserNotificationCenter.scheduleNotification(_:)(a1);

  return v4;
}

uint64_t sub_2284B8050(_OWORD *a1)
{
  sub_2284B883C(0, &qword_27D83FC90, &type metadata for PluginFeedItem.NotificationRequest);
  v3 = v2;
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - v4;
  sub_2284B8888(0, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  sub_2284B8900(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v35[0] = *a1;
  v35[1] = v16;
  v17 = a1[3];
  v36 = a1[2];
  v37 = v17;
  v18 = (v36)(v13);
  if (v18)
  {
    v19 = v18;
    v20 = *(v32 + 16);
    v21 = UNUserNotificationCenter.scheduleNotification(_:)(v19);

    v33[0] = v21;
    v22 = swift_allocObject();
    v23 = a1[1];
    v22[1] = *a1;
    v22[2] = v23;
    v24 = a1[3];
    v22[3] = a1[2];
    v22[4] = v24;
    sub_2284B89A0(v35, v34);
    sub_2283FEE20(0);
    sub_2284B7F68(&qword_280DE98A0, 255, sub_2283FEE20, MEMORY[0x277CBCD90]);
    sub_22855CE8C();

    sub_2284B7F68(&qword_27D83FCB0, 255, sub_2284B8900, MEMORY[0x277CBCC08]);
    v25 = sub_22855CE6C();

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v26 = a1[1];
    v34[0] = *a1;
    v34[1] = v26;
    v27 = a1[3];
    v34[2] = a1[2];
    v34[3] = v27;
    sub_2284B89A0(v35, v33);
    sub_22855CDCC();
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_22855CD9C();
    (*(v31 + 8))(v5, v3);
    sub_2284B89FC(&qword_27D83FCA8, &qword_27D83FC98, &type metadata for PluginFeedItem.NotificationRequest);
    v25 = sub_22855CE6C();
    (*(v30 + 8))(v9, v7);
  }

  return v25;
}

void sub_2284B8498(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t MockPluginNotificationManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2284B8650(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v7 = sub_22855D39C();
  [v6 *a4];
}

uint64_t sub_2284B86CC()
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v0 = sub_22855CABC();
  __swift_project_value_buffer(v0, qword_280DEEC98);
  v1 = sub_22855CA8C();
  v2 = sub_22855D68C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_22855E34C();
    v7 = sub_2283F8938(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v1, v2, "%s This method is not supported!", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  return 0;
}

void sub_2284B883C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22855CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284B8888(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_2283F9B94(255, &qword_280DECFE0, MEMORY[0x277D84948]);
    v4 = sub_22855E2EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284B8900(uint64_t a1)
{
  if (!qword_27D83FCA0)
  {
    sub_2283FEE20(255);
    sub_2284B7F68(&qword_280DE98A0, 255, sub_2283FEE20, MEMORY[0x277CBCD90]);
    v1 = sub_22855CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FCA0);
    }
  }
}

uint64_t sub_2284B89FC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2284B8888(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284B8A4C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  v3 = v1[4];
  a1[2] = v1[3];
  a1[3] = v3;
  return sub_2284B89A0((v1 + 1), &v5);
}

uint64_t sub_2284B8A84()
{
  sub_2284B9250(0, &qword_27D83FCD0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - v4;
  v6 = *(v0 + 16);
  v7 = *&v6[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  v8 = v6;
  os_unfair_lock_lock((v7 + 40));
  v9 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 40));

  v12[1] = v9;
  sub_2284AD00C(0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  sub_22855CDCC();
  sub_2284B92AC();
  v10 = sub_22855CE6C();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_2284B8BFC()
{
  sub_2284B9250(0, &qword_27D83FCC0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - v4;
  v6 = *(v0 + 16);
  v7 = *&v6[OBJC_IVAR____TtC14HealthPlatform28MockUNUserNotificationCenter_mockNotificationState];
  v8 = v6;
  os_unfair_lock_lock((v7 + 40));
  v9 = *(v7 + 24);

  os_unfair_lock_unlock((v7 + 40));

  v12[1] = v9;
  sub_2284AD00C(0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  sub_22855CDCC();
  sub_2284B91D8();
  v10 = sub_22855CE6C();
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_2284B8D74(uint64_t a1, uint64_t a2)
{
  result = sub_2284B7F68(&qword_27D83FCB8, a2, type metadata accessor for MockNotificationContentStateManager, &protocol conformance descriptor for MockNotificationContentStateManager);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2284B91D8()
{
  result = qword_27D83FCC8;
  if (!qword_27D83FCC8)
  {
    sub_2284B9250(255, &qword_27D83FCC0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCC8);
  }

  return result;
}

void sub_2284B9250(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_2284AD00C(255, a3, a4, a5);
    v6 = sub_22855CDBC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2284B92AC()
{
  result = qword_27D83FCD8;
  if (!qword_27D83FCD8)
  {
    sub_2284B9250(255, &qword_27D83FCD0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FCD8);
  }

  return result;
}

uint64_t OrchestrationRetryManager.__allocating_init(director:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_2284B94C4(a1);

  return v2;
}

uint64_t OrchestrationRetryManager.init(director:)(uint64_t a1)
{
  v1 = sub_2284B94C4(a1);

  return v1;
}

uint64_t OrchestrationRetryManager.deinit()
{

  v1 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  v2 = sub_22855C9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OrchestrationRetryManager.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  v2 = sub_22855C9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2284B94C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C9AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = a1;
  sub_22855D1AC();

  sub_22855C96C();

  v8 = OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription;
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC14HealthPlatform25OrchestrationRetryManager_foregroundDescription, v7, v4);
  (*(v5 + 16))(v7, v2 + v8, v4);
  sub_22855C51C();
  sub_22855C90C();

  LOBYTE(v8) = sub_22855C98C();

  (*(v5 + 8))(v7, v4);
  sub_2284B9878(0);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = v8 & 1;
  *(v2 + 24) = v9;
  sub_22855C51C();
  sub_2284B98D8();

  sub_22855C91C();

  return v2;
}

uint64_t type metadata accessor for OrchestrationRetryManager(uint64_t a1)
{
  result = qword_280DEB4E0;
  if (!qword_280DEB4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284B96FC(uint64_t a1)
{
  result = sub_22855C9AC();
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

uint64_t getEnumTagSinglePayload for OrchestrationRetryManager.State(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_2284B9878(uint64_t a1)
{
  if (!qword_280DE9160)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9160);
    }
  }
}

unint64_t sub_2284B98D8()
{
  result = qword_280DEB4F0;
  if (!qword_280DEB4F0)
  {
    type metadata accessor for OrchestrationRetryManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEB4F0);
  }

  return result;
}

id static Profile.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284B99B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 encodedHKProfileIdentifier];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2284B9A08(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_2284B9B90(a4, a5);
  v11 = sub_22855D51C();

  *a6 = v11;
}

void sub_2284B9A94(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_2284B9B90(a6, a7);
  v12 = sub_22855D50C();
  [v11 *a8];
}

void sub_2284B9B30(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  sub_22855C1BC();
}

uint64_t sub_2284B9B90(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_2284B9BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

double sub_2284B9C44()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2284B9C7C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_2284B9CC4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2, uint64_t *a3)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2284BACB4;
  a2[1] = v6;
}

uint64_t sub_2284B9D44(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_2284BACBC, v9);
}

uint64_t sub_2284B9DEC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 24) = sub_2284BACA4;
  *(v6 + 32) = v5;
}

uint64_t sub_2284B9E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_2284BACAC;
  v10[1] = v8;

  a5(&v12, &v11, v10);
}

uint64_t sub_2284B9F24()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2284B9F70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2284B9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 24);

  v9(a1, a2, a3, a4);
}

uint64_t sub_2284BA048@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_2284BAC9C;
  a2[1] = v6;
}

uint64_t sub_2284BA0C8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(a1, sub_22841C06C, v7);
}

uint64_t sub_2284BA160(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 40) = sub_2284BAC94;
  *(v6 + 48) = v5;
}

uint64_t sub_2284BA1F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[0] = sub_22841C0AC;
  v10[1] = v8;

  a4(a1, v10);
}

uint64_t sub_2284BA294()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2284BA2E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_2284BA384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 40);

  v7(a1, a2, a3);
}

uint64_t MockAnchorStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  MockAnchorStorage.init()();
  return v0;
}

void *MockAnchorStorage.init()()
{
  v0[2] = sub_22847D43C(MEMORY[0x277D84F90]);
  v0[3] = nullsub_1;
  v0[4] = 0;
  v0[5] = nullsub_1;
  v0[6] = 0;
  v1 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v0[3] = sub_2284BAAA8;
  v0[4] = v1;

  v2 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v0[5] = sub_2284BAAB0;
  v0[6] = v2;

  return v0;
}

uint64_t sub_2284BA57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_22855C5CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v13 = Strong;
  v14 = *(a2 + 16);
  if (!v14)
  {
  }

  v16 = *(v9 + 16);
  v15 = v9 + 16;
  v17 = (a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
  v35 = *(v15 + 56);
  v36 = v16;
  v37 = v15;
  v18 = (v15 - 8);
  v16(v11, v17, v8);
  while (1)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v13 + 16);
    v20 = v38;
    *(v13 + 16) = 0x8000000000000000;
    v21 = sub_228443DF4(v11);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_228446AA0(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_228443DF4(v11);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v29 = v38;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v33 = v21;
    sub_2284494D8();
    v21 = v33;
    v29 = v38;
    if (v27)
    {
LABEL_4:
      *(v29[7] + 8 * v21) = a1;

      (*v18)(v11, v8);
      goto LABEL_5;
    }

LABEL_13:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = v21;
    v36(v29[6] + v21 * v35, v11, v8);
    *(v29[7] + 8 * v30) = a1;
    (*v18)(v11, v8);
    v31 = v29[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v29[2] = v32;
LABEL_5:
    *(v13 + 16) = v29;

    swift_endAccess();
    v17 += v35;
    if (!--v14)
    {
    }

    v36(v11, v17, v8);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

uint64_t sub_2284BA870(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    (a2)(v5, 0);
  }

  else
  {
    sub_22847D43C(MEMORY[0x277D84F90]);
    (a2)();
  }
}

void *MockAnchorStorage.deinit()
{

  return v0;
}

uint64_t MockAnchorStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2284BA9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 40);

  v8(a1, a2, a3);
}

uint64_t sub_2284BAA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  v10 = *(v9 + 24);

  v10(a1, a2, a3, a4);
}

uint64_t static InputSignalSet.LookupKey.profileNotificationSettings.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for ProfileNotificationSettingsInputSignal();
  return sub_22855C61C();
}

uint64_t ProfileNotificationType.description.getter()
{
  v1 = 0x73646E657274;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

unint64_t ProfileNotificationType.legacyKeyValueDomainKey.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

unint64_t ProfileNotificationType.userDefaultsKey(for:)(void *a1)
{
  v3 = 0xD000000000000012;
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_22855DC6C();

  v15 = 0xD000000000000019;
  v16 = 0x8000000228571340;
  v9 = [a1 identifier];
  sub_22855C1BC();

  v10 = sub_22855C17C();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  MEMORY[0x22AAB92A0](v10, v12);

  MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
  if (v8)
  {
    if (v8 == 1)
    {
      v13 = 0x8000000228571320;
    }

    else
    {
      v13 = 0xE700000000000000;
      v3 = 0x73657461647075;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v3 = 0x737472656C61;
  }

  MEMORY[0x22AAB92A0](v3, v13);

  return v15;
}

HealthPlatform::ProfileNotificationType_optional __swiftcall ProfileNotificationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22855DFBC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2284BB0E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73646E657274;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x737472656C61;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x73646E657274;
  if (*a2 != 1)
  {
    v8 = 0x73657461647075;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737472656C61;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22855E15C();
  }

  return v11 & 1;
}

void sub_2284BB1E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73646E657274;
  if (v2 != 1)
  {
    v5 = 0x73657461647075;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737472656C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2284BB23C()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284BB2D8(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_2284BB360(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284BB4B8()
{
  v1 = 0x73646E657274;
  if (*v0 != 1)
  {
    v1 = 0x73657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737472656C61;
  }
}

void *ProfileNotificationSettingsInputSignal.__allocating_init(observer:source:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2284BF2E8(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

void *ProfileNotificationSettingsInputSignal.init(observer:source:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2284BF250(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

void *ProfileNotificationSettingsInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = qword_280DED1C0;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_280DED1C8;
  v8 = type metadata accessor for DefaultProfileNotificationSettingsSource();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = v6;
  sub_2284BF424(0);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v7;
  *&v9[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v10;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = v7;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  result = swift_allocObject();
  result[7] = v8;
  result[8] = &protocol witness table for DefaultProfileNotificationSettingsSource;
  result[3] = a2;
  result[4] = v12;
  result[2] = a1;
  return result;
}

id DefaultProfileNotificationSettingsSource.__allocating_init(healthStore:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = a1;
  sub_2284BF424(0);
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = a2;
  *&v5[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall ProfileNotificationSettingsInputSignal.beginObservation(from:configurations:)(HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 16))(v3, v4);
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(v6 + 8);

  v8(sub_2284BF484, v7, v5, v6);
}

void *sub_2284BB95C(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2)
    {
      v7 = sub_22855BF2C();
      v8 = [v7 hk_isDatabaseAccessibilityError];

      if ((v8 & 1) == 0)
      {
        if (qword_280DE9DF0 != -1)
        {
          swift_once();
        }

        v9 = sub_22855CABC();
        __swift_project_value_buffer(v9, qword_280DE9DF8);
        v10 = a1;
        v11 = sub_22855CA8C();
        v12 = sub_22855D68C();
        sub_2284A6534(a1, 1);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          v15 = a1;
          v16 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 4) = v16;
          *v14 = v16;
          _os_log_impl(&dword_2283ED000, v11, v12, "Restarting observation, notification settings observation query failed: %@", v13, 0xCu);
          sub_2284C00F0(v14, sub_22841DCF4);
          MEMORY[0x22AABAD40](v14, -1, -1);
          MEMORY[0x22AABAD40](v13, -1, -1);
        }
      }

      v17 = v6[7];
      v18 = v6[8];
      __swift_project_boxed_opaque_existential_1(v6 + 4, v17);
      (*(v18 + 16))(v17, v18);
      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      sub_228506C84(sub_2284C016C, v6);
    }

    else
    {
      sub_22847D65C(MEMORY[0x277D84F90]);

      swift_getObjectType();
      type metadata accessor for ProfileNotificationSettingsInputSignal();
      sub_2284BFBAC(qword_280DEA138, v19, type metadata accessor for ProfileNotificationSettingsInputSignal, &protocol conformance descriptor for ProfileNotificationSettingsInputSignal);
      sub_22855C78C();
    }
  }

  return result;
}

HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor __swiftcall ProfileNotificationSettingsInputSignal.Anchor.init(notificationEnabledByType:)(Swift::OpaquePointer notificationEnabledByType)
{
  v3 = v1;
  sub_22847D65C(MEMORY[0x277D84F90]);

  v3->_rawValue = notificationEnabledByType._rawValue;
  return result;
}

uint64_t sub_2284BBC64(void *a1)
{
  v1 = a1[7];
  v2 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 8);

  v4(sub_2284C0184, v3, v1, v2);
}

Swift::Void __swiftcall ProfileNotificationSettingsInputSignal.stopObservation()()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t ProfileNotificationSettingsInputSignal.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v0;
}

uint64_t ProfileNotificationSettingsInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2284BBDFC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 8);

  v7(sub_2284C0184, v6, v4, v5);
}

uint64_t sub_2284BBEDC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_2284BBF34(uint64_t a1, uint64_t a2)
{
  v3 = sub_2284BFBAC(qword_280DEA138, a2, type metadata accessor for ProfileNotificationSettingsInputSignal, &protocol conformance descriptor for ProfileNotificationSettingsInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor __swiftcall ProfileNotificationSettingsInputSignal.Anchor.merged(with:)(HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor with)
{
  v3 = v1;
  v4 = *with.notificationEnabledByType._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_2284BF490(v4, sub_2284BF2D4, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;
  sub_22847D65C(MEMORY[0x277D84F90]);

  *v3 = v7;
  return result;
}

Swift::Bool __swiftcall ProfileNotificationSettingsInputSignal.Anchor.hasDifference(from:for:)(HealthPlatform::ProfileNotificationSettingsInputSignal::Anchor_optional from, HealthPlatform::ProfileNotificationSettingsInputSignal::Configuration a2)
{
  v3 = **&from.is_nil;
  v4 = *(**&from.is_nil + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *v2;
    v7 = *from.value.notificationEnabledByType._rawValue;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return from.value.notificationEnabledByType._rawValue;
      }

      v8 = *(v3 + 32 + v5);
      if (*(v6 + 16) && (from.value.notificationEnabledByType._rawValue = sub_228443AB4(*(v3 + 32 + v5)), from.is_nil))
      {
        v9 = *(from.value.notificationEnabledByType._rawValue + *(v6 + 56));
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v9 = 2;
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      if (*(v7 + 16))
      {
        from.value.notificationEnabledByType._rawValue = sub_228443AB4(v8);
        if (from.is_nil)
        {
          v10 = *(from.value.notificationEnabledByType._rawValue + *(v7 + 56));
          if (v9 == 2)
          {
            goto LABEL_3;
          }

          goto LABEL_16;
        }
      }

LABEL_15:
      v10 = 2;
      if (v9 == 2)
      {
LABEL_3:
        if (v10 != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }

LABEL_16:
      if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
      {
LABEL_18:
        LOBYTE(from.value.notificationEnabledByType._rawValue) = 1;
        return from.value.notificationEnabledByType._rawValue;
      }

LABEL_4:
      ++v5;
    }

    while (v4 != v5);
  }

  LOBYTE(from.value.notificationEnabledByType._rawValue) = 0;
  return from.value.notificationEnabledByType._rawValue;
}

uint64_t sub_2284BC19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000228571440 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22855E15C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2284BC230(uint64_t a1)
{
  v2 = sub_2284BF6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284BC26C(uint64_t a1)
{
  v2 = sub_2284BF6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProfileNotificationSettingsInputSignal.Anchor.encode(to:)(void *a1)
{
  sub_2284BF7EC(0, &qword_27D83FCF8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284BF6E0();

  sub_22855E31C();
  v10[1] = v8;
  sub_2284BF734(0);
  sub_2284BF850(&qword_27D83FD10, sub_2284BF798, MEMORY[0x277D839B8], MEMORY[0x277D83508]);
  sub_22855E0CC();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ProfileNotificationSettingsInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2284BF7EC(0, &qword_27D83FD20, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  sub_22847D65C(MEMORY[0x277D84F90]);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284BF6E0();
  sub_22855E30C();
  if (!v2)
  {
    sub_2284BF734(0);
    sub_2284BF850(&qword_27D83FD28, sub_2284BF8C8, MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    sub_22855E03C();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284BC640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_2284BF490(v4, sub_2284BF2D4, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;
  sub_22847D65C(MEMORY[0x277D84F90]);

  *a2 = v7;
  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.notificationTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2284BC7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0x73646E657274;
      }

      else
      {
        v8 = 0x73657461647075;
      }

      if (v6 == 1)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x737472656C61;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 == 1)
      {
        v12 = 0x73646E657274;
      }

      else
      {
        v12 = 0x73657461647075;
      }

      if (v7 == 1)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x737472656C61;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_22855E15C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_2284BC8F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284BC94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_22848DB1C(v13, v10);
        sub_22848DB1C(v14, v7);
        v16 = static PluginSharableModel.== infix(_:_:)(v10, v7);
        sub_2284C00F0(v7, type metadata accessor for PluginSharableModel);
        sub_2284C00F0(v10, type metadata accessor for PluginSharableModel);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s14HealthPlatform22SharableModelPredicateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_22855E15C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2284BCBDC(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_2283EF310(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AAB9D20](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AAB9D20](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_22855D9AC();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_22855D9AC();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_22855DB4C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_22855DB4C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2284BCE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_2284BFBAC(v31, 255, v32, v33);
    v25 = sub_22855D16C();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  result = MEMORY[0x22AABA2B0](v3);
  if (v3)
  {
    v5 = v2 + 32;
    do
    {
      ++v5;
      sub_22855D20C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t ProfileNotificationSettingsInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_2284BF0A0(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284BD194()
{
  v1 = *v0;
  sub_22855E22C();
  sub_2284BF0A0(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284BD1E4(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  sub_2284BF0A0(v4, v2);
  return sub_22855E27C();
}

id DefaultProfileNotificationSettingsSource.init(healthStore:userDefaults:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] = a1;
  sub_2284BF424(0);
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = a2;
  *&v2[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t DefaultProfileNotificationSettingsSource.fetchAndObserve(handler:)(void (*a1)(void, void), uint64_t a2)
{
  swift_getObjectType();
  v5 = sub_22855C1DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v9 = sub_22855CABC();
  __swift_project_value_buffer(v9, qword_280DEEC98);
  v10 = v2;
  v11 = sub_22855CA8C();
  v12 = sub_22855D6AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31 = a2;
    v16 = v15;
    v33 = v15;
    *v14 = 136446466;
    v17 = sub_22855E34C();
    v19 = sub_2283F8938(v17, v18, &v33);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = [*&v10[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] profileIdentifier];
    v21 = [v20 identifier];

    sub_22855C1BC();
    v22 = sub_22855C17C();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v25 = sub_2283F8938(v22, v24, &v33);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v11, v12, "[%{public}s_%s] Starting observation", v14, 0x16u);
    swift_arrayDestroy();
    v26 = v16;
    a2 = v31;
    MEMORY[0x22AABAD40](v26, -1, -1);
    v27 = v14;
    a1 = v32;
    MEMORY[0x22AABAD40](v27, -1, -1);
  }

  v28 = *&v10[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState];
  MEMORY[0x28223BE20](v29);
  *(&v31 - 4) = v10;
  *(&v31 - 3) = a1;
  *(&v31 - 2) = a2;
  os_unfair_lock_lock((v28 + 40));
  sub_2284BF91C((v28 + 16), &v33);
  os_unfair_lock_unlock((v28 + 40));
  a1(v33, 0);
}

void sub_2284BD634(id *a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  sub_2284BD6C4(*a1);
  if (!v4)
  {
    v10 = a1[1];
    v11 = a1[2];

    sub_228416CF8(v10, v11);
    a1[1] = a2;
    a1[2] = a3;
    sub_2284BE1B0(v9);
    *a4 = sub_2284BE428(v9);
  }
}

void sub_2284BD6C4(id a1)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v104 = sub_22855C1DC();
  v5 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v1;
  v7 = *&v1[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore];
  v99 = [v7 profileIdentifier];
  v8 = *MEMORY[0x277CCE3E0];
  v9 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v90 = v7;
  v93 = [v9 initWithCategory:1 domainName:v8 healthStore:v7];
  v10 = 0;
  v101 = (v5 + 8);
  v97 = 0x8000000228571320;
  v98 = 0x8000000228571340;
  *&v11 = 136446722;
  v86 = v11;
  *&v11 = 136446978;
  v85 = v11;
  v89 = a1;
  while (1)
  {
    v12 = byte_283B7F3C0[v10 + 32];
    *&v103[0] = 0;
    *(&v103[0] + 1) = 0xE000000000000000;
    sub_22855DC6C();

    *&v103[0] = 0xD000000000000019;
    *(&v103[0] + 1) = v98;
    v13 = [v99 identifier];
    v14 = v102;
    sub_22855C1BC();

    v15 = sub_22855C17C();
    v17 = v16;
    v100 = *v101;
    v100(v14, v104);
    MEMORY[0x22AAB92A0](v15, v17);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    if (v12)
    {
      v18 = v12 == 1 ? 0xD000000000000012 : 0x73657461647075;
      v19 = v12 == 1 ? v97 : 0xE700000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
      v18 = 0x737472656C61;
    }

    MEMORY[0x22AAB92A0](v18, v19);

    v20 = v103[0];
    v21 = sub_22855D17C();
    v22 = [a1 objectForKey_];

    if (!v22)
    {
      break;
    }

    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_22843D15C(v103);
LABEL_3:
    if (++v10 == 3)
    {

      return;
    }
  }

  v94 = v20;
  memset(v103, 0, 32);
  sub_22843D15C(v103);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  v24 = __swift_project_value_buffer(v23, qword_280DEEC98);
  v25 = v92;
  v26 = sub_22855CA8C();
  v27 = sub_22855D6AC();

  v28 = os_log_type_enabled(v26, v27);
  v96 = *(&v20 + 1);
  if (v28)
  {
    v87 = v25;
    v88 = v24;
    v95 = v3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v103[0] = v30;
    *v29 = v86;
    v31 = sub_22855E34C();
    v33 = sub_2283F8938(v31, v32, v103);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = [v90 profileIdentifier];
    v35 = [v34 identifier];

    v36 = v102;
    sub_22855C1BC();

    v37 = sub_22855C17C();
    v39 = v38;
    v100(v36, v104);
    v40 = sub_2283F8938(v37, v39, v103);

    *(v29 + 14) = v40;
    *(v29 + 22) = 2080;
    if (v12)
    {
      if (v12 == 1)
      {
        v41 = 0x73646E657274;
      }

      else
      {
        v41 = 0x73657461647075;
      }

      if (v12 == 1)
      {
        v42 = 0xE600000000000000;
      }

      else
      {
        v42 = 0xE700000000000000;
      }
    }

    else
    {
      v42 = 0xE600000000000000;
      v41 = 0x737472656C61;
    }

    v43 = sub_2283F8938(v41, v42, v103);

    *(v29 + 24) = v43;
    _os_log_impl(&dword_2283ED000, v26, v27, "[%{public}s_%s] No settings for %s, migrating from legacy key value domain", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v30, -1, -1);
    MEMORY[0x22AABAD40](v29, -1, -1);

    v3 = v95;
    v25 = v87;
  }

  else
  {
  }

  v44 = sub_22855D76C();
  if (!v3)
  {
    v45 = v44;

    if (v45 == 2)
    {
      v47 = [v99 type] != 1 || v12 != 1;
      v48 = v25;
      v49 = sub_22855CA8C();
      v50 = sub_22855D6AC();

      if (os_log_type_enabled(v49, v50))
      {
        LODWORD(v88) = v47;
        v95 = 0;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v103[0] = v52;
        *v51 = v85;
        v53 = sub_22855E34C();
        v55 = sub_2283F8938(v53, v54, v103);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = [v90 profileIdentifier];
        v57 = [v56 identifier];

        v58 = v102;
        sub_22855C1BC();

        v59 = sub_22855C17C();
        v61 = v60;
        v100(v58, v104);
        v62 = sub_2283F8938(v59, v61, v103);

        *(v51 + 14) = v62;
        *(v51 + 22) = 2080;
        if (v12)
        {
          if (v12 == 1)
          {
            v63 = 0xE600000000000000;
            v64 = 0x73646E657274;
          }

          else
          {
            v63 = 0xE700000000000000;
            v64 = 0x73657461647075;
          }
        }

        else
        {
          v63 = 0xE600000000000000;
          v64 = 0x737472656C61;
        }

        v47 = v88;
        v81 = sub_2283F8938(v64, v63, v103);

        *(v51 + 24) = v81;
        *(v51 + 32) = 1024;
        *(v51 + 34) = v47;
        _os_log_impl(&dword_2283ED000, v49, v50, "[%{public}s_%s] Setting %s using default value: %{BOOL}d", v51, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v52, -1, -1);
        MEMORY[0x22AABAD40](v51, -1, -1);

        v3 = v95;
      }

      else
      {
      }

      v82 = sub_22855D17C();

      a1 = v89;
      [v89 setBool:v47 forKey:{v82, v85}];
    }

    else
    {
      v65 = v25;
      v66 = sub_22855CA8C();
      v67 = sub_22855D6AC();

      if (os_log_type_enabled(v66, v67))
      {
        v95 = 0;
        v68 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v103[0] = v88;
        *v68 = v85;
        v69 = sub_22855E34C();
        v71 = sub_2283F8938(v69, v70, v103);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2080;
        v72 = [v90 profileIdentifier];
        v73 = [v72 identifier];

        v74 = v102;
        sub_22855C1BC();

        v75 = sub_22855C17C();
        v77 = v76;
        v100(v74, v104);
        v78 = sub_2283F8938(v75, v77, v103);

        *(v68 + 14) = v78;
        *(v68 + 22) = 2080;
        if (v12)
        {
          if (v12 == 1)
          {
            v79 = 0xE600000000000000;
            v80 = 0x73646E657274;
          }

          else
          {
            v79 = 0xE700000000000000;
            v80 = 0x73657461647075;
          }
        }

        else
        {
          v79 = 0xE600000000000000;
          v80 = 0x737472656C61;
        }

        v83 = sub_2283F8938(v80, v79, v103);

        *(v68 + 24) = v83;
        *(v68 + 32) = 1024;
        *(v68 + 34) = v45 & 1;
        _os_log_impl(&dword_2283ED000, v66, v67, "[%{public}s_%s] Setting %s using value in legacy key value domain: %{BOOL}d", v68, 0x26u);
        v84 = v88;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v84, -1, -1);
        MEMORY[0x22AABAD40](v68, -1, -1);

        v3 = v95;
      }

      else
      {
      }

      v82 = sub_22855D17C();

      a1 = v89;
      [v89 setBool:v45 & 1 forKey:{v82, v85}];
    }

    goto LABEL_3;
  }
}

void sub_2284BE1B0(void *a1)
{
  v23 = a1;
  v22 = sub_22855C1DC();
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  v24 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v20 = 0x8000000228571340;
  v21 = v5;
  v7 = (v6 + 8);
  do
  {
    v8 = byte_283B7F3E8[v4++ + 32];
    v9 = [v21 profileIdentifier];
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_22855DC6C();

    v25 = 0xD000000000000019;
    v26 = v20;
    v10 = [v9 identifier];
    sub_22855C1BC();

    v11 = sub_22855C17C();
    v13 = v12;
    (*v7)(v3, v22);
    MEMORY[0x22AAB92A0](v11, v13);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v14 = 0x73657461647075;
    if (v8 == 1)
    {
      v14 = 0xD000000000000012;
    }

    v15 = 0xE700000000000000;
    if (v8 == 1)
    {
      v15 = 0x8000000228571320;
    }

    if (v8)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x737472656C61;
    }

    if (v8)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    MEMORY[0x22AAB92A0](v16, v17);

    v18 = sub_22855D17C();

    [v23 addObserver:v24 forKeyPath:v18 options:1 context:0];
  }

  while (v4 != 3);
}

void *sub_2284BE428(void *a1)
{
  v39 = a1;
  v38 = sub_22855C1DC();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22847D65C(MEMORY[0x277D84F90]);
  v6 = 0;
  v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v36 = 0x8000000228571340;
  v37 = v7;
  v8 = (v2 + 8);
  v35 = 0x8000000228571320;
  while (1)
  {
    v9 = byte_283B7F410[v6++ + 32];
    v10 = [v37 profileIdentifier];
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_22855DC6C();

    v40 = 0xD000000000000019;
    v41 = v36;
    v11 = [v10 identifier];
    sub_22855C1BC();

    v12 = sub_22855C17C();
    v14 = v13;
    (*v8)(v4, v38);
    MEMORY[0x22AAB92A0](v12, v14);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v15 = 0x73657461647075;
    if (v9 == 1)
    {
      v15 = 0xD000000000000012;
    }

    v16 = v35;
    if (v9 != 1)
    {
      v16 = 0xE700000000000000;
    }

    v17 = v9 ? v15 : 0x737472656C61;
    v18 = v9 ? v16 : 0xE600000000000000;
    MEMORY[0x22AAB92A0](v17, v18);

    v19 = sub_22855D17C();

    v20 = [v39 BOOLForKey_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v5;
    v23 = sub_228443AB4(v9);
    v24 = v5[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v5[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v40;
        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_228449744();
        v5 = v40;
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

LABEL_2:
      *(v5[7] + v23) = v20;
      if (v6 == 3)
      {
        return v5;
      }
    }

    else
    {
      sub_228446E70(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_228443AB4(v9);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_28;
      }

      v23 = v28;
      v5 = v40;
      if (v27)
      {
        goto LABEL_2;
      }

LABEL_20:
      v5[(v23 >> 6) + 8] |= 1 << v23;
      *(v5[6] + v23) = v9;
      *(v5[7] + v23) = v20;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_27;
      }

      v5[2] = v32;
      if (v6 == 3)
      {
        return v5;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DefaultProfileNotificationSettingsSource.stop()()
{
  swift_getObjectType();
  v1 = sub_22855C1DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);
  v6 = v0;
  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136446466;
    v11 = sub_22855E34C();
    v13 = sub_2283F8938(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = [*&v6[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore] profileIdentifier];
    v15 = [v14 identifier];

    sub_22855C1BC();
    v16 = sub_22855C17C();
    v18 = v17;
    (*(v2 + 8))(v4, v1);
    v19 = sub_2283F8938(v16, v18, v22);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_2283ED000, v7, v8, "[%{public}s_%s] Stopping observation", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v10, -1, -1);
    MEMORY[0x22AABAD40](v9, -1, -1);
  }

  v20 = *&v6[OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState];
  MEMORY[0x28223BE20](v21);
  v22[-2] = v6;
  os_unfair_lock_lock(v20 + 10);
  sub_2284BF93C(&v20[4]);
  os_unfair_lock_unlock(v20 + 10);
}

void sub_2284BEAA8(uint64_t result)
{
  v1 = (result + 8);
  if (*(result + 8))
  {
    sub_228416CF8(*(result + 8), *(result + 16));
    *v1 = 0;
    v1[1] = 0;
    sub_2284BEB00(*result);
  }
}

void sub_2284BEB00(void *a1)
{
  v23 = a1;
  v22 = sub_22855C1DC();
  MEMORY[0x28223BE20](v22);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 0;
  v24 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_healthStore);
  v20 = 0x8000000228571340;
  v21 = v5;
  v7 = (v6 + 8);
  do
  {
    v8 = byte_283B7F438[v4++ + 32];
    v9 = [v21 profileIdentifier];
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_22855DC6C();

    v25 = 0xD000000000000019;
    v26 = v20;
    v10 = [v9 identifier];
    sub_22855C1BC();

    v11 = sub_22855C17C();
    v13 = v12;
    (*v7)(v3, v22);
    MEMORY[0x22AAB92A0](v11, v13);

    MEMORY[0x22AAB92A0](0x63696669746F4E5FLL, 0xEF5F736E6F697461);
    v14 = 0x73657461647075;
    if (v8 == 1)
    {
      v14 = 0xD000000000000012;
    }

    v15 = 0xE700000000000000;
    if (v8 == 1)
    {
      v15 = 0x8000000228571320;
    }

    if (v8)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x737472656C61;
    }

    if (v8)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    MEMORY[0x22AAB92A0](v16, v17);

    v18 = sub_22855D17C();

    [v23 removeObserver:v24 forKeyPath:v18];
  }

  while (v4 != 3);
}

uint64_t sub_2284BED7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2284BE428(*a1);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_22841C0AC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v4;
  a2[1] = v8;
  a2[2] = v7;
  return sub_22840FE74(v5, v6);
}

id DefaultProfileNotificationSettingsSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultProfileNotificationSettingsSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2284BF0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AABA2B0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_22855D20C();

      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_2284BF160(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_22855DB4C();
    MEMORY[0x22AABA2B0](v8);
    v3 = sub_22855DB4C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AABA2B0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AAB9D20](i, a2);
      sub_22855D9BC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_22855D9BC();

      --v3;
    }

    while (v3);
  }
}

void *sub_2284BF250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[7] = a5;
  a4[8] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 4);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[2] = a1;
  a4[3] = a2;
  return a4;
}

_BYTE *sub_2284BF2D4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void *sub_2284BF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a3, a5);
  v14[7] = a5;
  v14[8] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 4);
  (*(v11 + 32))(boxed_opaque_existential_1, v13, a5);
  v14[2] = a1;
  v14[3] = a2;
  return v14;
}

void sub_2284BF424(uint64_t a1)
{
  if (!qword_280DE90D0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90D0);
    }
  }
}

uint64_t sub_2284BF490(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v13)
  {
    v12 = v9;
    v13 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = *(*(a1 + 48) + v15);
    LOBYTE(v15) = *(*(a1 + 56) + v15);
    v37[0] = v16;
    v37[1] = v15;
    a2(&v38, v37);
    v17 = v38;
    if ((v38 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_228407958(a1);
    }

    v18 = a4;
    v19 = BYTE1(v38);
    v20 = *a5;
    v21 = sub_228443AB4(v38);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((v18 & 1) == 0)
      {
        v32 = v21;
        sub_228449744();
        v21 = v32;
      }
    }

    else
    {
      sub_228446E70(v26, v18 & 1);
      v21 = sub_228443AB4(v17);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 = (v12 - 1) & v12;
    v29 = *a5;
    if (v27)
    {
      *(v29[7] + v21) &= v19 & 1;
    }

    else
    {
      v29[(v21 >> 6) + 8] |= 1 << v21;
      *(v29[6] + v21) = v17;
      *(v29[7] + v21) = v19;
      v30 = v29[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v29[2] = v31;
    }

    a4 = 1;
  }

  v14 = i;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

unint64_t sub_2284BF6E0()
{
  result = qword_27D83FD00;
  if (!qword_27D83FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD00);
  }

  return result;
}

void sub_2284BF734(uint64_t a1)
{
  if (!qword_27D83FD08)
  {
    sub_22844BE30();
    v1 = sub_22855D12C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FD08);
    }
  }
}

unint64_t sub_2284BF798()
{
  result = qword_27D83FD18;
  if (!qword_27D83FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD18);
  }

  return result;
}

void sub_2284BF7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284BF6E0();
    v7 = a3(a1, &type metadata for ProfileNotificationSettingsInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284BF850(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284BF734(255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284BF8C8()
{
  result = qword_27D83FD30;
  if (!qword_27D83FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD30);
  }

  return result;
}

uint64_t sub_2284BF958(uint64_t a1, uint64_t a2)
{
  if (a2 && (v3 = v2, *(a2 + 16)) && (v5 = sub_22844C56C(*MEMORY[0x277CCA2F0]), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(a2 + 56) + 32 * v5, &v12);
    v7 = sub_22843D15C(&v12);
    v8 = *(v3 + OBJC_IVAR____TtC14HealthPlatform40DefaultProfileNotificationSettingsSource_protectedState);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock(v8 + 10);
    sub_2284C0150(&v8[4], &v12);
    os_unfair_lock_unlock(v8 + 10);
    v9 = *(&v12 + 1);
    if (*(&v12 + 1))
    {
      v10 = v13;
      BYTE8(v12) = 0;

      v9(&v12);

      sub_228416CF8(v9, v10);
      return sub_228416CF8(v9, v10);
    }

    else
    {
    }
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    return sub_22843D15C(&v12);
  }
}

unint64_t sub_2284BFA90()
{
  result = qword_27D83FD38;
  if (!qword_27D83FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD38);
  }

  return result;
}

unint64_t sub_2284BFAE8()
{
  result = qword_27D83FD40;
  if (!qword_27D83FD40)
  {
    sub_2284C004C(255, &qword_27D83FD48, &type metadata for ProfileNotificationType, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD40);
  }

  return result;
}

uint64_t sub_2284BFBAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2284BFBF8()
{
  result = qword_27D83FD50;
  if (!qword_27D83FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD50);
  }

  return result;
}

unint64_t sub_2284BFC50()
{
  result = qword_27D83FD58;
  if (!qword_27D83FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD58);
  }

  return result;
}

unint64_t sub_2284BFCA8()
{
  result = qword_27D83FD60;
  if (!qword_27D83FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD60);
  }

  return result;
}

unint64_t sub_2284BFD00()
{
  result = qword_27D83FD68;
  if (!qword_27D83FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD68);
  }

  return result;
}

unint64_t sub_2284BFD58()
{
  result = qword_27D83FD70;
  if (!qword_27D83FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD70);
  }

  return result;
}

unint64_t sub_2284BFDB0()
{
  result = qword_27D83FD78;
  if (!qword_27D83FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD78);
  }

  return result;
}

unint64_t sub_2284BFE08()
{
  result = qword_27D83FD80;
  if (!qword_27D83FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySDy14HealthPlatform23ProfileNotificationTypeOSbGs5Error_pGIeghg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2284BFF48()
{
  result = qword_27D83FD88;
  if (!qword_27D83FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD88);
  }

  return result;
}

unint64_t sub_2284BFFA0()
{
  result = qword_27D83FD90;
  if (!qword_27D83FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD90);
  }

  return result;
}

unint64_t sub_2284BFFF8()
{
  result = qword_27D83FD98;
  if (!qword_27D83FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FD98);
  }

  return result;
}

void sub_2284C004C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2284C009C()
{
  result = qword_27D83FDA0;
  if (!qword_27D83FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDA0);
  }

  return result;
}

uint64_t sub_2284C00F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FeedItem.FavoriteStatus.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x657469726F766166;
  }

  if (a1 == 1)
  {
    return 0x726F766146746F6ELL;
  }

  return 0x626967696C656E69;
}

uint64_t FeedItem.FavoriteStatus.isFavorite.getter(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = sub_22855E15C();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_2284C02C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F766146746F6ELL;
  v4 = 0xEC00000064657469;
  if (v2 != 1)
  {
    v3 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x726F766146746F6ELL;
  v8 = 0xEC00000064657469;
  if (*a2 != 1)
  {
    v7 = 0x626967696C656E69;
    v8 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657469726F766166;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22855E15C();
  }

  return v11 & 1;
}

unint64_t sub_2284C03E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14HealthPlatform8FeedItemC14FavoriteStatusO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2284C0410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000064657469;
  v5 = 0x726F766146746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x626967696C656E69;
    v4 = 0xEA0000000000656CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657469726F766166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2284C0480()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284C0534(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_2284C05D4(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

unint64_t _s14HealthPlatform8FeedItemC14FavoriteStatusO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855DFBC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2284C06D4()
{
  result = qword_27D83FDB8;
  if (!qword_27D83FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDB8);
  }

  return result;
}

double BasicSharableModelGeneratorPipeline.init(generator:domain:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C0B8C(0, &qword_27D83FDC0, sub_2284C08CC);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *a2;
  v12 = *(a2 + 24);
  sub_2283F9B10(a1, v16);
  sub_2284C08CC();
  *v15 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284C0C30(&qword_27D83FDD0, &qword_27D83FDC0, sub_2284C08CC);
  v13 = sub_22855CE6C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v8 + 8))(v10, v7);
  *a3 = v13;
  *(a3 + 8) = v11;
  result = v15[0];
  *(a3 + 16) = *v15;
  *(a3 + 32) = v12;
  return result;
}

unint64_t sub_2284C08CC()
{
  result = qword_27D83FDC8;
  if (!qword_27D83FDC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D83FDC8);
  }

  return result;
}

uint64_t BasicSharableModelGenerator.publisher.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 sub_2284C098C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v5 = v1->n128_u64[1];

  v1->n128_u64[1] = v3;
  result = *(a1 + 1);
  v1[1] = result;
  v1[2].n128_u8[0] = v4;
  return result;
}

__n128 BasicSharableModelGenerator.init(publisher:domain:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = v3;
  result = *(a2 + 8);
  a3[1] = result;
  a3[2].n128_u8[0] = v4;
  return result;
}

double BasicSharableModelGenerator.init(changes:domain:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C0B8C(0, &qword_280DE9828, sub_2284C0BE0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *a2;
  v12 = *(a2 + 24);
  v16 = a1;
  sub_2284C0BE0();
  *v15 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284C0C30(&qword_280DE9830, &qword_280DE9828, sub_2284C0BE0);
  v13 = sub_22855CE6C();
  (*(v8 + 8))(v10, v7);
  *a3 = v13;
  *(a3 + 8) = v11;
  result = v15[0];
  *(a3 + 16) = *v15;
  *(a3 + 32) = v12;
  return result;
}

void sub_2284C0B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2284C0BE0()
{
  if (!qword_280DE9620)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9620);
    }
  }
}

uint64_t sub_2284C0C30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2284C0B8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id EncodedFeatureTag.__allocating_init(context:name:data:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v10 = objc_opt_self();
  v11 = sub_22855D17C();
  v12 = [v10 entityForName:v11 inManagedObjectContext:a1];

  if (v12)
  {
    v13 = [objc_allocWithZone(v6) initWithEntity:v12 insertIntoManagedObjectContext:a1];
    v14 = sub_22855D17C();

    [v13 setName_];

    v15 = sub_22855C08C();
    [v13 setData_];

    sub_22842B38C(a4, a5);
    return v13;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

HealthPlatform::DailyRoutineKind_optional __swiftcall DailyRoutineKind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v1.value = HealthPlatform_DailyRoutineKind_evening;
  }

  else
  {
    v1.value = HealthPlatform_DailyRoutineKind_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t DailyRoutineKind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284C0E7C()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t sub_2284C0ECC()
{
  if (*v0)
  {
    v1 = 10;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x22AABA2B0](v1);
}

uint64_t sub_2284C0F04(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  if (v2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AABA2B0](v3);
  return sub_22855E27C();
}

void *sub_2284C0F50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 10)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_2284C0F70(uint64_t *a1@<X8>)
{
  v2 = 10;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

unint64_t sub_2284C1050()
{
  result = qword_27D83FDD8;
  if (!qword_27D83FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDD8);
  }

  return result;
}

unint64_t sub_2284C10C4()
{
  result = qword_27D83FDE0;
  if (!qword_27D83FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDE0);
  }

  return result;
}

uint64_t Publisher.tupleWithPrevious()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v28[0] = a2;
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v6 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = v28 - v7;
  v9 = *(v4 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  v30 = sub_22855CB7C();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v16 = v28 - v15;
  v17 = *(*(AssociatedTypeWitness - 8) + 56);
  v28[1] = AssociatedTypeWitness;
  v17(v14, 1, 1, AssociatedTypeWitness);
  v17(v12, 1, 1, AssociatedTypeWitness);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *(v9 + 32);
  v19(v8, v14, v4);
  v19(&v8[v18], v12, v4);
  v20 = swift_allocObject();
  v21 = v29;
  v22 = v28[0];
  *(v20 + 16) = v29;
  *(v20 + 24) = v22;
  v23 = v21;
  v24 = v22;
  sub_22855CE9C();

  (*(v31 + 8))(v8, TupleTypeMetadata2);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  swift_getTupleTypeMetadata2();
  v26 = v30;
  swift_getWitnessTable();
  sub_22855CE7C();

  return (*(v32 + 8))(v16, v26);
}

uint64_t sub_2284C14FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v19 - v12;
  v14 = *(v11 + 48);
  (*(v15 + 16))(&v19 - v12, a1, TupleTypeMetadata2);
  v16 = *(v9 - 8);
  (*(v16 + 32))(a5, &v13[*(TupleTypeMetadata2 + 48)], v9);
  v17 = *(AssociatedTypeWitness - 8);
  (*(v17 + 16))(a5 + v14, a2, AssociatedTypeWitness);
  (*(v17 + 56))(a5 + v14, 0, 1, AssociatedTypeWitness);
  return (*(v16 + 8))(v13, v9);
}

uint64_t sub_2284C16F0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_22855DA2C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  v32 = *(v8 + 16);
  v32(v13, a1, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  if ((*(v14 + 48))(&v13[v17], 1, AssociatedTypeWitness) == 1)
  {
    v18 = *(*(v6 - 8) + 8);
    v18(&v13[v17], v6);
    v18(v13, v6);
    v19 = swift_getTupleTypeMetadata2();
    return (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  }

  else
  {
    v29 = *(v14 + 32);
    v29(v16, &v13[v17], AssociatedTypeWitness);
    v21 = *(v6 - 8);
    v28 = a1;
    v30 = *(v21 + 8);
    v30(v13, v6);
    v22 = swift_getTupleTypeMetadata2();
    v27 = *(v22 + 48);
    v23 = v31;
    v32(v31, v28, TupleTypeMetadata2);
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v33;
    (*(v21 + 32))(v33, v23, v6);
    v29((v25 + v27), v16, AssociatedTypeWitness);
    (*(*(v22 - 8) + 56))(v25, 0, 1, v22);
    return (v30)(&v23[v24], v6);
  }
}

uint64_t sub_2284C1AC0(char a1)
{
  v2 = v1;
  v4 = (off_281860230[0])(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v6 = v5;
  v7 = sub_2284573B0(a1);
  v9 = v8;
  v10 = [v1 managedObjectContext];
  if (v10)
  {
    v11 = v10;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v4, v6);
    type metadata accessor for EncodedFeatureTag();
    v12 = v11;
    sub_22842B3E0(v7, v9);
    v13 = EncodedFeatureTag.__allocating_init(context:name:data:)(v12, v4, v6, v7, v9);
    [v2 addFeatureTagsObject_];

    return sub_22842B38C(v7, v9);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_2284C1C30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = off_2818602A8(&type metadata for NoveltyFeatureTag, &protocol witness table for NoveltyFeatureTag);
  v8 = v7;
  v9 = sub_2284570B0(a1, a2);
  v11 = v10;
  v12 = [v2 managedObjectContext];
  if (v12)
  {
    v13 = v12;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v6, v8);
    type metadata accessor for EncodedFeatureTag();
    v14 = v13;
    sub_22842B3E0(v9, v11);
    v15 = EncodedFeatureTag.__allocating_init(context:name:data:)(v14, v6, v8, v9, v11);
    [v3 addFeatureTagsObject_];

    return sub_22842B38C(v9, v11);
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void PluginFeedItem.init(feedItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2284C3874(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v181 - v5;
  v191 = type metadata accessor for PluginFeedItem(0);
  MEMORY[0x28223BE20](v191);
  v8 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueIdentifier];
  v10 = sub_22855D1AC();
  v12 = v11;

  v13 = FeedItem.userInterface.getter();
  v183 = v14;
  v184 = v13;
  LODWORD(v182) = v15;
  v188 = a1;
  v16 = [a1 userData];
  v186 = v10;
  v187 = a2;
  *&v190 = v6;
  v185 = v12;
  if (v16)
  {
    v17 = v16;
    v18 = sub_22855C09C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = v188;
  FeedItem.contentKind.getter(&v193);
  v22 = v193;
  v23 = [v21 profiles];
  v24 = type metadata accessor for Profile();
  v25 = sub_2284C3820(&qword_280DED540, type metadata accessor for Profile);
  v181[3] = v24;
  v181[2] = v25;
  v26 = sub_22855D51C();

  v27 = sub_22841FCB4(v26);
  v189 = 0;

  v28 = sub_22842941C(v27);

  v29 = sub_2284C2B70(v28);

  v8[33] = 0;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0xF000000000000000;
  *(v8 + 9) = 0;
  *(v8 + 10) = 0;
  *(v8 + 11) = 0;
  *(v8 + 12) = 0xF000000000000000;
  v30 = v191;
  v31 = v191[11];
  v32 = type metadata accessor for RelevantDateInterval(0);
  (*(*(v32 - 8) + 56))(&v8[v31], 1, 1, v32);
  v33 = MEMORY[0x277D84FA0];
  *&v8[v30[13]] = MEMORY[0x277D84FA0];
  *&v8[v30[14]] = v33;
  *&v8[v30[15]] = v33;
  v34 = &v8[v30[16]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v30[17];
  *&v8[v35] = MEMORY[0x277D84F98];
  *&v8[v30[18]] = v33;
  v36 = &v8[v30[20]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v8[v30[21]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v8[v30[22]];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v8[v30[23]] = 0;
  v8[v30[24]] = 13;
  v8[v30[25]] = 1;
  v8[v30[26]] = 2;
  v39 = &v8[v30[27]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  v40 = &v8[v30[28]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v8[v30[29]] = 0;
  v41 = v185;
  *v8 = v186;
  *(v8 + 1) = v41;
  v42 = v183;
  *(v8 + 2) = v184;
  *(v8 + 3) = v42;
  v8[32] = v182;
  v43 = *(v8 + 11);
  v44 = *(v8 + 12);
  *(v8 + 11) = v18;
  *(v8 + 12) = v20;
  v45 = v20;
  sub_22843560C(v18, v20);
  sub_22842B378(v43, v44);
  v8[v30[12]] = v22;
  *&v8[v30[19]] = v29;
  v46 = off_281860230[0];
  v47 = v29;
  v48 = v46(&type metadata for ProminenceFeatureTag, &protocol witness table for ProminenceFeatureTag);
  v50 = v49;
  v51 = sub_2284573B0(1);
  v53 = v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v195 = *&v8[v35];
  v55 = v51;
  v56 = v188;
  sub_22845AF24(v55, v53, v48, v50, isUniquelyReferenced_nonNull_native);

  sub_22842B378(v18, v45);

  *&v8[v35] = v195;
  v57 = v187;
  sub_22844BC28(v8, v187);
  *(v57 + 33) = [v56 usesPlatformView];
  v58 = [v56 actionHandlerClassName];
  if (v58)
  {
    v59 = v58;
    v60 = sub_22855D1AC();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  *(v57 + 40) = v60;
  *(v57 + 48) = v62;
  v63 = [v56 actionHandlerUserData];
  if (v63)
  {
    v64 = v63;
    v65 = sub_22855C09C();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0xF000000000000000;
  }

  sub_22842B378(*(v57 + 56), *(v57 + 64));
  *(v57 + 56) = v65;
  *(v57 + 64) = v67;
  v68 = [v56 baseAutomationIdentifier];
  if (v68)
  {
    v69 = v68;
    v70 = sub_22855D1AC();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  *(v57 + 72) = v70;
  *(v57 + 80) = v72;
  v73 = v190;
  FeedItem.relevantDateInterval.getter(v190);
  v74 = v191;
  sub_228457FD0(v73, v57 + v191[11]);
  v75 = [v56 dataTypes];
  type metadata accessor for DataType();
  sub_2284C3820(&qword_280DED538, type metadata accessor for DataType);
  v76 = sub_22855D51C();

  v77 = v189;
  sub_22841F19C(v76);
  v79 = v78;

  v80 = sub_228428BF8(v79);

  v81 = v74[13];

  *(v57 + v81) = v80;
  v82 = [v56 measureIdentifiers];
  type metadata accessor for MeasureIdentifierManagedObject();
  sub_2284C3820(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v83 = sub_22855D51C();

  v84 = sub_22841F8B0(v83);

  v85 = sub_2284291F0(v84);

  v86 = v74[14];

  *(v57 + v86) = v85;
  v87 = [v56 sharableModelReferences];
  type metadata accessor for SharableModelReference();
  sub_2284C3820(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v88 = sub_22855D51C();

  sub_2284200C4(v88);
  v90 = v89;
  v182 = v77;

  v91 = sub_228429AB8(v90);

  v92 = v74[15];

  *(v57 + v92) = v91;
  v93 = [v56 categoryIdentifier];
  if (v93)
  {
    v94 = v93;
    v95 = sub_22855D1AC();
    v97 = v96;
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  v98 = (v57 + v191[16]);

  *v98 = v95;
  v98[1] = v97;
  v99 = [v56 featureTags];
  v100 = type metadata accessor for EncodedFeatureTag();
  sub_2284C3820(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v101 = sub_22855D51C();

  v183 = v100;
  if ((v101 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_22855D56C();
    v101 = v195;
    v102 = v196;
    v103 = v197;
    v104 = v198;
    v105 = v199;
  }

  else
  {
    v104 = 0;
    v106 = -1 << *(v101 + 32);
    v102 = v101 + 56;
    v103 = ~v106;
    v107 = -v106;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    else
    {
      v108 = -1;
    }

    v105 = v108 & *(v101 + 56);
  }

  v181[1] = v103;
  v109 = (v103 + 64) >> 6;
  v185 = v102;
  v186 = v101;
  v184 = v109;
  while ((v101 & 0x8000000000000000) == 0)
  {
    v114 = v104;
    v115 = v105;
    v116 = v104;
    if (!v105)
    {
      while (1)
      {
        v116 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          break;
        }

        if (v116 >= v109)
        {
          goto LABEL_45;
        }

        v115 = *(v102 + 8 * v116);
        ++v114;
        if (v115)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      sub_22855E1BC();
      __break(1u);
      return;
    }

LABEL_30:
    v117 = (v115 - 1) & v115;
    v118 = *(*(v101 + 48) + ((v116 << 9) | (8 * __clz(__rbit64(v115)))));
    if (!v118)
    {
      goto LABEL_45;
    }

LABEL_34:
    v189 = v117;
    v120 = v118;
    v121 = [v118 name];
    v122 = sub_22855D1AC();
    v124 = v123;

    *&v190 = v120;
    v125 = [v120 data];
    v126 = sub_22855C09C();
    v128 = v127;

    v129 = v191[17];
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v193 = *(v57 + v129);
    v131 = v193;
    v133 = sub_2283F6D18(v122, v124);
    v134 = *(v131 + 16);
    v135 = (v132 & 1) == 0;
    v136 = v134 + v135;
    if (__OFADD__(v134, v135))
    {
      goto LABEL_59;
    }

    v137 = v132;
    if (*(v131 + 24) >= v136)
    {
      if (v130)
      {
        if (v132)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_228448608();
        if (v137)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_228445528(v136, v130);
      v138 = sub_2283F6D18(v122, v124);
      if ((v137 & 1) != (v139 & 1))
      {
        goto LABEL_61;
      }

      v133 = v138;
      if (v137)
      {
LABEL_23:

        v110 = v193;
        v111 = (*(v193 + 56) + 16 * v133);
        v112 = *v111;
        v113 = v111[1];
        *v111 = v126;
        v111[1] = v128;
        sub_22842B38C(v112, v113);

        goto LABEL_24;
      }
    }

    v110 = v193;
    *(v193 + 8 * (v133 >> 6) + 64) |= 1 << v133;
    v140 = (v110[6] + 16 * v133);
    *v140 = v122;
    v140[1] = v124;
    v141 = (v110[7] + 16 * v133);
    *v141 = v126;
    v141[1] = v128;

    v142 = v110[2];
    v143 = __OFADD__(v142, 1);
    v144 = v142 + 1;
    if (v143)
    {
      goto LABEL_60;
    }

    v110[2] = v144;
LABEL_24:
    v101 = v186;
    v57 = v187;
    *(v187 + v129) = v110;
    v104 = v116;
    v56 = v188;
    v105 = v189;
    v109 = v184;
    v102 = v185;
  }

  v119 = sub_22855DB8C();
  if (v119)
  {
    v192 = v119;
    swift_dynamicCast();
    v118 = v193;
    v116 = v104;
    v117 = v105;
    if (v193)
    {
      goto LABEL_34;
    }
  }

LABEL_45:
  sub_228407958(v101);
  v145 = [v56 keywords];
  type metadata accessor for Keyword();
  sub_2284C3820(qword_280DED548, type metadata accessor for Keyword);
  v146 = sub_22855D51C();

  sub_22841F558(v146);
  v148 = v147;

  v149 = sub_228406280(v148);

  v150 = v191;
  v151 = v191[18];

  *(v57 + v151) = v149;
  v152 = [v56 profiles];
  v153 = sub_22855D51C();

  v154 = sub_22841FCB4(v153);

  v155 = sub_22842941C(v154);

  v156 = sub_2284C2B70(v155);

  v157 = v150[19];

  *(v57 + v157) = v156;
  v158 = [v56 localizedCategoryName];
  if (v158)
  {
    v159 = v158;
    v160 = sub_22855D1AC();
    v162 = v161;
  }

  else
  {
    v160 = 0;
    v162 = 0;
  }

  v163 = (v57 + v191[20]);

  *v163 = v160;
  v163[1] = v162;
  v164 = [v56 localizedTitle];
  if (v164)
  {
    v165 = v164;
    v166 = sub_22855D1AC();
    v168 = v167;
  }

  else
  {
    v166 = 0;
    v168 = 0;
  }

  v169 = (v57 + v191[21]);

  *v169 = v166;
  v169[1] = v168;
  v170 = [v56 localizedDescription];
  if (v170)
  {
    v171 = v170;
    v172 = sub_22855D1AC();
    v174 = v173;
  }

  else
  {
    v172 = 0;
    v174 = 0;
  }

  v175 = v191;
  v176 = (v57 + v191[22]);

  *v176 = v172;
  v176[1] = v174;
  *(v57 + v175[23]) = [v56 sortHint];
  if (([v56 searchSectionHintRawValue] & 0x80000000) != 0)
  {
    v177 = 13;
  }

  else
  {
    v177 = _s14HealthPlatform13SearchSectionO8rawValueACSgs5Int16V_tcfC_0([v56 searchSectionHintRawValue]);
  }

  v178 = v191;
  *(v57 + v191[24]) = v177;
  *(v57 + v178[25]) = [v56 indexForSearch];
  *(v57 + v178[26]) = [v56 hideInDiscover];
  FeedItem.getPinnedContentIdentifier()();
  v190 = v193;
  v179 = v194;
  v180 = v57 + v178[27];

  *v180 = v190;
  *(v180 + 16) = v179;
  FeedItem.hostViewStyle.getter(&v193);

  *(v57 + v178[29]) = v193;
}

id sub_2284C2B70(uint64_t a1)
{
  sub_2284C3874(0, qword_280DEDB30, type metadata accessor for UserProfile);
  v2 = MEMORY[0x28223BE20](a1);
  v4 = &v8 - v3;
  if (*(v2 + 16) >= 2uLL)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    sub_228519408(v2, v4);
    v5 = type metadata accessor for UserProfile(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      sub_2284C38C8(v4);
      return 0;
    }

    else
    {
      v7 = *&v4[*(v5 + 20)];
      sub_22845FC38(v4);
      return v7;
    }
  }

  return result;
}

void *sub_2284C2CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  else
  {
    if (!v1)
    {
      return 0;
    }

    v3 = type metadata accessor for UserProfile(0);
    v4 = *(a1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 20));
    v5 = v4;
    return v4;
  }

  return result;
}

uint64_t sub_2284C2DAC(uint64_t a1)
{
  v2 = [v1 featureTags];
  type metadata accessor for EncodedFeatureTag();
  sub_2284C3820(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
  v3 = sub_22855D51C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22855DAFC();
    sub_22855D56C();
    v5 = v50[1];
    v4 = v50[2];
    v7 = v50[3];
    v6 = v50[4];
    v8 = v50[5];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v6 = 0;
    v5 = v3;
  }

  while ((v5 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    v13 = v8;
    for (i = v6; !v13; ++v12)
    {
      i = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_34;
      }

      if (i >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * i);
    }

    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((i << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_17:
    v17 = [v49 managedObjectContext];
    if (v17)
    {
      v18 = v17;
      [v17 deleteObject_];
    }

    v6 = i;
    v8 = v15;
  }

  if (sub_22855DB8C())
  {
    swift_dynamicCast();
    v16 = v50[0];
    i = v6;
    v15 = v8;
    if (v50[0])
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  sub_228407958(v5);

  v19 = sub_22855D50C();
  [v49 setFeatureTags_];

  sub_2284C1AC0(1);
  v20 = sub_228429B98(&unk_283B7F1F8);
  FeedItem.contentKind.getter(v50);
  LOBYTE(v19) = sub_228425550(v50[0], v20);

  if (v19)
  {
    v21 = [v49 uniqueIdentifier];
    v22 = sub_22855D1AC();
    v24 = v23;

    sub_2284C1C30(v22, v24);
  }

  v25 = *(a1 + *(type metadata accessor for PluginFeedItem(0) + 68));
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v30 = (v27 + 63) >> 6;
  v48 = v25;

  v31 = 0;
  v46 = v26;
  if (!v29)
  {
LABEL_25:
    v33 = v49;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {
      }

      v29 = *(v26 + 8 * v32);
      ++v31;
      if (v29)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v32 = v31;
    v33 = v49;
LABEL_29:
    v34 = (v32 << 10) | (16 * __clz(__rbit64(v29)));
    v35 = (*(v48 + 48) + v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*(v48 + 56) + v34);
    v39 = *v38;
    v40 = v38[1];

    sub_22842B3E0(v39, v40);
    v41 = [v33 managedObjectContext];
    if (!v41)
    {
      break;
    }

    v42 = v41;
    v29 &= v29 - 1;
    _s14HealthPlatform8FeedItemC9removeTag4nameySS_tF_0(v36, v37);
    sub_22842B3E0(v39, v40);
    v43 = v42;
    v44 = EncodedFeatureTag.__allocating_init(context:name:data:)(v43, v36, v37, v39, v40);
    [v33 addFeatureTagsObject_];

    sub_22842B38C(v39, v40);
    v31 = v32;
    v26 = v46;
    if (!v29)
    {
      goto LABEL_25;
    }
  }

LABEL_35:
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

HealthPlatform::PinnedContentIdentifier_optional __swiftcall FeedItem.getPinnedContentIdentifier()()
{
  v2 = v0;
  v3 = [v1 pinnedContentDomain];
  if (v3 && (v7 = v3, sub_22855D1AC(), v7, v8 = sub_22855DFBC(), LOBYTE(v3) = , v8 <= 1) && (v3 = [v1 pinnedContentIdentifier]) != 0)
  {
    v9 = v3;
    v10 = sub_22855D1AC();
    v12 = v11;

    *v2 = v8;
    v2[1] = v10;
    v2[2] = v12;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  result.value.identifier._object = v5;
  result.value.identifier._countAndFlagsBits = v4;
  result.value.domain = v3;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall FeedItem.setPinnedContentIdentifier(for:)(HealthPlatform::PinnedContentIdentifier_optional a1)
{
  if (*(*&a1.value.domain + 16))
  {
    v2 = sub_22855D17C();

    [v1 setPinnedContentDomain_];

    v3 = sub_22855D17C();
  }

  else
  {
    [v1 setPinnedContentDomain_];
    v3 = 0;
  }

  v4 = v3;
  [v1 setPinnedContentIdentifier_];
}

_OWORD *sub_2284C3438(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_228400400(a4, (a5[7] + 32 * a1));
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

uint64_t sub_2284C34A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_22855C37C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2284C3550(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_2284C35A0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2284C35F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2284C3638(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_2284C367C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2283FAB3C(a4, a5[7] + 40 * a1);
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

uint64_t sub_2284C36EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22855C5CC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2284C37A4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_228400400(a3, (a4[7] + 32 * a1));
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

uint64_t sub_2284C3820(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_2284C3874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2284C38C8(uint64_t a1)
{
  sub_2284C3874(0, qword_280DEDB30, type metadata accessor for UserProfile);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static InputSignalSet.LookupKey.healthKitUnitPreferences.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for HealthKitUnitPreferencesInputSignal();
  return sub_22855C61C();
}

void *HealthKitUnitPreferencesInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_2284C5B20(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *HealthKitUnitPreferencesInputSignal.__allocating_init(context:observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_2284C5C54(a1, a2, a3, a4, v13, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v14;
}

void *HealthKitUnitPreferencesInputSignal.init(context:observer:provider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_2284C5A4C(a1, a2, a3, a4, v15, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v17;
}

void HealthKitUnitPreferencesInputSignal.Anchor.hasDifference(from:for:)(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  if ((*a2 & 0xC000000000000001) != 0)
  {

    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
    sub_2284C5D70();
    sub_22855D56C();
    v4 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
  }

  v30 = v5;
  v13 = (v7 + 64) >> 6;
  v31 = v5 & 0xC000000000000001;
  while (v4 < 0)
  {
    if (!sub_22855DB8C() || (sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830), swift_dynamicCast(), (v16 = v33) == 0))
    {
LABEL_24:
      sub_228407958(v4);
      return;
    }

LABEL_18:
    v32 = v9;
    if (!v31)
    {
      v20 = v3;
      if (*(v30 + 16) && (v22 = sub_228443BC4(v16), (v23 & 1) != 0))
      {
        v19 = *(*(v30 + 56) + 8 * v22);
        v24 = v19;
        if (v3)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = 0;
        if (v3)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_21;
    }

    v17 = v16;
    v18 = sub_22855DE8C();

    if (v18)
    {
      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      swift_dynamicCast();
      v19 = v33;
      v20 = v3;
      if (!v3)
      {
        goto LABEL_21;
      }

LABEL_32:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v25 = v16;
        v26 = sub_22855DE8C();

        if (!v26)
        {
          goto LABEL_40;
        }

        sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
        swift_dynamicCast();
        v20 = v33;
        if (!v19)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (!v20[2])
        {
          v20 = 0;
          if (!v19)
          {
            goto LABEL_8;
          }

          goto LABEL_22;
        }

        v27 = sub_228443BC4(v16);
        if ((v28 & 1) == 0)
        {
LABEL_40:
          v20 = 0;
          if (!v19)
          {
            goto LABEL_8;
          }

          goto LABEL_22;
        }

        v20 = *(v20[7] + 8 * v27);
        v29 = v20;
        if (!v19)
        {
          goto LABEL_8;
        }
      }

LABEL_22:
      if (!v20)
      {
        sub_228407958(v4);

        return;
      }

      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      v21 = sub_22855D9AC();

      v9 = v32;
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = 0;
      v20 = v3;
      if (v3)
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v19)
      {
        goto LABEL_22;
      }

LABEL_8:

      v9 = v32;
      if (v20)
      {
        sub_228407958(v4);

        return;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  if (v9)
  {
LABEL_14:
    v9 = (v15 - 1) & v15;
    v16 = *(*(v4 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_24;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

HealthPlatform::HealthKitUnitPreferencesInputSignal::Anchor __swiftcall HealthKitUnitPreferencesInputSignal.Anchor.merged(with:)(HealthPlatform::HealthKitUnitPreferencesInputSignal::Anchor with)
{
  v2 = v1;
  v3 = *with.preferences._rawValue;

  v5 = sub_2284C61D8(v4, v3);

  *v2 = v5;
  return result;
}

uint64_t sub_2284C4124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65726566657270 && a2 == 0xEB00000000736563)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22855E15C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2284C41B0(uint64_t a1)
{
  v2 = sub_2284C6540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284C41EC(uint64_t a1)
{
  v2 = sub_2284C6540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthKitUnitPreferencesInputSignal.Anchor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2284C6594(0, &qword_280DE9050, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284C6540();
  sub_22855E30C();
  if (!v2)
  {
    sub_22844AE10();
    sub_22855E03C();
    v17 = a2;
    v11 = v16[0];
    v10 = v16[1];
    sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
    sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
    sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
    v12 = sub_22855D79C();
    v13 = v17;
    if (!v12)
    {
      v12 = sub_22847D73C(MEMORY[0x277D84F90]);
    }

    v14 = v12;
    sub_22842B38C(v11, v10);
    (*(v7 + 8))(v9, v6);
    *v13 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HealthKitUnitPreferencesInputSignal.Anchor.encode(to:)(void *a1)
{
  v17[2] = *MEMORY[0x277D85DE8];
  sub_2284C6594(0, &qword_280DE9018, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284C6540();
  sub_22855E31C();
  v7 = objc_opt_self();
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
  sub_2284C5D70();
  v8 = sub_22855D0DC();
  v17[0] = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_22855C09C();
    v13 = v12;

    v17[0] = v11;
    v17[1] = v13;
    sub_22844AF8C();
    sub_22855E0CC();
    (*(v4 + 8))(v6, v3);
    return sub_22842B38C(v11, v13);
  }

  else
  {
    v15 = v10;
    sub_22855BF3C();

    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2284C470C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v5 = sub_2284C61D8(v4, v3);

  *a2 = v5;
  return result;
}

uint64_t HealthKitUnitPreferencesInputSignal.Configuration.quantityTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HealthKitUnitPreferencesInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A064(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284C4884()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A064(v3, v1);
  return sub_22855E27C();
}

uint64_t sub_2284C48D4(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  sub_22844A064(v4, v2);
  return sub_22855E27C();
}

Swift::Void __swiftcall HealthKitUnitPreferencesInputSignal.beginObservation(from:configurations:)(HealthPlatform::HealthKitUnitPreferencesInputSignal::Anchor_optional from, Swift::OpaquePointer configurations)
{
  v3 = *&from.is_nil;
  v4 = *(v2 + 32);
  os_unfair_lock_lock((v4 + 32));
  sub_2284C65F8((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = v3 + 32;
    do
    {
      v7 += 8;

      sub_228442EA4(v8);
      --v6;
    }

    while (v6);
  }

  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock((v4 + 32));
  sub_2284C6614((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
}

Swift::Void __swiftcall HealthKitUnitPreferencesInputSignal.stopObservation()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 32));
  sub_2284C6B2C((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2284C4A90(uint64_t *a1, uint64_t a2, void *a3)
{

  a1[1] = a2;
  v6 = *a1;
  v7 = &unk_2785F7000;
  if (*a1)
  {
    v8 = objc_opt_self();
    swift_unknownObjectRetain();
    v9 = [v8 defaultCenter];
    v29 = a2;
    v10 = a1;
    v11 = *MEMORY[0x277CCCE80];
    v13 = a3[8];
    v12 = a3[9];
    __swift_project_boxed_opaque_existential_1(a3 + 5, v13);
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(v13, v12);
    v7 = &unk_2785F7000;
    v16 = v11;
    a1 = v10;
    a2 = v29;
    [v9 removeObserver:v6 name:v16 object:v15];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = *MEMORY[0x277CCCE80];
  }

  v17 = [objc_opt_self() v7[382]];
  v18 = a3[8];
  v19 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v18);
  v20 = (*(v19 + 16))(v18, v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a2;
  aBlock[4] = sub_2284C6AA8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284C50C8;
  aBlock[3] = &block_descriptor_29;
  v23 = _Block_copy(aBlock);

  v24 = [v17 addObserverForName:v16 object:v20 queue:0 usingBlock:v23];
  _Block_release(v23);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  *a1 = v24;
  v25 = a3[8];
  v26 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v25);
  v27 = *(v26 + 8);

  v27(a2, sub_2284C6AB0, a3, v25, v26);
}

void *sub_2284C4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result[8];
    v6 = result[9];
    v7 = result;
    __swift_project_boxed_opaque_existential_1(result + 5, v5);
    v8 = *(v6 + 8);

    v8(a3, sub_2284C6AB8, v7, v5, v6);
  }

  return result;
}

uint64_t sub_2284C4E50(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_22855CABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getObjectType();
    v10 = a2;
    sub_22855C59C();
    v11 = a2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2283ED000, v12, v13, "Failed to fetch updated unit preferences: %@", v14, 0xCu);
      sub_22841DC98(v15);
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    swift_getObjectType();
    v19[0] = a3;
    v19[1] = a1;
    sub_2284C6874(&qword_280DEC680, &protocol conformance descriptor for HealthKitUnitPreferencesInputSignal);

    sub_22855C78C();
  }
}

uint64_t sub_2284C50C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855BE9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22855BE3C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2284C51BC(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = sub_22855CABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getObjectType();
    v11 = a2;
    sub_22855C59C();
    v12 = a2;
    v13 = sub_22855CA8C();
    v14 = sub_22855D68C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[1] = v6;
      v17 = v16;
      *v15 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_2283ED000, v13, v14, "Failed to fetch initial unit preferences; returning no values to avoid blocking observation: %@", v15, 0xCu);
      sub_22841DC98(v17);
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v10, v7);
  }

  swift_getObjectType();
  v21[2] = a3;
  v21[3] = a1;
  sub_2284C6874(&qword_280DEC680, &protocol conformance descriptor for HealthKitUnitPreferencesInputSignal);

  sub_22855C78C();
}

uint64_t *sub_2284C543C(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    v6 = *MEMORY[0x277CCCE80];
    v7 = a2[8];
    v8 = a2[9];
    __swift_project_boxed_opaque_existential_1(a2 + 5, v7);
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();
    [v5 removeObserver:v2 name:v6 object:{v9(v7, v8)}];

    swift_unknownObjectRelease_n();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *HealthKitUnitPreferencesInputSignal.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HealthKitUnitPreferencesInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2284C560C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 32));
  sub_2284C6B2C((v1 + 16));

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_2284C5668(uint64_t a1)
{
  v2 = sub_2284C6874(&qword_280DEC680, &protocol conformance descriptor for HealthKitUnitPreferencesInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

void HKHealthStore.fetchUnitPreferences(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2284C5D70();
  v6 = sub_22855D50C();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2284C57C0;
  v8[3] = &block_descriptor_17;
  v7 = _Block_copy(v8);

  [v3 preferredUnitsForQuantityTypes:v6 completion:v7];
  _Block_release(v7);
}

void sub_2284C57C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
  sub_2284C5D70();
  v5 = sub_22855D0EC();

  v6 = a3;
  v4(v5, a3);
}

void sub_2284C58A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  sub_2284C5D70();
  v7 = sub_22855D50C();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2284C57C0;
  v9[3] = &block_descriptor_22;
  v8 = _Block_copy(v9);

  [v6 preferredUnitsForQuantityTypes:v7 completion:v8];
  _Block_release(v8);
}

unint64_t *sub_2284C59B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2284C5DD8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_2284C5A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v20 = a7;
  v21 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  sub_2284C6AC0(0);
  v16 = swift_allocObject();
  *(v16 + 32) = 0;
  v17 = MEMORY[0x277D84FA0];
  *(v16 + 16) = 0;
  *(v16 + 24) = v17;
  a6[4] = v16;
  sub_2283FAB3C(&v19, (a6 + 5));
  a6[2] = a1;
  a6[3] = a2;
  a6[10] = a3;
  a6[11] = a4;
  return a6;
}

void *sub_2284C5B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_2284C5BA0(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_2284C5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v17 = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  v18 = &protocol witness table for HKHealthStore;
  *&v16 = a4;
  sub_2284C6AC0(0);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = MEMORY[0x277D84FA0];
  *(v13 + 16) = 0;
  *(v13 + 24) = v14;
  a5[4] = v13;
  sub_2283FAB3C(&v16, (a5 + 5));
  a5[2] = a1;
  a5[3] = a7;
  a5[10] = a2;
  a5[11] = a3;
  return a5;
}

void *sub_2284C5C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a5, a7);
  return sub_2284C5A4C(a1, a2, a3, a4, v17, v18, a7, a8);
}

unint64_t sub_2284C5D70()
{
  result = qword_280DE94C0;
  if (!qword_280DE94C0)
  {
    sub_2283EF310(255, &qword_280DE94C8, 0x277CCD830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE94C0);
  }

  return result;
}

void sub_2284C5DD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v31 = a4 & 0xC000000000000001;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = *(*(a3 + 56) + 8 * v13);
    if (v31)
    {
      v16 = v14;
      v17 = v15;
      if (!sub_22855DE8C())
      {
        goto LABEL_4;
      }

      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      swift_dynamicCast();
      v18 = v33;
      if (!v33)
      {
        goto LABEL_4;
      }

LABEL_19:
      sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
      v24 = v15;
      v25 = sub_22855D9AC();

      if (v25)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_23:
          sub_228525B50(a1, a2, v29, a3);
          return;
        }
      }
    }

    else
    {
      v19 = *(a4 + 16);
      v20 = v14;
      v21 = v15;
      if (v19)
      {
        v22 = sub_228443BC4(v20);
        if (v23)
        {
          v18 = *(*(a4 + 56) + 8 * v22);
          if (v18)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_4:
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_23;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_2284C6018(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_2284C59B0(v13, v7, a1, a2);
      MEMORY[0x22AABAD40](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_2284C5DD8((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_2284C61D8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v32 = MEMORY[0x277D84F98];
    v4 = sub_22855DDFC();

    v5 = sub_22855DEAC();
    if (v5)
    {
      v6 = v5;
      sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
      v7 = v6;
      do
      {
        v30 = v7;
        swift_dynamicCast();
        sub_2283EF310(0, &unk_280DE9238, 0x277CCDAB0);
        swift_dynamicCast();
        if (!v31)
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = v31;
          v9 = v30;
          if (sub_22855DE8C())
          {
            swift_dynamicCast();
            v10 = v31;
LABEL_13:
            v16 = v30;
            v17 = sub_22855D9AC();

            if (v17)
            {
              v18 = v3[2];
              if (v3[3] <= v18)
              {
                sub_228447130(v18 + 1, 1);
              }

              v3 = v32;
              result = sub_22855D99C();
              v20 = v32 + 64;
              v21 = -1 << *(v32 + 32);
              v22 = result & ~v21;
              v23 = v22 >> 6;
              if (((-1 << v22) & ~*(v32 + 64 + 8 * (v22 >> 6))) != 0)
              {
                v24 = __clz(__rbit64((-1 << v22) & ~*(v32 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v25 = 0;
                v26 = (63 - v21) >> 6;
                do
                {
                  if (++v23 == v26 && (v25 & 1) != 0)
                  {
                    __break(1u);
                    return result;
                  }

                  v27 = v23 == v26;
                  if (v23 == v26)
                  {
                    v23 = 0;
                  }

                  v25 |= v27;
                  v28 = *(v20 + 8 * v23);
                }

                while (v28 == -1);
                v24 = __clz(__rbit64(~v28)) + (v23 << 6);
              }

              *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
              *(*(v32 + 48) + 8 * v24) = v31;
              *(*(v32 + 56) + 8 * v24) = v16;
              ++*(v32 + 16);
            }

            else
            {
            }

            goto LABEL_5;
          }
        }

        else
        {
          v11 = *(a2 + 16);
          v12 = v31;
          v13 = v30;
          if (v11)
          {
            v14 = sub_228443BC4(v12);
            if (v15)
            {
              v10 = *(*(a2 + 56) + 8 * v14);
              if (v10)
              {
                goto LABEL_13;
              }
            }
          }
        }

LABEL_5:
        v7 = sub_22855DEAC();
      }

      while (v7);
    }

    sub_228407958(v4 | 0x8000000000000000);
  }

  else
  {

    v3 = sub_2284C6018(a1, a2);
  }

  return v3;
}

unint64_t sub_2284C6540()
{
  result = qword_280DEC6B8;
  if (!qword_280DEC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6B8);
  }

  return result;
}

void sub_2284C6594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284C6540();
    v7 = a3(a1, &type metadata for HealthKitUnitPreferencesInputSignal.Anchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2284C6634()
{
  result = qword_280DEC688;
  if (!qword_280DEC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC688);
  }

  return result;
}

unint64_t sub_2284C668C()
{
  result = qword_280DEC698;
  if (!qword_280DEC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC698);
  }

  return result;
}

unint64_t sub_2284C66E4()
{
  result = qword_280DEC690;
  if (!qword_280DEC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC690);
  }

  return result;
}

unint64_t sub_2284C673C()
{
  result = qword_27D83FDE8;
  if (!qword_27D83FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDE8);
  }

  return result;
}

unint64_t sub_2284C6794()
{
  result = qword_280DEC6C8[0];
  if (!qword_280DEC6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DEC6C8);
  }

  return result;
}

unint64_t sub_2284C67EC()
{
  result = qword_280DEC6C0;
  if (!qword_280DEC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6C0);
  }

  return result;
}

uint64_t sub_2284C6874(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HealthKitUnitPreferencesInputSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284C68B8()
{
  result = qword_280DEC6A0;
  if (!qword_280DEC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6A0);
  }

  return result;
}

unint64_t sub_2284C69A4()
{
  result = qword_27D83FDF0;
  if (!qword_27D83FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FDF0);
  }

  return result;
}

unint64_t sub_2284C69FC()
{
  result = qword_280DEC6A8;
  if (!qword_280DEC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6A8);
  }

  return result;
}

unint64_t sub_2284C6A54()
{
  result = qword_280DEC6B0;
  if (!qword_280DEC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC6B0);
  }

  return result;
}

void sub_2284C6AC0(uint64_t a1)
{
  if (!qword_280DE9198)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9198);
    }
  }
}

Swift::Void __swiftcall PinnedContentManaging.pin(objectType:at:)(HKObjectType objectType, Swift::Int at)
{
  v3 = v2;
  v4 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v3 + 40))(v4);
}

Swift::Void __swiftcall PinnedContentManaging.pin(objectType:)(HKObjectType objectType)
{
  v2 = v1;
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v2 + 48))(v3);
}

Swift::Void __swiftcall PinnedContentManaging.unpin(objectType:)(HKObjectType objectType)
{
  v2 = v1;
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  (*(v2 + 56))(v3);
}

Swift::Bool_optional __swiftcall PinnedContentManaging.isPinned(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = (*(v1 + 16))();
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  v6 = sub_22855BC9C();

  v11[0] = countAndFlagsBits;
  v11[1] = object;
  MEMORY[0x28223BE20](v7);
  v10[2] = v11;
  v8 = sub_2284C6D9C(sub_2284C706C, v10, v6);

  return (v8 & 1);
}

uint64_t sub_2284C6D9C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t sub_2284C6E48(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_2284C6EEC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AAB9D20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22855DB4C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2284C7014(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

uint64_t sub_2284C706C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

Swift::Void __swiftcall UserNotificationManager.removePendingOrDeliveredNotifications(with:)(Swift::OpaquePointer with)
{
  v3 = v2;
  v4 = v1;
  (*(v2 + 32))();
  v6 = *(v3 + 40);

  v6(with._rawValue, v4, v3);
}

uint64_t UNNotificationRequest.notificationIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t sub_2284C7274()
{
  v1 = [*v0 identifier];
  v2 = sub_22855D1AC();

  return v2;
}

uint64_t PluginFeedItem.NotificationRequest.feedItemIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginFeedItem.NotificationRequest.feedItemIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.notificationIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PluginFeedItem.NotificationRequest.notificationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2284C73F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 32) = sub_2284C7A3C;
  *(a2 + 40) = v5;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.makeNotificationRequest.getter()
{
  v1 = *(v0 + 32);

  return v1;
}