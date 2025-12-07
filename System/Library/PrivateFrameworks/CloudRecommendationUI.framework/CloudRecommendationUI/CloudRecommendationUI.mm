id getICQUpgradeFlowManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICQUpgradeFlowManagerClass_softClass;
  v7 = getICQUpgradeFlowManagerClass_softClass;
  if (!getICQUpgradeFlowManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getICQUpgradeFlowManagerClass_block_invoke;
    v3[3] = &unk_278DE1BE8;
    v3[4] = &v4;
    __getICQUpgradeFlowManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243A1DCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getICQLinkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getICQLinkClass_softClass;
  v7 = getICQLinkClass_softClass;
  if (!getICQLinkClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getICQLinkClass_block_invoke;
    v3[3] = &unk_278DE1BE8;
    v3[4] = &v4;
    __getICQLinkClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_243A1DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICQOfferClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  result = objc_getClass("ICQOffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICQOfferClass_block_invoke_cold_1();
  }

  getICQOfferClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void iCloudQuotaLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __iCloudQuotaLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278DE1C08;
    v3 = 0;
    iCloudQuotaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __iCloudQuotaLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getICQUpgradeFlowManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE1C40;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudQuotaUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICQUpgradeFlowManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICQUpgradeFlowManagerClass_block_invoke_cold_1();
  }

  getICQUpgradeFlowManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getICQLinkClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  result = objc_getClass("ICQLink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICQLinkClass_block_invoke_cold_1();
  }

  getICQLinkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_243A1E694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICQLiftUIPresenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE1C58;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudQuotaUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICQLiftUIPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICQLiftUIPresenterClass_block_invoke_cold_1();
  }

  getICQLiftUIPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_243A1EB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICQUIRemoteUIPresenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudQuotaUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278DE1C70;
    v6 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (iCloudQuotaUILibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICQUIRemoteUIPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICQUIRemoteUIPresenterClass_block_invoke_cold_1();
  }

  getICQUIRemoteUIPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_243A1EED8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v49 - v4;
  v6 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation];
  if (v6)
  {
    if (!a1)
    {
      v24 = v6;
      goto LABEL_36;
    }

    v49[1] = 0xD000000000000010;
    v49[2] = 0x8000000243ACBE00;
    v7 = v6;
    sub_243AC2CB8();
    if (*(a1 + 16) && (v8 = sub_243A2DD7C(&v50), (v9 & 1) != 0))
    {
      sub_243A20058(*(a1 + 56) + 32 * v8, &v52);
      sub_243A1FF9C(&v50);
      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = HIBYTE(v51) & 0xF;
          v11 = v50 & 0xFFFFFFFFFFFFLL;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v12 = HIBYTE(v51) & 0xF;
          }

          else
          {
            v12 = v50 & 0xFFFFFFFFFFFFLL;
          }

          if (v12)
          {
            if ((v51 & 0x1000000000000000) != 0)
            {
              v16 = sub_243AB9A28(v50, v51, 10);
              v47 = v48;
LABEL_81:

              if (v47)
              {
                v25 = 0;
              }

              else
              {
                v25 = v16;
              }

              goto LABEL_37;
            }

            if ((v51 & 0x2000000000000000) != 0)
            {
              v51 &= 0xFFFFFFFFFFFFFFuLL;
              if (v50 == 43)
              {
                if (v10)
                {
                  v13 = (v10 - 1);
                  if (v10 != 1)
                  {
                    v16 = 0;
                    v39 = &v50 + 1;
                    while (1)
                    {
                      v40 = *v39 - 48;
                      if (v40 > 9)
                      {
                        break;
                      }

                      v41 = 10 * v16;
                      if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                      {
                        break;
                      }

                      v16 = v41 + v40;
                      if (__OFADD__(v41, v40))
                      {
                        break;
                      }

                      ++v39;
                      if (!--v13)
                      {
                        goto LABEL_80;
                      }
                    }
                  }

                  goto LABEL_79;
                }

                goto LABEL_90;
              }

              if (v50 != 45)
              {
                if (v10)
                {
                  v16 = 0;
                  v44 = &v50;
                  while (1)
                  {
                    v45 = *v44 - 48;
                    if (v45 > 9)
                    {
                      break;
                    }

                    v46 = 10 * v16;
                    if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                    {
                      break;
                    }

                    v16 = v46 + v45;
                    if (__OFADD__(v46, v45))
                    {
                      break;
                    }

                    v44 = (v44 + 1);
                    if (!--v10)
                    {
LABEL_78:
                      LOBYTE(v13) = 0;
                      goto LABEL_80;
                    }
                  }
                }

                goto LABEL_79;
              }

              if (v10)
              {
                v13 = (v10 - 1);
                if (v10 != 1)
                {
                  v16 = 0;
                  v32 = &v50 + 1;
                  while (1)
                  {
                    v33 = *v32 - 48;
                    if (v33 > 9)
                    {
                      break;
                    }

                    v34 = 10 * v16;
                    if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                    {
                      break;
                    }

                    v16 = v34 - v33;
                    if (__OFSUB__(v34, v33))
                    {
                      break;
                    }

                    ++v32;
                    if (!--v13)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                goto LABEL_79;
              }
            }

            else
            {
              if ((v50 & 0x1000000000000000) != 0)
              {
                v13 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 32);
              }

              else
              {
                v13 = sub_243AC2D48();
              }

              v14 = *v13;
              if (v14 == 43)
              {
                if (v11 >= 1)
                {
                  v35 = v11 - 1;
                  if (v11 != 1)
                  {
                    v16 = 0;
                    if (v13)
                    {
                      v36 = v13 + 1;
                      while (1)
                      {
                        v37 = *v36 - 48;
                        if (v37 > 9)
                        {
                          goto LABEL_79;
                        }

                        v38 = 10 * v16;
                        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                        {
                          goto LABEL_79;
                        }

                        v16 = v38 + v37;
                        if (__OFADD__(v38, v37))
                        {
                          goto LABEL_79;
                        }

                        ++v36;
                        if (!--v35)
                        {
                          goto LABEL_78;
                        }
                      }
                    }

                    goto LABEL_80;
                  }

                  goto LABEL_79;
                }

                goto LABEL_89;
              }

              if (v14 != 45)
              {
                if (v11)
                {
                  v16 = 0;
                  if (v13)
                  {
                    while (1)
                    {
                      v42 = *v13 - 48;
                      if (v42 > 9)
                      {
                        goto LABEL_79;
                      }

                      v43 = 10 * v16;
                      if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                      {
                        goto LABEL_79;
                      }

                      v16 = v43 + v42;
                      if (__OFADD__(v43, v42))
                      {
                        goto LABEL_79;
                      }

                      ++v13;
                      if (!--v11)
                      {
                        goto LABEL_78;
                      }
                    }
                  }

                  goto LABEL_80;
                }

LABEL_79:
                v16 = 0;
                LOBYTE(v13) = 1;
                goto LABEL_80;
              }

              if (v11 >= 1)
              {
                v15 = v11 - 1;
                if (v11 != 1)
                {
                  v16 = 0;
                  if (v13)
                  {
                    v17 = v13 + 1;
                    while (1)
                    {
                      v18 = *v17 - 48;
                      if (v18 > 9)
                      {
                        goto LABEL_79;
                      }

                      v19 = 10 * v16;
                      if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                      {
                        goto LABEL_79;
                      }

                      v16 = v19 - v18;
                      if (__OFSUB__(v19, v18))
                      {
                        goto LABEL_79;
                      }

                      ++v17;
                      if (!--v15)
                      {
                        goto LABEL_78;
                      }
                    }
                  }

LABEL_80:
                  LOBYTE(v52) = v13;
                  v47 = v13;
                  goto LABEL_81;
                }

                goto LABEL_79;
              }

              __break(1u);
            }

            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            return;
          }
        }

LABEL_36:
        v25 = 0;
LABEL_37:
        v26 = sub_243AC2A98();
        (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
        sub_243AC2A58();
        v27 = v6;
        v28 = v1;
        v29 = sub_243AC2A48();
        v30 = swift_allocObject();
        v31 = MEMORY[0x277D85700];
        v30[2] = v29;
        v30[3] = v31;
        v30[4] = v28;
        v30[5] = v27;
        v30[6] = v25;
        sub_243A3306C(0, 0, v5, &unk_243AC4468, v30);

        return;
      }
    }

    else
    {
      sub_243A1FF9C(&v50);
      v52 = 0u;
      v53 = 0u;
    }

    sub_243A1FFF0(&v52);
    goto LABEL_36;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v20 = sub_243AC1468();
  __swift_project_value_buffer(v20, qword_27EDA14A8);
  v49[0] = sub_243AC1448();
  v21 = sub_243AC2B58();
  if (os_log_type_enabled(v49[0], v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_243A1B000, v49[0], v21, "No active recommendation. Bailing.", v22, 2u);
    MEMORY[0x245D47D20](v22, -1, -1);
  }

  v23 = v49[0];
}

uint64_t sub_243A1F4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_243AC2A58();
  v6[5] = sub_243AC2A48();
  v8 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A1F550, v8, v7);
}

uint64_t sub_243A1F550()
{
  v6 = v0;
  v1 = v0[4];
  v2 = v0[3];

  v5 = 3;
  sub_243A3CF58(v2, v1, &v5);
  v3 = v0[1];

  return v3();
}

id sub_243A1F610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationsLiftUIPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243A1F700(uint64_t a1, id *a2)
{
  result = sub_243AC2838();
  *a2 = 0;
  return result;
}

uint64_t sub_243A1F778(uint64_t a1, id *a2)
{
  v3 = sub_243AC2848();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_243A1F7F8@<X0>(uint64_t *a1@<X8>)
{
  sub_243AC2858();
  v2 = sub_243AC2818();

  *a1 = v2;
  return result;
}

void *sub_243A1F86C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_243A1F880@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_243AC2818();

  *a2 = v3;
  return result;
}

uint64_t sub_243A1F8C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC2858();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243A1F8F4(uint64_t a1)
{
  v2 = sub_243A20254(&qword_27ED98A08, type metadata accessor for Dataclass, &unk_243AC47CC);
  v3 = sub_243A20254(&qword_27ED98A10, type metadata accessor for Dataclass, "uew>ا");
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243A1F9B0(uint64_t a1)
{
  v2 = sub_243A20254(&qword_27ED989F8, type metadata accessor for CERecommendationStatus, &unk_243AC473C);
  v3 = sub_243A20254(&qword_27ED98A00, type metadata accessor for CERecommendationStatus, &unk_243AC46DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_243A1FA6C()
{
  v0 = sub_243AC2858();
  v1 = MEMORY[0x245D46CF0](v0);

  return v1;
}

uint64_t sub_243A1FAA8(uint64_t a1)
{
  sub_243AC2858();
  sub_243AC28A8();
}

uint64_t sub_243A1FAFC(uint64_t a1)
{
  sub_243AC2858();
  sub_243AC2FB8();
  sub_243AC28A8();
  v1 = sub_243AC2FD8();

  return v1;
}

uint64_t sub_243A1FB70(void *a1, uint64_t *a2)
{
  v2 = sub_243AC2858();
  v4 = v3;
  if (v2 == sub_243AC2858() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_243AC2EE8();
  }

  return v7 & 1;
}

void sub_243A1FBF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation);
  if (v1)
  {
    v6 = 3;
    oslog = v1;
    sub_243A3C96C(oslog, &v6);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v2 = sub_243AC1468();
    __swift_project_value_buffer(v2, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v3 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v3, "No active recommendation. Bailing.", v4, 2u);
      MEMORY[0x245D47D20](v4, -1, -1);
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

uint64_t sub_243A1FD98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A1FDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A1FEA8;

  return sub_243A1F4B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A1FEA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243A1FFF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED989A0, &qword_243AC4470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A20058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243A200B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243A200C8(a1, a2);
  }

  return a1;
}

uint64_t sub_243A200C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_243A2012C(uint64_t a1, int a2)
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

uint64_t sub_243A2014C(uint64_t result, int a2, int a3)
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

uint64_t sub_243A20254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_243A203D0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_243A2045C()
{
  v1 = *v0;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v1);
  return sub_243AC2FD8();
}

uint64_t sub_243A204D0(uint64_t a1)
{
  v2 = *v1;
  sub_243AC2FB8();
  MEMORY[0x245D47390](v2);
  return sub_243AC2FD8();
}

uint64_t sub_243A20514()
{
  v1 = 0x73646C656966;
  v2 = 0x746E65726170;
  if (*v0 != 2)
  {
    v2 = 0x7865646E69;
  }

  if (*v0)
  {
    v1 = 0x746E656D656C65;
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

uint64_t sub_243A20584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243A22BB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243A205C4(uint64_t a1)
{
  v2 = sub_243A22724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A20600(uint64_t a1)
{
  v2 = sub_243A22724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243A2063C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A48, qword_243AC4858);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v24 - v6;
  v30 = sub_243AC1618();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = &v24 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98AB0, &qword_243AC4918);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v24 - v11;
  v13 = type metadata accessor for JetImpressionable(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A22724();
  v33 = v12;
  v16 = v35;
  sub_243AC2FE8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v15;
  v18 = v30;
  v39 = 0;
  sub_243A227C0(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
  v19 = v31;
  sub_243AC2E88();
  v20 = *(v29 + 32);
  v35 = v9;
  v20(v17, v19, v9);
  v38 = 1;
  sub_243A22778(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  sub_243AC2E88();
  (*(v28 + 32))(v17 + v13[6], v8, v18);
  v37 = 2;
  v21 = v27;
  sub_243AC2E78();
  sub_243A22814(v21, v17 + v13[5], &qword_27ED98A40, &qword_243AC4850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A90, &qword_243AC48A0);
  v36 = 3;
  sub_243A227C0(&qword_27ED98AD0, &qword_27ED98A90, &qword_243AC48A0);
  v22 = v26;
  sub_243AC2E78();
  (*(v32 + 8))(v33, v34);
  sub_243A22814(v22, v17 + v13[7], &qword_27ED98A48, qword_243AC4858);
  sub_243A2287C(v17, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243A228E0(v17);
}

_OWORD *sub_243A20C58@<X0>(void *a1@<X0>, int64_t a3@<X8>)
{
  v95 = a1;
  v106 = a3;
  v94 = sub_243AC25A8();
  v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243AC1528();
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A48, qword_243AC4858);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v76 - v12;
  v14 = type metadata accessor for JetImpressionable(0);
  v15 = v3;
  v16 = v96;
  v17 = sub_243AC1608();
  if (v16)
  {

    v19 = v106;
    if (qword_27ED98920 == -1)
    {
LABEL_5:
      v20 = sub_243AC1468();
      __swift_project_value_buffer(v20, qword_27EDA14D8);
      v21 = sub_243AC1448();
      v22 = sub_243AC2B58();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_243A1B000, v21, v22, "Failed to resolve JetImpressionable", v23, 2u);
        MEMORY[0x245D47D20](v23, -1, -1);
      }

      return sub_243A223D4(v95, v19);
    }

LABEL_28:
    swift_once();
    goto LABEL_5;
  }

  v85 = v13;
  v91 = v14;
  v92 = v10;
  v96 = v7;
  v88 = v5;
  v81 = v17;
  v86 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  sub_243A22438();
  sub_243AC14D8();
  v87 = v103;
  v25 = v91;
  v26 = v85;
  sub_243A224B4(v3 + *(v91 + 20), v85, &qword_27ED98A40, &qword_243AC4850);
  v27 = sub_243AC1618();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_243A2251C(v26, &qword_27ED98A40, &qword_243AC4850);
    v79 = 0;
    v78 = 0;
    v29 = v96;
  }

  else
  {
    v30 = sub_243AC1608();
    v29 = v96;
    v78 = v31;
    v79 = v30;
    (*(v28 + 8))(v26, v27);
  }

  v32 = v92;
  sub_243A224B4(v15 + *(v25 + 28), v92, &qword_27ED98A48, qword_243AC4858);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A90, &qword_243AC48A0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v80 = 0;
    sub_243A2251C(v32, &qword_27ED98A48, qword_243AC4858);
    v35 = -1;
  }

  else
  {
    sub_243AC14D8();
    v80 = 0;
    (*(v34 + 8))(v32, v33);
    v35 = v103;
  }

  v77 = v35;
  v36 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v37 = v87;
  v38 = sub_243AC2E08();
  v19 = 0;
  v41 = *(v37 + 64);
  v40 = v37 + 64;
  v39 = v41;
  v42 = 1 << *(v40 - 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v39;
  v45 = (v42 + 63) >> 6;
  v46 = v93;
  v84 = v93 + 16;
  v83 = v93 + 8;
  v82 = v38 + 64;
  v47 = v88;
  v85 = v38;
  if (!v44)
  {
LABEL_18:
    v49 = v19;
    v50 = v106;
    while (1)
    {
      v19 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v19 >= v45)
      {

        v64 = v95[3];
        v65 = v95[4];
        __swift_project_boxed_opaque_existential_1(v95, v64);
        v66 = v81;
        v67 = v86;
        v99 = v81;
        v100 = v86;

        sub_243AC2CB8();
        v68 = sub_243A720D0(v87);

        v101 = &type metadata for GenericJetComponentModel;
        v102 = sub_243A225C0();
        v69 = swift_allocObject();
        v99 = v69;
        *(v69 + 56) = 0u;
        *(v69 + 72) = 0u;
        v70 = v104;
        *(v69 + 16) = v103;
        *(v69 + 32) = v70;
        *(v69 + 48) = OpaqueTypeConformance2;
        v71 = v79;
        *(v69 + 88) = 0;
        *(v69 + 96) = v71;
        *(v69 + 104) = v78;
        *(v69 + 112) = v66;
        v72 = v77;
        *(v69 + 120) = v67;
        *(v69 + 128) = v72;
        *(v69 + 136) = v68;
        v73 = v89;
        sub_243AC2598();
        *&v103 = v64;
        *(&v103 + 1) = v65;
        *(&v104 + 1) = swift_getOpaqueTypeMetadata2();
        v97 = v64;
        v98 = v65;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(&v103);
        sub_243AC1DD8();
        (*(v90 + 8))(v73, v36);
        __swift_destroy_boxed_opaque_existential_1(&v99);
        v74 = *(&v104 + 1);
        v75 = OpaqueTypeConformance2;
        __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
        v99 = v74;
        v100 = v75;
        v50[3] = swift_getOpaqueTypeMetadata2();
        v99 = v74;
        v100 = v75;
        v50[4] = swift_getOpaqueTypeConformance2();
        __swift_allocate_boxed_opaque_existential_1(v50);
        sub_243AC1DF8();
        return __swift_destroy_boxed_opaque_existential_1(&v103);
      }

      v51 = *(v40 + 8 * v19);
      ++v49;
      if (v51)
      {
        v48 = __clz(__rbit64(v51));
        v91 = (v51 - 1) & v51;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v48 = __clz(__rbit64(v44));
    v91 = (v44 - 1) & v44;
LABEL_23:
    v52 = v48 | (v19 << 6);
    v53 = *(v87 + 56);
    v54 = (*(v87 + 48) + 16 * v52);
    v55 = v54[1];
    v92 = *v54;
    v56 = v29;
    v57 = v46;
    (*(v46 + 16))(v56, v53 + *(v46 + 72) * v52, v47);

    sub_243A21620(&v103);
    v47 = v88;
    v58 = v96;
    (*(v57 + 8))();
    *(v82 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v59 = v85;
    v60 = (*(v85 + 6) + 16 * v52);
    *v60 = v92;
    v60[1] = v55;
    result = sub_243A21C48(&v103, (*(v59 + 56) + 32 * v52));
    v61 = *(v59 + 16);
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      break;
    }

    *(v59 + 16) = v63;
    v46 = v93;
    v36 = v94;
    v29 = v58;
    v44 = v91;
    if (!v91)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243A21620@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_243AC1528();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = *(v5 + 16);
  v11(&v54 - v9, v2, v4);
  v12 = (*(v5 + 88))(v10, v4);
  if (v12 == *MEMORY[0x277D232A0])
  {
    (*(v5 + 96))(v10, v4);
    v13 = *v10;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    *(a1 + 3) = MEMORY[0x277D837D0];

    *a1 = v14;
    *(a1 + 1) = v15;
  }

  else if (v12 == *MEMORY[0x277D23248])
  {
    (*(v5 + 96))(v10, v4);
    v17 = *(*v10 + 16);
    *(a1 + 3) = MEMORY[0x277D83B88];

    *a1 = v17;
  }

  else if (v12 == *MEMORY[0x277D23288])
  {
    (*(v5 + 96))(v10, v4);
    v18 = *(*v10 + 16);
    *(a1 + 3) = MEMORY[0x277D839F8];

    *a1 = v18;
  }

  else if (v12 == *MEMORY[0x277D23258])
  {
    (*(v5 + 96))(v10, v4);
    v19 = *(*v10 + 16);
    *(a1 + 3) = MEMORY[0x277D839B0];

    *a1 = v19;
  }

  else
  {
    v20 = *MEMORY[0x277D23278];
    v64 = v8;
    if (v12 == v20)
    {
      (*(v5 + 96))(v10, v4);
      v21 = *v10;
      v22 = *(v21 + 16);
      v23 = *(v22 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v62 = v21;
        v57 = a1;
        v65 = MEMORY[0x277D84F90];

        sub_243A64F34(0, v23, 0);
        v24 = v65;
        v25 = *(v5 + 80);
        v61 = v22;
        v26 = v22 + ((v25 + 32) & ~v25);
        v63 = *(v5 + 72);
        v27 = (v5 + 8);
        do
        {
          v28 = v64;
          v11(v64, v26, v4);
          sub_243A21620(v66);
          (*v27)(v28, v4);
          v65 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_243A64F34((v29 > 1), v30 + 1, 1);
            v24 = v65;
          }

          *(v24 + 16) = v30 + 1;
          sub_243A21C48(v66, (v24 + 32 * v30 + 32));
          v26 += v63;
          --v23;
        }

        while (v23);

        a1 = v57;
      }

      *(a1 + 3) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A30, &unk_243AC4840);

      *a1 = v24;
    }

    else if (v12 == *MEMORY[0x277D23270])
    {
      v61 = v11;
      v57 = a1;
      (*(v5 + 96))(v10, v4);
      v55 = *v10;
      v31 = *(v55 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
      v32 = sub_243AC2E08();
      v33 = v32;
      v34 = *(v31 + 64);
      v56 = v31 + 64;
      v35 = 1 << *(v31 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & v34;
      v38 = (v35 + 63) >> 6;
      v58 = v32 + 64;
      v59 = v5 + 8;
      v62 = v31;

      v39 = 0;
      v60 = v33;
      if (v37)
      {
        while (1)
        {
          v40 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_26:
          v43 = v40 | (v39 << 6);
          v44 = *(v62 + 56);
          v45 = (*(v62 + 48) + 16 * v43);
          v46 = v45[1];
          v63 = *v45;
          v47 = v64;
          v61(v64, v44 + *(v5 + 72) * v43, v4);

          sub_243A21620(v66);
          (*(v5 + 8))(v47, v4);
          *(v58 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
          v33 = v60;
          v48 = (*(v60 + 48) + 16 * v43);
          *v48 = v63;
          v48[1] = v46;
          result = sub_243A21C48(v66, (*(v33 + 56) + 32 * v43));
          v49 = *(v33 + 16);
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            break;
          }

          *(v33 + 16) = v51;
          if (!v37)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v41 = v39;
        while (1)
        {
          v39 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v39 >= v38)
          {

            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A28, &qword_243AC4838);
            v53 = v57;
            *(v57 + 3) = v52;

            *v53 = v33;
            return result;
          }

          v42 = *(v56 + 8 * v39);
          ++v41;
          if (v42)
          {
            v40 = __clz(__rbit64(v42));
            v37 = (v42 - 1) & v42;
            goto LABEL_26;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(a1 + 3) = MEMORY[0x277D837D0];
      strcpy(a1, "Unknown value");
      *(a1 + 7) = -4864;
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

_OWORD *sub_243A21C48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_243A21CE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_243AC1618();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A48, qword_243AC4858);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_243A21EA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_243AC1618();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A48, qword_243AC4858);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t type metadata accessor for JetImpressionable(uint64_t a1)
{
  result = qword_27ED98A50;
  if (!qword_27ED98A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A220A8(uint64_t a1)
{
  sub_243A2215C(319);
  if (v1 <= 0x3F)
  {
    sub_243A222D0(319);
    if (v2 <= 0x3F)
    {
      sub_243AC1618();
      if (v3 <= 0x3F)
      {
        sub_243A22328(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243A2215C(uint64_t a1)
{
  if (!qword_27ED98A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A68, &unk_243ACA3A0);
    sub_243A22214();
    v1 = sub_243AC14E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98A60);
    }
  }
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

unint64_t sub_243A22214()
{
  result = qword_27ED98A70;
  if (!qword_27ED98A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A68, &unk_243ACA3A0);
    sub_243A22778(&qword_27ED98A78, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98A70);
  }

  return result;
}

void sub_243A222D0(uint64_t a1)
{
  if (!qword_27ED98A80)
  {
    sub_243AC1618();
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98A80);
    }
  }
}

void sub_243A22328(uint64_t a1)
{
  if (!qword_27ED98A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A90, &qword_243AC48A0);
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98A88);
    }
  }
}

uint64_t sub_243A223D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_243A22438()
{
  result = qword_27ED98AA0;
  if (!qword_27ED98AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A68, &unk_243ACA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AA0);
  }

  return result;
}

uint64_t sub_243A224B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A2251C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_243A225C0()
{
  result = qword_27ED98AA8;
  if (!qword_27ED98AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AA8);
  }

  return result;
}

uint64_t sub_243A22614()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_243A22724()
{
  result = qword_27ED98AB8;
  if (!qword_27ED98AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AB8);
  }

  return result;
}

uint64_t sub_243A22778(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A227C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243A22814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A2287C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetImpressionable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A228E0(uint64_t a1)
{
  v2 = type metadata accessor for JetImpressionable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PrivateRelayStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateRelayStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A22AB0()
{
  result = qword_27ED98AD8;
  if (!qword_27ED98AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AD8);
  }

  return result;
}

unint64_t sub_243A22B08()
{
  result = qword_27ED98AE0;
  if (!qword_27ED98AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AE0);
  }

  return result;
}

unint64_t sub_243A22B60()
{
  result = qword_27ED98AE8;
  if (!qword_27ED98AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98AE8);
  }

  return result;
}

uint64_t sub_243A22BB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v4 || (sub_243AC2EE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D656C65 && a2 == 0xE700000000000000 || (sub_243AC2EE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000 || (sub_243AC2EE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_243AC2EE8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_243A22D0C(void *a1)
{
  v3 = sub_243AC1208();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 actions];
  sub_243A235B4();
  v8 = sub_243AC2998();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x245D470F0](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
LABEL_6:
    v10 = v9;

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation);
      *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation) = a1;
      v14 = a1;

      v41 = v10;
      v15 = [v12 actionType];
      v16 = sub_243AC2858();
      v18 = v17;

      if (v16 == sub_243AC2858() && v18 == v19)
      {

LABEL_13:
        v21 = [v12 actionURL];
        sub_243AC11D8();

        v22 = &selRef_beginLiftUIUpgradeFlowWithPresenter_url_;
LABEL_14:
        sub_243A234C0(v6, v22);

        (*(v4 + 8))(v6, v3);
        return;
      }

      v20 = sub_243AC2EE8();

      if (v20)
      {

        goto LABEL_13;
      }

      v23 = [v12 actionType];

      v24 = sub_243AC2858();
      v26 = v25;

      if (v24 == sub_243AC2858() && v26 == v27)
      {

LABEL_19:
        v29 = [v12 actionURL];
        sub_243AC11D8();

        v22 = &selRef_beginRemoteUIUpgradeFlowWithPresenter_url_;
        goto LABEL_14;
      }

      v28 = sub_243AC2EE8();

      if (v28)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_22:
    if (qword_27ED98910 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_30:
  swift_once();
LABEL_23:
  v30 = sub_243AC1468();
  __swift_project_value_buffer(v30, qword_27EDA14A8);
  v31 = a1;
  v41 = sub_243AC1448();
  v32 = sub_243AC2B58();

  if (os_log_type_enabled(v41, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    v35 = [v31 identifier];
    v36 = sub_243AC2858();
    v38 = v37;

    v39 = sub_243AB73D8(v36, v38, &v42);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_243A1B000, v41, v32, "Did not find url action for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x245D47D20](v34, -1, -1);
    MEMORY[0x245D47D20](v33, -1, -1);

    return;
  }

LABEL_25:
  v40 = v41;
}

id sub_243A233D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpgradeFlowManagerAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_243A234C0(uint64_t a1, SEL *a2)
{
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager;
  v5 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager);
  if (v5 || (v6 = [objc_allocWithZone(CEUpgradeFlowManager) init], v7 = *(v2 + v4), *(v2 + v4) = v6, v7, (v5 = *(v2 + v4)) != 0))
  {
    [v5 setDelegate_];
    v8 = *(v2 + v4);
    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_presenter);
      v10 = v8;
      v11 = sub_243AC11C8();
      [v10 *a2];
    }
  }
}

unint64_t sub_243A235B4()
{
  result = qword_27ED98B88;
  if (!qword_27ED98B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED98B88);
  }

  return result;
}

void sub_243A23600()
{
  v1 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation);
  if (v1)
  {
    v2 = qword_27ED98910;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = v3;
    oslog = sub_243AC1448();
    v6 = sub_243AC2B48();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_243AB73D8(0xD000000000000021, 0x8000000243ACBFB0, &v15);
      *(v7 + 12) = 2080;
      v9 = [v5 identifier];
      v10 = sub_243AC2858();
      v12 = v11;

      v13 = sub_243AB73D8(v10, v12, &v15);

      *(v7 + 14) = v13;
      _os_log_impl(&dword_243A1B000, oslog, v6, "%s recommendation: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_243A2380C()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation;
  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate);
    if (v3)
    {
      v7 = *(v3 + 136);
      v4 = v2;
      swift_unknownObjectRetain();
      sub_243A3CF58(v4, 0, &v7);
      swift_unknownObjectRelease();
    }

    v5 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager);
    *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager) = 0;

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_243A238E0()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation;
  v2 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate);
    if (v3)
    {
      v7 = *(v3 + 136);
      v4 = v2;
      swift_unknownObjectRetain();
      sub_243A3C96C(v4, &v7);
      swift_unknownObjectRelease();
    }

    v5 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager);
    *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager) = 0;

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_243A239B0(void *a1)
{
  if (a1)
  {
    v3 = a1;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = a1;
    v6 = sub_243AC1448();
    v7 = sub_243AC2B58();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_243AB73D8(0xD000000000000023, 0x8000000243ACBF80, &v19);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v10 = sub_243AC2F58();
      v12 = sub_243AB73D8(v10, v11, &v19);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_243A1B000, v6, v7, "%s error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v9, -1, -1);
      MEMORY[0x245D47D20](v8, -1, -1);

      return;
    }

    v18 = a1;

    goto LABEL_11;
  }

  v13 = OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation;
  v14 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_activeRecommendation);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_delegate);
    if (v15)
    {
      LOBYTE(v19) = *(v15 + 136);
      v16 = v14;
      swift_unknownObjectRetain();
      sub_243A3C96C(v16, &v19);
      swift_unknownObjectRelease();
    }

    v17 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager);
    *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI24UpgradeFlowManagerAction_upgradeFlowManager) = 0;

    v18 = *(v1 + v13);
    *(v1 + v13) = 0;

LABEL_11:
  }
}

uint64_t sub_243A23C4C(uint64_t a1)
{
  *(v1 + 32) = 4;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 49) = 514;
  *(v1 + 51) = 2;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 81) = 514;
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x277CFB1C0]) init];
  return v1;
}

uint64_t sub_243A23CDC()
{
  [*(*(v0 + 16) + 16) refresh];
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243A23D80;

  return sub_243A2A320();
}

uint64_t sub_243A23D80()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_243A23EC0;

  return sub_243A29A50();
}

uint64_t sub_243A23EC0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_243A24000;

  return sub_243A290E8();
}

uint64_t sub_243A24000()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_243A24140;

  return sub_243A28A14();
}

uint64_t sub_243A24140()
{

  return MEMORY[0x2822009F8](sub_243A2423C, 0, 0);
}

uint64_t sub_243A2423C()
{
  sub_243A29EE8();
  sub_243A2B198();
  v1 = *(v0 + 8);

  return v1();
}

void sub_243A242A0()
{
  *(v0 + 32) = 4;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 49) = 514;
  *(v0 + 51) = 2;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 81) = 514;
}

uint64_t sub_243A242D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_243A242FC, 0, 0);
}

void sub_243A242FC(__n128 a1)
{
  v76 = v1;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v3 = (v1 + 16);
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
LABEL_60:
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_243AC2DF8();
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  v7 = *MEMORY[0x277CFB168];
  *(v1 + 88) = *MEMORY[0x277CFB170];
  *(v1 + 96) = v7;
  v8 = *MEMORY[0x277CFB178];
  *(v1 + 104) = *MEMORY[0x277CFB160];
  *(v1 + 112) = v8;
  *(v1 + 120) = v2;
  if (!v6)
  {
LABEL_43:
    (*(v1 + 56))(*(v1 + 120), a1);

    v67 = *(v1 + 8);

    v67();
    return;
  }

  v9 = 0;
  v10 = 0;
  a1.n128_u64[0] = 138412290;
  v73 = a1;
  v74 = v3;
  while (1)
  {
    v11 = *(v1 + 32);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D470F0](v10);
    }

    else
    {
      v4 = *(*(v1 + 72) + 16);
      if (v10 >= v4)
      {
        goto LABEL_59;
      }

      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = __OFADD__(v10++, 1);
    *(v1 + 128) = v12;
    *(v1 + 136) = v10;
    if (v14)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v15 = *(v1 + 40);
    *(swift_task_alloc() + 16) = v12;
    os_unfair_lock_lock((v15 + 24));
    sub_243A2CFD4((v15 + 16), &v3[1].isa);
    *(v1 + 144) = v9;
    os_unfair_lock_unlock((v15 + 24));
    if (v9)
    {
      return;
    }

    v16 = *(v1 + 24);
    *(v1 + 152) = v16;

    if (!v16)
    {
      if (qword_27ED98910 != -1)
      {
        swift_once();
      }

      v26 = sub_243AC1468();
      __swift_project_value_buffer(v26, qword_27EDA14A8);
      v27 = v13;
      v2 = sub_243AC1448();
      v28 = sub_243AC2B58();

      if (os_log_type_enabled(v2, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v75 = v30;
        *v29 = 136315138;
        v31 = [v27 identifier];
        v32 = sub_243AC2858();
        v34 = v33;

        v35 = sub_243AB73D8(v32, v34, &v75);

        *(v29 + 4) = v35;
        v3 = v74;
        _os_log_impl(&dword_243A1B000, v2, v28, "No rule found for %s. Cannot update template.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x245D47D20](v30, -1, -1);
        MEMORY[0x245D47D20](v29, -1, -1);
      }

      v9 = 0;
      goto LABEL_6;
    }

    v17 = [v13 category];
    v18 = sub_243AC2858();
    v20 = v19;

    *(v1 + 160) = v18;
    *(v1 + 168) = v20;
    if (sub_243AC2858() == v18 && v21 == v20)
    {
      break;
    }

    v22 = sub_243AC2EE8();

    if (v22)
    {
      goto LABEL_48;
    }

    v24 = *(v1 + 160);
    v23 = *(v1 + 168);
    if (sub_243AC2858() == v24 && v25 == v23)
    {

LABEL_24:
      v38 = *(v1 + 128);

      v39 = [v38 identifier];
      v40 = sub_243AC2858();
      v42 = v41;

      sub_243A5B5E4(v40, v42);
      goto LABEL_25;
    }

    v36 = sub_243AC2EE8();

    v37 = *(v1 + 168);
    if (v36)
    {
      goto LABEL_24;
    }

    v45 = *(v1 + 160);
    if (sub_243AC2858() == v45 && v46 == v37)
    {

LABEL_32:
      v48 = [*(v1 + 128) identifier];
      v49 = sub_243AC2858();
      v51 = v50;

      if (sub_243A5B5E4(v49, v51) == 6)
      {
        v69 = swift_task_alloc();
        *(v1 + 184) = v69;
        *v69 = v1;
        v69[1] = sub_243A254C8;

        sub_243A2C3FC();
        return;
      }

LABEL_25:
      MEMORY[0x245D46D30](*(v1 + 128));
      if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_243AC29B8();
      }

      v43 = *(v1 + 152);
      v44 = *(v1 + 128);
      v2 = v3;
      sub_243AC29D8();

      v10 = *(v1 + 136);
      v9 = *(v1 + 144);
      *(v1 + 120) = *(v1 + 16);
      goto LABEL_6;
    }

    v47 = sub_243AC2EE8();

    if (v47)
    {
      goto LABEL_32;
    }

    v52 = v3;
    v54 = *(v1 + 160);
    v53 = *(v1 + 168);
    if (sub_243AC2858() == v54 && v55 == v53)
    {

LABEL_55:
      v70 = *(v1 + 152);
      v71 = swift_task_alloc();
      *(v1 + 192) = v71;
      *v71 = v1;
      v71[1] = sub_243A25E04;
      v72 = *(v1 + 128);

      sub_243A27FC0(v72, v70);
      return;
    }

    v56 = sub_243AC2EE8();

    if (v56)
    {
      goto LABEL_55;
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v57 = *(v1 + 128);
    v58 = sub_243AC1468();
    __swift_project_value_buffer(v58, qword_27EDA14A8);
    v59 = v57;
    v2 = sub_243AC1448();
    v60 = sub_243AC2B48();

    v3 = v52;
    if (os_log_type_enabled(v2, v60))
    {
      v61 = *(v1 + 128);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = v73.n128_u32[0];
      *(v62 + 4) = v61;
      *v63 = v61;
      v64 = v61;
      _os_log_impl(&dword_243A1B000, v2, v60, "Recommendation category unknown while filtering for recommendation: %@", v62, 0xCu);
      sub_243A2251C(v63, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v63, -1, -1);
      MEMORY[0x245D47D20](v62, -1, -1);
    }

    v65 = *(v1 + 152);
    v66 = *(v1 + 128);

    v10 = *(v1 + 136);
    v9 = *(v1 + 144);
LABEL_6:
    if (v10 == *(v1 + 80))
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v68 = swift_task_alloc();
  *(v1 + 176) = v68;
  *v68 = v1;
  v68[1] = sub_243A24B94;

  sub_243A27160(v13, v16);
}

uint64_t sub_243A24B94(char a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_243A24C94, 0, 0);
}

void sub_243A24C94()
{
  v75 = v0;
  if ((*(v0 + 200) & 1) == 0)
  {
LABEL_25:
    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    if (sub_243AC2858() == v30 && v32 == v31)
    {
    }

    else
    {
      v34 = sub_243AC2EE8();

      v35 = *(v0 + 168);
      if ((v34 & 1) == 0)
      {
        v36 = *(v0 + 160);
        if (sub_243AC2858() == v36 && v37 == v35)
        {
        }

        else
        {
          v46 = sub_243AC2EE8();

          if ((v46 & 1) == 0)
          {
            v52 = *(v0 + 160);
            v53 = *(v0 + 168);
            if (sub_243AC2858() == v52 && v54 == v53)
            {
LABEL_57:
            }

            else
            {
              v55 = sub_243AC2EE8();

              if ((v55 & 1) == 0)
              {
                if (qword_27ED98910 != -1)
                {
                  swift_once();
                }

                v56 = *(v0 + 128);
                v57 = sub_243AC1468();
                __swift_project_value_buffer(v57, qword_27EDA14A8);
                v58 = v56;
                v59 = sub_243AC1448();
                v60 = sub_243AC2B48();

                if (os_log_type_enabled(v59, v60))
                {
                  v61 = *(v0 + 128);
                  v62 = swift_slowAlloc();
                  v63 = swift_slowAlloc();
                  *v62 = 138412290;
                  *(v62 + 4) = v61;
                  *v63 = v61;
                  v64 = v61;
                  _os_log_impl(&dword_243A1B000, v59, v60, "Recommendation category unknown while filtering for recommendation: %@", v62, 0xCu);
                  sub_243A2251C(v63, &qword_27ED98BF8, &unk_243AC6150);
                  MEMORY[0x245D47D20](v63, -1, -1);
                  MEMORY[0x245D47D20](v62, -1, -1);
                }

                v65 = *(v0 + 152);
                v66 = *(v0 + 128);

                v4 = *(v0 + 136);
                v3 = *(v0 + 144);
                goto LABEL_3;
              }
            }

            v68 = *(v0 + 152);
            v69 = swift_task_alloc();
            *(v0 + 192) = v69;
            *v69 = v0;
            v69[1] = sub_243A25E04;
            v70 = *(v0 + 128);

            sub_243A27FC0(v70, v68);
            return;
          }
        }

        v47 = [*(v0 + 128) identifier];
        v48 = sub_243AC2858();
        v50 = v49;

        if (sub_243A5B5E4(v48, v50) == 6)
        {
          v51 = swift_task_alloc();
          *(v0 + 184) = v51;
          *v51 = v0;
          v51[1] = sub_243A254C8;

          sub_243A2C3FC();
          return;
        }

        goto LABEL_2;
      }
    }

    v38 = *(v0 + 128);

    v39 = [v38 identifier];
    v40 = sub_243AC2858();
    v42 = v41;

    sub_243A5B5E4(v40, v42);
    goto LABEL_35;
  }

LABEL_2:

LABEL_35:
  MEMORY[0x245D46D30](*(v0 + 128));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_243AC29B8();
  }

  v43 = *(v0 + 152);
  v44 = *(v0 + 128);
  sub_243AC29D8();

  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  *(v0 + 120) = *(v0 + 16);
LABEL_3:
  if (v4 == *(v0 + 80))
  {
LABEL_18:
    (*(v0 + 56))(*(v0 + 120));

    v23 = *(v0 + 8);

    v23();
  }

  else
  {
    v1 = 0x27ED98000uLL;
    v2 = qword_27EDA14A8;
    *&v45 = 136315138;
    v71 = v45;
    while (1)
    {
      v5 = *(v0 + 32);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x245D470F0](v4);
      }

      else
      {
        if (v4 >= *(*(v0 + 72) + 16))
        {
          goto LABEL_56;
        }

        v6 = *(v5 + 8 * v4 + 32);
      }

      v7 = v6;
      *(v0 + 128) = v6;
      *(v0 + 136) = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v8 = *(v0 + 40);
      *(swift_task_alloc() + 16) = v6;
      os_unfair_lock_lock((v8 + 24));
      sub_243A2CFD4((v8 + 16), (v0 + 24));
      *(v0 + 144) = v3;
      os_unfair_lock_unlock((v8 + 24));
      if (v3)
      {
        return;
      }

      v73 = v4 + 1;
      v9 = *(v0 + 24);
      *(v0 + 152) = v9;

      if (v9)
      {
        break;
      }

      if (*(v1 + 2320) != -1)
      {
        swift_once();
      }

      v10 = sub_243AC1468();
      __swift_project_value_buffer(v10, v2);
      v11 = v7;
      v12 = sub_243AC1448();
      v13 = sub_243AC2B58();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v74 = v15;
        *v14 = v71;
        v72 = v11;
        v16 = [v11 identifier];
        v17 = v2;
        v18 = sub_243AC2858();
        v20 = v19;

        v21 = v18;
        v2 = v17;
        v22 = sub_243AB73D8(v21, v20, &v74);

        *(v14 + 4) = v22;
        v1 = 0x27ED98000;
        _os_log_impl(&dword_243A1B000, v12, v13, "No rule found for %s. Cannot update template.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x245D47D20](v15, -1, -1);
        MEMORY[0x245D47D20](v14, -1, -1);
      }

      else
      {
      }

      v3 = 0;
      ++v4;
      if (v73 == *(v0 + 80))
      {
        goto LABEL_18;
      }
    }

    v24 = [v7 category];
    v25 = sub_243AC2858();
    v27 = v26;

    *(v0 + 160) = v25;
    *(v0 + 168) = v27;
    if (sub_243AC2858() == v25 && v28 == v27)
    {
    }

    else
    {
      v29 = sub_243AC2EE8();

      if ((v29 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v67 = swift_task_alloc();
    *(v0 + 176) = v67;
    *v67 = v0;
    v67[1] = sub_243A24B94;

    sub_243A27160(v7, v9);
  }
}

uint64_t sub_243A254C8(char a1)
{
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_243A255C8, 0, 0);
}

void sub_243A255C8()
{
  v75 = v0;
  if (*(v0 + 201))
  {
    goto LABEL_2;
  }

LABEL_3:
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  if (sub_243AC2858() == v1 && v3 == v2)
  {

    goto LABEL_14;
  }

  v5 = sub_243AC2EE8();

  if (v5)
  {
LABEL_14:
    v20 = *(v0 + 152);
    v21 = swift_task_alloc();
    *(v0 + 192) = v21;
    *v21 = v0;
    v21[1] = sub_243A25E04;
    v22 = *(v0 + 128);

    sub_243A27FC0(v22, v20);
    return;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 128);
  v7 = sub_243AC1468();
  __swift_project_value_buffer(v7, qword_27EDA14A8);
  v8 = v6;
  v9 = sub_243AC1448();
  v10 = sub_243AC2B48();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v11;
    *v13 = v11;
    v14 = v11;
    _os_log_impl(&dword_243A1B000, v9, v10, "Recommendation category unknown while filtering for recommendation: %@", v12, 0xCu);
    sub_243A2251C(v13, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v13, -1, -1);
    MEMORY[0x245D47D20](v12, -1, -1);
  }

  v15 = *(v0 + 152);
  v16 = *(v0 + 128);

  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
LABEL_17:
  if (v18 != *(v0 + 80))
  {
    v23 = 0x27ED98000uLL;
    v24 = qword_27EDA14A8;
    *&v17 = 136315138;
    v71 = v17;
    while (1)
    {
      v25 = *(v0 + 32);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x245D470F0](v18);
      }

      else
      {
        if (v18 >= *(*(v0 + 72) + 16))
        {
          goto LABEL_59;
        }

        v26 = *(v25 + 8 * v18 + 32);
      }

      v27 = v26;
      *(v0 + 128) = v26;
      *(v0 + 136) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v28 = *(v0 + 40);
      *(swift_task_alloc() + 16) = v26;
      os_unfair_lock_lock((v28 + 24));
      sub_243A2CFD4((v28 + 16), (v0 + 24));
      *(v0 + 144) = v19;
      os_unfair_lock_unlock((v28 + 24));
      if (v19)
      {
        return;
      }

      v73 = v18 + 1;
      v29 = *(v0 + 24);
      *(v0 + 152) = v29;

      if (v29)
      {
        v44 = [v27 category];
        v45 = sub_243AC2858();
        v47 = v46;

        *(v0 + 160) = v45;
        *(v0 + 168) = v47;
        if (sub_243AC2858() == v45 && v48 == v47)
        {
        }

        else
        {
          v49 = sub_243AC2EE8();

          if ((v49 & 1) == 0)
          {
            v50 = *(v0 + 160);
            v51 = *(v0 + 168);
            if (sub_243AC2858() == v50 && v52 == v51)
            {

LABEL_43:
              v55 = *(v0 + 128);

              v56 = [v55 identifier];
              v57 = sub_243AC2858();
              v59 = v58;

              sub_243A5B5E4(v57, v59);
              goto LABEL_44;
            }

            v53 = sub_243AC2EE8();

            v54 = *(v0 + 168);
            if (v53)
            {
              goto LABEL_43;
            }

            v62 = *(v0 + 160);
            if (sub_243AC2858() == v62 && v63 == v54)
            {
            }

            else
            {
              v64 = sub_243AC2EE8();

              if ((v64 & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            v65 = [*(v0 + 128) identifier];
            v66 = sub_243AC2858();
            v68 = v67;

            if (sub_243A5B5E4(v66, v68) == 6)
            {
              v69 = swift_task_alloc();
              *(v0 + 184) = v69;
              *v69 = v0;
              v69[1] = sub_243A254C8;

              sub_243A2C3FC();
              return;
            }

LABEL_2:

LABEL_44:
            MEMORY[0x245D46D30](*(v0 + 128));
            if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_45:
              v60 = *(v0 + 152);
              v61 = *(v0 + 128);
              sub_243AC29D8();

              v18 = *(v0 + 136);
              v19 = *(v0 + 144);
              *(v0 + 120) = *(v0 + 16);
              goto LABEL_17;
            }

LABEL_60:
            sub_243AC29B8();
            goto LABEL_45;
          }
        }

        v70 = swift_task_alloc();
        *(v0 + 176) = v70;
        *v70 = v0;
        v70[1] = sub_243A24B94;

        sub_243A27160(v27, v29);
        return;
      }

      if (*(v23 + 2320) != -1)
      {
        swift_once();
      }

      v30 = sub_243AC1468();
      __swift_project_value_buffer(v30, v24);
      v31 = v27;
      v32 = sub_243AC1448();
      v33 = sub_243AC2B58();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v74 = v35;
        *v34 = v71;
        v72 = v31;
        v36 = [v31 identifier];
        v37 = v24;
        v38 = sub_243AC2858();
        v40 = v39;

        v41 = v38;
        v24 = v37;
        v42 = sub_243AB73D8(v41, v40, &v74);

        *(v34 + 4) = v42;
        v23 = 0x27ED98000;
        _os_log_impl(&dword_243A1B000, v32, v33, "No rule found for %s. Cannot update template.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x245D47D20](v35, -1, -1);
        MEMORY[0x245D47D20](v34, -1, -1);
      }

      else
      {
      }

      v19 = 0;
      ++v18;
      if (v73 == *(v0 + 80))
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_32:
  (*(v0 + 56))(*(v0 + 120));

  v43 = *(v0 + 8);

  v43();
}

uint64_t sub_243A25E04(char a1)
{
  *(*v1 + 202) = a1;

  return MEMORY[0x2822009F8](sub_243A25F04, 0, 0);
}

void sub_243A25F04()
{
  v74 = v0;
  if (*(v0 + 202))
  {
LABEL_34:
    MEMORY[0x245D46D30](*(v0 + 128));
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_243AC29B8();
    }

    v52 = *(v0 + 152);
    v53 = *(v0 + 128);
    sub_243AC29D8();

    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    *(v0 + 120) = *(v0 + 16);
  }

  else
  {
LABEL_2:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 128);
    v2 = sub_243AC1468();
    __swift_project_value_buffer(v2, qword_27EDA14A8);
    v3 = v1;
    v4 = sub_243AC1448();
    v5 = sub_243AC2B48();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      _os_log_impl(&dword_243A1B000, v4, v5, "Recommendation category unknown while filtering for recommendation: %@", v7, 0xCu);
      sub_243A2251C(v8, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v8, -1, -1);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    v10 = *(v0 + 152);
    v11 = *(v0 + 128);

    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
  }

  if (v13 == *(v0 + 80))
  {
LABEL_22:
    (*(v0 + 56))(*(v0 + 120));

    v35 = *(v0 + 8);

    v35();
    return;
  }

  v15 = 0x27ED98000uLL;
  v16 = qword_27EDA14A8;
  *&v12 = 136315138;
  v70 = v12;
  while (1)
  {
    v17 = *(v0 + 32);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x245D470F0](v13);
    }

    else
    {
      if (v13 >= *(*(v0 + 72) + 16))
      {
        goto LABEL_52;
      }

      v18 = *(v17 + 8 * v13 + 32);
    }

    v19 = v18;
    *(v0 + 128) = v18;
    *(v0 + 136) = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v20 = *(v0 + 40);
    *(swift_task_alloc() + 16) = v18;
    os_unfair_lock_lock((v20 + 24));
    sub_243A2CFD4((v20 + 16), (v0 + 24));
    *(v0 + 144) = v14;
    os_unfair_lock_unlock((v20 + 24));
    if (v14)
    {
      return;
    }

    v72 = v13 + 1;
    v21 = *(v0 + 24);
    *(v0 + 152) = v21;

    if (v21)
    {
      break;
    }

    if (*(v15 + 2320) != -1)
    {
      swift_once();
    }

    v22 = sub_243AC1468();
    __swift_project_value_buffer(v22, v16);
    v23 = v19;
    v24 = sub_243AC1448();
    v25 = sub_243AC2B58();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73 = v27;
      *v26 = v70;
      v71 = v23;
      v28 = [v23 identifier];
      v29 = v16;
      v30 = sub_243AC2858();
      v32 = v31;

      v33 = v30;
      v16 = v29;
      v34 = sub_243AB73D8(v33, v32, &v73);

      *(v26 + 4) = v34;
      v15 = 0x27ED98000;
      _os_log_impl(&dword_243A1B000, v24, v25, "No rule found for %s. Cannot update template.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x245D47D20](v27, -1, -1);
      MEMORY[0x245D47D20](v26, -1, -1);
    }

    else
    {
    }

    v14 = 0;
    ++v13;
    if (v72 == *(v0 + 80))
    {
      goto LABEL_22;
    }
  }

  v36 = [v19 category];
  v37 = sub_243AC2858();
  v39 = v38;

  *(v0 + 160) = v37;
  *(v0 + 168) = v39;
  if (sub_243AC2858() == v37 && v40 == v39)
  {

    goto LABEL_48;
  }

  v41 = sub_243AC2EE8();

  if (v41)
  {
LABEL_48:
    v65 = swift_task_alloc();
    *(v0 + 176) = v65;
    *v65 = v0;
    v65[1] = sub_243A24B94;

    sub_243A27160(v19, v21);
    return;
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 168);
  if (sub_243AC2858() == v42 && v44 == v43)
  {

LABEL_33:
    v47 = *(v0 + 128);

    v48 = [v47 identifier];
    v49 = sub_243AC2858();
    v51 = v50;

    sub_243A5B5E4(v49, v51);
    goto LABEL_34;
  }

  v45 = sub_243AC2EE8();

  v46 = *(v0 + 168);
  if (v45)
  {
    goto LABEL_33;
  }

  v54 = *(v0 + 160);
  if (sub_243AC2858() == v54 && v55 == v46)
  {

LABEL_41:
    v57 = [*(v0 + 128) identifier];
    v58 = sub_243AC2858();
    v60 = v59;

    if (sub_243A5B5E4(v58, v60) != 6)
    {

      goto LABEL_34;
    }

LABEL_53:
    v66 = swift_task_alloc();
    *(v0 + 184) = v66;
    *v66 = v0;
    v66[1] = sub_243A254C8;

    sub_243A2C3FC();
    return;
  }

  v56 = sub_243AC2EE8();

  if (v56)
  {
    goto LABEL_41;
  }

  v61 = *(v0 + 160);
  v62 = *(v0 + 168);
  if (sub_243AC2858() == v61 && v63 == v62)
  {
  }

  else
  {
    v64 = sub_243AC2EE8();

    if ((v64 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v67 = *(v0 + 152);
  v68 = swift_task_alloc();
  *(v0 + 192) = v68;
  *v68 = v0;
  v68[1] = sub_243A25E04;
  v69 = *(v0 + 128);

  sub_243A27FC0(v69, v67);
}

uint64_t sub_243A26748@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 identifier];
  v6 = sub_243AC2858();
  v8 = v7;

  v9 = *a2;
  if (!*(v9 + 16))
  {

LABEL_6:
    *a3 = 0;
    return result;
  }

  v10 = sub_243A2DDC0(v6, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  [*(*(v9 + 56) + 8 * v10) copy];
  sub_243AC2C68();
  swift_unknownObjectRelease();
  sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_243A2685C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C38, &qword_243AC4C90);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A268F8, 0, 0);
}

uint64_t sub_243A268F8()
{
  v37 = v0;
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  if (v5 > 0xEu || ((1 << v5) & 0x6238) == 0)
  {
    v28 = [*(v0 + 16) status];
    if (v28)
    {
      v29 = v28;
      v30 = sub_243AC2858();
      v32 = v31;

      v33 = sub_243AC2858();
      if (v32)
      {
        if (v30 == v33 && v32 == v34)
        {

          v8 = 1;
        }

        else
        {
          v8 = sub_243AC2EE8();
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_243AC2858();
    }

    v8 = 0;
  }

  else
  {
    v7 = [*(*(v0 + 24) + 24) lastDismissedTimestamp_];
    v8 = v7 != 0;
    if (v7)
    {
      sub_243AC1248();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(v0 + 32);
    v11 = sub_243AC1268();
    (*(*(v11 - 8) + 56))(v10, v9, 1, v11);
    sub_243A2251C(v10, &qword_27ED98C38, &qword_243AC4C90);
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 16);
    v13 = sub_243AC1468();
    __swift_project_value_buffer(v13, qword_27EDA14A8);
    v14 = v12;
    v15 = sub_243AC1448();
    v16 = sub_243AC2B48();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v7 != 0;
      v18 = *(v0 + 16);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315394;
      v21 = [v18 identifier];
      v22 = sub_243AC2858();
      v24 = v23;

      v25 = sub_243AB73D8(v22, v24, &v36);

      *(v19 + 4) = v25;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v17;
      _os_log_impl(&dword_243A1B000, v15, v16, "Checking local dismissed status for %s: %{BOOL}d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245D47D20](v20, -1, -1);
      MEMORY[0x245D47D20](v19, -1, -1);
    }
  }

LABEL_13:

  v26 = *(v0 + 8);

  return v26(v8 & 1);
}

uint64_t sub_243A26C8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_243A26CAC, 0, 0);
}

uint64_t sub_243A26CAC()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  if (v5 > 9)
  {
    if (v5 <= 12)
    {
      if (v5 == 10)
      {
        v12 = *(v0 + 24);
        v8 = *(v12 + 51);
        if (v8 == 2)
        {
          LOBYTE(v8) = sub_243A9C980();
          *(v12 + 51) = v8 & 1;
        }

        goto LABEL_36;
      }

      if (v5 == 11)
      {
        LOBYTE(v8) = [*(*(v0 + 24) + 16) aa_needsEmailConfiguration] ^ 1;
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v5 != 13)
    {
      if (v5 == 14)
      {
        LOBYTE(v8) = [objc_opt_self() isUserVisibleKeychainSyncEnabled];
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v13 = *(*(v0 + 24) + 16);
    v14 = MEMORY[0x277CB8920];
LABEL_27:
    LOBYTE(v8) = [v13 isEnabledForDataclass_];
    goto LABEL_36;
  }

  if (v5 > 4)
  {
    if (v5 != 5)
    {
      if (v5 == 9)
      {
        v9 = swift_task_alloc();
        *(v0 + 48) = v9;
        *v9 = v0;
        v9[1] = sub_243A2D044;
        v10 = *(v0 + 16);

        return sub_243A2CAAC(v10);
      }

LABEL_28:
      v15 = [*(v0 + 16) status];
      if (v15)
      {
        v16 = v15;
        v17 = sub_243AC2858();
        v19 = v18;

        v20 = sub_243AC2858();
        if (v19)
        {
          if (v17 == v20 && v19 == v21)
          {

            LOBYTE(v8) = 1;
          }

          else
          {
            v22 = sub_243AC2EE8();

            LOBYTE(v8) = v22;
          }

          goto LABEL_36;
        }
      }

      else
      {
        sub_243AC2858();
      }

      LOBYTE(v8) = 0;
LABEL_36:
      v23 = *(v0 + 8);
      v24 = v8 & 1;

      return v23(v24);
    }

    v13 = *(*(v0 + 24) + 16);
    v14 = MEMORY[0x277CB89D8];
    goto LABEL_27;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v6 = swift_task_alloc();
      *(v0 + 32) = v6;
      *v6 = v0;
      v6[1] = sub_243A27060;

      return sub_243A28A14();
    }

    goto LABEL_28;
  }

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_243A2D040;

  return sub_243A2C3FC();
}

uint64_t sub_243A27060(unsigned __int8 a1)
{
  v2 = a1;
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(v2 < 2);
}

uint64_t sub_243A27160(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243A27184, 0, 0);
}

uint64_t sub_243A27184()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  LOBYTE(v6) = 0;
  if (v5 <= 9u)
  {
    if (v5 > 3u)
    {
      if (v5 == 4)
      {
        v16 = swift_task_alloc();
        *(v0 + 64) = v16;
        *v16 = v0;
        v16[1] = sub_243A278E0;

        return sub_243A28A14();
      }

      if (v5 == 5)
      {
        if (([*(*(v0 + 32) + 16) isEnabledForDataclass_] & 1) == 0)
        {
          sub_243A2B198();
          if (v10)
          {
            v11 = *(v0 + 24);
            v12 = swift_task_alloc();
            *(v0 + 48) = v12;
            *(v12 + 16) = v11;
            v13 = swift_task_alloc();
            *(v0 + 56) = v13;
            *v13 = v0;
            v13[1] = sub_243A277B0;
            v14 = MEMORY[0x277D839B0];

            return MEMORY[0x2822007B8](v0 + 113, 0, 0, 0xD00000000000001FLL, 0x8000000243ACC280, sub_243A2CD58, v12, v14);
          }
        }

        LOBYTE(v6) = 0;
      }
    }

    else
    {
      if (v5 == 2)
      {
        v15 = swift_task_alloc();
        *(v0 + 96) = v15;
        *v15 = v0;
        v15[1] = sub_243A27DA0;

        return sub_243A29544();
      }

      if (v5 == 3)
      {
        v9 = swift_task_alloc();
        *(v0 + 72) = v9;
        *v9 = v0;
        v9[1] = sub_243A279E0;

        return sub_243A2C3FC();
      }
    }

LABEL_40:
    v21 = *(v0 + 8);
    v22 = v6 & 1;

    return v21(v22);
  }

  if (v5 <= 0xCu)
  {
    if (v5 == 10)
    {
      v19 = swift_task_alloc();
      *(v0 + 40) = v19;
      *v19 = v0;
      v19[1] = sub_243A276B4;

      return sub_243A290E8();
    }

    if (v5 == 11)
    {
      LOBYTE(v6) = [*(*(v0 + 32) + 16) aa_needsEmailConfiguration];
    }

    goto LABEL_40;
  }

  if (v5 != 13)
  {
    if (v5 == 14)
    {
      sub_243A2B198();
      LOBYTE(v6) = v20 & ([objc_opt_self() isUserVisibleKeychainSyncEnabled] ^ 1);
    }

    else if (v5 == 16)
    {
      v6 = *(*(v0 + 32) + 82);
      if (v6 == 2)
      {
        v7 = swift_task_alloc();
        *(v0 + 104) = v7;
        *v7 = v0;
        v7[1] = sub_243A27E9C;

        return sub_243A922C0(0x6C696D6146646461, 0xEF7265626D654D79);
      }
    }

    goto LABEL_40;
  }

  v17 = swift_task_alloc();
  *(v0 + 88) = v17;
  *v17 = v0;
  v17[1] = sub_243A27CA4;
  v18 = *(v0 + 24);

  return sub_243A2B7E8(v18);
}

uint64_t sub_243A276B4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A277B0()
{

  return MEMORY[0x2822009F8](sub_243A278C8, 0, 0);
}

uint64_t sub_243A278E0(unsigned __int8 a1)
{
  v2 = a1;
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(v2 == 2);
}

uint64_t sub_243A279E0(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 80) = v7;
    *v7 = v4;
    v7[1] = sub_243A27B90;
    v8 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v3 + 112, 0, 0, 0xD00000000000001BLL, 0x8000000243ACC260, sub_243A2BB78, 0, v8);
  }
}

uint64_t sub_243A27B90()
{

  return MEMORY[0x2822009F8](sub_243A27C8C, 0, 0);
}

uint64_t sub_243A27CA4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A27DA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A27E9C(char a1)
{
  *(*v1 + 114) = a1;

  return MEMORY[0x2822009F8](sub_243A27F9C, 0, 0);
}

uint64_t sub_243A27FC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243A27FE4, 0, 0);
}

uint64_t sub_243A27FE4()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = sub_243A5B5E4(v2, v4);
  if (v5 <= 8)
  {
    switch(v5)
    {
      case 0:
        v12 = swift_task_alloc();
        *(v0 + 48) = v12;
        *v12 = v0;
        v12[1] = sub_243A284D4;
        v13 = *(v0 + 24);

        return sub_243A2A964(v13);
      case 2:
        v18 = swift_task_alloc();
        *(v0 + 56) = v18;
        *v18 = v0;
        v18[1] = sub_243A285D0;

        return sub_243A29544();
      case 4:
        v10 = swift_task_alloc();
        *(v0 + 40) = v10;
        *v10 = v0;
        v10[1] = sub_243A283D4;

        return sub_243A28A14();
    }

LABEL_19:
    LOBYTE(v6) = 1;
    goto LABEL_28;
  }

  if (v5 > 15)
  {
    if (v5 == 16)
    {
      v6 = *(*(v0 + 32) + 82);
      if (v6 == 2)
      {
        v16 = swift_task_alloc();
        *(v0 + 64) = v16;
        *v16 = v0;
        v16[1] = sub_243A286CC;
        v8 = 0x6C696D6146646461;
        v9 = 0xEF7265626D654D79;
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (v5 == 20)
    {
      LOBYTE(v6) = 0;
LABEL_28:
      v17 = *(v0 + 8);

      return v17(v6 & 1);
    }

    goto LABEL_19;
  }

  if (v5 != 9)
  {
    if (v5 == 15)
    {
      v6 = *(*(v0 + 32) + 81);
      if (v6 == 2)
      {
        v7 = swift_task_alloc();
        *(v0 + 72) = v7;
        *v7 = v0;
        v7[1] = sub_243A287F0;
        v8 = 0x6D61467075746573;
        v9 = 0xEB00000000796C69;
LABEL_25:

        return sub_243A922C0(v8, v9);
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_243A28914;
  v15 = *(v0 + 16);

  return sub_243A2CAAC(v15);
}

uint64_t sub_243A283D4(unsigned __int8 a1)
{
  v2 = a1;
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(v2 == 2);
}

uint64_t sub_243A284D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A285D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_243A286CC(char a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_243A287CC, 0, 0);
}

uint64_t sub_243A287F0(char a1)
{
  *(*v1 + 89) = a1;

  return MEMORY[0x2822009F8](sub_243A288F0, 0, 0);
}

uint64_t sub_243A28914(char a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3((a1 & 1) == 0);
}

uint64_t sub_243A28A34()
{
  v1 = *(v0[2] + 32);
  if (v1 == 4)
  {
    v2 = [objc_opt_self() sharedConnection];
    if (!v2)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = v2;
    v11 = [v2 isCloudPrivateRelayAllowed];

    if (v11)
    {
      v12 = swift_task_alloc();
      v0[3] = v12;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C20, &qword_243AC4C70);
      *v12 = v0;
      v12[1] = sub_243A28C64;
      v7 = sub_243A28DD0;
      v2 = v0 + 4;
      v6 = 0x8000000243ACC200;
      v3 = 0;
      v4 = 0;
      v5 = 0xD000000000000015;
      v8 = 0;

      return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v13 = sub_243AC1468();
    __swift_project_value_buffer(v13, qword_27EDA14A8);
    v14 = sub_243AC1448();
    v15 = sub_243AC2B78();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243A1B000, v14, v15, "Hiding Private Relay recommendations because a restriction profile was detected", v16, 2u);
      MEMORY[0x245D47D20](v16, -1, -1);
    }

    v1 = 3;
  }

  v17 = v0[1];

  return v17(v1);
}

uint64_t sub_243A28C64()
{

  if (v0)
  {

    v1 = sub_243A28DAC;
  }

  else
  {
    v1 = sub_243A28D7C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243A28D7C()
{
  if (*(v0 + 32) == 4)
  {
    v1 = 2;
  }

  else
  {
    v1 = *(v0 + 32);
  }

  *(*(v0 + 16) + 32) = v1;
  return (*(v0 + 8))();
}

void sub_243A28DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C28, &qword_243AC4C78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v7 = sub_243AC2BC8();
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_243A2CA00;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A29060;
  aBlock[3] = &block_descriptor_74;
  v10 = _Block_copy(aBlock);

  [v6 getUserTierExtended:v7 completionHandler:v10];
  _Block_release(v10);
}

void sub_243A29060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, v8);
}

uint64_t sub_243A290E8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_243A2918C;

  return sub_243A2C3FC();
}

uint64_t sub_243A2918C(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_243A2928C, 0, 0);
}

uint64_t sub_243A2928C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + 51);
    if (v2 == 2)
    {
      LOBYTE(v2) = sub_243A9C980();
      *(v1 + 51) = v2 & 1;
    }

    *(v0 + 41) = v2 & 1;
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_243A2943C;

    return sub_243A29A50();
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = sub_243AC1468();
    __swift_project_value_buffer(v5, qword_27EDA14A8);
    v6 = sub_243AC1448();
    v7 = sub_243AC2B48();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243A1B000, v6, v7, "User is not eligible for Shared Photo Library because they do not have ICPL turned on.", v8, 2u);
      MEMORY[0x245D47D20](v8, -1, -1);
    }

    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_243A2943C(uint64_t a1)
{
  v3 = *(*v1 + 41);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4((a1 > 1) & ~v3);
}

uint64_t sub_243A29564()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 81);
  if (v2 == 2)
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_243A296F8;
    v4 = 0x6D61467075746573;
    v5 = 0xEB00000000796C69;
LABEL_5:

    return sub_243A922C0(v4, v5);
  }

  *(v0 + 41) = v2 & 1;
  v6 = *(v1 + 82);
  if (v6 == 2)
  {
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v7[1] = sub_243A2991C;
    v4 = 0x6C696D6146646461;
    v5 = 0xEF7265626D654D79;
    goto LABEL_5;
  }

  v9 = *(v0 + 8);

  return v9(((v6 | v2) & 1) == 0);
}

uint64_t sub_243A296F8(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_243A297F8, 0, 0);
}

uint64_t sub_243A297F8()
{
  *(*(v0 + 16) + 81) = *(v0 + 40);
  v1 = *(v0 + 40);
  *(v0 + 41) = v1;
  v2 = *(*(v0 + 16) + 82);
  if (v2 == 2)
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_243A2991C;

    return sub_243A922C0(0x6C696D6146646461, 0xEF7265626D654D79);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5(((v1 | v2) & 1) == 0);
  }
}

uint64_t sub_243A2991C(char a1)
{
  *(*v1 + 42) = a1;

  return MEMORY[0x2822009F8](sub_243A29A1C, 0, 0);
}

uint64_t sub_243A29A70()
{
  v1 = v0[2];
  if (*(v1 + 48) == 1)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_243A29B58;

    return sub_243A91C90(0);
  }

  else
  {
    v4 = *(v1 + 40);
    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_243A29B58(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_243A29C58, 0, 0);
}

uint64_t sub_243A29C58()
{
  v18 = v0;
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [*(v0 + 32) members];
    sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
    v3 = sub_243AC2998();

    if (v3 >> 62)
    {
      v4 = sub_243AC2DF8();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = *(v0 + 16);

    *(v5 + 40) = v4;
    *(v5 + 48) = 0;
    v6 = [v1 members];
    v7 = sub_243AC2998();

    if (v7 >> 62)
    {
      v8 = sub_243AC2DF8();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = sub_243AC1448();
    v11 = sub_243AC2B48();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_243AB73D8(0xD000000000000017, 0x8000000243ACC1E0, &v17);
      _os_log_impl(&dword_243A1B000, v10, v11, "%s Unable to fetch family circle.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245D47D20](v13, -1, -1);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    v8 = 0;
    v14 = *(v0 + 16);
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

uint64_t sub_243A29EE8()
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(v0 + 64) != 1)
  {
    return *(v0 + 56);
  }

  v1 = 0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC4AC0;
  *(inited + 32) = sub_243AC2858();
  *(inited + 40) = v4;
  *(inited + 48) = sub_243AC2858();
  *(inited + 56) = v5;
  *(inited + 64) = sub_243AC2858();
  *(inited + 72) = v6;
  v7 = v2;
  sub_243A9CBC8(v7, inited);
  v9 = v8;

  swift_setDeallocating();
  v10 = swift_arrayDestroy();
  v11 = *(v9 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v36 = v12;
    v37 = v0;
    v35[0] = v1;
    v35[1] = v35;
    MEMORY[0x28223BE20](v10);
    v38 = v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v39 = 0;
    v1 = 0;
    v12 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v0 = *MEMORY[0x277CB89D8];
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v1 << 6);
      v22 = v9;
      v23 = sub_243AC2858();
      v25 = v24;
      if (v23 == sub_243AC2858() && v25 == v26)
      {

        v9 = v22;
      }

      else
      {
        v28 = sub_243AC2EE8();

        v9 = v22;
        if ((v28 & 1) == 0)
        {
          *&v38[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
            return *(v0 + 56);
          }
        }
      }
    }

    v19 = v1;
    while (1)
    {
      v1 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v1 >= v17)
      {
        v31 = sub_243A2C1B8(v38, v36, v39, v9);
        v0 = v37;
        goto LABEL_24;
      }

      v20 = *(v12 + 8 * v1);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = sub_243A2C128(v33, v12, v9, sub_243A2A274);

  MEMORY[0x245D47D20](v33, -1, -1);
  v31 = v34;
LABEL_24:
  v32 = *(v31 + 16);

  result = v32;
  *(v0 + 56) = v32;
  *(v0 + 64) = 0;
  return result;
}

uint64_t sub_243A2A274(void *a1)
{
  v1 = sub_243AC2858();
  v3 = v2;
  if (v1 == sub_243AC2858() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_243AC2EE8();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_243A2A340()
{
  v1 = v0[23];
  if (*(v1 + 80) == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CFB208]) initWithAccount_];
    v0[24] = v2;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_243A2A4CC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C08, &qword_243AC4C58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_243A2A88C;
    v0[13] = &block_descriptor;
    v0[14] = v3;
    [v2 calculateExtraQuotaNeededToSyncIsAccountFull:0 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = v0[1];

    return v5(v4, 0);
  }
}

uint64_t sub_243A2A4CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_243A2A67C;
  }

  else
  {
    v2 = sub_243A2A5DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243A2A5DC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  *(v1 + 72) = [v3 integerValue];
  *(v1 + 80) = 0;
  v4 = [v3 integerValue];

  v5 = v0[1];

  return v5(v4, 0);
}

uint64_t sub_243A2A67C()
{
  v17 = v0;
  v1 = v0[24];
  swift_willThrow();

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14A8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_243AB73D8(0xD00000000000001ELL, 0x8000000243ACC1C0, v16);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = sub_243AC2F58();
    v13 = sub_243AB73D8(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_243A1B000, v5, v6, "%s Error while fetching amount of storage recovered to sync apps. %s Will not show turn on more apps recommendation.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v10, -1, -1);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0, 1);
}

uint64_t sub_243A2A88C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243A2A964(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;

  return MEMORY[0x2822009F8](sub_243A2A9F4, 0, 0);
}

uint64_t sub_243A2A9F4()
{
  v45 = v0;
  v44 = *MEMORY[0x277D85DE8];
  v1 = v0[16];
  if (*(v1 + 64) == 1)
  {
    v2 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_243AC4AC0;
    *(inited + 32) = sub_243AC2858();
    *(inited + 40) = v4;
    *(inited + 48) = sub_243AC2858();
    *(inited + 56) = v5;
    *(inited + 64) = sub_243AC2858();
    *(inited + 72) = v6;
    v7 = v2;
    sub_243A9CBC8(v7, inited);
    v9 = v8;

    swift_setDeallocating();
    v10 = swift_arrayDestroy();
    v11 = *(v9 + 32);
    v12 = ((1 << v11) + 63) >> 6;
    v40 = v0;
    v41 = v1;
    if ((v11 & 0x3Fu) > 0xD)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v38[1] = v38;
      v39 = v12;
      MEMORY[0x28223BE20](v10);
      v42 = v38 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v42, v13);
      v43 = 0;
      v14 = 0;
      v12 = v9 + 56;
      v15 = 1 << *(v9 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v9 + 56);
      v18 = (v15 + 63) >> 6;
      v0 = *MEMORY[0x277CB89D8];
      while (v17)
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v14 << 6);
        v1 = v9;
        v23 = sub_243AC2858();
        v25 = v24;
        if (v23 == sub_243AC2858() && v25 == v26)
        {

          v9 = v1;
        }

        else
        {
          v28 = sub_243AC2EE8();

          v9 = v1;
          if ((v28 & 1) == 0)
          {
            *&v42[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
            if (__OFADD__(v43++, 1))
            {
              __break(1u);
              goto LABEL_22;
            }
          }
        }
      }

      v20 = v14;
      while (1)
      {
        v14 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v14 >= v18)
        {
          v32 = sub_243A2C1B8(v42, v39, v43, v9);
          goto LABEL_27;
        }

        v21 = *(v12 + 8 * v14);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v17 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_32:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v36 = swift_slowAlloc();
    v37 = sub_243A2C128(v36, v12, v9, sub_243A2A274);

    MEMORY[0x245D47D20](v36, -1, -1);
    v32 = v37;
LABEL_27:
    v33 = *(v32 + 16);

    v0 = v40;
    v34 = v41;
    *(v41 + 56) = v33;
    *(v34 + 64) = 0;
    if (v33 >= 2)
    {
      goto LABEL_28;
    }

LABEL_23:
    v30 = v0[1];

    return v30(0);
  }

LABEL_22:
  if (*(v1 + 56) < 2)
  {
    goto LABEL_23;
  }

LABEL_28:
  v35 = swift_task_alloc();
  v0[17] = v35;
  *v35 = v0;
  v35[1] = sub_243A2AEA0;

  return sub_243A2A320();
}

uint64_t sub_243A2AEA0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 112) = a2;
  *(v3 + 96) = v2;
  *(v3 + 104) = a1;
  *(v3 + 144) = a2;

  return MEMORY[0x2822009F8](sub_243A2AFD4, 0, 0);
}

uint64_t sub_243A2AFD4()
{
  v10 = v0;
  v9[1] = *MEMORY[0x277D85DE8];
  if ((*(v0 + 144) & 1) != 0 || !sub_243A2C734(*(v0 + 104), *(v0 + 120)))
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v2 = sub_243AC1468();
    __swift_project_value_buffer(v2, qword_27EDA14A8);
    v3 = sub_243AC1448();
    v4 = sub_243AC2B48();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_243AB73D8(0xD00000000000001ALL, 0x8000000243ACC140, v9);
      _os_log_impl(&dword_243A1B000, v3, v4, "%s Not enough storage available for turn on apps. Bailing.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245D47D20](v6, -1, -1);
      MEMORY[0x245D47D20](v5, -1, -1);
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

void sub_243A2B198()
{
  v1 = *(v0 + 50);
  if (v1 != 2)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = sub_243AC1448();
    v11 = sub_243AC2B48();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v1 & 1;
      _os_log_impl(&dword_243A1B000, v10, v11, "Returning cached HSA2 Status %{BOOL}d", v12, 8u);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    goto LABEL_16;
  }

  v2 = [*(v0 + 16) aa_altDSID];
  if (!v2)
  {
LABEL_12:
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v13 = sub_243AC1468();
    __swift_project_value_buffer(v13, qword_27EDA14A8);
    v10 = sub_243AC1448();
    v14 = sub_243AC2B48();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_243A1B000, v10, v14, "HSA2 is not enabled. Cannot display messages recommendation.", v15, 2u);
      MEMORY[0x245D47D20](v15, -1, -1);
    }

LABEL_16:

    return;
  }

  v3 = v2;
  v4 = [objc_opt_self() defaultStore];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 aa:v3 authKitAccountForAltDSID:?];

    if (v6)
    {
      v7 = [objc_opt_self() sharedInstance];
      v8 = [v7 securityLevelForAccount_];

      if (v8 == 4)
      {
        *(v0 + 50) = 1;
        return;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_243A2B418(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_243A2CE30;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243A2B794;
    aBlock[3] = &block_descriptor_94;
    v12 = _Block_copy(aBlock);
    v13 = a2;

    [v9 currentStorageOnDeviceWithReply_];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243A2B604(unint64_t a1, id a2)
{
  v3 = [a2 criteria];
  v4 = [v3 max];

  v5 = [v4 unsignedLongLongValue];
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v6 = sub_243AC1468();
  __swift_project_value_buffer(v6, qword_27EDA14A8);
  v7 = sub_243AC1448();
  v8 = sub_243AC2B48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 > a1;
    _os_log_impl(&dword_243A1B000, v7, v8, "Can messages data fit in iCloud?: %{BOOL}d", v9, 8u);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  return sub_243AC2A38();
}

uint64_t sub_243A2B794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_243A2B7E8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_243A2B808, 0, 0);
}

uint64_t sub_243A2B808()
{
  if ([*(v0[6] + 16) isEnabledForDataclass_])
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_243A2B8F0;

    return sub_243A2A320();
  }
}

uint64_t sub_243A2B8F0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 64) = a2;

  return MEMORY[0x2822009F8](sub_243A2B9F8, 0, 0);
}

uint64_t sub_243A2B9F8()
{
  if (*(v0 + 64))
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v1 = sub_243AC1468();
    __swift_project_value_buffer(v1, qword_27EDA14A8);
    v2 = sub_243AC1448();
    v3 = sub_243AC2B58();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_243A1B000, v2, v3, "Could not determine the amount of storage required to enable iCloud Backup. Bailing.", v4, 2u);
      MEMORY[0x245D47D20](v4, -1, -1);
    }

    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = [*(v0 + 40) criteria];
    v8 = [v7 max];

    v9 = [v8 integerValue];
    v5 = v6 < v9;
  }

  v10 = *(v0 + 8);

  return v10(v5);
}

void sub_243A2BB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  aBlock[4] = sub_243A2CF48;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243AB35B4;
  aBlock[3] = &block_descriptor_100;
  v8 = _Block_copy(aBlock);

  PLCanEnableCloudPhotoLibrary();
  _Block_release(v8);
}

void sub_243A2BD10(char a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = a2;
    v6 = sub_243AC1448();
    v7 = sub_243AC2B58();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_243AC2F58();
      v12 = sub_243AB73D8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_243A1B000, v6, v7, "User cannot enable ICPL error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D47D20](v9, -1, -1);
      MEMORY[0x245D47D20](v8, -1, -1);
    }

    LOBYTE(v13) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
    sub_243AC2A38();
  }
}

uint64_t sub_243A2BEF0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_243A2BF68()
{
  result = qword_27ED98BF0;
  if (!qword_27ED98BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98BF0);
  }

  return result;
}

void sub_243A2BFBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_243A2C1B8(a1, a2, v20, a3);
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_243A2C128(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_243A2BFBC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_243A2C1B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  result = sub_243AC2CE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_243AC2858();
    sub_243AC2FB8();
    v17 = v16;
    sub_243AC28A8();
    v18 = sub_243AC2FD8();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_243A2C3FC()
{

  return MEMORY[0x2822009F8](sub_243A2C488, 0, 0);
}

uint64_t sub_243A2C488()
{
  v22 = v0;
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  if (![v1 isMultiLibraryModeEnabled])
  {
    v4 = [v1 sharedPhotoLibrary];
    v6 = [v4 isCloudPhotoLibraryEnabled];
    goto LABEL_5;
  }

  *(v0 + 40) = 0;
  v2 = [v1 openPhotoLibraryWithWellKnownIdentifier:1 error:v0 + 40];
  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v4 isCloudPhotoLibraryEnabled];
LABEL_5:
    v7 = v6;

    goto LABEL_6;
  }

  v10 = v3;
  v11 = sub_243AC11A8();

  swift_willThrow();
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v12 = sub_243AC1468();
  __swift_project_value_buffer(v12, qword_27EDA14A8);
  v13 = v11;
  v14 = sub_243AC1448();
  v15 = sub_243AC2B58();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = sub_243AC2F58();
    v20 = sub_243AB73D8(v18, v19, v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_243A1B000, v14, v15, "Unable to get system photo library: %s. Returning isICPLEnabled as false", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245D47D20](v17, -1, -1);
    MEMORY[0x245D47D20](v16, -1, -1);
  }

  else
  {
  }

  v7 = 0;
LABEL_6:
  v8 = *(v0 + 8);

  return v8(v7);
}

BOOL sub_243A2C734(uint64_t a1, id a2)
{
  v4 = [a2 criteria];
  v5 = [v4 min];

  v6 = [v5 integerValue];
  v7 = [a2 criteria];
  v8 = [v7 max];

  v9 = [v8 integerValue];
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v10 = sub_243AC1468();
  __swift_project_value_buffer(v10, qword_27EDA14A8);
  v11 = a2;
  v12 = sub_243AC1448();
  v13 = sub_243AC2B48();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v6 < a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v6;
    v23 = swift_slowAlloc();
    v17 = v23;
    *v15 = 136316162;
    *(v15 + 4) = sub_243AB73D8(0xD000000000000034, 0x8000000243ACC160, &v23);
    *(v15 + 12) = 2112;
    v18 = [v11 criteria];
    *(v15 + 14) = v18;
    *v16 = v18;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a1;
    *(v15 + 32) = 1024;
    *(v15 + 34) = v14;
    *(v15 + 38) = 1024;
    *(v15 + 40) = v9 > a1;
    _os_log_impl(&dword_243A1B000, v12, v13, "%s Criteria: %@ Free cloud storage: %ld satisfiesMin: %{BOOL}d satisfiesMax: %{BOOL}d", v15, 0x2Cu);
    sub_243A2251C(v16, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v19 = v17;
    v6 = v22;
    MEMORY[0x245D47D20](v19, -1, -1);
    MEMORY[0x245D47D20](v15, -1, -1);
  }

  return v6 < a1 && v9 > a1;
}

uint64_t sub_243A2CA00(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C28, &qword_243AC4C78);

  return sub_243A28FB8(a1, a2);
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_243A2CACC()
{
  v20 = v0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = [*(v0 + 16) bundleID];
    if (!v3)
    {
      sub_243AC2858();
      v3 = sub_243AC2818();
    }

    v4 = [v2 applicationIsInstalled_];

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 16);
    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = v5;
    v8 = sub_243AC1448();
    v9 = sub_243AC2B58();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_243AB73D8(0xD00000000000001DLL, 0x8000000243ACC240, &v19);
      *(v11 + 12) = 2080;
      v13 = [v10 bundleID];
      v14 = sub_243AC2858();
      v16 = v15;

      v17 = sub_243AB73D8(v14, v16, &v19);

      *(v11 + 14) = v17;
      *(v11 + 22) = 1024;
      *(v11 + 24) = v4;
      _os_log_impl(&dword_243A1B000, v8, v9, "%s %s was installed: %{BOOL}d", v11, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x245D47D20](v12, -1, -1);
      MEMORY[0x245D47D20](v11, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A2CD60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A2CE30(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);
  v3 = *(v1 + 16);

  return sub_243A2B604(a1, v3);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

void sub_243A2CF48(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C30, &qword_243AC4C88);

  sub_243A2BD10(a1, a2);
}

uint64_t sub_243A2CFF0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t static AccountEmailAddress.create(with:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_243AC1528();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (&v58 - v14);
  v16 = *(v5 + 16);
  v64 = a1;
  v65 = v16;
  v16(&v58 - v14, a1, v4);
  v17 = *(v5 + 88);
  if (v17(v15, v4) == *MEMORY[0x277D23270])
  {
    v18 = *(v5 + 96);
    v64 = v5 + 96;
    v61 = a2;
    v62 = v18;
    v18(v15, v4);
    v19 = *v15;
    v20 = *(v19 + 16);
    if (*(v20 + 16))
    {

      v21 = sub_243A2DDC0(7890025, 0xE300000000000000);
      if (v22)
      {
        v60 = v19;
        v23 = *(v5 + 72);
        v65(v13, *(v20 + 56) + v23 * v21, v4);
        if (v17(v13, v4) == *MEMORY[0x277D23248])
        {
          v62(v13, v4);
          v24 = *(*v13 + 16);

          if (*(v20 + 16) && (v25 = sub_243A2DDC0(0x6464416C69616D65, 0xEC00000073736572), (v26 & 1) != 0))
          {
            v65(v10, *(v20 + 56) + v25 * v23, v4);
            if (v17(v10, v4) == *MEMORY[0x277D232A0])
            {
              v62(v10, v4);
              v27 = *(*v10 + 16);
              v28 = *(*v10 + 24);
              v59 = v27;

              if (*(v20 + 16) && (v29 = sub_243A2DDC0(0x6469766944736168, 0xEA00000000007265), (v30 & 1) != 0))
              {
                v31 = *(v20 + 56) + v29 * v23;
                v32 = v63;
                v65(v63, v31, v4);

                if (v17(v32, v4) == *MEMORY[0x277D23258])
                {
                  v62(v32, v4);
                  v33 = *(*v32 + 16);

                  v35 = v61;
                  *v61 = v59;
                  v35[1] = v28;
                  v35[2] = v24;
                  *(v35 + 24) = v33;
                  return result;
                }

                (*(v5 + 8))(v32, v4);
              }

              else
              {
              }

              if (qword_27ED98910 != -1)
              {
                swift_once();
              }

              v54 = sub_243AC1468();
              __swift_project_value_buffer(v54, qword_27EDA14A8);
              v55 = sub_243AC1448();
              v56 = sub_243AC2B58();
              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                *v57 = 0;
                _os_log_impl(&dword_243A1B000, v55, v56, "Recommended Email: failed to parse key 'hasDivider'", v57, 2u);
                MEMORY[0x245D47D20](v57, -1, -1);
              }

              type metadata accessor for RecommendedAccountEmailError(0);
              sub_243A2ED10(&qword_27ED98C48, type metadata accessor for RecommendedAccountEmailError, &unk_243AC4D98);
              swift_allocError();
              v53 = MEMORY[0x277D839B0];
              goto LABEL_31;
            }

            (*(v5 + 8))(v10, v4);
          }

          else
          {
          }

          if (qword_27ED98910 != -1)
          {
            swift_once();
          }

          v48 = sub_243AC1468();
          __swift_project_value_buffer(v48, qword_27EDA14A8);
          v49 = sub_243AC1448();
          v50 = sub_243AC2B58();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_243A1B000, v49, v50, "Recommended Email: failed to parse key 'email'", v51, 2u);
            MEMORY[0x245D47D20](v51, -1, -1);
          }

          type metadata accessor for RecommendedAccountEmailError(0);
          sub_243A2ED10(&qword_27ED98C48, type metadata accessor for RecommendedAccountEmailError, &unk_243AC4D98);
          swift_allocError();
          v53 = MEMORY[0x277D837D0];
LABEL_31:
          *v52 = v53;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        (*(v5 + 8))(v13, v4);
      }

      else
      {
      }
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v43 = sub_243AC1468();
    __swift_project_value_buffer(v43, qword_27EDA14A8);
    v44 = sub_243AC1448();
    v45 = sub_243AC2B58();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_243A1B000, v44, v45, "Recommended Email: failed to parse key 'idx'", v46, 2u);
      MEMORY[0x245D47D20](v46, -1, -1);
    }

    type metadata accessor for RecommendedAccountEmailError(0);
    sub_243A2ED10(&qword_27ED98C48, type metadata accessor for RecommendedAccountEmailError, &unk_243AC4D98);
    swift_allocError();
    *v47 = MEMORY[0x277D83B88];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v36 = sub_243AC1468();
  __swift_project_value_buffer(v36, qword_27EDA14A8);
  v37 = sub_243AC1448();
  v38 = sub_243AC2B58();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_243A1B000, v37, v38, "Recommended Email: DecodabelStateType is not a dictionary", v39, 2u);
    MEMORY[0x245D47D20](v39, -1, -1);
  }

  type metadata accessor for RecommendedAccountEmailError(0);
  sub_243A2ED10(&qword_27ED98C48, type metadata accessor for RecommendedAccountEmailError, &unk_243AC4D98);
  swift_allocError();
  v41 = v40;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
  v65(v41, v64, v4);
  *&v41[v42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v5 + 8))(v15, v4);
}

uint64_t AccountEmailAddress.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v22 = *v1;
  v3 = v1[2];
  v23 = *(v1 + 24);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C58, &qword_243AC4CC0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C60, &qword_243AC4CC8);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_243AC4AC0;
  v9 = (v8 + v7);
  v10 = *(v5 + 48);
  *v9 = 7890025;
  *(v9 + 1) = 0xE300000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *&v9[v10] = v11;
  v12 = *MEMORY[0x277D23248];
  v13 = sub_243AC1528();
  v25 = *(*(v13 - 8) + 104);
  v25((v13 - 8), &v9[v10], v12, v13);
  v14 = &v9[v6];
  v15 = *(v5 + 48);
  strcpy(&v9[v6], "emailAddress");
  v14[13] = 0;
  *(v14 + 7) = -5120;
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  *(v16 + 24) = v2;
  *&v14[v15] = v16;
  (v25)(&v9[v6 + v15], *MEMORY[0x277D232A0], v13);
  v17 = &v9[2 * v6];
  v18 = *(v5 + 48);
  *v17 = 0x6469766944736168;
  *(v17 + 1) = 0xEA00000000007265;
  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  *&v17[v18] = v19;
  (v25)(&v17[v18], *MEMORY[0x277D23258], v13);

  v20 = sub_243A2E3E4(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v4 + 16) = v20;
  *a1 = v4;

  return (v25)();
}

uint64_t type metadata accessor for RecommendedAccountEmailError(uint64_t a1)
{
  result = qword_27ED98C68;
  if (!qword_27ED98C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243A2DD30(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_243A2DD7C(uint64_t a1)
{
  v2 = sub_243AC2C98();

  return sub_243A2DF60(a1, v2);
}

unint64_t sub_243A2DDC0(uint64_t a1, uint64_t a2)
{
  sub_243AC2FB8();
  sub_243AC28A8();
  v4 = sub_243AC2FD8();

  return sub_243A2E028(a1, a2, v4);
}

uint64_t sub_243A2DE38()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A2DE80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_243A2DEC8(uint64_t a1)
{
  sub_243AC2498();
  sub_243A2ED10(&qword_27ED98CA8, MEMORY[0x277D21E98], MEMORY[0x277D21EA0]);
  v2 = sub_243AC27F8();

  return sub_243A2E0E0(a1, v2);
}

unint64_t sub_243A2DF60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_243A2E858(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D47070](v9, a1);
      sub_243A1FF9C(v9);
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

unint64_t sub_243A2E028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_243AC2EE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243A2E0E0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_243AC2498();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_243A2ED10(&qword_27ED98CB0, MEMORY[0x277D21E98], MEMORY[0x277D21EA8]);
      v15 = sub_243AC2808();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_243A2E2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
    v3 = sub_243AC2E28();
    v4 = a1 + 32;

    while (1)
    {
      sub_243A224B4(v4, &v13, &unk_27ED9AC10, &qword_243AC4E00);
      v5 = v13;
      v6 = v14;
      result = sub_243A2DDC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_243A21C48(&v15, (v3[7] + 32 * result));
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

unint64_t sub_243A2E3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C60, &qword_243AC4CC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CF0, qword_243AC4E30);
    v7 = sub_243AC2E28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_243A224B4(v9, v5, &qword_27ED98C60, &qword_243AC4CC8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_243A2DDC0(*v5, v12);
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
      v18 = sub_243AC1528();
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_243A2E5E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_243A2E62C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_243A2E6D0(uint64_t a1)
{
  sub_243A2E744();
  if (v1 <= 0x3F)
  {
    sub_243A2E7D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_243A2E744()
{
  if (!qword_27ED98C78)
  {
    v0 = sub_243A2E78C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED98C78);
    }
  }
}

unint64_t sub_243A2E78C()
{
  result = qword_27ED98C80;
  if (!qword_27ED98C80)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27ED98C80);
  }

  return result;
}

void sub_243A2E7D8(uint64_t a1)
{
  if (!qword_27ED98C88)
  {
    sub_243AC1528();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98C90, &qword_243AC4D90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27ED98C88);
    }
  }
}

unint64_t sub_243A2E8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98CD8, &qword_243AC4E18);
    v3 = sub_243AC2E28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243A2DDC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_243A2E9EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_243AC2E28();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_243A2DDC0(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_243A2EB30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_243AC2E28();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_243A224B4(v16, v12, a2, v27);
      result = sub_243A2DEC8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_243AC2498();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

uint64_t sub_243A2ED10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A2ED8C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 recommendationSpecifierTitle];
    v3 = sub_243AC2858();
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v4 = sub_243AC1468();
    __swift_project_value_buffer(v4, qword_27EDA14A8);
    v5 = sub_243AC1448();
    v6 = sub_243AC2B58();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_243A1B000, v5, v6, "Could not get recommendationInfo from recommendation rules. Using default title strings.", v7, 2u);
      MEMORY[0x245D47D20](v7, -1, -1);
    }

    type metadata accessor for RecommendationsController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_243AC1188();
  }

  return v3;
}

id sub_243A2EF40(unint64_t a1, char a2)
{
  v4 = a1 >> 62;
  if (a2)
  {
    if (v4)
    {
      v3 = a1;
      if ((a1 & 0x8000000000000000) != 0)
      {
        v2 = a1;
      }

      else
      {
        v2 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_243AC2DF8() != 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 != 1)
      {
        while (v5 >= 2)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            goto LABEL_24;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            return *(a1 + 40);
          }

          __break(1u);
LABEL_27:
          v9 = a1;
          a1 = v2;
          if (!v9)
          {
            return 0;
          }

LABEL_10:
          if ((a1 & 0xC000000000000001) != 0)
          {
            goto LABEL_20;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return *(a1 + 32);
          }

          __break(1u);
LABEL_22:
          v5 = sub_243AC2DF8();
          a1 = v3;
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_24:
            v7 = a1;
            v8 = 1;
            return MEMORY[0x245D470F0](v8, v7);
          }
        }
      }
    }

    return 0;
  }

  if (!v4)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    return 0;
  }

  v2 = a1;
  a1 = sub_243AC2DF8();
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_20:
  v7 = a1;
  v8 = 0;
  return MEMORY[0x245D470F0](v8, v7);
}

uint64_t sub_243A2F060(unint64_t a1, void *a2)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_243AC2DF8();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x245D470F0](v4, a1);
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v8 = [v5 identifier];
        v9 = sub_243AC2858();
        v11 = v10;

        v12 = [a2 identifier];
        v13 = sub_243AC2858();
        v15 = v14;

        if (v9 == v13 && v11 == v15)
        {
        }

        else
        {
          v17 = sub_243AC2EE8();

          if (v17)
          {
          }

          else
          {
            sub_243AC2D68();
            sub_243AC2D88();
            sub_243AC2D98();
            sub_243AC2D78();
          }
        }

        ++v4;
      }

      while (v7 != v3);
      v18 = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v18 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_27:
    v22 = sub_243AC2DF8();

    if (!v22)
    {
      return 0;
    }

LABEL_26:
    v20 = sub_243AC2EB8();
    MEMORY[0x245D46C90](v20);

    return 0x6E6F697469646461;
  }

  v19 = *(v18 + 16);

  if (v19)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_243A2F2E0(unint64_t a1, void *a2, char a3)
{
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_243AC1188();

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    if (qword_27ED98928 != -1)
    {
      swift_once();
    }

    v32 = sub_243AC1468();
    __swift_project_value_buffer(v32, qword_27EDA14F0);
    v33 = sub_243AC1448();
    v34 = sub_243AC2B48();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_243A1B000, v33, v34, "Recommendations list is empty. Showing noRecommendations subtitle.", v35, 2u);
      MEMORY[0x245D47D20](v35, -1, -1);
    }

    v36 = [a2 subtitleTemplates];
    v37 = sub_243AC27D8();

    if (*(v37 + 16) && (v38 = sub_243A2DDC0(0xD000000000000011, 0x8000000243ACC380), (v39 & 1) != 0))
    {
      v8 = *(*(v37 + 56) + 16 * v38);
    }

    else
    {
    }

    return v8;
  }

  if (!sub_243AC2DF8())
  {
    goto LABEL_16;
  }

  sub_243AC2DF8();
LABEL_3:
  v9 = sub_243A2EF40(a1, a3 & 1);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 identifier];
    v12 = sub_243AC2858();
    v14 = v13;

    v15 = [a2 subtitleTemplates];
    v16 = sub_243AC27D8();

    if (*(v16 + 16))
    {
      v17 = sub_243A2DDC0(v12, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = *(*(v16 + 56) + 16 * v17);

      v20 = sub_243A2F060(a1, v10);
      if (!v21)
      {
LABEL_12:

        return v8;
      }

      v22 = v21;
      v23 = v20;
      v24 = [a2 subtitleTemplates];
      v25 = sub_243AC27D8();

      if (*(v25 + 16))
      {
        v26 = sub_243A2DDC0(v23, v22);
        v28 = v27;

        if (v28)
        {
          v29 = (*(v25 + 56) + 16 * v26);
          v30 = *v29;
          v31 = v29[1];

          MEMORY[0x245D46C90](v30, v31);

          return v8;
        }

        goto LABEL_11;
      }
    }

    goto LABEL_11;
  }

  return v8;
}

uint64_t sub_243A2F704(unint64_t a1, void *a2, char a3)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_243A2F2E0(a1, v5, a3 & 1);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v7 = sub_243AC1468();
    __swift_project_value_buffer(v7, qword_27EDA14A8);
    v8 = sub_243AC1448();
    v9 = sub_243AC2B58();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243A1B000, v8, v9, "Could not get recommendationInfo from recommendation rules. Using default subtitle strings.", v10, 2u);
      MEMORY[0x245D47D20](v10, -1, -1);
    }

    type metadata accessor for RecommendationsController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_243AC1188();
  }

  v12 = v6;

  return v12;
}

uint64_t sub_243A2F8A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a8;
  *(v8 + 80) = v15;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 48) = a5;
  *(v8 + 288) = a4;
  v9 = sub_243AC1528();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D58, qword_243AC74A0);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_243AC1328();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_243AC1058();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_243AC1208();
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A2FB68, 0, 0);
}

uint64_t sub_243A2FB68()
{
  v70 = v0;
  if (*(v0 + 288) != 1)
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 56);
  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (*(*(v0 + 48) + 16) > v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 208);
    v4 = *(v0 + 192);

    sub_243AC11E8();

    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_243A2251C(*(v0 + 192), &qword_27ED98D68, &qword_243AC67E0);
LABEL_6:

      v5 = *(v0 + 8);

      return v5();
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    (*(*(v0 + 208) + 32))(v6, *(v0 + 192), *(v0 + 200));
    sub_243AC1318();
    CELiftUIDataSource.request(for:timeZone:)(v6, v8, v7);
    v10 = *(v0 + 136);
    v11 = *(v0 + 72);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_243AC1008();
    sub_243A224B4(v11 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_headers, v10, &qword_27ED98D60, &unk_243AC4FF0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v10, 1, v12);
    if (v14 == 1)
    {
      sub_243A2251C(*(v0 + 136), &qword_27ED98D60, &unk_243AC4FF0);
LABEL_13:
      if (qword_27ED98910 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_41;
    }

    sub_243A32BC0(&qword_27ED98AA0, &qword_27ED98A68, &unk_243ACA3A0, MEMORY[0x277D233E8]);
    sub_243AC14D8();
    v64 = *(v0 + 120);
    v35 = *(v0 + 96);
    (*(v13 + 8))(*(v0 + 136), v12);
    v36 = 0;
    v37 = *(v0 + 32);
    v38 = *(v37 + 64);
    v62 = v37 + 64;
    v39 = -1;
    v65 = *(v0 + 32);
    v40 = -1 << *(v65 + 32);
    if (-v40 < 64)
    {
      v39 = ~(-1 << -v40);
    }

    v41 = v39 & v38;
    v61 = (63 - v40) >> 6;
    v63 = v35;
    v68 = (v35 + 32);
    v66 = (v35 + 8);
    while (v41)
    {
      v42 = v36;
LABEL_33:
      v46 = *(v0 + 112);
      v45 = *(v0 + 120);
      v47 = *(v0 + 88);
      v48 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v49 = v48 | (v42 << 6);
      v50 = (*(v65 + 48) + 16 * v49);
      v51 = *v50;
      v52 = v50[1];
      (*(v63 + 16))(v46, *(v65 + 56) + *(v63 + 72) * v49, v47);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      v54 = *(v53 + 48);
      *v45 = v51;
      *(v64 + 8) = v52;
      (*(v63 + 32))(&v45[v54], v46, v47);
      (*(*(v53 - 8) + 56))(v45, 0, 1, v53);

      v44 = v42;
LABEL_34:
      v55 = *(v0 + 128);
      sub_243A22814(*(v0 + 120), v55, &qword_27ED98D58, qword_243AC74A0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {

        goto LABEL_13;
      }

      (*v68)(*(v0 + 104), *(v0 + 128) + *(v56 + 48), *(v0 + 88));
      sub_243A643A0();
      v57 = *(v0 + 104);
      v58 = *(v0 + 88);
      sub_243AC1048();

      (*v66)(v57, v58);
      v36 = v44;
    }

    if (v61 <= v36 + 1)
    {
      v43 = v36 + 1;
    }

    else
    {
      v43 = v61;
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v42 >= v61)
      {
        v59 = *(v0 + 120);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D78, &qword_243AC5000);
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v41 = 0;
        goto LABEL_34;
      }

      v41 = *(v62 + 8 * v42);
      ++v36;
      if (v41)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_14:
  v15 = *(v0 + 224);
  v16 = *(v0 + 232);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = sub_243AC1468();
  *(v0 + 240) = __swift_project_value_buffer(v19, qword_27EDA14A8);
  v20 = *(v18 + 16);
  *(v0 + 248) = v20;
  *(v0 + 256) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v15, v16, v17);
  v21 = sub_243AC1448();
  v22 = sub_243AC2B78();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v69 = v67;
    *v27 = 136315138;
    sub_243A32D28(&qword_27ED98D70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v28 = sub_243AC2EB8();
    v30 = v29;
    v31 = *(v26 + 8);
    v31(v24, v25);
    v32 = sub_243AB73D8(v28, v30, &v69);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_243A1B000, v21, v22, "Deleting backup with url: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x245D47D20](v67, -1, -1);
    MEMORY[0x245D47D20](v27, -1, -1);
  }

  else
  {

    v31 = *(v26 + 8);
    v31(v24, v25);
  }

  *(v0 + 264) = v31;
  v33 = swift_task_alloc();
  *(v0 + 272) = v33;
  *v33 = v0;
  v33[1] = sub_243A30564;
  v34 = *(v0 + 184);

  return CELiftUIDataSource.data(for:)(v34);
}

uint64_t sub_243A30564(uint64_t a1, unint64_t a2)
{
  *(*v3 + 280) = v2;

  if (v2)
  {
    v6 = sub_243A307C0;
  }

  else
  {
    sub_243A200C8(a1, a2);
    v6 = sub_243A30694;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_243A30694()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_243A307C0()
{
  v33 = v0;
  *(v0 + 40) = *(v0 + 280);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
  sub_243AC2DE8();
  v30 = *(v0 + 16);
  v5 = *(v0 + 24);
  v1(v3, v2, v4);

  v6 = sub_243AC1448();
  v7 = sub_243AC2B78();

  v29 = v7;
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v31 = *(v0 + 184);
  v14 = *(v0 + 168);
  if (v8)
  {
    v27 = *(v0 + 280);
    log = v6;
    v15 = *(v0 + 200);
    v16 = swift_slowAlloc();
    v28 = v14;
    v25 = swift_slowAlloc();
    v32 = v25;
    *v16 = 136315394;
    sub_243A32D28(&qword_27ED98D70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v17 = sub_243AC2EB8();
    v26 = v10;
    v19 = v18;
    v9(v11, v15);
    v20 = sub_243AB73D8(v17, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_243AB73D8(v30, v5, &v32);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_243A1B000, log, v29, "Delete backup network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v25, -1, -1);
    MEMORY[0x245D47D20](v16, -1, -1);

    (*(v13 + 8))(v31, v28);
    v9(v26, v15);
  }

  else
  {

    v9(v11, v12);
    (*(v13 + 8))(v31, v14);
    v9(v10, v12);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_243A30B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_243A224B4(a3, v22 - v9, &qword_27ED98998, &qword_243AC4FD0);
  v11 = sub_243AC2A98();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_243A2251C(v10, &qword_27ED98998, &qword_243AC4FD0);
  }

  else
  {
    sub_243AC2A88();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_243AC2A28();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_243AC2888() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_243A30E14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000243ACBA20;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000243ACBA20;
  }

  else
  {
    v3 = 0x73726564616568;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73656369766564;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x73726564616568;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656369766564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A30F10()
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A30FB8(uint64_t a1)
{
  sub_243AC28A8();
}

uint64_t sub_243A3104C(uint64_t a1)
{
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A310F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A3301C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_243A31120(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x8000000243ACBA20;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x73726564616568;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656369766564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_243A31184()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x73726564616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656369766564;
  }
}

unint64_t sub_243A311E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A3301C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A31218(uint64_t a1)
{
  v2 = sub_243A32D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A31254(uint64_t a1)
{
  v2 = sub_243A32D70();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_243A31290(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v31 = v2;
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v26 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = v24 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DA0, &qword_243AC5038);
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_cePresenter) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A32D70();
  v30 = v15;
  v16 = v31;
  sub_243AC2FE8();
  if (v16)
  {

    swift_deallocPartialClassInstance();
    v23 = a1;
  }

  else
  {
    v31 = a1;
    v35 = 0;
    sub_243A227C0(&qword_27ED98DB0, &qword_27ED98D40, &qword_243AC7200);
    v17 = v27;
    sub_243AC2E88();
    v18 = *(v26 + 32);
    v24[1] = OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_devices;
    v27 = v18;
    (v18)(v1 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_devices, v17, v8);
    v34 = 1;
    sub_243AC2E88();
    (v27)(v1 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_isDeviceSelected, v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v33 = 2;
    sub_243A227C0(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
    v19 = v25;
    v21 = v29;
    v20 = v30;
    sub_243AC2E78();
    (*(v28 + 8))(v20, v21);
    sub_243A22814(v19, v3 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_headers, &qword_27ED98D60, &unk_243AC4FF0);
    v23 = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v3;
}

uint64_t sub_243A31748()
{
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_isDeviceSelected, v2);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_headers, &qword_27ED98D60, &unk_243AC4FF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeleteSelectedBackupsAction(uint64_t a1)
{
  result = qword_27ED98D00;
  if (!qword_27ED98D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A318A4(uint64_t a1)
{
  sub_243A31978(319);
  if (v1 <= 0x3F)
  {
    sub_243A31A9C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_243A31978(uint64_t a1)
{
  if (!qword_27ED98D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D18, &unk_243AC4ED0);
    sub_243A319E8();
    v1 = sub_243AC14E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98D10);
    }
  }
}

unint64_t sub_243A319E8()
{
  result = qword_27ED98D20;
  if (!qword_27ED98D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D18, &unk_243AC4ED0);
    sub_243A32D28(&qword_27ED98A78, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D20);
  }

  return result;
}

void sub_243A31A9C(uint64_t a1)
{
  if (!qword_27ED98D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98A38, qword_243AC7210);
    v1 = sub_243AC2C38();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED98D28);
    }
  }
}

uint64_t sub_243A31B00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A33068;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_243A31BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_243A33068;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_243A31C58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243A1FEA8;

  return sub_243A31FCC(a1);
}

uint64_t sub_243A31D20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

void *sub_243A31EE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_243A31290(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_243A31FCC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v3 = sub_243AC1528();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A320E8, 0, 0);
}

uint64_t sub_243A320E8()
{
  v1 = *(*(v0 + 176) + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_cePresenter);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_account];
    v3 = type metadata accessor for CELiftUIDataSource();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource____lazy_storage___backupDeviceUUID] = xmmword_243AC4E80;
    *&v4[OBJC_IVAR____TtC21CloudRecommendationUI18CELiftUIDataSource_account] = v2;
    *(v0 + 136) = v4;
    *(v0 + 144) = v3;
    v5 = v1;
    v6 = v2;
    v7 = objc_msgSendSuper2((v0 + 136), sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
    sub_243A32BC0(&qword_27ED98D48, &qword_27ED98D18, &unk_243AC4ED0, MEMORY[0x277D233F8]);
    sub_243AC14D8();
    v8 = *(v0 + 152);
    v9 = *(v8 + 16);
    v80 = v7;
    v71 = v5;
    if (v9)
    {
      v10 = *(v0 + 208);
      v13 = *(v10 + 16);
      v12 = v10 + 16;
      v11 = v13;
      v14 = v8 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v15 = *(v12 + 56);
      v86 = MEMORY[0x277D84F90];
      do
      {
        v16 = *(v0 + 232);
        v11(v16, v14, *(v0 + 200));
        sub_243A5548C(v16, (v0 + 16));
        (*(v12 - 8))(*(v0 + 232), *(v0 + 200));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_243AA0300(0, *(v86 + 2) + 1, 1, v86);
        }

        v18 = *(v86 + 2);
        v17 = *(v86 + 3);
        if (v18 >= v17 >> 1)
        {
          v86 = sub_243AA0300((v17 > 1), v18 + 1, 1, v86);
        }

        *(v86 + 2) = v18 + 1;
        v19 = &v86[88 * v18];
        v20 = *(v0 + 32);
        *(v19 + 2) = *(v0 + 16);
        *(v19 + 3) = v20;
        v21 = *(v0 + 48);
        v22 = *(v0 + 64);
        v23 = *(v0 + 80);
        *(v19 + 14) = *(v0 + 96);
        *(v19 + 5) = v22;
        *(v19 + 6) = v23;
        *(v19 + 4) = v21;
        v14 += v15;
        --v9;
      }

      while (v9);
    }

    else
    {

      v86 = MEMORY[0x277D84F90];
    }

    sub_243AC14D8();
    v30 = *(v0 + 160);
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v0 + 208);
      v35 = *(v32 + 16);
      v33 = v32 + 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v81 = *(v33 + 56);
      v78 = *MEMORY[0x277D23258];
      v84 = (v33 - 8);
      v37 = MEMORY[0x277D84F90];
      v83 = v35;
      do
      {
        v47 = *(v0 + 216);
        v46 = *(v0 + 224);
        v48 = *(v0 + 200);
        v34(v46, v36, v48);
        v34(v47, v46, v48);
        v49 = (*(v33 + 72))(v47, v48);
        v50 = *v84;
        v52 = *(v0 + 216);
        v51 = *(v0 + 224);
        v53 = *(v0 + 200);
        if (v49 == v78)
        {
          v50(*(v0 + 224), *(v0 + 200));
          (*(v33 + 80))(v52, v53);
          v54 = *(*v52 + 16);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_243AA020C(0, *(v37 + 2) + 1, 1, v37);
          }

          v56 = *(v37 + 2);
          v55 = *(v37 + 3);
          if (v56 >= v55 >> 1)
          {
            v37 = sub_243AA020C((v55 > 1), v56 + 1, 1, v37);
          }

          *(v37 + 2) = v56 + 1;
          v37[v56 + 32] = v54;
        }

        else
        {
          v76 = *v84;
          v50(*(v0 + 216), *(v0 + 200));
          type metadata accessor for DecodableStateError(0);
          sub_243A32D28(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
          v38 = swift_allocError();
          v40 = v39;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
          v42 = v34;
          v43 = v31;
          v44 = v37;
          v45 = *(v41 + 48);
          v42(v40, v51, v53);
          *(v40 + v45) = MEMORY[0x277D839B0];
          v37 = v44;
          v31 = v43;
          swift_willThrow();
          v76(v51, v53);
        }

        v34 = v83;
        v36 += v81;
        --v31;
      }

      while (v31);

      v5 = v71;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v79 = *(v37 + 2);
    if (v79)
    {
      v57 = sub_243AC2A98();
      v58 = 0;
      v59 = *(v57 - 8);
      v77 = *(v59 + 56);
      v75 = (v59 + 48);
      v72 = (v59 + 8);
      v73 = v57;
      do
      {
        v61 = *(v0 + 184);
        v60 = *(v0 + 192);
        v62 = *(v0 + 168);
        v82 = *(v0 + 176);
        v63 = v37[v58 + 32];
        v77(v60, 1, 1, v57);
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        *(v64 + 24) = 0;
        *(v64 + 32) = v63;
        *(v64 + 40) = v86;
        *(v64 + 48) = v58;
        v85 = v58;
        *(v64 + 56) = v80;
        *(v64 + 64) = v82;
        *(v64 + 72) = v62;
        sub_243A224B4(v60, v61, &qword_27ED98998, &qword_243AC4FD0);
        LODWORD(v61) = (*v75)(v61, 1, v57);

        v74 = v80;

        v65 = *(v0 + 184);
        if (v61 == 1)
        {
          sub_243A2251C(*(v0 + 184), &qword_27ED98998, &qword_243AC4FD0);
          v57 = v73;
        }

        else
        {
          sub_243AC2A88();
          v57 = v73;
          (*v72)(v65, v73);
        }

        v66 = *(v64 + 16);
        swift_unknownObjectRetain();

        if (v66)
        {
          swift_getObjectType();
          v67 = sub_243AC2A28();
          v69 = v68;
          swift_unknownObjectRelease();
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        sub_243A2251C(*(v0 + 192), &qword_27ED98998, &qword_243AC4FD0);
        if (v69 | v67)
        {
          *(v0 + 104) = 0;
          *(v0 + 112) = 0;
          *(v0 + 120) = v67;
          *(v0 + 128) = v69;
        }

        ++v58;
        swift_task_create();
      }

      while (v79 != v85 + 1);

      v70 = v74;
    }

    else
    {

      v70 = v80;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v24 = sub_243AC1468();
    __swift_project_value_buffer(v24, qword_27EDA14A8);
    v25 = sub_243AC1448();
    v26 = sub_243AC2B58();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_243A1B000, v25, v26, "DeleteSelectedBackupsAction: unable to create data source without icqPresenter", v27, 2u);
      MEMORY[0x245D47D20](v27, -1, -1);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_243A32A78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_243A32AD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A1FEA8;

  return sub_243A2F8A8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_243A32BC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_243A32C28(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_cePresenter);
  *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI27DeleteSelectedBackupsAction_cePresenter) = *a1;
  v3 = v2;
}

unint64_t sub_243A32C74()
{
  result = qword_27ED98D90;
  if (!qword_27ED98D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
    sub_243A32D28(&qword_27ED98D98, type metadata accessor for RecommendationsLiftUIPresenter, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D90);
  }

  return result;
}

uint64_t sub_243A32D28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A32D70()
{
  result = qword_27ED98DA8;
  if (!qword_27ED98DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98DA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeleteSelectedBackupsAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeleteSelectedBackupsAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A32F18()
{
  result = qword_27ED98DB8;
  if (!qword_27ED98DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98DB8);
  }

  return result;
}

unint64_t sub_243A32F70()
{
  result = qword_27ED98DC0;
  if (!qword_27ED98DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98DC0);
  }

  return result;
}

unint64_t sub_243A32FC8()
{
  result = qword_27ED98DC8;
  if (!qword_27ED98DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98DC8);
  }

  return result;
}

unint64_t sub_243A3301C(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_243A3306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243A47650(a3, v25 - v10);
  v12 = sub_243AC2A98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243A2251C(v11, &qword_27ED98998, &qword_243AC4FD0);
  }

  else
  {
    sub_243AC2A88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243AC2A28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243AC2888() + 32;
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

      sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);

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

  sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);
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

uint64_t sub_243A3335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243A47650(a3, v25 - v10);
  v12 = sub_243AC2A98();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243A2251C(v11, &qword_27ED98998, &qword_243AC4FD0);
  }

  else
  {
    sub_243AC2A88();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_243AC2A28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_243AC2888() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F68, &qword_243AC5348);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);

      return v22;
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

  sub_243A2251C(a3, &qword_27ED98998, &qword_243AC4FD0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F68, &qword_243AC5348);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243A33674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

uint64_t sub_243A336FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

uint64_t sub_243A33770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

uint64_t sub_243A337F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

uint64_t sub_243A3396C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_243A339CC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_subtitleControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_243A33A64;
}

void sub_243A33A64(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_243A33B0C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v3;
}

uint64_t sub_243A33B78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v1;
}

uint64_t sub_243A33C00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return v3;
}

uint64_t sub_243A33C6C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_completedRecommendationController) + 32);
  swift_getKeyPath();

  os_unfair_lock_lock((v1 + 24));
  sub_243A49894((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));

  v2 = v4;

  return v2;
}

uint64_t sub_243A33D3C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return sub_243AC2EE8();
  }
}

uint64_t sub_243A33D8C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

char *RecommendationsController.deinit()
{
  sub_243A34264(v0);
  v1 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_keychainSyncNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v1]);
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v3 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_familySyncNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v3]);
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationSections;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DD8, &qword_243AC51C0);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v7 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationPage;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98DE8, &qword_243AC51C8);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v6(&v0[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__completedRecommendationsSection], v5);
  v9 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__stillFetchingData;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E00, &qword_243AC51D0);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__loadingError;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E10, &qword_243AC51D8);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__contextualRecommendations;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E20, &qword_243AC51E0);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__turnOnMoreAppsFooter;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98E30, &qword_243AC51E8);
  (*(*(v16 - 8) + 8))(&v0[v15], v16);

  sub_243A34370(&v0[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_subtitleControllerDelegate]);
  v17 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierTitle;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EC0, &qword_243AC51F0);
  v19 = *(*(v18 - 8) + 8);
  v19(&v0[v17], v18);
  v19(&v0[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsSpecifierSubtitle], v18);
  v20 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__recommendationsCount;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98ED8, &qword_243AC51F8);
  (*(*(v21 - 8) + 8))(&v0[v20], v21);
  v6(&v0[OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController__breakoutSection], v5);
  return v0;
}

void sub_243A34264(const void *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    oslog = v2;
    CFNotificationCenterRemoveEveryObserver(v2, a1);
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v4 = sub_243AC2B58();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v4, "Could not get darwin notification center, failed to unregister object.", v5, 2u);
      MEMORY[0x245D47D20](v5, -1, -1);
    }
  }
}

uint64_t RecommendationsController.__deallocating_deinit()
{
  RecommendationsController.deinit();

  return swift_deallocClassInstance();
}

void sub_243A343F0()
{
  sub_243A43764(v0, 0xD000000000000029, 0x8000000243ACC920, sub_243A436E4);
  sub_243A43764(v0, 0xD000000000000042, 0x8000000243ACC950, sub_243A43914);
  sub_243A43764(v0, 0xD000000000000041, 0x8000000243ACC9A0, sub_243A4399C);
  sub_243A43A24();
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CB8B78];
  v3 = [objc_opt_self() defaultStore];
  [v1 addObserver:v0 selector:sel_accountDidChange_ name:v2 object:v3];

  sub_243A445A8();
}

uint64_t RecommendationsController.__allocating_init(account:)(void *a1)
{
  swift_allocObject();
  sub_243AC1408();
  v2 = sub_243AC13F8();
  type metadata accessor for RecommendationsController(0);
  swift_allocObject();
  v3 = sub_243A45F9C(a1, v2, 0);

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t RecommendationsController.init(account:)(void *a1)
{
  sub_243AC1408();
  v2 = sub_243AC13F8();
  type metadata accessor for RecommendationsController(0);
  swift_allocObject();
  v3 = sub_243A45F9C(a1, v2, 0);

  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t type metadata accessor for RecommendationsController(uint64_t a1)
{
  result = qword_27ED98EF0;
  if (!qword_27ED98EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243A347BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A34858, 0, 0);
}

uint64_t sub_243A34858()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_243A35794();
  sub_243A35030(0, 1);
  v3 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v4 = sub_243AC2A98();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_243A3306C(0, 0, v1, &unk_243AC5990, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_243A34974(uint64_t a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_243A35794();
  sub_243A35030(0, v2);
  v6 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_243A3306C(0, 0, v5, &unk_243AC6A80, v8);
}

uint64_t sub_243A34BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  sub_243A35030(0, 1);
  v4 = *(v0 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
  v5 = sub_243AC2A98();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_243A3306C(0, 0, v3, &unk_243AC5200, v6);
}

void sub_243A34E44(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_userIsCompletingRecommendation) == 1)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v3 = sub_243AC1468();
    __swift_project_value_buffer(v3, qword_27EDA14A8);
    oslog = sub_243AC1448();
    v4 = sub_243AC2B48();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_243A1B000, oslog, v4, "User is actually completing a recommendation lets not re-create the list.", v5, 2u);
      MEMORY[0x245D47D20](v5, -1, -1);
    }
  }

  else
  {
    sub_243A242A0();
    v8 = *(v2 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);

    os_unfair_lock_lock((v8 + 24));

    *(v8 + 16) = sub_243A2E2A0(MEMORY[0x277D84F90]);
    os_unfair_lock_unlock((v8 + 24));

    sub_243A38130(a1 & 1, a2 & 1);
  }
}

uint64_t sub_243A35030(char a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_243AC2178();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_243AC21A8();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33[-v12];
  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_243AC2A58();

  v15 = sub_243AC2A48();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v3;
  sub_243A3306C(0, 0, v13, &unk_243AC5950, v16);

  v18 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);
  dispatch_group_enter(v18);
  v19 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account;
  v20 = *(v3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_account);

  v21 = v20;
  sub_243AC13C8();

  dispatch_group_enter(v18);
  v22 = *(v3 + v19);

  v23 = v22;
  sub_243AC13E8();

  dispatch_group_enter(v18);
  v24 = *(v3 + v19);

  v25 = v24;
  sub_243AC13B8();

  dispatch_group_enter(v18);
  v26 = *(v3 + v19);
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  *(v27 + 24) = 0;

  v28 = v26;
  sub_243AC13D8();

  sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);
  v29 = sub_243AC2BC8();
  v30 = swift_allocObject();
  *(v30 + 16) = v3;
  *(v30 + 24) = a1;
  *(v30 + 25) = v34;
  aBlock[4] = sub_243A49644;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_464;
  v31 = _Block_copy(aBlock);

  sub_243AC2198();
  v38 = MEMORY[0x277D84F90];
  sub_243A484E8(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  sub_243AC2BA8();
  _Block_release(v31);

  (*(v37 + 8))(v7, v5);
  (*(v35 + 8))(v10, v36);
}

uint64_t sub_243A3558C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_243AC2A58();
  *(v4 + 24) = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A35624, v6, v5);
}

uint64_t sub_243A35624()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;

  sub_243AC16B8();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 3;

  sub_243AC16B8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A35718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_243A38130(a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A35794()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243AC2A98();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_243AC2A58();

  v6 = sub_243AC2A48();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_243A3306C(0, 0, v4, &unk_243AC5960, v7);

  v9 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);

  os_unfair_lock_lock((v9 + 24));

  v10 = MEMORY[0x277D84F90];
  *(v9 + 16) = sub_243A2E2A0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v9 + 24));

  v11 = *(v1 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_eligibleRecommendations);

  os_unfair_lock_lock((v11 + 24));

  *(v11 + 16) = sub_243A2E2A0(v10);
  os_unfair_lock_unlock((v11 + 24));
}

uint64_t sub_243A35940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_243AC2A58();
  *(v4 + 32) = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A359D8, v6, v5);
}

uint64_t sub_243A359D8()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = MEMORY[0x277D84F90];

  sub_243AC16B8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A35A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v1 < 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  return sub_243AC2EB8();
}

void sub_243A35BA4(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  if (a1 && !a2)
  {
    v43 = a1;
    v18 = [v43 recommendations];
    sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
    v19 = sub_243AC2998();

    if (v19 >> 62)
    {
      v20 = sub_243AC2DF8();
      if (v20)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_10:
        v41 = v8;
        v42 = a3;
        v44 = MEMORY[0x277D84F90];
        sub_243A64F14(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v22 = v44;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x245D470F0](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = [v24 identifier];
          v26 = sub_243AC2858();
          v28 = v27;

          v44 = v22;
          v30 = *(v22 + 16);
          v29 = *(v22 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_243A64F14((v29 > 1), v30 + 1, 1);
            v22 = v44;
          }

          ++v21;
          *(v22 + 16) = v30 + 1;
          v31 = v22 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
        }

        while (v20 != v21);

        v8 = v41;
        a3 = v42;
LABEL_26:
        v33 = sub_243AC2A98();
        (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
        sub_243AC2A58();

        v34 = sub_243AC2A48();
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 16) = v34;
        *(v35 + 24) = v36;
        *(v35 + 32) = v22;
        *(v35 + 40) = 5;
        *(v35 + 56) = 0;
        *(v35 + 64) = 0;
        *(v35 + 48) = a3;
        *(v35 + 72) = 1793;
        sub_243A3306C(0, 0, v8, &unk_243AC5910, v35);

        v38 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allRecommendations);
        MEMORY[0x28223BE20](v37);
        v39 = v43;
        *(&v40 - 2) = v43;
        *(&v40 - 1) = a3;

        os_unfair_lock_lock((v38 + 24));
        sub_243A49230((v38 + 16));
        os_unfair_lock_unlock((v38 + 24));

        dispatch_group_leave(*(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup));

        return;
      }
    }

    v22 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v9 = sub_243AC1468();
  __swift_project_value_buffer(v9, qword_27EDA14A8);
  v10 = a2;
  v11 = sub_243AC1448();
  v12 = sub_243AC2B58();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    if (a2)
    {
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 4) = v16;
    *v14 = v17;
    _os_log_impl(&dword_243A1B000, v11, v12, "Could not fetch recommendations from server %@", v13, 0xCu);
    sub_243A2251C(v14, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v14, -1, -1);
    MEMORY[0x245D47D20](v13, -1, -1);
  }

  sub_243A41398(a2);
  v32 = *(a3 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationTaskGroup);

  dispatch_group_leave(v32);
}

id sub_243A36078(uint64_t *a1, char *a2, uint64_t a3)
{
  v75 = a3;
  v72 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v68 - v6;
  v7 = [a2 recommendations];
  sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v8 = sub_243AC2998();

  if (v8 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v10 = 0;
    v73 = v8 & 0xC000000000000001;
    v69 = v8 & 0xFFFFFFFFFFFFFF8;
    v70 = i;
    v71 = v8;
    while (1)
    {
      if (v73)
      {
        v13 = MEMORY[0x245D470F0](v10, v8);
      }

      else
      {
        if (v10 >= *(v69 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v74 = v10 + 1;
      v15 = [v13 identifier];
      v16 = sub_243AC2858();
      v18 = v17;

      v19 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = a1;
      v76 = *a1;
      v8 = v76;
      v23 = sub_243A2DDC0(v16, v18);
      v24 = *(v8 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_23;
      }

      a1 = v22;
      if (*(v8 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_243A8B978();
          if (a1)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_243A8A254(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_243A2DDC0(v16, v18);
        if ((a1 & 1) != (v28 & 1))
        {
LABEL_55:
          result = sub_243AC2F38();
          __break(1u);
          return result;
        }

        v23 = v27;
        if (a1)
        {
LABEL_4:

          v8 = v76;
          v11 = *(v76 + 56);
          v12 = *(v11 + 8 * v23);
          *(v11 + 8 * v23) = v19;

          goto LABEL_5;
        }
      }

      v8 = v76;
      *(v76 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v29 = (*(v8 + 48) + 16 * v23);
      *v29 = v16;
      v29[1] = v18;
      *(*(v8 + 56) + 8 * v23) = v19;

      v30 = *(v8 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      *(v8 + 16) = v32;
LABEL_5:
      a1 = v21;
      *v21 = v8;
      ++v10;
      v8 = v71;
      if (v74 == v70)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v33 = v72;
  v34 = [v72 sections];
  sub_243A2CFF0(0, &qword_27ED98FF0, 0x277CFB1D8);
  v35 = sub_243AC2998();

  if (v35 >> 62)
  {
    goto LABEL_51;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
LABEL_29:
    v37 = 0;
    v74 = OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_allSections;
    v70 = v35 & 0xFFFFFFFFFFFFFF8;
    v71 = v35 & 0xC000000000000001;
    v69 = v35;
    while (1)
    {
      if (v71)
      {
        v42 = MEMORY[0x245D470F0](v37, v35);
      }

      else
      {
        if (v37 >= *(v70 + 16))
        {
          goto LABEL_48;
        }

        v42 = *(v35 + 8 * v37 + 32);
      }

      v43 = v42;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v36 = sub_243AC2DF8();
        if (!v36)
        {
          goto LABEL_52;
        }

        goto LABEL_29;
      }

      v73 = v37 + 1;
      v44 = [v42 sectionID];
      v45 = sub_243AC2858();
      v47 = v46;

      v33 = v74;
      v35 = v75;
      swift_beginAccess();
      v48 = v43;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *&v33[v35];
      v50 = v77;
      *&v33[v35] = 0x8000000000000000;
      v51 = sub_243A2DDC0(v45, v47);
      v53 = v50[2];
      v54 = (v52 & 1) == 0;
      v31 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v31)
      {
        goto LABEL_49;
      }

      v33 = v52;
      if (v50[3] < v55)
      {
        break;
      }

      if (v49)
      {
        goto LABEL_41;
      }

      v35 = v51;
      sub_243A8B98C();
      v51 = v35;
      if (v33)
      {
LABEL_30:
        v38 = v51;

        v39 = v77;
        v40 = v77[7];
        v41 = *(v40 + 8 * v38);
        *(v40 + 8 * v38) = v48;

        goto LABEL_31;
      }

LABEL_42:
      v39 = v77;
      v77[(v51 >> 6) + 8] |= 1 << v51;
      v57 = (v39[6] + 16 * v51);
      *v57 = v45;
      v57[1] = v47;
      *(v39[7] + 8 * v51) = v48;
      v58 = v39[2];
      v31 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v31)
      {
        goto LABEL_50;
      }

      v39[2] = v59;
LABEL_31:
      *(v75 + v74) = v39;
      swift_endAccess();

      ++v37;
      v33 = v72;
      v35 = v69;
      if (v73 == v36)
      {
        goto LABEL_52;
      }
    }

    sub_243A8A268(v55, v49);
    v51 = sub_243A2DDC0(v45, v47);
    if ((v33 & 1) != (v56 & 1))
    {
      goto LABEL_55;
    }

LABEL_41:
    if (v33)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_52:

  result = [v33 page];
  if (result)
  {

    v61 = sub_243AC2A98();
    v62 = v68;
    (*(*(v61 - 8) + 56))(v68, 1, 1, v61);
    sub_243AC2A58();
    v63 = v75;

    v64 = v33;
    v65 = sub_243AC2A48();
    v66 = swift_allocObject();
    v67 = MEMORY[0x277D85700];
    v66[2] = v65;
    v66[3] = v67;
    v66[4] = v63;
    v66[5] = v64;
    sub_243A3306C(0, 0, v62, &unk_243AC5920, v66);
  }

  return result;
}