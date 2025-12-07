unint64_t sub_2758978B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0EDC0;
  if (!qword_280A0EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EDC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iCloudSettingsActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for iCloudSettingsActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_275897A68(uint64_t a1)
{
  sub_2758989FC(319);
  if (v1 <= 0x3F)
  {
    sub_2759B8678();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of iCloudHomeViewModel.expandedSubTitle(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xB28))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xB30))();
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchKeychainSyncStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB48);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585F7A0;

  return v5();
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchDataModelAsync(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return v7(a1);
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchHMECount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB68);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585F7A0;

  return v5();
}

void sub_2758989FC(uint64_t a1)
{
  if (!qword_280A0EED0)
  {
    sub_2759B87B8();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0EED0);
    }
  }
}

uint64_t block_copy_helper_264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275898A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758921CC(a1, v4, v5, v6);
}

uint64_t sub_275898B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275891C58(a1, v4, v5, v6);
}

void sub_275898BDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_275898C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_275890E3C();
}

uint64_t sub_275898D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588FEE8(a1, v4, v5, v6);
}

uint64_t sub_275898E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275890218(a1, v4, v5, v6);
}

uint64_t sub_275898EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588FEE8(a1, v4, v5, v6);
}

uint64_t sub_275898F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588F250(a1, v4, v5, v6);
}

uint64_t sub_275899070()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2758990B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588E740(a1, v4, v5, v6);
}

uint64_t sub_2758991F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588DCD8(a1, v4, v5, v6);
}

uint64_t sub_2758992B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275889764(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_271Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758993CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759371C4(a1, v4, v5, v6);
}

uint64_t sub_275899480(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_275893544(a1, v4);
}

uint64_t sub_275899550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275880440(a1, v4, v5, v6);
}

uint64_t objectdestroy_42Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_275899658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758806D8(a1, v4, v5, v6, v7, v8);
}

void sub_275899738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager) = v2;
  v4 = v2;
}

double sub_275899778()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha) = result;
  return result;
}

uint64_t sub_275899790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_27589982C(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_275899878()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor) = *(v0 + 24);
}

void sub_2758998BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter) = v2;
  v4 = v2;
}

void sub_2758998FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider) = v2;
  v4 = v2;
}

void sub_27589993C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController) = v2;
  v4 = v2;
}

void sub_27589997C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController) = v2;
  v4 = v2;
}

void sub_2758999BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController) = v2;
  v4 = v2;
}

void sub_2758999FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel) = v2;
  v4 = v2;
}

void sub_275899A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager) = v2;
  v4 = v2;
}

void sub_275899A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter) = v2;
  v4 = v2;
}

void sub_275899ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter) = v2;
  v4 = v2;
}

void sub_275899AFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController) = v2;
  v4 = v2;
}

void sub_275899B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController) = v2;
  v4 = v2;
}

void sub_275899B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController) = v2;
  v4 = v2;
}

void sub_275899BBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager) = v2;
  v4 = v2;
}

uint64_t sub_275899BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275899D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275899D54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_27589419C(a1, v4);
}

uint64_t sub_275899E0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_275899E68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_275893F94(a1, v4);
}

uint64_t sub_275899F20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_275893F94(a1, v4);
}

uint64_t sub_275899FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27587CF94(a1, v4, v5, v6);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27589A0E0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView) = *(v0 + 24);
}

uint64_t sub_27589A25C(uint64_t a1)
{
  result = sub_2759BA7D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27589A2CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_27589A44C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_27589A6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = sub_2759B9448();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + 16);
  v42 = sub_2759BA7D8();
  v4 = sub_2759B9F58();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0A0, &qword_2759C3560);
  v7 = sub_2759B90A8();
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = v37 - v8;
  v40 = *(a1 + 24);
  v75 = v40;
  WitnessTable = swift_getWitnessTable();
  v72 = MEMORY[0x277CE1410];
  v73 = WitnessTable;
  v74 = MEMORY[0x277CE1410];
  v10 = swift_getWitnessTable();
  v37[1] = v10;
  v51 = MEMORY[0x277CE04A0];
  v11 = sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560, MEMORY[0x277CE04A0]);
  v70 = v10;
  v71 = v11;
  v49 = MEMORY[0x277CDFAD8];
  v38 = swift_getWitnessTable();
  *&v76 = v7;
  *(&v76 + 1) = v38;
  v39 = MEMORY[0x277CDE8F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B0, &qword_2759C3330);
  v15 = sub_2759B90A8();
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B8, &qword_2759C3338);
  v44 = sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0C0, &unk_2759C3340);
  v18 = sub_2759B90A8();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v45 = v37 - v22;
  v58 = v48;
  v59 = v40;
  v60 = v53;
  sub_2759B9F38();
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v23 = v41;
  sub_2759B9AA8();
  (*(v52 + 8))(v6, v4);
  sub_2759B8EC8();
  v24 = v38;
  sub_2759B9AD8();
  (*(v50 + 8))(v23, v7);
  v25 = sub_2759B9C38();
  v68 = v24;
  v69 = v25;
  v67 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2759B9AE8();

  (*(v43 + 8))(v14, OpaqueTypeMetadata2);
  v27 = v54;
  sub_2759B9438();
  v28 = v51;
  v29 = sub_27589B02C(&qword_280A0F0C8, &qword_280A0F0B0, &qword_2759C3330, v51);
  v65 = OpaqueTypeConformance2;
  v66 = v29;
  v30 = swift_getWitnessTable();
  sub_2759B9B08();
  (*(v55 + 8))(v27, v56);
  (*(v46 + 8))(v17, v15);
  v31 = sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338, v28);
  v63 = v30;
  v64 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340, MEMORY[0x277CE0868]);
  v61 = v32;
  v62 = v33;
  swift_getWitnessTable();
  v34 = v45;
  sub_2758C832C();
  v35 = *(v47 + 8);
  v35(v21, v18);
  sub_2758C832C();
  return (v35)(v34, v18);
}

uint64_t sub_27589AF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2759BA7D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = a3;
  swift_getWitnessTable();
  sub_2758C832C();
  sub_2758C832C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_27589B02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_27589B0FC()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27589B194(char a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27589B244()
{
  sub_2759B86C8();
  result = sub_2759B86B8();
  qword_280A0F0E0 = result;
  return result;
}

id ManageStorageAppsListDataController.__allocating_init(account:launchedFromRootLevel:shouldIgnoreCache:)(void *a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v7[v8] = a3;
  type metadata accessor for iCloudNetworkRequest(0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = a1;
  sub_2759B8718();
  v11 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v9;
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

id ManageStorageAppsListDataController.init(account:launchedFromRootLevel:shouldIgnoreCache:)(void *a1, char a2, char a3)
{
  v4 = sub_27589C0A4(a1, a2, a3);

  return v4;
}

uint64_t sub_27589B440()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE58);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Initiating network request to fetch manage storage apps list data.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = *(v5 + OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account);
  v7 = [v6 aa_altDSID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2759BA298();
    v11 = v10;

    if (qword_280A0E308 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 24);
    sub_2759BA8C8();

    MEMORY[0x277C840E0](v9, v11);

    *(v0 + 32) = 0x80000002759DE860;
    v13 = swift_allocObject();
    *(v0 + 40) = v13;
    *(v13 + 16) = v12;
    v28 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
    v14 = v12;
    v15 = swift_task_alloc();
    *(v0 + 48) = v15;
    v16 = type metadata accessor for ManageStorageAppsListDataModel();
    *v15 = v0;
    v15[1] = sub_27589B7FC;

    return v28(v0 + 16, 0xD000000000000012, 0x80000002759DE860, &unk_2759C3368, v13, v16);
  }

  else
  {
    v18 = *(v0 + 24);
    v19 = sub_2759B8988();
    v20 = sub_2759BA668();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v6;
      *v22 = v6;
      v23 = v6;
      _os_log_impl(&dword_275819000, v19, v20, "Found no altDSID for account: %@", v21, 0xCu);
      sub_275875554(v22);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    sub_27589C1B0(v24, v25, v26);
    swift_allocError();
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_27589B7FC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_27589B93C;
  }

  else
  {

    v2 = sub_27589B920;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27589B93C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27589B9A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_27589B9C8, 0, 0);
}

uint64_t sub_27589B9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_27589BA64;

  return sub_2758B7638();
}

uint64_t sub_27589BA64(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 40) = a1;

  return MEMORY[0x2822009F8](sub_27589BBB0, 0, 0);
}

uint64_t sub_27589BD48(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_27589BDF0;

  return sub_27589B420();
}

uint64_t sub_27589BDF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2759B8438();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id ManageStorageAppsListDataController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppsListDataController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageStorageAppsListDataController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27589C0A4(void *a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v3[v7] = a3;
  type metadata accessor for iCloudNetworkRequest(0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a1;
  sub_2759B8718();
  v10 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v8;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ManageStorageAppsListDataController();
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_27589C1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F100;
  if (!qword_280A0F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F100);
  }

  return result;
}

uint64_t sub_27589C204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_27589B9A8(a1, v4);
}

uint64_t dispatch thunk of ManageStorageAppsListDataController.fetchAppsListData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275875130;

  return v5();
}

uint64_t sub_27589C4B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_27589BD48(v2, v3);
}

uint64_t sub_27589C55C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275929558(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27589C65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275929640(a1, v4, v5, v6);
}

id iCloudDataClasssheetPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudDataClasssheetPresenter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id iCloudDataClasssheetPresenter.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_27589C864(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v27 = [v4 ics:v5 loadBundle:v6 atPath:?];

  if (v27 && [v27 principalClass] && ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v8 = swift_conformsToProtocol2()) != 0) ? (v9 = ObjCClassMetadata == 0) : (v9 = 1), !v9))
  {
    v15 = v8;
    v16 = *MEMORY[0x277CB8980];
    v17 = *(v8 + 16);
    v18 = a1;
    v19 = v16;
    v20 = v17(v18, v16, ObjCClassMetadata, v15);
    if (v20)
    {
      v21 = v20;
      v28 = (*(v15 + 24))(ObjCClassMetadata, v15);
      v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F108, &unk_2759C3430));

      v23 = sub_2759B9508();
      [a2 showController:v23 animate:1];

      return;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_2815ADE70);
    v11 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v11, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v11, v25, "Falied to instantiate iCloudDataclassSheet for device enrollments.", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759DEA70, &v28);
      _os_log_impl(&dword_275819000, v11, v12, "Bundle principle class %s does not conform to iCloudDataclassSheet.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);

      return;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27589CCA4(uint64_t *a1, int a2)
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

uint64_t sub_27589CCEC(uint64_t result, int a2, int a3)
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

uint64_t sub_27589CD58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F110, &qword_2759C3508);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v12 = v19[1];
  swift_getKeyPath();
  v20 = v12;
  sub_27589F39C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v14 = sub_2758835EC(), Strong, v14))
  {
    v20 = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    *(v15 + 32) = a4;

    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F120, &qword_2759C3540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F128, &qword_2759C3548);
    sub_27589B02C(&qword_280A0F130, &qword_280A0F120, &qword_2759C3540, MEMORY[0x277D83980]);
    sub_27589EE34();
    sub_27589F39C(&qword_280A0F160, type metadata accessor for ManageStorageTip, &protocol conformance descriptor for ManageStorageTip);
    sub_2759B9EE8();
    (*(v9 + 32))(a3, v11, v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8);
}

double sub_27589D050@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F158, &qword_2759C3558);
  sub_27589B02C(&qword_280A0F150, &qword_280A0F158, &qword_2759C3558, MEMORY[0x277CE1138]);
  sub_2759B9F38();
  v6 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F128, &qword_2759C3548) + 36);
  result = 11.0;
  __asm { FMOV            V1.2D, #11.0 }

  *v6 = xmmword_2759C3440;
  *(v6 + 16) = _Q1;
  *(v6 + 32) = 0;
  return result;
}

uint64_t sub_27589D130@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = sub_2759B9418();
  *(a4 + 8) = 0x4028000000000000;
  *(a4 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F168, &qword_2759C3568);
  return sub_27589D1B0(a1, a2, a3, a4 + *(v10 + 44), a5);
}

uint64_t sub_27589D1B0@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v67 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F170, &qword_2759C3570);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &KeyPath - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F178, &qword_2759C3578);
  MEMORY[0x28223BE20](v62);
  v16 = (&KeyPath - v15);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F180, &qword_2759C3580);
  MEMORY[0x28223BE20](v64);
  v65 = &KeyPath - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F188, &qword_2759C3588);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v63 = &KeyPath - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F190, &qword_2759C3590);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v66 = &KeyPath - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &KeyPath - v24;
  v26 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol + 8];
  if (v26)
  {
    v55 = &KeyPath - v24;
    v56 = v19;
    v57 = v18;
    v59 = a2;
    v60 = a4;
    v61 = v12;
    v27 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol];

    v54 = v27;
    v53 = sub_2759B9CB8();
    v52 = sub_2759B9858();
    KeyPath = swift_getKeyPath();
    v28 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor + 8];
    v29 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
    if (v28)
    {
      v30 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
    }

    else
    {
      v30 = 0;
    }

    if (v28)
    {
      v31 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor + 8];
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    swift_bridgeObjectRetain_n();
    v32 = sub_27594991C(v30, v31, 1.0);
    v58 = a1;
    if (!v32)
    {
      v32 = sub_27594972C(v30, v31);
    }

    v33 = v32;

    v34 = v56;
    v35 = (v16 + *(v62 + 36));
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
    v37 = *MEMORY[0x277CE1048];
    v38 = sub_2759B9D18();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    v39 = KeyPath;
    *v16 = v53;
    v16[1] = v39;
    v16[2] = v52;
    v16[3] = v33;
    sub_2759BA028();
    sub_2759B8F18();
    v40 = v65;
    sub_27589F26C(v16, v65, &qword_280A0F178, &qword_2759C3578);
    v41 = (v40 + *(v64 + 36));
    v42 = v71;
    *v41 = v70;
    v41[1] = v42;
    v41[2] = v72;
    v68 = 0x6E6F63692D706974;
    v69 = 0xE90000000000002DLL;
    MEMORY[0x277C840E0](v54, v26);
    MEMORY[0x277C840E0](45, 0xE100000000000000);
    if (v28)
    {
      v43 = v29;
    }

    else
    {
      v43 = 0x73694D726F6C6F63;
    }

    if (v28)
    {
      v44 = v28;
    }

    else
    {
      v44 = 0xEC000000676E6973;
    }

    MEMORY[0x277C840E0](v43, v44);

    sub_27589EFB8();
    v45 = v63;
    sub_2759B9B38();

    sub_27586BF04(v40, &qword_280A0F180, &qword_2759C3580);
    v25 = v55;
    sub_27589F26C(v45, v55, &qword_280A0F188, &qword_2759C3588);
    (*(v34 + 56))(v25, 0, 1, v57);
    a4 = v60;
    v12 = v61;
    v46 = v67;
    a1 = v58;
    a2 = v59;
  }

  else
  {
    (*(v19 + 56))(&KeyPath - v24, 1, 1, v18);
    v46 = v67;
  }

  *v14 = sub_2759B94F8();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F198, &qword_2759C3598);
  sub_27589D84C(a1, a2, v46, &v14[*(v47 + 44)], a5);
  v48 = v66;
  sub_27586FBC8(v25, v66, &qword_280A0F190, &qword_2759C3590);
  sub_27586FBC8(v14, v12, &qword_280A0F170, &qword_2759C3570);
  sub_27586FBC8(v48, a4, &qword_280A0F190, &qword_2759C3590);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A0, &qword_2759C35A0);
  sub_27586FBC8(v12, a4 + *(v49 + 48), &qword_280A0F170, &qword_2759C3570);
  sub_27586BF04(v14, &qword_280A0F170, &qword_2759C3570);
  sub_27586BF04(v25, &qword_280A0F190, &qword_2759C3590);
  sub_27586BF04(v12, &qword_280A0F170, &qword_2759C3570);
  return sub_27586BF04(v48, &qword_280A0F190, &qword_2759C3590);
}

void sub_27589D84C(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v77 = a3;
  v76 = a2;
  v71 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F208, &qword_2759C3630);
  v85 = *(v79 - 8);
  v7 = MEMORY[0x28223BE20](v79);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = &v69 - v10;
  v11 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title + 8];
  v92 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title];
  v93 = v11;
  v83 = sub_27589F2D4(v9, v12, v13);

  v14 = sub_2759B99C8();
  v16 = v15;
  v18 = v17;
  sub_2759B9848();
  v19 = sub_2759B9988();
  v21 = v20;
  v23 = v22;

  sub_27589F328(v14, v16, v18 & 1);

  v73 = sub_2759B9978();
  v72 = v24;
  v74 = v25;
  v75 = v26;
  sub_27589F328(v19, v21, v23 & 1);

  v27 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle + 8];
  v92 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle];
  v93 = v27;

  v28 = sub_2759B99C8();
  v30 = v29;
  v32 = v31;
  sub_2759B9848();
  v33 = sub_2759B9988();
  v35 = v34;
  LOBYTE(v16) = v36;

  sub_27589F328(v28, v30, v32 & 1);

  LODWORD(v92) = sub_2759B9688();
  v83 = sub_2759B9958();
  v82 = v37;
  v39 = v38;
  v70 = v40;
  sub_27589F328(v33, v35, v16 & 1);

  v81 = sub_2759B97F8();
  sub_2759B8D78();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v80 = v39 & 1;
  LOBYTE(v92) = v39 & 1;
  LOBYTE(v88) = 0;
  v92 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions];
  v49 = swift_allocObject();
  v50 = v76;
  *(v49 + 16) = v76;
  *(v49 + 24) = v77;
  *(v49 + 32) = a5;
  *(v49 + 40) = a1;

  v51 = a1;

  v52 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  v53 = sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638, MEMORY[0x277D83980]);
  sub_27589F348(v53, v54, v55);
  sub_27589F39C(&qword_280A0F228, type metadata accessor for ManageStorageAction, &protocol conformance descriptor for ManageStorageAction);
  v56 = v84;
  sub_2759B9EE8();
  v57 = *(v85 + 16);
  v58 = v78;
  v59 = v79;
  v57(v78, v56, v79);
  v60 = v73;
  v61 = v71;
  v62 = v72;
  *v71 = v73;
  v61[1] = v62;
  LOBYTE(v35) = v74 & 1;
  *(v61 + 16) = v74 & 1;
  v61[3] = v75;
  *&v88 = v83;
  *(&v88 + 1) = v82;
  LOBYTE(v89) = v80;
  *(&v89 + 1) = v87[0];
  DWORD1(v89) = *(v87 + 3);
  v63 = v70;
  *(&v89 + 1) = v70;
  LOBYTE(v90) = v81;
  *(&v90 + 1) = *v86;
  DWORD1(v90) = *&v86[3];
  *(&v90 + 1) = v42;
  *v91 = v44;
  *&v91[8] = v46;
  *&v91[16] = v48;
  v91[24] = 0;
  v64 = v88;
  v65 = v89;
  *(v61 + 89) = *&v91[9];
  v66 = *v91;
  *(v61 + 4) = v90;
  *(v61 + 5) = v66;
  *(v61 + 2) = v64;
  *(v61 + 3) = v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F230, &qword_2759C3640);
  v57(v61 + *(v67 + 64), v58, v59);
  sub_27589F3E4(v60, v62, v35);

  sub_27586FBC8(&v88, &v92, &qword_280A0F238, &qword_2759C3648);
  v68 = *(v85 + 8);
  v68(v84, v59);
  v68(v58, v59);
  v92 = v83;
  v93 = v82;
  v94 = v80;
  *v95 = v87[0];
  *&v95[3] = *(v87 + 3);
  v96 = v63;
  v97 = v81;
  *v98 = *v86;
  *&v98[3] = *&v86[3];
  v99 = v42;
  v100 = v44;
  v101 = v46;
  v102 = v48;
  v103 = 0;
  sub_27586BF04(&v92, &qword_280A0F238, &qword_2759C3648);
  sub_27589F328(v60, v62, v35);
}

void *sub_27589DF48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v9 = *(a4 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier);
  v8 = *(a4 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier + 8);
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v10 = v7;

  sub_2759B9D58();
  result = sub_2759B9D58();
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v10;
  *(a5 + 24) = v9;
  *(a5 + 32) = v8;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  return result;
}

uint64_t sub_27589E030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F258, &qword_2759C3708);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = v25 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F260, &qword_2759C3710);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = v25 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F268, &qword_2759C3718);
  MEMORY[0x28223BE20](v29);
  v28 = v25 - v6;
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = *(v1 + 48);
  v37 = v1;
  sub_27589F5AC(v1, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F270, &qword_2759C3720);
  sub_27589B02C(&qword_280A0F278, &qword_280A0F270, &qword_2759C3720, MEMORY[0x277CE1138]);
  v31 = v4;
  sub_2759B9DB8();
  v9 = *(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v27 = v11;
  v39 = v10;
  v40 = v11;
  v38 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  v12 = sub_2759B9D88();
  v26 = v25;
  v25[1] = v42;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
  v14 = sub_27589B02C(&qword_280A0F290, &qword_280A0F258, &qword_2759C3708, MEMORY[0x277CDF028]);
  sub_27589F2D4(v14, v15, v16);
  sub_27589F5F4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
  v17 = v35;
  v18 = v30;
  v19 = v31;
  sub_2759B9B58();

  (*(v33 + 8))(v19, v17);
  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = *(v2 + 48);
  v22 = v28;
  (*(v32 + 32))(v28, v18, v34);
  v23 = (v22 + *(v29 + 36));
  *v23 = sub_27589F6C4;
  v23[1] = v20;
  v23[2] = 0;
  v23[3] = 0;
  sub_27581E698(v22, v36);
  return sub_27589F5AC(v2, &v41);
}

void sub_27589E574()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = *(v0 + 2);
  if (*(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v20 = *(v0 + 40);
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v20 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v6 = v19;
    v7 = *&v19[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    v9 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v8 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = xmmword_2759C3450;
    *(v12 + 56) = 4362;
    *(v12 + 58) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0;
    *(v12 + 80) = v9;
    *(v12 + 88) = v8;
    *(v12 + 96) = 8;

    sub_275931D20(0, 0, v4, &unk_2759C4530, v12);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v20 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v13 = v19;
    v14 = sub_2758A1CD0();
    LOBYTE(v20) = 17;
    v15 = *(v0 + 3);
    v16 = *(v1 + 4);

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    iCloudPlusFeature.init(rawValue:)(v17);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v14, &v20, &v19);
  }
}

void sub_27589E840(uint64_t a2@<X8>)
{
  v17 = sub_2759B9418();
  sub_27589F2D4(v17, v3, v4);

  v5 = sub_2759B99C8();
  v7 = v6;
  v9 = v8;
  sub_2759B9848();
  v10 = sub_2759B9988();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_27589F328(v5, v7, v9 & 1);

  *a2 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  *(a2 + 48) = v16;
}

uint64_t sub_27589E94C(uint64_t a1)
{
  if (*(*(a1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v10 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = *(a1 + 48);
  sub_27589F5AC(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  v5 = sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638, MEMORY[0x277D83980]);
  sub_27589F670(v5, v6, v7);
  sub_27589F39C(&qword_280A0F228, type metadata accessor for ManageStorageAction, &protocol conformance descriptor for ManageStorageAction);
  return sub_2759B9EE8();
}

void *sub_27589EACC@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v11 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v8 = v5;

  result = sub_2759B9D58();
  *a3 = v10;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v11;
  *(a3 + 40) = *(&v11 + 1);
  return result;
}

uint64_t sub_27589EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  if (*(*(a1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_27589F2D4(v5, a3, a4);
  result = sub_2759B99C8();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_27589EC0C(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(*(a1 + 2) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType) - 114;
  v7 = v6 > 0xD;
  v8 = (1 << v6) & 0x20F1;
  if (!v7 && v8 != 0)
  {
    v17 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v10 = v16;
    v11 = *&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    sub_2759BA4D8();
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v13;
    *(v14 + 40) = 17;
    sub_275931D20(0, 0, v5, &unk_2759C3740, v14);

    return sub_27586BF04(v5, &unk_280A0E510, &qword_2759C33C0);
  }

  return result;
}

unint64_t sub_27589EE34()
{
  result = qword_280A0F138;
  if (!qword_280A0F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F128, &qword_2759C3548);
    sub_27589EEEC();
    sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F138);
  }

  return result;
}

unint64_t sub_27589EEEC()
{
  result = qword_280A0F140;
  if (!qword_280A0F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F148, &qword_2759C3550);
    sub_27589B02C(&qword_280A0F150, &qword_280A0F158, &qword_2759C3558, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F140);
  }

  return result;
}

unint64_t sub_27589EFB8()
{
  result = qword_280A0F1B0;
  if (!qword_280A0F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F180, &qword_2759C3580);
    sub_27589F044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1B0);
  }

  return result;
}

unint64_t sub_27589F044()
{
  result = qword_280A0F1B8;
  if (!qword_280A0F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F178, &qword_2759C3578);
    sub_27589F0FC();
    sub_27589B02C(&qword_280A0F200, &qword_280A0F1A8, &qword_2759C8C00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1B8);
  }

  return result;
}

unint64_t sub_27589F0FC()
{
  result = qword_280A0F1C0;
  if (!qword_280A0F1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F1C8, &qword_2759C3610);
    sub_27589F1B4();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1C0);
  }

  return result;
}

unint64_t sub_27589F1B4()
{
  result = qword_280A0F1D0;
  if (!qword_280A0F1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F1D8, &qword_2759C3618);
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1D0);
  }

  return result;
}

uint64_t sub_27589F26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_27589F2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10C80;
  if (!qword_280A10C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C80);
  }

  return result;
}

double sub_27589F328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_27589F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F220;
  if (!qword_280A0F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F220);
  }

  return result;
}

uint64_t sub_27589F39C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27589F3E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27589F410(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_27589F458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27589F4B4()
{
  result = qword_280A0F240;
  if (!qword_280A0F240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F248, &qword_2759C36B0);
    sub_27589F5F4(&qword_280A0F250, &qword_280A0F110, &qword_2759C3508, sub_27589EE34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F240);
  }

  return result;
}

uint64_t sub_27589F5F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27589F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F2A0;
  if (!qword_280A0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F2A0);
  }

  return result;
}

uint64_t sub_27589F6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2759342A4(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

double sub_27589F7F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u && ((1 << a3) & 0x3CD) != 0)
  {
  }

  return result;
}

uint64_t sub_27589F81C(uint64_t a1)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v9 = *(v1 + 40);
  v10 = *(v1 + 32);
  v8 = *(v1 + 48);
  v4 = *(v1 + 57);
  v5 = *(v1 + 56);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_275934914(a1, v12, v11, v10, v9, v8, v5, v4);
}

unint64_t sub_27589F934()
{
  result = qword_280A0F2A8;
  if (!qword_280A0F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F268, &qword_2759C3718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F258, &qword_2759C3708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    v1 = sub_27589B02C(&qword_280A0F290, &qword_280A0F258, &qword_2759C3708, MEMORY[0x277CDF028]);
    sub_27589F2D4(v1, v2, v3);
    sub_27589F5F4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F2A8);
  }

  return result;
}

id ManageStorageViewInfo.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v41), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v37;
    v7 = v38;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x48656761726F7473, 0xED00007265646165), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v41), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v37;
    v12 = v38;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageHeaderText];
  *v13 = v11;
  v13[1] = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEA90), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v41), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v37;
  }

  else
  {
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v17 = objc_allocWithZone(type metadata accessor for ManageStorageBarColors());
  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors] = ManageStorageBarColors.init(_:)(v16);
  v18 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v19 = sub_27586F8A0(0x6569666963657073, 0xEA00000000007372);
    if (v20 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v19, v41), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v21 = v37;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    v24 = type metadata accessor for ManageStorageSpecifier();
    do
    {
      v25 = *v23;
      v26 = objc_allocWithZone(v24);
      swift_bridgeObjectRetain_n();
      ManageStorageSpecifier.init(_:)(v25);
      MEMORY[0x277C84160]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v27 = v18;

      ++v23;
      --v22;
    }

    while (v22);
  }

  else
  {
    v27 = v18;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_specifiers] = v27;
  if (!*(a1 + 16))
  {

    goto LABEL_34;
  }

  v28 = sub_27586F8A0(0xD000000000000011, 0x80000002759DEAB0);
  if ((v29 & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_275864C94(*(a1 + 56) + 32 * v28, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if (swift_dynamicCast())
  {
    v30 = v39;
    goto LABEL_36;
  }

LABEL_35:
  v30 = MEMORY[0x277D84F90];
LABEL_36:
  v41[0] = v18;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    v33 = type metadata accessor for ManageStorageTip();
    do
    {
      v34 = *v32;
      v35 = objc_allocWithZone(v33);
      swift_bridgeObjectRetain_n();
      ManageStorageTip.init(_:)(v34);
      MEMORY[0x277C84160]();
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v18 = v41[0];

      ++v32;
      --v31;
    }

    while (v31);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_tips] = v18;

  v40.receiver = v2;
  v40.super_class = type metadata accessor for ManageStorageViewInfo();
  return objc_msgSendSuper2(&v40, sel_init);
}

id sub_2758A024C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2759BA3D8();

  return v3;
}

id ManageStorageBarColors.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x746867696CLL, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v13), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v11;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_light] = v6;
  if (!*(a1 + 16) || (v7 = sub_27586F8A0(1802658148, 0xE400000000000000), (v8 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_275864C94(*(a1 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v9 = v11;
LABEL_12:
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_dark] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ManageStorageBarColors();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2758A050C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageBarColors();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

id ManageStorageSpecifier.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x696669746E656469, 0xEA00000000007265), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v27), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v27), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v24;
    v17 = v25;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle];
  *v18 = v16;
  *(v18 + 1) = v17;
  if (!*(a1 + 16) || (v19 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v20 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v19, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v21 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_22;
  }

  v21 = v24;
LABEL_22:
  v22 = objc_allocWithZone(type metadata accessor for ManageStorageAction());
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action] = ManageStorageAction.init(_:)(v21);
  v26.receiver = v2;
  v26.super_class = type metadata accessor for ManageStorageSpecifier();
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_2758A095C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageSpecifier();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

id sub_2758A09F0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2759BA258();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2758A0A7C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x656C746954627573;
    if (a1 != 2)
    {
      v5 = 0x557373696D736964;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6F6369;
    if (a1 != 6)
    {
      v1 = 0x6C6F626D79536673;
    }

    v2 = 0x726F68636E61;
    if (a1 != 4)
    {
      v2 = 0x736E6F69746361;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

id ManageStorageTip.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(25705, 0xE200000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v59), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v55;
    v7 = v56;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v59), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v55;
    v12 = v56;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title];
  *v13 = v11;
  v13[1] = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v59), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v55;
    v17 = v56;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle];
  *v18 = v16;
  v18[1] = v17;
  if (*(a1 + 16) && (v19 = sub_27586F8A0(0x557373696D736964, 0xEA00000000004C52), (v20 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v19, v59), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v55;
    v22 = v56;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_dismissURL];
  *v23 = v21;
  v23[1] = v22;
  if (*(a1 + 16) && (v24 = sub_27586F8A0(0x726F68636E61, 0xE600000000000000), (v25 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v24, v59), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v55;
    v27 = v56;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_anchor];
  *v28 = v26;
  v28[1] = v27;
  v29 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v30 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000);
    if (v31 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v30, v59), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v32 = v55;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v58 = v29;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (v32 + 32);
    v35 = type metadata accessor for ManageStorageAction();
    do
    {
      v36 = *v34;
      v37 = objc_allocWithZone(v35);
      swift_bridgeObjectRetain_n();
      ManageStorageAction.init(_:)(v36);
      MEMORY[0x277C84160]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v29 = v58;

      ++v34;
      --v33;
    }

    while (v33);
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions] = v29;
  v38 = *(a1 + 16);

  if (v38 && (v39 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v40 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v39, v59);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v41 = v55;
      goto LABEL_43;
    }
  }

  else
  {
  }

  v41 = sub_2758A2A88(MEMORY[0x277D84F90]);
LABEL_43:
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_48:
    v46 = 0;
    goto LABEL_49;
  }

  v43 = sub_27586F8A0(0x6C6F626D79536673, 0xEA00000000006449);
  if ((v44 & 1) == 0)
  {
    v42 = 0;
    goto LABEL_48;
  }

  sub_275864C94(*(v41 + 56) + 32 * v43, v59);
  v45 = swift_dynamicCast();
  v42 = v55;
  v46 = v56;
  if (!v45)
  {
    v42 = 0;
    v46 = 0;
  }

LABEL_49:
  v47 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol];
  *v47 = v42;
  *(v47 + 1) = v46;
  if (*(v41 + 16) && (v48 = sub_27586F8A0(0x6C6F626D79536673, 0xED0000726F6C6F43), (v49 & 1) != 0))
  {
    sub_275864C94(*(v41 + 56) + 32 * v48, v59);

    v50 = swift_dynamicCast();
    v51 = v55;
    v52 = v56;
    if (!v50)
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {

    v51 = 0;
    v52 = 0;
  }

  v53 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
  *v53 = v51;
  *(v53 + 1) = v52;

  v57.receiver = v2;
  v57.super_class = type metadata accessor for ManageStorageTip();
  return objc_msgSendSuper2(&v57, sel_init);
}

BOOL sub_2758A11FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C846A0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_15:
        __break(1u);
        return v2 != v4;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(v1 + 8 * v3 + 32);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }
    }

    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType];

    v3 = v4 + 1;
  }

  while ((v6 - 114) > 0xD || ((1 << (v6 - 114)) & 0x20F1) == 0);
  return v2 != v4;
}

BOOL sub_2758A1330()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions);
  if (v1 >> 62)
  {
LABEL_15:
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C846A0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        return v2 != v4;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType];

    v3 = v4 + 1;
  }

  while ((v6 - 109) > 2);
  return v2 != v4;
}

id ManageStorageTip.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2758A1588@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageTip();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

id sub_2758A1694(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {

    v3 = sub_2759BA1C8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id ManageStorageAction.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x6C75616665447369, 0xE900000000000074), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v43), swift_dynamicCast()))
  {
    v6 = v40;
  }

  else
  {
    v6 = 0;
  }

  v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDefault] = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_27586F8A0(0x7572747365447369, 0xED00006576697463);
    if ((v9 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v8, v43), swift_dynamicCast()))
    {
      LOBYTE(v7) = v40;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] = v7;
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v11 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v10, v43), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v40;
    v13 = v41;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title];
  *v14 = v12;
  v14[1] = v13;
  if (*(a1 + 16) && (v15 = sub_27586F8A0(0x52556E6F69746361, 0xE90000000000004CLL), (v16 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v15, v43), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v40;
    v18 = v41;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL];
  *v19 = v17;
  v19[1] = v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEB80);
    if (v22)
    {
      sub_275864C94(*(a1 + 56) + 32 * v21, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v23 = swift_dynamicCast();
      v20 = v40;
      if (!v23)
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionParameters] = v20;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = sub_27586F8A0(0x6D61726150797562, 0xED00007372657465);
    if (v26)
    {
      sub_275864C94(*(a1 + 56) + 32 * v25, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v27 = swift_dynamicCast();
      v24 = v40;
      if (!v27)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_buyParameters] = v24;
  if (*(a1 + 16) && (v28 = sub_27586F8A0(0x616D7269666E6F63, 0xEC0000006E6F6974), (v29 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v28, v43), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v30 = objc_allocWithZone(type metadata accessor for ManageStorageConfirmation());
    v31 = ManageStorageConfirmation.init(_:)(v40);
  }

  else
  {
    v31 = 0;
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation] = v31;
  if (!*(a1 + 16) || (v32 = sub_27586F8A0(0x79546E6F69746361, 0xEA00000000006570), (v33 & 1) == 0))
  {

    goto LABEL_43;
  }

  sub_275864C94(*(a1 + 56) + 32 * v32, v43);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v35 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_44;
  }

  v35 = v40;
  v34 = v41;
LABEL_44:
  v36 = &v2[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString];
  *v36 = v35;
  v36[1] = v34;

  v37 = sub_2759BA258();

  v38 = _ICQActionForString();

  *&v2[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] = v38;
  v42.receiver = v2;
  v42.super_class = type metadata accessor for ManageStorageAction();
  return objc_msgSendSuper2(&v42, sel_init);
}

id sub_2758A1CD0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
  v4 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title + 8);
  v5 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL + 8);
  v14 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v6 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionParameters);
  v7 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_buyParameters);
  v8 = type metadata accessor for Action();
  v9 = objc_allocWithZone(v8);

  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
  v10 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  *v10 = v2;
  v10[1] = v1;
  v11 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_title];
  *v11 = v4;
  v11[1] = v3;
  v12 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  *v12 = v14;
  v12[1] = v5;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = v6;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = v7;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
  v9[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
  v9[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
  v15.receiver = v9;
  v15.super_class = v8;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2758A1FAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageAction();
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

id sub_2758A2004(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2759BA258();

  return v3;
}

id sub_2758A2080(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  a4();

  v4 = sub_2759BA3D8();

  return v4;
}

id ManageStorageConfirmation.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v26), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v26), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v23;
    v12 = v24;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_subTitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (!*(a1 + 16) || (v14 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v15 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v14, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    *&v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions] = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v16 = MEMORY[0x277D84F90];
  v26[0] = MEMORY[0x277D84F90];
  v17 = *(v23 + 16);
  if (v17)
  {
    v18 = (v23 + 32);
    v19 = type metadata accessor for ManageStorageAction();
    do
    {
      v20 = *v18;
      v21 = objc_allocWithZone(v19);
      swift_bridgeObjectRetain_n();
      ManageStorageAction.init(_:)(v20);
      MEMORY[0x277C84160]();
      if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v16 = v26[0];

      ++v18;
      --v17;
    }

    while (v17);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions] = v16;
LABEL_22:
  v25.receiver = v2;
  v25.super_class = type metadata accessor for ManageStorageConfirmation();
  return objc_msgSendSuper2(&v25, sel_init);
}

id sub_2758A245C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2758A24F8(uint64_t a1)
{
  v2 = sub_2759BA858();

  return sub_2758A25CC(a1, v2);
}

unint64_t sub_2758A253C(uint64_t a1)
{
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v2 = sub_2759BAC08();

  return sub_2758A2694(a1, v2);
}

unint64_t sub_2758A25CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2758A3324(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C84600](v9, a1);
      sub_275864C40(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2758A2694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2759BA298();
      v8 = v7;
      if (v6 == sub_2759BA298() && v8 == v9)
      {
        break;
      }

      v11 = sub_2759BAAC8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2758A2798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C0, &unk_2759C3980);
    v3 = sub_2759BAA28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_27586F8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_2758A289C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
    v7 = sub_2759BAA28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_27586FBC8(v9, v5, &qword_280A0EC08, &unk_2759CCBF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_27586F8A0(*v5, v12);
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
      v18 = sub_2759B8AF8();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2758A2A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F400, &unk_2759C39C0);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, &v13, &qword_280A0F408, qword_2759CC3C0);
      v5 = v13;
      v6 = v14;
      result = sub_27586F8A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2758A2ECC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2758A2DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D0, &qword_2759C3998);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, &v11, &unk_280A0EF50, &qword_2759C2EF0);
      v5 = v11;
      result = sub_2758A253C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2758A2ECC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_2758A2ECC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2758A2EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
    v3 = sub_2759BAA28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2758A253C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2758A2FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F8, &qword_2759C39B8);
    v3 = sub_2759BAA28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2758A253C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2758A30D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
    v3 = sub_2759BAA28();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_27586F8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_2758A31E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, v13, &qword_280A0F3E0, &qword_2759C39A0);
      result = sub_2758A24F8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2758A2ECC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2758A33AC()
{
  sub_2759BABD8();
  sub_2759BA328();
  v0 = sub_2759BAC08();

  return sub_2758A3380(v0);
}

uint64_t sub_2758A3430()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2758A34DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2758A3588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F550, &qword_2759C3D58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C39D0;
  v59 = *MEMORY[0x277CB8960];
  *(inited + 32) = *MEMORY[0x277CB8960];
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000002759DF470;
  v58 = *MEMORY[0x277CB8A08];
  *(inited + 56) = *MEMORY[0x277CB8A08];
  *(inited + 64) = 0xD000000000000019;
  v57 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  *(inited + 72) = 0x80000002759DF470;
  *(inited + 80) = v1;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002759DF490;
  v56 = *MEMORY[0x277CB89C0];
  *(inited + 104) = *MEMORY[0x277CB89C0];
  *(inited + 112) = 0xD000000000000016;
  v55 = *MEMORY[0x277CB8A58];
  v2 = *MEMORY[0x277CB8A58];
  *(inited + 120) = 0x80000002759DDD10;
  *(inited + 128) = v2;
  v3 = MEMORY[0x277CB89D8];
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x80000002759DF4B0;
  v54 = *v3;
  *(inited + 152) = *v3;
  *(inited + 160) = 0xD000000000000013;
  v53 = *MEMORY[0x277CB89F8];
  v4 = *MEMORY[0x277CB89F8];
  *(inited + 168) = 0x80000002759DF4D0;
  *(inited + 176) = v4;
  *(inited + 184) = 0xD000000000000015;
  *(inited + 192) = 0x80000002759DF4F0;
  v52 = *MEMORY[0x277CB8920];
  *(inited + 200) = *MEMORY[0x277CB8920];
  *(inited + 208) = 0xD000000000000016;
  v51 = *MEMORY[0x277CB89A0];
  v5 = *MEMORY[0x277CB89A0];
  *(inited + 216) = 0x80000002759DF510;
  *(inited + 224) = v5;
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x80000002759DF530;
  v50 = *MEMORY[0x277CB8958];
  *(inited + 248) = *MEMORY[0x277CB8958];
  *(inited + 256) = 0xD000000000000013;
  v49 = *MEMORY[0x277CB8968];
  v6 = *MEMORY[0x277CB8968];
  *(inited + 264) = 0x80000002759DF550;
  *(inited + 272) = v6;
  *(inited + 280) = 0xD00000000000001BLL;
  *(inited + 288) = 0x80000002759DF570;
  v48 = *MEMORY[0x277CB8A18];
  *(inited + 296) = *MEMORY[0x277CB8A18];
  *(inited + 304) = 0xD000000000000013;
  v47 = *MEMORY[0x277CB8928];
  v7 = *MEMORY[0x277CB8928];
  *(inited + 312) = 0x80000002759DF590;
  *(inited + 320) = v7;
  v8 = MEMORY[0x277CB89F0];
  *(inited + 328) = 0xD000000000000016;
  *(inited + 336) = 0x80000002759DF5B0;
  v9 = *v8;
  *(inited + 344) = *v8;
  strcpy((inited + 352), "com.apple.news");
  v10 = *MEMORY[0x277CB8A50];
  *(inited + 367) = -18;
  *(inited + 368) = v10;
  v11 = MEMORY[0x277CB89A8];
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x80000002759DF5D0;
  v12 = *v11;
  *(inited + 392) = *v11;
  strcpy((inited + 400), "com.apple.Home");
  v13 = *MEMORY[0x277CB8990];
  *(inited + 415) = -18;
  *(inited + 416) = v13;
  v14 = MEMORY[0x277CB8A40];
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x80000002759DF5F0;
  v15 = *v14;
  *(inited + 440) = *v14;
  *(inited + 448) = 0xD000000000000012;
  v16 = *MEMORY[0x277CB8998];
  *(inited + 456) = 0x80000002759DF610;
  *(inited + 464) = v16;
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x80000002759DF630;
  v17 = *MEMORY[0x277CB89E0];
  *(inited + 488) = *MEMORY[0x277CB89E0];
  *(inited + 496) = 0xD000000000000011;
  v18 = *MEMORY[0x277CB8A00];
  *(inited + 504) = 0x80000002759DF650;
  *(inited + 512) = v18;
  v46 = objc_opt_self();
  v19 = v59;
  v20 = v58;
  v21 = v57;
  v22 = v56;
  v23 = v55;
  v24 = v54;
  v25 = v53;
  v26 = v52;
  v27 = v51;
  v28 = v50;
  v29 = v49;
  v30 = v48;
  v31 = v47;
  v32 = v9;
  v33 = v10;
  v34 = v12;
  v35 = v13;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = [v46 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v42 = "com.apple.facetime";
  v43 = 0xD000000000000015;
  if (v41)
  {
    v43 = 0xD000000000000012;
    v42 = "com.apple.journal";
  }

  *(inited + 520) = v43;
  *(inited + 528) = v42 | 0x8000000000000000;
  v44 = sub_2758A2FD4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F558, &qword_2759C3D60);
  result = swift_arrayDestroy();
  qword_280A23870 = v44;
  return result;
}

uint64_t sub_2758A3A54()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();
}

uint64_t sub_2758A3AF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  *a2 = *(v3 + 24);
}

uint64_t sub_2758A3BD0(uint64_t a1)
{

  v3 = sub_2759B9C08();

  if (v3)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8628();
  }
}

uint64_t sub_2758A3D24()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();
}

uint64_t sub_2758A3DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  *a2 = *(v3 + 32);
}

uint64_t sub_2758A3EA0(uint64_t a1)
{

  v3 = sub_2759B9C08();

  if (v3)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8628();
  }
}

double sub_2758A3FF4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  return *(v0 + 40);
}

double sub_2758A4094@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_2758A4164(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8628();
  }
}

uint64_t sub_2758A427C()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2758A432C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

double sub_2758A43D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2758A4418(v1, v2);
}

double sub_2758A4418(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_2759BAAC8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8628();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

void sub_2758A4588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_2758A45C4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  return *(v0 + 64);
}

uint64_t sub_2758A4664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
  sub_2759B8638();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_2758A4734(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_2758A484C()
{

  v1 = OBJC_IVAR____TtC14iCloudSettings27ThermometerSectionViewModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2758A4908(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v46 = sub_2759B9BF8();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer) + OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_36;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v53 = MEMORY[0x277D84F90];

    sub_2759BA968();
    if (v7 < 0)
    {
      __break(1u);
    }

    v42 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v6)
    {
      v9 = sub_2759BA9E8();
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v50 = v5 & 0xC000000000000001;
    v48 = OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_light;
    v47 = OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_dark;
    v43 = v5;
    v41 = v5 + 32;
    v11 = (v3 + 104);
    v51 = v9 & ~(v9 >> 63);
    v5 = 40;
    v44 = *MEMORY[0x277CE0EE0];
    v49 = v7;
    while (1)
    {
      if (v51 == v10)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v7 = sub_2759BA9E8();
        goto LABEL_3;
      }

      if (v50)
      {
        v15 = MEMORY[0x277C846A0](v10, v43);
      }

      else
      {
        if (v10 >= *(v42 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v41 + 8 * v10);
      }

      v16 = v15;
      v17 = *(a1 + v48);
      v18 = *(v17 + 16);
      if (v10 < v18)
      {
        break;
      }

      if (v18)
      {
        v24 = (v17 + 16 + 16 * v18);
        v19 = *v24;
        v20 = v24[1];
        v52 = 0;
        v25 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v26 = sub_2759BA258();
        v27 = [v25 initWithString_];

        v3 = [v27 scanHexLongLong_];
        if (!v3)
        {
LABEL_22:
          v23 = sub_27594972C(v19, v20);
          goto LABEL_23;
        }

LABEL_19:
        (*v11)(v45, v44, v46);
        v23 = sub_2759B9C78();
LABEL_23:
        v28 = v23;

        goto LABEL_24;
      }

      v39 = [objc_opt_self() quaternaryLabelColor];
      v28 = sub_2759B9BD8();
LABEL_24:
      v29 = *(a1 + v47);
      v30 = *(v29 + 16);
      if (v10 >= v30)
      {
        if (!v30)
        {
          v40 = [objc_opt_self() quaternaryLabelColor];
          v13 = sub_2759B9BD8();
          goto LABEL_11;
        }

        v36 = (v29 + 16 + 16 * v30);
        v31 = *v36;
        v32 = v36[1];
        v52 = 0;
        v37 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v38 = sub_2759BA258();
        v3 = [v37 initWithString_];

        LODWORD(v38) = [v3 scanHexLongLong_];
        if (!v38)
        {
LABEL_29:
          v12 = sub_27594972C(v31, v32);
          goto LABEL_10;
        }
      }

      else
      {
        v31 = *(v29 + v5 - 8);
        v32 = *(v29 + v5);
        v52 = 0;
        v33 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v34 = sub_2759BA258();
        v35 = [v33 initWithString_];

        v3 = [v35 scanHexLongLong_];
        if (!v3)
        {
          goto LABEL_29;
        }
      }

      (*v11)(v45, v44, v46);
      v12 = sub_2759B9C78();
LABEL_10:
      v13 = v12;

LABEL_11:
      ++v10;
      type metadata accessor for ThermometerSectionViewModel(0);
      v14 = swift_allocObject();
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      sub_2759B8668();
      *(v14 + 16) = v16;
      *(v14 + 24) = v28;
      *(v14 + 32) = v13;
      *(v14 + 40) = 0x4018000000000000;
      sub_2759BA948();
      v6 = *(v53 + 16);
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      v5 += 16;
      if (v49 == v10)
      {

        return v53;
      }
    }

    v19 = *(v17 + v5 - 8);
    v20 = *(v17 + v5);
    v52 = 0;
    v21 = objc_allocWithZone(MEMORY[0x277CCAC80]);

    v22 = sub_2759BA258();
    v3 = [v21 initWithString_];

    LOBYTE(v22) = [v3 scanHexLongLong_];
    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2758A4F28()
{
  result = sub_2759BA258();
  qword_280A0F410 = result;
  return result;
}

id static ManageStorageAppsListViewModel.ViewModelDidUpdateNotificationName.getter()
{
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0F410;

  return v1;
}

void *sub_2758A5018()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  v2 = v1;
  return v1;
}

id sub_2758A50C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  *a2 = v4;

  return v4;
}

void sub_2758A5188(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758A51B8(v1);
}

void sub_2758A51B8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for ManageStorageAppsListDataModel();
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2758A5340@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_2758A53F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758A5424(v1);
}

void sub_2758A5424(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8628();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for iCloudHomeViewModel(0);
  v3 = v2;
  v4 = sub_2759BA788();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2758A55C4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();
}

uint64_t sub_2758A5670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
}

uint64_t sub_2758A5724(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8628();
}

uint64_t sub_2758A57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758A5888, v6, v5);
}

uint64_t sub_2758A5888()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong topViewController];

    if (v3)
    {
      v4 = [v3 navigationItem];

      if (v4)
      {
        if (*(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem))
        {
          [v4 setRightBarButtonItem_];
        }
      }
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758A596C()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled);
}

uint64_t sub_2758A5A14(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  return result;
}

id sub_2758A5B3C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v56 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_2759B89A8();
  v60 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v55 - v10;
  v11 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel] = 0;
  v12 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__homeViewModel;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections] = MEMORY[0x277D84F90];
  v14 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps] = v13;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps] = v13;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels] = v13;
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete] = xmmword_2759C39E0;
  v15 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId];
  *v16 = 0;
  v16[1] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation] = 1;
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem] = 0;
  sub_2759B8668();
  v17 = a2;
  MEMORY[0x277C85960](&v4[v12]);
  swift_unknownObjectWeakInit();

  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account] = a1;
  v59 = v17;
  LOBYTE(v12) = *(v17 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_launchedFromRootLevel);
  v18 = type metadata accessor for ManageStorageAppsListDataController();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v19[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v19[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v19[v20] = 1;
  type metadata accessor for iCloudNetworkRequest(0);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v12;
  v22 = a1;
  sub_2759B8718();
  v23 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v19[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v21;
  v64.receiver = v19;
  v64.super_class = v18;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appsListDataController] = objc_msgSendSuper2(&v64, sel_init);
  v24 = *&v4[v11];
  v25 = v56;
  v57 = v56;

  *&v4[v11] = v25;
  v26 = objc_allocWithZone(sub_2759B8698());
  v27 = v22;
  v28 = sub_2759B8688();
  v29 = sub_2758ACDE0(&qword_280A0FED0, MEMORY[0x277D7F240], MEMORY[0x277D7F450]);
  v30 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource];
  *v30 = v28;
  v30[1] = v29;
  v31 = type metadata accessor for ICSAnalyticsController();
  v32 = objc_allocWithZone(v31);
  v33 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v32[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v34 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v32[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  v35 = objc_allocWithZone(type metadata accessor for iCloudHomeDataController());
  v36 = v27;
  v37 = [v35 initWithAccount:v36 launchedFromRootLevel:1];
  v38 = *&v32[v33];
  *&v32[v33] = v37;

  v39 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
  v40 = *&v32[v34];
  *&v32[v34] = v39;

  v63.receiver = v32;
  v63.super_class = v31;
  v41 = objc_msgSendSuper2(&v63, sel_init);

  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController] = v41;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v7, qword_280A238D0);
  v43 = v60;
  v44 = *(v60 + 16);
  v45 = v55;
  v44(v55, v42, v7);
  v46 = type metadata accessor for ManageStorageAnalytics();
  v47 = swift_allocObject();
  v47[8] = 0;
  v47[9] = 0;
  v47[7] = 0;
  v44(v58, v45, v7);
  v47[5] = sub_2759B8928();
  v47[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v47 + 2);
  sub_2759B8908();
  (*(v43 + 8))(v45, v7);
  v48 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController];
  v48[3] = v46;
  v48[4] = &off_288485F28;
  *v48 = v47;
  v62.receiver = v4;
  v62.super_class = ObjectType;
  v49 = objc_msgSendSuper2(&v62, sel_init);
  v50 = objc_opt_self();
  v51 = v49;
  v52 = [v50 defaultCenter];
  [v52 addObserver:v51 selector:sel_handleQuotaChangeNotification name:*MEMORY[0x277D7F2C0] object:0];

  v53 = [v50 defaultCenter];
  [v53 addObserver:v51 selector:sel_handleQuotaChangeNotification name:*MEMORY[0x277D7F4E8] object:0];

  sub_2758A61BC();
  return v51;
}

void sub_2758A61BC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v1 setHidesWhenStopped_];
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator);
  *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator) = v1;
  v3 = v1;

  v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v4 setHidden_];

  v5 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
  *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem) = v4;
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.handleQuotaChangeNotification()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_2759BA518();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_27587D460(0, 0, v3, &unk_2759C3A00, v5);
}

uint64_t sub_2758A6384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 1);
}

uint64_t sub_2758A641C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758A6384();
}

uint64_t ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(char a1, char a2)
{
  *(v3 + 280) = v2;
  *(v3 + 393) = a2;
  *(v3 + 392) = a1;
  *(v3 + 288) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2758A6548, 0, 0);
}

uint64_t sub_2758A6548()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList;
  *(v0 + 296) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList;
  if (*(v1 + v2))
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 392);
    *(v1 + v2) = 1;
    v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController;
    *(v0 + 304) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController;
    __swift_project_boxed_opaque_existential_1((v1 + v6), *(v1 + v6 + 24));
    sub_27598B078();
    if (v5 == 1 && (v7 = *(v0 + 280), swift_getKeyPath(), *(v0 + 272) = v7, sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel), sub_2759B8638(), , Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 312) = Strong) != 0))
    {
      v9 = swift_task_alloc();
      *(v0 + 320) = v9;
      *v9 = v0;
      v9[1] = sub_2758A6764;

      return sub_27588A44C(0);
    }

    else
    {
      v10 = swift_task_alloc();
      *(v0 + 328) = v10;
      *v10 = v0;
      v10[1] = sub_2758A6904;

      return sub_27589B420();
    }
  }
}

uint64_t sub_2758A6764()
{

  return MEMORY[0x2822009F8](sub_2758A6860, 0, 0);
}

uint64_t sub_2758A6860()
{
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_2758A6904;

  return sub_27589B420();
}

uint64_t sub_2758A6904(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_2758A824C;
  }

  else
  {
    v4 = sub_2758A6A18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2758A6A18()
{
  v4 = *(v0 + 336);
  v5 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps;
  *(v0 + 352) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps;
  v6 = *(v4 + v5);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_118;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2759BA9E8())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v96 = MEMORY[0x277D84F90];

      v9 = &v96;
      sub_2759BA968();
      if ((i & 0x8000000000000000) == 0)
      {
        v87 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v7)
        {
          v11 = sub_2759BA9E8();
        }

        else
        {
          v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 0;
        v90 = v6 & 0xC000000000000001;
        v91 = v11 & ~(v11 >> 63);
        v88 = i;
        v89 = v6;
        while (v91 != v12)
        {
          if (v90)
          {
            v13 = MEMORY[0x277C846A0](v12, v6);
          }

          else
          {
            if (v12 >= *(v87 + 16))
            {
              goto LABEL_117;
            }

            v13 = *(v6 + 8 * v12 + 32);
          }

          v92 = v13;
          *(v0 + 80) = &type metadata for DefaultApplicationRecordProvider;
          *(v0 + 88) = &off_28847F8A0;
          v14 = type metadata accessor for DefaultIconLoader();
          v15 = objc_allocWithZone(v14);
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
          *(v0 + 120) = &type metadata for DefaultApplicationRecordProvider;
          *(v0 + 128) = &off_28847F8A0;
          sub_27586E058(v0 + 96, v15 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
          *(v0 + 240) = v15;
          *(v0 + 248) = v14;
          v16 = objc_msgSendSuper2((v0 + 240), sel_init);
          __swift_destroy_boxed_opaque_existential_1((v0 + 96));
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          *(v0 + 40) = v14;
          *(v0 + 48) = &off_28847F800;
          *(v0 + 16) = v16;
          v17 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v14);
          v18 = *(v14 - 1);
          v1 = swift_task_alloc();
          (*(v18 + 16))(v1, v17, v14);
          v19 = *v1;
          *(v0 + 160) = v14;
          *(v0 + 168) = &off_28847F800;
          *(v0 + 136) = v19;
          v20 = type metadata accessor for ManageStorageAppViewModel(0);
          v2 = objc_allocWithZone(v20);
          v21 = *(v0 + 160);
          v22 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v21);
          v23 = *(v21 - 8);
          v3 = swift_task_alloc();
          (*(v23 + 16))(v3, v22, v21);
          v24 = *v3;
          *(v0 + 200) = v14;
          *(v0 + 208) = &off_28847F800;
          *(v0 + 176) = v24;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage) = 0;
          v25 = (v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
          *v25 = 0;
          v25[1] = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) = 0;
          v26 = v92;
          sub_2759B8668();
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) = v26;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index) = v12;
          sub_27586E058(v0 + 176, v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_iconLoader);
          *(v0 + 256) = v2;
          *(v0 + 264) = v20;
          objc_msgSendSuper2((v0 + 256), sel_init);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));

          __swift_destroy_boxed_opaque_existential_1((v0 + 16));

          sub_2759BA948();
          v7 = *(v96 + 16);
          sub_2759BA978();
          sub_2759BA988();
          sub_2759BA958();
          ++v12;
          v6 = v89;
          if (v88 == v12)
          {

            v9 = v96;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_113;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_16:
    v7 = *(v0 + 280);
    v27 = *(v0 + 393);
    i = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    *(v0 + 360) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    swift_beginAccess();
    *(v7 + i) = v9;

    if (v27)
    {
      v28 = *(v0 + 280);
      v29 = swift_task_alloc();
      *(v0 + 368) = v29;
      *(v29 + 16) = v28;
      v30 = swift_task_alloc();
      *(v0 + 376) = v30;
      *v30 = v0;
      *(v30 + 8) = sub_2758A7650;
      v31 = MEMORY[0x277D84F78] + 8;
      v32 = &unk_2759C3A20;
      v33 = MEMORY[0x277D84F78] + 8;
      v34 = 0;
      v35 = 0;
      v36 = v29;
      v37 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600](v30, v31, v33, v34, v35, v32, v36, v37);
    }

    v2 = *(v0 + 336);
    v10 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
    v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
    v1 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
    if (v1 < 0)
    {
      goto LABEL_120;
    }

    v9 = *(*(v0 + 280) + *(v0 + 360));
    v10 = (v9 & 0xFFFFFFFFFFFFFF8);
    i = v9 >> 62;
    if (!(v9 >> 62))
    {
      v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 >= v1)
      {
        v39 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
      }

      else
      {
        v39 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1)
      {
        v1 = v39;
      }

      else
      {
        v1 = 0;
      }

      if (v38 < v1)
      {
        goto LABEL_134;
      }

      goto LABEL_29;
    }

LABEL_121:
    if (v9 < 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = v10;
    }

    v80 = sub_2759BA9E8();
    v30 = sub_2759BA9E8();
    if (v30 < 0)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      return MEMORY[0x282200600](v30, v31, v33, v34, v35, v32, v36, v37);
    }

    if (v80 >= v1)
    {
      v81 = v1;
    }

    else
    {
      v81 = v80;
    }

    if (v80 < 0)
    {
      v81 = v1;
    }

    if (v1)
    {
      v1 = v81;
    }

    else
    {
      v1 = 0;
    }

    if (sub_2759BA9E8() < v1)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_29:
    if ((v9 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v1)
      {
        type metadata accessor for ManageStorageAppViewModel(0);
        v40 = 0;
        do
        {
          v41 = v40 + 1;
          sub_2759BA8F8();
          v40 = v41;
        }

        while (v1 != v41);
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (i)
    {
      v43 = sub_2759BA9F8();
      v44 = v45;
      v42 = v46;
      v1 = v47;

      if ((v1 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v42 = 0;
      v43 = v9 & 0xFFFFFFFFFFFFFF8;
      v44 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v1 = (2 * v1) | 1;
      if ((v1 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      swift_unknownObjectRelease();
      v50 = MEMORY[0x277D84F90];
    }

    v51 = *(v50 + 16);

    if (__OFSUB__(v1 >> 1, v42))
    {
      __break(1u);
LABEL_154:
      swift_unknownObjectRelease_n();
LABEL_39:
      sub_2758AC780(v43, v44, v42, v1);
      v7 = v48;
      v49 = MEMORY[0x277D84F90];
LABEL_46:
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    if (v51 != (v1 >> 1) - v42)
    {
      goto LABEL_154;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v49 = MEMORY[0x277D84F90];
    if (!v7)
    {
      v7 = MEMORY[0x277D84F90];
      goto LABEL_46;
    }

LABEL_47:
    v96 = v49;
    if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
    {
      v6 = *(v7 + 16);
      goto LABEL_50;
    }

LABEL_135:
    v6 = sub_2759BA9E8();
LABEL_50:
    v52 = MEMORY[0x277D84F90];
    if (!v6)
    {
      break;
    }

    v93 = v3;
    v94 = v2;
    v53 = 0;
    v3 = (v7 & 0xC000000000000001);
    v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    while (1)
    {
      if (v3)
      {
        v54 = MEMORY[0x277C846A0](v53, v7);
      }

      else
      {
        if (v53 >= *(v7 + 16))
        {
          goto LABEL_114;
        }

        v54 = *(v7 + 8 * v53 + 32);
      }

      v1 = v54;
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (*(*&v54[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        sub_2759BA978();
        sub_2759BA988();
        sub_2759BA958();
      }

      else
      {
      }

      ++v53;
      if (v55 == v6)
      {
        v56 = v96;
        v52 = MEMORY[0x277D84F90];
        v3 = v93;
        v2 = v94;
        goto LABEL_63;
      }
    }

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
    ;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_63:
  v57 = *(v0 + 352);
  v58 = *(v0 + 336);
  v59 = *(v0 + 280);

  *(v59 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v56;

  v60 = *(v3 + v2);
  v61 = *(v58 + v57);
  if (v61 >> 62)
  {
    v62 = sub_2759BA9E8();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = *(v0 + 360);
  v64 = *(v0 + 280);
  if (v62 < v60)
  {
    v60 = v62;
  }

  v7 = *(v64 + v63);
  if (v7 >> 62)
  {
    v65 = sub_2759BA9E8();
    v7 = *(v64 + v63);
  }

  else
  {
    v65 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v65 < v60)
  {
    v60 = v65;
  }

  v1 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v66 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66 >= v60)
    {
      goto LABEL_73;
    }

LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    v64 = v7;
  }

  else
  {
    v64 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v30 = sub_2759BA9E8();
  if (v30 < v60)
  {
    goto LABEL_159;
  }

  v66 = v30;
  if (sub_2759BA9E8() < v60)
  {
    __break(1u);
    goto LABEL_144;
  }

LABEL_73:
  if (v60 < 0)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v1)
  {
    v67 = sub_2759BA9E8();
  }

  else
  {
    v67 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v67 < v66)
  {
    goto LABEL_146;
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if ((v7 & 0xC000000000000001) == 0 || v60 == v66)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_86;
  }

  if (v60 >= v66)
  {
    __break(1u);
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  type metadata accessor for ManageStorageAppViewModel(0);
  swift_bridgeObjectRetain_n();
  v68 = v60;
  do
  {
    v69 = v68 + 1;
    sub_2759BA8F8();
    v68 = v69;
  }

  while (v66 != v69);
LABEL_86:

  if (v1)
  {
    v64 = sub_2759BA9F8();
    v1 = v70;
    v60 = v71;
    v66 = v72;

    if (v66)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v64 = v7 & 0xFFFFFFFFFFFFFF8;
  v1 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v66 = (2 * v66) | 1;
  if ((v66 & 1) == 0)
  {
LABEL_90:
    sub_2758AC780(v64, v1, v60, v66);
    v7 = v73;
    goto LABEL_97;
  }

LABEL_91:
  sub_2759BAAD8();
  swift_unknownObjectRetain_n();
  v74 = swift_dynamicCastClass();
  if (!v74)
  {
    swift_unknownObjectRelease();
    v74 = MEMORY[0x277D84F90];
  }

  v75 = *(v74 + 16);

  if (__OFSUB__(v66 >> 1, v60))
  {
    goto LABEL_156;
  }

  if (v75 != (v66 >> 1) - v60)
  {
LABEL_157:
    swift_unknownObjectRelease_n();
    goto LABEL_90;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_97:
    swift_unknownObjectRelease();
  }

  v96 = v52;
  if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
  {
    v6 = *(v7 + 16);
    if (!v6)
    {
      goto LABEL_149;
    }

    goto LABEL_101;
  }

LABEL_148:
  v6 = sub_2759BA9E8();
  if (v6)
  {
LABEL_101:
    v76 = 0;
    v2 = (v7 & 0xC000000000000001);
    v3 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    while (1)
    {
      if (v2)
      {
        v77 = MEMORY[0x277C846A0](v76, v7);
      }

      else
      {
        if (v76 >= *(v7 + 16))
        {
          goto LABEL_116;
        }

        v77 = *(v7 + 8 * v76 + 32);
      }

      v1 = v77;
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_115;
      }

      if (*(*&v77[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        sub_2759BA978();
        sub_2759BA988();
        sub_2759BA958();
      }

      else
      {
      }

      ++v76;
      if (v78 == v6)
      {
        v79 = v96;
        goto LABEL_150;
      }
    }
  }

LABEL_149:
  v79 = MEMORY[0x277D84F90];
LABEL_150:
  v82 = *(v0 + 296);
  v83 = *(v0 + 280);

  *(v83 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v79;

  *(v83 + v82) = 0;
  sub_2759BA4C8();
  *(v0 + 384) = sub_2759BA4B8();
  v85 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758A7EB8, v85, v84);
}

uint64_t sub_2758A7650()
{

  return MEMORY[0x2822009F8](sub_2758A7768, 0, 0);
}

uint64_t sub_2758A7768()
{
  v60 = v2;
  v4 = v2[42];
  v5 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
  v7 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_97;
  }

  v1 = *(v2[35] + v2[45]);
  v5 = (v1 & 0xFFFFFFFFFFFFFF8);
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_98;
  }

  v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v7)
  {
    v9 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  if (v8 >= v7)
  {
    goto LABEL_10;
  }

LABEL_111:
  __break(1u);
LABEL_112:
  for (i = sub_2759BA9E8(); ; i = *(v0 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v57 = v4;
      v3 = 0;
      v4 = v0 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v22 = MEMORY[0x277C846A0](v3, v0);
        }

        else
        {
          v5 = *(v0 + 16);
          if (v3 >= v5)
          {
            goto LABEL_94;
          }

          v22 = *(v0 + 8 * v3 + 32);
        }

        v7 = v22;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (*(*&v22[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
        {
          sub_2759BA948();
          sub_2759BA978();
          sub_2759BA988();
          v1 = &v59;
          sub_2759BA958();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v23 = v59;
          v6 = MEMORY[0x277D84F90];
          v4 = v57;
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_44:
    v24 = v2[44];
    v25 = v2[42];
    v26 = v2[35];

    *(v26 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v23;

    v1 = *(v4 + v58);
    v27 = *(v25 + v24);
    if (v27 >> 62)
    {
      v28 = sub_2759BA9E8();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v2[45];
    v30 = v2[35];
    if (v28 < v1)
    {
      v1 = v28;
    }

    v31 = *(v30 + v29);
    if (v31 >> 62)
    {
      v32 = sub_2759BA9E8();
      v31 = *(v30 + v29);
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32 < v1)
    {
      v1 = v32;
    }

    v7 = v31 >> 62;
    if (v31 >> 62)
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        v30 = v31;
      }

      else
      {
        v30 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      v47 = sub_2759BA9E8();
      if (v47 < v1)
      {
        goto LABEL_136;
      }

      v33 = v47;
      if (sub_2759BA9E8() < v1)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33 < v1)
      {
        goto LABEL_121;
      }
    }

    if (v1 < 0)
    {
      goto LABEL_122;
    }

    if (v7)
    {
      v34 = sub_2759BA9E8();
    }

    else
    {
      v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34 < v33)
    {
      goto LABEL_123;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    if ((v31 & 0xC000000000000001) == 0 || v1 == v33)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v1 >= v33)
      {
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        swift_unknownObjectRelease_n();
LABEL_71:
        sub_2758AC780(v30, v7, v1, v33);
        v31 = v40;
LABEL_78:
        swift_unknownObjectRelease();
        goto LABEL_79;
      }

      type metadata accessor for ManageStorageAppViewModel(0);
      swift_bridgeObjectRetain_n();
      v35 = v1;
      do
      {
        v36 = v35 + 1;
        sub_2759BA8F8();
        v35 = v36;
      }

      while (v33 != v36);
    }

    if (v7)
    {
      v30 = sub_2759BA9F8();
      v7 = v37;
      v1 = v38;
      v33 = v39;

      if ((v33 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v30 = v31 & 0xFFFFFFFFFFFFFF8;
      v7 = (v31 & 0xFFFFFFFFFFFFFF8) + 32;
      v33 = (2 * v33) | 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      v41 = MEMORY[0x277D84F90];
    }

    v42 = *(v41 + 16);

    if (__OFSUB__(v33 >> 1, v1))
    {
      goto LABEL_133;
    }

    if (v42 != (v33 >> 1) - v1)
    {
      goto LABEL_134;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v31)
    {
      v31 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

LABEL_79:
    v59 = v6;
    if ((v31 & 0x8000000000000000) == 0 && (v31 & 0x4000000000000000) == 0)
    {
      v43 = *(v31 + 16);
      if (!v43)
      {
        break;
      }

      goto LABEL_82;
    }

LABEL_125:
    v43 = sub_2759BA9E8();
    if (!v43)
    {
      break;
    }

LABEL_82:
    v3 = 0;
    v4 = v31 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v44 = MEMORY[0x277C846A0](v3, v31);
      }

      else
      {
        v5 = *(v31 + 16);
        if (v3 >= v5)
        {
          goto LABEL_96;
        }

        v44 = *(v31 + 8 * v3 + 32);
      }

      v7 = v44;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(*&v44[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        sub_2759BA978();
        sub_2759BA988();
        v1 = &v59;
        sub_2759BA958();
      }

      else
      {
      }

      ++v3;
      if (v6 == v43)
      {
        v45 = v59;
        goto LABEL_127;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    if (v1 < 0)
    {
      v0 = v1;
    }

    else
    {
      v0 = v5;
    }

    v46 = sub_2759BA9E8();
    v47 = sub_2759BA9E8();
    if (v47 < 0)
    {
      __break(1u);
LABEL_136:
      __break(1u);
      return MEMORY[0x2822009F8](v47, v48, v49);
    }

    if (v46 >= v7)
    {
      v50 = v7;
    }

    else
    {
      v50 = v46;
    }

    if (v46 < 0)
    {
      v50 = v7;
    }

    if (v7)
    {
      v7 = v50;
    }

    else
    {
      v7 = 0;
    }

    if (sub_2759BA9E8() < v7)
    {
      goto LABEL_111;
    }

LABEL_10:
    if ((v1 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        type metadata accessor for ManageStorageAppViewModel(0);
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_2759BA8F8();
          v10 = v11;
        }

        while (v7 != v11);
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v3)
    {
      v13 = sub_2759BA9F8();
      v14 = v15;
      v12 = v16;
      v7 = v17;

      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 0;
      v13 = v1 & 0xFFFFFFFFFFFFFF8;
      v14 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v7 = (2 * v7) | 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v1 = sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x277D84F90];
    }

    v20 = *(v19 + 16);

    if (__OFSUB__(v7 >> 1, v12))
    {
      __break(1u);
LABEL_131:
      swift_unknownObjectRelease_n();
LABEL_20:
      sub_2758AC780(v13, v14, v12, v7);
      v0 = v18;
LABEL_27:
      swift_unknownObjectRelease();
      goto LABEL_28;
    }

    if (v20 != (v7 >> 1) - v12)
    {
      goto LABEL_131;
    }

    v0 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v0)
    {
      v0 = MEMORY[0x277D84F90];
      goto LABEL_27;
    }

LABEL_28:
    v58 = v6;
    v59 = MEMORY[0x277D84F90];
    if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
    {
      goto LABEL_112;
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_127:
  v51 = v2[37];
  v52 = v2[35];

  *(v52 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v45;

  *(v52 + v51) = 0;
  sub_2759BA4C8();
  v2[48] = sub_2759BA4B8();
  v53 = sub_2759BA468();
  v55 = v54;
  v47 = sub_2758A7EB8;
  v48 = v53;
  v49 = v55;

  return MEMORY[0x2822009F8](v47, v48, v49);
}

void sub_2758A7EB8()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[35];

  sub_2758A9E78(v3, v1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2758A7F78, 0, 0);
  }
}

uint64_t sub_2758A7F78()
{
  v19 = v0;
  v1 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1((v1 + *(v0 + 304)), *(v1 + *(v0 + 304) + 24));
  sub_27598B2F0();
  v2 = (v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8);
  if (v3 == 5)
  {

    goto LABEL_20;
  }

  v4 = *v2;
  sub_27585A8D8(*v2, v3);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  sub_27585A8D8(v4, v3);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  sub_2758ACC08(v4, v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315138;
    if (v3 <= 1)
    {
      if (!v3)
      {
        v10 = 0xE600000000000000;
        v11 = 0x70756B636162;
        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v10 = 0xEE00676E69726168;
        v11 = 0x735F796C696D6166;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v10 = 0xE600000000000000;
          v11 = 0x68746C616568;
          goto LABEL_18;
        case 3:
          v10 = 0xE800000000000000;
          v11 = 0x736567617373656DLL;
          goto LABEL_18;
        case 4:
          v10 = 0xE400000000000000;
          v11 = 1769105779;
LABEL_18:
          sub_2758ACC18(v4, v3);
          v12 = sub_2758937B8(v11, v10, v18);

          *(v8 + 4) = v12;
          _os_log_impl(&dword_275819000, v6, v7, "ManageStorageAppsListViewModel fetch complete, showing app for category %s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v9);
          MEMORY[0x277C85860](v9, -1, -1);
          MEMORY[0x277C85860](v8, -1, -1);
          goto LABEL_19;
      }
    }

    v11 = v4;
    v10 = v3;
    goto LABEL_18;
  }

LABEL_19:

  v13 = *(v0 + 336);
  v14 = *v2;
  v15 = v2[1];
  *v2 = xmmword_2759C39E0;
  sub_2758ACC08(v14, v15);
  v18[0] = v4;
  v18[1] = v3;
  sub_2758A9678(v18);

  sub_2758ACC08(v4, v3);
LABEL_20:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2758A824C()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Error fetching manage storage apps list data: %@", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[43];
  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[35];

  *(v14 + v13) = 0;
  __swift_project_boxed_opaque_existential_1((v14 + v12), *(v14 + v12 + 24));
  sub_27598B2F0();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2758A850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758A85CC, 0, 0);
}

uint64_t sub_2758A85CC()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v5 = 0;
    v37 = v3 & 0xFFFFFFFFFFFFFF8;
    v38 = v3 & 0xC000000000000001;
    v35 = v4;
    v36 = v3;
    do
    {
      if (v38)
      {
        v6 = MEMORY[0x277C846A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_34;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v4 = sub_2759BA9E8();
        goto LABEL_3;
      }

      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      v10 = sub_2759BA518();
      v11 = *(v10 - 8);
      v40 = *(v11 + 56);
      v40(v8, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v7;
      sub_2758AD388(v8, v9);
      v39 = *(v11 + 48);
      LODWORD(v8) = v39(v9, 1, v10);
      v41 = v7;
      v42 = v5 + 1;
      v14 = *(v0 + 184);
      if (v8 == 1)
      {
        sub_27586BF04(*(v0 + 184), &unk_280A0E510, &qword_2759C33C0);
        if (*v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2759BA508();
        (*(v11 + 8))(v14, v10);
        if (*v13)
        {
LABEL_13:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_2759BA468();
          v17 = v16;
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v15 = 0;
      v17 = 0;
LABEL_16:
      v43 = **(v0 + 152);
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_2759C3D70;
      *(v18 + 24) = v12;

      if (v17 | v15)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v0 + 192);
      *(v0 + 104) = 1;
      *(v0 + 112) = v19;
      *(v0 + 120) = v43;
      swift_task_create();

      sub_27586BF04(v20, &unk_280A0E510, &qword_2759C33C0);
      if (v5 <= 4)
      {
        v22 = *(v0 + 168);
        v21 = *(v0 + 176);
        v40(v21, 1, 1, v10);
        v23 = swift_allocObject();
        v23[2] = 0;
        v24 = v23 + 2;
        v23[3] = 0;
        v23[4] = v41;
        sub_2758AD388(v21, v22);
        LODWORD(v22) = v39(v22, 1, v10);
        v25 = v41;
        v26 = *(v0 + 168);
        if (v22 == 1)
        {
          sub_27586BF04(*(v0 + 168), &unk_280A0E510, &qword_2759C33C0);
          if (*v24)
          {
            goto LABEL_22;
          }

LABEL_24:
          v27 = 0;
          v29 = 0;
        }

        else
        {
          sub_2759BA508();
          (*(v11 + 8))(v26, v10);
          if (!*v24)
          {
            goto LABEL_24;
          }

LABEL_22:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v27 = sub_2759BA468();
          v29 = v28;
          swift_unknownObjectRelease();
        }

        v30 = swift_allocObject();
        *(v30 + 16) = &unk_2759C3D88;
        *(v30 + 24) = v23;

        if (v29 | v27)
        {
          v31 = v0 + 48;
          *(v0 + 48) = 0;
          *(v0 + 56) = 0;
          *(v0 + 64) = v27;
          *(v0 + 72) = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = *(v0 + 176);
        *(v0 + 128) = 1;
        *(v0 + 136) = v31;
        *(v0 + 144) = v43;
        swift_task_create();

        sub_27586BF04(v32, &unk_280A0E510, &qword_2759C33C0);
        goto LABEL_6;
      }

LABEL_6:
      v3 = v36;
      ++v5;
    }

    while (v42 != v35);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_2758A8BAC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage;
  v0[3] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else if (*(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally))
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_2758A8D14;

    return sub_2759207D8();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_2758A8EF4;

    return sub_275920E30();
  }
}

uint64_t sub_2758A8D14(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2758A8E14, 0, 0);
}

uint64_t sub_2758A8E14()
{
  if (v0[5])
  {
    v1 = v0[2];
    v2 = v0[3];
    *(v1 + v2) = sub_2759B9C98();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_2758A8EF4;

    return sub_275920E30();
  }
}

uint64_t sub_2758A8EF4(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2758A8FF4, 0, 0);
}

uint64_t sub_2758A8FF4()
{
  if (v0[7])
  {
    v1 = v0[2];
    v2 = v0[3];
    *(v1 + v2) = sub_2759B9C98();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2758A906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758A9108, 0, 0);
}

uint64_t sub_2758A9108()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2759B8508();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v0[4] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  if (*(v1 + v4))
  {
    sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);

    v5 = v0[1];

    return v5();
  }

  else if (*(*(v0[2] + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally) == 1)
  {
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_2758A92DC;

    return sub_275921EEC();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_2758A94E4;
    v9 = v0[3];

    return sub_2759224B0(v9);
  }
}

uint64_t sub_2758A92DC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2758A93DC, 0, 0);
}

uint64_t sub_2758A93DC()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];
    sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);
    v4 = *(v3 + v2);
    *(v3 + v2) = v1;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_2758A94E4;
    v8 = v0[3];

    return sub_2759224B0(v8);
  }
}

uint64_t sub_2758A94E4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2758A95E4, 0, 0);
}

uint64_t sub_2758A95E4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;

  v5 = v0[1];

  return v5();
}

void sub_2758A9678(uint64_t *a1)
{
  v2 = a1[1];
  v41 = *a1;
  if (v2 == 1)
  {
    sub_27585A8EC(v41, 1uLL);
    sub_27585A8EC(0, 1uLL);
    v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete);
    v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete + 8);
    v44 = 15;

    v5.value._countAndFlagsBits = v3;
    v5.value._object = v4;
    ManageStorageAppsListViewModel.performFamilySharingAction(fallbackURL:refreshDataModels:componentContext:)(v5, 0, &v44);

    return;
  }

  sub_27585A8D8(v41, v2);
  sub_27585A8EC(v41, v2);
  sub_27585A8EC(0, 1uLL);
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v38[1] = v1;
  if (v7 >> 62)
  {
    goto LABEL_58;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v8)
  {
    v9 = 0;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C846A0](v9, v7);
        v15 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          __break(1u);
LABEL_58:
          v8 = sub_2759BA9E8();
          goto LABEL_5;
        }

        v16 = *(v7 + 8 * v9 + 32);
        v15 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }
      }

      v17 = *&v16[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];
      v42 = v16;
      if (v2 < 5)
      {
        break;
      }

      v39 = v38;
      v21 = *(v17 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
      v43[0] = v41;
      v43[1] = v2;
      MEMORY[0x28223BE20](v16);
      v37[2] = v43;

      v22 = sub_2758A34DC(sub_2758AD6E8, v37, v21);

      if (v22)
      {

LABEL_47:
        LOBYTE(v43[0]) = 22;
        v35 = v42;
        ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v42, 0, v43);

        return;
      }

LABEL_11:
      ++v9;
      if (v15 == v8)
      {
        goto LABEL_36;
      }
    }

    v18 = (v17 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v19 = *v18;
    v20 = v18[1];
    if (v20 <= 1)
    {
      if (!v20)
      {
        if (!v2)
        {

          sub_27585A8EC(v19, 0);
          sub_27585A8EC(v41, 0);
          goto LABEL_47;
        }

        v10 = v15;
        v11 = v41;
        sub_27585A8D8(v41, v2);

        v12 = v19;
        v13 = 0;
        goto LABEL_9;
      }

      if (v20 == 1)
      {
        v39 = v15;
        v23 = v41;
        v24 = v16;
        sub_27585A8D8(v41, v2);

        v25 = v19;
        v26 = 1;
LABEL_32:
        sub_27585A8EC(v25, v26);
        v14 = v23;
        v15 = v39;
        goto LABEL_10;
      }
    }

    else
    {
      switch(v20)
      {
        case 2:
          if (v2 == 2)
          {

            sub_27585A8EC(v19, 2uLL);
            sub_27585A8EC(v41, 2uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 2;
          goto LABEL_9;
        case 3:
          if (v2 == 3)
          {

            sub_27585A8EC(v19, 3uLL);
            sub_27585A8EC(v41, 3uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 3;
LABEL_9:
          sub_27585A8EC(v12, v13);
          v14 = v11;
          v15 = v10;
LABEL_10:
          sub_27585A8EC(v14, v2);
          goto LABEL_11;
        case 4:
          if (v2 == 4)
          {

            sub_27585A8EC(v19, 4uLL);
            sub_27585A8EC(v41, 4uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 4;
          goto LABEL_9;
      }
    }

    v39 = v15;
    v23 = v41;
    sub_27585A8D8(v41, v2);
    sub_27585A8D8(v19, v20);

    v25 = v19;
    v26 = v20;
    goto LABEL_32;
  }

LABEL_36:

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v27 = sub_2759B89A8();
  __swift_project_value_buffer(v27, qword_280A238A0);
  v28 = v41;
  sub_27585A8D8(v41, v2);
  v29 = sub_2759B8988();
  v30 = sub_2759BA648();
  sub_27585A8EC(v28, v2);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43[0] = v32;
    *v31 = 136315138;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v33 = 0xE800000000000000;
        v34 = 0x736567617373656DLL;
        goto LABEL_51;
      }

      if (v2 == 4)
      {
        v33 = 0xE400000000000000;
        v34 = 1769105779;
        goto LABEL_51;
      }
    }

    else
    {
      if (!v2)
      {
        v33 = 0xE600000000000000;
        v34 = 0x70756B636162;
        goto LABEL_51;
      }

      if (v2 == 2)
      {
        v33 = 0xE600000000000000;
        v34 = 0x68746C616568;
LABEL_51:
        sub_27585A8D8(v41, v2);
        v36 = sub_2758937B8(v34, v33, v43);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_275819000, v29, v30, "Unable to find app category %s in new apps list, aborting", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x277C85860](v32, -1, -1);
        MEMORY[0x277C85860](v31, -1, -1);
        goto LABEL_52;
      }
    }

    v34 = v41;
    v33 = v2;
    goto LABEL_51;
  }

LABEL_52:
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.fetchAppsListSync(fetchHomeViewModel:loadImages:)(Swift::Bool fetchHomeViewModel, Swift::Bool loadImages)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_2759BA4E8();
  v8 = sub_2759BA518();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v2;
  *(v9 + 40) = fetchHomeViewModel;
  *(v9 + 41) = loadImages;
  v10 = v2;
  sub_27587D460(0, 0, v7, &unk_2759C3A58, v9);
}

uint64_t sub_2758A9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_27585A7E4;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(a5, a6);
}

void sub_2758A9E78(uint64_t a1, char *a2)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, swift_getKeyPath(), sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel), sub_2759B8638(), , v6 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel, swift_beginAccess(), v7 = *&v5[v6], v8 = v7, v5, v7))
  {
    v9 = *&v8[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

    v10 = *&v9[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors];
    sub_2758A4908(v10);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759B8628();

    v12 = (*&a2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer] + OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel);
    v14 = *v12;
    v13 = v12[1];
    v15 = (a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel);
    *v15 = v14;
    v15[1] = v13;
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_280A238A0);
    v17 = sub_2759B8988();
    v18 = sub_2759BA648();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v17, v18, "Unable to initialize thermometer sections, missing bar colors", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }
  }

  v20 = a2;
  sub_2758A51B8(a2);
  v21 = [objc_opt_self() defaultCenter];
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:qword_280A0F410 object:a1];

  v22 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId + 8);
  if (v22)
  {
    v23 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId);

    v24._countAndFlagsBits = v23;
    v24._object = v22;
    ManageStorageAppsListViewModel.showApp(bundleId:)(v24);
  }
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.showApp(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v3 = (v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId);
  *v3 = 0;
  v3[1] = 0;

  swift_getKeyPath();
  v54[0] = v1;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v50 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (!v4)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_280A238A0);
    v31 = sub_2759B8988();
    v32 = sub_2759BA638();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = object;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_275819000, v31, v32, "Skipping showApp for now, no data model available yet", v34, 2u);
      v35 = v34;
      object = v33;
      MEMORY[0x277C85860](v35, -1, -1);
    }

    *v3 = countAndFlagsBits;
    v3[1] = object;

    return;
  }

  v5 = qword_280A0E338;
  v48 = v4;
  if (v5 != -1)
  {
    goto LABEL_53;
  }

LABEL_3:
  v6 = sub_2759B89A8();
  v7 = __swift_project_value_buffer(v6, qword_280A238A0);

  v47 = v7;
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();

  v10 = os_log_type_enabled(v8, v9);
  v11 = countAndFlagsBits;
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2758937B8(v11, object, v54);
    _os_log_impl(&dword_275819000, v8, v9, "Attempting to manually show manage storage app with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  if (v11 == 0xD000000000000016 && 0x80000002759DF0D0 == object || (sub_2759BAAC8() & 1) != 0)
  {
    v14 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    v15 = v50;
    swift_beginAccess();
    v16 = *(v15 + v14);
    v46 = object;
    if (v16 >> 62)
    {
      v52 = sub_2759BA9E8();
    }

    else
    {
      v52 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v52)
    {
      v17 = 0;
      object = v16 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x277C846A0](v17, v16);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_25:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            swift_once();
            goto LABEL_3;
          }

          v18 = *(v16 + 8 * v17 + 32);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_25;
          }
        }

        v20 = (*&v18[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
        v21 = *v20;
        v22 = v20[1];
        if (v22 - 2 >= 3 && v22 != 0)
        {
          v24 = v18;
          if (v22 == 1)
          {
            goto LABEL_48;
          }

          v18 = v24;
        }

        sub_27585A8EC(v21, v22);
        sub_27585A8EC(0, 1uLL);
        ++v17;
      }

      while (v19 != v52);
    }

    object = v46;
LABEL_27:

    v25 = sub_2759B8988();
    v26 = sub_2759BA648();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = object;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_2758937B8(countAndFlagsBits, v27, v53);
      _os_log_impl(&dword_275819000, v25, v26, "Unable to push app drilldown, missing app with id: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x277C85860](v29, -1, -1);
      MEMORY[0x277C85860](v28, -1, -1);
    }

    return;
  }

  v24 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  v36 = v50;
  swift_beginAccess();
  v37 = *&v24[v36];
  if (v37 >> 62)
  {
    v38 = sub_2759BA9E8();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v38)
  {
    goto LABEL_27;
  }

  v21 = 0;
  v52 = v37 & 0xC000000000000001;
  v49 = v37 & 0xFFFFFFFFFFFFFF8;
  while (v52)
  {
    v39 = MEMORY[0x277C846A0](v21, v37);
    v40 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_47;
    }

LABEL_42:
    v24 = v39;
    v41 = *(*&v39[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    v53[0] = countAndFlagsBits;
    v53[1] = object;
    v42 = object;
    MEMORY[0x28223BE20](v39);
    v45[2] = v53;

    v43 = sub_2758A34DC(sub_2758ACDC4, v45, v41);

    if (v43)
    {

      goto LABEL_50;
    }

    ++v21;
    object = v42;
    if (v40 == v38)
    {
      goto LABEL_27;
    }
  }

  if (v21 >= *(v49 + 16))
  {
    goto LABEL_52;
  }

  v39 = *(v37 + 8 * v21 + 32);
  v40 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
LABEL_48:

  sub_27585A8EC(v21, 1uLL);
  sub_27585A8EC(0, 1uLL);
LABEL_50:
  LOBYTE(v53[0]) = 7;
  v44 = v24;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v44, 0, v53);
}

uint64_t sub_2758AAB08(char a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_2758AABCC;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(a1, a2);
}

uint64_t sub_2758AABCC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(Swift::Bool clearHomeData)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation) = 1;
  v4 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v5 = MEMORY[0x277D84F90];
  *(v2 + v4) = MEMORY[0x277D84F90];

  *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v5;

  *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v5;

  if (*(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  if (clearHomeData)
  {
    swift_getKeyPath();
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      if (*&v8[v9])
      {
        v10 = swift_getKeyPath();
        MEMORY[0x28223BE20](v10);
        sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
        sub_2759B8628();
      }

      else
      {
      }
    }
  }
}

uint64_t ManageStorageAppsListViewModel.expandedSubTitle(forDataclass:)()
{
  swift_getKeyPath();
  v24[0] = v0;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (v1)
  {
    v2 = qword_280A0E310;
    v3 = v1;
    if (v2 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v4 = qword_280A23870;
      if (!*(qword_280A23870 + 16) || (v5 = sub_2758A342C(), (v6 & 1) == 0))
      {

        return 0;
      }

      v7 = (*(v4 + 56) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      v22 = v9;
      v23 = v8;
      v10 = *&v3[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps];
      v20 = v3;
      v3 = v10 >> 62 ? sub_2759BA9E8() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v3)
      {
        break;
      }

      v11 = 0;
      v21 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          v12 = MEMORY[0x277C846A0](v11, v10);
        }

        else
        {
          if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v10 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = *&v12[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds];
        v24[0] = v22;
        v24[1] = v23;
        MEMORY[0x28223BE20](v12);
        v19[2] = v24;

        v16 = sub_2758A34DC(sub_2758AD6E8, v19, v15);

        if (v16)
        {

          v18 = *&v13[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];

          return v18;
        }

        ++v11;
        if (v14 == v3)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_18:
  }

  return 0;
}

Swift::String_optional __swiftcall ManageStorageAppsListViewModel.expandedSubTitle(forLiverpoolBundleId:)(Swift::String forLiverpoolBundleId)
{
  object = forLiverpoolBundleId._object;
  countAndFlagsBits = forLiverpoolBundleId._countAndFlagsBits;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps);
    if (v5 >> 62)
    {
      v6 = sub_2759BA9E8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {
LABEL_22:

      goto LABEL_23;
    }

    v9 = 0;
    v10 = v5 + 32;
    while (2)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C846A0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v7 = *(v10 + 8 * v9);
      }

      v11 = v7;
      if (!__OFADD__(v9++, 1))
      {
        v13 = *&v7[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds];
        v14 = (v13 + 40);
        v15 = *(v13 + 16) + 1;
        while (--v15)
        {
          if (*(v14 - 1) != countAndFlagsBits || *v14 != object)
          {
            v14 += 2;
            if ((sub_2759BAAC8() & 1) == 0)
            {
              continue;
            }
          }

          v17 = *&v11[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];
          v18 = *&v11[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel + 8];

          goto LABEL_24;
        }

        v10 = v5 + 32;
        if (v9 != v6)
        {
          continue;
        }

        goto LABEL_22;
      }

      break;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  v17 = 0;
  v18 = 0;
LABEL_24:
  v7 = v17;
  v8 = v18;
LABEL_28:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void sub_2758AB5E4(double a1)
{
  v4 = v1;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel___observationRegistrar;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v7 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections;
  v8 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
  if (v8 >> 62)
  {
    if (sub_2759BA9E8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = 0;
    goto LABEL_4;
  }

  swift_getKeyPath();
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_getKeyPath();
    sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
    sub_2759B8638();

    v26 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v27 = *&v25[v26];
    v28 = v27;

    if (v27)
    {
      v29 = *&v28[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

      v30 = *&v29[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors];
      swift_getKeyPath();
      sub_2759B8638();

      v31 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
      if (v31)
      {
        v60 = v7;
        v32 = v31;
        v2 = v6;
        sub_2758A4908(v30);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v9 = 0;
        sub_2759B8628();

        v34 = *&v32[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];
        v7 = v60;
        v35 = *&v34[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel];
        v36 = *&v34[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel + 8];

        v37 = (v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel);
        *v37 = v35;
        v37[1] = v36;

LABEL_4:
        v10 = swift_getKeyPath();
        sub_2759B8638();

        v11 = *(v4 + v7);
        if (v11 >> 62)
        {
          v42 = sub_2759BA9E8();
          v13 = v42 - 1;
          if (!__OFSUB__(v42, 1))
          {
LABEL_6:
            v10 = swift_getKeyPath();
            sub_2759B8638();

            v60 = v7;
            v2 = *(v4 + v7);
            if (!(v2 >> 62))
            {
              v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v14)
              {
                goto LABEL_18;
              }

LABEL_8:
              if (v14 < 1)
              {
                __break(1u);
LABEL_50:
                if (sub_2759BA9E8())
                {
                  goto LABEL_22;
                }

                goto LABEL_51;
              }

              a1 = a1 - v13;

              v15 = 0;
              v3 = 100.0;
              do
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x277C846A0](v15, v2);
                }

                else
                {
                  v16 = *(v2 + 8 * v15 + 32);
                }

                v17 = a1 * (*(*(v16 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_storagePercentage) / 100.0);
                if (*(v16 + 40) == v17)
                {
                  *(v16 + 40) = v17;
                }

                else
                {
                  v18 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v18);
                  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
                  sub_2759B8628();
                }

                ++v15;
              }

              while (v14 != v15);

LABEL_18:
              swift_getKeyPath();
              sub_2759B8638();

              v10 = v60;
              v19 = *(v4 + v60);
              if (v19 >> 62)
              {
                if (sub_2759BA9E8() == 1)
                {
LABEL_20:
                  swift_getKeyPath();
                  sub_2759B8638();

                  v14 = *(v4 + v60);
                  if (!(v14 >> 62))
                  {
                    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
LABEL_22:
                      if ((v14 & 0xC000000000000001) != 0)
                      {

                        v20 = MEMORY[0x277C846A0](0, v14);

                        goto LABEL_25;
                      }

                      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v20 = *(v14 + 32);

LABEL_25:
                        swift_getKeyPath();
                        sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
                        sub_2759B8638();

                        v21 = *(v20 + 40);
                        if (v21 > 10.0)
                        {
                          v22 = *(v20 + 40);
                        }

                        else
                        {
                          v22 = 10.0;
                        }

                        if (v21 == v22)
                        {
                          *(v20 + 40) = v22;
                        }

                        else
                        {
                          v23 = swift_getKeyPath();
                          MEMORY[0x28223BE20](v23);
                          sub_2759B8628();
                        }

                        return;
                      }

                      __break(1u);
                      goto LABEL_86;
                    }

                    goto LABEL_51;
                  }

                  goto LABEL_50;
                }
              }

              else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
              {
                goto LABEL_20;
              }

LABEL_51:
              v61 = MEMORY[0x277D84F90];
              swift_getKeyPath();
              sub_2759B8638();

              v43 = *(v4 + v10);
              if (v43 >> 62)
              {
                v44 = sub_2759BA9E8();
                if (!v44)
                {
                  return;
                }
              }

              else
              {
                v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v44)
                {
                  return;
                }
              }

              if (v44 >= 1)
              {

                v45 = 0;
                v9 = MEMORY[0x277D84F90];
                a1 = 0.0;
                v46 = 0.0;
                v59 = v44;
                do
                {
                  if ((v43 & 0xC000000000000001) != 0)
                  {
                    v48 = MEMORY[0x277C846A0](v45, v43);
                  }

                  else
                  {
                    v48 = *(v43 + 8 * v45 + 32);
                  }

                  swift_getKeyPath();
                  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel, &unk_2759C3C10);
                  sub_2759B8638();

                  v49 = *(v48 + 40);
                  swift_getKeyPath();
                  if (v49 >= 6.0)
                  {
                    sub_2759B8638();

                    v51 = *(v48 + 40);

                    MEMORY[0x277C84160](v52);
                    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_2759BA3F8();
                    }

                    a1 = a1 + v51 + -6.0;
                    sub_2759BA418();

                    v9 = v61;
                  }

                  else
                  {
                    sub_2759B8638();

                    v50 = *(v48 + 40);
                    v46 = v46 + 6.0 - v50;
                    if (v50 == 6.0)
                    {
                      *(v48 + 40) = 0x4018000000000000;
                    }

                    else
                    {
                      v47 = swift_getKeyPath();
                      MEMORY[0x28223BE20](v47);
                      sub_2759B8628();

                      v44 = v59;
                    }
                  }

                  ++v45;
                }

                while (v44 != v45);

                if (a1 >= v46)
                {
                  v3 = v46;
                }

                else
                {
                  v3 = a1;
                }

                if (v3 <= 0.0)
                {
                  goto LABEL_78;
                }

                if (!(v9 >> 62))
                {
                  v53 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v53)
                  {
LABEL_78:

                    return;
                  }

LABEL_72:
                  if (v53 < 1)
                  {
                    __break(1u);
                    return;
                  }

                  v54 = 0;
                  v55 = v9;
                  v56 = v9 & 0xC000000000000001;
                  do
                  {
                    if (v56)
                    {
                      v57 = MEMORY[0x277C846A0](v54, v55);
                    }

                    else
                    {
                      v57 = *(v55 + 8 * v54 + 32);
                    }

                    ++v54;
                    swift_getKeyPath();
                    sub_2759B8638();

                    v58 = v3 * ((*(v57 + 40) + -6.0) / a1);
                    swift_getKeyPath();
                    sub_2759B8638();

                    swift_getKeyPath();
                    sub_2759B8658();

                    *(v57 + 40) = *(v57 + 40) - v58;
                    swift_getKeyPath();
                    sub_2759B8648();
                  }

                  while (v53 != v54);
                  goto LABEL_78;
                }

LABEL_86:
                v53 = sub_2759BA9E8();
                if (!v53)
                {
                  goto LABEL_78;
                }

                goto LABEL_72;
              }

              __break(1u);
              goto LABEL_83;
            }

LABEL_45:
            v14 = sub_2759BA9E8();
            if (!v14)
            {
              goto LABEL_18;
            }

            goto LABEL_8;
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = v12 - 1;
          if (!__OFSUB__(v12, 1))
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_45;
      }
    }
  }

  if (qword_280A0E338 != -1)
  {
LABEL_83:
    swift_once();
  }

  v38 = sub_2759B89A8();
  __swift_project_value_buffer(v38, qword_280A238A0);
  v39 = sub_2759B8988();
  v40 = sub_2759BA668();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_275819000, v39, v40, "Unable to initialize thermometer sections, missing data", v41, 2u);
    MEMORY[0x277C85860](v41, -1, -1);
  }
}

id ManageStorageAppsListViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppsListViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ManageStorageAppsListViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  swift_getKeyPath();
  v5 = v4;
  sub_2759B8638();

  v6 = *(a2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  v7 = v6 == 0;
  if (v4)
  {
    if (v6)
    {
      type metadata accessor for ManageStorageAppsListDataModel();
      v8 = v6;
      v7 = sub_2759BA788();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void *sub_2758AC6F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_2758AC780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        type metadata accessor for ManageStorageAppViewModel(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
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

void sub_2758AC864(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0F540, &qword_2759C26B0);
      v7 = *(sub_2759B82B8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_2759B82B8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void (*sub_2758ACA04(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C846A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2758ACA84;
  }

  __break(1u);
  return result;
}

uint64_t sub_2758ACA8C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2759BAAC8() & 1;
  }
}

id sub_2758ACAE4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for DefaultIconLoader();
  v13[4] = &off_28847F800;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage] = 0;
  v9 = &a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID];
  *v9 = 0;
  v9[1] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages] = 0;
  v13[3] = v8;
  v13[0] = a3;
  a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented] = 0;
  sub_2759B8668();
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] = a1;
  a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading] = 0;
  *&a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index] = a2;
  sub_27586E058(v13, &a4[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_iconLoader]);
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ManageStorageAppViewModel(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_2758ACC08(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_27585A8EC(a1, a2);
  }

  return a1;
}

uint64_t sub_2758ACC18(uint64_t a1, unint64_t a2)
{
  if (a2 != 5)
  {
    return sub_27585A8D8(a1, a2);
  }

  return a1;
}

uint64_t sub_2758ACC28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585F7A0;

  return sub_2758A850C(a1, a2, v6);
}

uint64_t sub_2758ACCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758A9DCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2758ACDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2758ACE28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel) = v2;
  v4 = v2;
}

uint64_t sub_2758ACE90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758ACEC8(uint64_t a1)
{
  result = sub_2759B8678();
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

uint64_t sub_2758ACFA0(uint64_t a1)
{
  result = sub_2759B8678();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2758AD0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_27585A7E4;

  return sub_2758AAB08(v2, v3, v5, v4);
}

void sub_2758AD198()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
}

double sub_2758AD1D8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2758AD1E8()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_2758AD258()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_2758AD2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A8B8C(a1, v4, v5, v6);
}

uint64_t sub_2758AD388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758AD3F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_275893544(a1, v4);
}

uint64_t sub_2758AD4B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A906C(a1, v4, v5, v6);
}

uint64_t sub_2758AD564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_275893544(a1, v4);
}

uint64_t sub_2758AD61C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2759BAAC8() & 1;
  }
}

void sub_2758AD68C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections) = *(v0 + 24);
}

uint64_t sub_2758AD740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2758AD788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2758AD7E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A0, &qword_2759C4008);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  type metadata accessor for MessagesDrilldownModel(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel__daysUntilDelete;
  v7 = 0;
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5A8, &qword_2759C4010);
  sub_2759B8CD8();
  (*(v1 + 32))(v4 + v5, v3, v0);
  *(v4 + OBJC_IVAR____TtC14iCloudSettings22MessagesDrilldownModel_messagesDeleteCompletedObserver) = 0;
  sub_2759B4DFC();
  sub_2759B5634();
  return v4;
}

uint64_t sub_2758AD924@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesDrilldownModel(0);
  sub_2758AE454(&qword_280A0F588, type metadata accessor for MessagesDrilldownModel, &unk_2759D1290);
  sub_2759B8DC8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2759B8CE8();

  result = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if ((v16 & 1) == 0)
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_2759B83C8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED80, &unk_2759C4BC0);
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D83B88];
    *(v8 + 16) = xmmword_2759C17A0;
    v10 = MEMORY[0x277D83C10];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v15;
    sub_2759BA2B8();

    sub_27589F2D4(v11, v12, v13);
    result = sub_2759B99C8();
    v4 = v14 & 1;
  }

  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_2758ADB54()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758ADBA8(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_2758ADBEC(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_2758ADC5C(BOOL *a3@<X8>)
{
  v4 = sub_2759BAA48();

  *a3 = v4 != 0;
}

uint64_t sub_2758ADCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758AE49C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758ADCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758AE49C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2758ADD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2758ADF38(a1, a2, a3);

  return MEMORY[0x282182170](a1, v5, a2);
}

uint64_t sub_2758ADD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2758ADF8C(a1, a2, a3);

  return MEMORY[0x282182168](a1, a2, v5);
}

uint64_t sub_2758ADDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758ADF8C(a1, a2, a3);

  return MEMORY[0x2821822F0](a1, v4);
}

uint64_t sub_2758ADE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2758AE090(a1, a2, a3);

  return MEMORY[0x282182160](a1, a2, v5);
}

double sub_2758ADE7C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2758AE0E4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_2758ADEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2758ADF38(a1, a2, a3);
  sub_2758ADF8C(v6, v3, v4);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2758ADF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F560;
  if (!qword_280A0F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F560);
  }

  return result;
}

unint64_t sub_2758ADF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F568;
  if (!qword_280A0F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F568);
  }

  return result;
}

unint64_t sub_2758ADFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F570;
  if (!qword_280A0F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F570);
  }

  return result;
}

unint64_t sub_2758AE03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F578;
  if (!qword_280A0F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F578);
  }

  return result;
}

unint64_t sub_2758AE090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F580;
  if (!qword_280A0F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F580);
  }

  return result;
}

uint64_t sub_2758AE0E4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v47 = sub_2759B85A8();
  v32 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F590, &qword_2759C4000);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v46 = 0;
  sub_2759B8C08();
  sub_2758AE454(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v8 = sub_2759B9168();
  v10 = v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758AE49C(v11, v12, v13);
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v34;
    v15 = v35;
    v31 = v10;
    v16 = v47;
    v17 = sub_2759BAA58();
    v20 = v18;
    v30 = v5;
    if (v18)
    {
      v21 = v17;
    }

    else
    {
      sub_2759B8598();
      v22 = sub_2759B8588();
      v20 = v23;
      v21 = v22;
      (*(v32 + 8))(v15, v16);
    }

    (*(v14 + 8))(v7, v30);
    *&v36 = v21;
    *(&v36 + 1) = v20;
    *&v37 = MEMORY[0x277D84F90];
    *(&v37 + 1) = sub_2758AD7E8;
    *&v38 = 0;
    v24 = v46;
    BYTE8(v38) = v46;
    *(&v38 + 9) = *v45;
    HIDWORD(v38) = *&v45[3];
    v25 = v31;
    *&v39 = v8;
    *(&v39 + 1) = v31;
    sub_2758AE4F0(&v36, v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40[0] = v21;
    v40[1] = v20;
    v40[2] = MEMORY[0x277D84F90];
    v40[3] = sub_2758AD7E8;
    v40[4] = 0;
    v41 = v24;
    *v42 = *v45;
    *&v42[3] = *&v45[3];
    v43 = v8;
    v44 = v25;
    result = sub_2758AE528(v40);
    v26 = v37;
    v27 = v33;
    *v33 = v36;
    v27[1] = v26;
    v28 = v39;
    v27[2] = v38;
    v27[3] = v28;
  }

  return result;
}

uint64_t sub_2758AE454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758AE49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F598;
  if (!qword_280A0F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F598);
  }

  return result;
}

unint64_t sub_2758AE570()
{
  result = qword_280A0F5B0;
  if (!qword_280A0F5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F5B8, &qword_2759C4028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5B0);
  }

  return result;
}

unint64_t sub_2758AE5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F5C0;
  if (!qword_280A0F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5C0);
  }

  return result;
}

unint64_t sub_2758AE648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F5C8;
  if (!qword_280A0F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5C8);
  }

  return result;
}

unint64_t sub_2758AE6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0F5D0;
  if (!qword_280A0F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F5D0);
  }

  return result;
}

id sub_2758AE6F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
  *a2 = v4;

  return v4;
}

uint64_t sub_2758AE7E0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  sub_2759B9518();
  return sub_2759B9E68();
}

uint64_t sub_2758AE8B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2759B93D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27586FBC8(v2, &v14 - v9, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2759B94D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2759BA658();
    v13 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for ADPSection(uint64_t a1)
{
  result = qword_280A0F5E0;
  if (!qword_280A0F5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758AEB60(uint64_t a1)
{
  sub_2758AEC44(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2758AEC44(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2758AEC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2758AECC4@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  MEMORY[0x28223BE20](v2);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F608, &qword_2759C4218);
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F610, &qword_2759C4220);
  v30 = *(v8 - 8);
  v9 = v30;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F618, &qword_2759C4228);
  sub_2758B1A88();
  v29 = v14;
  sub_2759B9F38();
  v34 = v1;
  sub_2758B0878(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F648, &qword_2759C4240);
  sub_2758B1B74();
  sub_2758B1D14();
  v27 = v7;
  sub_2759B9F48();
  v16 = *(v9 + 16);
  v28 = v12;
  v16(v12, v14, v8);
  v17 = *(v3 + 16);
  v18 = v31;
  v19 = v7;
  v20 = v32;
  v17(v31, v19, v32);
  v21 = v33;
  v16(v33, v12, v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F698, &unk_2759C4260);
  v17(&v21[*(v22 + 48)], v18, v20);
  v23 = *(v3 + 8);
  v23(v27, v20);
  v24 = *(v30 + 8);
  v24(v29, v8);
  v23(v18, v20);
  return (v24)(v28, v8);
}

uint64_t sub_2758AF06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ADPSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2758B2010(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2758B2074(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6F0, &qword_2759C4360);
  sub_2758B2140();
  sub_2759B9DB8();
  LODWORD(a1) = sub_2759B9668();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F618, &qword_2759C4228);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_2758AF1D8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ADPSection(0) + 20);
  v2 = *v1;
  v3 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  sub_2759B9D68();
  type metadata accessor for iCloudHomeViewModel(0);
  sub_2759B9D58();
  sub_27591BCD4(v2, v3);
}

uint64_t sub_2758AF2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F718, &qword_2759C4370);
  MEMORY[0x28223BE20](v38);
  v4 = &v34 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F720, &qword_2759C4378);
  MEMORY[0x28223BE20](v35);
  v37 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F728, &qword_2759C4380);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F708, &qword_2759C4368);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - v12;
  v14 = sub_2759B94D8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v34 = a1;
  sub_2758AE8B4(&v34 - v19);
  (*(v15 + 104))(v18, *MEMORY[0x277CE0280], v14);
  v21 = sub_2758B2220(v20, v18);
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  v23 = sub_2759B9418();
  if (v21)
  {
    *v13 = v23;
    *(v13 + 1) = 0;
    v13[16] = 1;
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F738, &qword_2759C4390) + 44)];
    *v11 = sub_2759B94F8();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F740, &qword_2759C4398);
    sub_2758B12E0(v34, &v11[*(v25 + 44)]);
    sub_27586FBC8(v11, v9, &qword_280A0F728, &qword_2759C4380);
    sub_27586FBC8(v9, v24, &qword_280A0F728, &qword_2759C4380);
    v26 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F748, &qword_2759C43A0) + 48);
    *v26 = 0;
    *(v26 + 8) = 1;
    sub_27586BF04(v11, &qword_280A0F728, &qword_2759C4380);
    sub_27586BF04(v9, &qword_280A0F728, &qword_2759C4380);
    v27 = &qword_280A0F708;
    v28 = &qword_2759C4368;
    sub_27586FBC8(v13, v37, &qword_280A0F708, &qword_2759C4368);
    swift_storeEnumTagMultiPayload();
    v29 = MEMORY[0x277CE1138];
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368, MEMORY[0x277CE1138]);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370, v29);
    sub_2759B95E8();
    v30 = v13;
  }

  else
  {
    *v4 = v23;
    *(v4 + 1) = 0;
    v4[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F730, &qword_2759C4388);
    sub_2758B0B30(v34, &v4[*(v31 + 44)]);
    v27 = &qword_280A0F718;
    v28 = &qword_2759C4370;
    sub_27586FBC8(v4, v37, &qword_280A0F718, &qword_2759C4370);
    swift_storeEnumTagMultiPayload();
    v32 = MEMORY[0x277CE1138];
    sub_27589B02C(&qword_280A0F700, &qword_280A0F708, &qword_2759C4368, MEMORY[0x277CE1138]);
    sub_27589B02C(&qword_280A0F710, &qword_280A0F718, &qword_2759C4370, v32);
    sub_2759B95E8();
    v30 = v4;
  }

  return sub_27586BF04(v30, v27, v28);
}

uint64_t sub_2758AF7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F680, &qword_2759C4258);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F670, &qword_2759C4250);
  MEMORY[0x28223BE20](v36);
  v7 = &v31 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A8, &qword_2759C4298);
  MEMORY[0x28223BE20](v34);
  v9 = &v31 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F660, &qword_2759C4248);
  MEMORY[0x28223BE20](v35);
  v11 = &v31 - v10;
  v12 = *(type metadata accessor for ADPSection(0) + 20);
  v33 = a1;
  v13 = (a1 + v12);
  v14 = *v13;
  v15 = v13[1];
  v44 = *v13;
  v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v41;
  swift_getKeyPath();
  v44 = v16;
  sub_2758B1EFC(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v17 = *&v16[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel];

  swift_getKeyPath();
  v44 = v17;
  sub_2758B1EFC(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  LODWORD(a1) = v17[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading];

  if (a1 == 1)
  {
    *v11 = sub_2759B9418();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C0, &unk_2759C4300);
    sub_2758AFE0C(v33, &v11[*(v18 + 44)]);
    sub_27586FBC8(v11, v9, &qword_280A0F660, &qword_2759C4248);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248, MEMORY[0x277CE1138]);
    sub_2758B1C2C();
    sub_2759B95E8();
    v19 = v11;
    v20 = &qword_280A0F660;
    v21 = &qword_2759C4248;
  }

  else
  {
    v41 = v14;
    v42 = v15;
    sub_2759B9D88();
    v22 = v44;
    v23 = v45;
    v24 = v46;
    swift_getKeyPath();
    v44 = v22;
    v45 = v23;
    v46 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6B0, &qword_2759C42C8);
    sub_2759B9E98();

    v25 = v41;
    v26 = v42;
    v27 = v43;

    swift_getKeyPath();
    v38 = v25;
    v39 = v26;
    v40 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6B8, &qword_2759C42F8);
    sub_2759B9E98();

    MEMORY[0x28223BE20](v28);
    *(&v31 - 2) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
    sub_2758B1D14();
    sub_2759B9E18();
    sub_27589B02C(&qword_280A0F678, &qword_280A0F680, &qword_2759C4258, MEMORY[0x277CDF068]);
    v29 = v32;
    sub_2759B9B38();
    (*(v31 + 8))(v5, v29);
    sub_27586FBC8(v7, v9, &qword_280A0F670, &qword_2759C4250);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A0F658, &qword_280A0F660, &qword_2759C4248, MEMORY[0x277CE1138]);
    sub_2758B1C2C();
    sub_2759B95E8();
    v19 = v7;
    v20 = &qword_280A0F670;
    v21 = &qword_2759C4250;
  }

  return sub_27586BF04(v19, v20, v21);
}