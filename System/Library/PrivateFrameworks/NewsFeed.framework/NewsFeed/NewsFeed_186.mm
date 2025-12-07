BOOL sub_1D6C3DEE4(void *a1)
{
  v3 = &off_1E84D3000;
  v4 = [a1 sourceChannel];
  if (!v4)
  {
LABEL_9:
    if ([a1 respondsToSelector_])
    {
      v9 = [a1 role];
      if (v9 < 8 && ((0x99u >> v9) & 1) != 0)
      {
        return 0;
      }
    }

    v10 = *(v1 + 256);
    v11 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v12 = [a1 isBundlePaid];
    }

    else
    {
      v12 = 0;
    }

    v13 = [a1 v3[402]];
    if (v13)
    {
      v14 = [v13 identifier];
      swift_unknownObjectRelease();
      v15 = sub_1D726207C();
      v17 = v16;

      if (v11)
      {
LABEL_17:
        v18 = [v10 purchaseProvider];
        if (!v17)
        {
          swift_unknownObjectRelease();
          if (!v12)
          {
            goto LABEL_48;
          }

LABEL_25:
          if (!v17)
          {
            return 0;
          }

          v22 = [objc_msgSend(v10 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          if (objc_getAssociatedObject(v22, v22 + 1))
          {
            sub_1D7263AEC();
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0u;
            v49 = 0u;
          }

          v50 = v48;
          v51 = v49;
          if (*(&v49 + 1))
          {
            sub_1D5BAFAD8();
            if (swift_dynamicCast())
            {
              v23 = v47;
              v24 = [v47 integerValue];
              if (v24 == -1)
              {

                goto LABEL_67;
              }

              v25 = v24;
LABEL_35:
              if (objc_getAssociatedObject(v22, ~v25))
              {
                sub_1D7263AEC();
                swift_unknownObjectRelease();
              }

              else
              {
                v48 = 0u;
                v49 = 0u;
              }

              v50 = v48;
              v51 = v49;
              if (*(&v49 + 1))
              {
                sub_1D5BAFAD8();
                if (swift_dynamicCast())
                {
                  v32 = v47;
                  v33 = [v32 integerValue];

                  if ((v33 ^ v25))
                  {
LABEL_67:
                    v39 = [objc_msgSend(v10 bundleSubscriptionProvider)];
                    swift_unknownObjectRelease();
                    v40 = [v39 bundleChannelIDs];

                    v41 = sub_1D726203C();
                    LOBYTE(v39) = [v40 containsObject_];

                    return (v39 & 1) != 0;
                  }

LABEL_48:

                  return 0;
                }
              }

              else
              {
                sub_1D5EBD03C(&v50);
              }

              if (v25)
              {
                goto LABEL_67;
              }

              goto LABEL_48;
            }
          }

          else
          {
            sub_1D5EBD03C(&v50);
          }

          v23 = 0;
          v25 = 0;
          goto LABEL_35;
        }

        v19 = [v18 purchasedTagIDs];
        v20 = sub_1D7262B0C();

        LOBYTE(v19) = sub_1D5BE240C(v15, v17, v20);

        swift_unknownObjectRelease();
        if ((v19 & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_48;
          }

          goto LABEL_25;
        }

LABEL_23:

        return 1;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v5 = v4;
  if (([a1 respondsToSelector_] & 1) == 0 || objc_msgSend(a1, sel_role) != 2)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v46 = *(v1 + 256);
  v6 = [v46 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [v5 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_39;
    }
  }

  else
  {
    v8 = [v5 identifier];
  }

  v26 = sub_1D726207C();
  v28 = v27;

  v29 = [v6 purchasedTagIDs];
  v30 = sub_1D7262B0C();

  LOBYTE(v29) = sub_1D5BE240C(v26, v28, v30);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v29)
  {
LABEL_74:
    swift_unknownObjectRelease();
    v3 = &off_1E84D3000;
    goto LABEL_9;
  }

LABEL_39:
  v31 = [objc_msgSend(v46 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v31, v31 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D5EBD03C(&v50);
    goto LABEL_55;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    v34 = 0;
    v36 = 0;
    goto LABEL_56;
  }

  v34 = v47;
  v35 = [v47 integerValue];
  if (v35 == -1)
  {

LABEL_71:
    v42 = [objc_msgSend(v46 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v43 = [v5 identifier];
    if (!v43)
    {
      sub_1D726207C();
      v43 = sub_1D726203C();
    }

    v44 = [v42 containsTagID_];

    if ((v44 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v36 = v35;
LABEL_56:
  if (objc_getAssociatedObject(v31, ~v36))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D5EBD03C(&v50);
LABEL_64:

    if ((v36 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_64;
  }

  v37 = v47;
  v38 = [v37 integerValue];

  if ((v38 ^ v36))
  {
    goto LABEL_71;
  }

LABEL_75:
  v45 = [v5 isSandbox];
  swift_unknownObjectRelease();
  return v45;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:tracker:sourceView:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(v3 + 256);
  v8 = [a1 isPaid];
  v9 = [v6 isBundlePaid];
  v10 = [objc_msgSend(v6 sourceChannel)];
  swift_unknownObjectRelease();
  v11 = sub_1D726207C();
  v13 = v12;

  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:

    goto LABEL_9;
  }

  v14 = [objc_msgSend(v7 purchaseProvider)];
  v15 = v6;
  v16 = a3;
  v17 = v7;
  v18 = a2;
  v19 = sub_1D7262B0C();

  LOBYTE(v14) = sub_1D5BE240C(v11, v13, v19);
  a2 = v18;
  v7 = v17;
  a3 = v16;
  v6 = v15;

  swift_unknownObjectRelease();
  if (v14)
  {
    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v20 = [objc_msgSend(v7 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v55 = a3;
  if (objc_getAssociatedObject(v20, v20 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  v53 = a2;
  if (!*(&v59 + 1))
  {
    sub_1D5EBD03C(&v60);
    goto LABEL_16;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v43 = 0;
    v45 = 0;
    goto LABEL_17;
  }

  v43 = v57;
  v44 = [v57 integerValue];
  if (v44 == -1)
  {

    goto LABEL_28;
  }

  v45 = v44;
LABEL_17:
  if (objc_getAssociatedObject(v20, ~v45))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  if (!*(&v59 + 1))
  {
    sub_1D5EBD03C(&v60);
LABEL_25:

    if (v45)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = v57;
  v47 = [v46 integerValue];

  v48 = v47 ^ v45;
  a3 = v55;
  if (v48)
  {
LABEL_28:
    v49 = [objc_msgSend(v7 bundleSubscriptionProvider];
    swift_unknownObjectRelease();
    v50 = [v49 bundleChannelIDs];

    v51 = sub_1D726203C();
    v52 = [v50 containsObject_];

    a2 = v54;
    if ((v52 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_9:
    sub_1D6C3EC80(v6, a2, a3);
    v21 = v56[5];
    v22 = v56[6];
    __swift_project_boxed_opaque_existential_1(v56 + 2, v21);
    (*(v22 + 32))(v6, v21, v22);
    sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69CDA70];
    *(v23 + 16) = xmmword_1D7283D60;
    v25 = *v24;
    v26 = *MEMORY[0x1E69CDAF0];
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;
    v27 = *MEMORY[0x1E69CDA80];
    v28 = *MEMORY[0x1E69CDAF8];
    *(v23 + 48) = *MEMORY[0x1E69CDA80];
    *(v23 + 56) = v28;
    v29 = *MEMORY[0x1E69CDAC8];
    v30 = *MEMORY[0x1E69CDAE0];
    v31 = MEMORY[0x1E69CDA90];
    *(v23 + 64) = *MEMORY[0x1E69CDAC8];
    *(v23 + 72) = v30;
    v32 = *v31;
    *(v23 + 80) = *v31;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v32;
    *(v23 + 88) = sub_1D726203C();
    *(v23 + 96) = sub_1D726203C();
    v40 = sub_1D725E70C();
    v60 = 0u;
    v61 = 0u;
    v41 = objc_allocWithZone(v40);
    return sub_1D725E6EC();
  }

LABEL_26:

LABEL_29:
  sub_1D725E70C();
  return sub_1D725E6FC();
}

{
  sub_1D6C3FF1C(a1, a2, a3);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  (*(v6 + 72))(a1, v5, v6);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69CDA70];
  *(v7 + 16) = xmmword_1D7283D60;
  v9 = *v8;
  v10 = *MEMORY[0x1E69CDAF0];
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  v11 = *MEMORY[0x1E69CDA80];
  v12 = *MEMORY[0x1E69CDAF8];
  *(v7 + 48) = *MEMORY[0x1E69CDA80];
  *(v7 + 56) = v12;
  v13 = *MEMORY[0x1E69CDAC8];
  v14 = *MEMORY[0x1E69CDAE0];
  v15 = MEMORY[0x1E69CDA90];
  *(v7 + 64) = *MEMORY[0x1E69CDAC8];
  *(v7 + 72) = v14;
  v16 = *v15;
  *(v7 + 80) = *v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  *(v7 + 88) = sub_1D726203C();
  *(v7 + 96) = sub_1D726203C();
  v24 = objc_allocWithZone(sub_1D725E70C());
  return sub_1D725E6EC();
}

uint64_t sub_1D6C3EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[15];
  v7 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v8 + 32);
    do
    {
      v12 = *v11;
      v13 = v3[5];
      v14 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
      v17 = v12;
      if ((*(v14 + 136))(a1, &v17, a2, a3, v13, v14))
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v9 = v18;
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  return v9;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:shareData:tracker:sourceView:sourceItem:)(id a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v56 = *a2;
  v57 = v5;
  v6 = *(a2 + 4);
  v44 = *(a2 + 40);
  v54 = *(a2 + 41);
  v55 = *(a2 + 57);
  if (v6 != 1 && (v44 & 1) != 0)
  {
    goto LABEL_24;
  }

  v7 = v2[32];
  if (![a1 isPaid])
  {
    goto LABEL_24;
  }

  v8 = [objc_msgSend(v7 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v42 = v6;
  if (objc_getAssociatedObject(v8, v8 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    sub_1D5EBD03C(&v48);
    goto LABEL_12;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = v45;
  v10 = [v45 integerValue];
  if (v10 == -1)
  {

    goto LABEL_24;
  }

  v11 = v10;
LABEL_13:
  if (objc_getAssociatedObject(v8, ~v11))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v12 = v45;
      v13 = [v12 integerValue];

      v14 = v13 ^ v11;
      v6 = v42;
      if (v14)
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_1D725E70C();
      return sub_1D725E6FC();
    }
  }

  else
  {
    sub_1D5EBD03C(&v48);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v16 = v3[25];
  v17 = v3[26];
  __swift_project_boxed_opaque_existential_1(v3 + 22, v16);
  v18 = (*(v17 + 8))(v16, v17);
  *&v48 = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);
  if (v19)
  {
    v43 = v6;
    do
    {
      v20 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      if ((*(v20 + 152))(a1))
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
      }

      --v19;
    }

    while (v19);

    v6 = v43;
  }

  else
  {
  }

  v21 = v3[5];
  v22 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
  v48 = v56;
  v49 = v57;
  v50 = v6;
  v51 = v44;
  v52 = v54;
  v53 = v55;
  (*(v22 + 48))(a1, &v48, v21, v22);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69CDA70];
  *(v23 + 16) = xmmword_1D7283D60;
  v25 = *v24;
  v26 = *MEMORY[0x1E69CDAF0];
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  v27 = *MEMORY[0x1E69CDA80];
  v28 = *MEMORY[0x1E69CDAF8];
  *(v23 + 48) = *MEMORY[0x1E69CDA80];
  *(v23 + 56) = v28;
  v29 = *MEMORY[0x1E69CDAC8];
  v30 = *MEMORY[0x1E69CDAE0];
  v31 = MEMORY[0x1E69CDA90];
  *(v23 + 64) = *MEMORY[0x1E69CDAC8];
  *(v23 + 72) = v30;
  v32 = *v31;
  *(v23 + 80) = *v31;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v32;
  *(v23 + 88) = sub_1D726203C();
  *(v23 + 96) = sub_1D726203C();
  v40 = sub_1D725E70C();
  v48 = 0u;
  v49 = 0u;
  v41 = objc_allocWithZone(v40);
  return sub_1D725E6EC();
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:tracker:sourceView:sourceItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C3AE10((v4 + 27), &v40, &qword_1EDF3A2F0, qword_1EDF3A2F8, &protocol descriptor for SharingPuzzleTypeActivityTypeProviderType);
  if (v41)
  {
    sub_1D5B63F14(&v40, &v42);
    v7 = *(&v43 + 1);
    v8 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    v9 = (*(v8 + 8))(v7, v8);
    *&v40 = MEMORY[0x1E69E7CC0];
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = *v11++;
        v13 = v4[5];
        v14 = v4[6];
        __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
        v39 = v12;
        if ((*(v14 + 160))(a1, &v39, a2, a3, a4, v13, v14))
        {
          MEMORY[0x1DA6F9CE0]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
        }

        --v10;
      }

      while (v10);
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    sub_1D5B6F398(&v40, &qword_1EDF3A2F0, qword_1EDF3A2F8, &protocol descriptor for SharingPuzzleTypeActivityTypeProviderType, sub_1D5BFB8A8);
  }

  v15 = v4[5];
  v16 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v15);
  (*(v16 + 56))(a1, v15, v16);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69CDA70];
  *(v17 + 16) = xmmword_1D7283D60;
  v19 = *v18;
  v20 = *MEMORY[0x1E69CDAF0];
  *(v17 + 32) = v19;
  *(v17 + 40) = v20;
  v21 = *MEMORY[0x1E69CDA80];
  v22 = *MEMORY[0x1E69CDAF8];
  *(v17 + 48) = *MEMORY[0x1E69CDA80];
  *(v17 + 56) = v22;
  v23 = *MEMORY[0x1E69CDAC8];
  v24 = *MEMORY[0x1E69CDAE0];
  v25 = MEMORY[0x1E69CDA90];
  *(v17 + 64) = *MEMORY[0x1E69CDAC8];
  *(v17 + 72) = v24;
  v26 = *v25;
  *(v17 + 80) = *v25;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v26;
  *(v17 + 88) = sub_1D726203C();
  *(v17 + 96) = sub_1D726203C();
  v34 = sub_1D725E70C();
  v42 = 0u;
  v43 = 0u;
  v35 = objc_allocWithZone(v34);
  return sub_1D725E6EC();
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:tracker:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6C3F844(a1, a2, a3);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  (*(v6 + 24))(a1, v5, v6);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69CDA70];
  *(v7 + 16) = xmmword_1D7283D60;
  v9 = *v8;
  v10 = *MEMORY[0x1E69CDAF0];
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  v11 = *MEMORY[0x1E69CDA80];
  v12 = *MEMORY[0x1E69CDAF8];
  *(v7 + 48) = *MEMORY[0x1E69CDA80];
  *(v7 + 56) = v12;
  v13 = *MEMORY[0x1E69CDAC8];
  v14 = *MEMORY[0x1E69CDAE0];
  v15 = MEMORY[0x1E69CDA90];
  *(v7 + 64) = *MEMORY[0x1E69CDAC8];
  *(v7 + 72) = v14;
  v16 = *v15;
  *(v7 + 80) = *v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  *(v7 + 88) = sub_1D726203C();
  *(v7 + 96) = sub_1D726203C();
  v24 = objc_allocWithZone(sub_1D725E70C());
  return sub_1D725E6EC();
}

uint64_t sub_1D6C3F844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[10];
  v7 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v8 + 32);
    do
    {
      v12 = *v11++;
      v13 = v3[5];
      v14 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
      v17 = v12;
      if ((*(v14 + 120))(a1, &v17, a2, a3, v13, v14))
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v9 = v18;
      }

      --v10;
    }

    while (v10);
  }

  return v9;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:tracker:sourceItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6C3FB70(a1, a2, a3);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  (*(v6 + 40))(a1, v5, v6);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69CDA70];
  *(v7 + 16) = xmmword_1D7283D60;
  v9 = *v8;
  v10 = *MEMORY[0x1E69CDAF0];
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  v11 = *MEMORY[0x1E69CDA80];
  v12 = *MEMORY[0x1E69CDAF8];
  *(v7 + 48) = *MEMORY[0x1E69CDA80];
  *(v7 + 56) = v12;
  v13 = *MEMORY[0x1E69CDAC8];
  v14 = *MEMORY[0x1E69CDAE0];
  v15 = MEMORY[0x1E69CDA90];
  *(v7 + 64) = *MEMORY[0x1E69CDAC8];
  *(v7 + 72) = v14;
  v16 = *v15;
  *(v7 + 80) = *v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  *(v7 + 88) = sub_1D726203C();
  *(v7 + 96) = sub_1D726203C();
  v24 = objc_allocWithZone(sub_1D725E70C());
  return sub_1D725E6EC();
}

uint64_t sub_1D6C3FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C3AE10((v3 + 17), &v18, &qword_1EDF3A090, &qword_1EDF3A098, &protocol descriptor for SharingRecipeActivityTypeProviderType);
  if (v19)
  {
    sub_1D5B63F14(&v18, v20);
    v6 = v21;
    v7 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = MEMORY[0x1E69E7CC0];
    *&v18 = MEMORY[0x1E69E7CC0];
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = (v8 + 32);
      do
      {
        v12 = *v11++;
        v13 = v3[5];
        v14 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
        v17 = v12;
        if ((*(v14 + 144))(a1, &v17, a2, a3, v13, v14))
        {
          MEMORY[0x1DA6F9CE0]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v9 = v18;
        }

        --v10;
      }

      while (v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1D5B6F398(&v18, &qword_1EDF3A090, &qword_1EDF3A098, &protocol descriptor for SharingRecipeActivityTypeProviderType, sub_1D5BFB8A8);
    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1D6C3FF1C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[10];
  v6 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = (v7 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      if ([a1 feedConfiguration] != 3 || v11 != 6)
      {
        v14 = v3[5];
        v15 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
        v19 = v11;
        if ((*(v15 + 176))(a1, &v19, a2, a3, v14, v15))
        {
          MEMORY[0x1DA6F9CE0]();
          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v8 = v20;
        }
      }

      --v9;
    }

    while (v9);
  }

  return v8;
}

uint64_t SharingActivityProviderFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1D5B6F398(v0 + 136, &qword_1EDF3A090, &qword_1EDF3A098, &protocol descriptor for SharingRecipeActivityTypeProviderType, sub_1D5BFB8A8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_1D5B6F398(v0 + 216, &qword_1EDF3A2F0, qword_1EDF3A2F8, &protocol descriptor for SharingPuzzleTypeActivityTypeProviderType, sub_1D5BFB8A8);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SharingActivityProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1D5B6F398(v0 + 136, &qword_1EDF3A090, &qword_1EDF3A098, &protocol descriptor for SharingRecipeActivityTypeProviderType, sub_1D5BFB8A8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  sub_1D5B6F398(v0 + 216, &qword_1EDF3A2F0, qword_1EDF3A2F8, &protocol descriptor for SharingPuzzleTypeActivityTypeProviderType, sub_1D5BFB8A8);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of SharingActivityProviderFactoryType.createActivityProvider(for:tracker:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

{
  return (*(a5 + 56))(a1, a2, a3, a4);
}

__n128 LayeredMediaLayerRenderableProvider.renderable(for:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v53[4] = a1[4];
  v53[5] = v4;
  v54[0] = a1[6];
  *(v54 + 9) = *(a1 + 105);
  v5 = a1[1];
  v53[0] = *a1;
  v53[1] = v5;
  v6 = a1[3];
  v53[2] = a1[2];
  v53[3] = v6;
  if (sub_1D5ED9718(v53) == 1)
  {
    v7 = sub_1D5D6EF44(v53);
    v8 = objc_allocWithZone(MEMORY[0x1E69CE110]);
    v9 = a1[5];
    v35 = a1[4];
    v36 = v9;
    *v37 = a1[6];
    *&v37[9] = *(a1 + 105);
    v10 = a1[1];
    v31 = *a1;
    v32 = v10;
    v11 = a1[3];
    v33 = a1[2];
    v34 = v11;
    v12 = sub_1D5D6EF44(&v31);
    sub_1D5ED9780(v12, &v45);
    v13 = [v8 init];
    sub_1D5ED98AC(0, &qword_1EDF17318, &qword_1EDF045A8, 0x1E69CE110);
    objc_allocWithZone(v14);
    v15 = v13;
    v16 = sub_1D725CB8C();
    v42 = v7[4];
    v43 = v7[5];
    v44[0] = v7[6];
    *(v44 + 9) = *(v7 + 105);
    v38 = *v7;
    v39 = v7[1];
    v40 = v7[2];
    v41 = v7[3];
    *&v45 = v16;
    *(&v45 + 1) = v15;
    v50 = v42;
    v51 = v43;
    *v52 = v44[0];
    *&v52[9] = *(v44 + 9);
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    sub_1D5ED9830(&v45);
  }

  else
  {
    v17 = sub_1D5D6EF44(v53);
    v18 = objc_allocWithZone(MEMORY[0x1E69CE100]);
    v19 = a1[5];
    v42 = a1[4];
    v43 = v19;
    v44[0] = a1[6];
    *(v44 + 9) = *(a1 + 105);
    v20 = a1[1];
    v38 = *a1;
    v39 = v20;
    v21 = a1[3];
    v40 = a1[2];
    v41 = v21;
    v22 = sub_1D5D6EF44(&v38);
    sub_1D5ED9850(v22, &v45);
    v23 = [v18 init];
    sub_1D5ED98AC(0, &qword_1EDF17328, &qword_1EDF04638, 0x1E69CE100);
    objc_allocWithZone(v24);
    v25 = v23;
    v26 = sub_1D725CB8C();
    v35 = *(v17 + 64);
    v36 = *(v17 + 80);
    *v37 = *(v17 + 96);
    v37[16] = *(v17 + 112);
    v31 = *v17;
    v32 = *(v17 + 16);
    v33 = *(v17 + 32);
    v34 = *(v17 + 48);
    *&v45 = v26;
    *(&v45 + 1) = v25;
    v50 = v35;
    v51 = v36;
    *v52 = *v37;
    v52[16] = v37[16];
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v49 = v34;
    sub_1D5ED9904(&v45);
  }

  v27 = *v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v27;
  *(a2 + 121) = *&v52[9];
  v28 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v28;
  v29 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v29;
  result = v46;
  *a2 = v45;
  *(a2 + 16) = result;
  return result;
}

uint64_t CategoryViewLayoutAttributesFactory.__allocating_init(styler:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1D5B7DDE8(a1, v2 + 16);
  return v2;
}

double sub_1D6C40748@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6C415C4();
  v79 = v5;
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = v2[5];
  v8 = v2[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v10 = *(v8 + 8);
  v11 = v7;
  v12 = v10(v9, v8);
  *(inited + 64) = sub_1D5C14A38();
  *(inited + 40) = v12;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D6C41668(inited + 32, sub_1D5C09DD4);
  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D6C416C8(&qword_1EDF1A8E0, 255, type metadata accessor for Key, &unk_1D72719E0);
  v15 = sub_1D7261D2C();

  v16 = [v13 initWithString:v14 attributes:v15];

  [v16 size];
  recta = v17;
  v19 = v18;

  v20 = v3[5];
  v21 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v20);
  v22 = (*(v21 + 8))(v20, v21);
  [v22 pointSize];
  v24 = v23;

  v25 = type metadata accessor for CategoryViewLayoutOptions(0);
  v26 = v24 + *(a1 + v25[8]) + *(a1 + v25[8]);
  v27 = (a1 + v25[7]);
  v28 = v27[2];
  v29 = v3[5];
  v30 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v29);
  v71 = *v27 + v26 + v28 * (*(v30 + 16))(v29, v30);
  v73 = *v27;
  v31 = v71 - *v27 - v28;
  v32 = v71 * 35.0 / 60.0;
  v33 = *(a1 + v25[9]);
  v34 = v3[5];
  v35 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v34);
  v81.origin.x = v33 * (*(v35 + 16))(v34, v35);
  v36 = v31 * 0.5;
  v81.origin.y = v31 * 0.5 - v32 * 0.5;
  v81.size.width = v32;
  v81.size.height = v32;
  v82 = CGRectIntegral(v81);
  x = v82.origin.x;
  y = v82.origin.y;
  v82.size.width = v32;
  v82.size.height = v32;
  MaxX = CGRectGetMaxX(v82);
  v38 = *(a1 + v25[10]);
  v39 = v3[5];
  v40 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v39);
  v83.origin.x = MaxX + v38 * (*(v40 + 16))(v39, v40);
  v83.origin.y = v36 - v19 * 0.5;
  v83.size.width = recta;
  v83.size.height = v19;
  v84 = CGRectIntegral(v83);
  v41 = v84.origin.x;
  v68 = v84.origin.x;
  height = v84.size.height;
  v42 = v84.origin.y;
  rect = v84.origin.y;
  width = v84.size.width;
  v70 = v84.size.width;
  v44 = v84.size.height;
  v45 = v3[5];
  v46 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v45);
  v47 = v33 * (*(v46 + 16))(v45, v46);
  v48 = v3[5];
  v49 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v48);
  v50 = v38 * (*(v49 + 16))(v48, v49);
  v51 = *(a1 + v25[11]);
  v52 = v3[5];
  v53 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v52);
  v54 = v51 * (*(v53 + 16))(v52, v53);
  v85.origin.x = v41;
  v85.origin.y = v42;
  v85.size.width = width;
  v85.size.height = v44;
  v55 = v54 + v32 + v47 + v50 + CGRectGetWidth(v85);
  if (v79 > v55)
  {
    v56 = v79;
  }

  else
  {
    v56 = v55;
  }

  v86.origin.x = 0.0;
  v86.origin.y = 0.0;
  v86.size.width = v56;
  v86.size.height = v71;
  v87 = CGRectIntegral(v86);
  v80 = v87.origin.x;
  v72 = v87.origin.y;
  v67 = v87.size.width;
  v57 = v87.size.height;
  v88.origin.x = UIEdgeInsetsInsetRect(v87.origin.x, v87.origin.y, v87.size.width, v87.size.height, v73, v27[1]);
  v89 = CGRectIntegral(v88);
  v58 = v89.origin.x;
  v59 = v89.origin.y;
  v60 = v89.size.width;
  v61 = v89.size.height;
  v62 = (CGRectGetWidth(v89) - v56) * 0.5;
  v63 = x + v62;
  v64 = v68 + v62;
  sub_1D7259F1C();
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v58;
  *(a2 + 40) = v59;
  *(a2 + 48) = v60;
  *(a2 + 56) = v61;
  *(a2 + 64) = v63;
  *(a2 + 72) = y;
  *(a2 + 80) = v32;
  *(a2 + 88) = v32;
  *(a2 + 96) = v64;
  *(a2 + 104) = rect;
  *(a2 + 112) = v70;
  *(a2 + 120) = height;
  *(a2 + 128) = v65;
  *(a2 + 136) = v80;
  *(a2 + 144) = v72;
  result = v67;
  *(a2 + 152) = v67;
  *(a2 + 160) = v57;
  return result;
}

void CategoryViewLayoutAttributesFactory.createLayoutAttributes(model:options:cursor:)(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CategoryViewLayoutOptions(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725A17C();
  v10 = v9;
  v12 = v11;
  sub_1D725A14C();
  v14 = v13;
  sub_1D725A15C();
  *&v8[v5[10]] = 0x4030000000000000;
  *&v8[v5[12]] = 0x4018000000000000;
  *&v8[v5[13]] = 0x402E000000000000;
  *&v8[v5[14]] = 0x4024000000000000;
  *&v8[v5[15]] = 0x4024000000000000;
  *&v8[v5[11]] = 0;
  v15 = &v8[v5[8]];
  *v15 = v10;
  *(v15 + 1) = v12;
  v16 = &v8[v5[7]];
  *v16 = v14;
  v16[8] = 0;
  v17 = &v8[v5[9]];
  *v17 = xmmword_1D72A38C0;
  *(v17 + 1) = xmmword_1D72A38C0;
  sub_1D6C40F54(v8, v44);
  v42 = v44[1];
  v43 = v44[0];
  v40 = v44[3];
  v41 = v44[2];
  v38 = v44[5];
  v39 = v44[4];
  v36 = v44[7];
  v37 = v44[6];
  v19 = v45;
  v18 = v46;
  v20 = v47;
  v21 = v48;
  v22 = v49;
  v23 = sub_1D725A16C();
  v23(v18, v20, v21, v22);
  if (v2)
  {
    sub_1D6C41668(v8, type metadata accessor for CategoryViewLayoutOptions);
  }

  else
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D6C41668(v8, type metadata accessor for CategoryViewLayoutOptions);

    v32 = v42;
    *a2 = v43;
    *(a2 + 16) = v32;
    v33 = v40;
    *(a2 + 32) = v41;
    *(a2 + 48) = v33;
    v34 = v38;
    *(a2 + 64) = v39;
    *(a2 + 80) = v34;
    v35 = v36;
    *(a2 + 96) = v37;
    *(a2 + 112) = v35;
    *(a2 + 128) = v19;
    *(a2 + 136) = v28;
    *(a2 + 144) = v29;
    *(a2 + 152) = v30;
    *(a2 + 160) = v31;
  }
}

double sub_1D6C40F54@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6C415C4();
  v65 = v6;
  v67 = type metadata accessor for CategoryViewLayoutOptions(0);
  v66 = a1;
  v7 = *(a1 + v67[8]);
  v8 = v7 + v7;
  v9 = (a1 + v67[7]);
  v10 = v9[2];
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v11);
  v13 = v8 + v10 * (*(v12 + 16))(v11, v12);
  v14 = *v9;
  v15 = v3[5];
  v16 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v15);
  v17 = v13 + v14 * (*(v16 + 16))(v15, v16);
  v18 = v3[5];
  v19 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v18);
  v20 = (*(v19 + 8))(v18, v19);
  [v20 pointSize];
  v22 = v21;

  v23 = (v17 + v22) * 35.0 / 60.0;
  sub_1D5DF6790(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v25 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v27 = v3[5];
  v26 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  v28 = *(v26 + 8);
  v29 = v25;
  v30 = v28(v27, v26);
  *(inited + 64) = sub_1D5C14A38();
  *(inited + 40) = v30;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D6C41668(inited + 32, sub_1D5C09DD4);
  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v32 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D6C416C8(&qword_1EDF1A8E0, 255, type metadata accessor for Key, &unk_1D72719E0);
  v33 = sub_1D7261D2C();

  v34 = [v31 initWithString:v32 attributes:v33];

  sub_1D726312C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v61 = v41;
  v62 = v39;
  v42 = v41;

  v69.origin.x = v36;
  v69.origin.y = v38;
  v69.size.width = v40;
  v69.size.height = v42;
  v43 = v17 + CGRectGetHeight(v69) - v14 - v10;
  v44 = *(v66 + v67[9]);
  v45 = v3[5];
  v46 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v45);
  v70.origin.x = v44 * (*(v46 + 16))(v45, v46);
  v70.origin.y = v43 * 0.5 - v23 * 0.5;
  v70.size.width = v23;
  v70.size.height = v23;
  v71 = CGRectIntegral(v70);
  y = v71.origin.y;
  x = v71.origin.x;
  v71.size.width = v23;
  v71.size.height = v23;
  MaxX = CGRectGetMaxX(v71);
  v48 = *(v66 + v67[10]);
  v49 = v3[5];
  v50 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v49);
  v60 = MaxX + v48 * (*(v50 + 16))(v49, v50);
  v72.origin.x = v36;
  v72.origin.y = v38;
  v72.size.width = v62;
  v72.size.height = v61;
  Height = CGRectGetHeight(v72);
  v52 = (v66 + v67[6]);
  v68 = *v52;
  v58 = v43 * 0.5 - Height * 0.5;
  v59 = v52[1];
  v73.origin.x = 0.0;
  v73.origin.y = 0.0;
  v73.size.width = v65;
  v73.size.height = v43;
  v53 = CGRectGetMaxX(v73) + -35.0 + -3.0;
  v54 = sub_1D7259EBC();
  [v54 displayScale];
  v56 = v55;

  *a2 = v53;
  *(a2 + 8) = v43 * 0.5 + -17.5;
  *(a2 + 16) = vdupq_n_s64(0x4041800000000000uLL);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v65;
  *(a2 + 56) = v43;
  *(a2 + 64) = x;
  *(a2 + 72) = y;
  *(a2 + 80) = v23;
  *(a2 + 88) = v23;
  result = v60;
  *(a2 + 96) = v60;
  *(a2 + 104) = v58;
  *(a2 + 112) = v62;
  *(a2 + 120) = v61;
  *(a2 + 128) = v56;
  *(a2 + 136) = v68;
  *(a2 + 144) = v59;
  *(a2 + 152) = v65;
  *(a2 + 160) = v43;
  return result;
}

uint64_t CategoryViewLayoutAttributesFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C414B0(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C416C8(&qword_1EDF07200, a2, type metadata accessor for CategoryViewLayoutAttributesFactory, &protocol conformance descriptor for CategoryViewLayoutAttributesFactory);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C4150C()
{
  result = qword_1EDF0ABE0;
  if (!qword_1EDF0ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ABE0);
  }

  return result;
}

void sub_1D6C415C4()
{
  v1 = v0 + *(type metadata accessor for CategoryViewLayoutOptions(0) + 20);
  if (*(v1 + 8) == 1 && *v1 >= 1)
  {
    sub_1D7259E6C();
    sub_1D7259E8C();
    sub_1D7262E2C();
    sub_1D7259E9C();
    sub_1D7262E2C();
  }
}

uint64_t sub_1D6C41668(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C416C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t FormatLayeredMediaNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatLayeredMediaNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatLayeredMediaNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatLayeredMediaNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t sub_1D6C41824(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6E65644965646F6ELL;
    v7 = 0x656D617266;
    if (a1 != 3)
    {
      v7 = 0x676E697A69736572;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x656C797473;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 == 6)
    {
      v3 = 0x696C696269736976;
    }

    if (a1 == 5)
    {
      v3 = 0x7865646E497ALL;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6C41998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6C42B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6C419C0(uint64_t a1)
{
  v2 = sub_1D6C41F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C419FC(uint64_t a1)
{
  v2 = sub_1D6C41F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 112));

  return v0;
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.__deallocating_deinit()
{
  FormatLayeredMediaNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C4268C(0, &qword_1EC893C70, sub_1D6C41F7C, &type metadata for FormatLayeredMediaNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C41F7C();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6C42ED8(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 5;
    sub_1D726442C();
    *&v14[0] = *(v3 + 112);
    v15 = 6;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 7;
    sub_1D726440C();
    v13 = *(v3 + 136);
    *&v14[0] = *(v3 + 128);
    BYTE8(v14[0]) = v13;
    v15 = 8;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 144);
    v15 = 9;
    type metadata accessor for FormatLayeredMediaNodeStyle();
    sub_1D6C42ED8(&qword_1EDF0AFD8, 255, type metadata accessor for FormatLayeredMediaNodeStyle, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D6C4268C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6C426F4(&qword_1EC881AF0, sub_1D5F8F488, MEMORY[0x1E69E64F0]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6C41F7C()
{
  result = qword_1EC893C78;
  if (!qword_1EC893C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C78);
  }

  return result;
}

uint64_t FormatLayeredMediaNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatLayeredMediaNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatLayeredMediaNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6C4268C(0, &qword_1EC893C80, sub_1D6C41F7C, &type metadata for FormatLayeredMediaNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C41F7C();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D6C42ED8(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    v21 = 4;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 96) = v19;
    LOBYTE(v19) = 5;
    *(v1 + 104) = sub_1D72642FC();
    v21 = 6;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 112) = v19;
    LOBYTE(v19) = 7;
    *(v1 + 120) = sub_1D72642CC() & 1;
    v21 = 8;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 128) = v19;
    *(v1 + 136) = v14;
    type metadata accessor for FormatLayeredMediaNodeStyle();
    v21 = 9;
    sub_1D6C42ED8(&qword_1EDF224B0, 255, type metadata accessor for FormatLayeredMediaNodeStyle, &protocol conformance descriptor for FormatLayeredMediaNodeStyle);
    sub_1D726427C();
    *(v1 + 144) = v19;
    sub_1D6C4268C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D6C426F4(&qword_1EC881B10, sub_1D5F8FD48, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6C4268C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6C426F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C4268C(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D6C428DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatLayeredMediaNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6C42958(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6C42ED8(&qword_1EC893CC0, a2, type metadata accessor for FormatLayeredMediaNodeLayoutAttributes, &protocol conformance descriptor for FormatLayeredMediaNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6C42A58()
{
  result = qword_1EC893CA8;
  if (!qword_1EC893CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893CA8);
  }

  return result;
}

unint64_t sub_1D6C42AB0()
{
  result = qword_1EC893CB0;
  if (!qword_1EC893CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893CB0);
  }

  return result;
}

unint64_t sub_1D6C42B08()
{
  result = qword_1EC893CB8;
  if (!qword_1EC893CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893CB8);
  }

  return result;
}

uint64_t sub_1D6C42B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D6C42ED8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t FeedLayoutOrder.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x614C206C61656449;
  }
}

NewsFeed::FeedLayoutOrder_optional __swiftcall FeedLayoutOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedLayoutOrder.rawValue.getter()
{
  if (*v0)
  {
    return 0x69796C7265646E75;
  }

  else
  {
    return 0x79614C6C61656469;
  }
}

unint64_t sub_1D6C4301C()
{
  result = qword_1EC893CC8;
  if (!qword_1EC893CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893CC8);
  }

  return result;
}

void sub_1D6C43070(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_1D6C430D0(uint64_t a1)
{
  v2 = sub_1D6BCCF2C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6C43124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6BCCF2C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6C43180(uint64_t a1)
{
  v2 = sub_1D6BCCF2C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D6C431D4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x614C206C61656449;
  }
}

uint64_t type metadata accessor for FormatOptionsNodeStatementContext(uint64_t a1)
{
  result = qword_1EDF1E650;
  if (!qword_1EDF1E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6C4327C(uint64_t a1)
{
  sub_1D6C43360(319, &qword_1EDF27260, type metadata accessor for FormatNodeBinderContext, type metadata accessor for FormatNodeBinder, "context binder ");
  if (v1 <= 0x3F)
  {
    sub_1D6C43360(319, &qword_1EDF2F470, type metadata accessor for FormatNodeContext, sub_1D5EB9994, "context layoutState ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D6C43360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_1D6C433E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606818C(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6C43360(0, &qword_1EDF2F470, type metadata accessor for FormatNodeContext, sub_1D5EB9994, "context layoutState ");
    v12 = *(v11 + 48);
    FormatOptionCollection.subscript.getter(a1, a2, a3);

    sub_1D5EB9994(0);
    (*(*(v13 - 8) + 8))(&v10[v12], v13);
  }

  else
  {

    FormatOptionCollection.subscript.getter(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D6C4356C()
{
  v1 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606818C(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6C43360(0, &qword_1EDF2F470, type metadata accessor for FormatNodeContext, sub_1D5EB9994, "context layoutState ");
    v6 = *(v5 + 48);
    sub_1D725A7EC();

    v7 = v11;
    sub_1D5EB9994(0);
    (*(*(v8 - 8) + 8))(&v4[v6], v8);
  }

  else
  {

    sub_1D725A7EC();

    return v11;
  }

  return v7;
}

void sub_1D6C436D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v8 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D606818C(v4, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6C43360(0, &qword_1EDF2F470, type metadata accessor for FormatNodeContext, sub_1D5EB9994, "context layoutState ");
    v13 = *(v12 + 48);
    sub_1D6B0BB94(a1, a2, x8_0);

    sub_1D5EB9994(0);
    (*(*(v14 - 8) + 8))(&v11[v13], v14);
  }

  else
  {

    sub_1D6BEC5C4(a1, a2, x8_0);
  }
}

uint64_t UserNotificationSettingsManager.cachedSettings.getter()
{

  sub_1D725B96C();

  return v1;
}

double static UserNotificationSettingsManager.shared.getter()
{
  if (qword_1EDF09030 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1D6C43930(void *a1@<X8>)
{

  sub_1D725B96C();

  *a1 = v2;
}

double sub_1D6C43980(id *a1)
{
  v1 = *a1;

  sub_1D725B97C();

  return result;
}

double UserNotificationSettingsManager.cachedSettings.setter(void *a1)
{
  v1 = a1;

  sub_1D725B97C();

  return result;
}

uint64_t (*UserNotificationSettingsManager.cachedSettings.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 16);

  *(v4 + 40) = sub_1D725B95C();
  return sub_1D6C43AA4;
}

void sub_1D6C43AA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t UserNotificationSettingsManager.getSettings()()
{

  v0 = sub_1D725AFFC();

  return v0;
}

uint64_t sub_1D6C43B50(uint64_t a1)
{
  sub_1D5B75DB4(0, &unk_1EDF178F0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D6C43BC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 currentNotificationCenter];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_1D5B7E910;
  v8[4] = v4;
  v10[4] = sub_1D6C44000;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D5C38428;
  v10[3] = &block_descriptor_87;
  v9 = _Block_copy(v10);

  [v6 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v9);
}

uint64_t sub_1D6C43D2C(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a1;

    v5 = a1;
    sub_1D725B97C();
  }

  v6 = [a1 scheduledDeliverySetting] == 2;
  v7 = NewsCoreUserDefaults();
  v8 = sub_1D726203C();
  [v7 setBool:v6 forKey:v8];

  return a3(a1);
}

uint64_t UserNotificationSettingsManager.deinit()
{

  return v0;
}

uint64_t UserNotificationSettingsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UserNotificationSettingsManager.sceneDidEnterBackground()()
{
  sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
  v0 = sub_1D726391C();
  v1 = sub_1D7262EDC();
  sub_1D725C30C("Scene going to background, clearing cached notification settings", 64, 2, &dword_1D5B42000, v0, v1, MEMORY[0x1E69E7CC0]);

  sub_1D725B97C();
}

double sub_1D6C43F40()
{
  sub_1D5B5A498(0, &qword_1EDF3C6A0, 0x1E69E9BF8);
  v0 = sub_1D726391C();
  v1 = sub_1D7262EDC();
  sub_1D725C30C("Scene going to background, clearing cached notification settings", 64, 2, &dword_1D5B42000, v0, v1, MEMORY[0x1E69E7CC0]);

  sub_1D725B97C();

  return result;
}

uint64_t PuzzleStatistic.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  type metadata accessor for PuzzleStatistic(0);
  PuzzleStatisticCategory.statisticType.getter(&v18);
  if (v18 <= 4u)
  {
    v12 = 0x53747365676E6F6CLL;
    v13 = 0x5373656C7A7A7570;
    v14 = 0xED00006465766C6FLL;
    v15 = 0x5374636566726570;
    v16 = 0xED00006465766C6FLL;
    if (v18 != 3)
    {
      v15 = 0x74615265766C6F73;
      v16 = 0xE900000000000065;
    }

    if (v18 != 2)
    {
      v13 = v15;
      v14 = v16;
    }

    if (v18)
    {
      v12 = 0x53746E6572727563;
    }

    if (v18 <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v13;
    }

    if (v18 <= 1u)
    {
      v11 = 0xED00006B61657274;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v3 = 0x80000001D73B7450;
    v4 = 0xEC00000073746174;
    v5 = 0xD000000000000015;
    if (v18 == 9)
    {
      v5 = 0x53646570756F7267;
    }

    else
    {
      v4 = 0x80000001D73B7480;
    }

    if (v18 == 8)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = v4;
    }

    v6 = 0xD00000000000001CLL;
    v7 = 0x80000001D73B73F0;
    v8 = 0xD00000000000001CLL;
    v9 = 0x80000001D73B7410;
    if (v18 != 6)
    {
      v8 = 0xD00000000000001DLL;
      v9 = 0x80000001D73B7430;
    }

    if (v18 != 5)
    {
      v6 = v8;
      v7 = v9;
    }

    if (v18 <= 7u)
    {
      v10 = v6;
    }

    else
    {
      v10 = v5;
    }

    if (v18 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }
  }

  MEMORY[0x1DA6F9910](v10, v11);

  return v2;
}

uint64_t PuzzleStatistic.init(puzzleType:statistic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for PuzzleStatistic(0) + 20);

  return sub_1D6C44294(a2, v4);
}

uint64_t sub_1D6C44294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStatisticCategory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleStatistic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v26, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C44764(0);
  v30 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C44CF0(0, &unk_1EC893CD0, MEMORY[0x1E69E6F48]);
  v31 = v10;
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C447BC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v27;
  v24 = v14;
  v19 = v17;
  v34 = 0;
  sub_1D6C452BC(&qword_1EC893CE0, sub_1D6C44764, MEMORY[0x1E69D6C18]);
  v20 = v28;
  v21 = v30;
  sub_1D726431C();
  sub_1D725BF7C();
  (*(v18 + 8))(v20, v21);
  *v19 = v32;
  v33 = 1;
  sub_1D6C452BC(&unk_1EC893CE8, type metadata accessor for PuzzleStatisticCategory, &protocol conformance descriptor for PuzzleStatisticCategory);
  sub_1D726431C();
  (*(v29 + 8))(v13, v31);
  sub_1D6C44294(v6, v19 + *(v24 + 20));
  sub_1D6C44810(v19, v25, type metadata accessor for PuzzleStatistic);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6C44878(v19);
}

void sub_1D6C44764(uint64_t a1)
{
  if (!qword_1EDF176E0)
  {
    sub_1D5B7A2B8();
    v1 = sub_1D725BFAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF176E0);
    }
  }
}

unint64_t sub_1D6C447BC()
{
  result = qword_1EDF11678;
  if (!qword_1EDF11678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11678);
  }

  return result;
}

uint64_t sub_1D6C44810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C44878(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleStatistic(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PuzzleStatistic.encode(to:)(void *a1)
{
  v2 = sub_1D725ABEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C44764(0);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C44CF0(0, &qword_1EDF027B0, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C447BC();
  sub_1D7264B5C();
  v31 = *v28;
  v17 = qword_1EDF17E50;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v2, qword_1EDF17E58);
  v19 = (*(v3 + 16))(v6, v18, v2);
  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v24 - 2) = sub_1D5B7A2B8();
  swift_getKeyPath();
  sub_1D725BF6C();
  v30 = 0;
  sub_1D6C452BC(&qword_1EDF176F0, sub_1D6C44764, MEMORY[0x1E69D6C10]);
  v21 = v24;
  v22 = v26;
  sub_1D726443C();
  (*(v25 + 8))(v11, v21);
  if (!v22)
  {
    type metadata accessor for PuzzleStatistic(0);
    v29 = 1;
    type metadata accessor for PuzzleStatisticCategory(0);
    sub_1D6C452BC(&qword_1EDF0D1B0, type metadata accessor for PuzzleStatisticCategory, &protocol conformance descriptor for PuzzleStatisticCategory);
    sub_1D726443C();
  }

  return (*(v27 + 8))(v16, v13);
}

void sub_1D6C44CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C447BC();
    v7 = a3(a1, &type metadata for PuzzleStatistic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t PuzzleStatistic.debugDescription.getter()
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73EE580);
  type metadata accessor for PuzzleStatistic(0);
  type metadata accessor for PuzzleStatisticCategory(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D6C44E00(uint64_t a1)
{
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73EE580);
  type metadata accessor for PuzzleStatisticCategory(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D6C44EB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974736974617473;
  }

  else
  {
    v3 = 0x7954656C7A7A7570;
  }

  if (v2)
  {
    v4 = 0xEA00000000006570;
  }

  else
  {
    v4 = 0xE900000000000063;
  }

  if (*a2)
  {
    v5 = 0x6974736974617473;
  }

  else
  {
    v5 = 0x7954656C7A7A7570;
  }

  if (*a2)
  {
    v6 = 0xE900000000000063;
  }

  else
  {
    v6 = 0xEA00000000006570;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C44F60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6C44FEC(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6C45064(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6C450EC(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6C4514C(uint64_t *a1@<X8>)
{
  v2 = 0x7954656C7A7A7570;
  if (*v1)
  {
    v2 = 0x6974736974617473;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xE900000000000063;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6C45194()
{
  if (*v0)
  {
    return 0x6974736974617473;
  }

  else
  {
    return 0x7954656C7A7A7570;
  }
}

void sub_1D6C451D8(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6C4523C(uint64_t a1)
{
  v2 = sub_1D6C447BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C45278(uint64_t a1)
{
  v2 = sub_1D6C447BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6C452BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8NewsFeed15PuzzleStatisticV2eeoiySbAC_ACtFZ_0(id *a1, id *a2)
{
  v4 = [*a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v8 = [*a2 identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1D72646CC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(type metadata accessor for PuzzleStatistic(0) + 20);

  return static PuzzleStatisticCategory.== infix(_:_:)(a1 + v15, a2 + v15);
}

unint64_t sub_1D6C45434()
{
  result = qword_1EC893CF8;
  if (!qword_1EC893CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893CF8);
  }

  return result;
}

unint64_t sub_1D6C4548C()
{
  result = qword_1EDF11660;
  if (!qword_1EDF11660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11660);
  }

  return result;
}

unint64_t sub_1D6C454E4()
{
  result = qword_1EDF11668;
  if (!qword_1EDF11668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11668);
  }

  return result;
}

uint64_t FormatDecorationProviderFactory.deinit()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);

  sub_1D60B29F8(v1, v2, v3, v4, v5, v6);
  return v0;
}

uint64_t FormatDecorationProviderFactory.__deallocating_deinit()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);

  sub_1D60B29F8(v1, v2, v3, v4, v5, v6);

  return swift_deallocClassInstance();
}

uint64_t FeedPuzzleStatistic.init(identifier:puzzleStatistic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - v14;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = xmmword_1D728A8F0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v16 = type metadata accessor for FeedPuzzleStatistic(0);
  sub_1D6C45F24(a3, a4 + *(v16 + 32), type metadata accessor for PuzzleStatistic);
  v17 = *(type metadata accessor for PuzzleStatistic(0) + 20);
  sub_1D6C45F24(a3 + v17, v15, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D6C45D70(v15, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v19 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v20 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D6C45D70(v15, type metadata accessor for PuzzleStatisticCategory);
    if ((v20 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D6C45D70(v15, type metadata accessor for PuzzleStatisticCategory);
  }

  v19 = 0x80000000000;
LABEL_8:
  sub_1D6C45F24(a3 + v17, v11, type metadata accessor for PuzzleStatisticCategory);
  v21 = swift_getEnumCaseMultiPayload();
  sub_1D6C45D70(v11, type metadata accessor for PuzzleStatisticCategory);
  if (v21 == 2)
  {
    v22 = v19 | 0x1000000000000;
  }

  else
  {
    v22 = v19;
  }

  result = sub_1D6C45D70(a3, type metadata accessor for PuzzleStatistic);
  *a4 = v22;
  return result;
}

uint64_t FeedPuzzleStatistic.additionalFormatFeedItems.getter()
{
  sub_1D5BDEE4C(0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  v2 = *(v0 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32));
  *(v1 + 56) = &type metadata for FeedPuzzleType;
  *(v1 + 64) = sub_1D6307250();
  v3 = swift_allocObject();
  *(v1 + 32) = v3;
  v4 = [swift_unknownObjectRetain() identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = xmmword_1D728A8E0;
  *(v3 + 56) = v5;
  *(v3 + 64) = v7;
  *(v3 + 72) = v2;
  return v1;
}

void FeedPuzzleStatistic.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t FeedPuzzleStatistic.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedPuzzleStatistic.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void FeedPuzzleStatistic.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

double FeedPuzzleStatistic.groupItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D6C45F24(v1, a1, type metadata accessor for FeedPuzzleStatistic);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

double sub_1D6C45B2C@<D0>(uint64_t a1@<X8>)
{
  sub_1D6C45F24(v1, a1, type metadata accessor for FeedPuzzleStatistic);
  type metadata accessor for FeedGroupItem(0);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t FeedPuzzleStatistic.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedPuzzleStatistic(0);
  sub_1D6C4606C(&qword_1EC893D00, &protocol conformance descriptor for FeedPuzzleStatistic);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6C45C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6C4606C(&qword_1EC893D08, &protocol conformance descriptor for FeedPuzzleStatistic);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t FeedPuzzleStatistic.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725F84C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

char *sub_1D6C45CDC()
{
  type metadata accessor for FeedPuzzleStatistic(0);
  v0 = [swift_unknownObjectRetain() identifier];
  sub_1D726207C();

  swift_getObjectType();
  v1 = FCPuzzleTypeProviding.contentSelectors.getter();
  sub_1D5BF6680(0, 0xEuLL);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1D6C45D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8NewsFeed0B15PuzzleStatisticV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
  v6 = a1 + v5;
  v7 = (a2 + v5);
  v8 = [*(a1 + v5) identifier];
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [*v7 identifier];
  v13 = sub_1D726207C();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1D72646CC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(type metadata accessor for PuzzleStatistic(0) + 20);

  return _s8NewsFeed23PuzzleStatisticCategoryO2eeoiySbAC_ACtFZ_0(v6 + v19, v7 + v19);
}

uint64_t sub_1D6C45F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C45F8C(uint64_t a1)
{
  result = sub_1D6C4606C(&qword_1EC881DE0, &protocol conformance descriptor for FeedPuzzleStatistic);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D6C4606C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedPuzzleStatistic(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6C460B4(unint64_t a1, uint64_t a2, char a3)
{
  sub_1D6A86554(0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
LABEL_15:
    sub_1D6C464A0(a2, v10);
    v14 = type metadata accessor for DebugFormatPackagesDelta(0);
    v15 = (*(*(v14 - 8) + 48))(v10, 1, v14);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15 == 1)
    {
      sub_1D6C46504(v10, sub_1D6A86554);

      goto LABEL_24;
    }

    if (v10[16])
    {
      if (v10[16] != 1)
      {
        a1 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
      }

      a1 = *&v10[*(v14 + 20)];
    }

    else
    {
      a1 = *v10;
    }

LABEL_23:
    sub_1D6C46504(v10, type metadata accessor for DebugFormatPackagesDelta);
LABEL_24:
    v23 = v16;
    if (a1 >> 62)
    {
      v17 = sub_1D7263BFC();
      if (v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_26:
        v18 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA6FB460](v18, a1);
            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v19 = *(a1 + 8 * v18 + 32);

            v20 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          if (*(*(v19 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 5)
          {
          }

          else
          {
            v10 = &v23;
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
          }

          ++v18;
        }

        while (v20 != v17);
      }
    }

    return v23;
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  a2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a2)
  {
    while (1)
    {
      v11 = 0;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v11, a1, v8);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_10:
        if (*(*(v12 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 5)
        {
        }

        else
        {
          v10 = &v23;
          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
        }

        ++v11;
        if (v13 == a2)
        {
          return v23;
        }
      }

      if (v11 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      a2 = sub_1D7263BFC();
      if (!a2)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    v12 = *(a1 + 8 * v11 + 32);

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6C46408()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v1, v2);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  return 0x69706D6F6365727BLL;
}

uint64_t sub_1D6C464A0(uint64_t a1, uint64_t a2)
{
  sub_1D6A86554(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C46504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D6C46574(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43 - v10;
  *&v1[OBJC_IVAR____TtC8NewsFeed34DebugFormatWorkspaceViewController_editor] = a1;

  sub_1D725B31C();

  v65[10] = v61;
  v65[11] = v62;
  v65[12] = v63;
  v65[6] = v57;
  v65[7] = v58;
  v65[8] = v59;
  v65[9] = v60;
  v65[2] = v53;
  v65[3] = v54;
  v65[4] = v55;
  v65[5] = v56;
  v65[0] = v51;
  v65[1] = v52;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v66 = v64;
  v80 = v64;
  v67 = v51;
  v68 = v52;
  v12 = sub_1D5DEA380(&v67);
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  if (v12 == 1)
  {
    swift_beginAccess();

    sub_1D725B31C();

    if (*(v50 + 16))
    {
      v14 = *(v50 + 32);
      v15 = *(v50 + 33);

      if (v15)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {

      v16 = 0;
      v14 = 25;
    }

    LOWORD(v50) = v16 | v14;

    sub_1D725B32C();
    goto LABEL_17;
  }

  swift_beginAccess();
  v17 = *(v13 + 104);
  if (!*(v17 + 16))
  {
    goto LABEL_12;
  }

  v18 = v68;

  v19 = sub_1D5B69D90(v18, *(&v18 + 1));
  if ((v20 & 1) == 0)
  {

LABEL_12:
    v23 = type metadata accessor for DebugFormatWorkspace(0);
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    goto LABEL_13;
  }

  v21 = v19;
  v44 = *(v17 + 56);
  v45 = type metadata accessor for DebugFormatWorkspace(0);
  v22 = *(v45 - 8);
  sub_1D6C46CD0(v44 + *(v22 + 72) * v21, v11, type metadata accessor for DebugFormatWorkspace);

  (*(v22 + 56))(v11, 0, 1, v45);
LABEL_13:
  sub_1D6C46CD0(v11, v7, sub_1D60CB67C);

  sub_1D725B32C();

  sub_1D6C46C70(v11, sub_1D60CB67C);
  if (BYTE4(v79))
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  LOWORD(v50) = v24 | BYTE3(v79);

  sub_1D725B32C();
  sub_1D6C46C70(v65, sub_1D61957D4);
LABEL_17:

  v25 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceTreeViewController());

  v27 = sub_1D61D5460(v26);
  v28 = type metadata accessor for DebugFormatNavigationController();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 1;
  v49.receiver = v29;
  v49.super_class = v28;
  v30 = objc_msgSendSuper2(&v49, sel_initWithRootViewController_, v27);
  v31 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceCanvasViewController(0));

  v33 = sub_1D67741EC(v32);
  v34 = objc_allocWithZone(v28);
  *&v34[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 3;
  v48.receiver = v34;
  v48.super_class = v28;
  v35 = objc_msgSendSuper2(&v48, sel_initWithRootViewController_, v33);
  *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatWorkspaceViewController_workspaceListViewController] = v27;
  *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatWorkspaceViewController_workspaceListNavigationController] = v30;
  *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatWorkspaceViewController_workspaceCanvasViewController] = v33;
  *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatWorkspaceViewController_workspaceCanvasNavigationController] = v35;
  v47.receiver = v2;
  v47.super_class = ObjectType;
  v36 = v27;
  v37 = v30;
  v38 = v33;
  v39 = v35;
  v40 = objc_msgSendSuper2(&v47, sel_initWithStyle_, 1);
  [v40 setViewController:v37 forColumn:0];
  v41 = v39;
  [v40 setViewController:v41 forColumn:2];
  [v40 setViewController:v41 forColumn:3];

  return v40;
}

uint64_t sub_1D6C46C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C46CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C46D48(void *a1, uint64_t a2)
{
  sub_1D6C47328(0, &qword_1EC893D60, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C47230();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D6C47284();
  sub_1D6C4738C(&qword_1EC893D68, sub_1D6C473F8, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6C46EF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974704F6E6F736ALL && a2 == 0xEB00000000736E6FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6C46F84(uint64_t a1)
{
  v2 = sub_1D6C47230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C46FC0(uint64_t a1)
{
  v2 = sub_1D6C47230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6C46FFC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6C47060(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D6C47060(void *a1)
{
  sub_1D6C47328(0, &qword_1EC893D38, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C47230();
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6C47284();
    sub_1D6C4738C(&qword_1EC893D50, sub_1D6C472D4, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6C47230()
{
  result = qword_1EC893D40;
  if (!qword_1EC893D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D40);
  }

  return result;
}

void sub_1D6C47284()
{
  if (!qword_1EC893D48)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893D48);
    }
  }
}

unint64_t sub_1D6C472D4()
{
  result = qword_1EC893D58;
  if (!qword_1EC893D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D58);
  }

  return result;
}

void sub_1D6C47328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C47230();
    v7 = a3(a1, &type metadata for DebugFormatCodingOptions.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C4738C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C47284();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C473F8()
{
  result = qword_1EC893D70;
  if (!qword_1EC893D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D70);
  }

  return result;
}

unint64_t sub_1D6C47460()
{
  result = qword_1EC893D78;
  if (!qword_1EC893D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D78);
  }

  return result;
}

unint64_t sub_1D6C474B8()
{
  result = qword_1EC893D80;
  if (!qword_1EC893D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D80);
  }

  return result;
}

unint64_t sub_1D6C47510()
{
  result = qword_1EC893D88;
  if (!qword_1EC893D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893D88);
  }

  return result;
}

void sub_1D6C47590(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6C47610(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6C47684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  sub_1D6C4929C(0, a6);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_children;
  swift_beginAccess();
  v18 = *(a4 + v17);
  if (v18 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 1;
    return (*(v13 + 56))(a5, v23, 1, v12);
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = a5;
  v19 = *(a4 + v17);
  swift_bridgeObjectRetain_n();
  v27 = sub_1D680E924(v19);
  sub_1D6E43C84(&v27);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a4;
  sub_1D6AD4914(0, v21);
  v25[1] = v22;
  v25[0] = sub_1D725895C();
  sub_1D6C493D8(0, &qword_1EC893DE0, sub_1D6C49444, &type metadata for DebugFormatFileTreeItemView, MEMORY[0x1E697F960]);
  sub_1D6C491BC(&qword_1EC893E38, sub_1D6AD4914, MEMORY[0x1E69E6338]);
  sub_1D6C49940();
  sub_1D6C491BC(&qword_1EC893E78, type metadata accessor for DebugFormatFileTreeItem, &unk_1D734CE90);

  sub_1D72619EC();
  a5 = v26;
  (*(v13 + 32))(v26, v16, v12);
  v23 = 0;
  return (*(v13 + 56))(a5, v23, 1, v12);
}

void *sub_1D6C47980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v57 = a4;
  v58 = a5;
  sub_1D6C493D8(0, &qword_1EC893E80, sub_1D6C49444, &type metadata for DebugFormatFileTreeItemView, MEMORY[0x1E697F948]);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v52 - v13);
  sub_1D6C494AC(0);
  v61 = v15;
  v59 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C49444(0, v17);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v60 = &v52 - v26;
  v27 = *a1;
  v28 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_children;
  swift_beginAccess();
  v29 = *(v27 + v28);
  if (v29 >> 62)
  {
    if (sub_1D7263BFC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    type metadata accessor for DebugFormatFileTreeModel(0);
    sub_1D6C491BC(&qword_1EC88A660, type metadata accessor for DebugFormatFileTreeModel, &unk_1D731DF18);

    v30 = sub_1D7260F8C();
    v32 = v31;
    type metadata accessor for DebugFormatFileTreeItem(0);
    sub_1D6C491BC(&qword_1EC893D90, type metadata accessor for DebugFormatFileTreeItem, &unk_1D734CEC8);
    v33 = sub_1D7260F8C();
    *v14 = v30;
    v14[1] = v32;
    v14[2] = v33;
    v14[3] = v34;
    swift_storeEnumTagMultiPayload();
    sub_1D6C499F8(v35);
    sub_1D6C49B08();
    return sub_1D726135C();
  }

  v53 = v23;
  v54 = v20;
  v55 = v11;
  v56 = a6;
  v37 = sub_1D72611CC();
  v66 = 1;
  v38 = a2;
  v39 = v57;
  v40 = v58;
  sub_1D6C47F9C(a3, v27, &v74);
  v69 = v76;
  v70 = v77;
  v71 = v78;
  v72 = v79;
  v67 = v74;
  v68 = v75;
  v73[2] = v76;
  v73[3] = v77;
  v73[4] = v78;
  v73[5] = v79;
  v73[0] = v74;
  v73[1] = v75;
  sub_1D6C4A234(&v67, &v63, sub_1D6C49630);
  sub_1D6C49B68(v73, sub_1D6C49630);
  *&v65[39] = v69;
  *&v65[55] = v70;
  *&v65[71] = v71;
  *&v65[87] = v72;
  *&v65[7] = v67;
  *&v65[23] = v68;
  *&v64[49] = *&v65[48];
  *&v64[65] = *&v65[64];
  *&v64[81] = *&v65[80];
  *&v64[17] = *&v65[16];
  v63 = v37;
  v64[0] = v66;
  *&v64[33] = *&v65[32];
  *&v64[96] = *(&v72 + 1);
  *&v64[1] = *v65;
  v41 = swift_allocObject();
  v41[2] = v27;
  v41[3] = v38;
  v41[4] = a3;
  v41[5] = v39;
  v41[6] = v40;
  sub_1D6C49560(0);
  sub_1D6C491BC(&qword_1EC893E30, sub_1D6C49560, MEMORY[0x1E69817F8]);

  sub_1D726177C();

  v78 = *&v64[48];
  v79 = *&v64[64];
  v80 = *&v64[80];
  v81 = *&v64[96];
  v74 = v63;
  v75 = *v64;
  v76 = *&v64[16];
  v77 = *&v64[32];
  sub_1D6C49B68(&v74, sub_1D6C49560);
  if (sub_1D6C49F54(v27, a3))
  {
    sub_1D5C0B9F0();
    sub_1D726357C();
    v42 = sub_1D726189C();
  }

  else
  {
    *&v63 = sub_1D726185C();
    sub_1D6C4A1E0();
    v42 = sub_1D72618AC();
  }

  v43 = v53;
  v44 = v54;
  *&v63 = v42;
  v45 = sub_1D726199C();
  v46.n128_f64[0] = (*(v59 + 32))(v43, v62, v61);
  *(v43 + *(v44 + 36)) = v45;
  v47 = v43;
  v48 = v60;
  sub_1D5DBC0FC(v47, v60, v46);
  sub_1D5DBC160(v48, v14, v49);
  swift_storeEnumTagMultiPayload();
  sub_1D6C499F8(v50);
  sub_1D6C49B08();
  sub_1D726135C();
  return sub_1D5DBC1C4(v48, v51);
}

double sub_1D6C47F9C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v81 = a1;
  v79 = a3;
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugFormatCacheFile(0);
  v77 = *(v8 - 8);
  v78 = v8;
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68723A4(0, v10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v33 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D72618CC();
  v74 = a2;
  sub_1D6C49BD8(a2, a1, &selRef_secondaryLabelColor);
  v82 = sub_1D726189C();
  v15 = *(a2 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_name);
  v16 = *(a2 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_name + 8);
  v84 = v15;
  v85 = v16;
  sub_1D5BF4D9C();

  v17 = sub_1D726171C();
  v19 = v18;
  v21 = v20;
  v22 = sub_1D726163C();
  v23 = *(v22 - 8);
  v70 = *(v23 + 56);
  v71 = v22;
  v69 = v23 + 56;
  v70(v33, 1, 1);
  sub_1D726167C();
  v72 = v33;
  sub_1D6C49B68(v33, sub_1D68723A4);
  v24 = sub_1D72616DC();
  v26 = v25;
  v28 = v27;

  sub_1D5F26348(v17, v19, v21 & 1);

  v29 = v74;
  sub_1D6C49BD8(v74, v81, &selRef_labelColor);
  v84 = sub_1D726189C();
  v75 = sub_1D72616CC();
  v80 = v30;
  v81 = v31;
  LODWORD(v33) = v32;
  sub_1D5F26348(v24, v26, v28 & 1);
  v34 = v76;

  sub_1D6C4A234(v29 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile, v34, sub_1D6032A5C);
  if ((*(v77 + 48))(v34, 1, v78) == 1)
  {
    v35 = sub_1D6032A5C;
    v36 = v34;
LABEL_6:
    sub_1D6C49B68(v36, v35);
    v78 = 0;
    v54 = 0;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_7;
  }

  v37 = v73;
  sub_1D61554B0(v34, v73);
  if (*(v37 + 24) != 1)
  {
    v35 = type metadata accessor for DebugFormatCacheFile;
    v36 = v37;
    goto LABEL_6;
  }

  sub_1D726121C();
  v38 = sub_1D726170C();
  v40 = v39;
  v42 = v41;
  sub_1D726166C();
  v78 = 1;
  v43 = v72;
  (v70)(v72, 1, 1, v71);
  sub_1D726167C();
  sub_1D6C49B68(v43, sub_1D68723A4);
  v76 = sub_1D72616DC();
  v45 = v44;
  v47 = v46;

  sub_1D5F26348(v38, v40, v42 & 1);

  v84 = sub_1D726184C();
  v48 = v76;
  v49 = sub_1D72616CC();
  LODWORD(v77) = v33;
  v33 = v50;
  LOBYTE(v40) = v51;
  v53 = v52;
  sub_1D5F26348(v48, v45, v47 & 1);

  sub_1D5F26358(v49, v33, v40 & 1);

  sub_1D6C49B68(v37, type metadata accessor for DebugFormatCacheFile);
  sub_1D5F26348(v49, v33, v40 & 1);

  v54 = v49;
  v55 = v33;
  v56 = v33;
  LOBYTE(v33) = v77;
  v57 = v40 & 1;
  sub_1D5F26358(v49, v56, v40 & 1);
  v58 = v53;

LABEL_7:
  v59 = v33 & 1;
  LOBYTE(v84) = v33 & 1;
  LODWORD(v77) = v33 & 1;
  v60 = v83;

  v61 = v82;

  v62 = v75;
  v63 = v80;
  sub_1D5F26358(v75, v80, v59);
  v64 = v81;

  v65 = v78;
  sub_1D6C4A29C(0, v78, v54, v55, v57, v58);
  sub_1D6C4A2E8(0, v65, v54, v55, v57, v58);
  v66 = v84;
  v67 = v79;
  *v79 = v60;
  v67[1] = v61;
  v67[2] = v62;
  v67[3] = v63;
  *(v67 + 32) = v66;
  v67[5] = v64;
  v67[6] = 0;
  v67[7] = v65;
  v67[8] = v54;
  v67[9] = v55;
  v67[10] = v57;
  v67[11] = v58;
  sub_1D6C4A2E8(0, v65, v54, v55, v57, v58);
  sub_1D5F26348(v62, v63, v77);

  return result;
}

uint64_t sub_1D6C48648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v41 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for DebugFormatCacheFile(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - v23;
  sub_1D6C4A234(a1 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile, v15, sub_1D6032A5C);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    v26 = sub_1D6032A5C;
    v27 = v15;
  }

  else
  {
    sub_1D61554B0(v15, v24);
    if (*(a3 + 24) == 1)
    {
      v39 = *(a3 + 16);
      v40 = v24;
      v28 = v41;
      sub_1D6C4A234(v24, v41, type metadata accessor for DebugFormatCacheFile);
      (*(v17 + 56))(v28, 0, 1, v16);
      sub_1D6C4A234(v28, v8, sub_1D6032A5C);
      if (v25(v8, 1, v16) == 1)
      {
        sub_1D6C49B68(v28, sub_1D6032A5C);
        sub_1D6C49B68(v8, sub_1D6032A5C);
        sub_1D607F0A4(&v48);
      }

      else
      {
        sub_1D61554B0(v8, v20);
        v29 = *v20;
        v30 = *(v20 + 1);
        v31 = *(v20 + 2);
        v32 = v20[24];
        v34 = *(v20 + 4);
        v33 = *(v20 + 5);
        if (*(v20 + 6))
        {
          swift_beginAccess();

          sub_1D6C4CF94(v35);
          v37 = v36;
        }

        else
        {

          v37 = MEMORY[0x1E69E7CC0];
        }

        sub_1D6C49B68(v41, sub_1D6032A5C);
        sub_1D6C49B68(v20, type metadata accessor for DebugFormatCacheFile);
        *&v42 = v29;
        *(&v42 + 1) = v30;
        *&v43 = v31;
        BYTE8(v43) = v32;
        *&v44 = v34;
        *(&v44 + 1) = v33;
        v45 = 0u;
        v46 = 0u;
        *&v47[0] = v37;
        *(v47 + 8) = 0u;
        *(&v47[1] + 8) = 0u;
        *(&v47[2] + 1) = 0;
        nullsub_1();
        v52 = v46;
        v53 = v47[0];
        v54 = v47[1];
        v55 = v47[2];
        v48 = v42;
        v49 = v43;
        v50 = v44;
        v51 = v45;
      }

      v46 = v52;
      v47[0] = v53;
      v47[1] = v54;
      v47[2] = v55;
      v42 = v48;
      v43 = v49;
      v44 = v50;
      v45 = v51;

      sub_1D725B32C();

      LOBYTE(v42) = 1;

      sub_1D725B32C();

      v26 = type metadata accessor for DebugFormatCacheFile;
      v27 = v40;
    }

    else
    {
      v26 = type metadata accessor for DebugFormatCacheFile;
      v27 = v24;
    }
  }

  return sub_1D6C49B68(v27, v26);
}

__n128 sub_1D6C48B18@<Q0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_1D72611CC();
  v18 = 1;
  sub_1D6C48BB8(a4, v15, v9);
  v10 = v16;
  v11 = v17;
  v13 = v15[0];
  result = v15[1];
  v14 = v18;
  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 16) = v14;
  *(a5 + 24) = v13;
  *(a5 + 40) = result;
  *(a5 + 56) = v10;
  *(a5 + 64) = v11;
  *(a5 + 72) = 0;
  return result;
}

double sub_1D6C48BB8@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_1D68723A4(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D72618CC();
  v9 = [objc_opt_self() secondaryLabelColor];
  v28 = sub_1D726189C();
  v10 = *(a1 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_name);
  v11 = *(a1 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_name + 8);
  v30 = v10;
  v31 = v11;
  sub_1D5BF4D9C();

  v12 = sub_1D726171C();
  v14 = v13;
  v16 = v15;
  v17 = sub_1D726163C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1D726167C();
  sub_1D6C49B68(v8, sub_1D68723A4);
  v18 = sub_1D72616DC();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1D5F26348(v12, v14, v16 & 1);

  v25 = v28;
  *a2 = v29;
  *(a2 + 8) = v25;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  v22 &= 1u;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;

  sub_1D5F26358(v18, v20, v22);

  sub_1D5F26348(v18, v20, v22);

  return result;
}

uint64_t sub_1D6C48E04()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for DebugFormatFileTreeItem(0);
  sub_1D6C491BC(&qword_1EC893D90, type metadata accessor for DebugFormatFileTreeItem, &unk_1D734CEC8);
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D6C493D8(0, &qword_1EC893D98, sub_1D6C4902C, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
  sub_1D6C49204(0);
  sub_1D6C497A0();
  sub_1D6C498D0(&qword_1EC893E50, sub_1D6C49204, sub_1D6C49888, MEMORY[0x1E6982090]);

  return sub_1D7260FFC();
}

void sub_1D6C4909C(uint64_t a1)
{
  if (!qword_1EC893DB0)
  {
    sub_1D6C49104(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC893DB0);
    }
  }
}

void sub_1D6C49104(uint64_t a1)
{
  if (!qword_1EC893DB8)
  {
    sub_1D6C49164();
    v1 = sub_1D726101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893DB8);
    }
  }
}

void sub_1D6C49164()
{
  if (!qword_1EC893DC0)
  {
    v0 = sub_1D72614AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893DC0);
    }
  }
}

uint64_t sub_1D6C491BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6C49238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6C4929C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC893DD8)
  {
    sub_1D6AD4914(255, a2);
    sub_1D725895C();
    sub_1D6C493D8(255, &qword_1EC893DE0, sub_1D6C49444, &type metadata for DebugFormatFileTreeItemView, MEMORY[0x1E697F960]);
    sub_1D6C491BC(&qword_1EC893E38, sub_1D6AD4914, MEMORY[0x1E69E6338]);
    sub_1D6C491BC(&qword_1EC881120, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v2 = sub_1D72619FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC893DD8);
    }
  }
}

void sub_1D6C493D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D6C49444(uint64_t a1, __n128 a2)
{
  if (!qword_1EC893DE8)
  {
    sub_1D6C494AC(255);
    sub_1D5F260A0(255);
    v2 = sub_1D726101C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC893DE8);
    }
  }
}

void sub_1D6C494AC(uint64_t a1)
{
  if (!qword_1EC893DF0)
  {
    sub_1D6C49560(255);
    sub_1D6C491BC(&qword_1EC893E30, sub_1D6C49560, MEMORY[0x1E69817F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC893DF0);
    }
  }
}

void sub_1D6C4959C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6C491BC(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1D726197C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6C49664(uint64_t a1)
{
  if (!qword_1EC893E08)
  {
    sub_1D6C49104(255);
    sub_1D6C49238(255, &qword_1EC893E10, sub_1D6C4970C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC893E08);
    }
  }
}

void sub_1D6C49740()
{
  if (!qword_1EC893E20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC893E20);
    }
  }
}

unint64_t sub_1D6C497A0()
{
  result = qword_1EC893E40;
  if (!qword_1EC893E40)
  {
    sub_1D6C493D8(255, &qword_1EC893D98, sub_1D6C4902C, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1D6C491BC(&qword_1EC893E48, sub_1D6C4902C, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893E40);
  }

  return result;
}

uint64_t sub_1D6C498D0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C49940()
{
  result = qword_1EC893E60;
  if (!qword_1EC893E60)
  {
    sub_1D6C493D8(255, &qword_1EC893DE0, sub_1D6C49444, &type metadata for DebugFormatFileTreeItemView, MEMORY[0x1E697F960]);
    sub_1D6C499F8(v1);
    sub_1D6C49B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893E60);
  }

  return result;
}

unint64_t sub_1D6C499F8(__n128 a1)
{
  result = qword_1EC893E68;
  if (!qword_1EC893E68)
  {
    sub_1D6C49444(255, a1);
    sub_1D6C49560(255);
    sub_1D6C491BC(&qword_1EC893E30, sub_1D6C49560, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1D6C491BC(&qword_1EC8811A8, sub_1D5F260A0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893E68);
  }

  return result;
}

unint64_t sub_1D6C49B08()
{
  result = qword_1EC893E70;
  if (!qword_1EC893E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893E70);
  }

  return result;
}

uint64_t sub_1D6C49B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D6C49BD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DebugFormatCacheFile(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6C4A234(a1 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile, v8, sub_1D6032A5C);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = sub_1D6032A5C;
    v15 = v8;
LABEL_20:
    sub_1D6C49B68(v15, v14);
    v31 = [objc_opt_self() *a3];

    return v31;
  }

  sub_1D61554B0(v8, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v16 = v35;
  if (!v35)
  {
    v14 = type metadata accessor for DebugFormatCacheFile;
    v15 = v13;
    goto LABEL_20;
  }

  v17 = *(v35 + 40);
  v18 = *v13;
  v19 = v13[1];
  if (*(v17 + 16) && (v20 = sub_1D5B69D90(*v13, v13[1]), (v21 & 1) != 0))
  {
    v22 = *(*(v17 + 56) + 8 * v20);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v16 + 24);
  if (*(v23 + 16) && (v24 = sub_1D5B69D90(v18, v19), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  if (v22 >> 62)
  {
    v27 = sub_1D7263BFC();
  }

  else
  {
    v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 >> 62)
  {
    v28 = sub_1D7263BFC();
  }

  else
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    v29 = objc_opt_self();
    if (v28)
    {
      v30 = [v29 *a3];
    }

    else
    {
      v30 = [v29 systemOrangeColor];
    }
  }

  else
  {
    v30 = [objc_opt_self() systemGray2Color];
  }

  v33 = v30;

  sub_1D6C49B68(v13, type metadata accessor for DebugFormatCacheFile);
  return v33;
}

uint64_t sub_1D6C49F54(uint64_t a1, uint64_t a2)
{
  sub_1D6032A5C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v22[4] = v18;
  v22[5] = v19;
  v22[6] = v20;
  v22[7] = v21;
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v21;
  if (sub_1D5DEA380(v23) == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = v23[0];
    sub_1D6C4A234(a1 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile, v6, sub_1D6032A5C);
    v9 = type metadata accessor for DebugFormatCacheFile(0);
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {

      sub_1D6C49B68(v6, sub_1D6032A5C);
      sub_1D6C49B68(v22, sub_1D679CB9C);
      v7 = 0;
    }

    else
    {
      v11 = *v6;
      v10 = v6[1];

      sub_1D6C49B68(v6, type metadata accessor for DebugFormatCacheFile);
      if (v8 == v11 && *(&v8 + 1) == v10)
      {
        sub_1D6C49B68(v22, sub_1D679CB9C);

        v7 = 1;
      }

      else
      {
        v7 = sub_1D72646CC();
        sub_1D6C49B68(v22, sub_1D679CB9C);
      }
    }
  }

  return v7 & 1;
}

unint64_t sub_1D6C4A1E0()
{
  result = qword_1EC893E88;
  if (!qword_1EC893E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893E88);
  }

  return result;
}

uint64_t sub_1D6C4A234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C4A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D5F26358(a3, a4, a5 & 1);
  }

  return result;
}

double sub_1D6C4A2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_1D5F26348(a3, a4, a5 & 1);
  }

  return result;
}

void sub_1D6C4A334(uint64_t a1)
{
  if (!qword_1EC893E98)
  {
    sub_1D6C493D8(255, &qword_1EC893D98, sub_1D6C4902C, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1D6C49204(255);
    sub_1D6C497A0();
    sub_1D6C498D0(&qword_1EC893E50, sub_1D6C49204, sub_1D6C49888, MEMORY[0x1E6982090]);
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893E98);
    }
  }
}

void sub_1D6C4A458(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E697A65657266 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6C4A4E0(uint64_t a1)
{
  v2 = sub_1D5BA646C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C4A51C(uint64_t a1)
{
  v2 = sub_1D5BA646C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupRepooling.encode(to:)(void *a1)
{
  sub_1D5BA63F0(0, &qword_1EDF02958, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA646C();
  sub_1D7264B5C();
  v12 = v9;
  sub_1D6C4A710();
  sub_1D72643BC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t _s8NewsFeed0B14GroupRepoolingV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6C4A710()
{
  result = qword_1EDF14ED0;
  if (!qword_1EDF14ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedGroupRepooling(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

unint64_t sub_1D6C4A824()
{
  result = qword_1EC893EA0;
  if (!qword_1EC893EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893EA0);
  }

  return result;
}

uint64_t FormatNotificationsAction.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6C4A908()
{
  result = qword_1EC893EA8;
  if (!qword_1EC893EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893EA8);
  }

  return result;
}

unint64_t sub_1D6C4A95C(uint64_t a1)
{
  result = sub_1D6C4A984();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C4A984()
{
  result = qword_1EC893EB0;
  if (!qword_1EC893EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893EB0);
  }

  return result;
}

unint64_t sub_1D6C4A9D8(void *a1)
{
  a1[1] = sub_1D5F94F30();
  a1[2] = sub_1D5F94F84();
  result = sub_1D6C4A908();
  a1[3] = result;
  return result;
}

uint64_t SportsTaxonomyGraphNode.tagId.getter()
{
  if ((*v0 >> 62) - 1 > 1)
  {
    return 0;
  }

  v1 = *(*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16);

  return v1;
}

uint64_t SportsTaxonomyGraphNode.umcCanonicalId.getter()
{
  if ((*v0 >> 62) - 1 > 1)
  {
    return 0;
  }

  v1 = *(*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 32);

  return v1;
}

uint64_t SportsTaxonomyGraphNode.isHidden.getter()
{
  v1 = *v0 >> 62;
  if ((v1 - 1) >= 2)
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 16;
  }

  else
  {
    v2 = 48;
  }

  return *(*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v2);
}

uint64_t SportsTaxonomyGraphNode.sortIfNeeded<A>(tags:sortBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4 >> 62;
  v6 = v5 == 2;
  if (v5 >= 2)
  {
    v7 = 17;
    if (v6)
    {
      v7 = 49;
    }

    if (*(*((*v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v7) == 1)
    {
    }
  }

  sub_1D72627FC();
  swift_getWitnessTable();
  return sub_1D72624AC();
}

uint64_t SportsTaxonomyGraphNode.isChildrenOrderCurated.getter()
{
  v1 = *v0 >> 62;
  v2 = v1 == 2;
  if (v1 < 2)
  {
    return 0;
  }

  v4 = 17;
  if (v2)
  {
    v4 = 49;
  }

  return *(*((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v4);
}

uint64_t SportsTaxonomyGraphNode.children.getter()
{
  v1 = *v0 >> 62;
  if (v1 <= 1 && v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
}

uint64_t SportsTaxonomyGraphNode.visibleChildren.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    v17 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 2)
    {
      v18 = *(v17 + 16);
      swift_beginAccess();
      v19 = *(v18 + 56);
      v20 = *(v19 + 16);

      if (!v20)
      {
        goto LABEL_59;
      }

      v21 = 0;
      v8 = MEMORY[0x1E69E7CC0];
LABEL_24:
      v22 = *(v19 + 16);
      if (v21 > v22)
      {
        v22 = v21;
      }

      v23 = v21;
      while (1)
      {
        if (v22 == v23)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v25 = *(v19 + 32 + 8 * v23);
        if ((v25 >> 62) - 1 < 2)
        {
          v24 = 48;
        }

        else
        {
          if (!(v25 >> 62))
          {
            goto LABEL_29;
          }

          v24 = 16;
        }

        result = v25 & 0x3FFFFFFFFFFFFFFFLL;
        if (*(*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v24) != 1)
        {

          result = swift_isUniquelyReferenced_nonNull_native();
          v46 = v8;
          if ((result & 1) == 0)
          {
            result = sub_1D6999FEC(0, *(v8 + 16) + 1, 1);
          }

          v26 = *(v8 + 16);
          v27 = *(v8 + 24);
          v28 = v26 + 1;
          if (v26 >= v27 >> 1)
          {
            v29 = v26 + 1;
            v43 = v26;
            result = sub_1D6999FEC((v27 > 1), v26 + 1, 1);
            v28 = v29;
            v26 = v43;
            v8 = v46;
          }

          v21 = v23 + 1;
          *(v8 + 16) = v28;
          *(v8 + 8 * v26 + 32) = v25;
          if (v20 - 1 == v23)
          {
            goto LABEL_60;
          }

          goto LABEL_24;
        }

LABEL_29:
        if (v20 == ++v23)
        {
          goto LABEL_60;
        }
      }
    }

    v30 = *(v17 + 16);
    swift_beginAccess();
    v31 = *(v30 + 40);
    v32 = *(v31 + 16);

    if (!v32)
    {
      goto LABEL_59;
    }

    v33 = 0;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v34 = *(v31 + 16);
    if (v33 > v34)
    {
      v34 = v33;
    }

    v35 = v33;
    while (1)
    {
      if (v34 == v35)
      {
LABEL_64:
        __break(1u);
        return result;
      }

      v37 = *(v31 + 32 + 8 * v35);
      if ((v37 >> 62) - 1 < 2)
      {
        v36 = 48;
      }

      else
      {
        if (!(v37 >> 62))
        {
          goto LABEL_48;
        }

        v36 = 16;
      }

      result = v37 & 0x3FFFFFFFFFFFFFFFLL;
      if (*(*((v37 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v36) != 1)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v47 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6999FEC(0, *(v8 + 16) + 1, 1);
        }

        v38 = *(v8 + 16);
        v39 = *(v8 + 24);
        v40 = v38 + 1;
        if (v38 >= v39 >> 1)
        {
          v41 = v38 + 1;
          v44 = v38;
          result = sub_1D6999FEC((v39 > 1), v38 + 1, 1);
          v40 = v41;
          v38 = v44;
          v8 = v47;
        }

        v33 = v35 + 1;
        *(v8 + 16) = v40;
        *(v8 + 8 * v38 + 32) = v37;
        if (v32 - 1 == v35)
        {
LABEL_60:

          return v8;
        }

        goto LABEL_43;
      }

LABEL_48:
      if (v32 == ++v35)
      {
        goto LABEL_60;
      }
    }
  }

  if (!v2)
  {
    v3 = *(v1 + 16);
    swift_beginAccess();
    v4 = *(v3 + 16);
    v5 = *(v4 + 16);

    if (v5)
    {
      v7 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v9 = *(v4 + 16);
        if (v7 > v9)
        {
          v9 = v7;
        }

        v10 = v7;
        while (1)
        {
          if (v9 == v10)
          {
            __break(1u);
            goto LABEL_63;
          }

          v12 = *(v4 + 32 + 8 * v10);
          if ((v12 >> 62) - 1 < 2)
          {
            v11 = 48;
          }

          else
          {
            if (!(v12 >> 62))
            {
              goto LABEL_10;
            }

            v11 = 16;
          }

          result = v12 & 0x3FFFFFFFFFFFFFFFLL;
          if (*(*((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v11) != 1)
          {
            break;
          }

LABEL_10:
          if (v5 == ++v10)
          {
            goto LABEL_60;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v45 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6999FEC(0, *(v8 + 16) + 1, 1);
        }

        v13 = *(v8 + 16);
        v14 = *(v8 + 24);
        v15 = v13 + 1;
        if (v13 >= v14 >> 1)
        {
          v16 = v13 + 1;
          v42 = v13;
          result = sub_1D6999FEC((v14 > 1), v13 + 1, 1);
          v15 = v16;
          v13 = v42;
          v8 = v45;
        }

        v7 = v10 + 1;
        *(v8 + 16) = v15;
        *(v8 + 8 * v13 + 32) = v12;
        if (v5 - 1 == v10)
        {
          goto LABEL_60;
        }
      }
    }

LABEL_59:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_60;
  }

  return MEMORY[0x1E69E7CC0];
}

char *SportsTaxonomyGraphNode.parents.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 2)
    {
      v5 = *(v4 + 16);
      swift_beginAccess();
      v6 = *(v5 + 64);
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        goto LABEL_101;
      }

      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v41 = *(v4 + 16);
    swift_beginAccess();
    v6 = *(v41 + 48);
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v42 = sub_1D7263BFC();
    }

    else
    {
      v42 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v42)
    {
      goto LABEL_92;
    }

    v43 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_67:
    v44 = v43;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v44, v6);
        v43 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v8 = sub_1D7263BFC();
LABEL_7:

          if (!v8)
          {
            goto LABEL_92;
          }

          v9 = 0;
          v3 = MEMORY[0x1E69E7CC0];
LABEL_9:
          v10 = v9;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6FB460](v10, v6);
              v9 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_95;
              }
            }

            else
            {
              if (v10 >= *(v7 + 16))
              {
                goto LABEL_98;
              }

              v9 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              type metadata accessor for SportsTaxonomyGraphRootNode();
              swift_unknownObjectRetain();
              v11 = swift_dynamicCastClass();
              if (v11)
              {
                v15 = v11;
                swift_unknownObjectRelease();
                v16 = swift_allocObject();
                *(v16 + 16) = v15;

                goto LABEL_28;
              }

              type metadata accessor for SportsTaxonomyGraphEntityNode();
              v12 = swift_dynamicCastClass();
              if (v12)
              {
                v17 = v12;
                swift_unknownObjectRelease();
                v18 = swift_allocObject();
                *(v18 + 16) = v17;

                v16 = v18 | 0x8000000000000000;
                goto LABEL_28;
              }

              type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
              v13 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v13)
              {
                v19 = swift_allocObject();
                *(v19 + 16) = v13;

                v16 = v19 | 0x4000000000000000;
                goto LABEL_28;
              }

              type metadata accessor for SportsTaxonomyGraphSectionNode();
              v14 = swift_dynamicCastClass();
              if (v14)
              {
                v20 = v14;
                v21 = swift_allocObject();
                *(v21 + 16) = v20;

                v16 = v21 | 0xC000000000000000;
LABEL_28:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v3 = sub_1D698BF5C(0, *(v3 + 2) + 1, 1, v3);
                }

                v23 = *(v3 + 2);
                v22 = *(v3 + 3);
                if (v23 >= v22 >> 1)
                {
                  v3 = sub_1D698BF5C((v22 > 1), v23 + 1, 1, v3);
                }

                *(v3 + 2) = v23 + 1;
                *&v3[8 * v23 + 32] = v16;
                if (v9 == v8)
                {
LABEL_93:

                  return v3;
                }

                goto LABEL_9;
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            ++v10;
            if (v9 == v8)
            {
              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        if (v44 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        v43 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_97;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for SportsTaxonomyGraphRootNode();
        swift_unknownObjectRetain();
        v45 = swift_dynamicCastClass();
        if (v45)
        {
          v49 = v45;
          swift_unknownObjectRelease();
          v50 = swift_allocObject();
          *(v50 + 16) = v49;

LABEL_86:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1D698BF5C(0, *(v3 + 2) + 1, 1, v3);
          }

          v57 = *(v3 + 2);
          v56 = *(v3 + 3);
          if (v57 >= v56 >> 1)
          {
            v3 = sub_1D698BF5C((v56 > 1), v57 + 1, 1, v3);
          }

          *(v3 + 2) = v57 + 1;
          *&v3[8 * v57 + 32] = v50;
          if (v43 == v42)
          {
            goto LABEL_93;
          }

          goto LABEL_67;
        }

        type metadata accessor for SportsTaxonomyGraphEntityNode();
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v51 = v46;
          swift_unknownObjectRelease();
          v52 = swift_allocObject();
          *(v52 + 16) = v51;

          v50 = v52 | 0x8000000000000000;
          goto LABEL_86;
        }

        type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
        v47 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v47)
        {
          v53 = swift_allocObject();
          *(v53 + 16) = v47;

          v50 = v53 | 0x4000000000000000;
          goto LABEL_86;
        }

        type metadata accessor for SportsTaxonomyGraphSectionNode();
        v48 = swift_dynamicCastClass();
        if (v48)
        {
          v54 = v48;
          v55 = swift_allocObject();
          *(v55 + 16) = v54;

          v50 = v55 | 0xC000000000000000;
          goto LABEL_86;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v44;
      if (v43 == v42)
      {
        goto LABEL_93;
      }
    }
  }

  if (v2)
  {
    v24 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_beginAccess();
    v6 = *(v24 + 56);
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v25 = sub_1D7263BFC();
    }

    else
    {
      v25 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      v26 = 0;
      v3 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v27 = v26;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA6FB460](v27, v6);
            v26 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v27 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v26 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
LABEL_96:
              __break(1u);
              goto LABEL_97;
            }
          }

          if (!swift_unknownObjectWeakLoadStrong())
          {

            goto LABEL_40;
          }

          type metadata accessor for SportsTaxonomyGraphRootNode();
          swift_unknownObjectRetain();
          v28 = swift_dynamicCastClass();
          if (v28)
          {
            break;
          }

          type metadata accessor for SportsTaxonomyGraphEntityNode();
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            v34 = v29;
            swift_unknownObjectRelease();
            v35 = swift_allocObject();
            *(v35 + 16) = v34;

            v33 = v35 | 0x8000000000000000;
            goto LABEL_57;
          }

          type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
          v30 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v30)
          {
            v36 = swift_allocObject();
            *(v36 + 16) = v30;

            v33 = v36 | 0x4000000000000000;
            goto LABEL_57;
          }

          type metadata accessor for SportsTaxonomyGraphSectionNode();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v37 = v31;
            v38 = swift_allocObject();
            *(v38 + 16) = v37;

            v33 = v38 | 0xC000000000000000;
            goto LABEL_57;
          }

          swift_unknownObjectRelease();
LABEL_40:
          ++v27;
          if (v26 == v25)
          {
            goto LABEL_93;
          }
        }

        v32 = v28;
        swift_unknownObjectRelease();
        v33 = swift_allocObject();
        *(v33 + 16) = v32;

LABEL_57:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D698BF5C(0, *(v3 + 2) + 1, 1, v3);
        }

        v40 = *(v3 + 2);
        v39 = *(v3 + 3);
        if (v40 >= v39 >> 1)
        {
          v3 = sub_1D698BF5C((v39 > 1), v40 + 1, 1, v3);
        }

        *(v3 + 2) = v40 + 1;
        *&v3[8 * v40 + 32] = v33;
        if (v26 == v25)
        {
          goto LABEL_93;
        }
      }
    }

LABEL_92:
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_93;
  }

  return MEMORY[0x1E69E7CC0];
}

void SportsTaxonomyGraphNode.flattenChildren()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 2)
    {
      v3 = (*(v4 + 16) + 56);
    }

    else
    {
      v3 = (*(v4 + 16) + 40);
    }

LABEL_9:
    swift_beginAccess();
    v5 = *v3;

    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_7:

    return;
  }

  if (!v2)
  {
    v3 = (*(v1 + 16) + 16);
    goto LABEL_9;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      v10 = *v7++;
      v9 = v10;
      v11 = v10 >> 62;
      if ((v10 >> 62) - 1 >= 2)
      {
        if (!v11)
        {
          break;
        }

        v12 = 16;
      }

      else
      {
        v12 = 48;
      }

      if (*(*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + v12) == 1)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D698BF5C(0, *(v8 + 2) + 1, 1, v8);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);
      if (v21 >= v20 >> 1)
      {
        v8 = sub_1D698BF5C((v20 > 1), v21 + 1, 1, v8);
      }

      *(v8 + 2) = v21 + 1;
      *&v8[8 * v21 + 32] = v9;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    SportsTaxonomyGraphNode.flattenChildren()();
    v14 = *(v13 + 16);
    v15 = *(v8 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v19 = *(v8 + 3) >> 1, v19 >= v16))
    {
      if (*(v17 + 16))
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v22 = v15 + v14;
      }

      else
      {
        v22 = v15;
      }

      v8 = sub_1D698BF5C(isUniquelyReferenced_nonNull_native, v22, 1, v8);
      v19 = *(v8 + 3) >> 1;
      if (*(v17 + 16))
      {
LABEL_33:
        if (v19 - *(v8 + 2) < v14)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v23 = *(v8 + 2);
          v24 = __OFADD__(v23, v14);
          v25 = v23 + v14;
          if (v24)
          {
            goto LABEL_40;
          }

          *(v8 + 2) = v25;
        }

        goto LABEL_12;
      }
    }

    if (v14)
    {
      goto LABEL_38;
    }

LABEL_12:

    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void SportsTaxonomyGraphNode.flattenAllChildren()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 2)
    {
      v3 = (*(v4 + 16) + 56);
    }

    else
    {
      v3 = (*(v4 + 16) + 40);
    }

LABEL_9:
    swift_beginAccess();
    v5 = *v3;

    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_7:

    return;
  }

  if (!v2)
  {
    v3 = (*(v1 + 16) + 16);
    goto LABEL_9;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BF5C(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1D698BF5C((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    *&v8[8 * v13 + 32] = v9;
    if ((v9 >> 62) - 1 >= 2)
    {
      if (!(v9 >> 62))
      {
        goto LABEL_22;
      }

      v14 = 16;
    }

    else
    {
      v14 = 48;
    }

    if (*(*(v11 + 16) + v14) != 1)
    {
      goto LABEL_12;
    }

LABEL_22:
    SportsTaxonomyGraphNode.flattenAllChildren()();
    v16 = *(v15 + 16);
    v17 = *(v8 + 2);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    v19 = *(v8 + 3) >> 1;
    if (v19 < v18)
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = *(v8 + 2);
      }

      v24 = v15;
      v8 = sub_1D698BF5C(1, v23, 1, v8);
      v17 = *(v8 + 2);
      v19 = *(v8 + 3) >> 1;
      if (*(v24 + 16))
      {
LABEL_25:
        if ((v19 - v17) < v16)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v8 + 2);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_37;
          }

          *(v8 + 2) = v22;
        }

        goto LABEL_12;
      }
    }

    else if (v16)
    {
      goto LABEL_25;
    }

    if (v16)
    {
      goto LABEL_35;
    }

LABEL_12:

    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void SportsTaxonomyGraphNode.childrenTagIds()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2 > 1)
  {
    v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    if (v2 == 2)
    {
      v3 = (*(v4 + 16) + 56);
    }

    else
    {
      v3 = (*(v4 + 16) + 40);
    }
  }

  else
  {
    if (v2)
    {
      v5 = MEMORY[0x1E69E7CC0];
      v6 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v3 = (*(v1 + 16) + 16);
  }

  swift_beginAccess();
  v5 = *v3;

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = *(v5 + 16);
    if (v7 > v9)
    {
      v9 = v7;
    }

    v10 = v7;
    while (1)
    {
      if (v9 == v10)
      {
        __break(1u);
        return;
      }

      v11 = *(v5 + 32 + 8 * v10);
      v7 = v10 + 1;
      if ((v11 >> 62) - 1 < 2)
      {
        break;
      }

      ++v10;
      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }

    v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D5B858EC(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_1D5B858EC((v15 > 1), v16 + 1, 1, v8);
    }

    *(v8 + 2) = v16 + 1;
    v17 = &v8[16 * v16];
    *(v17 + 4) = v14;
    *(v17 + 5) = v13;
  }

  while (v6 - 1 != v10);
LABEL_7:
}

double sub_1D6C4BFF4(unint64_t *a1)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    v4 = *a1;
    if (v2 == 2)
    {

      sub_1D71F1DCC(&v4);
    }

    else
    {

      sub_1D671FC84(&v4);
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v4 = *a1;

    sub_1D6148224(&v4);
  }

  return result;
}

uint64_t OpenTextFileCommandHandler.__allocating_init(attachmentResolver:sceneProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1D5B63F14(a1, v4 + 16);
  sub_1D5B63F14(a2, v4 + 56);
  return v4;
}

uint64_t OpenTextFileCommandHandler.init(attachmentResolver:sceneProvider:)(__int128 *a1, __int128 *a2)
{
  sub_1D5B63F14(a1, v2 + 16);
  sub_1D5B63F14(a2, v2 + 56);
  return v2;
}

uint64_t OpenTextFileCommandHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t OpenTextFileCommandHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1D6C4C1E0(uint64_t a1)
{
  v102 = sub_1D725FC0C();
  v3 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v4);
  v101 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725895C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v98 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725D52C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v109 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v108 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v117 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v116 = &v90 - v26;
  v96 = type metadata accessor for DebugTaxtAttachementList(0);
  MEMORY[0x1EEE9AC00](v96, v27);
  v97 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v29 = sub_1D725DA4C();
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v29 rootViewController];

  if (!v31)
  {
    return;
  }

  v32 = sub_1D7262FCC();

  v33 = *(a1 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  if (!v33)
  {
    goto LABEL_53;
  }

  v90 = v32;
  v93 = v6;
  v121 = MEMORY[0x1E69E7CC0];
  sub_1D699A01C(0, v33, 0);
  v34 = v121;
  v36 = *(v11 + 16);
  v35 = v11 + 16;
  v37 = (a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64)));
  v105 = *(v35 + 56);
  v119 = (v35 + 72);
  v120 = v36;
  v118 = *MEMORY[0x1E69D7968];
  v111 = *MEMORY[0x1E69D7950];
  v104 = *MEMORY[0x1E69D7958];
  v103 = *MEMORY[0x1E69D7940];
  v99 = *MEMORY[0x1E69D7938];
  v92 = (v7 + 8);
  v110 = (v35 - 8);
  v38 = (v35 + 80);
  v95 = (v3 + 16);
  v91 = *MEMORY[0x1E69D7960];
  v94 = (v3 + 8);
  v106 = v14;
  v107 = v35;
  do
  {
    v115 = v34;
    v39 = v116;
    v40 = v120;
    v120(v116, v37, v10);
    v41 = v117;
    v40(v117, v39, v10);
    v42 = v108;
    v40(v108, v41, v10);
    v43 = *v119;
    v44 = (*v119)(v42, v10);
    if (v44 == v118)
    {
      (*v38)(v42, v10);
      v46 = *(*v42 + 16);
      v45 = *(*v42 + 24);
LABEL_9:
      v114 = v46;
LABEL_10:
      v113 = v45;

      goto LABEL_11;
    }

    if (v44 == v111)
    {
      (*v38)(v42, v10);
      v46 = *(*v42 + 56);
      v45 = *(*v42 + 64);
      goto LABEL_9;
    }

    if (v44 == v104)
    {
      (*v38)(v42, v10);
      sub_1D6C4CEF0(0);
      v65 = (swift_projectBox() + *(v64 + 48));
      v45 = v65[1];
      v114 = *v65;
      goto LABEL_10;
    }

    if (v44 == v103)
    {
      (*v38)(v42, v10);
      v46 = *(*v42 + 32);
      v45 = *(*v42 + 40);
      goto LABEL_9;
    }

    if (v44 == v99)
    {
      (*v110)(v42, v10);
      v75 = v98;
      sub_1D725894C();
      v76 = sub_1D725893C();
      v113 = v77;
      v114 = v76;
      (*v92)(v75, v93);
    }

    else
    {
      v79 = v98;
      sub_1D725894C();
      v80 = sub_1D725893C();
      v113 = v81;
      v114 = v80;
      (*v92)(v79, v93);
      (*v110)(v42, v10);
    }

LABEL_11:
    v47 = v109;
    v48 = v117;
    v120(v109, v117, v10);
    v49 = v43(v47, v10);
    if (v49 == v118)
    {
      (*v38)(v47, v10);
      v50 = *v47;
      v51 = *(v50 + 16);
      v52 = *(v50 + 24);
LABEL_15:
      v112 = v51;
LABEL_16:

      goto LABEL_17;
    }

    if (v49 == v111)
    {
      (*v38)(v47, v10);
      v53 = *v47;
      v51 = *(v53 + 56);
      v52 = *(v53 + 64);
      goto LABEL_15;
    }

    if (v49 == v104)
    {
      (*v38)(v47, v10);
      sub_1D6C4CEF0(0);
      v67 = (swift_projectBox() + *(v66 + 48));
      v52 = v67[1];
      v112 = *v67;
      goto LABEL_16;
    }

    if (v49 == v103)
    {
      (*v38)(v47, v10);
      v74 = *v47;
      v51 = *(v74 + 32);
      v52 = *(v74 + 40);
      goto LABEL_15;
    }

    if (v49 == v99)
    {
      (*v110)(v47, v10);
      v52 = 0xE500000000000000;
      v112 = 0x6567616D69;
    }

    else
    {
      if (v49 == v91)
      {
        (*v38)(v47, v10);
        v82 = *v47;
        v51 = *(v82 + 24);
        v52 = *(v82 + 32);
        goto LABEL_15;
      }

      (*v110)(v47, v10);
      v112 = 0;
      v52 = 0xE000000000000000;
    }

LABEL_17:
    v120(v14, v48, v10);
    v54 = v43(v14, v10);
    if (v54 == v118)
    {
      v55 = *v110;
      (*v110)(v48, v10);
      goto LABEL_19;
    }

    v58 = v110;
    if (v54 == v111)
    {
      v59 = *v110;
      (*v110)(v48, v10);
      v59(v116, v10);
      (*v38)(v14, v10);
      v56 = *(*v14 + 56);
      v57 = *(*v14 + 64);
      goto LABEL_22;
    }

    if (v54 == v104)
    {
      (*v38)(v14, v10);
      v100 = *v14;
      sub_1D6C4CEF0(0);
      v68 = swift_projectBox();
      v69 = v101;
      v70 = v102;
      (*v95)(v101, v68, v102);
      v71 = v58;
      v56 = sub_1D725FBFC();
      v57 = v72;
      (*v94)(v69, v70);
      v73 = *v71;
      (*v71)(v117, v10);
      v73(v116, v10);
      goto LABEL_23;
    }

    if (v54 == v103)
    {
      v55 = *v110;
      (*v110)(v117, v10);
LABEL_19:
      v55(v116, v10);
      (*v38)(v14, v10);
      v56 = *(*v14 + 16);
      v57 = *(*v14 + 24);
LABEL_22:

LABEL_23:

      goto LABEL_24;
    }

    if (v54 == v99)
    {
      v78 = *v110;
      (*v110)(v14, v10);
      v78(v117, v10);
      v78(v116, v10);
      v57 = 0xEA0000000000746FLL;
      v56 = 0x68736E6565726373;
    }

    else
    {
      v83 = *v110;
      v84 = v54;
      (*v110)(v117, v10);
      v83(v116, v10);
      if (v84 == v91)
      {
        (*v38)(v14, v10);
        v56 = *(*v14 + 24);
        v57 = *(*v14 + 32);
        goto LABEL_22;
      }

      v83(v14, v10);
      v56 = 0;
      v57 = 0xE000000000000000;
    }

LABEL_24:
    v34 = v115;
    v121 = v115;
    v61 = *(v115 + 16);
    v60 = *(v115 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_1D699A01C((v60 > 1), v61 + 1, 1);
      v34 = v121;
    }

    *(v34 + 16) = v61 + 1;
    v62 = (v34 + 48 * v61);
    v63 = v113;
    v62[4] = v114;
    v62[5] = v63;
    v62[6] = v112;
    v62[7] = v52;
    v62[8] = v56;
    v62[9] = v57;
    v14 = v106;
    v37 += v105;
    --v33;
  }

  while (v33);
  v32 = v90;
LABEL_53:
  KeyPath = swift_getKeyPath();
  v86 = v97;
  *&v97[*(v96 + 20)] = KeyPath;
  sub_1D6C4CDDC(0);
  swift_storeEnumTagMultiPayload();
  *v86 = v34;
  sub_1D6C4CE34(0);
  v88 = objc_allocWithZone(v87);
  v89 = sub_1D726126C();
  [v32 presentViewController:v89 animated:1 completion:0];
}

void sub_1D6C4CDDC(uint64_t a1)
{
  if (!qword_1EC893EB8)
  {
    sub_1D7260F1C();
    v1 = sub_1D7260E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893EB8);
    }
  }
}

void sub_1D6C4CE34(uint64_t a1)
{
  if (!qword_1EC893EC0)
  {
    type metadata accessor for DebugTaxtAttachementList(255);
    sub_1D6C4CE98();
    v1 = sub_1D726127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC893EC0);
    }
  }
}

unint64_t sub_1D6C4CE98()
{
  result = qword_1EC893EC8;
  if (!qword_1EC893EC8)
  {
    type metadata accessor for DebugTaxtAttachementList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893EC8);
  }

  return result;
}

void sub_1D6C4CEF0(uint64_t a1)
{
  if (!qword_1EDF3AAB0)
  {
    sub_1D725FC0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3AAB0);
    }
  }
}

void sub_1D6C4CF94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return;
  }

  v5 = 32;
  v30 = v3;
  while (1)
  {
    v6 = *(v3 + v5) >> 60;
    if (v6 == 2)
    {

      sub_1D6C4CF94(v15);
      v17 = *(v16 + 16);
      v18 = *(v2 + 2);
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_39;
      }

      v20 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v22 = *(v2 + 3) >> 1, v22 >= v19))
      {
        if (*(v20 + 16))
        {
LABEL_18:
          if (v22 - *(v2 + 2) < v17)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          v3 = v30;
          if (v17)
          {
            v23 = *(v2 + 2);
            v24 = __OFADD__(v23, v17);
            v25 = v23 + v17;
            if (v24)
            {
              goto LABEL_44;
            }

            *(v2 + 2) = v25;
          }

LABEL_35:

          goto LABEL_5;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v29 = v18 + v17;
        }

        else
        {
          v29 = v18;
        }

        v2 = sub_1D698F85C(isUniquelyReferenced_nonNull_native, v29, 1, v2);
        v22 = *(v2 + 3) >> 1;
        if (*(v20 + 16))
        {
          goto LABEL_18;
        }
      }

      v3 = v30;
      if (v17)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    if (v6)
    {
      goto LABEL_6;
    }

    sub_1D6C4CF94(v7);
    v9 = *(v8 + 16);
    v10 = *(v2 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    v12 = v8;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    if (v13 && (v14 = *(v2 + 3) >> 1, v14 >= v11))
    {
      if (!*(v12 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v26 = v10 + v9;
      }

      else
      {
        v26 = v10;
      }

      v2 = sub_1D698F85C(v13, v26, 1, v2);
      v14 = *(v2 + 3) >> 1;
      if (!*(v12 + 16))
      {
LABEL_3:

        if (v9)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if (v14 - *(v2 + 2) < v9)
    {
      goto LABEL_42;
    }

    swift_arrayInitWithCopy();

    if (v9)
    {
      v27 = *(v2 + 2);
      v24 = __OFADD__(v27, v9);
      v28 = v27 + v9;
      if (v24)
      {
        goto LABEL_45;
      }

      *(v2 + 2) = v28;
    }

LABEL_4:

LABEL_5:

LABEL_6:
    v5 += 8;
    if (!--v4)
    {

      return;
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
  __break(1u);
}

double sub_1D6C4D24C(unint64_t a1)
{
  v3 = (a1 >> 60) > 7 || ((1 << (a1 >> 60)) & 0xE5) == 0;
  if (!v3 || (v11 = *v1, swift_beginAccess(), v12 = *(v11 + 2), (v13 = *(v12 + 16)) == 0) || (v14 = *(v12 + 8 * v13 + 24), , v16 = sub_1D60E14A8(v14, a1, v15), , (v16 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5EB99F0();
      v17 = swift_allocObject();
      swift_beginAccess();
      v18 = v5[2];
      v20[0] = v5[1];
      v20[1] = v18;
      v21[0] = v5[3];
      *(v21 + 14) = *(v5 + 62);
      memmove((v17 + 16), v5 + 1, 0x3EuLL);
      sub_1D5EB9AB0(v20, v19);

      *v1 = v17;
      v5 = v17;
    }

    swift_beginAccess();
    v6 = *(v5 + 2);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 2) = v6;
    if ((v7 & 1) == 0)
    {
      v6 = sub_1D698F848(0, *(v6 + 2) + 1, 1, v6);
      *(v5 + 2) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D698F848((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = a1;
    *(v5 + 2) = v6;
    swift_endAccess();
  }

  return result;
}

void sub_1D6C4D418(uint64_t a1)
{
  v3 = v2;
  v46 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v46, v5);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v38 - v9;
  v10 = type metadata accessor for FormatOption(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v41 = *(v12 + 72);
    v38 = v1;
    while (1)
    {
      v16 = swift_allocBox();
      v18 = v17;
      v19 = v42;
      sub_1D69AB4C0(v15, v42, type metadata accessor for FormatOption);
      sub_1D69DFAF0(v19, v18);
      if (v3)
      {
        break;
      }

      v20 = *v1;
      swift_beginAccess();
      v21 = *(v20 + 2);
      v22 = *(v21 + 16);
      if (v22 && *(v21 + 8 * v22 + 24) >> 60 == 1 && (v23 = swift_projectBox(), v24 = v39, sub_1D69AB4C0(v23, v39, type metadata accessor for FormatDerivedDataOption), v25 = v40, sub_1D69AB4C0(v18, v40, type metadata accessor for FormatDerivedDataOption), , v26 = sub_1D69E18D4(v24, v25), sub_1D60E13EC(v25, v27), v28 = v24, v3 = 0, v1 = v38, sub_1D60E13EC(v28, v29), , v26))
      {
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v36 = swift_allocObject();
          swift_beginAccess();
          v37 = v31[2];
          v44[0] = v31[1];
          v44[1] = v37;
          v45[0] = v31[3];
          *(v45 + 14) = *(v31 + 62);
          memmove((v36 + 16), v31 + 1, 0x3EuLL);
          sub_1D5EB9AB0(v44, v43);

          *v1 = v36;
          v31 = v36;
        }

        swift_beginAccess();
        v32 = *(v31 + 2);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 2) = v32;
        if ((v33 & 1) == 0)
        {
          v32 = sub_1D698F848(0, *(v32 + 2) + 1, 1, v32);
          *(v31 + 2) = v32;
        }

        v35 = *(v32 + 2);
        v34 = *(v32 + 3);
        if (v35 >= v34 >> 1)
        {
          v32 = sub_1D698F848((v34 > 1), v35 + 1, 1, v32);
        }

        *(v32 + 2) = v35 + 1;
        *&v32[8 * v35 + 32] = v16 | 0x1000000000000000;
        *(v31 + 2) = v32;
        swift_endAccess();
      }

      v15 += v41;
      if (!--v14)
      {
        return;
      }
    }

    swift_deallocBox();
  }
}

void sub_1D6C4D7E4(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D5EB99F0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = v16;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 48) = 0;
  *(v15 + 76) = 0x2000;
  *(v15 + 72) = 0;
  v82 = v15;
  swift_beginAccess();

  sub_1D6C4D418(v17);
  v18 = v8;
  if (v8)
  {
  }

  else
  {
    v64 = a3;
    v63 = a1;

    sub_1D6295934(&v82);
    v19 = a6;
    if (a6 >> 62)
    {
LABEL_32:
      v20 = sub_1D7263BFC();
    }

    else
    {
      v20 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v63;
    v73 = v18;
    v22 = v64;
    v23 = a2;
    if (v20)
    {
      a2 = 0;
      v18 = 0xFFFFFFFFFFFFFF9;
      v59 = v19 & 0xFFFFFFFFFFFFFF8;
      v60 = v19 & 0xC000000000000001;
      v57 = v19 + 32;
      v58 = a8;
      v55 = v20;
      v56 = v23;
      while (1)
      {
        if (v60)
        {
          v27 = MEMORY[0x1DA6FB460](a2, v19);
        }

        else
        {
          if (a2 >= *(v59 + 16))
          {
            goto LABEL_31;
          }

          v27 = *(v57 + 8 * a2);
        }

        v28 = __OFADD__(a2++, 1);
        v19 = MEMORY[0x1E69E7CC0];
        if (v28)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v61 = a2;
        v29 = swift_allocObject();
        *(v29 + 16) = v19;
        *(v29 + 24) = v19;
        *(v29 + 32) = 0u;
        *(v29 + 48) = 0u;
        *(v29 + 64) = 0;
        *(v29 + 76) = -512;
        *(v29 + 72) = 0;
        v81 = v29;
        swift_beginAccess();
        v62 = v27;
        v30 = *(*(v27 + 32) + 16);

        if (v30)
        {
          break;
        }

LABEL_7:

        v24 = swift_allocObject();
        v25 = *(v62 + 24);
        v26 = v81;
        *(v24 + 16) = *(v62 + 16);
        *(v24 + 24) = v25;
        *(v24 + 32) = v26;

        sub_1D6C4D24C(v24 | 0x2000000000000000);

        v23 = v56;
        a2 = v61;
        a8 = v58;
        v19 = a6;
        v22 = v64;
        v21 = v63;
        if (v61 == v55)
        {
          goto LABEL_28;
        }
      }

      v32 = (v31 + 72);
      while (1)
      {
        v71 = v30;
        v33 = *(v32 - 3);
        v34 = *v32;
        v36 = v32[2];
        v35 = v32[3];
        v38 = v32[4];
        v37 = v32[5];
        v39 = v32[6];
        v40 = v32[7];
        v72 = v40;
        v76 = v37;
        v77 = v32[1];
        v74 = v38;
        v75 = v39;
        if (v33)
        {
          v67 = *(v32 - 4);
          v68 = *(v32 - 1);
          v69 = *(v32 - 5);

          v66 = v35;
          sub_1D5CFDAE4(v34, v77, v36, v35, v38, v37, v39, v40);

          v41 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = swift_allocObject();
            swift_beginAccess();
            v52 = v41[2];
            v79[0] = v41[1];
            v79[1] = v52;
            v80[0] = v41[3];
            *(v80 + 14) = *(v41 + 62);
            memmove((v51 + 16), v41 + 1, 0x3EuLL);
            sub_1D5EB9AB0(v79, v78);

            v81 = v51;
            v41 = v51;
          }

          v42 = v33;
          v70 = v34;
          swift_beginAccess();
          v43 = *(v41 + 3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v41 + 3) = v43;
          v45 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = sub_1D698F85C(0, *(v43 + 2) + 1, 1, v43);
            *(v41 + 3) = v43;
          }

          v47 = *(v43 + 2);
          v46 = *(v43 + 3);
          if (v47 >= v46 >> 1)
          {
            v43 = sub_1D698F85C((v46 > 1), v47 + 1, 1, v43);
          }

          *(v43 + 2) = v47 + 1;
          v48 = &v43[32 * v47];
          *(v48 + 4) = v67;
          *(v48 + 5) = v42;
          *(v48 + 3) = v68;
          *(v41 + 3) = v43;
          swift_endAccess();
          v18 = 0xFFFFFFFFFFFFFF9;
          v49 = v69;
          v34 = v70;
          v50 = v66;
        }

        else
        {
          v45 = v73;
          v18 = 0xFFFFFFFFFFFFFF9;
          v49 = *(v32 - 5);

          sub_1D5CFDAE4(v34, v77, v36, v35, v74, v37, v39, v40);
          v50 = v35;
        }

        *&v79[0] = v49;

        sub_1D6299090(&v81);

        sub_1D5CFDD14(v34, v77, v36, v50, v74, v76, v75, v72);
        v73 = v45;
        if (v45)
        {
          break;
        }

        v32 += 13;
        v30 = v71 - 1;
        if (v71 == 1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_28:
      v53 = swift_allocObject();
      *(v53 + 16) = v21;
      *(v53 + 24) = v23;
      *(v53 + 32) = v22;
      sub_1D6007D98(v21, v23, v22);
      sub_1D6C4D24C(v53 | 0x5000000000000000);

      v54 = swift_allocObject();
      *(v54 + 16) = v82;

      sub_1D6C4D24C(v54);
    }
  }
}

void sub_1D6C4DDF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D5BE240C(a1, a2, *a3))
  {
    type metadata accessor for FormatDerivedDataError(0);
    sub_1D5E40444();
    swift_allocError();
    *v14 = a1;
    v14[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {

    sub_1D5B860D0(&v27, a1, a2);

    swift_beginAccess();
    v15 = *(a4 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {

      v17 = 0;
      while (v17 < *(v15 + 16))
      {
        if (*(v15 + 8 * v17 + 32) >> 60 == 1)
        {
          v18 = swift_projectBox();
          sub_1D69AB4C0(v18, v13, type metadata accessor for FormatDerivedDataOption);
          v19 = *v13 == a1 && *(v13 + 1) == a2;
          if (v19 || (sub_1D72646CC() & 1) != 0)
          {

            v21 = *(v13 + 2);
            v22 = *(v13 + 3);
            v23 = *(v13 + 4);
            v24 = v13[40];
            sub_1D69E1C8C(v21, v22, v23, v24);
            sub_1D60E13EC(v13, v25);

            *a5 = v21;
            *(a5 + 8) = v22;
            *(a5 + 16) = v23;
            *(a5 + 24) = v24;
            return;
          }

          sub_1D60E13EC(v13, v20);
        }

        if (v16 == ++v17)
        {

          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = -1;
    }
  }
}

uint64_t sub_1D6C4E03C(void *a1)
{
  v3 = v1;
  sub_1D6C4F66C(0, &qword_1EC893F08, sub_1D6C4F004, &type metadata for FormatDerivedData._$CopyOnWriteStorage.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C4F004();
  sub_1D7264B5C();
  *&v13 = *v3;
  v15 = 0;
  sub_1D6C4F574(0, &qword_1EC893EE0, &type metadata for FormatDerivedDataInstruction, MEMORY[0x1E69E62F8]);
  sub_1D6C4F100(&qword_1EC893F10, sub_1D6C4F190, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13 = *(v3 + 8);
    v15 = 1;
    sub_1D6C4F574(0, &qword_1EDF1B2E0, &type metadata for FormatSourceMap, MEMORY[0x1E69E62F8]);
    sub_1D6C4F1E4(&qword_1EC893F20, sub_1D6C4F274, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    v11 = *(v3 + 32);
    v13 = *(v3 + 16);
    v14[0] = v11;
    *(v14 + 14) = *(v3 + 46);
    v15 = 2;
    sub_1D6C4F2C8();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C4E304()
{
  v1 = 0x4D656372756F735FLL;
  if (*v0 != 1)
  {
    v1 = 0x65706F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463757274736E69;
  }
}

uint64_t sub_1D6C4E36C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6C4F994(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6C4E394(uint64_t a1)
{
  v2 = sub_1D6C4F004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C4E3D0(uint64_t a1)
{
  v2 = sub_1D6C4F004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6C4E40C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6C4EBE4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 14);
    *(a1 + 46) = *(v7 + 14);
  }

  return result;
}

uint64_t sub_1D6C4E470(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 14) = *(a1 + 46);
  v3 = a2[1];
  v8[0] = *a2;
  v8[1] = v3;
  v9[0] = a2[2];
  *(v9 + 14) = *(a2 + 46);
  sub_1D6C4E8C4(v6, v8);
  return v4 & 1;
}

uint64_t sub_1D6C4E4CC(void *a1, uint64_t a2)
{
  sub_1D6C4F66C(0, &qword_1EC893F68, sub_1D6C4F520, &type metadata for FormatDerivedData.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C4F520();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D6C4F574(0, &qword_1EC893F48, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69D6B68]);
  sub_1D6C4F6D4(&qword_1EC893F70, MEMORY[0x1E69D6B70]);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6C4E6A8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6761726F7473245FLL && a2 == 0xE900000000000065)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6C4E738(uint64_t a1)
{
  v2 = sub_1D6C4F520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C4E774(uint64_t a1)
{
  v2 = sub_1D6C4F520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D6C4E7B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6C4F31C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D6C4E7F8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[2];
  v10[0] = v2[1];
  v10[1] = v4;
  v11[0] = v2[3];
  *(v11 + 14) = *(v2 + 62);
  swift_beginAccess();
  v5 = v3[2];
  v12[0] = v3[1];
  v12[1] = v5;
  v13[0] = v3[3];
  *(v13 + 14) = *(v3 + 62);
  sub_1D5EB9AB0(v10, v9);
  sub_1D5EB9AB0(v12, v9);
  sub_1D6C4E8C4(v10, v12);
  v7 = v6;
  sub_1D60E1A40(v12);
  sub_1D60E1A40(v10);
  return v7 & 1;
}

void sub_1D6C4E8C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 == *(*a2 + 16))
  {
    if (v4)
    {
      v7 = v2 == v3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
LABEL_10:
      if (sub_1D633BBFC(a1[1], a2[1]))
      {
        v14 = a1[2];
        v15 = a1[3];
        v17 = a1[4];
        v16 = a1[5];
        v18 = a1[6];
        v19 = *(a1 + 30);
        v20 = *(a1 + 14) | (*(a1 + 30) << 32);
        v22 = a2[2];
        v21 = a2[3];
        v24 = a2[4];
        v23 = a2[5];
        v25 = *(a2 + 14) | (*(a2 + 30) << 32);
        v26 = a2[6];
        if (v19 >> 9 <= 0x7EuLL)
        {
          if (((v25 >> 41) & 0x7F) != 0x7F)
          {
            v36[0] = a2[2];
            v36[1] = v21;
            v36[2] = v24;
            v36[3] = v23;
            v36[4] = v26;
            v37 = v25;
            v38 = WORD2(v25);
            v33[0] = v14;
            v33[1] = v15;
            v33[2] = v17;
            v33[3] = v16;
            v33[4] = v18;
            v34 = v20;
            v35 = WORD2(v20);
            sub_1D71F2BCC(v33, v36);
            return;
          }
        }

        else if (((v25 >> 41) & 0x7F) == 0x7F)
        {
          return;
        }

        v27 = a2[3];
        v31 = v23;
        v32 = v21;
        v29 = v26;
        v30 = v24;
        v28 = v23;
        sub_1D60E1448(v14, v15, v17, v16, v18, v20);
        sub_1D60E1448(v22, v27, v30, v28, v29, v25);
        sub_1D60E1478(v14, v15, v17, v16, v18, v20);
        sub_1D60E1478(v22, v32, v30, v31, v29, v25);
      }
    }

    else
    {
      v8 = (v2 + 32);
      v9 = (v3 + 32);
      while (v4)
      {
        v10 = *v8;
        v11 = *v9;

        v13 = sub_1D60E14A8(v10, v11, v12);

        if ((v13 & 1) == 0)
        {
          return;
        }

        ++v8;
        ++v9;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatDerivedDataScopeO(uint64_t a1)
{
  v1 = *(a1 + 44) >> 13;
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatDerivedDataScopeOSg(uint64_t a1)
{
  v1 = (*(a1 + 44) >> 13) & 0xFFFFFF87 | (8 * ((*(a1 + 44) >> 9) & 0xF));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x79)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D6C4EB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
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

uint64_t sub_1D6C4EB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6C4EBE4(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6C4F66C(0, &qword_1EC893ED0, sub_1D6C4F004, &type metadata for FormatDerivedData._$CopyOnWriteStorage.CodingKeys, MEMORY[0x1E69E6F48]);
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C4F004();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v6;
    sub_1D6C4F574(0, &qword_1EC893EE0, &type metadata for FormatDerivedDataInstruction, MEMORY[0x1E69E62F8]);
    LOBYTE(v22) = 0;
    sub_1D6C4F100(&qword_1EC893EE8, sub_1D6C4F058, MEMORY[0x1E69E6330]);
    v11 = v21;
    sub_1D726431C();
    v12 = v25[0];
    sub_1D6C4F574(0, &qword_1EDF1B2E0, &type metadata for FormatSourceMap, MEMORY[0x1E69E62F8]);
    LOBYTE(v22) = 1;
    sub_1D6C4F1E4(&qword_1EC893EF8, sub_1D61E52C4, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v13 = v10;
    v14 = v25[0];
    v35 = 2;
    sub_1D6C4F0AC();
    sub_1D726427C();
    (*(v13 + 8))(v9, v11);
    v20 = *(&v30 + 1);
    v21 = v30;
    v15 = v31;
    v16 = v32;
    v19 = v33;
    v17 = v34;
    *&v22 = v12;
    *(&v22 + 1) = v14;
    v23 = v30;
    *v24 = v31;
    *&v24[16] = v32;
    *&v24[28] = v34;
    *&v24[24] = v33;
    sub_1D5EB9AB0(&v22, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v25[0] = v12;
    v25[1] = v14;
    v25[2] = v21;
    v25[3] = v20;
    v26 = v15;
    v27 = v16;
    v29 = v17;
    v28 = v19;
    sub_1D60E1A40(v25);
    v18 = v23;
    *a2 = v22;
    a2[1] = v18;
    a2[2] = *v24;
    *(a2 + 46) = *&v24[14];
  }
}

unint64_t sub_1D6C4F004()
{
  result = qword_1EC893ED8;
  if (!qword_1EC893ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893ED8);
  }

  return result;
}

unint64_t sub_1D6C4F058()
{
  result = qword_1EC893EF0;
  if (!qword_1EC893EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893EF0);
  }

  return result;
}

unint64_t sub_1D6C4F0AC()
{
  result = qword_1EC893F00;
  if (!qword_1EC893F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F00);
  }

  return result;
}

uint64_t sub_1D6C4F100(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C4F574(255, &qword_1EC893EE0, &type metadata for FormatDerivedDataInstruction, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C4F190()
{
  result = qword_1EC893F18;
  if (!qword_1EC893F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F18);
  }

  return result;
}

uint64_t sub_1D6C4F1E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C4F574(255, &qword_1EDF1B2E0, &type metadata for FormatSourceMap, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C4F274()
{
  result = qword_1EC893F28;
  if (!qword_1EC893F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F28);
  }

  return result;
}

unint64_t sub_1D6C4F2C8()
{
  result = qword_1EC893F30;
  if (!qword_1EC893F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F30);
  }

  return result;
}

void *sub_1D6C4F31C(void *a1)
{
  sub_1D6C4F66C(0, &qword_1EC893F38, sub_1D6C4F520, &type metadata for FormatDerivedData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C4F520();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D6C4F574(0, &qword_1EC893F48, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69D6B68]);
    sub_1D6C4F6D4(&qword_1EC893F50, MEMORY[0x1E69D6B78]);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D6C4F520()
{
  result = qword_1EC893F40;
  if (!qword_1EC893F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F40);
  }

  return result;
}

void sub_1D6C4F574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6C4F5C4()
{
  result = qword_1EC893F58;
  if (!qword_1EC893F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F58);
  }

  return result;
}

unint64_t sub_1D6C4F618()
{
  result = qword_1EC893F60;
  if (!qword_1EC893F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F60);
  }

  return result;
}

void sub_1D6C4F66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6C4F6D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D6C4F574(255, &qword_1EC893F48, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69D6B68]);
    sub_1D6C4F5C4();
    sub_1D6C4F618();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C4F788()
{
  result = qword_1EC893F78;
  if (!qword_1EC893F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F78);
  }

  return result;
}

unint64_t sub_1D6C4F7E0()
{
  result = qword_1EC893F80;
  if (!qword_1EC893F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F80);
  }

  return result;
}

unint64_t sub_1D6C4F838()
{
  result = qword_1EC893F88;
  if (!qword_1EC893F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F88);
  }

  return result;
}

unint64_t sub_1D6C4F890()
{
  result = qword_1EC893F90;
  if (!qword_1EC893F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F90);
  }

  return result;
}

unint64_t sub_1D6C4F8E8()
{
  result = qword_1EC893F98;
  if (!qword_1EC893F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893F98);
  }

  return result;
}

unint64_t sub_1D6C4F940()
{
  result = qword_1EC893FA0;
  if (!qword_1EC893FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893FA0);
  }

  return result;
}

uint64_t sub_1D6C4F994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463757274736E69 && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D656372756F735FLL && a2 == 0xEB00000000737061 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6C4FAC0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) || !*(a2 + 16))
  {
  }

  sub_1D6985BF4(v2);
  return a1;
}

uint64_t sub_1D6C4FB24@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_25:
    v28 = v2[1];
    v64 = *v2;
    v29 = v2[3];
    v62 = v2[2];
    v63 = v28;
    v30 = v2[5];
    v60 = v2[4];
    v61 = v29;
    v59 = v30;
    sub_1D6C50AD8(&v64, &v57, sub_1D5B81B04);
    sub_1D6C50AD8(&v63, &v57, sub_1D5B81B04);
    sub_1D6C50AD8(&v62, &v57, sub_1D6C50B40);
    sub_1D6C50B9C(&v61, &v57, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
    sub_1D6C50AD8(&v60, &v57, sub_1D6107594);
    result = sub_1D6C50B9C(&v59, &v57, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
    v32 = *(v2 + 1);
    *a2 = *v2;
    a2[1] = v32;
    a2[2] = *(v2 + 2);
    return result;
  }

  v4 = 0;
  v5 = a1 + 32;
  v52 = a1 + 32;
  while (1)
  {
    v6 = *(v5 + v4);
    if (v6 != 10)
    {
      if (*(v2[5] + 16))
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v34 = v33;
        sub_1D7263D4C();

        v57 = 0xD00000000000001BLL;
        v58 = 0x80000001D73EE790;
        if (v6 > 4)
        {
          v43 = 0xE600000000000000;
          v44 = 0x6E6F6974706FLL;
          v45 = 0xE600000000000000;
          v46 = 0x746165706572;
          if (v6 != 8)
          {
            v46 = 0x7261696C69787561;
            v45 = 0xE900000000000079;
          }

          if (v6 != 7)
          {
            v44 = v46;
            v43 = v45;
          }

          v47 = 0x6143686374697773;
          v48 = 0xE400000000000000;
          if (v6 == 5)
          {
            v48 = 0xEA00000000006573;
          }

          else
          {
            v47 = 1835365481;
          }

          if (v6 <= 6)
          {
            v41 = v47;
          }

          else
          {
            v41 = v44;
          }

          if (v6 <= 6)
          {
            v42 = v48;
          }

          else
          {
            v42 = v43;
          }
        }

        else
        {
          v35 = 0xEA00000000006E6FLL;
          v36 = 0x697461726F636564;
          v37 = 0xE400000000000000;
          v38 = 1953459315;
          v39 = 0xE500000000000000;
          v40 = 0x656C797473;
          if (v6 != 3)
          {
            v40 = 0x686374697773;
            v39 = 0xE600000000000000;
          }

          if (v6 != 2)
          {
            v38 = v40;
            v37 = v39;
          }

          if (v6)
          {
            v36 = 0x70756F7267;
            v35 = 0xE500000000000000;
          }

          if (v6 <= 1)
          {
            v41 = v36;
          }

          else
          {
            v41 = v38;
          }

          if (v6 <= 1)
          {
            v42 = v35;
          }

          else
          {
            v42 = v37;
          }
        }

        MEMORY[0x1DA6F9910](v41, v42);

        v49 = v57;
        v50 = v58;
        *v34 = v6;
        *(v34 + 8) = v49;
        *(v34 + 16) = v50;
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    v7 = v2[3];
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

LABEL_7:
    if (++v4 == v3)
    {
      goto LABEL_25;
    }
  }

  v9 = 0;
  v10 = v7 + 32;
  v55 = v7 + 32;
  v56 = *(v7 + 16);
  while (1)
  {
    v11 = (v10 + 88 * v9);
    if ((v11[2] & 1) == 0)
    {
      goto LABEL_10;
    }

    v13 = *v11;
    v12 = v11[1];
    v14 = v11[8];
    v15 = v11[10];
    if (!*(v15 + 16))
    {
      break;
    }

    sub_1D7264A0C();
    swift_bridgeObjectRetain_n();
    v16 = v14;

    sub_1D72621EC();
    v17 = sub_1D7264A5C();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_21:

      v14 = v16;
      goto LABEL_22;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(v15 + 48) + 16 * v19);
      v22 = *v21 == v13 && v21[1] == v12;
      if (v22 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    swift_bridgeObjectRelease_n();
    v3 = v53;
    v2 = v54;
    v5 = v52;
    v10 = v55;
    v8 = v56;
LABEL_10:
    if (++v9 == v8)
    {
      goto LABEL_7;
    }
  }

LABEL_22:
  v2 = type metadata accessor for FormatDerivedDataError(0);
  sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
  swift_allocError();
  v24 = v23;
  v25 = *(v14 + 16);
  if (v25)
  {
    v26 = sub_1D5B9A6D8(*(v14 + 16), 0);
    v27 = sub_1D5E2A8BC();
    sub_1D5B87E38(v57);
    if (v27 != v25)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  *v24 = v13;
  v24[1] = v12;
  v24[2] = v26;
LABEL_28:
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D6C5009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v44 = a4;
  v45 = a6;
  v9 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  MEMORY[0x1EEE9AC00](v38, v13);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v40 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37 - v20;
  v22 = *a5;
  v23 = *(a5 + 8);
  v24 = *(a5 + 16);
  *v49 = *(a5 + 17);
  *&v49[3] = *(a5 + 20);
  v25 = *(a5 + 24);
  v26 = *(a5 + 48);
  v51 = *(a5 + 32);
  v52 = v26;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v50 = v25;

  sub_1D5DEA210(v22, v23, v24);
  v39 = v12;
  v27 = v12;
  v42 = a1;
  v28 = a1;
  v29 = a2;
  v30 = a2;
  v31 = v43;
  v32 = v44;
  v33 = v53;
  sub_1D6AEC490(v28, v30, v43, v45, v27);
  if (v33)
  {
    sub_1D5DEA520(v22, v23, v24);
  }

  else
  {
    v34 = v42;
    *v21 = v25;
    *(v21 + 1) = v34;
    *(v21 + 2) = v29;
    *(v21 + 3) = v31;
    v53 = 0;
    *(v21 + 4) = v32;
    *(v21 + 5) = v22;
    *(v21 + 6) = v23;
    v21[56] = v24;
    sub_1D670E70C(v39, &v21[*(v38 + 28)]);
    v35 = v41;
    sub_1D6C50AD8(v21, v41, type metadata accessor for FormatDerivedDataResultOptionReference);

    v36 = v40;
    sub_1D5FEBE30(v40, v35);
    sub_1D6C50A7C(v36);
    sub_1D6C50A7C(v21);
  }
}

void sub_1D6C50304(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v77 = a3;
  v76 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v79 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v8);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *a2;
  v10 = *(a2 + 24);
  v96 = *(a2 + 16);
  v11 = *(a2 + 32);
  v93 = *(a2 + 40);
  v94 = *(a2 + 56);
  if (*(*a1 + 16))
  {

    sub_1D5B886D0(v12);
  }

  if (*(a1[1] + 16))
  {

    sub_1D5B886D0(v13);
  }

  if (*(a1[2] + 16))
  {

    sub_1D6E463A0(v14);
  }

  v15 = a1[5];
  v16 = *(v15 + 16);
  v80 = v10;
  v83 = v11;
  v75 = v3;
  if (v16)
  {
    v73 = a1;
    v74 = v4;
    *&v87 = MEMORY[0x1E69E7CC0];
    sub_1D6998C38(0, v16, 0);
    v17 = v87;
    v18 = *(v10 + 16);
    v81 = *(v11 + 2);
    v82 = v18;
    v19 = (v15 + 56);
    while (1)
    {
      v85 = v16;
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v23 = *(v19 - 1);
      v22 = *v19;
      v24 = *(v20 + 16);
      v97 = v17;
      v86 = v23;
      if (!v82)
      {
        break;
      }

      if (!v24)
      {

        sub_1D5CBA110(v23, v22);
        sub_1D5CBA110(v23, v22);
LABEL_25:

        v28 = v10;
        goto LABEL_26;
      }

      v25 = *(v10 + 16);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_77;
      }

      sub_1D5CBA110(v23, v22);
      sub_1D5CBA110(v23, v22);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v28 = v10, v26 > *(v10 + 24) >> 1))
      {
        if (v25 <= v26)
        {
          v29 = v25 + v24;
        }

        else
        {
          v29 = v25;
        }

        v28 = sub_1D698CCB0(isUniquelyReferenced_nonNull_native, v29, 1, v10);
      }

      if (!*(v20 + 16))
      {
        goto LABEL_87;
      }

      v11 = v83;
      if ((*(v28 + 3) >> 1) - *(v28 + 2) < v24)
      {
        goto LABEL_78;
      }

      swift_arrayInitWithCopy();

      v30 = *(v28 + 2);
      v31 = __OFADD__(v30, v24);
      v32 = v30 + v24;
      if (v31)
      {
        goto LABEL_80;
      }

      *(v28 + 2) = v32;
LABEL_26:
      v33 = *(v21 + 2);
      v84 = v28;
      if (v81)
      {
        if (v33)
        {
          v34 = *(v11 + 2);
          v35 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_79;
          }

          v36 = swift_isUniquelyReferenced_nonNull_native();
          if (!v36 || (v37 = *(v11 + 3) >> 1, v37 < v35))
          {
            if (v34 <= v35)
            {
              v38 = v34 + v33;
            }

            else
            {
              v38 = v34;
            }

            v11 = sub_1D6992318(v36, v38, 1, v11);
            v37 = *(v11 + 3) >> 1;
          }

          if (!*(v21 + 2))
          {
            goto LABEL_88;
          }

          v10 = v80;
          if (v37 - *(v11 + 2) < v33)
          {
            goto LABEL_81;
          }

          swift_arrayInitWithCopy();

          v39 = *(v11 + 2);
          v31 = __OFADD__(v39, v33);
          v40 = v39 + v33;
          if (v31)
          {
            goto LABEL_82;
          }

          v41 = v22;
          *(v11 + 2) = v40;
        }

        else
        {
LABEL_41:
          v41 = v22;
        }

        v43 = v10;

        v21 = v11;
        v42 = v83;
        goto LABEL_43;
      }

      if (!v33)
      {
        goto LABEL_41;
      }

      v42 = v11;
      v41 = v22;
      v43 = v10;
LABEL_43:

      v44 = v86;
      sub_1D5CBA0FC(v86, v41);
      v17 = v97;
      *&v87 = v97;
      v46 = v97[2];
      v45 = v97[3];
      if (v46 >= v45 >> 1)
      {
        sub_1D6998C38((v45 > 1), v46 + 1, 1);
        v17 = v87;
      }

      v19 += 4;
      *(v17 + 16) = v46 + 1;
      v47 = (v17 + 32 * v46);
      v47[4] = v84;
      v47[5] = v21;
      v47[6] = v44;
      v47[7] = v41;
      v16 = v85 - 1;
      v10 = v43;
      v11 = v42;
      if (v85 == 1)
      {
        sub_1D6986F94(v17);
        v5 = v74;
        a1 = v73;
        goto LABEL_47;
      }
    }

    sub_1D5CBA110(v23, v22);
    sub_1D5CBA110(v23, v22);
    if (v24)
    {

      v28 = v20;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_47:
  v48 = a1[4];
  if (*(v48 + 16))
  {
    v49 = (v48 + 56);
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v48 + 56);
    v53 = (v50 + 63) >> 6;

    v54 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    v84 = (v48 + 56);
    v85 = v53;
    while (v52)
    {
      v97 = v55;
      v57 = v78;
LABEL_59:
      v59 = *(v79 + 72);
      sub_1D6C50AD8(*(v48 + 48) + v59 * (__clz(__rbit64(v52)) | (v54 << 6)), v57, type metadata accessor for FormatDerivedDataResultOptionReference);
      v87 = v95;
      v88 = v96;
      v89 = v80;
      v90 = v83;
      v91 = v93;
      v92 = v94;
      v60 = sub_1D5EA25E8(&v87, v77);
      if (v5)
      {

        sub_1D6C50A7C(v57);
LABEL_73:

        return;
      }

      v61 = v60;
      v86 = v59;
      sub_1D6C50A7C(v57);
      v62 = *(v61 + 16);
      v63 = v97[2];
      v64 = v63 + v62;
      if (__OFADD__(v63, v62))
      {
        goto LABEL_83;
      }

      v65 = v97;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v65;
      if (!v66 || v64 > v65[3] >> 1)
      {
        if (v63 <= v64)
        {
          v68 = v63 + v62;
        }

        else
        {
          v68 = v63;
        }

        v67 = sub_1D69926D0(v66, v68, 1, v65);
      }

      v5 = 0;
      v53 = v85;
      v52 &= v52 - 1;
      if (*(v61 + 16))
      {
        v49 = v84;
        if ((v67[3] >> 1) - v67[2] < v62)
        {
          goto LABEL_85;
        }

        v69 = v67;
        swift_arrayInitWithCopy();

        v55 = v69;
        if (v62)
        {
          v70 = v69[2];
          v31 = __OFADD__(v70, v62);
          v71 = v70 + v62;
          if (v31)
          {
            goto LABEL_86;
          }

          v69[2] = v71;
        }
      }

      else
      {
        v56 = v67;

        v55 = v56;
        v49 = v84;
        if (v62)
        {
          goto LABEL_84;
        }
      }
    }

    v57 = v78;
    while (1)
    {
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v72 = v55;

        sub_1D6E47B3C(v72);
        goto LABEL_73;
      }

      v52 = *&v49[8 * v58];
      ++v54;
      if (v52)
      {
        v97 = v55;
        v54 = v58;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:

    __break(1u);
LABEL_88:

    __break(1u);
  }
}

uint64_t sub_1D6C50A7C(uint64_t a1)
{
  v2 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6C50AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6C50B40(uint64_t a1)
{
  if (!qword_1EC883D60)
  {
    sub_1D6007784();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883D60);
    }
  }
}

uint64_t sub_1D6C50B9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B49714(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C50C08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6C50C60(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  sub_1D6C56248(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v90 = &v85 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v87 = a1;
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = &off_1E84D3000;
  v89 = v6;
  v85 = a1 + 32;
  while (2)
  {
    v88 = v7;
    v11 = (v9 + 144 * v8);
    v12 = v8;
    while (1)
    {
      if (v12 >= v6)
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v13 = v11[7];
      v100 = v11[6];
      v101[0] = v13;
      *(v101 + 9) = *(v11 + 121);
      v14 = v11[3];
      v96 = v11[2];
      v97 = v14;
      v15 = v11[5];
      v98 = v11[4];
      v99 = v15;
      v16 = v11[1];
      v94 = *v11;
      v95 = v16;
      v8 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_61;
      }

      v17 = v94;
      if (v98 != 1)
      {
        break;
      }

      sub_1D5ECF2C4(&v94, v93);
      v18 = [v17 v10[454]];
      if (v18)
      {
        v19 = v18;
        [v17 coverImageAspectRatio];
        v20 = v17;
        v21 = v19;
        v22 = [v20 layeredCoverJSON];
        if (v22)
        {
          v23 = v22;
          sub_1D726207C();

          v24 = v90;
          sub_1D72579DC();
          v25 = sub_1D7257A4C();
          (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
          LOBYTE(v23) = sub_1D725AB8C();

          sub_1D60D0CFC(v24);
          if ((v23 & 1) == 0)
          {
            [v20 layeredCoverAspectRatio];
          }

          v6 = v89;
          v10 = &off_1E84D3000;
        }
      }

      sub_1D5ECF320(&v94);
      ++v12;
      v11 += 9;
      if (v8 == v6)
      {
        v7 = v88;
        goto LABEL_28;
      }
    }

    sub_1D5ECF2C4(&v94, v93);
    v26 = [v17 v10[454]];
    v7 = v88;
    if (v26)
    {
      v27 = v26;
      [v17 coverImageAspectRatio];
      v28 = v17;
      v29 = v27;
      v30 = [v28 layeredCoverJSON];
      if (v30)
      {
        v31 = v6;
        v32 = v30;
        sub_1D726207C();

        v33 = v90;
        sub_1D72579DC();
        v34 = sub_1D7257A4C();
        (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
        LOBYTE(v32) = sub_1D725AB8C();

        sub_1D60D0CFC(v33);
        if ((v32 & 1) == 0)
        {
          [v28 layeredCoverAspectRatio];
        }

        v6 = v31;
        v10 = &off_1E84D3000;
      }

      else
      {
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D6997F04(0, v7[2] + 1, 1);
      v7 = v91;
    }

    v37 = v7[2];
    v36 = v7[3];
    if (v37 >= v36 >> 1)
    {
      sub_1D6997F04((v36 > 1), v37 + 1, 1);
      v7 = v91;
    }

    v7[2] = v37 + 1;
    v38 = &v7[18 * v37];
    v38[2] = v94;
    v39 = v95;
    v40 = v96;
    v41 = v98;
    v38[5] = v97;
    v38[6] = v41;
    v38[3] = v39;
    v38[4] = v40;
    v42 = v99;
    v43 = v100;
    v44 = v101[0];
    *(v38 + 153) = *(v101 + 9);
    v38[8] = v43;
    v38[9] = v44;
    v38[7] = v42;
    v9 = v85;
    if (v8 != v6)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v45 = v7[2];
  if (v45)
  {
    *&v94 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v45, 0);
    v46 = v94;
    v88 = v7;
    v47 = v7 + 6;
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      *&v94 = v46;
      v50 = *(v46 + 16);
      v51 = *(v46 + 24);

      if (v50 >= v51 >> 1)
      {
        sub_1D5BFC364((v51 > 1), v50 + 1, 1);
        v46 = v94;
      }

      *(v46 + 16) = v50 + 1;
      v52 = v46 + 16 * v50;
      *(v52 + 32) = v48;
      *(v52 + 40) = v49;
      v47 += 18;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v53 = v87;
  v54 = *(v46 + 16);
  if (v54 <= v86)
  {

LABEL_59:

    return;
  }

  if ((v86 & 0x8000000000000000) == 0)
  {
    sub_1D62DCAC8(v46 + 32, v86, (2 * v54) | 1);
    v56 = v55;

    if (v6)
    {
      v57 = 0;
      v90 = (v53 + 32);
      v58 = v56 + 56;
      v59 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v57 >= v6)
        {
          goto LABEL_62;
        }

        v60 = &v90[144 * v57];
        v61 = *(v60 + 7);
        v100 = *(v60 + 6);
        v101[0] = v61;
        *(v101 + 9) = *(v60 + 121);
        v62 = *(v60 + 3);
        v96 = *(v60 + 2);
        v97 = v62;
        v63 = *(v60 + 5);
        v98 = *(v60 + 4);
        v99 = v63;
        v64 = *(v60 + 1);
        v94 = *v60;
        v95 = v64;
        if (__OFADD__(v57++, 1))
        {
          goto LABEL_63;
        }

        if (*(v56 + 16))
        {
          v66 = *(&v94 + 1);
          v67 = v95;
          sub_1D7264A0C();
          sub_1D5ECF2C4(&v94, v93);
          sub_1D72621EC();
          v68 = sub_1D7264A5C();
          v69 = -1 << *(v56 + 32);
          v70 = v68 & ~v69;
          if ((*(v58 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
          {
            v71 = ~v69;
            while (1)
            {
              v72 = (*(v56 + 48) + 16 * v70);
              v73 = *v72 == v66 && v72[1] == v67;
              if (v73 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v70 = (v70 + 1) & v71;
              if (((*(v58 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            sub_1D5ECF320(&v94);
            goto LABEL_40;
          }
        }

        else
        {
          sub_1D5ECF2C4(&v94, v93);
        }

LABEL_52:
        v74 = v59;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v92 = v59;
        if ((v75 & 1) == 0)
        {
          sub_1D6997F04(0, *(v59 + 16) + 1, 1);
          v74 = v92;
        }

        v77 = *(v74 + 16);
        v76 = *(v74 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1D6997F04((v76 > 1), v77 + 1, 1);
          v74 = v92;
        }

        *(v74 + 16) = v77 + 1;
        v59 = v74;
        v78 = (v74 + 144 * v77);
        v78[2] = v94;
        v79 = v95;
        v80 = v96;
        v81 = v98;
        v78[5] = v97;
        v78[6] = v81;
        v78[3] = v79;
        v78[4] = v80;
        v82 = v99;
        v83 = v100;
        v84 = v101[0];
        *(v78 + 153) = *(v101 + 9);
        v78[8] = v83;
        v78[9] = v84;
        v78[7] = v82;
LABEL_40:
        if (v57 == v6)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_64:
  __break(1u);
}

void sub_1D6C513B0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      ++v5;
LABEL_8:
      if (v5 == i)
      {
        goto LABEL_16;
      }
    }

    MEMORY[0x1DA6FB460](v5, v3);
    swift_unknownObjectRelease();
    v6 = __OFADD__(v5++, 1);
    if (!v6)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0] >> 62;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1D7263BFC();
    v7 = v21;
    v9 = v22;
    v39 = v3;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_28:
    v12 = MEMORY[0x1E69E7CC0];

    goto LABEL_29;
  }

  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  v39 = v3;
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_18:
  v10 = v7;
  v44 = v7;
  sub_1D5BFC364(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    goto LABEL_55;
  }

  v40 = a2;
  v42 = i;
  v11 = 0;
  v12 = v44;
  v13 = v10;
  v14 = v10;
  do
  {
    if (v8)
    {
      MEMORY[0x1DA6FB460](v11, v13);
    }

    else
    {
    }

    sub_1D725CC1C();
    sub_1D6C55F0C(&qword_1EDF17310, MEMORY[0x1E69D7608], MEMORY[0x1E69D7600]);
    v15 = sub_1D725AA4C();
    v17 = v16;

    v19 = *(v44 + 16);
    v18 = *(v44 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D5BFC364((v18 > 1), v19 + 1, 1);
    }

    ++v11;
    *(v44 + 16) = v19 + 1;
    v20 = v44 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v13 = v14;
  }

  while (v9 != v11);

  v3 = v39;
  a2 = v40;
  i = v42;
LABEL_29:
  v23 = *(v12 + 16);
  if (v23 <= a2)
  {
LABEL_52:

LABEL_53:

    return;
  }

  if (a2 < 0)
  {
    goto LABEL_56;
  }

  sub_1D62DCAC8(v12 + 32, a2, (2 * v23) | 1);
  v25 = v24;

  if (!i)
  {
    goto LABEL_53;
  }

  v26 = 0;
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
  v43 = v3 & 0xC000000000000001;
  v27 = v25 + 56;
  while (v43)
  {
    MEMORY[0x1DA6FB460](v26, v39);
    v6 = __OFADD__(v26++, 1);
    if (v6)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_38:
    v28 = i;
    sub_1D725CC1C();
    sub_1D6C55F0C(&qword_1EDF17310, MEMORY[0x1E69D7608], MEMORY[0x1E69D7600]);
    v29 = sub_1D725AA4C();
    v31 = v30;
    if (*(v25 + 16) && (v32 = v29, sub_1D7264A0C(), sub_1D72621EC(), v33 = sub_1D7264A5C(), v34 = -1 << *(v25 + 32), v35 = v33 & ~v34, ((*(v27 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      while (1)
      {
        v37 = (*(v25 + 48) + 16 * v35);
        v38 = *v37 == v32 && v37[1] == v31;
        if (v38 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v27 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    i = v28;
    if (v26 == v28)
    {
      goto LABEL_53;
    }
  }

  if (v26 < *(v41 + 16))
  {

    v6 = __OFADD__(v26++, 1);
    if (v6)
    {
      goto LABEL_51;
    }

    goto LABEL_38;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}