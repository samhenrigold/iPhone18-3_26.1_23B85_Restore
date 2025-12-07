void EncodingNameAliasToEncoding()
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    unk_1EB6E7F38 = 0u;
    xmmword_1EB6E7F28 = 0u;
    dword_1EB6E7F48 = 1065353216;
    __cxa_atexit(std::unordered_map<char const*,Encoding,CStringAlnumCaseHash,CStringAlnumCaseEqual,std::allocator<std::pair<char const* const,Encoding>>>::~unordered_map[abi:ne200100], &xmmword_1EB6E7F28, &dword_1B0389000);

    __cxa_guard_release(_MergedGlobals_0);
  }
}

{
  dispatch_once(&GetEncodingMap(void)::onceToken, &__block_literal_global_61);
}

const char *LanguageName(unsigned int a1)
{
  if (a1 > 0xA0)
  {
    return "invalid_language";
  }

  else
  {
    return kLanguageInfoTable[4 * a1];
  }
}

char *LanguageCode(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = &kLanguageInfoTable[4 * a1];
    result = v3[1];
    if (!result)
    {
      result = v3[2];
      if (!result)
      {
        v4 = v3[3];
        if (v4)
        {
          return v4;
        }

        else
        {
          return " invalid_language_code";
        }
      }
    }
  }

  return result;
}

char *LanguageCodeISO639_1(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = kLanguageInfoTable[4 * a1 + 1];
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

char *LanguageCodeISO639_2(unsigned int a1)
{
  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = kLanguageInfoTable[4 * a1 + 2];
    if (v3)
    {
      return v3;
    }
  }

  return result;
}

char *LanguageCodeWithDialects(unsigned int a1)
{
  if (a1 == 16)
  {
    return "zh-CN";
  }

  result = " invalid_language_code";
  if (a1 <= 0xA0)
  {
    v3 = &kLanguageInfoTable[4 * a1];
    result = v3[1];
    if (!result)
    {
      result = v3[2];
      if (!result)
      {
        v4 = v3[3];
        if (v4)
        {
          return v4;
        }

        else
        {
          return " invalid_language_code";
        }
      }
    }
  }

  return result;
}

uint64_t LanguageFromCode(uint64_t result, _DWORD *a2)
{
  *a2 = 26;
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = &qword_1E7AB5B28;
    while (1)
    {
      v6 = *(v5 - 2);
      if (v6)
      {
        if (!strcasecmp(v3, v6))
        {
          break;
        }
      }

      v7 = *(v5 - 1);
      if (v7)
      {
        if (!strcasecmp(v3, v7))
        {
          break;
        }
      }

      if (*v5 && !strcasecmp(v3, *v5))
      {
        break;
      }

      ++v4;
      v5 += 4;
      if (v4 == 161)
      {
        if (!strcasecmp(v3, "zh-cn") || !strcasecmp(v3, "zh_cn"))
        {
          LODWORD(v4) = 16;
        }

        else if (!strcasecmp(v3, "zh-tw") || !strcasecmp(v3, "zh_tw"))
        {
          LODWORD(v4) = 69;
        }

        else if (!strcasecmp(v3, "sr-me") || !strcasecmp(v3, "sr_me"))
        {
          LODWORD(v4) = 160;
        }

        else if (!strcasecmp(v3, "he"))
        {
          LODWORD(v4) = 6;
        }

        else if (!strcasecmp(v3, "in"))
        {
          LODWORD(v4) = 38;
        }

        else if (!strcasecmp(v3, "ji"))
        {
          LODWORD(v4) = 91;
        }

        else
        {
          if (strcasecmp(v3, "fil"))
          {
            return 0;
          }

          LODWORD(v4) = 32;
        }

        break;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t StateWithTasks.InSyncMailbox.name.setter(uint64_t a1, int a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.serverUnreadCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1B0A8F560(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

double sub_1B0A8F5AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a1 + 168);
  if (v7 < 2)
  {
    v8 = a1[20];
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7 > 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

void *variable initialization expression of StateWithTasks.mailboxesToSelectLoggingHelper()
{
  _s30MailboxesToSelectLoggingHelperCMa();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, char *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (*(result + 24) != *(a2 + 3))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1B04520BC(*(result + 16), *(a2 + 2)) & 1) == 0)
    {
      return 0;
    }

    v10 = a2[40];
    if (*(v9 + 40))
    {
      if ((a2[40] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 32) != *(a2 + 4))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A8F7A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3DE0, &unk_1B0EC0F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A8F814(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v5 = 0;
    v7 = result;
    v4[0] = swift_getAssociatedTypeWitness();
    v4[1] = swift_getAssociatedTypeWitness();
    v4[2] = swift_getAssociatedConformanceWitness();
    v4[3] = swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(319, v4);
    if (v3 <= 0x3F)
    {
      v6 = 0;
      v8 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0A8F964(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1B0E44B88();
}

uint64_t sub_1B0A8F9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v4 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B0A8FB38@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v41 = a5;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1B0E45D88();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v36 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v34 = &v32 - v17;
  sub_1B0A8F9DC(a2, a3, a4);
  v18 = *(v10 + 64);
  v39 = v5;
  v37 = v9;
  v18();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    (*(v32 + 8))(v15, v33);
    v19 = 1;
    v20 = v41;
  }

  else
  {
    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v34;
    v23 = v35;
    v24 = v36;
    (*(v35 + 32))(v34, v15, v36);
    v25 = &v15[v21];
    v26 = v41;
    sub_1B0A90A00(v25, v41);
    v27 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = swift_getAssociatedConformanceWitness();
    v42[0] = v24;
    v42[1] = v27;
    v42[2] = AssociatedConformanceWitness;
    v42[3] = v29;
    v30 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v42);
    sub_1B0BB2B34(v38, v22, v30);
    (*(v23 + 8))(v22, v24);
    v19 = 0;
    v20 = v26;
  }

  return (*(*(v40 - 8) + 56))(v20, v19, 1);
}

uint64_t sub_1B0A8FEAC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1B0E45D88();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v30 = AssociatedTypeWitness;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v28 = &v25 - v15;
  sub_1B0A8F9DC(a2, a3, a4);
  v16 = *(v8 + 72);
  v31 = v7;
  v16();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    (*(v26 + 8))(v13, v27);
    return 0xF000000000000007;
  }

  else
  {
    v27 = *&v13[*(TupleTypeMetadata2 + 48)];
    v19 = v28;
    v18 = v29;
    v20 = v30;
    (*(v29 + 32))(v28, v13, v30);
    v21 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = swift_getAssociatedConformanceWitness();
    v33[0] = v21;
    v33[1] = v20;
    v33[2] = AssociatedConformanceWitness;
    v33[3] = v23;
    v24 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v33);
    sub_1B0BB2CD4(v32, v19, v24);
    (*(v18 + 8))(v19, v20);
    return v27;
  }
}

uint64_t sub_1B0A901CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0A8F9DC(a2, a3, a4);
  (*(*(a4 + 24) + 80))(a1, v6, v7, v8, v9, *(a4 + 16));
}

uint64_t sub_1B0A90280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B0A8F9DC(a2, a3, a4);
  (*(*(a4 + 24) + 88))(a1, v6, v7, v8, v9, *(a4 + 16));
}

uint64_t sub_1B0A90334(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v34 = a5;
  v35 = a7;
  v38 = a6;
  v39 = a1;
  v32 = a3;
  v33 = a4;
  v11 = *(a8 + 16);
  v10 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1B0E45D88();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v29 - v17;
  v18 = *(a8 + 36);
  v36 = v8;
  v19 = *(v8 + v18);
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = AssociatedConformanceWitness;
  v24 = v37;
  sub_1B0BB2E6C(v39, v19, AssociatedTypeWitness, v20, v23, v22, v15);
  if ((*(v24 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v29 + 8))(v15, v30);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error(0, v11, v10, v25);
    swift_getWitnessTable();
    swift_allocError();
    *v26 = v39;
    *(v26 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v28 = v31;
    (*(v24 + 32))(v31, v15, AssociatedTypeWitness);
    (*(v10 + 96))(v28, v32, v33, v34, v38, v35, v11, v10);
    return (*(v24 + 8))(v28, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0A906B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0A906EC(int a1, uint64_t a2)
{
  v27 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B0E45D88();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v23 = &v22 - v12;
  v13 = *(a2 + 36);
  v26 = v2;
  v14 = *(v2 + v13 + 8);
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  sub_1B0BB3114(v27, v14, v15, AssociatedTypeWitness, AssociatedConformanceWitness, v17, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v9, v25);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error(0, v5, v4, v18);
    swift_getWitnessTable();
    swift_allocError();
    *v19 = v27;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v21 = v23;
    (*(v10 + 32))(v23, v9, AssociatedTypeWitness);
    (*(v4 + 104))(v21, v5, v4);
    return (*(v10 + 8))(v21, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0A90A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A90A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t sub_1B0A90AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0A90B04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B0A90B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0A90B9C(uint64_t a1, _DWORD *a2)
{
  v2 = a2 + 2;
  if (*a2 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 152);
  v73 = *(a1 + 136);
  v74 = v3;
  v75 = *(a1 + 168);
  v76 = *(a1 + 184);
  v4 = *(a1 + 88);
  v69 = *(a1 + 72);
  v70 = v4;
  v5 = *(a1 + 120);
  v71 = *(a1 + 104);
  v72 = v5;
  v6 = *(a1 + 24);
  v65 = *(a1 + 8);
  v66 = v6;
  v7 = *(a1 + 56);
  v67 = *(a1 + 40);
  v68 = v7;
  if (sub_1B075FACC(&v65) != 1)
  {
    v14 = *(v2 + 9);
    v61 = *(v2 + 8);
    v62 = v14;
    v63 = *(v2 + 10);
    v64 = *(v2 + 176);
    v15 = *(v2 + 5);
    v57 = *(v2 + 4);
    v58 = v15;
    v16 = *(v2 + 7);
    v59 = *(v2 + 6);
    v60 = v16;
    v17 = *(v2 + 1);
    v53 = *v2;
    v54 = v17;
    v18 = *(v2 + 3);
    v55 = *(v2 + 2);
    v56 = v18;
    if (sub_1B075FACC(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_1B0717014(v51) == 1)
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v20 = v19[5];
      v81 = v19[4];
      v82 = v20;
      v83 = v19[6];
      *&v84 = *(v19 + 14);
      v21 = v19[1];
      v77 = *v19;
      v78 = v21;
      v22 = v19[3];
      v79 = v19[2];
      v80 = v22;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_1B0717014(&v39) == 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v24 = v23[5];
        v92 = v23[4];
        v93 = v24;
        v94 = v23[6];
        *&v95 = *(v23 + 14);
        v25 = v23[1];
        v88 = *v23;
        v89 = v25;
        v26 = v23[3];
        v90 = v23[2];
        v91 = v26;
        return (static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v77, &v88) & 1) != 0;
      }
    }

    else
    {
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
      v28 = v27[9];
      v85 = v27[8];
      v86 = v28;
      v87 = v27[10];
      v29 = v27[5];
      v81 = v27[4];
      v82 = v29;
      v30 = v27[7];
      v83 = v27[6];
      v84 = v30;
      v31 = v27[1];
      v77 = *v27;
      v78 = v31;
      v32 = v27[3];
      v79 = v27[2];
      v80 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_1B0717014(&v39) != 1)
      {
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
        v34 = v33[9];
        v96 = v33[8];
        v97 = v34;
        v98 = v33[10];
        v35 = v33[5];
        v92 = v33[4];
        v93 = v35;
        v36 = v33[7];
        v94 = v33[6];
        v95 = v36;
        v37 = v33[1];
        v88 = *v33;
        v89 = v37;
        v38 = v33[3];
        v90 = v33[2];
        v91 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v77, &v88);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    return 0;
  }

  v8 = *(v2 + 9);
  v61 = *(v2 + 8);
  v62 = v8;
  v63 = *(v2 + 10);
  v64 = *(v2 + 176);
  v9 = *(v2 + 5);
  v57 = *(v2 + 4);
  v58 = v9;
  v10 = *(v2 + 7);
  v59 = *(v2 + 6);
  v60 = v10;
  v11 = *(v2 + 1);
  v53 = *v2;
  v54 = v11;
  v12 = *(v2 + 3);
  v55 = *(v2 + 2);
  v56 = v12;
  result = sub_1B075FACC(&v53);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

BOOL sub_1B0A90EC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1B03D3FBC(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_1B0A90F18(__int128 *a1)
{
  v5 = *v1;
  v6 = *(*v1 + 16);
  if (v6)
  {
    v3 = 0;
    v2 = 32;
    while (*a1 != *&v5[v2])
    {
      ++v3;
      v2 += 192;
      if (v6 == v3)
      {
        goto LABEL_5;
      }
    }

    sub_1B0A912A8(a1, v21);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_5:
  if (qword_1EB6DDA50 != -1)
  {
    swift_once();
  }

  if (v6 >= qword_1EB737D88)
  {
    v20 = *(v5 + 2);
    if (v20)
    {
      v2 = v1;
      v1 = sub_1B0441754(v20);
      sub_1B0A912A8(a1, v21);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    v5 = sub_1B0B8C888(v5);
    if ((v1 & 0x8000000000000000) == 0)
    {
LABEL_16:
      if (v1 < *(v5 + 2))
      {
        result = sub_1B0A912E0(a1, &v5[192 * v1 + 32]);
        *v2 = v5;
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1B0B8C888(v5);
    v5 = result;
LABEL_19:
    if (v3 >= *(v5 + 2))
    {
      __break(1u);
    }

    else
    {
      result = sub_1B0A912E0(a1, &v5[v2]);
      *v1 = v5;
    }

    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1B0AFF434(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1B0AFF434((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[192 * v8];
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[3];
  *(v9 + 4) = a1[2];
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[7];
  *(v9 + 8) = a1[6];
  *(v9 + 9) = v15;
  *(v9 + 6) = v13;
  *(v9 + 7) = v14;
  v16 = a1[8];
  v17 = a1[9];
  v18 = a1[10];
  *(v9 + 201) = *(a1 + 169);
  *(v9 + 11) = v17;
  *(v9 + 12) = v18;
  *(v9 + 10) = v16;
  *v1 = v5;
  return sub_1B0A912A8(a1, v21);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO21LocationAndExtensionsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO16LanguageLocationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216MessageAttributeO13BodyStructureO(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1B0A911D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 185))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 184);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A91224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
    *(result + 184) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1B0A91328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0A91630(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E68, &unk_1B0EDC5C0);
    }

    sub_1B0A90A00(v6, v10);
    sub_1B0A90A00(v10, a1);
    v12 = 0;
  }

  else
  {
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1B0A91694(v6);
    }

    v12 = 1;
  }

  return (*(v8 + 56))(a1, v12, 1, v7);
}

uint64_t Command.Affinity.connection.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Command.Affinity.mailbox.setter(uint64_t a1, int a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1B0A91598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B0A915E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0A91630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A91694(uint64_t a1)
{
  v2 = type metadata accessor for Command(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0A916F0(uint64_t (*a1)(void))
{
  v1 = a1();
  v4 = ResponseText.debugDescription.getter(v1, v2, v3);
  sub_1B0447F00(v1);

  return v4;
}

unint64_t sub_1B0A9174C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v6 = a5;
    if (a5 == 1)
    {
      v9 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v58 = *v9;
      v59 = *(v9 + 8);
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v56 = *(v9 + 40);
      if ((v11 & 0x8000000000000000) == 0)
      {
        v54 = *(v9 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(a2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0E43988();
        v14 = sub_1B0E458E8();
        sub_1B0447F00(a2);

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v64 = v52;
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v58;
          *(v15 + 11) = 2082;
          log = v14;
          v60 = v6;
          v16 = sub_1B0399D64(v59, v10, &v64);
          sub_1B0A92018(v58, v59, v10, v54);
          *(v15 + 13) = v16;
          *(v15 + 21) = 2082;
          v17 = ResponseText.debugDescription.getter(a2, a3, a4);
          v19 = sub_1B0399D64(v17, v18, &v64);
          v6 = v60;

          *(v15 + 23) = v19;
          v20 = "[%.*hhx-%{public}s] Received 'NO %{public}s'";
LABEL_9:
          _os_log_impl(&dword_1B0389000, v13, log, v20, v15, 0x1Fu);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v52, -1, -1);
          MEMORY[0x1B272C230](v15, -1, -1);

LABEL_17:
          sub_1B0A91F7C();
          swift_allocError();
          *v48 = a2;
          *(v48 + 8) = a3;
          *(v48 + 16) = a4;
          *(v48 + 24) = v6;
          swift_willThrow();
          sub_1B0A91FD0(a2, a3, a4, v6);
          return a2;
        }

        goto LABEL_10;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = sub_1B0E43988();
      v30 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      v55 = v30;
      if (os_log_type_enabled(v29, v30))
      {
        loga = v29;
        v31 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v31 = 68159491;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = v58;
        *(v31 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = v6;
        v32 = sub_1B0399D64(v59, v10, &v66);

        *(v31 + 13) = v32;
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;

        *(v31 + 29) = v11;

        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;

        v64 = v12;
        v65 = v56;
        v33 = sub_1B0E44BA8();
        v35 = sub_1B0399D64(v33, v34, &v66);

        *(v31 + 43) = v35;
        *(v31 + 51) = 2082;
        v36 = ResponseText.debugDescription.getter(a2, a3, a4);
        v38 = sub_1B0399D64(v36, v37, &v66);
        v6 = v62;

        *(v31 + 53) = v38;
        v39 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'";
LABEL_15:
        _os_log_impl(&dword_1B0389000, loga, v55, v39, v31, 0x3Du);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v53, -1, -1);
        MEMORY[0x1B272C230](v31, -1, -1);

        goto LABEL_17;
      }
    }

    else
    {
      v21 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v58 = *v21;
      v59 = *(v21 + 8);
      v10 = *(v21 + 16);
      v22 = *(v21 + 24);
      v23 = *(v21 + 32);
      v57 = *(v21 + 40);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v54 = *(v21 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B04420D8(a2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v13 = sub_1B0E43988();
        v24 = sub_1B0E458E8();
        sub_1B0447F00(a2);

        if (os_log_type_enabled(v13, v24))
        {
          v15 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v64 = v52;
          *v15 = 68158466;
          *(v15 + 4) = 2;
          *(v15 + 8) = 256;
          *(v15 + 10) = v58;
          *(v15 + 11) = 2082;
          log = v24;
          v61 = v6;
          v25 = sub_1B0399D64(v59, v10, &v64);
          sub_1B0A92018(v58, v59, v10, v22);
          *(v15 + 13) = v25;
          *(v15 + 21) = 2082;
          v26 = ResponseText.debugDescription.getter(a2, a3, a4);
          v28 = sub_1B0399D64(v26, v27, &v64);
          v6 = v61;

          *(v15 + 23) = v28;
          v20 = "[%.*hhx-%{public}s] Received 'BAD %{public}s'";
          goto LABEL_9;
        }

LABEL_10:

        sub_1B0A92018(v58, v59, v10, v54);
        goto LABEL_17;
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = sub_1B0E43988();
      v40 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      v55 = v40;
      if (os_log_type_enabled(v29, v40))
      {
        loga = v29;
        v31 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v66 = v53;
        *v31 = 68159491;
        *(v31 + 4) = 2;
        *(v31 + 8) = 256;
        *(v31 + 10) = v58;
        *(v31 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v63 = v6;
        v41 = sub_1B0399D64(v59, v10, &v66);

        *(v31 + 13) = v41;
        *(v31 + 21) = 1040;
        *(v31 + 23) = 2;
        *(v31 + 27) = 512;

        *(v31 + 29) = v22;

        *(v31 + 31) = 2160;
        *(v31 + 33) = 0x786F626C69616DLL;
        *(v31 + 41) = 2085;

        v64 = v23;
        v65 = v57;
        v42 = sub_1B0E44BA8();
        v44 = sub_1B0399D64(v42, v43, &v66);

        *(v31 + 43) = v44;
        *(v31 + 51) = 2082;
        v45 = ResponseText.debugDescription.getter(a2, a3, a4);
        v47 = sub_1B0399D64(v45, v46, &v66);
        v6 = v63;

        *(v31 + 53) = v47;
        v39 = "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'";
        goto LABEL_15;
      }
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  return a2;
}

unint64_t sub_1B0A91F7C()
{
  result = qword_1EB6E3E70;
  if (!qword_1EB6E3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E70);
  }

  return result;
}

double sub_1B0A91FD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    sub_1B04420D8(a1);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B0A92018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a4 < 0)
  {
  }

  return result;
}

unint64_t sub_1B0A92068(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5)
{
  v61 = a3;
  v9 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  v62 = a5;
  if (a5)
  {
    v22 = v19;
    if (a5 == 1)
    {
      sub_1B0A92638(a1, &v59 - v20);
      sub_1B0A92638(a1, v17);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      v23 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = sub_1B0E43988();
      v25 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v26 = 68159491;
        *(v26 + 4) = 2;
        *(v26 + 8) = 256;
        v27 = v22;
        v28 = &v17[*(v22 + 20)];
        *(v26 + 10) = *v28;
        *(v26 + 11) = 2082;
        v29 = &v21[*(v27 + 20)];
        *(v26 + 13) = sub_1B0399D64(*(v29 + 1), *(v29 + 2), &v65);
        *(v26 + 21) = 1040;
        *(v26 + 23) = 2;
        *(v26 + 27) = 512;
        LOWORD(v28) = *(v28 + 12);
        sub_1B0A9269C(v17);
        *(v26 + 29) = v28;
        *(v26 + 31) = 2160;
        *(v26 + 33) = 0x786F626C69616DLL;
        *(v26 + 41) = 2085;
        v30 = *(v29 + 4);
        v31 = *(v29 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v21);
        v63 = v30;
        v64 = v31;
        v32 = sub_1B0E44BA8();
        v34 = sub_1B0399D64(v32, v33, &v65);

        *(v26 + 43) = v34;
        *(v26 + 51) = 2082;
        v35 = v61;
        v36 = ResponseText.debugDescription.getter(a2, v61, v23);
        v38 = sub_1B0399D64(v36, v37, &v65);

        *(v26 + 53) = v38;
        _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'NO %{public}s'", v26, 0x3Du);
        v39 = v60;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v39, -1, -1);
        v40 = v26;
LABEL_7:
        MEMORY[0x1B272C230](v40, -1, -1);

        v55 = v62;
LABEL_11:
        sub_1B0A926F8();
        swift_allocError();
        *v57 = a2;
        *(v57 + 8) = v35;
        *(v57 + 16) = v23;
        *(v57 + 24) = v55;
        swift_willThrow();
        sub_1B0A91FD0(a2, v35, v23, v55);
        return a2;
      }

      sub_1B0A9269C(v17);

      v56 = v21;
    }

    else
    {
      sub_1B0A92638(a1, v14);
      sub_1B0A92638(a1, v11);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a2);
      v23 = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = sub_1B0E43988();
      v41 = sub_1B0E458E8();
      sub_1B0447F00(a2);

      if (os_log_type_enabled(v24, v41))
      {
        v42 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65 = v60;
        *v42 = 68159491;
        *(v42 + 4) = 2;
        *(v42 + 8) = 256;
        v43 = v22;
        v44 = &v11[*(v22 + 20)];
        *(v42 + 10) = *v44;
        *(v42 + 11) = 2082;
        v45 = &v14[*(v43 + 20)];
        *(v42 + 13) = sub_1B0399D64(*(v45 + 1), *(v45 + 2), &v65);
        *(v42 + 21) = 1040;
        *(v42 + 23) = 2;
        *(v42 + 27) = 512;
        LOWORD(v44) = *(v44 + 12);
        sub_1B0A9269C(v11);
        *(v42 + 29) = v44;
        *(v42 + 31) = 2160;
        *(v42 + 33) = 0x786F626C69616DLL;
        *(v42 + 41) = 2085;
        v46 = *(v45 + 4);
        LODWORD(v45) = *(v45 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v14);
        v63 = v46;
        v64 = v45;
        v47 = sub_1B0E44BA8();
        v49 = sub_1B0399D64(v47, v48, &v65);

        *(v42 + 43) = v49;
        *(v42 + 51) = 2082;
        v50 = v61;
        v51 = ResponseText.debugDescription.getter(a2, v61, v23);
        v53 = sub_1B0399D64(v51, v52, &v65);

        *(v42 + 53) = v53;
        v35 = v50;
        _os_log_impl(&dword_1B0389000, v24, v41, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received 'BAD %{public}s'", v42, 0x3Du);
        v54 = v60;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v54, -1, -1);
        v40 = v42;
        goto LABEL_7;
      }

      sub_1B0A9269C(v11);

      v56 = v14;
    }

    sub_1B0A9269C(v56);
    v55 = v62;
    v35 = v61;
    goto LABEL_11;
  }

  return a2;
}

uint64_t sub_1B0A92638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0A9269C(uint64_t a1)
{
  v2 = type metadata accessor for MailboxTaskLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B0A926F8()
{
  result = qword_1EB6E3E78;
  if (!qword_1EB6E3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E78);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B0A9277C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0A927C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B0A92834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1B0E46C28(), sub_1B0E44BB8(), _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0(), , v4 = sub_1B0E46CB8(), v5 = -1 << *(a3 + 32), v6 = v4 & ~v5, ((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = sub_1B0E44BB8();
      v10 = v9;
      if (v8 == sub_1B0E44BB8() && v10 == v11)
      {
        break;
      }

      v13 = sub_1B0E46A78();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1B0A9299C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v3);
  v4 = sub_1B0E46CB8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1B0A92A68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B0E46C28();
  sub_1B0E42F48();
  v6 = sub_1B0E46CB8();
  v7 = a3 + 56;
  v8 = -1 << *(a3 + 32);
  v9 = v6 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v78 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v76 = v14;
  v74 = (a1 >> 32) - a1;
  v75 = a1 >> 32;
  v77 = v10;
  while (1)
  {
    v15 = (*(a3 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || a2 >> 62 != 3;
      if (((v21 | v78) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_147;
      }

      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_146;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_34:
        v26 = BYTE6(a2);
        if (v11)
        {
          v26 = HIDWORD(a1) - a1;
          if (v76)
          {
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
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v11 != 2)
    {
      if (!v22)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_145;
    }

LABEL_40:
    if (v22 != v26)
    {
      goto LABEL_14;
    }

    if (v22 < 1)
    {
      return 1;
    }

    if (v18 > 1)
    {
      break;
    }

    if (!v18)
    {
      *__s1 = v17;
      *&__s1[8] = v16;
      __s1[10] = BYTE2(v16);
      __s1[11] = BYTE3(v16);
      __s1[12] = BYTE4(v16);
      __s1[13] = BYTE5(v16);
      if (!v11)
      {
        goto LABEL_93;
      }

      if (v11 != 1)
      {
        v49 = *(a1 + 16);
        v71 = *(a1 + 24);
        sub_1B03B2000(v17, v16);
        v44 = sub_1B0E42A98();
        if (v44)
        {
          v50 = sub_1B0E42AC8();
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_162;
          }

          v44 += v49 - v50;
        }

        v25 = __OFSUB__(v71, v49);
        v46 = v71 - v49;
        if (v25)
        {
          goto LABEL_154;
        }

        v47 = sub_1B0E42AB8();
        if (!v44)
        {
          goto LABEL_169;
        }

LABEL_100:
        if (v47 >= v46)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        result = __s1;
        v51 = v44;
        goto LABEL_136;
      }

      if (v75 < a1)
      {
        goto LABEL_151;
      }

      sub_1B03B2000(v17, v16);
      v29 = sub_1B0E42A98();
      if (!v29)
      {
        goto LABEL_172;
      }

      v30 = v29;
      v31 = sub_1B0E42AC8();
      if (__OFSUB__(a1, v31))
      {
        goto LABEL_157;
      }

      v32 = (a1 - v31 + v30);
      result = sub_1B0E42AB8();
      if (!v32)
      {
        goto LABEL_173;
      }

LABEL_108:
      if (result >= v74)
      {
        v55 = (a1 >> 32) - a1;
      }

      else
      {
        v55 = result;
      }

      v56 = __s1;
      v57 = v32;
      goto LABEL_139;
    }

    if (v17 > v17 >> 32)
    {
      goto LABEL_148;
    }

    sub_1B03B2000(v17, v16);
    v35 = sub_1B0E42A98();
    if (v35)
    {
      v40 = sub_1B0E42AC8();
      if (__OFSUB__(v17, v40))
      {
        goto LABEL_150;
      }

      v35 += v17 - v40;
    }

    sub_1B0E42AB8();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v69 = v35;
      v63 = *(a1 + 16);
      v73 = *(a1 + 24);
      v37 = sub_1B0E42A98();
      if (v37)
      {
        v64 = sub_1B0E42AC8();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_165;
        }

        v37 += v63 - v64;
      }

      v25 = __OFSUB__(v73, v63);
      v65 = v73 - v63;
      if (v25)
      {
        goto LABEL_160;
      }

      v66 = sub_1B0E42AB8();
      if (v66 >= v65)
      {
        v62 = v65;
      }

      else
      {
        v62 = v66;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_180;
      }

      if (!v37)
      {
        goto LABEL_179;
      }

LABEL_133:
      if (result == v37)
      {
LABEL_143:
        sub_1B0391D50(v17, v16);
        return 1;
      }

      v42 = v62;
      goto LABEL_135;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_159;
      }

      v37 = sub_1B0E42A98();
      if (v37)
      {
        v41 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v41))
        {
          goto LABEL_166;
        }

        v37 += a1 - v41;
      }

      result = sub_1B0E42AB8();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_182;
      }

      if (!v37)
      {
        goto LABEL_181;
      }

LABEL_83:
      if (v35 == v37)
      {
        goto LABEL_143;
      }

      v42 = v39;
      result = v35;
LABEL_135:
      v51 = v37;
LABEL_136:
      v67 = memcmp(result, v51, v42);
      sub_1B0391D50(v17, v16);
      v7 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_171;
    }

LABEL_138:
    v57 = __s1;
    v56 = v35;
    v55 = BYTE6(a2);
LABEL_139:
    v67 = memcmp(v56, v57, v55);
    sub_1B0391D50(v17, v16);
LABEL_140:
    v10 = v77;
    if (!v67)
    {
      return 1;
    }

LABEL_14:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_1B03B2000(v17, v16);
    v35 = sub_1B0E42A98();
    if (v35)
    {
      v36 = sub_1B0E42AC8();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_149;
      }

      v35 += v34 - v36;
    }

    result = sub_1B0E42AB8();
    v7 = a3 + 56;
    if (v11 == 2)
    {
      v68 = v35;
      v58 = *(a1 + 16);
      v72 = *(a1 + 24);
      v37 = sub_1B0E42A98();
      if (v37)
      {
        v59 = sub_1B0E42AC8();
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_163;
        }

        v37 += v58 - v59;
      }

      v25 = __OFSUB__(v72, v58);
      v60 = v72 - v58;
      if (v25)
      {
        goto LABEL_158;
      }

      v61 = sub_1B0E42AB8();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }

      result = v68;
      if (!v68)
      {
        goto LABEL_178;
      }

      if (!v37)
      {
        goto LABEL_177;
      }

      goto LABEL_133;
    }

    if (v11 == 1)
    {
      if (v75 < a1)
      {
        goto LABEL_153;
      }

      v37 = sub_1B0E42A98();
      if (v37)
      {
        v38 = sub_1B0E42AC8();
        if (__OFSUB__(a1, v38))
        {
          goto LABEL_164;
        }

        v37 += a1 - v38;
      }

      result = sub_1B0E42AB8();
      v39 = (a1 >> 32) - a1;
      if (result < v74)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_176;
      }

      if (!v37)
      {
        goto LABEL_175;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_174;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v11)
  {
LABEL_93:
    __s2 = a1;
    v80 = a2;
    v81 = BYTE2(a2);
    v82 = BYTE3(a2);
    v83 = BYTE4(a2);
    v84 = BYTE5(a2);
    v48 = memcmp(__s1, &__s2, BYTE6(a2));
    v10 = v77;
    if (!v48)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v70 = *(a1 + 24);
    sub_1B03B2000(v17, v16);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v45))
      {
        goto LABEL_161;
      }

      v44 += v43 - v45;
    }

    v25 = __OFSUB__(v70, v43);
    v46 = v70 - v43;
    if (v25)
    {
      goto LABEL_155;
    }

    v47 = sub_1B0E42AB8();
    if (!v44)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v75 < a1)
  {
    goto LABEL_152;
  }

  sub_1B03B2000(v17, v16);
  v52 = sub_1B0E42A98();
  if (v52)
  {
    v53 = v52;
    v54 = sub_1B0E42AC8();
    if (__OFSUB__(a1, v54))
    {
      goto LABEL_156;
    }

    v32 = (a1 - v54 + v53);
    result = sub_1B0E42AB8();
    if (!v32)
    {
      goto LABEL_168;
    }

    goto LABEL_108;
  }

  sub_1B0E42AB8();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = sub_1B0E42AB8();
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1B0A93330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2);
    v6 = sub_1B0E46CB8();
    v7 = -1 << *(a3 + 32);
    v8 = v6 & ~v7;
    if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      do
      {
        v10 = (*(a3 + 48) + 16 * v8);
        if (v10[1] == a2)
        {
          v11 = *v10;
          v12 = *(*v10 + 16);
          if (v12 == *(a1 + 16))
          {
            if (!v12 || v11 == a1)
            {
              return 1;
            }

            v13 = (v11 + 32);
            for (i = (a1 + 32); *v13 == *i; ++i)
            {
              ++v13;
              if (!--v12)
              {
                return 1;
              }
            }
          }
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }
  }

  return 0;
}

IMAP2Behavior::ConnectionLimits __swiftcall ConnectionLimits.init(maximumConstrainedConnectionCount:maximumConnectionCount:closeWhenIdle:)(Swift::Int maximumConstrainedConnectionCount, Swift::Int maximumConnectionCount, Swift::Bool closeWhenIdle)
{
  if (maximumConnectionCount < maximumConstrainedConnectionCount)
  {
    maximumConstrainedConnectionCount = maximumConnectionCount;
  }

  v3 = closeWhenIdle;
  result.maximumConnectionCount = maximumConnectionCount;
  result.maximumConstrainedConnectionCount = maximumConstrainedConnectionCount;
  result.closeWhenIdle = v3;
  return result;
}

uint64_t sub_1B0A93490(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ConnectionIDsGroupedByState.connections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ConnectionIDsGroupedByState.Connection.State.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A9362C()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A93674(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t ConnectionIDsGroupedByState.Connection.hash(into:)(uint64_t a1, unint64_t a2)
{
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](HIDWORD(a2) & 1);
  return MEMORY[0x1B2728D70]((a2 >> 40) & 1);
}

uint64_t ConnectionIDsGroupedByState.Connection.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](HIDWORD(a1) & 1);
  MEMORY[0x1B2728D70]((a1 >> 40) & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A93788()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A937F8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v1);
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0A93844(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

uint64_t ConnectionLimitsAndUsage.limits.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t ConnectionLimitsAndUsage.usage.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0452640(v2);
  return v1;
}

unint64_t ConnectionLimitsAndUsage.usage.setter(uint64_t a1, uint64_t a2)
{

  result = sub_1B03C81E4(*(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ConnectionLimitsAndUsage.init(limits:usage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

char *sub_1B0A93A4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 37);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*v3 == 1)
    {
      v6 = *(v3 - 5);
      v7 = *(v3 - 1);
      v8 = ConnectionUsage.usage(_:)(v6, *(v1 + 24), *(v1 + 32));
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B03DA284(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1B03DA284((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v5 = &v4[24 * v12];
      *(v5 + 8) = v6;
      v5[36] = v7;
      *(v5 + 5) = v8;
      v5[48] = v10;
      v5[49] = HIBYTE(v10) & 1;
    }

    v3 += 8;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_1B0A93B60(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000;
  if (*(a1 + 4))
  {
    v3 = 0x100000000;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 4))
  {
    v2 = 0;
  }

  return sub_1B0A93FB0(v3 | *a1, *(a1 + 1), *(a1 + 16) | (*(a1 + 17) << 8), v2 | *a2, *(a2 + 1), *(a2 + 16) | (*(a2 + 17) << 8));
}

uint64_t sub_1B0A93BBC(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B04543AC(0, a2 & ~(a2 >> 63), 0);
  result = v12;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 4 * i);
        v9 = *(result + 16);
        while (v9 != v7)
        {
          v10 = result + 4 * v7++;
          if (v8 == *(v10 + 32))
          {

            return i;
          }
        }

        v13 = result;
        v11 = *(result + 24);
        if (v9 >= v11 >> 1)
        {
          sub_1B04543AC((v11 > 1), v9 + 1, 1);
          result = v13;
        }

        *(result + 16) = v9 + 1;
        *(result + 4 * v9 + 32) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1B0A93CE4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    for (i = 0; ; ++i)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1B0E434F8();
      while (1)
      {
        v9 = sub_1B0E43528();
        if (v10)
        {
          break;
        }

        if (*(v6 + 4 * v9) == *(v6 + 4 * i))
        {
          return 0;
        }

        sub_1B0E43548();
      }

      result = sub_1B0E43538();
      if (v8 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A93E4C(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
LABEL_6:
  while (v8)
  {
    v11 = v8;
LABEL_12:
    v8 = (v11 - 1) & v11;
    if (*(a2 + 16))
    {
      v13 = *(*(v3 + 48) + ((v4 << 8) | (4 * __clz(__rbit64(v11)))));
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v14 = -1 << *(a2 + 32);
      v15 = result & ~v14;
      if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (v13 != *(*(a2 + 48) + 4 * v15))
        {
          v15 = (v15 + 1) & v16;
          if (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v12);
    ++v4;
    if (v11)
    {
      v4 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A93FB0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, __int16 a6)
{
  result = 0;
  if (a1 == a4 && (BYTE4(a1) & 1) == (BYTE4(a4) & 1))
  {
    if ((a3 & 0x100) != 0)
    {
      if ((a6 & 0x100) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100) == 0)
    {
      if (a3)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if ((a6 & 1) == 0 || a5 != 1)
            {
              return 0;
            }
          }

          else if ((a6 & 1) == 0 || a5 <= 1)
          {
            return 0;
          }
        }

        else if ((a6 & 1) == 0 || a5)
        {
          return 0;
        }
      }

      else if ((a6 & 1) != 0 || a2 != a5)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B0A94034(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  while (v5 < v4)
  {
    v8 = *(v6 + 4 * v5);
    v10 = *v3;
    v9 = v3[1];
    v11 = (v9 + 32);
    if (*v3)
    {
      sub_1B0E46C28();
      sub_1B0E46C88();
      result = sub_1B0E46CB8();
      v12 = 1 << *(v10 + 16);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v13)
      {
        goto LABEL_19;
      }

      v19 = v14 & result;
      sub_1B0E434F8();
      result = sub_1B0E43528();
      v7 = v19;
      if ((v15 & 1) == 0)
      {
        while (v11[result] != v8)
        {
          sub_1B0E43548();
          v7 = v19;
          result = sub_1B0E43528();
          if (v16)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v17 = *(v9 + 16);
      if (v17)
      {
        do
        {
          v18 = *v11++;
          if (v18 == v8)
          {
            goto LABEL_6;
          }
        }

        while (--v17);
      }

      v7 = 0;
    }

LABEL_5:
    result = sub_1B0BC9E7C(v8, v7);
LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1B0A941C4()
{
  result = qword_1EB6E3E80;
  if (!qword_1EB6E3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E80);
  }

  return result;
}

unint64_t sub_1B0A9421C()
{
  result = qword_1EB6E3E88;
  if (!qword_1EB6E3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimits(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimits(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionIDsGroupedByState.Connection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Environment.AppState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Environment.AppState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0A94524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B0A9456C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionLimitsAndUsage.ConnectionWithUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0A94690()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A946D4(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A94714()
{
  result = sub_1B03D0770(&unk_1F2710618);
  qword_1EB737D80 = result;
  return result;
}

uint64_t sub_1B0A9473C()
{
  v1 = *(v0 + 104);
  if (v1 < 2 || *(v0 + 122) == 1 && ((*(v0 + 120) & 1) != 0 || *(v0 + 112) > 2843))
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = 1;
  sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v4, &v3, &type metadata for UID, &v5);
  return v5;
}

void sub_1B0A947D0(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = sub_1B0A9473C();
  if (v16)
  {
    sub_1B0A96394(a1, v8, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a1, v5, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v17 = sub_1B0E43988();
    v18 = sub_1B0E45908();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 68159235;
      *(v19 + 4) = 2;
      *(v19 + 8) = 256;
      v21 = &v5[*(v3 + 20)];
      *(v19 + 10) = *v21;
      *(v19 + 11) = 2082;
      v22 = &v8[*(v3 + 20)];
      *(v19 + 13) = sub_1B0399D64(*(v22 + 1), *(v22 + 2), &v49);
      *(v19 + 21) = 1040;
      *(v19 + 23) = 2;
      *(v19 + 27) = 512;
      v23 = *(v21 + 12);
      sub_1B0A9269C(v5);
      *(v19 + 29) = v23;
      *(v19 + 31) = 2160;
      *(v19 + 33) = 0x786F626C69616DLL;
      *(v19 + 41) = 2085;
      v24 = *(v22 + 4);
      v25 = *(v22 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v8);
      v52 = v24;
      v53 = v25;
      v26 = sub_1B0E44BA8();
      v28 = sub_1B0399D64(v26, v27, &v49);

      *(v19 + 43) = v28;
      _os_log_impl(&dword_1B0389000, v17, v18, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Not querying server.", v19, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v20, -1, -1);
      MEMORY[0x1B272C230](v19, -1, -1);

      return;
    }

    sub_1B0A9269C(v5);

    v46 = v8;
    goto LABEL_11;
  }

  v29 = v15;
  sub_1B0A96394(a1, v14, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a1, v11, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A96130(v1, &v52);
  v30 = sub_1B0E43988();
  v31 = sub_1B0E45908();
  if (!os_log_type_enabled(v30, v31))
  {
    sub_1B0A96168(&v52);
    sub_1B0A9269C(v11);

    v46 = v14;
LABEL_11:
    sub_1B0A9269C(v46);
    return;
  }

  v32 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v51 = v48;
  *v32 = 68159747;
  *(v32 + 4) = 2;
  *(v32 + 8) = 256;
  v33 = &v11[*(v3 + 20)];
  *(v32 + 10) = *v33;
  *(v32 + 11) = 2082;
  v34 = &v14[*(v3 + 20)];
  *(v32 + 13) = sub_1B0399D64(*(v34 + 1), *(v34 + 2), &v51);
  *(v32 + 21) = 1040;
  *(v32 + 23) = 2;
  *(v32 + 27) = 512;
  v35 = *(v33 + 12);
  sub_1B0A9269C(v11);
  *(v32 + 29) = v35;
  *(v32 + 31) = 2160;
  *(v32 + 33) = 0x786F626C69616DLL;
  *(v32 + 41) = 2085;
  v36 = *(v34 + 4);
  v37 = *(v34 + 10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0A9269C(v14);
  v49 = v36;
  v50 = v37;
  v38 = sub_1B0E44BA8();
  v40 = sub_1B0399D64(v38, v39, &v51);

  *(v32 + 43) = v40;
  *(v32 + 51) = 2082;
  v49 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v41 = MessageIdentifierRange.debugDescription.getter();
  v43 = sub_1B0399D64(v41, v42, &v51);

  *(v32 + 53) = v43;
  *(v32 + 61) = 2048;
  if (v55)
  {
    v44 = 0;
  }

  else
  {
    v44 = v54;
  }

  sub_1B0A96168(&v52);
  *(v32 + 63) = v44;
  _os_log_impl(&dword_1B0389000, v30, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task querying in UIDs %{public}s. Server unread count %ld", v32, 0x47u);
  v45 = v48;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v45, -1, -1);
  MEMORY[0x1B272C230](v32, -1, -1);
}

uint64_t sub_1B0A94D30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *(v3 + 104);
  if (v5 < 2 || (v6 = *(v3 + 122), v6 == 1) && ((*(v3 + 120) & 1) != 0 || *(v3 + 112) > 2843) || (LODWORD(v23) = 1, v24 = v5 - 1, v9 = sub_1B041C1E8(), static MessageIdentifier.... infix(_:_:)(&v23, &v24, &type metadata for UID, &v25), v10 = v25, (sub_1B0B70898(a1, a2, v11) & 1) != 0))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA0, &unk_1B0EC2000);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }

  else
  {
    v14 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B0EC1E50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
    v16 = swift_allocBox();
    v18 = v17;
    v25 = v10;
    v23 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v9);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    *(v15 + 32) = v16 | 0xA000000000000000;
    *(v15 + 40) = xmmword_1B0EC1E60;
    *(v14 + 16) = v15;
    v20 = v14 | 0xC000000000000000;
    if (v6)
    {
      *a3 = v20;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      type metadata accessor for SearchReturnOption(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B0EC1E70;
      swift_storeEnumTagMultiPayload();
      *a3 = v20;
      a3[1] = v21;
    }

    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA0, &unk_1B0EC2000);
    return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
  }
}

uint64_t sub_1B0A95070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (sub_1B0A9E3DC(a2, a4, a5))
  {
    return 0xF000000000000007;
  }

  v10 = sub_1B0A9473C();
  if (v11)
  {
    v12 = swift_allocObject();
    v13 = *(v5 + 24);
    *(v12 + 16) = *(v5 + 16);
    *(v12 + 24) = v13;
    v14 = *(v5 + 104) == 1;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 32) = v14;
    *(v12 + 56) = 256;
LABEL_10:
    v9 = v12 | 0x3000000000000006;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v9;
  }

  v15 = v10;
  if (sub_1B0A98DEC(a1, a2, a3))
  {
    v16 = *(v5 + 136);
    if (v16)
    {
      v17 = 0;
      v15 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v17 = *(v5 + 128);
      v18 = *(v5 + 112);
      v19 = *(v5 + 120);
    }

    v12 = swift_allocObject();
    v20 = *(v5 + 24);
    *(v12 + 16) = *(v5 + 16);
    *(v12 + 24) = v20;
    *(v12 + 32) = v17;
    *(v12 + 40) = v15;
    *(v12 + 48) = v18;
    *(v12 + 56) = v19;
    *(v12 + 57) = v16;
    goto LABEL_10;
  }

  return 0xF000000000000007;
}

void sub_1B0A95188(void *a1, uint64_t a2)
{
  v94 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v91 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v91 - v25;
  sub_1B0B861D8(*(v2 + 40), *(v2 + 48), a1);
  v93 = *(v2 + 128);
  LOBYTE(a1) = *(v2 + 136);
  v27 = sub_1B0A9473C();
  if ((a1 & 1) == 0)
  {
    if (v28)
    {
      sub_1B0A96394(a2, v20, type metadata accessor for MailboxTaskLogger);
      sub_1B0A96394(a2, v17, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0A96130(v2, v98);
      v30 = sub_1B0E43988();
      v44 = sub_1B0E45908();
      if (os_log_type_enabled(v30, v44))
      {
        v32 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v97 = v45;
        *v32 = 68159747;
        *(v32 + 4) = 2;
        *(v32 + 8) = 256;
        v46 = v94;
        v47 = &v17[*(v94 + 20)];
        *(v32 + 10) = *v47;
        *(v32 + 11) = 2082;
        v48 = &v20[*(v46 + 20)];
        *(v32 + 13) = sub_1B0399D64(*(v48 + 1), *(v48 + 2), &v97);
        *(v32 + 21) = 1040;
        *(v32 + 23) = 2;
        *(v32 + 27) = 512;
        v49 = *(v47 + 12);
        sub_1B0A9269C(v17);
        *(v32 + 29) = v49;
        *(v32 + 31) = 2160;
        *(v32 + 33) = 0x786F626C69616DLL;
        *(v32 + 41) = 2085;
        v50 = *(v48 + 4);
        v51 = *(v48 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v20);
        v95 = v50;
        v96 = v51;
        v52 = sub_1B0E44BA8();
        v54 = sub_1B0399D64(v52, v53, &v97);

        *(v32 + 43) = v54;
        *(v32 + 51) = 2048;
        *(v32 + 53) = v93;
        *(v32 + 61) = 2048;
        if (v100)
        {
          v55 = 0;
        }

        else
        {
          v55 = v99;
        }

        sub_1B0A96168(v98);
        *(v32 + 63) = v55;
        _os_log_impl(&dword_1B0389000, v30, v44, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages. Server unread count %ld.", v32, 0x47u);
        swift_arrayDestroy();
        v43 = v45;
        goto LABEL_14;
      }

      sub_1B0A96168(v98);
      sub_1B0A9269C(v17);

      v90 = v20;
      goto LABEL_31;
    }

    v74 = v27;
    sub_1B0A96394(a2, v26, type metadata accessor for MailboxTaskLogger);
    sub_1B0A96394(a2, v23, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A96130(v2, v98);
    v57 = sub_1B0E43988();
    v75 = sub_1B0E45908();
    if (!os_log_type_enabled(v57, v75))
    {
      sub_1B0A96168(v98);
      sub_1B0A9269C(v23);

      v90 = v26;
      goto LABEL_31;
    }

    v59 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v97 = v76;
    *v59 = 68160003;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v77 = v94;
    v78 = &v23[*(v94 + 20)];
    *(v59 + 10) = *v78;
    *(v59 + 11) = 2082;
    v79 = &v26[*(v77 + 20)];
    *(v59 + 13) = sub_1B0399D64(*(v79 + 1), *(v79 + 2), &v97);
    *(v59 + 21) = 1040;
    *(v59 + 23) = 2;
    *(v59 + 27) = 512;
    v80 = *(v78 + 12);
    sub_1B0A9269C(v23);
    *(v59 + 29) = v80;
    *(v59 + 31) = 2160;
    *(v59 + 33) = 0x786F626C69616DLL;
    *(v59 + 41) = 2085;
    v81 = *(v79 + 4);
    v82 = *(v79 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v26);
    v95 = v81;
    v96 = v82;
    v83 = sub_1B0E44BA8();
    v85 = sub_1B0399D64(v83, v84, &v97);

    *(v59 + 43) = v85;
    *(v59 + 51) = 2048;
    *(v59 + 53) = v93;
    *(v59 + 61) = 2082;
    v95 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v86 = MessageIdentifierRange.debugDescription.getter();
    v88 = sub_1B0399D64(v86, v87, &v97);

    *(v59 + 63) = v88;
    *(v59 + 71) = 2048;
    if (v100)
    {
      v89 = 0;
    }

    else
    {
      v89 = v99;
    }

    sub_1B0A96168(v98);
    *(v59 + 73) = v89;
    _os_log_impl(&dword_1B0389000, v57, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld unread messages in UIDs %{public}s. Server unread count %ld.", v59, 0x51u);
    swift_arrayDestroy();
    v73 = v76;
LABEL_25:
    MEMORY[0x1B272C230](v73, -1, -1);
    MEMORY[0x1B272C230](v59, -1, -1);

    return;
  }

  if (v28)
  {
    v14 = v8;
    sub_1B0A96394(a2, v8, type metadata accessor for MailboxTaskLogger);
    v29 = v92;
    sub_1B0A96394(a2, v92, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A96130(v2, v98);
    v30 = sub_1B0E43988();
    v31 = sub_1B0E45908();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v97 = v33;
      *v32 = 68159491;
      *(v32 + 4) = 2;
      *(v32 + 8) = 256;
      v34 = v94;
      v35 = v29 + *(v94 + 20);
      *(v32 + 10) = *v35;
      *(v32 + 11) = 2082;
      v36 = &v14[*(v34 + 20)];
      *(v32 + 13) = sub_1B0399D64(*(v36 + 1), *(v36 + 2), &v97);
      *(v32 + 21) = 1040;
      *(v32 + 23) = 2;
      *(v32 + 27) = 512;
      v37 = *(v35 + 24);
      sub_1B0A9269C(v29);
      *(v32 + 29) = v37;
      *(v32 + 31) = 2160;
      *(v32 + 33) = 0x786F626C69616DLL;
      *(v32 + 41) = 2085;
      v38 = *(v36 + 4);
      LODWORD(v35) = *(v36 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v14);
      v95 = v38;
      v96 = v35;
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v97);

      *(v32 + 43) = v41;
      *(v32 + 51) = 2048;
      if (v100)
      {
        v42 = 0;
      }

      else
      {
        v42 = v99;
      }

      sub_1B0A96168(v98);
      *(v32 + 53) = v42;
      _os_log_impl(&dword_1B0389000, v30, v31, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not search for unread messages. Server unread count %ld.", v32, 0x3Du);
      swift_arrayDestroy();
      v43 = v33;
LABEL_14:
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v32, -1, -1);

      return;
    }

    sub_1B0A96168(v98);
    sub_1B0A9269C(v29);

    goto LABEL_29;
  }

  v56 = v27;
  sub_1B0A96394(a2, v14, type metadata accessor for MailboxTaskLogger);
  sub_1B0A96394(a2, v11, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0A96130(v2, v98);
  v57 = sub_1B0E43988();
  v58 = sub_1B0E45908();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v97 = v60;
    *v59 = 68159747;
    *(v59 + 4) = 2;
    *(v59 + 8) = 256;
    v61 = v94;
    v62 = &v11[*(v94 + 20)];
    *(v59 + 10) = *v62;
    *(v59 + 11) = 2082;
    v63 = &v14[*(v61 + 20)];
    *(v59 + 13) = sub_1B0399D64(*(v63 + 1), *(v63 + 2), &v97);
    *(v59 + 21) = 1040;
    *(v59 + 23) = 2;
    *(v59 + 27) = 512;
    v64 = *(v62 + 12);
    sub_1B0A9269C(v11);
    *(v59 + 29) = v64;
    *(v59 + 31) = 2160;
    *(v59 + 33) = 0x786F626C69616DLL;
    *(v59 + 41) = 2085;
    v65 = *(v63 + 4);
    LODWORD(v62) = *(v63 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v14);
    v95 = v65;
    v96 = v62;
    v66 = sub_1B0E44BA8();
    v68 = sub_1B0399D64(v66, v67, &v97);

    *(v59 + 43) = v68;
    *(v59 + 51) = 2082;
    v95 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v69 = MessageIdentifierRange.debugDescription.getter();
    v71 = sub_1B0399D64(v69, v70, &v97);

    *(v59 + 53) = v71;
    *(v59 + 61) = 2048;
    if (v100)
    {
      v72 = 0;
    }

    else
    {
      v72 = v99;
    }

    sub_1B0A96168(v98);
    *(v59 + 63) = v72;
    _os_log_impl(&dword_1B0389000, v57, v58, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Failed to find unread messages (UIDs %{public}s). Server unread count %ld.", v59, 0x47u);
    swift_arrayDestroy();
    v73 = v60;
    goto LABEL_25;
  }

  sub_1B0A96168(v98);
  sub_1B0A9269C(v11);

LABEL_29:
  v90 = v14;
LABEL_31:
  sub_1B0A9269C(v90);
}

double sub_1B0A95C78@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

double sub_1B0A95CCC()
{
  if (qword_1EB6DDA38 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0A95D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>, double a6@<D0>)
{
  result = sub_1B0A95070(a1, a2, a3, a4, a6);
  *a5 = result;
  return result;
}

void sub_1B0A95D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    *(v5 + 128) = 0;
    *(v5 + 136) = 1;
  }
}

uint64_t sub_1B0A95DA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v1);
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0A95E04()
{
  v1 = v0[1];
  MEMORY[0x1B2728DB0](*v0);
  return MEMORY[0x1B2728D70](v1);
}

uint64_t sub_1B0A95E40(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1B0E46C28();
  MEMORY[0x1B2728DB0](v2);
  MEMORY[0x1B2728D70](v3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0A95EC8()
{
  result = qword_1EB6E3E90;
  if (!qword_1EB6E3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3E90);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B0A95F50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1B0A95F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0A9600C()
{
  result = qword_1EB6DDA30;
  if (!qword_1EB6DDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA30);
  }

  return result;
}

unint64_t sub_1B0A96060()
{
  result = qword_1EB6DDA28;
  if (!qword_1EB6DDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA28);
  }

  return result;
}

unint64_t sub_1B0A960B4(uint64_t a1)
{
  result = sub_1B0A960DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A960DC()
{
  result = qword_1EB6DDA20;
  if (!qword_1EB6DDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDA20);
  }

  return result;
}

uint64_t sub_1B0A96198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  result = sub_1B0AD44DC(a2, a3, a4);
  if (result)
  {
    v13 = *(v4 + 122);
    v14 = &v11[*(v9 + 48)];
    *v11 = v13;
    sub_1B0A96394(a1, v14, type metadata accessor for UntaggedResponse);
    type metadata accessor for UntaggedResponse(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (v13 == 1)
    {
      if (EnumCaseMultiPayload == 11)
      {
        v16 = *(*v14 + 16);

        *(v4 + 128) = v16;
        *(v4 + 136) = 0;
        return result;
      }
    }

    else if (EnumCaseMultiPayload == 12)
    {
      v17 = v14[1];
      v22[0] = *v14;
      v22[1] = v17;
      v23 = v14[2];
      v18 = v4;
      v19 = ExtendedSearchResponse.count.getter(*&v23);
      v21 = v20;
      result = sub_1B0A96464(v22);
      *(v18 + 128) = v19;
      *(v18 + 136) = v21 & 1;
      return result;
    }

    return sub_1B0A963FC(v11);
  }

  return result;
}

int64_t sub_1B0A96304(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MailboxSyncState(0) + 76));
  result = static MonotonicTime.now()();
  v3 = v1[1];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v1[1] = v5;
    v7 = *v1;
    v8 = exp2((v5 - 1));
    result = MonotonicTime.init(seconds:since:)(v7, fmin(v8 + v8, 37.0));
    if (v6 >= result)
    {
      v1[1] = 0;
    }

    *v1 = v6;
  }

  return result;
}

uint64_t sub_1B0A96394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0A963FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathAttribute(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PathAttribute(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B0A965C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B0A96608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0A966F0(uint64_t a1)
{
  v71 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v71);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = *(v1 + 64);
  if (*(v20 + 16) == 1 && sub_1B0B86910(*(v1 + 64)))
  {
    v23 = v21;
    v70 = v22;

    sub_1B03B1B00(a1, v19, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v16, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();

    if (os_log_type_enabled(v24, v25))
    {
      v69 = v23;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v72 = v27;
      *v26 = 68158723;
      *(v26 + 4) = 2;
      *(v26 + 8) = 256;
      v28 = v71;
      v29 = *&v16[*(v71 + 20)];
      sub_1B03B1CA0(v16, type metadata accessor for Task.Logger);
      *(v26 + 10) = v29;
      *(v26 + 11) = 2082;
      v30 = &v19[*(v28 + 20)];
      v31 = v30[1];
      v32 = v30[2];
      v33 = v30[3];
      sub_1B0A982D8(*v30, v31, v32, v33);
      sub_1B03B1CA0(v19, type metadata accessor for Task.Logger);
      if (v33 < 0)
      {
      }

      v34 = sub_1B0399D64(v31, v32, &v72);

      *(v26 + 13) = v34;
      *(v26 + 21) = 2160;
      *(v26 + 23) = 0x786F626C69616DLL;
      *(v26 + 31) = 2085;
      v75 = v69;
      v76 = v70;
      v35 = sub_1B0E44BA8();
      v37 = sub_1B0399D64(v35, v36, &v72);

      *(v26 + 33) = v37;
      _os_log_impl(&dword_1B0389000, v24, v25, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v26, 0x29u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v27, -1, -1);
      v38 = v26;
LABEL_16:
      MEMORY[0x1B272C230](v38, -1, -1);

      return;
    }

    sub_1B03B1CA0(v16, type metadata accessor for Task.Logger);

    v68 = v19;
  }

  else if (sub_1B0B86910(v20))
  {
    v41 = v39;
    v42 = v40;

    sub_1B03B1B00(a1, v13, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v10, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A98D84(v1, &v75);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v43 = sub_1B0E45908();

    if (os_log_type_enabled(v24, v43))
    {
      v70 = v42;
      v44 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v74 = v69;
      *v44 = 68158979;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v45 = v71;
      v46 = *&v10[*(v71 + 20)];
      sub_1B03B1CA0(v10, type metadata accessor for Task.Logger);
      *(v44 + 10) = v46;
      *(v44 + 11) = 2082;
      v47 = &v13[*(v45 + 20)];
      v48 = v47[1];
      v49 = v47[2];
      v50 = v47[3];
      sub_1B0A982D8(*v47, v48, v49, v50);
      sub_1B03B1CA0(v13, type metadata accessor for Task.Logger);
      if (v50 < 0)
      {
      }

      v51 = sub_1B0399D64(v48, v49, &v74);

      *(v44 + 13) = v51;
      *(v44 + 21) = 2048;
      v52 = *(v77 + 16);
      sub_1B0A98DBC(&v75);
      *(v44 + 23) = v52;
      *(v44 + 31) = 2160;
      *(v44 + 33) = 0x786F626C69616DLL;
      *(v44 + 41) = 2085;
      v72 = v41;
      v73 = v70;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, &v74);

      *(v44 + 43) = v55;
      _os_log_impl(&dword_1B0389000, v24, v43, "[%.*hhx-%{public}s] Created task for %ld mailboxes, first: '%{sensitive,mask.mailbox}s'.", v44, 0x33u);
      v56 = v69;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v56, -1, -1);
      v38 = v44;
      goto LABEL_16;
    }

    sub_1B0A98DBC(&v75);
    sub_1B03B1CA0(v10, type metadata accessor for Task.Logger);

    v68 = v13;
  }

  else
  {
    sub_1B03B1B00(a1, v7, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a1, v4, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0A98D84(v1, &v75);
    v24 = sub_1B0E43988();
    v57 = sub_1B0E45908();
    if (os_log_type_enabled(v24, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v72 = v59;
      *v58 = 68158466;
      *(v58 + 4) = 2;
      *(v58 + 8) = 256;
      v60 = v71;
      v61 = *&v4[*(v71 + 20)];
      sub_1B03B1CA0(v4, type metadata accessor for Task.Logger);
      *(v58 + 10) = v61;
      *(v58 + 11) = 2082;
      v62 = &v7[*(v60 + 20)];
      v63 = v62[1];
      v64 = v62[2];
      v65 = v62[3];
      sub_1B0A982D8(*v62, v63, v64, v65);
      sub_1B03B1CA0(v7, type metadata accessor for Task.Logger);
      if (v65 < 0)
      {
      }

      v66 = sub_1B0399D64(v63, v64, &v72);

      *(v58 + 13) = v66;
      *(v58 + 21) = 2048;
      v67 = *(v77 + 16);
      sub_1B0A98DBC(&v75);
      *(v58 + 23) = v67;
      _os_log_impl(&dword_1B0389000, v24, v57, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v58, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x1B272C230](v59, -1, -1);
      v38 = v58;
      goto LABEL_16;
    }

    sub_1B0A98DBC(&v75);
    sub_1B03B1CA0(v4, type metadata accessor for Task.Logger);

    v68 = v7;
  }

  sub_1B03B1CA0(v68, type metadata accessor for Task.Logger);
}

void sub_1B0A96F04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 64);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(v8 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      swift_bridgeObjectRetain_n();
      if ((sub_1B0B70394(v17, v18, a2, a3, v19) & 1) == 0)
      {
        break;
      }

      v12 &= v12 - 1;
      swift_bridgeObjectRelease_n();
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
    v41 = a4 + *(v40 + 48);
    *a4 = v17;
    *(a4 + 8) = v18;
    *(a4 + 12) = 0;
    *v41 = v17;
    *(v41 + 8) = v18;
    type metadata accessor for ClientCommand(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(*(v40 - 8) + 56);
    v38 = a4;
    v39 = 0;
    v37 = v40;
LABEL_26:

    v36(v38, v39, 1, v37);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v42 = a4;

    v20 = 1 << *(v8 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v8 + 64);
    v23 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v24 = 0;
    while (v22)
    {
LABEL_20:
      v26 = *(v8 + 56) + ((v24 << 10) | (16 * __clz(__rbit64(v22))));
      v27 = *v26;
      v28 = *(v26 + 8);
      swift_bridgeObjectRetain_n();
      v29 = sub_1B0A98328(v27, v28, a1, a2, a3);

      if (v29)
      {
        v30 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = sub_1B0B70394(v30, v28 | 0x100000000, a2, a3, v31);

        if ((v32 & 1) == 0)
        {

          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
          v34 = v42 + *(v33 + 48);
          *v42 = v27;
          *(v42 + 8) = v28;
          *(v42 + 12) = 1;
          *v34 = 0;
          *(v34 + 8) = 0;
          *(v34 + 16) = v27;
          *(v34 + 24) = v28;
          *(v34 + 32) = MEMORY[0x1E69E7CC0];
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v33 - 8) + 56))(v42, 0, 1, v33);

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          return;
        }
      }

      v22 &= v22 - 1;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE8, &qword_1B0EC21B8);
        v36 = *(*(v35 - 8) + 56);
        v37 = v35;
        v38 = v42;
        v39 = 1;
        goto LABEL_26;
      }

      v22 = *(v9 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_20;
      }
    }

LABEL_31:
    __break(1u);
  }
}

void sub_1B0A97328(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v55 = a1;
  v14 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v54 = a2;
  if ((a2 & 0x100000000) != 0)
  {
    sub_1B0A9174C(a7, a3, a4, a5, a6);
    if (v7)
    {
    }
  }

  else
  {
    v51 = v18;
    sub_1B0A9174C(a7, a3, a4, a5, a6);
    if (v7)
    {
    }

    v53 = 0;
    v52 = v20;
    sub_1B03B1B00(a7, v20, type metadata accessor for Task.Logger);
    sub_1B03B1B00(a7, v16, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B04420D8(a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a6)
    {
      v21 = 20302;
      if (a6 != 1)
      {
        v21 = 4473154;
      }

      v50 = v21;
      if (a6 == 1)
      {
        v22 = 0xE200000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }
    }

    else
    {
      v22 = 0xE200000000000000;
      v50 = 19279;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B04420D8(a3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    j___s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = sub_1B0E43988();
    v24 = sub_1B0E45908();

    sub_1B0447F00(a3);

    j__swift_bridgeObjectRelease();
    if (os_log_type_enabled(v23, v24))
    {
      v46 = v24;
      v47 = v23;
      v48 = a4;
      v49 = a5;
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v45;
      *v25 = 68159235;
      *(v25 + 4) = 2;
      *(v25 + 8) = 256;
      v26 = v51;
      v27 = *&v16[*(v51 + 20)];
      sub_1B03B1CA0(v16, type metadata accessor for Task.Logger);
      *(v25 + 10) = v27;
      *(v25 + 11) = 2082;
      v28 = v52;
      v29 = &v52[*(v26 + 20)];
      v30 = v29[1];
      v32 = v29[2];
      v31 = v29[3];
      sub_1B0A982D8(*v29, v30, v32, v31);
      sub_1B03B1CA0(v28, type metadata accessor for Task.Logger);
      if (v31 < 0)
      {
      }

      v33 = sub_1B0399D64(v30, v32, &v58);

      *(v25 + 13) = v33;
      *(v25 + 21) = 2082;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = sub_1B0399D64(v50, v22, &v58);

      *(v25 + 23) = v34;
      *(v25 + 31) = 2082;

      v35 = ResponseText.debugDescription.getter(a3, v48, v49);
      v37 = v36;
      sub_1B0447F00(a3);

      v38 = sub_1B0399D64(v35, v37, &v58);

      *(v25 + 33) = v38;
      *(v25 + 41) = 2160;
      *(v25 + 43) = 0x786F626C69616DLL;
      *(v25 + 51) = 2085;
      v56 = v55;
      v57 = v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v39 = sub_1B0E44BA8();
      v41 = sub_1B0399D64(v39, v40, &v58);

      *(v25 + 53) = v41;
      v42 = v47;
      _os_log_impl(&dword_1B0389000, v47, v46, "[%.*hhx-%{public}s] Received '%{public}s %{public}s' for '%{sensitive,mask.mailbox}s'.", v25, 0x3Du);
      v43 = v45;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v43, -1, -1);
      MEMORY[0x1B272C230](v25, -1, -1);
    }

    else
    {
      sub_1B03B1CA0(v16, type metadata accessor for Task.Logger);

      sub_1B0447F00(a3);

      sub_1B03B1CA0(v52, type metadata accessor for Task.Logger);
    }
  }
}

uint64_t sub_1B0A977F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 64);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v6 + 48) + v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v6 + 56) + v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((sub_1B0A98328(v21, v20, a1, a2, a3) & 1) != 0 && (sub_1B0A98328(v19, v20 | 0x100000000, a1, a2, a3) & 1) != 0 && (sub_1B03B5DDC(v19, v20, *(v25 + 72)) & 1) == 0 && (sub_1B0A9D194(v16, v17, a2, a4, v22) & 1) == 0)
    {

      v23 = swift_allocObject();
      *(v23 + 16) = v16;
      *(v23 + 24) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return v16;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0A979E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a1;
  v75 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - v14;
  v16 = *(v3 + 64);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(v3 + 64) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v83 = *(v3 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = 0;
  *&v25 = 68158723;
  v74 = v25;
  v79 = v12;
  v80 = v3;
  v76 = a2;
  v73 = v6;
  v81 = v15;
  v82 = v9;
  v78 = v23;
  while (v22)
  {
LABEL_10:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(v83 + 56) + ((v24 << 10) | (16 * v27));
    v29 = *v28;
    v30 = *(v3 + 72);
    v31 = *v28;
    v84 = *(v28 + 8);
    if (sub_1B03B5DDC(v31, v84, v30))
    {
      sub_1B03B1B00(a2, v15, type metadata accessor for Task.Logger);
      sub_1B03B1B00(a2, v12, type metadata accessor for Task.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = v12;
      v33 = v15;
      v34 = sub_1B0E43988();
      v35 = sub_1B0E45908();

      if (os_log_type_enabled(v34, v35))
      {
        LODWORD(v72) = v35;
        v77 = v34;
        v36 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v87[0] = v71;
        *v36 = v74;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v37 = v33;
        v38 = v75;
        v39 = *(v32 + *(v75 + 20));
        sub_1B03B1CA0(v32, type metadata accessor for Task.Logger);
        *(v36 + 10) = v39;
        *(v36 + 11) = 2082;
        v40 = (v37 + *(v38 + 20));
        v41 = v40[1];
        v43 = v40[2];
        v42 = v40[3];
        sub_1B0A982D8(*v40, v41, v43, v42);
        sub_1B03B1CA0(v81, type metadata accessor for Task.Logger);
        if (v42 < 0)
        {
        }

        v44 = sub_1B0399D64(v41, v43, v87);

        *(v36 + 13) = v44;
        *(v36 + 21) = 2160;
        *(v36 + 23) = 0x786F626C69616DLL;
        *(v36 + 31) = 2085;
        v85 = v29;
        v86 = v84;
        v45 = sub_1B0E44BA8();
        v47 = sub_1B0399D64(v45, v46, v87);

        *(v36 + 33) = v47;
        v48 = v72;
        v49 = v77;
        v50 = v77;
        v51 = "[%.*hhx-%{public}s] Did create '%{sensitive,mask.mailbox}s'.";
        goto LABEL_19;
      }

      sub_1B03B1CA0(v32, type metadata accessor for Task.Logger);

      sub_1B03B1CA0(v33, type metadata accessor for Task.Logger);
      v15 = v33;
      v9 = v82;
      v12 = v32;
      v23 = v78;
    }

    else
    {
      sub_1B03B1B00(a2, v9, type metadata accessor for Task.Logger);
      v52 = v73;
      sub_1B03B1B00(a2, v73, type metadata accessor for Task.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v53 = sub_1B0E43988();
      v54 = sub_1B0E458E8();

      LODWORD(v77) = v54;
      if (os_log_type_enabled(v53, v54))
      {
        v72 = v53;
        v36 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v87[0] = v71;
        *v36 = v74;
        *(v36 + 4) = 2;
        *(v36 + 8) = 256;
        v55 = v9;
        v56 = v75;
        v57 = v52;
        v58 = *(v52 + *(v75 + 20));
        sub_1B03B1CA0(v57, type metadata accessor for Task.Logger);
        *(v36 + 10) = v58;
        *(v36 + 11) = 2082;
        v59 = &v55[*(v56 + 20)];
        v60 = v59[1];
        v62 = v59[2];
        v61 = v59[3];
        sub_1B0A982D8(*v59, v60, v62, v61);
        sub_1B03B1CA0(v82, type metadata accessor for Task.Logger);
        if (v61 < 0)
        {
        }

        v63 = sub_1B0399D64(v60, v62, v87);

        *(v36 + 13) = v63;
        *(v36 + 21) = 2160;
        *(v36 + 23) = 0x786F626C69616DLL;
        *(v36 + 31) = 2085;
        v85 = v29;
        v86 = v84;
        v64 = sub_1B0E44BA8();
        v66 = sub_1B0399D64(v64, v65, v87);

        *(v36 + 33) = v66;
        v48 = v77;
        v49 = v72;
        v50 = v72;
        v51 = "[%.*hhx-%{public}s] Failed to create '%{sensitive,mask.mailbox}s'.";
LABEL_19:
        _os_log_impl(&dword_1B0389000, v50, v48, v51, v36, 0x29u);
        v67 = v71;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v67, -1, -1);
        MEMORY[0x1B272C230](v36, -1, -1);

        v12 = v79;
        v3 = v80;
        a2 = v76;
        v15 = v81;
        v9 = v82;
        v23 = v78;
      }

      else
      {
        sub_1B03B1CA0(v52, type metadata accessor for Task.Logger);

        sub_1B03B1CA0(v9, type metadata accessor for Task.Logger);
        v12 = v79;
        v3 = v80;
        v15 = v81;
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v68 = v70;
      sub_1B0B6E6B8(v69);

      *(v68 + 137) = 1;
      return;
    }

    v22 = *(v18 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1B0A980A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B0A977F8(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  return result;
}

uint64_t sub_1B0A9812C()
{
  v1 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

unint64_t sub_1B0A98160()
{
  result = qword_1EB6E3EC0;
  if (!qword_1EB6E3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EC0);
  }

  return result;
}

unint64_t sub_1B0A981B8()
{
  result = qword_1EB6E3EC8;
  if (!qword_1EB6E3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3EC8);
  }

  return result;
}

unint64_t sub_1B0A9820C(uint64_t a1)
{
  result = sub_1B0A98234();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0A98234()
{
  result = qword_1EB6E3ED0;
  if (!qword_1EB6E3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E3ED0);
  }

  return result;
}

BOOL sub_1B0A98288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0 || a2 != a4)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a2 != a4)
  {
    return 0;
  }

  return (sub_1B04520BC(a1, a3) & 1) != 0;
}

double sub_1B0A982D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0A98328(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v33 = a3;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  result = sub_1B0B70260(a1, a2 | ((HIDWORD(a2) & 1) << 32), a5);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    ++v19;
    result = v37;
    if (v19 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v19);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_1B03B1B00(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v17, v14, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v14, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v14, type metadata accessor for ClientCommand);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      v28 = v39;
      sub_1B03B1B00(v26, v39, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v28, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v9, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v9 + 2);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v9[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v21)
        {
          goto LABEL_3;
        }
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0A986FC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  result = sub_1B0B6FE60(a1 & 1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_1B03B1B00(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_1B03B1B00(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

uint64_t sub_1B0A98AC4(uint64_t a1)
{
  v3 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03B1B00(a1, v5, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    return sub_1B03B1CA0(v5, type metadata accessor for UntaggedResponse);
  }

  v6 = 0;
  v7 = *(v5 + 1);
  v8 = *(v5 + 4);
  result = *(v5 + 5);
  v10 = *(v1 + 64);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  while (1)
  {
LABEL_5:
    if (!v13)
    {
      while (1)
      {
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v14 >= ((v11 + 63) >> 6))
        {
        }

        v13 = *(v10 + 64 + 8 * v14);
        ++v6;
        if (v13)
        {
          v6 = v14;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_10:
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v16 = (*(v10 + 56) + ((v6 << 10) | (16 * v15)));
    if ((v16[2] | (v16[2] << 32)) == (v8 | (v8 << 32)))
    {
      v17 = *v16;
      v18 = *(*v16 + 16);
      if (v18 == *(v7 + 16))
      {
        break;
      }
    }
  }

  if (v18)
  {
    v19 = v17 == v7;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
LABEL_20:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB2E0(v22, v7, v8);
  }

  v20 = (v17 + 32);
  v21 = (v7 + 32);
  while (v18)
  {
    if (*v20 != *v21)
    {
      goto LABEL_5;
    }

    ++v20;
    ++v21;
    if (!--v18)
    {
      goto LABEL_20;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B0A98D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0A98E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  result = sub_1B0B708B0(a1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_1B03B1B00(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_1B03B1B00(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

uint64_t sub_1B0A991E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, double))
{
  v38 = a2;
  v33 = a1;
  v40 = type metadata accessor for TaskHistory.Running(0);
  v32 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  result = a4(a3, v15);
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_19:
    v30 = 0;
    goto LABEL_20;
  }

  v19 = 0;
  v34 = result + 32;
  v37 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v39 = v19;
    v20 = *(v38 + 16);
    if (v20)
    {
      break;
    }

LABEL_3:
    v19 = v39 + 1;
    result = v37;
    if (v39 + 1 == v36)
    {
      goto LABEL_19;
    }
  }

  v21 = *(v34 + 4 * v39);
  v22 = v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v23 = *(v35 + 72);
  while (1)
  {
    sub_1B03B1B00(v22, v17, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v17, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v22 += v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  v24 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v13, type metadata accessor for ClientCommand);
  if (v24 != v21)
  {
    goto LABEL_8;
  }

  v25 = *(v33 + 16);
  if (v25)
  {
    v26 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v27 = *(v32 + 72);
    do
    {
      sub_1B03B1B00(v26, v10, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v28 = *(v7 + 2);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v7[*(v29 + 64)], type metadata accessor for ClientCommand);
        if (v28 == v21)
        {
          goto LABEL_3;
        }
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v30 = 1;
LABEL_20:

  return v30;
}

uint64_t sub_1B0A995C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v34 = a3;
  v41 = type metadata accessor for TaskHistory.Running(0);
  v33 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v36 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  result = sub_1B0B71364(a1, a2, a5);
  v37 = *(result + 16);
  if (!v37)
  {
LABEL_19:
    v31 = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v35 = result + 32;
  v38 = result;
  while (1)
  {
    if (v20 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v40 = v20;
    v21 = *(v39 + 16);
    if (v21)
    {
      break;
    }

LABEL_3:
    v20 = v40 + 1;
    result = v38;
    if (v40 + 1 == v37)
    {
      goto LABEL_19;
    }
  }

  v22 = *(v35 + 4 * v40);
  v23 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v24 = *(v36 + 72);
  while (1)
  {
    sub_1B03B1B00(v23, v18, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v18, v15, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v15, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v23 += v24;
    if (!--v21)
    {
      goto LABEL_3;
    }
  }

  v25 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v15, type metadata accessor for ClientCommand);
  if (v25 != v22)
  {
    goto LABEL_8;
  }

  v26 = *(v34 + 16);
  if (v26)
  {
    v27 = v34 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v28 = *(v33 + 72);
    do
    {
      sub_1B03B1B00(v27, v12, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v12, v9, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v9, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v29 = *(v9 + 2);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v9[*(v30 + 64)], type metadata accessor for ClientCommand);
        if (v29 == v22)
        {
          goto LABEL_3;
        }
      }

      v27 += v28;
      --v26;
    }

    while (v26);
  }

  v31 = 1;
LABEL_20:

  return v31;
}

uint64_t sub_1B0A99994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v32 = a2;
  v39 = type metadata accessor for TaskHistory.Running(0);
  v31 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for TaskHistory.Previous(0);
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  result = sub_1B0B716F0(a1, a4);
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v18 = 0;
  v33 = result + 32;
  v36 = result;
  while (1)
  {
    if (v18 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v38 = v18;
    v19 = *(v37 + 16);
    if (v19)
    {
      break;
    }

LABEL_3:
    v18 = v38 + 1;
    result = v36;
    if (v38 + 1 == v35)
    {
      goto LABEL_19;
    }
  }

  v20 = *(v33 + 4 * v38);
  v21 = v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v22 = *(v34 + 72);
  while (1)
  {
    sub_1B03B1B00(v21, v16, type metadata accessor for TaskHistory.Previous);
    sub_1B0A98D1C(v16, v13, type metadata accessor for TaskHistory.Previous);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B03B1CA0(v13, type metadata accessor for TaskHistory.Previous);
LABEL_8:
    v21 += v22;
    if (!--v19)
    {
      goto LABEL_3;
    }
  }

  v23 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30) + 48)];
  sub_1B03B1CA0(v13, type metadata accessor for ClientCommand);
  if (v23 != v20)
  {
    goto LABEL_8;
  }

  v24 = *(v32 + 16);
  if (v24)
  {
    v25 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v26 = *(v31 + 72);
    do
    {
      sub_1B03B1B00(v25, v10, type metadata accessor for TaskHistory.Running);
      sub_1B0A98D1C(v10, v7, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B03B1CA0(v7, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v27 = *(v7 + 2);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B03B1CA0(&v7[*(v28 + 64)], type metadata accessor for ClientCommand);
        if (v27 == v20)
        {
          goto LABEL_3;
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v29 = 1;
LABEL_20:

  return v29;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_1B0A99D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
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

uint64_t sub_1B0A99DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

void sub_1B0A99E38(char *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(a2 + 48) + ((v9 << 10) | (16 * v10));
      sub_1B0A9ACF4(*v11, *(v11 + 8));
      if (v12)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v25 = v13;
    v26 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1B0AFF450(0, *(a1 + 2) + 1, 1, a1);
    }

    v16 = *(a1 + 2);
    v15 = *(a1 + 3);
    v17 = v16 + 1;
    v18 = v26;
    v19 = v25;
    if (v16 >= v15 >> 1)
    {
      v24 = v16 + 1;
      v21 = a1;
      v22 = *(a1 + 2);
      v23 = sub_1B0AFF450((v15 > 1), v16 + 1, 1, v21);
      v16 = v22;
      v17 = v24;
      v19 = v25;
      a1 = v23;
      v18 = v26;
    }

    *(a1 + 2) = v17;
    v20 = &a1[16 * v16];
    *(v20 + 4) = v18;
    *(v20 + 5) = v19;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
}

BOOL sub_1B0A9A02C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && a1[1] == a2[1] && (sub_1B04520BC(v4, v5) & 1) != 0;
}

void *sub_1B0A9A08C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B0BAB9A0(MEMORY[0x1E69E7CC0]);
  a2[7] = v4;
  v30 = a2;
  a2[9] = MEMORY[0x1E69E7CD0];
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = 0;
  while (v7)
  {
LABEL_11:
    v12 = *(a1 + 56) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
    v13 = *v12;
    v14 = *(v12 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1B03AB888(v13, v14);
    v18 = v4[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v4[3] < v21)
    {
      sub_1B0B2FCCC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B03AB888(v13, v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_1B0B8D68C();
    v16 = v27;
    if (v22)
    {
LABEL_4:
      v10 = v16;

      *(v4[7] + v10) = 0;
      goto LABEL_5;
    }

LABEL_17:
    v4[(v16 >> 6) + 8] |= 1 << v16;
    v24 = v4[6] + 16 * v16;
    *v24 = v13;
    *(v24 + 8) = v14;
    *(v4[7] + v16) = 0;
    v25 = v4[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v4[2] = v26;
LABEL_5:
    v7 &= v7 - 1;
    v30[7] = v4;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1B0A9A2FC(a1);
      v30[6] = v28;
      v30[8] = a1;
      *v30 = &type metadata for DeleteMailboxes;
      return sub_1B0E461E8();
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void sub_1B0A9A2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B0B09EE4(0, v1, 0);
    v3 = v2 + 64;
    v4 = sub_1B0E460B8();
    v5 = 0;
    v6 = *(v2 + 36);
    v24 = v2 + 72;
    v25 = v1;
    v26 = v6;
    v27 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v28 = v5;
      v9 = (*(v2 + 48) + 16 * v4);
      v10 = *v9;
      v30 = v9[1];
      v11 = *(v2 + 56) + 16 * v4;
      v12 = v2;
      v13 = *v11;
      v29 = *(v11 + 8);
      v14 = *(v31 + 16);
      v15 = *(v31 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v14 >= v15 >> 1)
      {
        sub_1B0B09EE4((v15 > 1), v14 + 1, 1);
      }

      *(v31 + 16) = v14 + 1;
      v16 = v31 + 32 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v30;
      *(v16 + 48) = v13;
      *(v16 + 56) = v29;
      v7 = 1 << *(v12 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v2 = v12;
      v3 = v27;
      v17 = *(v27 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v26;
      if (v26 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1B0425168(v4, v26, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1B0425168(v4, v26, 0);
      }

LABEL_4:
      v5 = v28 + 1;
      v4 = v7;
      if (v28 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1B0A9A570(uint64_t a1)
{
  v3 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = *(v1 + 56);
  if (*(v15 + 16) == 1 && (sub_1B0B86998(v15), v16))
  {
    v18 = v16;
    v19 = v17;
    sub_1B03B1B68(a1, v14, type metadata accessor for Task.Logger);
    sub_1B03B1B68(a1, v11, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = sub_1B0E43988();
    v21 = sub_1B0E45908();

    if (os_log_type_enabled(v20, v21))
    {
      v47 = v19;
      v22 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v22 = 68158723;
      *(v22 + 4) = 2;
      *(v22 + 8) = 256;
      v23 = *&v11[*(v3 + 20)];
      sub_1B03B1D00(v11, type metadata accessor for Task.Logger);
      *(v22 + 10) = v23;
      *(v22 + 11) = 2082;
      v24 = &v14[*(v3 + 20)];
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      sub_1B0A982D8(*v24, v25, v26, v27);
      sub_1B03B1D00(v14, type metadata accessor for Task.Logger);
      if (v27 < 0)
      {
      }

      v28 = sub_1B0399D64(v25, v26, &v48);

      *(v22 + 13) = v28;
      *(v22 + 21) = 2160;
      *(v22 + 23) = 0x786F626C69616DLL;
      *(v22 + 31) = 2085;
      v49 = v18;
      v50 = v47;
      v29 = sub_1B0E44BA8();
      v31 = sub_1B0399D64(v29, v30, &v48);

      *(v22 + 33) = v31;
      _os_log_impl(&dword_1B0389000, v20, v21, "[%.*hhx-%{public}s] Created task for '%{sensitive,mask.mailbox}s'", v22, 0x29u);
      v32 = v46;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v32, -1, -1);
      v33 = v22;
LABEL_11:
      MEMORY[0x1B272C230](v33, -1, -1);

      return;
    }

    sub_1B03B1D00(v11, type metadata accessor for Task.Logger);

    v44 = v14;
  }

  else
  {
    sub_1B03B1B68(a1, v8, type metadata accessor for Task.Logger);
    sub_1B03B1B68(a1, v5, type metadata accessor for Task.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0AA0088(v1, &v49);
    v20 = sub_1B0E43988();
    v34 = sub_1B0E45908();
    if (os_log_type_enabled(v20, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 68158466;
      *(v35 + 4) = 2;
      *(v35 + 8) = 256;
      v37 = *&v5[*(v3 + 20)];
      sub_1B03B1D00(v5, type metadata accessor for Task.Logger);
      *(v35 + 10) = v37;
      *(v35 + 11) = 2082;
      v38 = &v8[*(v3 + 20)];
      v39 = v38[1];
      v40 = v38[2];
      v41 = v38[3];
      sub_1B0A982D8(*v38, v39, v40, v41);
      sub_1B03B1D00(v8, type metadata accessor for Task.Logger);
      if (v41 < 0)
      {
      }

      v42 = sub_1B0399D64(v39, v40, &v48);

      *(v35 + 13) = v42;
      *(v35 + 21) = 2048;
      v43 = *(v51 + 16);
      sub_1B0AA00C0(&v49);
      *(v35 + 23) = v43;
      _os_log_impl(&dword_1B0389000, v20, v34, "[%.*hhx-%{public}s] Created task for %ld mailboxes.", v35, 0x1Fu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1B272C230](v36, -1, -1);
      v33 = v35;
      goto LABEL_11;
    }

    sub_1B0AA00C0(&v49);
    sub_1B03B1D00(v5, type metadata accessor for Task.Logger);

    v44 = v8;
  }

  sub_1B03B1D00(v44, type metadata accessor for Task.Logger);
}

void sub_1B0A9AAAC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 72);
  if (*(v6 + 16))
  {
    v7 = sub_1B0E460B8();
    v8 = sub_1B0B6FBCC(v7, *(v6 + 36));
    v10 = v9;
    *v5 = v8;
    *(v5 + 2) = v9;
    swift_storeEnumTagMultiPayload();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3F10, &qword_1B0EC23D0);
    v12 = *(v11 + 48);
    *a1 = v8;
    *(a1 + 8) = v10;
    sub_1B0AA0164(v5, a1 + v12, type metadata accessor for ClientCommand);
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB6E3F10, &qword_1B0EC23D0);
    v14 = *(*(v13 - 8) + 56);

    v14(a1, 1, 1, v13);
  }
}

void sub_1B0A9AC70()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = sub_1B0E460B8();
    sub_1B0A9C83C(&v3, v2, *(v1 + 36));
  }
}

void sub_1B0A9ACF4(uint64_t a1, unsigned int a2)
{
  v3 = *(v2 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (1)
    {
      v7 = v6 + 32 * v5;
      if ((*(v7 + 24) | (*(v7 + 24) << 32)) == (a2 | (a2 << 32)))
      {
        v8 = *(v7 + 16);
        v9 = *(v8 + 16);
        if (v9 == *(a1 + 16))
        {
          break;
        }
      }

LABEL_3:
      if (++v5 == v4)
      {
        return;
      }
    }

    if (v9)
    {
      v10 = v8 == a1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
LABEL_14:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v11 = (v8 + 32);
      v12 = (a1 + 32);
      while (v9)
      {
        if (*v11 != *v12)
        {
          goto LABEL_3;
        }

        ++v11;
        ++v12;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B0A9ADBC(uint64_t a1, uint64_t a2)
{
  v110 = a1;
  v114 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v114);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v105 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v105 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v105 - v19;
  v20 = *(v2 + 56);
  v21 = *(v20 + 64);
  v121 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = v14;
  v27 = 0;
  *&v28 = 68158723;
  v111 = v28;
  v116 = v8;
  v117 = v20;
  v115 = a2;
  v112 = v11;
  v113 = v5;
  v120 = v14;
  v106 = v17;
  v119 = v25;
  while (v24)
  {
    v29 = v122;
LABEL_12:
    v31 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v32 = v31 | (v27 << 6);
    v33 = *(v20 + 56);
    v34 = *(v20 + 48) + 16 * v32;
    v123 = *v34;
    v17 = *(v34 + 8);
    v35 = *(v33 + v32);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
LABEL_19:
        sub_1B03B1B68(a2, v8, type metadata accessor for Task.Logger);
        sub_1B03B1B68(a2, v5, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v54 = a2;
        v55 = sub_1B0E43988();
        v56 = sub_1B0E45908();

        if (os_log_type_enabled(v55, v56))
        {
          LODWORD(v108) = v56;
          v109 = v55;
          v118 = v17;
          v39 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v126[0] = v107;
          *v39 = v111;
          *(v39 + 4) = 2;
          *(v39 + 8) = 256;
          v57 = v114;
          v58 = *&v5[*(v114 + 20)];
          sub_1B03B1D00(v5, type metadata accessor for Task.Logger);
          *(v39 + 10) = v58;
          *(v39 + 11) = 2082;
          v59 = &v8[*(v57 + 20)];
          v60 = v59[1];
          v61 = v59[2];
          v17 = v59[3];
          sub_1B0A982D8(*v59, v60, v61, v17);
          sub_1B03B1D00(v8, type metadata accessor for Task.Logger);
          if (v17 < 0)
          {
          }

          v62 = sub_1B0399D64(v60, v61, v126);

          *(v39 + 13) = v62;
          *(v39 + 21) = 2160;
          *(v39 + 23) = 0x786F626C69616DLL;
          *(v39 + 31) = 2085;
          v124 = v123;
          LODWORD(v125) = v118;
          v63 = sub_1B0E44BA8();
          v65 = sub_1B0399D64(v63, v64, v126);

          *(v39 + 33) = v65;
          v52 = v109;
          _os_log_impl(&dword_1B0389000, v109, v108, "[%.*hhx-%{public}s] Failed to delete '%{sensitive,mask.mailbox}s'.", v39, 0x29u);
          v66 = v107;
          swift_arrayDestroy();
          v53 = v66;
          goto LABEL_27;
        }

        sub_1B03B1D00(v5, type metadata accessor for Task.Logger);

        sub_1B03B1D00(v8, type metadata accessor for Task.Logger);
        v25 = v119;
        v26 = v120;
        a2 = v54;
        v20 = v117;
      }

      else
      {
        sub_1B03B1B68(a2, v26, type metadata accessor for Task.Logger);
        v67 = v11;
        sub_1B03B1B68(a2, v11, type metadata accessor for Task.Logger);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v68 = sub_1B0E43988();
        v69 = sub_1B0E45908();

        if (os_log_type_enabled(v68, v69))
        {
          LODWORD(v108) = v69;
          v109 = v68;
          v118 = v17;
          v39 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v126[0] = v70;
          *v39 = v111;
          *(v39 + 4) = 2;
          *(v39 + 8) = 256;
          v71 = v120;
          v72 = v114;
          v73 = *(v67 + *(v114 + 20));
          sub_1B03B1D00(v67, type metadata accessor for Task.Logger);
          *(v39 + 10) = v73;
          *(v39 + 11) = 2082;
          v74 = (v71 + *(v72 + 20));
          v75 = v74[1];
          v76 = v74[2];
          v17 = v74[3];
          sub_1B0A982D8(*v74, v75, v76, v17);
          sub_1B03B1D00(v71, type metadata accessor for Task.Logger);
          if (v17 < 0)
          {
          }

          v77 = sub_1B0399D64(v75, v76, v126);

          *(v39 + 13) = v77;
          *(v39 + 21) = 2160;
          *(v39 + 23) = 0x786F626C69616DLL;
          *(v39 + 31) = 2085;
          v124 = v123;
          LODWORD(v125) = v118;
          v78 = sub_1B0E44BA8();
          v80 = sub_1B0399D64(v78, v79, v126);

          *(v39 + 33) = v80;
          v52 = v109;
          _os_log_impl(&dword_1B0389000, v109, v108, "[%.*hhx-%{public}s] Did delete '%{sensitive,mask.mailbox}s'.", v39, 0x29u);
          swift_arrayDestroy();
          v53 = v70;
LABEL_27:
          MEMORY[0x1B272C230](v53, -1, -1);
          MEMORY[0x1B272C230](v39, -1, -1);

          v8 = v116;
          v20 = v117;
          a2 = v115;
          v11 = v112;
          v5 = v113;
          v25 = v119;
          v26 = v120;
        }

        else
        {
          sub_1B03B1D00(v67, type metadata accessor for Task.Logger);

          v81 = v120;
          sub_1B03B1D00(v120, type metadata accessor for Task.Logger);
          v25 = v119;
          v11 = v67;
          v8 = v116;
          v26 = v81;
        }
      }
    }

    else
    {
      if (!v35)
      {
        goto LABEL_19;
      }

      v118 = *(v34 + 8);
      sub_1B03B1B68(a2, v29, type metadata accessor for Task.Logger);
      v36 = v106;
      sub_1B03B1B68(a2, v106, type metadata accessor for Task.Logger);
      v17 = v123;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0E43988();
      v38 = sub_1B0E45908();

      if (os_log_type_enabled(v37, v38))
      {
        LODWORD(v109) = v38;
        v108 = v37;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v126[0] = v40;
        *v39 = v111;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v41 = v114;
        v42 = *(v36 + *(v114 + 20));
        v17 = type metadata accessor for Task.Logger;
        sub_1B03B1D00(v36, type metadata accessor for Task.Logger);
        *(v39 + 10) = v42;
        *(v39 + 11) = 2082;
        v43 = v122;
        v44 = (v122 + *(v41 + 20));
        v45 = v44[1];
        v46 = v44[2];
        v47 = v44[3];
        sub_1B0A982D8(*v44, v45, v46, v47);
        sub_1B03B1D00(v43, type metadata accessor for Task.Logger);
        if (v47 < 0)
        {
        }

        v48 = sub_1B0399D64(v45, v46, v126);

        *(v39 + 13) = v48;
        *(v39 + 21) = 2160;
        *(v39 + 23) = 0x786F626C69616DLL;
        *(v39 + 31) = 2085;
        v124 = v123;
        LODWORD(v125) = v118;
        v49 = sub_1B0E44BA8();
        v51 = sub_1B0399D64(v49, v50, v126);

        *(v39 + 33) = v51;
        v52 = v108;
        _os_log_impl(&dword_1B0389000, v108, v109, "[%.*hhx-%{public}s] Skipped deleting '%{sensitive,mask.mailbox}s' because it's in use.", v39, 0x29u);
        swift_arrayDestroy();
        v53 = v40;
        goto LABEL_27;
      }

      sub_1B03B1D00(v36, type metadata accessor for Task.Logger);

      sub_1B03B1D00(v122, type metadata accessor for Task.Logger);
      v25 = v119;
      v26 = v120;
      v8 = v116;
    }
  }

  v29 = v122;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v30 >= v25)
    {
      break;
    }

    v24 = *(v121 + 8 * v30);
    ++v27;
    if (v24)
    {
      v27 = v30;
      goto LABEL_12;
    }
  }

  v82 = sub_1B0A9C924(v20, sub_1B0A9CB80, sub_1B0A9CB80);
  v83 = v82;
  v84 = v82[2];
  if (!v84)
  {
    goto LABEL_33;
  }

  v29 = sub_1B0B890E4(v82[2], 0);
  v85 = sub_1B0B8C230(&v124, v29 + 32, v84, v83);
  sub_1B03D91F8(v124);
  v86 = v85 == v84;
  v17 = v110;
  if (!v86)
  {
    __break(1u);
LABEL_33:

    v29 = MEMORY[0x1E69E7CC0];
    v17 = v110;
  }

  sub_1B0A9BA24(v29);
  v88 = (v17 + 176);
  v87 = *(v17 + 176);
  if (*(v17 + 192) != 1)
  {

    goto LABEL_46;
  }

  v90 = *(v17 + 184);
  v124 = *(v17 + 168);
  v89 = v124;

  sub_1B03B9A2C(v89, v87, v90, 1);
  v17 = sub_1B0A9DBD4(&v124, v29);

  v91 = v124;
  v92 = *(v124 + 16);
  if (v17 > v92)
  {
    goto LABEL_63;
  }

  if (v17 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    result = sub_1B0AFF420(0, *(v29 + 16) + 1, 1, v29);
    v29 = result;
    goto LABEL_57;
  }

  if (__OFADD__(v92, v17 - v92))
  {
    goto LABEL_65;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v17 > *(v91 + 3) >> 1)
  {
    if (v92 <= v17)
    {
      v94 = v17;
    }

    else
    {
      v94 = v92;
    }

    v91 = sub_1B03D9FC4(isUniquelyReferenced_nonNull_native, v94, 1, v91);
    v124 = v91;
  }

  sub_1B0BAB6F0(v17, v92, 0);

  v29 = 1;
  result = sub_1B03BB638(v89, v87, v90, 1);
  v17 = v110;
  *(v110 + 168) = v91;
  *v88 = 0;
  v88[1] = 0;
  *(v17 + 192) = 1;
  v20 = v117;
LABEL_46:
  v96 = 0;
  *(v17 + 137) = 1;
  v97 = 1 << *(v20 + 32);
  v98 = -1;
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  v99 = v98 & *(v20 + 64);
  v100 = (v97 + 63) >> 6;
  do
  {
    if (!v99)
    {
      while (1)
      {
        v101 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_62;
        }

        if (v101 >= v100)
        {
          return result;
        }

        v99 = *(v121 + 8 * v101);
        ++v96;
        if (v99)
        {
          v96 = v101;
          goto LABEL_55;
        }
      }
    }

    v101 = v96;
LABEL_55:
    v102 = __clz(__rbit64(v99));
    v99 &= v99 - 1;
  }

  while (*(*(v20 + 56) + (v102 | (v101 << 6))) != 1);
  v29 = *(v17 + 248);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v104 = *(v29 + 16);
  v103 = *(v29 + 24);
  if (v104 >= v103 >> 1)
  {
    result = sub_1B0AFF420((v103 > 1), v104 + 1, 1, v29);
    v29 = result;
  }

  *(v29 + 16) = v104 + 1;
  *(v29 + v104 + 32) = 3;
  *(v17 + 248) = v29;
  return result;
}

unint64_t sub_1B0A9BA24(unint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 40);
    do
    {
      if (*(v3 + 48))
      {
        result = sub_1B03AB888(*(v4 - 1), *v4);
        if (v5)
        {
          v6 = result;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v8 = *(v3 + 48);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B8D330();
          }

          result = sub_1B0B900C4(v6, v8);
          *(v3 + 48) = v8;
        }
      }

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B0A9BAF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0A9D5CC(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

void sub_1B0A9BB2C(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  sub_1B0A9174C(a6, a2, a3, a4, a5);
  if (v7)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v6 + 56);
  sub_1B0A9C100(3, v8, v9, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v11;
}

unint64_t sub_1B0A9BBD4(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1B0A9BC3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1B0A9BC84(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  result = sub_1B0AA0164(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MoveAndCopyMessages.CommandID);
  *(a4[7] + a1) = a3 & 1;
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

unint64_t sub_1B0A9BD3C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_1B0A9BD80(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
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

unint64_t sub_1B0A9BDC4(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
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

uint64_t sub_1B0A9BE10(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6] + 16 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B074BA2C(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_1B0A9BEB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B074BA2C(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

void sub_1B0A9BF5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B03AB888(a2, a3);
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
      sub_1B0B2F69C(v16, a4 & 1);
      v11 = sub_1B03AB888(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B0E46BA8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B0B8D330();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    sub_1B0A9FCD8(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = v21[6] + 16 * v11;
  *v23 = a2;
  *(v23 + 8) = a3;
  v24 = v21[7] + 72 * v11;
  *v24 = *a1;
  v25 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 48);
  *(v24 + 64) = *(a1 + 64);
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

void sub_1B0A9C100(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B03AB888(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B0B2FCCC(v16, a4 & 1);
      v11 = sub_1B03AB888(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1B0E46BA8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B0B8D68C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = v21[6] + 16 * v11;
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v21[7] + v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B0A9C268(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B0ADFFE8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1B0B8DA00();
    result = v19;
    goto LABEL_8;
  }

  sub_1B0B30620(v16, a4 & 1);
  result = sub_1B0ADFFE8(a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = v21[7] + 12 * result;
      *v22 = a1;
      *(v22 + 8) = a2 & 1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = v21[7] + 12 * result;
    *v23 = a1;
    *(v23 + 8) = a2 & 1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

unint64_t sub_1B0A9C3B8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1B03FE284(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1B0B30248(v14, a3 & 1);
      result = sub_1B03FE284(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1B0B8D810();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 4 * result) = a2;
    v21 = v19[7] + 184 * result;
    v22 = *a1;
    v23 = a1[1];
    v24 = a1[3];
    *(v21 + 32) = a1[2];
    *(v21 + 48) = v24;
    *v21 = v22;
    *(v21 + 16) = v23;
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[7];
    *(v21 + 96) = a1[6];
    *(v21 + 112) = v27;
    *(v21 + 64) = v25;
    *(v21 + 80) = v26;
    v28 = a1[8];
    v29 = a1[9];
    v30 = a1[10];
    *(v21 + 176) = *(a1 + 176);
    *(v21 + 144) = v29;
    *(v21 + 160) = v30;
    *(v21 + 128) = v28;
    v31 = v19[2];
    v13 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v13)
    {
      v19[2] = v32;
      return result;
    }

    goto LABEL_15;
  }

  v20 = (v19[7] + 184 * result);

  return sub_1B075DEC8(a1, v20);
}

unint64_t sub_1B0A9C540(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1B03FE284(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B0B31A64(v18, a5 & 1);
      result = sub_1B03FE284(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1B0B8E628();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 4 * result) = a4;
    v25 = v23[7] + 24 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3 & 1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * result;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3 & 1;
}

uint64_t sub_1B0A9C6C4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1B0AE0058(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + v13) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = sub_1B0B8E7A4();
    goto LABEL_7;
  }

  sub_1B0B31D20(result, a3 & 1);
  result = sub_1B0AE0058(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_14:
    result = sub_1B0E46BA8();
    __break(1u);
    return result;
  }

  v13 = result;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B03B1B68(a2, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0A9BC84(v13, v10, a1 & 1, v19);
}

void sub_1B0A9C83C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B0B8D048();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(v9 + 56) + 16 * a2;
    v11 = *v10;
    LODWORD(v10) = *(v10 + 8);
    *a1 = v11;
    *(a1 + 8) = v10;
    sub_1B0B8FF20(a2, v9);
    *v4 = v9;
    return;
  }

LABEL_10:
  __break(1u);
}

void *sub_1B0A9C924(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1B0A9CC6C(v12, v7, v5, a3);
  result = MEMORY[0x1B272C230](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1B0A9CA94(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 3)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1B0B21F40(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B0A9CB80(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) != 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1B0B21F40(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1B0A9CC6C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_1B0A9CCF4(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A9CD58(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 16 * a2;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 8);
    *result = v7;
    *(result + 8) = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1B0A9CDFC(_BYTE *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    *a1 = *(*(a5 + 56) + a2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1B0A9CE80(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    LODWORD(v6) = *(v6 + 24);
    *result = v7;
    *(result + 8) = v8;
    *(result + 16) = v9;
    *(result + 24) = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1B0A9CF38(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (!v4)
  {
    return v5 == 0;
  }

  return v5 && *(a1 + 16) == a2[1] && (sub_1B04520BC(v4, v5) & 1) != 0;
}

BOOL sub_1B0A9CFA8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 & 0x3000000000000000;
  v9 = (v5 >> 60) & 3;
  if (!v9)
  {
    if (!v8)
    {
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (v8 == 0x1000000000000000)
    {
      v5 &= 0xCFFFFFFFFFFFFFFFLL;
      v7 &= 0xCFFFFFFFFFFFFFFFLL;
      return sub_1B0AB8858(v4, v5, v6, v7);
    }

    return 0;
  }

  return v8 == 0x2000000000000000 && v6 == 0 && v7 == 0x2000000000000000;
}

uint64_t sub_1B0A9D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  v14[2] = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B0B150F4(sub_1B0AA00F0, v14, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    v6 = v4;
    sub_1B0B09DC4(0, v5, 0);
    v7 = v6;
    v8 = v15;
    v9 = *(v15 + 16);
    v10 = 32;
    do
    {
      v11 = *(v7 + v10);
      v15 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_1B0B09DC4((v12 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v15;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 4 * v9 + 32) = v11;
      v10 += 24;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1B0A9D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v26 = a3;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9D06C(a1, a2, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}

uint64_t sub_1B0A9D3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t, __n128), double a7)
{
  v30 = a3;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v28 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  result = sub_1B0A9F1C0(a1, a2, a4, a5, a6);
  v19 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v20 = 0;
    v27 = result + 32;
    while (v20 < *(v19 + 16))
    {
      v21 = *(v30 + 16);
      if (v21)
      {
        v22 = *(v27 + 4 * v20);
        v23 = v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v24 = *(v28 + 72);
        do
        {
          sub_1B03B1B68(v23, v17, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v17, v14, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v25 = *(v14 + 2);
            result = sub_1B03E1BE8(*v14);
            if (v25 == v22)
            {
              v26 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v14, type metadata accessor for TaskHistory.Previous);
          }

          v23 += v24;
          --v21;
        }

        while (v21);
      }

      if (++v20 == v29)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v26 = 0;
LABEL_13:

    return v26;
  }

  return result;
}

uint64_t sub_1B0A9D5CC(uint64_t a1, uint64_t a2)
{
  sub_1B0A9AC70();
  if (v5)
  {
    v9 = v6;
    v10 = v7;
    v11 = v5;
    v12 = swift_allocObject();
    result = v11;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    *(v12 + 32) = 1;
    return result;
  }

  if (!*(v2[8] + 16) && !*(v2[9] + 16) && (sub_1B0A9D3A8(0, 0, a1, a2, sub_1B0AA0068, sub_1B0B14F6C, v8) & 1) == 0)
  {
    v14 = sub_1B0A9C924(v2[7], sub_1B0A9CA94, sub_1B0A9CA94);
    sub_1B0A99E38(MEMORY[0x1E69E7CC0], v14);
    v16 = v15;

    if (*(v16 + 16))
    {
      v17 = swift_allocObject();
      result = 0;
      *(v17 + 16) = v16;
      return result;
    }
  }

  return 1;
}

uint64_t sub_1B0A9D784(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t), double a4)
{
  v24 = a1;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9FB38(a2, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

unint64_t sub_1B0A9D990(unint64_t result)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 0x12)
  {
    if (*(*(v1 + 56) + 16))
    {
      v2 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      result = sub_1B03AB888(v2, v3);
      if (v5)
      {
        if (*(v4 + 16))
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v7 = *(v1 + 56);
          sub_1B0A9C100(1, v2, v3, isUniquelyReferenced_nonNull_native);

          *(v1 + 56) = v7;
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03AB2E0(&v7, v2, v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0A9DA88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 32); ; i += 11)
  {
    v6 = i[9];
    v17[8] = i[8];
    v17[9] = v6;
    v17[10] = i[10];
    v7 = i[5];
    v17[4] = i[4];
    v17[5] = v7;
    v8 = i[7];
    v17[6] = i[6];
    v17[7] = v8;
    v9 = i[1];
    v17[0] = *i;
    v17[1] = v9;
    v10 = i[3];
    v17[2] = i[2];
    v17[3] = v10;
    v16 = DWORD2(v9);
    v15 = v9;
    MEMORY[0x1EEE9AC00](a1);
    v13[2] = &v15;
    sub_1B03A35B8(v17, &v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v11 = sub_1B0B38150(sub_1B0AA02B0, v13, a2);

    a1 = sub_1B03A3614(v17);
    if (v11)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B0A9DBD4(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  result = sub_1B0A9DA88(*a1, a2);
  v115 = v3;
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v2 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = (v6 + 16);
    v10 = *(v6 + 16);
    if (v9 == v10)
    {
      return v2;
    }

    v77 = a1;
    v78 = a2;
    v12 = 176 * result + 208;
    while (v9 < v10)
    {
      v79 = v6;
      v13 = (v6 + v12);
      v14 = *(v6 + v12);
      v15 = *(v6 + v12 + 32);
      v105 = *(v6 + v12 + 16);
      v106 = v15;
      v104 = v14;
      v16 = *(v6 + v12 + 48);
      v17 = *(v6 + v12 + 64);
      v18 = *(v6 + v12 + 96);
      v109 = *(v6 + v12 + 80);
      v110 = v18;
      v107 = v16;
      v108 = v17;
      v19 = *(v6 + v12 + 112);
      v20 = *(v6 + v12 + 128);
      v21 = *(v6 + v12 + 160);
      v113 = *(v6 + v12 + 144);
      v114 = v21;
      v111 = v19;
      v112 = v20;
      DWORD2(v82) = DWORD2(v105);
      *&v82 = v105;
      MEMORY[0x1EEE9AC00](result);
      v76[2] = &v82;
      sub_1B03A35B8(&v104, &v93);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = v115;
      v23 = sub_1B0B38150(sub_1B0AA0018, v76, v78);
      v115 = v22;

      result = sub_1B03A3614(&v104);
      if (v23)
      {
        v6 = v79;
      }

      else
      {
        if (v9 == v2)
        {
          v6 = v79;
        }

        else
        {
          v6 = v79;
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          v24 = *v11;
          if (v2 >= *v11)
          {
            goto LABEL_25;
          }

          v25 = (v79 + 32 + 176 * v2);
          v26 = *v25;
          v27 = v25[2];
          v83 = v25[1];
          v84 = v27;
          v82 = v26;
          v28 = v25[3];
          v29 = v25[4];
          v30 = v25[6];
          v87 = v25[5];
          v88 = v30;
          v85 = v28;
          v86 = v29;
          v31 = v25[7];
          v32 = v25[8];
          v33 = v25[10];
          v91 = v25[9];
          v92 = v33;
          v89 = v31;
          v90 = v32;
          if (v9 >= v24)
          {
            goto LABEL_26;
          }

          v34 = *v13;
          v35 = v13[2];
          v94 = v13[1];
          v95 = v35;
          v93 = v34;
          v36 = v13[3];
          v37 = v13[4];
          v38 = v13[6];
          v98 = v13[5];
          v99 = v38;
          v96 = v36;
          v97 = v37;
          v39 = v13[7];
          v40 = v13[8];
          v41 = v13[10];
          v102 = v13[9];
          v103 = v41;
          v100 = v39;
          v101 = v40;
          sub_1B03A35B8(&v82, v81);
          sub_1B03A35B8(&v93, v81);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B03D0E54(v6);
            v6 = result;
          }

          if (v2 >= *(v6 + 16))
          {
            goto LABEL_27;
          }

          v42 = (v6 + 176 * v2);
          v43 = v42[2];
          v44 = v42[4];
          v80[1] = v42[3];
          v80[2] = v44;
          v80[0] = v43;
          v45 = v42[5];
          v46 = v42[6];
          v47 = v42[8];
          v80[5] = v42[7];
          v80[6] = v47;
          v80[3] = v45;
          v80[4] = v46;
          v48 = v42[9];
          v49 = v42[10];
          v50 = v42[12];
          v80[9] = v42[11];
          v80[10] = v50;
          v80[7] = v48;
          v80[8] = v49;
          v51 = v93;
          v52 = v95;
          v42[3] = v94;
          v42[4] = v52;
          v42[2] = v51;
          v53 = v96;
          v54 = v97;
          v55 = v99;
          v42[7] = v98;
          v42[8] = v55;
          v42[5] = v53;
          v42[6] = v54;
          v56 = v100;
          v57 = v101;
          v58 = v103;
          v42[11] = v102;
          v42[12] = v58;
          v42[9] = v56;
          v42[10] = v57;
          result = sub_1B03A3614(v80);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v59 = (v6 + v12);
          v60 = *(v6 + v12);
          v61 = *(v6 + v12 + 32);
          v81[1] = *(v6 + v12 + 16);
          v81[2] = v61;
          v81[0] = v60;
          v62 = *(v6 + v12 + 48);
          v63 = *(v6 + v12 + 64);
          v64 = *(v6 + v12 + 96);
          v81[5] = *(v6 + v12 + 80);
          v81[6] = v64;
          v81[3] = v62;
          v81[4] = v63;
          v65 = *(v6 + v12 + 112);
          v66 = *(v6 + v12 + 128);
          v67 = *(v6 + v12 + 160);
          v81[9] = *(v6 + v12 + 144);
          v81[10] = v67;
          v81[7] = v65;
          v81[8] = v66;
          v68 = v82;
          v69 = v84;
          v59[1] = v83;
          v59[2] = v69;
          *v59 = v68;
          v70 = v85;
          v71 = v86;
          v72 = v88;
          v59[5] = v87;
          v59[6] = v72;
          v59[3] = v70;
          v59[4] = v71;
          v73 = v89;
          v74 = v90;
          v75 = v92;
          v59[9] = v91;
          v59[10] = v75;
          v59[7] = v73;
          v59[8] = v74;
          result = sub_1B03A3614(v81);
          *v77 = v6;
        }

        ++v2;
      }

      ++v9;
      v11 = (v6 + 16);
      v10 = *(v6 + 16);
      v12 += 176;
      if (v9 == v10)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0A9DF64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v4 = result;
  v5 = 0;
  v6 = BYTE4(result);
  v7 = result == 1 && BYTE4(result) == 3;
  if (result)
  {
    v8 = 0;
  }

  else
  {
    v8 = BYTE4(result) == 3;
  }

  v9 = a2 + 40;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = (v9 + 12 * v5);
    v12 = v5;
    while (1)
    {
      if (v12 >= v2)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_44;
      }

      v13 = *(v11 - 1);
      v14 = *v11;
      if (v14 <= 1)
      {
        break;
      }

      if (v14 == 2)
      {
        if (v6 != 2)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v13)
      {
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else if (v8)
      {
        v13 = 0;
        goto LABEL_28;
      }

LABEL_12:
      ++v12;
      v11 += 12;
      if (v5 == v2)
      {
        goto LABEL_35;
      }
    }

    if (*v11)
    {
      if (v6 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v13 != v4)
    {
      goto LABEL_12;
    }

    v13 = v4;
LABEL_28:
    v25 = v9;
    v23 = *(v11 - 2);
    result = swift_isUniquelyReferenced_nonNull_native();
    v24 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1B0B0A0E4(0, *(v10 + 16) + 1, 1);
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v9 = v25;
    if (v16 >= v15 >> 1)
    {
      result = sub_1B0B0A0E4((v15 > 1), v16 + 1, 1);
      v9 = v25;
    }

    *(v10 + 16) = v16 + 1;
    v17 = v10 + 12 * v16;
    v8 = v24;
    *(v17 + 32) = v23;
    *(v17 + 36) = v13;
    *(v17 + 40) = v14;
  }

  while (v5 != v2);
LABEL_35:
  v18 = *(v10 + 16);
  if (v18)
  {
    sub_1B0B09DC4(0, v18, 0);
    v19 = *(v3 + 16);
    v20 = 32;
    do
    {
      v21 = *(v10 + v20);
      v22 = *(v3 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1B0B09DC4((v22 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      *(v3 + 4 * v19 + 32) = v21;
      v20 += 12;
      ++v19;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0A9E1D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v24 = a2;
  v6 = type metadata accessor for TaskHistory.Previous(0);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  result = sub_1B0A9DF64(a1 & 0xFFFFFFFFFFLL, a3);
  v13 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v14 = 0;
    v21 = result + 32;
    while (v14 < *(v13 + 16))
    {
      v15 = *(v24 + 16);
      if (v15)
      {
        v16 = *(v21 + 4 * v14);
        v17 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
        v18 = *(v22 + 72);
        do
        {
          sub_1B03B1B68(v17, v11, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v11, v8, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = *(v8 + 2);
            result = sub_1B03E1BE8(*v8);
            if (v19 == v16)
            {
              v20 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v8, type metadata accessor for TaskHistory.Previous);
          }

          v17 += v18;
          --v15;
        }

        while (v15);
      }

      if (++v14 == v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v20 = 0;
LABEL_13:

    return v20;
  }

  return result;
}

uint64_t sub_1B0A9E3F4(uint64_t result, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 48;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = (v8 + 24 * v7);
      v11 = v7;
      while (1)
      {
        if (v11 >= v3)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v12 = *v10;
        if (*v10)
        {
          break;
        }

        if ((a2 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_6:
        ++v11;
        v10 += 24;
        if (v7 == v3)
        {
          goto LABEL_19;
        }
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_5:
      if (*(v10 - 1) != v6)
      {
        goto LABEL_6;
      }

      v13 = *(v10 - 4);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B09F64(0, *(v9 + 16) + 1, 1);
      }

      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B0B09F64((v14 > 1), v15 + 1, 1);
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 24 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v6;
      *(v16 + 48) = v12;
      if (v7 == v3)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v17 = *(v9 + 16);
  if (v17)
  {
    sub_1B0B09DC4(0, v17, 0);
    v18 = *(v4 + 16);
    v19 = 32;
    do
    {
      v20 = *(v9 + v19);
      v21 = *(v4 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_1B0B09DC4((v21 > 1), v18 + 1, 1);
      }

      *(v4 + 16) = v18 + 1;
      *(v4 + 4 * v18 + 32) = v20;
      v19 += 24;
      ++v18;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1B0A9E5FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v26 = a3;
  v8 = type metadata accessor for TaskHistory.Previous(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  result = sub_1B0A9E3F4(a1, a2 & 1, a4);
  v15 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v16 = 0;
    v23 = result + 32;
    while (v16 < *(v15 + 16))
    {
      v17 = *(v26 + 16);
      if (v17)
      {
        v18 = *(v23 + 4 * v16);
        v19 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
        v20 = *(v24 + 72);
        do
        {
          sub_1B03B1B68(v19, v13, type metadata accessor for TaskHistory.Previous);
          sub_1B0AA0164(v13, v10, type metadata accessor for TaskHistory.Previous);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v21 = *(v10 + 2);
            result = sub_1B03E1BE8(*v10);
            if (v21 == v18)
            {
              v22 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1B03B1D00(v10, type metadata accessor for TaskHistory.Previous);
          }

          v19 += v20;
          --v17;
        }

        while (v17);
      }

      if (++v16 == v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v22 = 0;
LABEL_13:

    return v22;
  }

  return result;
}