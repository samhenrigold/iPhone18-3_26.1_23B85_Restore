void sub_23862C404()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238757DF0();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11A40, &qword_27DF11A48, &qword_23877A090, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11A38, &unk_238779510);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11A38, &unk_238779510);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862C9F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11958, &qword_2387793D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = type metadata accessor for SavedOrderDetails.ContentItem(0);
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238757DF0();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11960, &qword_27DF118D8, &qword_238779258, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11958, &qword_2387793D0);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF11958, &qword_2387793D0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862CFD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = sub_238758BB0();
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_2387582B0();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11938, &qword_27DF11940, &qword_2387793C8, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF0D358, &unk_23876CF80);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF0D358, &unk_23876CF80);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862D5BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = sub_238757B60();
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238758CF0();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11948, &qword_27DF11950, &unk_238779D50, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF0A0C0, &qword_238771EF0);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862DBA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = *(*v0 + 15);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v37 = sub_23875EA80();
      v38 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v39);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v41);
          sub_23854CE50(v39);

          if (*(&v42 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v39[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v1 + v5);
                *(v1 + v5) = 0;

                v17 = v1 + *(*v1 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v39[0] = *v17;
                  v39[1] = v18;
                  v40 = *(v17 + 4);
                  v19 = *&v39[0];
                  __swift_project_boxed_opaque_existential_1(v39 + 1, v40);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v39 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v37 = sub_23875EA80();
                v38 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v39);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v41);
                    sub_23854CE50(v39);

                    if (*(&v42 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v39[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          (v1)[2](v7);
                          v29 = sub_238758680();
                          v30 = *(v29 - 8);
                          v35 = *(v30 + 56);
                          v36 = v30 + 56;
                          v31 = v35(v4, 0, 1, v29);
                          MEMORY[0x28223BE20](v31);
                          *(&v34 - 2) = sub_238759780();
                          *(&v34 - 1) = v29;
                          KeyPath = swift_getKeyPath(byte_238779380, &v34 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v34 - 2) = v1;
                          *(&v34 - 1) = v4;
                          *&v39[0] = v1;
                          sub_23843A3E8(&qword_27DF11918, &qword_27DF11920, &qword_2387793B8, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF09520, &unk_2387637E0);
                          v35(v4, 1, 1, v29);
                          v33 = *(*v1 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v4, v1 + v33, &qword_27DF09520, &unk_2387637E0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v39);
              }

              v41 = 0u;
              v42 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v41, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v39);
    }

    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }
}

void sub_23862E184()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A78, &qword_238779540);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - v2;
  v4 = *(*v0 + 15);
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = v0;
    v7 = v5;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v38 = sub_23875EA80();
      v39 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v40);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v42);
          sub_23854CE50(v40);

          if (*(&v43 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v40[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v6 + v4);
                *(v6 + v4) = 0;

                v17 = v6 + *(*v6 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v40[0] = *v17;
                  v40[1] = v18;
                  v41 = *(v17 + 4);
                  v19 = *&v40[0];
                  __swift_project_boxed_opaque_existential_1(v40 + 1, v41);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v40 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v38 = sub_23875EA80();
                v39 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v40);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v42);
                    sub_23854CE50(v40);

                    if (*(&v43 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v40[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          v29 = v6;
                          (v6)[2](v7);
                          active = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
                          v31 = *(active - 8);
                          v36 = *(v31 + 56);
                          v37 = v31 + 56;
                          v32 = v36(v3, 0, 1, active);
                          MEMORY[0x28223BE20](v32);
                          *(&v35 - 2) = sub_238759C20();
                          *(&v35 - 1) = active;
                          KeyPath = swift_getKeyPath(byte_238779380, &v35 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v35 - 2) = v29;
                          *(&v35 - 1) = v3;
                          *&v40[0] = v29;
                          sub_23843A3E8(&qword_27DF11A80, &qword_27DF11A88, &qword_238779548, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v3, &qword_27DF11A78, &qword_238779540);
                          v36(v3, 1, 1, active);
                          v34 = *(*v29 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v3, v29 + v34, &qword_27DF11A78, &qword_238779540);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v42, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v40);
              }

              v42 = 0u;
              v43 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v42, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v40);
    }

    v42 = 0u;
    v43 = 0u;
    goto LABEL_13;
  }
}

void sub_23862E76C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A60, &qword_238779530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - v2;
  v4 = *(*v0 + 15);
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = v0;
    v7 = v5;
    v8 = sub_23875B520();
    if (v8)
    {
      v9 = v8;
      v38 = sub_23875EA80();
      v39 = v10;
      sub_23875F410();
      if (*(v9 + 16))
      {
        v11 = sub_238547A14(v40);
        if (v12)
        {
          sub_238453DB4(*(v9 + 56) + 32 * v11, &v42);
          sub_23854CE50(v40);

          if (*(&v43 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v13 = *&v40[0];
              v14 = [v7 objectID];
              v15 = [v13 containsObject_];

              if (v15)
              {

                v16 = *(v6 + v4);
                *(v6 + v4) = 0;

                v17 = v6 + *(*v6 + 16);
                swift_beginAccess();
                if (*v17)
                {
                  v18 = *(v17 + 1);
                  v40[0] = *v17;
                  v40[1] = v18;
                  v41 = *(v17 + 4);
                  v19 = *&v40[0];
                  __swift_project_boxed_opaque_existential_1(v40 + 1, v41);
                  v20 = v19;
                  [v20 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v40 + 1);
                }

                *(v17 + 4) = 0;
                *v17 = 0u;
                *(v17 + 1) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v21 = sub_23875B520();
              if (v21)
              {
                v22 = v21;
                v38 = sub_23875EA80();
                v39 = v23;
                sub_23875F410();
                if (*(v22 + 16))
                {
                  v24 = sub_238547A14(v40);
                  if (v25)
                  {
                    sub_238453DB4(*(v22 + 56) + 32 * v24, &v42);
                    sub_23854CE50(v40);

                    if (*(&v43 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v26 = *&v40[0];
                        v27 = [v7 objectID];
                        v28 = [v26 containsObject_];

                        if (v28)
                        {
                          v29 = v6;
                          (v6)[2](v7);
                          v30 = type metadata accessor for OrderSearchResults.PastContentItem(0);
                          v31 = *(v30 - 8);
                          v36 = *(v31 + 56);
                          v37 = v31 + 56;
                          v32 = v36(v3, 0, 1, v30);
                          MEMORY[0x28223BE20](v32);
                          *(&v35 - 2) = sub_238759C20();
                          *(&v35 - 1) = v30;
                          KeyPath = swift_getKeyPath(byte_238779380, &v35 - 2);
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v35 - 2) = v29;
                          *(&v35 - 1) = v3;
                          *&v40[0] = v29;
                          sub_23843A3E8(&qword_27DF11A68, &qword_27DF11A70, &qword_238779538, &unk_23877C508);
                          sub_23875BE80();

                          sub_238439884(v3, &qword_27DF11A60, &qword_238779530);
                          v36(v3, 1, 1, v30);
                          v34 = *(*v29 + 14);
                          swift_beginAccess();
                          sub_2385309FC(v3, v29 + v34, &qword_27DF11A60, &qword_238779530);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v42, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v40);
              }

              v42 = 0u;
              v43 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v42, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v40);
    }

    v42 = 0u;
    v43 = 0u;
    goto LABEL_13;
  }
}

uint64_t sub_23862ED54(uint64_t a1, uint64_t a2)
{
  v3 = sub_23875B530();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23875B510();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_23()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_23862F054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23862F0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_23862F128()
{
  v1 = *(type metadata accessor for SavedOrderDetails.ViewModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_238622CA4(v2);
}

uint64_t sub_23862F188()
{
  v2 = *(type metadata accessor for SavedOrderDetails.ViewModel(0) - 8);
  v3 = (*(v2 + 80) + 81) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_238622F80(v4, v5, v0 + 32, v0 + v3);
}

uint64_t sub_23862F268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23862F2C8()
{
  result = qword_27DF119A0;
  if (!qword_27DF119A0)
  {
    sub_238449184(255, &qword_27DF11998, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119A0);
  }

  return result;
}

uint64_t sub_23862F330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23862F380()
{
  result = qword_27DF119E8;
  if (!qword_27DF119E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119C0, &qword_238779458);
    sub_23862F438();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119E8);
  }

  return result;
}

unint64_t sub_23862F438()
{
  result = qword_27DF119F0;
  if (!qword_27DF119F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119E0, &qword_2387794A0);
    sub_23862F4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119F0);
  }

  return result;
}

unint64_t sub_23862F4C4()
{
  result = qword_27DF119F8;
  if (!qword_27DF119F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119D8, &qword_238779498);
    sub_23862F550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119F8);
  }

  return result;
}

unint64_t sub_23862F550()
{
  result = qword_27DF11A00;
  if (!qword_27DF11A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11A08, &unk_2387794A8);
    sub_23862F330(&qword_27DF119D0, type metadata accessor for OrderShareLink, &unk_23876E024);
    sub_23862F330(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11A00);
  }

  return result;
}

double sub_23862F658(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_23862F8F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_23862FA04(uint64_t a1)
{
  result = type metadata accessor for MerchantImage.ViewModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_2387590B0();
    if (v3 <= 0x3F)
    {
      result = sub_23875B0A0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23862FAA4@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AE0, &qword_238779610);
  MEMORY[0x28223BE20](v23);
  v2 = &v23 - v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AE8, &qword_238779618);
  MEMORY[0x28223BE20](v27);
  v24 = &v23 - v3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AF0, &qword_238779620);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AF8, &qword_238779628);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B00, &qword_238779630);
  MEMORY[0x28223BE20](v25);
  v10 = &v23 - v9;
  v11 = sub_23875C880();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderListRow(0);
  sub_2384D5138(v14);
  v15 = sub_23875C860();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    *v8 = sub_23875D030();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B40, &qword_238779648);
    sub_23862FF54(&v8[*(v16 + 44)]);
    *&v8[*(v6 + 36)] = 256;
    sub_238631BB8();
    sub_23875DE00();
    sub_238439884(v8, &qword_27DF11AF8, &qword_238779628);
    sub_23843981C(v10, v5, &qword_27DF11B00, &qword_238779630);
    swift_storeEnumTagMultiPayload();
    sub_238631AFC();
    sub_238631C70();
    sub_23875D1B0();
    v17 = v10;
    v18 = &qword_27DF11B00;
    v19 = &qword_238779630;
  }

  else
  {
    *v2 = sub_23875CE60();
    *(v2 + 1) = 0x4028000000000000;
    v2[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B08, &qword_238779638);
    sub_238631360(&v2[*(v20 + 44)]);
    sub_23843A3E8(&qword_27DF11B10, &qword_27DF11AE0, &qword_238779610, MEMORY[0x277CE1138]);
    v21 = v24;
    sub_23875DE00();
    sub_238439884(v2, &qword_27DF11AE0, &qword_238779610);
    sub_23843981C(v21, v5, &qword_27DF11AE8, &qword_238779618);
    swift_storeEnumTagMultiPayload();
    sub_238631AFC();
    sub_238631C70();
    sub_23875D1B0();
    v17 = v21;
    v18 = &qword_27DF11AE8;
    v19 = &qword_238779618;
  }

  return sub_238439884(v17, v18, v19);
}

double sub_23862FF54@<D0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B48, &qword_238779650);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - v11;
  MEMORY[0x28223BE20](v12);
  v46 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B50, &qword_238779658);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B58, &qword_238779660);
  MEMORY[0x28223BE20](v20 - 8);
  v47 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v24 = sub_23875CE50();
  *(v24 + 1) = 0;
  v24[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B60, &qword_238779668) + 44)];
  sub_2386304F8(v19);
  v39 = v24;
  sub_23843981C(v19, v16, &qword_27DF11B50, &qword_238779658);
  sub_23843981C(v16, v25, &qword_27DF11B50, &qword_238779658);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B68, &qword_238779670) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_238439884(v19, &qword_27DF11B50, &qword_238779658);
  sub_238439884(v16, &qword_27DF11B50, &qword_238779658);

  v27 = v46;
  sub_2386307CC();
  v28 = v42;
  sub_238630950(v42);
  v29 = v41;
  sub_238630FB8();
  v30 = v47;
  sub_23843981C(v24, v47, &qword_27DF11B58, &qword_238779660);
  sub_23843981C(v27, v9, &qword_27DF0E838, &unk_23877A3B0);
  v31 = v44;
  sub_23843981C(v28, v44, &qword_27DF11B48, &qword_238779650);
  v32 = v43;
  sub_23843981C(v29, v43, &qword_27DF0E838, &unk_23877A3B0);
  v33 = v30;
  v34 = v9;
  v38 = v9;
  v35 = v45;
  sub_23843981C(v33, v45, &qword_27DF11B58, &qword_238779660);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B70, &qword_238779678);
  sub_23843981C(v34, v35 + v36[12], &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v31, v35 + v36[16], &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v32, v35 + v36[20], &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v29, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v28, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v46, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v39, &qword_27DF11B58, &qword_238779660);
  sub_238439884(v32, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v31, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v38, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v47, &qword_27DF11B58, &qword_238779660);

  return result;
}

uint64_t sub_2386304F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B78, &qword_2387796E0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  sub_2385418C8(v2, v19 - v8);
  v10 = type metadata accessor for MerchantImage(0);
  v9[*(v10 + 20)] = 1;
  v11 = *(v10 + 24);
  *&v9[v11] = swift_getKeyPath(byte_2387796E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v12 = sub_23875E090();
  KeyPath = swift_getKeyPath(byte_238779718);
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0) + 36)];
  v15 = type metadata accessor for OrderImageStyleModifier(0);
  *&v14[*(v15 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v15 + 40)] = swift_getKeyPath(byte_2387796E8);
  swift_storeEnumTagMultiPayload();
  *v14 = xmmword_23876D160;
  *(v14 + 2) = 0;
  v14[24] = 1;
  *(v14 + 4) = v12;
  v14[40] = 0;
  v16 = sub_23875D000();
  v17 = &v9[*(v7 + 36)];
  *v17 = v16;
  v17[1] = sub_23843480C;
  v17[2] = 0;
  sub_238631D58();
  sub_23875DE00();
  return sub_238439884(v9, &qword_27DF11B78, &qword_2387796E0);
}

double sub_2386307CC()
{
  v0 = type metadata accessor for MerchantImage.ViewModel(0);
  sub_2384397A8(v0, v1, v2);

  v3 = sub_23875DAA0();
  v5 = v4;
  v7 = v6;
  sub_23875D820();
  v8 = sub_23875DA60();
  v10 = v9;
  v12 = v11;

  sub_2384397FC(v3, v5, v7 & 1);

  sub_23875D890();
  v13 = sub_23875D9E0();
  v15 = v14;
  LOBYTE(v3) = v16;
  sub_2384397FC(v8, v10, v12 & 1);

  sub_23875DE00();
  sub_2384397FC(v13, v15, v3 & 1);

  return result;
}

uint64_t sub_238630950@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_23875DA00();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v42[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_23875C880();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23875BE40();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23875BE20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_23875BD20();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2387595E0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2387590C0();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2387590B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  MEMORY[0x28223BE20](v47);
  v15 = &v42[-v14];
  v46 = *(type metadata accessor for OrderListRow.ViewModel(0) + 20);
  (*(v11 + 16))(v13, v55 + v46, v10);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_238631DE4(&qword_27DF0A030, MEMORY[0x277CC7708], MEMORY[0x277CC76E8]);
  sub_238631DE4(&qword_27DF0A038, MEMORY[0x277CC76F0], MEMORY[0x277CC76F8]);
  v16 = sub_23875DA80();
  v18 = v17;
  v20 = v19;
  sub_23875D7F0();
  v21 = sub_23875DA60();
  v23 = v22;
  LOBYTE(v11) = v24;

  sub_2384397FC(v16, v18, v20 & 1);

  v56[0] = sub_23875D440();
  v44 = sub_23875DA20();
  v45 = v25;
  v27 = v26;
  v43 = v28;
  sub_2384397FC(v21, v23, v11 & 1);

  type metadata accessor for OrderListRow(0);
  v29 = v48;
  sub_2384D5138(v48);
  v30 = sub_23875C860();
  (*(v49 + 8))(v29, v50);
  KeyPath = swift_getKeyPath(asc_238779680);
  v32 = sub_238759070();
  v34 = v51;
  v33 = v52;
  v35 = MEMORY[0x277CE0B30];
  if (v32 <= 1)
  {
    v35 = MEMORY[0x277CE0B28];
  }

  v36 = v53;
  (*(v52 + 104))(v51, *v35, v53);
  if (v30)
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  v38 = swift_getKeyPath(byte_2387796B0);
  v39 = &v15[*(v47 + 36)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  (*(v33 + 32))(v39 + *(v40 + 28), v34, v36);
  *v39 = v38;
  *v15 = v44;
  *(v15 + 1) = v27;
  v15[16] = v43 & 1;
  *(v15 + 3) = v45;
  *(v15 + 4) = KeyPath;
  *(v15 + 5) = v37;
  v15[48] = 0;
  sub_2385EFE54();
  sub_23875DE00();
  return sub_238439884(v15, &qword_27DF0A028, &qword_238764FC0);
}

double sub_238630FB8()
{
  v0 = sub_23875BE40();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23875BE20();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23875BD20();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2387595E0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23875B1B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OrderListRow.ViewModel(0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_238631DE4(&qword_27DF0A050, MEMORY[0x277CC8560], MEMORY[0x277CC8558]);
  sub_23875B090();
  v8 = (*(v5 + 8))(v7, v4);
  v31 = v27;
  v32 = v28;
  sub_2384397A8(v8, v9, v10);
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D7F0();
  v16 = sub_23875DA60();
  v18 = v17;
  LOBYTE(v5) = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  LODWORD(v27) = sub_23875D440();
  v20 = sub_23875DA20();
  v22 = v21;
  LOBYTE(v11) = v23;
  v25 = v24;
  sub_2384397FC(v16, v18, v5 & 1);

  v27 = v20;
  v28 = v22;
  v29 = v11 & 1;
  v30 = v25;
  sub_23875DE00();
  sub_2384397FC(v20, v22, v11 & 1);

  return result;
}

double sub_238631360@<D0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B88, &qword_238779748);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B50, &qword_238779658);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386304F8(v14);
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B90, &qword_238779750);
  sub_2386315F4(&v8[*(v15 + 44)]);
  sub_23843981C(v14, v11, &qword_27DF11B50, &qword_238779658);
  sub_23843981C(v8, v5, &qword_27DF11B88, &qword_238779748);
  sub_23843981C(v11, a2, &qword_27DF11B50, &qword_238779658);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B98, &qword_238779758);
  sub_23843981C(v5, a2 + *(v16 + 48), &qword_27DF11B88, &qword_238779748);
  sub_238439884(v8, &qword_27DF11B88, &qword_238779748);
  sub_238439884(v14, &qword_27DF11B50, &qword_238779658);
  sub_238439884(v5, &qword_27DF11B88, &qword_238779748);
  sub_238439884(v11, &qword_27DF11B50, &qword_238779658);

  return result;
}

double sub_2386315F4@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B48, &qword_238779650);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v23 - v18;
  sub_23875ED50();
  v23[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386307CC();
  sub_238630950(v7);
  sub_238630FB8();
  sub_23843981C(v19, v13, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v7, v4, &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v16, v10, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v13, a1, &qword_27DF0E838, &unk_23877A3B0);
  v20 = v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BA0, &qword_238779760);
  sub_23843981C(v20, a1 + *(v21 + 48), &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v10, a1 + *(v21 + 64), &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v16, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v7, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v19, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v10, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v20, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v13, &qword_27DF0E838, &unk_23877A3B0);

  return result;
}

uint64_t sub_238631914(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = type metadata accessor for MerchantImage.ViewModel(0);
  if (MEMORY[0x23EE5FA60](a1 + *(v7 + 20), a2 + *(v7 + 20)))
  {
    v8 = *(v7 + 24);
    v9 = *(a1 + v8);
    v10 = *(a1 + v8 + 8);
    v11 = (a2 + v8);
    v12 = v9 == *v11 && v10 == v11[1];
    if (v12 || (sub_23875F630() & 1) != 0)
    {
      v13 = type metadata accessor for OrderListRow.ViewModel(0);
      if (MEMORY[0x23EE5DB60](a1 + *(v13 + 20), a2 + *(v13 + 20)))
      {

        JUMPOUT(0x23EE5FB50);
      }
    }
  }

  return 0;
}

void sub_238631A5C(uint64_t a1)
{
  type metadata accessor for OrderListRow.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384BEA74(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_238631AFC()
{
  result = qword_27DF11B18;
  if (!qword_27DF11B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11B00, &qword_238779630);
    sub_238631BB8();
    sub_238631DE4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B18);
  }

  return result;
}

unint64_t sub_238631BB8()
{
  result = qword_27DF11B20;
  if (!qword_27DF11B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11AF8, &qword_238779628);
    sub_23843A3E8(&qword_27DF11B28, &qword_27DF11B30, &qword_238779640, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B20);
  }

  return result;
}

unint64_t sub_238631C70()
{
  result = qword_27DF11B38;
  if (!qword_27DF11B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11AE8, &qword_238779618);
    sub_23843A3E8(&qword_27DF11B10, &qword_27DF11AE0, &qword_238779610, MEMORY[0x277CE1138]);
    sub_238631DE4(&qword_27DF09330, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B38);
  }

  return result;
}

unint64_t sub_238631D58()
{
  result = qword_27DF11B80;
  if (!qword_27DF11B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11B78, &qword_2387796E0);
    sub_23858A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B80);
  }

  return result;
}

uint64_t sub_238631DE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_238631E2C()
{
  result = qword_27DF11BA8;
  if (!qword_27DF11BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BB0, &qword_238779768);
    sub_238631AFC();
    sub_238631C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11BA8);
  }

  return result;
}

uint64_t sub_238631F00(uint64_t a1)
{
  result = sub_23875A710();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238631F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_238632030(uint64_t a1)
{
  type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2384B49C4();
    if (v2 <= 0x3F)
    {
      sub_23846CAFC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

double sub_2386320E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v3 = type metadata accessor for OrderListRowActionsModifier(0);
  v4 = v3 - 8;
  v37 = *(v3 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BD8, &qword_238779820);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v47 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE0, &qword_238779828);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE8, &qword_238779830);
  v11 = sub_23843A3E8(&qword_27DF11BF0, &qword_27DF11BE0, &qword_238779828, MEMORY[0x277CE04B0]);
  v12 = sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830, MEMORY[0x277CE14C0]);
  v42 = v9;
  v43 = v8;
  v40 = v10;
  sub_23875DBD0();
  v13 = v36;
  v14 = v36 + *(v4 + 28);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v52) = v15;
  v53 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v41 = v48;
  v39 = v49;
  v38 = v50;
  sub_238634B3C(v13, &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v17 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v18 = swift_allocObject();
  sub_238634A68(&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v19 = qword_2814F1B90;
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

  v24 = sub_23875EA80();
  v26 = v25;

  v52 = v24;
  v53 = v26;
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v48 = v42;
  v49 = v40;
  v50 = v11;
  v51 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2384397A8(OpaqueTypeConformance2, v30, v31);
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048, MEMORY[0x277CE14C0]);
  v32 = v45;
  v33 = v43;
  sub_23875DEC0();

  (*(v44 + 8))(v33, v32);

  return result;
}

double sub_238632640@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C00, &qword_238779848);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v36 - v8;
  v9 = type metadata accessor for OrderListRowActionsModifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  MEMORY[0x28223BE20](v38);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  sub_23875ED50();
  v39 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238634B3C(a1, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_238634A68(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30, MEMORY[0x277CDEFF0]);
  sub_23875E200();
  v18 = sub_23875DFF0();
  KeyPath = swift_getKeyPath(asc_238779860);
  v20 = &v15[*(v38 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = a1;
  v22 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  if (*(a1 + *(v22 + 20)) != 1)
  {
    v30 = 1;
    v24 = v43;
LABEL_8:
    v28 = v41;
    v29 = v42;
    goto LABEL_9;
  }

  v23 = *(a1 + *(v22 + 24));
  v24 = v43;
  if (v23 != 1)
  {
    v30 = 1;
    goto LABEL_8;
  }

  sub_238634B3C(v21, &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v25 = swift_allocObject();
  sub_238634A68(&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v16);
  v26 = v37;
  sub_23875E200();
  v28 = v41;
  v27 = v42;
  (*(v41 + 32))(v24, v26, v42);
  v29 = v27;
  v30 = 0;
LABEL_9:
  (*(v28 + 56))(v24, v30, 1, v29);
  v31 = v40;
  sub_23843981C(v15, v40, &qword_27DF0D500, &unk_238779850);
  v32 = v44;
  sub_23843981C(v24, v44, &qword_27DF11C00, &qword_238779848);
  v33 = v45;
  sub_23843981C(v31, v45, &qword_27DF0D500, &unk_238779850);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C08, &qword_238779890);
  sub_23843981C(v32, v33 + *(v34 + 48), &qword_27DF11C00, &qword_238779848);
  sub_238439884(v24, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v15, &qword_27DF0D500, &unk_238779850);
  sub_238439884(v32, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v31, &qword_27DF0D500, &unk_238779850);

  return result;
}

void sub_238632BBC(uint64_t a1)
{
  v2 = type metadata accessor for OrderListRowActionsModifier(0);
  v38[0] = *(v2 - 8);
  v3 = *(v38[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875A710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238634B3C(a1, v14, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  v15 = sub_23875ED80();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  (*(v6 + 16))(v8, v14, v5);
  sub_238634B3C(a1, v4, type metadata accessor for OrderListRowActionsModifier);
  sub_23875ED50();
  v16 = sub_23875ED40();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = (v7 + *(v38[0] + 80) + v17) & ~*(v38[0] + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  (*(v6 + 32))(v19 + v17, v8, v5);
  sub_238634A68(v4, v19 + v18);
  sub_2386C3BA4(0, 0, v11, &unk_238779840, v19);

  (*(v6 + 8))(v14, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v22 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_238763300;
  v24 = *MEMORY[0x277D383D8];
  *(v23 + 32) = *MEMORY[0x277D383D8];
  v25 = sub_23875EA80();
  v26 = MEMORY[0x277D38390];
  *(v23 + 40) = v25;
  *(v23 + 48) = v27;
  v28 = *v26;
  *(v23 + 56) = *v26;
  *(v23 + 64) = 0x6574656C6564;
  v29 = *MEMORY[0x277D384B8];
  *(v23 + 72) = 0xE600000000000000;
  *(v23 + 80) = v29;
  *(v23 + 88) = 0xD000000000000014;
  *(v23 + 96) = 0x8000000238784E10;
  v30 = v24;
  v31 = v28;
  v32 = v29;
  v33 = sub_23854B138(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v33;
  sub_2385C33E4(v22, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v39);

  v35 = *MEMORY[0x277D38548];
  v36 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v37 = sub_23875E910();

  [v36 subject:v35 sendEvent:v37];
}

void sub_23863311C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = sub_23875EA80();
  v5 = MEMORY[0x277D38390];
  *(v2 + 40) = v4;
  *(v2 + 48) = v6;
  v7 = *v5;
  *(v2 + 56) = *v5;
  *(v2 + 64) = 0x776F4E746F6ELL;
  v8 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE600000000000000;
  *(v2 + 80) = v8;
  *(v2 + 88) = 0xD000000000000014;
  *(v2 + 96) = 0x8000000238784E10;
  v9 = v3;
  v10 = v7;
  v11 = v8;
  v12 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v12;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v17);

  v14 = *MEMORY[0x277D38548];
  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v16 = sub_23875E910();

  [v15 subject:v14 sendEvent:v16];
}

double sub_23863338C()
{
  v0 = type metadata accessor for OrderListRowActionsModifier(0);
  v30 = *(v0 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = sub_23875EA80();
  v10 = MEMORY[0x277D38390];
  *(v7 + 40) = v9;
  *(v7 + 48) = v11;
  v12 = *v10;
  *(v7 + 56) = *v10;
  *(v7 + 64) = 0xD000000000000010;
  v13 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0x8000000238785C70;
  *(v7 + 80) = v13;
  strcpy((v7 + 88), "orderDashboard");
  *(v7 + 103) = -18;
  v14 = v8;
  v15 = v12;
  v16 = v13;
  v17 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v17;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v32);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];

  v22 = sub_23875ED80();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = v31;
  sub_238634B3C(v29, v31, type metadata accessor for OrderListRowActionsModifier);
  sub_23875ED50();
  v24 = sub_23875ED40();
  v25 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  sub_238634A68(v23, v26 + v25);
  sub_2386C3BA4(0, 0, v4, &unk_2387798A0, v26);

  return result;
}

double sub_2386337CC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

void sub_238633974(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderListRowActionsModifier(0) + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v20[0]) = v3;
  v20[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x6C436574656C6564;
  v11 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xEB000000006B6369;
  *(v7 + 80) = v11;
  strcpy((v7 + 88), "orderDashboard");
  *(v7 + 103) = -18;
  v12 = v8;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v15;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

double sub_238633CAC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  sub_23875E190();

  return result;
}

uint64_t sub_238633E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_23875C1E0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v4[10] = swift_task_alloc();
  type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v4[11] = swift_task_alloc();
  v6 = sub_23875A710();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_23875ED50();
  v4[15] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x2822009F8](sub_238634004, v8, v7);
}

uint64_t sub_238634004()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_238634B3C(v0[6], v4, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  (*(v2 + 32))(v1, v4, v3);
  sub_2387579D0();
  v0[18] = sub_2387579A0();
  sub_23875BBF0();
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_23863415C;
  v8 = v0[14];
  v9 = v0[10];

  return MEMORY[0x282116E28](v8, 0, v9);
}

uint64_t sub_23863415C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 160) = v0;

  sub_238439884(v3, &qword_27DF12E00, &unk_238763FC0);

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_238634394;
  }

  else
  {
    v6 = sub_2386342E8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2386342E8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_238634394()
{
  v28 = v0;
  v1 = v0[20];
  v2 = v0[9];

  type metadata accessor for OrderListRowActionsModifier(0);
  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = v0[13];
    v25 = v0[12];
    v26 = v0[14];
    v8 = v0[8];
    v23 = v0[7];
    v24 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_23875F690();
    v13 = sub_2384615AC(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to mark an order as active: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);

    (*(v8 + 8))(v24, v23);
    (*(v7 + 8))(v26, v25);
  }

  else
  {
    v14 = v0[20];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v19 = v0[8];
    v18 = v0[9];
    v20 = v0[7];

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_2386345EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875C1E0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23875ED50();
  v5[7] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_2386346E0, v8, v7);
}

uint64_t sub_2386346E0()
{
  sub_2387579D0();
  v0[10] = sub_2387579A0();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_238634790;
  v2 = v0[2];

  return MEMORY[0x282116D30](v2);
}

uint64_t sub_238634790()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_2386348AC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_23850FE68;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2386348AC()
{
  v1 = v0[12];
  v2 = v0[6];

  type metadata accessor for OrderListRowActionsModifier(0);
  sub_2384D5160(v2);
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to delete an order: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_238634A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderListRowActionsModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238634AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CD80();
  *a1 = result;
  return result;
}

uint64_t sub_238634B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238634BA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23875A710() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238449A7C;

  return sub_2386345EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23875A710();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238634E68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_238634F38(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderListRowActionsModifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_238633E50(a1, v6, v7, v1 + v5);
}

id sub_238635028()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27DF2F820 = result;
  return result;
}

void sub_23863505C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = 0;
  v7 = sub_23875EA50();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  v8 = a4;
  v9 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v7, v8);

  if (v9)
  {

    v10 = qword_27DF08D18;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_27DF2F820;
    [qword_27DF2F820 setDateStyle_];
    [v12 setTimeStyle_];
    sub_2386355C8(v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_23863525C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *&v4[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = 0;
  if (a3)
  {
    v6 = sub_23875EA50();
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  v7 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = qword_27DF08D18;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27DF2F820;
  [qword_27DF2F820 setDateStyle_];
  [v10 setTimeStyle_];

  return v9;
}

void sub_2386355C8(void *a1)
{
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v80 - v17;
  v19 = sub_2387587E0();
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v83 = v12;
  v84 = v23;
  v85 = v20;
  v86 = v21;
  v24 = a1;
  v25 = sub_23875EA50();
  v26 = [v24 propertyForKey_];

  if (v26)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v88 = v92;
  v89 = v93;
  v27 = v85;
  v28 = v86;
  if (!*(&v93 + 1))
  {
    sub_238439884(&v88, &qword_27DF0A4A8, &qword_238767840);
    (*(v28 + 56))(v18, 1, 1, v27);
    goto LABEL_10;
  }

  v29 = swift_dynamicCast();
  (*(v28 + 56))(v18, v29 ^ 1u, 1, v27);
  if ((*(v28 + 48))(v18, 1, v27) == 1)
  {
LABEL_10:
    sub_238439884(v18, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v32 = sub_23875C1B0();
    v33 = sub_23875EFE0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2383F8000, v32, v33, "Expected start date property of specifier", v34, 2u);
      MEMORY[0x23EE64DF0](v34, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  (*(v28 + 32))(v84, v18, v27);
  v30 = sub_23875EA50();
  v31 = [v24 propertyForKey_];

  if (v31)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v88 = v92;
  v89 = v93;
  v35 = v86;
  if (*(&v93 + 1))
  {
    if (swift_dynamicCast())
    {
      v81 = v87;
      v36 = v1;
      sub_2387587B0();
      v37 = sub_2387587D0();
      v38 = swift_allocObject();
      *(v38 + 16) = v24;
      *(v38 + 24) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D90, &qword_238779C00);
      started = type metadata accessor for MenuButton.SharingStartDate(0);
      v40 = *(*(started - 8) + 72);
      v41 = (*(*(started - 8) + 80) + 32) & ~*(*(started - 8) + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_238763310;
      v43 = v42 + v41;
      v44 = qword_27DF08D20;
      v82 = v24;
      v45 = v36;
      if (v44 != -1)
      {
        swift_once();
      }

      v46 = __swift_project_value_buffer(started, qword_27DF2F828);
      sub_23863B344(v46, v43);
      if (qword_27DF08D28 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(started, qword_27DF2F840);
      sub_23863B344(v47, v43 + v40);
      if (qword_27DF08D30 != -1)
      {
        swift_once();
      }

      v48 = __swift_project_value_buffer(started, qword_27DF2F858);
      sub_23863B344(v48, v43 + 2 * v40);
      if (qword_27DF08D38 != -1)
      {
        swift_once();
      }

      v49 = __swift_project_value_buffer(started, qword_27DF2F870);
      sub_23863B344(v49, v43 + 3 * v40);
      v50 = v83;
      sub_23843981C(v15, v83, &qword_27DF12E00, &unk_238763FC0);
      type metadata accessor for MenuButton.SharingStartDateModel(0);
      v51 = swift_allocObject();
      sub_238638660(v50, v81, v37 & 1);
      sub_238439884(v15, &qword_27DF12E00, &unk_238763FC0);
      v88 = v51;
      *&v89 = 0x4014000000000000;
      *(&v89 + 1) = v42;
      v90 = sub_23863BA98;
      v91 = v38;
      v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D98, &qword_238779C08));

      v53 = sub_23875D080();
      v54 = *&v45[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow];
      *&v45[OBJC_IVAR____TtC12FinanceKitUI29StartSharingTimeSelectionCell_menuButtonRow] = v53;
      v55 = v53;

      v56 = [v55 view];
      if (v56)
      {
        v57 = v56;
        v58 = sub_23875EA50();
        v59 = [v82 propertyForKey_];

        if (v59)
        {
          sub_23875F2E0();
          swift_unknownObjectRelease();
        }

        else
        {
          v92 = 0u;
          v93 = 0u;
        }

        v88 = v92;
        v89 = v93;
        v80 = v38;
        v83 = v55;
        if (*(&v93 + 1))
        {
          sub_238449184(0, &qword_27DF11DA8, 0x277D75D28);
          if (swift_dynamicCast())
          {
            v63 = v87;
            [v87 addChildViewController_];
            v64 = sub_23875EA50();
            [v82 removePropertyForKey_];
          }
        }

        else
        {
          sub_238439884(&v88, &qword_27DF0A4A8, &qword_238767840);
        }

        v65 = [v45 contentView];
        [v65 addSubview_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_2387632F0;
        *(v66 + 56) = sub_238449184(0, &qword_27DF11DA0, 0x277D75D18);
        *(v66 + 32) = v57;
        v67 = v57;
        v68 = sub_23875EC60();

        [v45 setAccessibilityElements_];

        [v67 setTranslatesAutoresizingMaskIntoConstraints_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_2387798B0;
        v70 = [v45 contentView];
        v71 = objc_opt_self();
        v72 = [v71 constraintWithItem:v70 attribute:5 relatedBy:0 toItem:v67 attribute:5 multiplier:1.0 constant:0.0];

        *(v69 + 32) = v72;
        v73 = [v45 contentView];
        v74 = [v71 constraintWithItem:v73 attribute:6 relatedBy:0 toItem:v67 attribute:6 multiplier:1.0 constant:0.0];

        *(v69 + 40) = v74;
        v75 = [v45 contentView];
        v76 = [v71 constraintWithItem:v75 attribute:3 relatedBy:0 toItem:v67 attribute:3 multiplier:1.0 constant:0.0];

        *(v69 + 48) = v76;
        v77 = [v45 contentView];
        v78 = [v71 constraintWithItem:v77 attribute:4 relatedBy:0 toItem:v67 attribute:4 multiplier:1.0 constant:0.0];

        *(v69 + 56) = v78;
        sub_238449184(0, &qword_27DF151F0, 0x277CCAAD0);
        v79 = sub_23875EC60();

        [v71 activateConstraints_];

        (*(v86 + 8))(v84, v85);
      }

      else
      {
        (*(v86 + 8))(v84, v85);
      }

      return;
    }
  }

  else
  {
    sub_238439884(&v88, &qword_27DF0A4A8, &qword_238767840);
  }

  sub_23875C120();
  v60 = sub_23875C1B0();
  v61 = sub_23875EFE0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_2383F8000, v60, v61, "Expected showCurrent property of specifier", v62, 2u);
    MEMORY[0x23EE64DF0](v62, -1, -1);
  }

  (*(v4 + 8))(v9, v3);
  (*(v35 + 8))(v84, v85);
}

uint64_t sub_2386362A0(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BC40();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_2387587E0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;

  sub_23875BBF0();
  sub_23863663C(a1, v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_238439884(v12, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v20 = sub_23875C1B0();
    v21 = sub_23875EFE0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2383F8000, v20, v21, "Failed to create AccountStartDate", v22, 2u);
      MEMORY[0x23EE64DF0](v22, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v24 = sub_23875F660();
    v25 = sub_23875EA50();
    v26 = v28;
    [v28 setProperty:v24 forKey:v25];
    swift_unknownObjectRelease();

    [v26 performButtonAction];
    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_23863663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - v7;
  v8 = sub_23875BC40();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v40 - v12;
  v49 = sub_23875B650();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23875BE20();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2387587E0();
  v51 = *(v16 - 8);
  v52 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_238779BD8, v17);
  v55 = a1;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  v20 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected;
  if ((*(a1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) & 1) == 0)
  {
    v41 = v19;
    sub_23875BDF0();
    swift_getKeyPath(byte_238779BD8);
    v55 = a1;
    sub_23875BE90();

    if (*(a1 + v20))
    {

      (*(v9 + 8))(v53, v8);
      (*(v46 + 8))(v15, v48);
      v25 = v45;
      (*(v47 + 56))(v45, 1, 1, v49);
    }

    else
    {
      swift_getKeyPath(byte_238779AC8);
      v55 = a1;
      sub_23875BE90();

      v26 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
      swift_beginAccess();
      v25 = v45;
      sub_23843981C(a1 + v26, v45, &qword_27DF11C40, &unk_238779910);
      v27 = v47;
      v28 = v49;
      v29 = (*(v47 + 48))(v25, 1, v49);
      v30 = v53;
      if (v29 != 1)
      {
        v32 = v43;
        (*(v27 + 32))(v43, v25, v28);
        v33 = v44;
        sub_23875BDD0();
        if ((*(v9 + 48))(v33, 1, v8) != 1)
        {
          v34 = *(v9 + 32);
          v40 = v15;
          v35 = v9;
          v36 = v42;
          v34(v42, v33, v8);
          v37 = v50;
          sub_23875BD50();
          (*(v35 + 56))(v37, 0, 1, v8);
          v38 = v41;
          sub_2387587C0();

          v39 = *(v35 + 8);
          v39(v30, v8);
          v39(v36, v8);
          (*(v27 + 8))(v32, v28);
          v19 = v38;
          (*(v46 + 8))(v40, v48);
          goto LABEL_3;
        }

        (*(v9 + 8))(v30, v8);
        (*(v27 + 8))(v32, v28);
        (*(v46 + 8))(v15, v48);
        sub_238439884(v33, &qword_27DF12E00, &unk_238763FC0);
        v24 = 1;
        v23 = v54;
LABEL_9:
        v22 = v51;
        v21 = v52;
        return (*(v22 + 56))(v23, v24, 1, v21);
      }

      (*(v9 + 8))(v30, v8);
      (*(v46 + 8))(v15, v48);
    }

    v23 = v54;
    sub_238439884(v25, &qword_27DF11C40, &unk_238779910);
    v24 = 1;
    goto LABEL_9;
  }

  (*(v9 + 56))(v50, 1, 1, v8);
  sub_2387587C0();

  (*(v9 + 8))(v53, v8);
LABEL_3:
  v22 = v51;
  v21 = v52;
  v23 = v54;
  (*(v51 + 32))(v54, v19, v52);
  v24 = 0;
  return (*(v22 + 56))(v23, v24, 1, v21);
}

id sub_238636DC8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_238636E74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_23875B650();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_allocate_value_buffer(started, a2);
  v18 = __swift_project_value_buffer(started, a2);
  v19 = sub_23875BE20();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = sub_23875BE40();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_23875B620();
  (*(v14 + 32))(v18, v16, v13);
  (*(v14 + 56))(v18, 0, 1, v13);
  v21 = started[5];
  v22 = sub_23875BC40();
  result = (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  v24 = (v18 + started[6]);
  v25 = v28;
  *v24 = a4;
  v24[1] = v25;
  v26 = (v18 + started[7]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t sub_2386371EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_23875B650();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_allocate_value_buffer(started, a2);
  v18 = __swift_project_value_buffer(started, a2);
  v19 = sub_23875BE20();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = sub_23875BE40();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  sub_23875B620();
  (*(v14 + 32))(v18, v16, v13);
  (*(v14 + 56))(v18, 0, 1, v13);
  v21 = started[5];
  v22 = sub_23875BC40();
  result = (*(*(v22 - 8) + 56))(v18 + v21, 1, 1, v22);
  v24 = (v18 + started[6]);
  v25 = v28;
  *v24 = a4;
  v24[1] = v25;
  v26 = (v18 + started[7]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t sub_238637520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_23875BC40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  sub_23843981C(a1, v6, &qword_27DF12E00, &unk_238763FC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_238439884(v6, &qword_27DF12E00, &unk_238763FC0);
    started = type metadata accessor for MenuButton.SharingStartDate(0);
    return (*(*(started - 8) + 56))(a2, 1, 1, started);
  }

  else
  {
    v16 = *(v8 + 32);
    v44 = v8 + 32;
    v45 = v10;
    v43 = v16;
    v16(v13, v6, v7);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v17 = qword_2814F1B90;
    v18 = sub_23875EA50();
    v19 = sub_23875EA50();
    v20 = sub_23875EA50();
    v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

    sub_23875EA80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2387632F0;
    v23 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v23 setDateStyle_];
    [v23 setTimeStyle_];
    v24 = sub_23875BB40();
    v25 = [v23 stringFromDate_];

    v26 = sub_23875EA80();
    v28 = v27;

    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_238448C58(v29, v30, v31);
    *(v22 + 32) = v26;
    *(v22 + 40) = v28;
    v32 = sub_23875EAB0();
    v34 = v33;

    v35 = v45;
    v36 = v43;
    v43(v45, v13, v7);
    v37 = sub_23875B650();
    (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
    v38 = type metadata accessor for MenuButton.SharingStartDate(0);
    v39 = v38[5];
    v36(a2 + v39, v35, v7);
    (*(v8 + 56))(a2 + v39, 0, 1, v7);
    v40 = (a2 + v38[6]);
    *v40 = 0x544E4552525543;
    v40[1] = 0xE700000000000000;
    v41 = (a2 + v38[7]);
    *v41 = v32;
    v41[1] = v34;
    return (*(*(v38 - 1) + 56))(a2, 0, 1, v38);
  }
}

uint64_t sub_2386379DC()
{
  v1 = (v0 + *(type metadata accessor for MenuButton.SharingStartDate(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
    v4 = sub_23875EA50();
    v5 = sub_23875EA50();
    v6 = sub_23875EA50();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    v2 = sub_23875EA80();
  }

  return v2;
}

uint64_t sub_238637B20(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23875BC40();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_23875B650();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_23843981C(v2, &v19 - v13, &qword_27DF11C40, &unk_238779910);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_23875F720();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_23875F720();
    sub_23863A85C(&qword_27DF0BFE0, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
    sub_23875E960();
    (*(v9 + 8))(v11, v8);
  }

  started = type metadata accessor for MenuButton.SharingStartDate(0);
  sub_23843981C(v2 + *(started + 20), v7, &qword_27DF12E00, &unk_238763FC0);
  v16 = v20;
  if ((*(v20 + 48))(v7, 1, v3) == 1)
  {
    sub_23875F720();
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v7, v3);
    sub_23875F720();
    sub_23863A85C(&qword_27DF11C68, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_23875E960();
    (*(v16 + 8))(v17, v3);
  }

  sub_23875EB30();
  if (!*(v2 + *(started + 28) + 8))
  {
    return sub_23875F720();
  }

  sub_23875F720();
  return sub_23875EB30();
}

uint64_t sub_238637F24()
{
  sub_23875F700();
  sub_238637B20(v1);
  return sub_23875F760();
}

uint64_t sub_238637F68()
{
  sub_23875F700();
  sub_238637B20(v1);
  return sub_23875F760();
}

uint64_t sub_238637FA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_238779AC8);
  v5 = v1;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_23863B344(v5 + v3, a1);
}

uint64_t sub_238638070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_238779AC8);
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_23863B344(v3 + v4, a2);
}

uint64_t sub_238638138(uint64_t a1)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  MEMORY[0x28223BE20](started - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23863B344(a1, v4);
  return sub_2386381C4(v4);
}

uint64_t sub_2386381C4(uint64_t a1)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  MEMORY[0x28223BE20](started - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863B344(v1 + v6, v5);
  v7 = sub_23863AC94(v5, a1);
  sub_23863B4AC(v5);
  if (v7)
  {
    sub_23863B344(a1, v5);
    swift_beginAccess();
    sub_23863B9D0(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238779AC8);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
    sub_23875BE80();
  }

  return sub_23863B4AC(a1);
}

uint64_t sub_238638384(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863BA34(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2386383F0()
{
  swift_getKeyPath(byte_238779BD8);
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  return *(v0 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected);
}

void sub_238638498(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_238779BD8);
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  *a2 = *(v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected);
}

void sub_238638548(char a1)
{
  if (*(v1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_238779BD8);
    MEMORY[0x28223BE20](KeyPath);
    sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
    sub_23875BE80();
  }
}

uint64_t sub_238638660(uint64_t a1, char a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DB0, &unk_238779C10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v11 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  sub_23875BEC0();
  sub_238637520(a1, v9);
  if ((*(v11 + 48))(v9, 1, started) == 1)
  {
    sub_238439884(v9, &qword_27DF11DB0, &unk_238779C10);
  }

  else
  {
    sub_23863BAA0(v9, v13);
    if (a2)
    {
      sub_238439884(a1, &qword_27DF12E00, &unk_238763FC0);
      sub_23863BAA0(v13, v16);
      goto LABEL_9;
    }

    sub_23863B4AC(v13);
  }

  if (qword_27DF08D28 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(started, qword_27DF2F840);
  sub_23863B344(v17, v16);
  sub_238439884(a1, &qword_27DF12E00, &unk_238763FC0);
LABEL_9:
  sub_23863BAA0(v16, v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate);
  *(v3 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__sinceOpeningSelected) = a3 & 1;
  return v3;
}

uint64_t sub_2386388B4()
{
  sub_23863B4AC(v0 + OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate);
  v1 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_238638988(uint64_t a1)
{
  result = type metadata accessor for MenuButton.SharingStartDate(319);
  if (v2 <= 0x3F)
  {
    result = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_238638AA4(uint64_t a1)
{
  sub_238638B80(319, &qword_27DF11C58, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    sub_238638B80(319, &qword_2814F1158, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_2384561E8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238638B80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_238638BD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_238638C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238638C94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875D590();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C80, &qword_238779A98);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C88, &qword_238779AA0);
  MEMORY[0x28223BE20](v33);
  v12 = &v33 - v11;
  *v10 = sub_23875D030();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C90, &qword_238779AA8) + 44)];
  *v13 = sub_23875CE60();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C98, &qword_238779AB0);
  sub_2386391F0(v1, &v13[*(v14 + 44)]);
  v15 = sub_23875D7B0();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CA0, &qword_238779AB8) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_23875D580();
  sub_23843A3E8(&qword_27DF11CA8, &qword_27DF11C80, &qword_238779A98, MEMORY[0x277CE1198]);
  sub_23875DD60();
  (*(v5 + 8))(v7, v4);
  sub_238439884(v10, &qword_27DF11C80, &qword_238779A98);
  v25 = &v12[*(v33 + 36)];
  *v25 = sub_23863A650;
  v25[1] = 0;
  v26 = v1[1];
  v38 = *v1;
  v39 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v27 = v41;
  swift_getKeyPath(byte_238779AC8);
  v38 = v27;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  v28 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  v29 = v34;
  sub_23863B344(v27 + v28, v34);

  v40 = v2[3];
  v41 = v26;
  v30 = swift_allocObject();
  v31 = *(v2 + 1);
  v30[1] = *v2;
  v30[2] = v31;
  v30[3] = *(v2 + 2);

  sub_23843981C(&v41, v37, &qword_27DF11CC0, &qword_238779AF0);
  sub_23843981C(&v40, v37, &qword_27DF11CC8, &qword_238779AF8);
  sub_23863B3B0();
  sub_23863A85C(&qword_27DF11C60, type metadata accessor for MenuButton.SharingStartDate, &unk_2387799CC);

  sub_23875DF10();

  sub_23863B4AC(v29);
  return sub_238439884(v12, &qword_27DF11C88, &qword_238779AA0);
}

double sub_2386391F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_23875CFD0();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23875C850();
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CD8, &qword_238779B00);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CE0, &qword_238779B08);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = v43 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CE8, &qword_238779B10);
  MEMORY[0x28223BE20](v56);
  v10 = v43 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF0, &qword_238779B18);
  MEMORY[0x28223BE20](v53);
  v57 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = v43 - v13;
  sub_23875ED50();
  v54 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v43[2] = v43;
  MEMORY[0x28223BE20](isCurrentExecutor);
  v43[-2] = a1;
  MEMORY[0x28223BE20](v15);
  v43[-2] = a1;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CF8, &qword_238779B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D00, &qword_238779B28);
  sub_23863B518();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D10, &qword_238779B30);
  v17 = sub_23875CDF0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D18, &qword_238779B38);
  v19 = sub_23843A3E8(&qword_27DF11D20, &qword_27DF11D18, &qword_238779B38, MEMORY[0x277CDF038]);
  v62 = v18;
  v63 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v16;
  v63 = v17;
  v64 = OpaqueTypeConformance2;
  v65 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  v21 = v44;
  sub_23875D9D0();
  v22 = v46;
  sub_23875C840();
  v23 = sub_23843A3E8(&qword_27DF11D28, &qword_27DF11CD8, &qword_238779B00, MEMORY[0x277CDE5B0]);
  v24 = sub_23863A85C(&qword_27DF0C0B8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v26 = v47;
  v25 = v48;
  v27 = v52;
  sub_23875DF60();
  (*(v49 + 8))(v22, v27);
  (*(v45 + 8))(v21, v26);
  v28 = v58;
  sub_23875CFC0();
  v62 = v26;
  v63 = v27;
  v64 = v23;
  v65 = v24;
  swift_getOpaqueTypeConformance2();
  sub_23863A85C(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v29 = v51;
  v30 = v60;
  sub_23875DB30();
  (*(v59 + 8))(v28, v30);
  (*(v50 + 8))(v25, v29);
  KeyPath = swift_getKeyPath(byte_238779B40);
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D30, &qword_238779B70) + 36)];
  *v32 = KeyPath;
  v32[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D38, &qword_238779B78) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v33 = &v10[*(v56 + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_23863B59C();
  v38 = v55;
  sub_23875DE70();
  sub_238439884(v10, &qword_27DF11CE8, &qword_238779B10);
  *(v38 + *(v53 + 36)) = 0;
  v39 = v57;
  sub_238422A00(v38, v57);
  v40 = v61;
  sub_238422A00(v39, v61);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D58, &qword_238779B90) + 48);
  *v41 = 0;
  *(v41 + 8) = 0;
  sub_238439884(v38, &qword_27DF11CF0, &qword_238779B18);
  sub_238439884(v39, &qword_27DF11CF0, &qword_238779B18);

  return result;
}

double sub_238639A04@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_23875CDF0();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D60, &qword_238779B98);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D18, &qword_238779B38);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D10, &qword_238779B30);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v45 = v17;
  v46 = v19;
  v44 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1D0();
  v20 = v41;
  v21 = v42;
  v22 = v43;
  swift_getKeyPath(byte_238779AC8);
  v41 = v20;
  v42 = v21;
  v43 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D68, &qword_238779BA0);
  sub_23875E300();

  MEMORY[0x28223BE20](v23);
  type metadata accessor for MenuButton.SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11D70, &qword_238779BA8);
  sub_23863A85C(&qword_27DF11D78, type metadata accessor for MenuButton.SharingStartDate, &unk_238779A2C);
  v31 = sub_23863B8EC();
  sub_2384397A8(v31, v24, v25);
  sub_23875E280();
  v26 = sub_23843A3E8(&qword_27DF11D20, &qword_27DF11D18, &qword_238779B38, MEMORY[0x277CDF038]);
  sub_23875DBB0();
  (*(v33 + 8))(v8, v6);
  v27 = v37;
  sub_23875CDE0();
  v41 = v6;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v36;
  v29 = v40;
  sub_23875DB80();
  (*(v39 + 8))(v27, v29);
  (*(v35 + 8))(v11, v28);

  return result;
}

double sub_238639FB8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath(byte_238779BC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CC8, &qword_238779AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF11D88, &qword_27DF11CC8, &qword_238779AF8, MEMORY[0x277D83980]);
  sub_23863A85C(&qword_27DF11D78, type metadata accessor for MenuButton.SharingStartDate, &unk_238779A2C);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0, MEMORY[0x277CE1138]);
  sub_23875E370();

  return result;
}

void sub_23863A18C(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_2386379DC();
  sub_2384397A8(v12, v3, v4);
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9 & 1;
  *(a1 + 48) = v11;
}

void sub_23863A2E4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  MEMORY[0x28223BE20](started);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v7 = v34;
  swift_getKeyPath(byte_238779AC8);
  *&v36 = v7;
  sub_23863A85C(&qword_27DF11CB8, type metadata accessor for MenuButton.SharingStartDateModel, &unk_238779A6C);
  sub_23875BE90();

  v8 = OBJC_IVAR____TtCV12FinanceKitUI10MenuButton21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_23863B344(v7 + v8, v6);

  v9 = &v6[*(started + 28)];
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v12 = qword_2814F1B90;
    v13 = sub_23875EA50();
    v14 = sub_23875EA50();
    v15 = sub_23875EA50();
    v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

    v10 = sub_23875EA80();
    v11 = v17;
  }

  v18 = sub_23863B4AC(v6);
  v34 = v10;
  v35 = v11;
  sub_2384397A8(v18, v19, v20);
  v21 = sub_23875DAA0();
  v23 = v22;
  v25 = v24;
  LODWORD(v34) = sub_23875D420();
  v26 = sub_23875DA20();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_2384397FC(v21, v23, v25 & 1);

  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = 256;
}

double sub_23863A650()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();

  return result;
}

double sub_23863A6F4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11CB0, &qword_238779AC0);
  sub_23875E1B0();
  v4();

  return result;
}

uint64_t sub_23863A85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23863A8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_23875BC40();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BE20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BDF0();
  sub_23875BDD0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    (*(v12 + 8))(a2, v11);
    v19 = sub_23875B650();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v16 + 8))(v18, v15);
    sub_238439884(v10, &qword_27DF12E00, &unk_238763FC0);
    v20 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_23875BD50();
    (*(v12 + 56))(v7, 0, 1, v11);
    sub_2387587C0();
    v21 = *(v12 + 8);
    v21(a2, v11);
    v22 = sub_23875B650();
    (*(*(v22 - 8) + 8))(a1, v22);
    v21(v14, v11);
    (*(v16 + 8))(v18, v15);
    v20 = 0;
  }

  v23 = sub_2387587E0();
  return (*(*(v23 - 8) + 56))(v26, v20, 1, v23);
}

uint64_t sub_23863AC40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CC10();
  *a1 = result;
  return result;
}

uint64_t sub_23863AC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875BC40();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v52 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  MEMORY[0x28223BE20](v54);
  v55 = &v52 - v8;
  v9 = sub_23875B650();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C40, &unk_238779910);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C70, &qword_238779A90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v20 = *(v19 + 56);
  v58 = a1;
  sub_23843981C(a1, &v52 - v17, &qword_27DF11C40, &unk_238779910);
  v59 = a2;
  sub_23843981C(a2, &v18[v20], &qword_27DF11C40, &unk_238779910);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_238439884(v18, &qword_27DF11C40, &unk_238779910);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_27DF11C70;
    v23 = &qword_238779A90;
    v24 = v18;
LABEL_14:
    sub_238439884(v24, v22, v23);
    return 0;
  }

  sub_23843981C(v18, v15, &qword_27DF11C40, &unk_238779910);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_6;
  }

  (*(v10 + 32))(v12, &v18[v20], v9);
  sub_23863A85C(&qword_27DF11C78, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
  v25 = sub_23875E9E0();
  v26 = *(v10 + 8);
  v26(v12, v9);
  v26(v15, v9);
  sub_238439884(v18, &qword_27DF11C40, &unk_238779910);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  v28 = started[5];
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v58;
  sub_23843981C(v58 + v28, v55, &qword_27DF12E00, &unk_238763FC0);
  v32 = v59 + v28;
  v33 = v59;
  sub_23843981C(v32, v29 + v30, &qword_27DF12E00, &unk_238763FC0);
  v35 = v56;
  v34 = v57;
  v36 = *(v56 + 48);
  if (v36(v29, 1, v57) != 1)
  {
    v37 = v53;
    sub_23843981C(v29, v53, &qword_27DF12E00, &unk_238763FC0);
    if (v36(v29 + v30, 1, v34) != 1)
    {
      v39 = v29 + v30;
      v40 = v52;
      (*(v35 + 32))(v52, v39, v34);
      sub_23863A85C(&qword_27DF0DC38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v41 = sub_23875E9E0();
      v42 = *(v35 + 8);
      v42(v40, v34);
      v42(v37, v34);
      sub_238439884(v29, &qword_27DF12E00, &unk_238763FC0);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v35 + 8))(v37, v34);
    goto LABEL_13;
  }

  if (v36(v29 + v30, 1, v34) != 1)
  {
LABEL_13:
    v22 = &qword_27DF0DC30;
    v23 = &unk_23876E260;
    v24 = v29;
    goto LABEL_14;
  }

  sub_238439884(v29, &qword_27DF12E00, &unk_238763FC0);
LABEL_18:
  v43 = started[6];
  v44 = *(v31 + v43);
  v45 = *(v31 + v43 + 8);
  v46 = (v33 + v43);
  if (v44 == *v46 && v45 == v46[1] || (sub_23875F630() & 1) != 0)
  {
    v47 = started[7];
    v48 = (v31 + v47);
    v49 = *(v31 + v47 + 8);
    v50 = (v33 + v47);
    v51 = v50[1];
    if (v49)
    {
      if (v51 && (*v48 == *v50 && v49 == v51 || (sub_23875F630() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v51)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_23863B344(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

unint64_t sub_23863B3B0()
{
  result = qword_27DF11CD0;
  if (!qword_27DF11CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C88, &qword_238779AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11C80, &qword_238779A98);
    sub_23843A3E8(&qword_27DF11CA8, &qword_27DF11C80, &qword_238779A98, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11CD0);
  }

  return result;
}

uint64_t sub_23863B4AC(uint64_t a1)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

unint64_t sub_23863B518()
{
  result = qword_27DF11D08;
  if (!qword_27DF11D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CF8, &qword_238779B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D08);
  }

  return result;
}

unint64_t sub_23863B59C()
{
  result = qword_27DF11D40;
  if (!qword_27DF11D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CE8, &qword_238779B10);
    sub_23863B628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D40);
  }

  return result;
}

unint64_t sub_23863B628()
{
  result = qword_27DF11D48;
  if (!qword_27DF11D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D38, &qword_238779B78);
    sub_23863B6E0();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D48);
  }

  return result;
}

unint64_t sub_23863B6E0()
{
  result = qword_27DF11D50;
  if (!qword_27DF11D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D30, &qword_238779B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CE0, &qword_238779B08);
    sub_23875CFD0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11CD8, &qword_238779B00);
    sub_23875C850();
    sub_23843A3E8(&qword_27DF11D28, &qword_27DF11CD8, &qword_238779B00, MEMORY[0x277CDE5B0]);
    sub_23863A85C(&qword_27DF0C0B8, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    sub_23863A85C(&qword_27DF0C0C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C0F0, &qword_27DF0C0F8, &unk_238779B80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D50);
  }

  return result;
}

unint64_t sub_23863B8EC()
{
  result = qword_27DF11D80;
  if (!qword_27DF11D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11D70, &qword_238779BA8);
    sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11D80);
  }

  return result;
}

uint64_t sub_23863B9D0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_23863BA34(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t sub_23863BAA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MenuButton.SharingStartDate(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

void sub_23863BB04()
{
  v1 = [v0 specifier];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StartSharingTimeSelectionCell();
  objc_msgSendSuper2(&v5, sel_refreshCellContentsWithSpecifier_, v1);

  [v0 setUserInteractionEnabled_];
  v2 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }
}

uint64_t sub_23863BBE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_238757B60();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v36[0] = sub_238758CF0();
  v36[1] = v11;
  swift_getKeyPath(byte_23877A000, v36);
  v37 = v1;
  sub_23843A3E8(&qword_27DF11948, &qword_27DF11950, &unk_238779D50, &unk_23877C508);
  sub_23875BE90();

  v17 = *(*v1 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v17, v10, &qword_27DF0A0C0, &qword_238771EF0);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0A0C0, &qword_238771EF0);
    v19 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v19, v7, &qword_27DF0A0C0, &qword_238771EF0);
    if (v18(v7, 1, v11) == 1)
    {
      sub_238439884(v7, &qword_27DF0A0C0, &qword_238771EF0);
      v20 = *(v2 + *(*v2 + 120));
      v21 = v35;
      if (v20)
      {
        v22 = v2[2];
        v23 = v20;
        v24 = v34;
        v22();

        v25 = 0;
      }

      else
      {
        v25 = 1;
        v24 = v34;
      }

      (*(v12 + 56))(v24, v25, 1, v11);
      swift_beginAccess();
      sub_2385309FC(v24, v2 + v19, &qword_27DF0A0C0, &qword_238771EF0);
      swift_endAccess();
      return sub_23843981C(v2 + v19, v21, &qword_27DF0A0C0, &qword_238771EF0);
    }

    else
    {
      v29 = *(v12 + 32);
      v30 = v33;
      v29(v33, v7, v11);
      v31 = v35;
      v29(v35, v30, v11);
      return (*(v12 + 56))(v31, 0, 1, v11);
    }
  }

  else
  {
    v26 = *(v12 + 32);
    v26(v16, v10, v11);
    v27 = v35;
    v26(v35, v16, v11);
    return (*(v12 + 56))(v27, 0, 1, v11);
  }
}

uint64_t sub_23863C054@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_238758BB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v36[0] = sub_2387582B0();
  v36[1] = v11;
  swift_getKeyPath(byte_23877A000, v36);
  v37 = v1;
  sub_23843A3E8(&qword_27DF11938, &qword_27DF11940, &qword_2387793C8, &unk_23877C508);
  sub_23875BE90();

  v17 = *(*v1 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v17, v10, &qword_27DF0D358, &unk_23876CF80);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0D358, &unk_23876CF80);
    v19 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v19, v7, &qword_27DF0D358, &unk_23876CF80);
    if (v18(v7, 1, v11) == 1)
    {
      sub_238439884(v7, &qword_27DF0D358, &unk_23876CF80);
      v20 = *(v2 + *(*v2 + 120));
      v21 = v35;
      if (v20)
      {
        v22 = v2[2];
        v23 = v20;
        v24 = v34;
        v22();

        v25 = 0;
      }

      else
      {
        v25 = 1;
        v24 = v34;
      }

      (*(v12 + 56))(v24, v25, 1, v11);
      swift_beginAccess();
      sub_2385309FC(v24, v2 + v19, &qword_27DF0D358, &unk_23876CF80);
      swift_endAccess();
      return sub_23843981C(v2 + v19, v21, &qword_27DF0D358, &unk_23876CF80);
    }

    else
    {
      v29 = *(v12 + 32);
      v30 = v33;
      v29(v33, v7, v11);
      v31 = v35;
      v29(v35, v30, v11);
      return (*(v12 + 56))(v31, 0, 1, v11);
    }
  }

  else
  {
    v26 = *(v12 + 32);
    v26(v16, v10, v11);
    v27 = v35;
    v26(v35, v16, v11);
    return (*(v12 + 56))(v27, 0, 1, v11);
  }
}

uint64_t sub_23863C4C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_238758680();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v36[0] = sub_238759780();
  v36[1] = v11;
  swift_getKeyPath(byte_23877A000, v36);
  v37 = v1;
  sub_23843A3E8(&qword_27DF11918, &qword_27DF11920, &qword_2387793B8, &unk_23877C508);
  sub_23875BE90();

  v17 = *(*v1 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v17, v10, &qword_27DF09520, &unk_2387637E0);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF09520, &unk_2387637E0);
    v19 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v19, v7, &qword_27DF09520, &unk_2387637E0);
    if (v18(v7, 1, v11) == 1)
    {
      sub_238439884(v7, &qword_27DF09520, &unk_2387637E0);
      v20 = *(v2 + *(*v2 + 120));
      v21 = v35;
      if (v20)
      {
        v22 = v2[2];
        v23 = v20;
        v24 = v34;
        v22();

        v25 = 0;
      }

      else
      {
        v25 = 1;
        v24 = v34;
      }

      (*(v12 + 56))(v24, v25, 1, v11);
      swift_beginAccess();
      sub_2385309FC(v24, v2 + v19, &qword_27DF09520, &unk_2387637E0);
      swift_endAccess();
      return sub_23843981C(v2 + v19, v21, &qword_27DF09520, &unk_2387637E0);
    }

    else
    {
      v29 = *(v12 + 32);
      v30 = v33;
      v29(v33, v7, v11);
      v31 = v35;
      v29(v35, v30, v11);
      return (*(v12 + 56))(v31, 0, 1, v11);
    }
  }

  else
  {
    v26 = *(v12 + 32);
    v26(v16, v10, v11);
    v27 = v35;
    v26(v35, v16, v11);
    return (*(v12 + 56))(v27, 0, 1, v11);
  }
}

uint64_t sub_23863C92C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v36[0] = sub_238757DF0();
  v36[1] = v11;
  swift_getKeyPath(byte_23877A000, v36);
  v37 = v1;
  sub_23843A3E8(&qword_27DF11A40, &qword_27DF11A48, &qword_23877A090, &unk_23877C508);
  sub_23875BE90();

  v17 = *(*v1 + 104);
  swift_beginAccess();
  sub_23843981C(v2 + v17, v10, &qword_27DF11A38, &unk_238779510);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF11A38, &unk_238779510);
    v19 = *(*v2 + 112);
    swift_beginAccess();
    sub_23843981C(v2 + v19, v7, &qword_27DF11A38, &unk_238779510);
    if (v18(v7, 1, v11) == 1)
    {
      sub_238439884(v7, &qword_27DF11A38, &unk_238779510);
      v20 = *(v2 + *(*v2 + 120));
      v21 = v35;
      if (v20)
      {
        v22 = v2[2];
        v23 = v20;
        v24 = v34;
        v22();

        v25 = 0;
      }

      else
      {
        v25 = 1;
        v24 = v34;
      }

      (*(v12 + 56))(v24, v25, 1, v11);
      swift_beginAccess();
      sub_2385309FC(v24, v2 + v19, &qword_27DF11A38, &unk_238779510);
      swift_endAccess();
      return sub_23843981C(v2 + v19, v21, &qword_27DF11A38, &unk_238779510);
    }

    else
    {
      v29 = v33;
      sub_2384396E4(v7, v33, &qword_27DF11A30, &qword_23877FEA0);
      v30 = v29;
      v31 = v35;
      sub_2384396E4(v30, v35, &qword_27DF11A30, &qword_23877FEA0);
      return (*(v12 + 56))(v31, 0, 1, v11);
    }
  }

  else
  {
    sub_2384396E4(v10, v16, &qword_27DF11A30, &qword_23877FEA0);
    v26 = v16;
    v27 = v35;
    sub_2384396E4(v26, v35, &qword_27DF11A30, &qword_23877FEA0);
    return (*(v12 + 56))(v27, 0, 1, v11);
  }
}

uint64_t InstitutionConsentManagementView.init(institutionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for InstitutionConsentManagementView(0) + 20);
  *(a3 + v6) = swift_getKeyPath(aP_15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  sub_2386ED8A0(a1, a2);

  sub_2387582B0();

  return sub_23875C4F0();
}

uint64_t sub_23863CE74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InstitutionConsentManagementView(0);
  sub_23843981C(v1 + *(v10 + 20), v9, &qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C1E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23875EFF0();
    v13 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *InstitutionConsentManagementView.body.getter@<X0>(void *a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for InstitutionConsentManagementView(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v3;
  v37 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DB8, &qword_238779C50);
  MEMORY[0x28223BE20](v45);
  v5 = (&v33 - v4);
  v42 = type metadata accessor for MultipleConsentManagementListView(0);
  MEMORY[0x28223BE20](v42);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DC0, &qword_238779C58);
  MEMORY[0x28223BE20](v38);
  v40 = &v33 - v7;
  v39 = type metadata accessor for InstitutionConsentManagementListView(0);
  MEMORY[0x28223BE20](v39);
  v33 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DC8, &qword_238779C60);
  MEMORY[0x28223BE20](v43);
  v41 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD0, &qword_238779C68);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF11DE0, &qword_27DF11DD0, &qword_238779C68, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  if (v46[4] == v46[0])
  {
    (*(v11 + 8))(v16, v10);
    v17 = v37;
    sub_23864AED4(v1, v37, type metadata accessor for InstitutionConsentManagementView);
    v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v19 = swift_allocObject();
    sub_23864B704(v17, v19 + v18, type metadata accessor for InstitutionConsentManagementView);
    *v5 = sub_23864AF9C;
    v5[1] = v19;
    v5[2] = 0;
    v5[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23864ADE8();
    sub_23845D554();
    return sub_23875D1B0();
  }

  else
  {
    v37 = v5;
    v21 = sub_23875EF20();
    v23 = *v22;
    v21(v46, 0);
    v24 = *(v11 + 8);
    v24(v16, v10);
    sub_23875C500();
    sub_23875EED0();
    sub_23875EF00();
    v25 = sub_23875EEF0();
    v24(v13, v10);
    if (v25 == 1)
    {
      v26 = v23;
      v27 = v33;
      sub_23863D838(v26, v33);
      sub_23864AED4(v27, v40, type metadata accessor for InstitutionConsentManagementListView);
      swift_storeEnumTagMultiPayload();
      sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView, &unk_238779DE0);
      sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView, &unk_238779D90);
      v28 = v41;
      sub_23875D1B0();
      v29 = type metadata accessor for InstitutionConsentManagementListView;
      v30 = v27;
    }

    else
    {
      v31 = [v23 institutionObject];
      v32 = v34;
      sub_23863DB68(v31, v34);
      sub_23864AED4(v32, v40, type metadata accessor for MultipleConsentManagementListView);
      swift_storeEnumTagMultiPayload();
      sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView, &unk_238779DE0);
      sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView, &unk_238779D90);
      v28 = v41;
      sub_23875D1B0();
      v29 = type metadata accessor for MultipleConsentManagementListView;
      v30 = v32;
    }

    sub_23864AF3C(v30, v29);
    sub_23843981C(v28, v37, &qword_27DF11DC8, &qword_238779C60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E90, &qword_238764C80);
    sub_23864ADE8();
    sub_23845D554();
    sub_23875D1B0();

    return sub_238439884(v28, &qword_27DF11DC8, &qword_238779C60);
  }
}

void sub_23863D838(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for InstitutionConsentManagementListView(0);
  v11 = a2 + v10[7];
  *v11 = swift_getKeyPath(byte_238779FA0);
  v11[40] = 0;
  v12 = a2 + v10[8];
  *v12 = swift_getKeyPath(aP_16);
  v12[8] = 0;
  v13 = v10[9];
  *(a2 + v13) = swift_getKeyPath(aP_15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v14 = sub_238758BB0();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_23843981C(v9, v6, &qword_27DF0D358, &unk_23876CF80);
  sub_23875E1A0();
  sub_238439884(v9, &qword_27DF0D358, &unk_23876CF80);
  sub_23875AAE0();
  v15 = [a1 institutionObject];
  v16 = [v15 managedObjectContext];
  if (v16)
  {
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11950, &unk_238779D50);
    swift_allocObject();
    *a2 = sub_238629140(v15, v17, sub_23864D8B4, 0);
    a2[1] = 0;
    v18 = a1;
    v19 = [v18 managedObjectContext];
    if (v19)
    {
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11940, &qword_2387793C8);
      swift_allocObject();
      a2[2] = sub_238628C18(v18, v20, sub_23863E320, 0);
      a2[3] = 0;
      v21 = [v18 consentID];
      v22 = sub_23875EA80();
      v24 = v23;

      sub_2386ED9B8(v22, v24);

      sub_238759780();
      sub_23875C4F0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23863DB68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  *a2 = swift_getKeyPath(byte_238779FA0, v8);
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath(aP_16);
  *(a2 + 56) = 0;
  v11 = type metadata accessor for MultipleConsentManagementListView(0);
  v12 = *(v11 + 24);
  *(a2 + v12) = swift_getKeyPath(aP_15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v13 = sub_238758BB0();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_23843981C(v10, v6, &qword_27DF0D358, &unk_23876CF80);
  sub_23875E1A0();
  sub_238439884(v10, &qword_27DF0D358, &unk_23876CF80);
  v14 = a1;
  v15 = [v14 managedObjectContext];
  if (v15)
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11950, &unk_238779D50);
    swift_allocObject();
    v17 = sub_238629140(v14, v16, sub_23864D8B4, 0);
    v18 = (a2 + *(v11 + 28));
    *v18 = v17;
    v18[1] = 0;
    v19 = [v14 id];
    v20 = sub_23875EA80();
    v22 = v21;

    sub_2386ED8A0(v20, v22);

    sub_2387582B0();
    sub_23875C4F0();
    v23 = [v14 id];
    v24 = sub_23875EA80();
    v26 = v25;

    sub_2386ED9DC(v24, v26);

    sub_238759780();
    sub_23875C4F0();
  }

  else
  {
    __break(1u);
  }
}

double sub_23863DE5C()
{
  v0 = sub_23875C1E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23863CE74(v3);
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2383F8000, v4, v5, "Selected institution was not found in the store, or wasn't connected.", v6, 2u);
    MEMORY[0x23EE64DF0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);

  return result;
}

void *sub_23863E00C()
{
  v19 = sub_238758680();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  type metadata accessor for InstitutionConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  v7 = sub_23875EEE0();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v21 = MEMORY[0x277D84F90];
  sub_2385FE488(0, v7 & ~(v7 >> 63), 0);
  v9 = v21;
  result = sub_23875EED0();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v4;
    v18 = v0 + 32;
    do
    {
      v11 = sub_23875EF20();
      v13 = *v12;
      v11(v20, 0);
      sub_238758690();
      v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2385FE488((v14 > 1), v15 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v15 + 1;
      (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v15, v2, v19);
      sub_23875EF10();
      --v8;
    }

    while (v8);
    (*(v17 + 8))(v6, v3);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_23863E320(void *a1)
{
  v1 = a1;

  return sub_238758BC0();
}

uint64_t sub_23863E358@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v73 = type metadata accessor for InstitutionConsentManagementListView(0);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v76 = v2;
  v77 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v55 - v4;
  v5 = sub_23875CE00();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E70, &qword_238779E38);
  v65 = *(OpaqueTypeConformance2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v64 = &v55 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E78, &qword_238779E40);
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E80, &qword_238779E48);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E88, &unk_238779E50);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_238757B60();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = v1[1];
  v83 = *v1;
  v84 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_238439884(v16, &qword_27DF0A0C0, &qword_238771EF0);
    v24 = 1;
  }

  else
  {
    v60 = v11;
    v56 = v18;
    v25 = *(v18 + 32);
    v57 = v18 + 32;
    v58 = v25;
    v63 = v22;
    v61 = v17;
    v26 = (v25)(v22, v16, v17);
    MEMORY[0x28223BE20](v26);
    v55 = v1;
    v59 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E98, &qword_238779E68);
    sub_23843A3E8(&qword_27DF11EA0, &qword_27DF11E98, &qword_238779E68, MEMORY[0x277CE14C0]);
    v27 = v64;
    sub_23875D9C0();
    v83 = sub_238757B50();
    v84 = v28;
    v29 = sub_23843A3E8(&qword_27DF11EA8, &qword_27DF11E70, &qword_238779E38, MEMORY[0x277CDE5A0]);
    v32 = sub_2384397A8(v29, v30, v31);
    v33 = MEMORY[0x277D837D0];
    v34 = v66;
    v35 = OpaqueTypeConformance2;
    sub_23875DC70();

    (*(v65 + 8))(v27, v35);
    v37 = v69;
    v36 = v70;
    v38 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277CDDDC0], v71);
    v83 = v35;
    v84 = v33;
    v85 = v29;
    v86 = v32;
    v12 = v59;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v72;
    sub_23875DE50();
    (*(v36 + 8))(v37, v38);
    (*(v68 + 8))(v34, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    v40 = v55;
    sub_23875E1D0();
    v41 = v56;
    v42 = v62;
    v43 = v61;
    (*(v56 + 16))(v62, v63, v61);
    v44 = v77;
    sub_23864AED4(v40, v77, type metadata accessor for InstitutionConsentManagementListView);
    v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v46 = (v19 + *(v75 + 80) + v45) & ~*(v75 + 80);
    v47 = swift_allocObject();
    v58(v47 + v45, v42, v43);
    sub_23864B704(v44, v47 + v46, type metadata accessor for InstitutionConsentManagementListView);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EB0, &qword_238779E70);
    v83 = v39;
    v84 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268], MEMORY[0x277CC7270]);
    v48 = type metadata accessor for BankConnectAuthorizationReconsentView(255);
    v49 = sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
    v83 = v48;
    v84 = v49;
    v11 = v60;
    swift_getOpaqueTypeConformance2();
    v50 = v74;
    v52 = v79;
    v51 = v80;
    v53 = v81;
    sub_23875DEE0();

    sub_238439884(v51, &qword_27DF11E68, &qword_238779E30);
    (*(v78 + 8))(v53, v52);
    (*(v41 + 8))(v63, v61);
    (*(v12 + 32))(v82, v50, v11);
    v24 = 0;
  }

  return (*(v12 + 56))(v82, v24, 1, v11);
}

double sub_23863EDDC@<D0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EC8, &qword_238779E78);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED0, &qword_238779E80);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED8, &qword_238779E88);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE0, &qword_238779E90);
  MEMORY[0x28223BE20](v19 - 8);
  v52 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v54 = &v43 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE8, &qword_238779E98);
  MEMORY[0x28223BE20](v23 - 8);
  v53 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - v26;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23863F420(v27);
  sub_23863FAD8(v54);
  v28 = sub_238640E4C();
  if (v28)
  {
    sub_23864B7C4(v28, v29, v30);
    sub_23875E3D0();
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF0, &qword_238779EA0);
  (*(*(v32 - 8) + 56))(v15, v31, 1, v32);
  sub_2384396E4(v15, v18, &qword_27DF11ED8, &qword_238779E88);
  v44 = v10;
  sub_23863FFC0(v10);
  sub_238640514(v5);
  v33 = v53;
  sub_23843981C(v27, v53, &qword_27DF11EE8, &qword_238779E98);
  v46 = v27;
  v34 = v52;
  sub_23843981C(v54, v52, &qword_27DF11EE0, &qword_238779E90);
  v35 = v48;
  sub_23843981C(v18, v48, &qword_27DF11ED8, &qword_238779E88);
  v36 = v10;
  v37 = v49;
  sub_23843981C(v36, v49, &qword_27DF11ED0, &qword_238779E80);
  v45 = v18;
  v38 = v51;
  sub_23843981C(v5, v51, &qword_27DF11EC8, &qword_238779E78);
  v39 = v35;
  v40 = v50;
  sub_23843981C(v33, v50, &qword_27DF11EE8, &qword_238779E98);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF8, &qword_238779EA8);
  sub_23843981C(v34, v40 + v41[12], &qword_27DF11EE0, &qword_238779E90);
  sub_23843981C(v39, v40 + v41[16], &qword_27DF11ED8, &qword_238779E88);
  sub_23843981C(v37, v40 + v41[20], &qword_27DF11ED0, &qword_238779E80);
  sub_23843981C(v38, v40 + v41[24], &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v5, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v44, &qword_27DF11ED0, &qword_238779E80);
  sub_238439884(v45, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v54, &qword_27DF11EE0, &qword_238779E90);
  sub_238439884(v46, &qword_27DF11EE8, &qword_238779E98);
  sub_238439884(v38, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v37, &qword_27DF11ED0, &qword_238779E80);
  sub_238439884(v39, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v52, &qword_27DF11EE0, &qword_238779E90);
  sub_238439884(v53, &qword_27DF11EE8, &qword_238779E98);

  return result;
}

uint64_t sub_23863F420@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v10;
  v61 = sub_23875A9F0();
  v54 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_238758BD0();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_238758680();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23863E00C();
  v58 = v19[2];
  if (v58)
  {
    v43 = v5;
    v44 = v7;
    v45 = v6;
    v46 = v1;
    v49 = a1;
    v62 = v19;
    v57 = sub_23875ED50();
    result = v62;
    v21 = 0;
    v56 = v62 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    ++v54;
    v55 = v16 + 16;
    v53 = *MEMORY[0x277CC7288];
    v51 = (v12 + 8);
    v52 = (v12 + 104);
    v50 = (v16 + 8);
    while (1)
    {
      if (v21 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v16;
      v23 = v15;
      (*(v16 + 16))(v18, v56 + *(v16 + 72) * v21, v15);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v63[3] = sub_23875A820();
      v63[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v63);
      sub_23875A7F0();
      v24 = objc_allocWithZone(sub_23875A060());
      v25 = sub_23875A030();
      v26 = v59;
      sub_238758530();
      v27 = sub_23875A9E0();
      v29 = v28;
      (*v54)(v26, v61);
      *v14 = v27;
      v14[1] = v29;
      v30 = v60;
      (*v52)(v14, v53, v60);
      v31 = sub_23875A050();

      (*v51)(v14, v30);
      if (sub_238758550())
      {
        v32 = sub_238758560();
        v15 = v23;
        (*v50)(v18, v23);

        if (!(v31 & 1 | ((v32 & 1) == 0)))
        {

          v33 = v46[1];
          v63[0] = *v46;
          v63[1] = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
          sub_23875E1B0();
          v34 = v43;
          sub_23863BBE8(v43);

          v35 = v44;
          v36 = v45;
          if ((*(v44 + 48))(v34, 1, v45) == 1)
          {
            sub_238439884(v34, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_13:
            v37 = 1;
            a1 = v49;
            goto LABEL_16;
          }

          v38 = v47;
          (*(v35 + 32))(v47, v34, v36);
          v39 = sub_23863E00C();
          v40 = v48;
          (*(v35 + 16))(v48, v38, v36);
          a1 = v49;
          AccountMismatchedInformationTileView.init(accounts:institution:)(v39, v40, v49);
          (*(v35 + 8))(v38, v36);
          v37 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v15 = v23;
        (*v50)(v18, v23);
      }

      ++v21;
      v16 = v22;
      result = v62;
      if (v58 == v21)
      {

        goto LABEL_13;
      }
    }
  }

  v37 = 1;
LABEL_16:
  v41 = type metadata accessor for AccountMismatchedInformationTileView(0);
  return (*(*(v41 - 8) + 56))(a1, v37, 1, v41);
}

uint64_t sub_23863FAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F60, &qword_23877A038);
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_238758BB0();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_238757B60();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 1);
  v34 = *v1;
  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v13);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_238439884(v13, &qword_27DF0A0C0, &qword_238771EF0);
    return (*(v3 + 56))(v33, 1, 1, v32);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = *(v1 + 3);
  v34 = *(v1 + 2);
  v35 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F10, &qword_238779EE8);
  sub_23875E1B0();
  sub_23863C054(v7);

  if ((*(v31 + 48))(v7, 1, v8) == 1)
  {
    sub_238439884(v7, &qword_27DF0D358, &unk_23876CF80);
    (*(v15 + 8))(v17, v14);
    return (*(v3 + 56))(v33, 1, 1, v32);
  }

  v21 = v10;
  v22 = v31;
  v23 = *(v31 + 32);
  v24 = v21;
  v29 = v21;
  v25 = v23();
  MEMORY[0x28223BE20](v25);
  *(&v29 - 4) = v17;
  *(&v29 - 3) = v24;
  *(&v29 - 2) = v2;
  type metadata accessor for ConsentStatusView(0);
  sub_23864ADA0(&qword_27DF11F68, type metadata accessor for ConsentStatusView, &unk_23877A298);
  v26 = v30;
  sub_23875E3D0();
  v28 = v32;
  v27 = v33;
  (*(v3 + 32))(v33, v26, v32);
  (*(v3 + 56))(v27, 0, 1, v28);
  (*(v22 + 8))(v29, v8);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_23863FFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F08, &unk_238779ED8);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_238758BB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 24);
  v37 = *(v1 + 16);
  v38 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F10, &qword_238779EE8);
  sub_23875E1B0();
  sub_23863C054(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &qword_27DF0D358, &unk_23876CF80);
    return (*(v3 + 56))(v35, 1, 1, v34);
  }

  (*(v13 + 32))(v15, v11, v12);
  type metadata accessor for InstitutionConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  sub_23875EED0();
  sub_23875EF00();
  (*(v6 + 8))(v8, v5);
  if (v37 == v36)
  {
    (*(v13 + 8))(v15, v12);
    return (*(v3 + 56))(v35, 1, 1, v34);
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v18 = qword_2814F1B90;
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

  v23 = sub_23875EA80();
  v25 = v24;

  v37 = v23;
  v38 = v25;
  MEMORY[0x28223BE20](v26);
  *(&v33 - 2) = v2;
  *(&v33 - 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F18, &qword_238779EF0);
  v27 = sub_23864B840();
  sub_2384397A8(v27, v28, v29);
  v30 = v33;
  sub_23875E3A0();
  v32 = v34;
  v31 = v35;
  (*(v3 + 32))(v35, v30, v34);
  (*(v3 + 56))(v31, 0, 1, v32);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_238640514@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  v10 = sub_238757B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v1[1];
  v21 = *v1;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &qword_27DF0A0C0, &qword_238771EF0);
    v15 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(&v6[v3[7]], v13, v10);
    *v6 = swift_getKeyPath(aP_16);
    v6[8] = 0;
    v16 = v3[5];
    *&v6[v16] = swift_getKeyPath(aP_15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v17 = &v6[v3[6]];
    v20[8] = 0;
    sub_23875E1A0();
    (*(v11 + 8))(v13, v10);
    v18 = v22;
    *v17 = v21;
    *(v17 + 1) = v18;
    sub_23864B704(v6, a1, type metadata accessor for RevokeConsentSection);
    v15 = 0;
  }

  return (*(v4 + 56))(a1, v15, 1, v3);
}

double sub_238640834@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = type metadata accessor for InstitutionConsentManagementListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for BankConnectAuthorizationReconsentView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v7 + 20);
  v11 = sub_238757B60();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  sub_238758B90();
  sub_23864AED4(v16[0], v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstitutionConsentManagementListView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_23864B704(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for InstitutionConsentManagementListView);
  *v9 = 0;
  v14 = &v9[*(v7 + 28)];
  *v14 = sub_23864B798;
  v14[1] = v13;
  sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
  sub_23875DE20();
  sub_23864AF3C(v9, type metadata accessor for BankConnectAuthorizationReconsentView);

  return result;
}

uint64_t sub_238640AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = sub_238758BB0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for InstitutionConsentManagementListView(0);
  sub_23843981C(v5, v2, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1C0();
  return sub_238439884(v5, &qword_27DF0D358, &unk_23876CF80);
}

uint64_t sub_238640C20()
{
  v0 = sub_23875A9F0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238758BD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17[3] = sub_23875A820();
  v17[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_23875A7F0();
  v8 = objc_allocWithZone(sub_23875A060());
  v9 = sub_23875A030();
  sub_238758530();
  v10 = sub_23875A9E0();
  v12 = v11;
  (*(v1 + 8))(v3, v0);
  *v7 = v10;
  v7[1] = v12;
  (*(v5 + 104))(v7, *MEMORY[0x277CC7288], v4);
  v13 = sub_23875A050();

  (*(v5 + 8))(v7, v4);
  if (sub_238758550())
  {
    v14 = sub_238758560() & (v13 ^ 1);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_238640E4C()
{
  v1 = sub_23875BC40();
  v19 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875AAF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = v0[1];
  v21[0] = *v0;
  v21[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v10);

  v12 = sub_238757B60();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_238439884(v10, &qword_27DF0A0C0, &qword_238771EF0);
    v14 = 0;
  }

  else
  {
    v17[1] = sub_238757B40();
    v18 = v1;
    (*(v13 + 8))(v10, v12);
    sub_23875AAE0();
    type metadata accessor for InstitutionConsentManagementListView(0);
    sub_2384D51D8(v21);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v15 = sub_238758A10();
    sub_23875BBF0();
    v20[3] = sub_2387588D0();
    v20[4] = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(v20);
    sub_2387588C0();
    v14 = sub_23875AAC0();

    (*(v19 + 8))(v3, v18);
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14 & 1;
}

double sub_238641198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for ConsentStatusView(0);
  v7 = v6[6];
  v8 = sub_238757B60();
  (*(*(v8 - 8) + 16))(a3 + v7, a1, v8);
  v9 = v6[7];
  v10 = sub_238758BB0();
  (*(*(v10 - 8) + 16))(a3 + v9, a2, v10);
  type metadata accessor for InstitutionConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1D0();
  *a3 = swift_getKeyPath(aP_16);
  *(a3 + 8) = 0;
  v11 = v6[5];
  *(a3 + v11) = swift_getKeyPath(aP_15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();

  return result;
}

double sub_238641354@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a2;
  v16 = a1;
  v19 = a3;
  v3 = type metadata accessor for InstitutionConsentManagementListView(0);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_238758BB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  MEMORY[0x28223BE20](v18);
  sub_23875ED50();
  v17 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  v9 = v16;
  sub_23875C500();
  swift_getKeyPath(byte_238779F18);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v5);
  sub_23864AED4(v9, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstitutionConsentManagementListView);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = (v7 + *(v15 + 80) + v10) & ~*(v15 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v10, v8, v5);
  sub_23864B704(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for InstitutionConsentManagementListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F30, &qword_238779EF8);
  sub_23843A3E8(&qword_27DF11F50, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D0]);
  sub_23864B8C4();
  sub_23875E370();

  return result;
}

double sub_2386416CC@<D0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v20[1] = a2;
  v5 = sub_238759970();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238641994(v12, a3);
  sub_238758B70();
  (*(v6 + 104))(v8, *MEMORY[0x277CC7B68], v5);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70], MEMORY[0x277CC7B78]);
  sub_23875EC40();
  sub_23875EC40();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v11, v5);
  v14 = LOWORD(v21[0]) == v22;
  KeyPath = swift_getKeyPath(byte_238779F40);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  a3[12] = KeyPath;
  a3[13] = sub_23864BB6C;
  a3[14] = v16;
  v17 = swift_getKeyPath(byte_238779F70);
  type metadata accessor for InstitutionConsentManagementListView(0);
  sub_2384D51D8(v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v18 = sub_238758A10();
  a3[15] = v17;
  a3[16] = v18;
  __swift_destroy_boxed_opaque_existential_1(v21);

  return result;
}

id sub_238641994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_23875A9F0();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758BD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238758680();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = swift_getKeyPath(byte_238779FA0, v13);
  *(a2 + 72) = 0;
  *(a2 + 80) = swift_getKeyPath(asc_238779FC8);
  *(a2 + 88) = 0;
  v16 = a1;
  sub_238758690();
  v32 = v16;
  result = [v32 managedObjectContext];
  if (result)
  {
    v18 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11920, &qword_2387793B8);
    swift_allocObject();
    *a2 = sub_238629668(v32, v18, sub_2386457F4, 0);
    *(a2 + 8) = 0;
    sub_238758570();
    if (v19)
    {

      v33[3] = sub_23875A820();
      v33[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v33);
      sub_23875A7F0();
      v20 = objc_allocWithZone(sub_23875A060());
      v21 = sub_23875A030();
      v30 = v15;
      v22 = v21;
      sub_238758530();
      v23 = sub_23875A9E0();
      v29 = v11;
      v24 = v7;
      v26 = v25;
      (*(v4 + 8))(v6, v31);
      *v10 = v23;
      v10[1] = v26;
      (*(v8 + 104))(v10, *MEMORY[0x277CC7288], v24);
      LOBYTE(v23) = sub_23875A050();

      (*(v8 + 8))(v10, v24);
      result = (*(v12 + 8))(v30, v29);
      v27 = v23 & 1;
    }

    else
    {

      result = (*(v12 + 8))(v15, v11);
      v27 = 0;
    }

    *(a2 + 16) = v27;
    *(a2 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_238641D38()
{
  v19 = sub_238758BB0();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD0, &qword_238779C68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  type metadata accessor for MultipleConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF11DE0, &qword_27DF11DD0, &qword_238779C68, MEMORY[0x277CDD8D8]);
  v7 = sub_23875EEE0();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v21 = MEMORY[0x277D84F90];
  sub_2385FEF18(0, v7 & ~(v7 >> 63), 0);
  v9 = v21;
  result = sub_23875EED0();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v4;
    v18 = v0 + 32;
    do
    {
      v11 = sub_23875EF20();
      v13 = *v12;
      v11(v20, 0);
      sub_238758BC0();
      v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2385FEF18((v14 > 1), v15 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v15 + 1;
      (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v15, v2, v19);
      sub_23875EF10();
      --v8;
    }

    while (v8);
    (*(v17 + 8))(v6, v3);
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_23864204C()
{
  v19 = sub_238758680();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  type metadata accessor for MultipleConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D8]);
  v7 = sub_23875EEE0();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v21 = MEMORY[0x277D84F90];
  sub_2385FE488(0, v7 & ~(v7 >> 63), 0);
  v9 = v21;
  result = sub_23875EED0();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v4;
    v18 = v0 + 32;
    do
    {
      v11 = sub_23875EF20();
      v13 = *v12;
      v11(v20, 0);
      sub_238758690();
      v21 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2385FE488((v14 > 1), v15 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v15 + 1;
      (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v15, v2, v19);
      sub_23875EF10();
      --v8;
    }

    while (v8);
    (*(v17 + 8))(v6, v3);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_238642360@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = type metadata accessor for MultipleConsentManagementListView(0);
  v78 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v80 = v3;
  v81 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v58 - v5;
  v6 = sub_23875CE00();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F70, &qword_23877A040);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F78, &qword_23877A048);
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v69 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F80, &qword_23877A050);
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v84 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F88, &qword_23877A058);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v77 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - v16;
  v18 = sub_238757B60();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v76 = v2;
  v24 = (v1 + *(v2 + 28));
  v26 = *v24;
  v25 = v24[1];
  v86 = v26;
  v87 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &qword_27DF0A0C0, &qword_238771EF0);
    v27 = 1;
  }

  else
  {
    v64 = v12;
    v60 = v19;
    v28 = *(v19 + 32);
    v61 = v19 + 32;
    v62 = v28;
    v65 = v23;
    v59 = v18;
    v29 = (v28)(v23, v17, v18);
    v63 = v13;
    MEMORY[0x28223BE20](v29);
    v58 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F90, &qword_23877A060);
    sub_23843A3E8(&qword_27DF11F98, &qword_27DF11F90, &qword_23877A060, MEMORY[0x277CE14C0]);
    v30 = v67;
    sub_23875D9C0();
    v86 = sub_238757B50();
    v87 = v31;
    v32 = sub_23843A3E8(&qword_27DF11FA0, &qword_27DF11F70, &qword_23877A040, MEMORY[0x277CDE5A0]);
    v35 = sub_2384397A8(v32, v33, v34);
    v36 = v69;
    v37 = v70;
    sub_23875DC70();

    (*(v68 + 8))(v30, v37);
    v39 = v72;
    v38 = v73;
    v40 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277CDDDC0], v74);
    v86 = v37;
    v87 = MEMORY[0x277D837D0];
    v88 = v32;
    v89 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = v75;
    sub_23875DE50();
    (*(v38 + 8))(v39, v40);
    (*(v71 + 8))(v36, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
    v43 = v58;
    v44 = v79;
    sub_23875E1D0();
    v45 = v60;
    v46 = v66;
    v47 = v59;
    (*(v60 + 16))(v66, v65, v59);
    v48 = v81;
    sub_23864AED4(v43, v81, type metadata accessor for MultipleConsentManagementListView);
    v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v50 = (v20 + *(v78 + 80) + v49) & ~*(v78 + 80);
    v51 = swift_allocObject();
    v62(v51 + v49, v46, v47);
    sub_23864B704(v48, v51 + v50, type metadata accessor for MultipleConsentManagementListView);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EB0, &qword_238779E70);
    v86 = v42;
    v87 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268], MEMORY[0x277CC7270]);
    v52 = type metadata accessor for BankConnectAuthorizationReconsentView(255);
    v53 = sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
    v86 = v52;
    v87 = v53;
    v12 = v64;
    swift_getOpaqueTypeConformance2();
    v54 = v77;
    v55 = v83;
    v56 = v84;
    sub_23875DEE0();

    sub_238439884(v44, &qword_27DF11E68, &qword_238779E30);
    (*(v82 + 8))(v56, v55);
    (*(v45 + 8))(v65, v47);
    v13 = v63;
    (*(v63 + 32))(v85, v54, v12);
    v27 = 0;
  }

  return (*(v13 + 56))(v85, v27, 1, v12);
}

double sub_238642DF4@<D0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EC8, &qword_238779E78);
  MEMORY[0x28223BE20](v1 - 8);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11ED8, &qword_238779E88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FA8, &qword_23877A068);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EE8, &qword_238779E98);
  MEMORY[0x28223BE20](v21 - 8);
  v42 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v40 - v24;
  sub_23875ED50();
  v43 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238643340(v25);
  sub_238643A08(v20);
  v26 = sub_238644620();
  if (v26)
  {
    sub_23864B7C4(v26, v27, v28);
    sub_23875E3D0();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11EF0, &qword_238779EA0);
  (*(*(v30 - 8) + 56))(v11, v29, 1, v30);
  sub_2384396E4(v11, v14, &qword_27DF11ED8, &qword_238779E88);
  sub_238643F04(v5);
  v41 = v25;
  v31 = v25;
  v32 = v42;
  sub_23843981C(v31, v42, &qword_27DF11EE8, &qword_238779E98);
  v33 = v20;
  sub_23843981C(v20, v17, &qword_27DF11FA8, &qword_23877A068);
  sub_23843981C(v14, v8, &qword_27DF11ED8, &qword_238779E88);
  v34 = v44;
  sub_23843981C(v5, v44, &qword_27DF11EC8, &qword_238779E78);
  v35 = v14;
  v36 = v17;
  v37 = v45;
  sub_23843981C(v32, v45, &qword_27DF11EE8, &qword_238779E98);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FB0, &qword_23877A070);
  sub_23843981C(v36, v37 + v38[12], &qword_27DF11FA8, &qword_23877A068);
  sub_23843981C(v8, v37 + v38[16], &qword_27DF11ED8, &qword_238779E88);
  sub_23843981C(v34, v37 + v38[20], &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v5, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v35, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v33, &qword_27DF11FA8, &qword_23877A068);
  sub_238439884(v41, &qword_27DF11EE8, &qword_238779E98);
  sub_238439884(v34, &qword_27DF11EC8, &qword_238779E78);
  sub_238439884(v8, &qword_27DF11ED8, &qword_238779E88);
  sub_238439884(v36, &qword_27DF11FA8, &qword_23877A068);
  sub_238439884(v32, &qword_27DF11EE8, &qword_238779E98);

  return result;
}

uint64_t sub_238643340@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_238757B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v46 - v10;
  v65 = sub_23875A9F0();
  v58 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_238758BD0();
  v12 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_238758680();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23864204C();
  v62 = v19[2];
  if (v62)
  {
    v47 = v5;
    v48 = v7;
    v49 = v6;
    v50 = v1;
    v53 = a1;
    v66 = v19;
    v61 = sub_23875ED50();
    result = v66;
    v21 = 0;
    v60 = v66 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    ++v58;
    v59 = v16 + 16;
    v57 = *MEMORY[0x277CC7288];
    v55 = (v12 + 8);
    v56 = (v12 + 104);
    v54 = (v16 + 8);
    while (1)
    {
      if (v21 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v60 + *(v16 + 72) * v21;
      v23 = v16;
      v24 = *(v16 + 16);
      v25 = v15;
      v24(v18, v22, v15);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v67[3] = sub_23875A820();
      v67[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v67);
      sub_23875A7F0();
      v26 = objc_allocWithZone(sub_23875A060());
      v27 = sub_23875A030();
      v28 = v63;
      sub_238758530();
      v29 = sub_23875A9E0();
      v31 = v30;
      (*v58)(v28, v65);
      *v14 = v29;
      v14[1] = v31;
      v32 = v64;
      (*v56)(v14, v57, v64);
      v33 = sub_23875A050();

      (*v55)(v14, v32);
      if (sub_238758550())
      {
        v34 = sub_238758560();
        v15 = v25;
        (*v54)(v18, v25);

        if (!(v33 & 1 | ((v34 & 1) == 0)))
        {

          v35 = (v50 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
          v37 = *v35;
          v36 = v35[1];
          v67[0] = v37;
          v67[1] = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
          sub_23875E1B0();
          v38 = v47;
          sub_23863BBE8(v47);

          v39 = v48;
          v40 = v49;
          if ((*(v48 + 48))(v38, 1, v49) == 1)
          {
            sub_238439884(v38, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_13:
            v41 = 1;
            a1 = v53;
            goto LABEL_16;
          }

          v42 = v51;
          (*(v39 + 32))(v51, v38, v40);
          v43 = sub_23864204C();
          v44 = v52;
          (*(v39 + 16))(v52, v42, v40);
          a1 = v53;
          AccountMismatchedInformationTileView.init(accounts:institution:)(v43, v44, v53);
          (*(v39 + 8))(v42, v40);
          v41 = 0;
          goto LABEL_16;
        }
      }

      else
      {
        v15 = v25;
        (*v54)(v18, v25);
      }

      ++v21;
      v16 = v23;
      result = v66;
      if (v62 == v21)
      {

        goto LABEL_13;
      }
    }
  }

  v41 = 1;
LABEL_16:
  v45 = type metadata accessor for AccountMismatchedInformationTileView(0);
  return (*(*(v45 - 8) + 56))(a1, v41, 1, v45);
}

uint64_t sub_238643A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for MultipleConsentManagementListView(0);
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = v5;
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FB8, &qword_23877A078);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_238757B60();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *(v4 + 36);
  v35 = v2;
  v19 = (v2 + v18);
  v21 = *v19;
  v20 = v19[1];
  v42 = v21;
  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0A0C0, &qword_238771EF0);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    v24 = v38;
    v34 = v6;
    v25 = *(v12 + 32);
    v25(v17, v10, v11);
    v26 = v35;
    v42 = sub_238641D38();
    (*(v12 + 16))(v14, v17, v11);
    sub_23864AED4(v26, v24, type metadata accessor for MultipleConsentManagementListView);
    v27 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v28 = (v13 + *(v36 + 80) + v27) & ~*(v36 + 80);
    v29 = swift_allocObject();
    v25((v29 + v27), v14, v11);
    sub_23864B704(v24, v29 + v28, type metadata accessor for MultipleConsentManagementListView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FC0, &qword_23877A080);
    sub_23875BCB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11FC8, &qword_23877A088);
    sub_23843A3E8(&qword_27DF11FD0, &qword_27DF11FC0, &qword_23877A080, MEMORY[0x277D83980]);
    sub_23864C0CC();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268], MEMORY[0x277CC7270]);
    v30 = v39;
    v6 = v34;
    sub_23875E380();
    (*(v12 + 8))(v17, v11);
    v31 = v40;
    (*(v40 + 32))(v41, v30, v6);
    v22 = 0;
    v23 = v31;
  }

  return (*(v23 + 56))(v41, v22, 1, v6);
}

uint64_t sub_238643F04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8];
  v10 = sub_238757B60();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (v1 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
  v16 = *v14;
  v15 = v14[1];
  v23 = v16;
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &qword_27DF0A0C0, &qword_238771EF0);
    v17 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(&v6[v3[7]], v13, v10);
    *v6 = swift_getKeyPath(aP_16);
    v6[8] = 0;
    v18 = v3[5];
    *&v6[v18] = swift_getKeyPath(aP_15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v19 = &v6[v3[6]];
    v22[8] = 0;
    sub_23875E1A0();
    (*(v11 + 8))(v13, v10);
    v20 = v24;
    *v19 = v23;
    *(v19 + 1) = v20;
    sub_23864B704(v6, a1, type metadata accessor for RevokeConsentSection);
    v17 = 0;
  }

  return (*(v4 + 56))(a1, v17, 1, v3);
}

double sub_238644234@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = type metadata accessor for MultipleConsentManagementListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for BankConnectAuthorizationReconsentView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v7 + 20);
  v11 = sub_238757B60();
  (*(*(v11 - 8) + 16))(&v9[v10], a1, v11);
  sub_238758B90();
  sub_23864AED4(v16[0], v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MultipleConsentManagementListView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_23864B704(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MultipleConsentManagementListView);
  *v9 = 0;
  v14 = &v9[*(v7 + 28)];
  *v14 = sub_23864BBE4;
  v14[1] = v13;
  sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
  sub_23875DE20();
  sub_23864AF3C(v9, type metadata accessor for BankConnectAuthorizationReconsentView);

  return result;
}

uint64_t sub_2386444E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  v6 = sub_238758BB0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MultipleConsentManagementListView(0);
  sub_23843981C(v5, v2, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  sub_23875E1C0();
  return sub_238439884(v5, &qword_27DF0D358, &unk_23876CF80);
}

uint64_t sub_238644620()
{
  v1 = sub_23875BC40();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875AAF0();
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = (v0 + *(type metadata accessor for MultipleConsentManagementListView(0) + 28));
  v13 = *v11;
  v12 = v11[1];
  v24[0] = v13;
  v24[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E90, &qword_238779E60);
  sub_23875E1B0();
  sub_23863BBE8(v10);

  v14 = sub_238757B60();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_238439884(v10, &qword_27DF0A0C0, &qword_238771EF0);
    v16 = 0;
  }

  else
  {
    sub_238757B40();
    v20 = v1;
    v21 = v5;
    (*(v15 + 8))(v10, v14);
    sub_23875AAE0();
    sub_2384D51D8(v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v17 = sub_238758A10();
    sub_23875BBF0();
    v23[3] = sub_2387588D0();
    v23[4] = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2387588C0();
    v16 = sub_23875AAC0();

    (*(v2 + 8))(v4, v20);
    (*(v22 + 8))(v7, v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v16 & 1;
}

void sub_238644974(uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E1A0();

  *a2 = v3;
  *(a2 + 8) = v4;
}

double sub_238644A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for MultipleConsentView(0);
  sub_23864ADA0(&qword_27DF11FE0, type metadata accessor for MultipleConsentView, &unk_23877A248);
  sub_23875E3D0();

  return result;
}

double sub_238644B70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v29 = a1;
  v30 = a2;
  v34 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v25 - v5;
  v28 = sub_238758BB0();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238757B60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v12;
  v27 = v10;
  v13 = *(v10 + 16);
  v14 = v9;
  v13(v12, v29, v9);
  v29 = v6;
  v15 = *(v6 + 16);
  v16 = v28;
  v15(v8, v30, v28);
  type metadata accessor for MultipleConsentManagementListView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);
  v17 = v33;
  sub_23875E1D0();
  v18 = v16;
  v19 = v17;
  v20 = v34;
  v13(v34, v12, v14);
  v21 = type metadata accessor for MultipleConsentView(0);
  v15((v20 + *(v21 + 20)), v8, v18);
  sub_23843981C(v19, v20 + *(v21 + 24), &qword_27DF11E68, &qword_238779E30);
  v22 = sub_238758BA0();
  sub_2386ED9B8(v22, v23);

  sub_238759780();
  sub_23875C4F0();
  sub_238439884(v19, &qword_27DF11E68, &qword_238779E30);
  (*(v29 + 8))(v8, v18);
  (*(v27 + 8))(v26, v14);

  return result;
}

uint64_t sub_238644EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for MultipleConsentView(0);
  v4 = v3 - 8;
  v38 = *(v3 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  MEMORY[0x28223BE20](v40);
  v35[1] = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12118, &qword_23877A4C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v13 = type metadata accessor for ConsentStatusView(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v20 = v14[8];
  v21 = sub_238757B60();
  (*(*(v21 - 8) + 16))(&v19[v20], v2, v21);
  v22 = *(v4 + 28);
  v23 = v14[9];
  v24 = sub_238758BB0();
  (*(*(v24 - 8) + 16))(&v19[v23], v2 + v22, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  sub_23875E310();
  *v19 = swift_getKeyPath(aP_16);
  v19[8] = 0;
  v25 = v14[7];
  *&v19[v25] = swift_getKeyPath(aP_15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  swift_getKeyPath(byte_238779F18);
  v26 = v36;
  sub_23864AED4(v2, v36, type metadata accessor for MultipleConsentView);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = swift_allocObject();
  sub_23864B704(v26, v28 + v27, type metadata accessor for MultipleConsentView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11F40, qword_238779F00);
  sub_23843A3E8(&qword_27DF11F50, &qword_27DF09E80, &unk_2387686A0, MEMORY[0x277CDD8D0]);
  sub_23864B97C();
  sub_23875E370();
  sub_23864AED4(v19, v16, type metadata accessor for ConsentStatusView);
  v29 = *(v8 + 16);
  v30 = v39;
  v29(v39, v12, v7);
  v31 = v41;
  sub_23864AED4(v16, v41, type metadata accessor for ConsentStatusView);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12120, &qword_23877A4D0);
  v29((v31 + *(v32 + 48)), v30, v7);
  v33 = *(v8 + 8);
  v33(v12, v7);
  sub_23864AF3C(v19, type metadata accessor for ConsentStatusView);
  v33(v30, v7);
  return sub_23864AF3C(v16, type metadata accessor for ConsentStatusView);
}

void sub_23864542C(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_238759970();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238641994(v11, a2);
  type metadata accessor for MultipleConsentView(0);
  sub_238758B70();
  (*(v5 + 104))(v7, *MEMORY[0x277CC7B68], v4);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70], MEMORY[0x277CC7B78]);
  sub_23875EC40();
  sub_23875EC40();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  v13 = v16[7] == v16[6];
  KeyPath = swift_getKeyPath(byte_238779F40);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;

  a2[12] = KeyPath;
  a2[13] = sub_23864D8B8;
  a2[14] = v15;
}

uint64_t sub_2386456A8()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 80);
  if (*(v0 + 88) != 1)
  {

    sub_23875EFF0();
    v6 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_2386457F4(void *a1)
{
  v1 = a1;

  return sub_238758690();
}

uint64_t sub_23864582C@<X0>(uint64_t a1@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12040, &qword_23877A338);
  MEMORY[0x28223BE20](v35);
  v34 = v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12048, &unk_23877A340);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - v8;
  v10 = sub_238758680();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - v15;
  v17 = *(v1 + 8);
  v36 = *v1;
  v37 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12050, &unk_23877A350);
  sub_23875E1B0();
  sub_23863C4C0(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &qword_27DF09520, &unk_2387637E0);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  else
  {
    v31 = v5;
    v32 = a1;
    v30[0] = v4;
    v19 = (*(v11 + 32))(v16, v9, v10);
    v30[1] = v30;
    MEMORY[0x28223BE20](v19);
    v30[-2] = v16;
    v30[-1] = v1;
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    (*(v11 + 16))(v13, v16, v10);
    v20 = *(v1 + 24);
    LOBYTE(v40) = *(v1 + 16);
    v41 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    sub_23875E1D0();
    v21 = v34;
    AccountConsentManagementView.init(account:dismissedMismatchedAccountSettingsTile:)(v13, v36, v37, v38, v34);
    KeyPath = swift_getKeyPath(byte_238779F70);
    sub_2384D51D8(&v36);
    __swift_project_boxed_opaque_existential_1(&v36, v39);
    v23 = sub_238758A10();
    v24 = (v21 + *(v35 + 36));
    *v24 = KeyPath;
    v24[1] = v23;
    __swift_destroy_boxed_opaque_existential_1(&v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12058, &qword_23877A360);
    sub_23843A3E8(&qword_27DF12060, &qword_27DF12058, &qword_23877A360, MEMORY[0x277CE1138]);
    sub_23864CC14();
    v25 = v33;
    sub_23875C750();
    v26 = v31;
    v27 = v32;
    v28 = v25;
    v29 = v30[0];
    (*(v31 + 32))(v32, v28, v30[0]);
    (*(v26 + 56))(v27, 0, 1, v29);
    return (*(v11 + 8))(v16, v10);
  }
}

double sub_238645D40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875CE60();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12070, &qword_23877A368);
  sub_238645E1C(a1, a2, a3 + *(v6 + 44));

  return result;
}

double sub_238645E1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v5 = sub_23875B4E0();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x28223BE20](v5);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v10 = sub_238757FC0();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12078, &qword_23877A370);
  MEMORY[0x28223BE20](v74);
  v70 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12080, &qword_23877A378);
  MEMORY[0x28223BE20](v14);
  v71 = (&v59 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12088, &qword_23877A380);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12090, &qword_23877A388);
  MEMORY[0x28223BE20](v22 - 8);
  v75 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  sub_23875ED50();
  v73 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v26 = sub_23875D030();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12098, &unk_23877A390);
  sub_238646648(a1, &v26[*(v27 + 44)]);
  v28 = *(a2 + 24);
  LOBYTE(v80) = *(a2 + 16);
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  if ((v78 & 1) != 0 || (sub_238640C20() & 1) == 0)
  {
    v35 = sub_238758560();
    v80 = sub_238646E58(v35 & 1);
    v81 = v36;
    sub_2384397A8(v80, v36, v37);
    v62 = v14;
    v59 = sub_23875DAA0();
    v63 = v21;
    v60 = v38;
    v61 = v39;
    v80 = v59;
    v81 = v38;
    v64 = v18;
    v41 = v40 & 1;
    v82 = v40 & 1;
    v83 = v39;
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_23875F470();

    v78 = 0xD000000000000024;
    v79 = 0x800000023878E3F0;
    sub_2387585C0();
    v42 = sub_238757FB0();
    v44 = v43;
    (*(v65 + 8))(v12, v66);
    v76 = v42;
    v77 = v44;
    sub_23875B4B0();
    v45 = v67;
    sub_23875B4D0();
    v46 = v69;
    v47 = *(v68 + 8);
    v47(v9, v69);
    v48 = sub_23875F220();
    v47(v45, v46);

    v76 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
    sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83958]);
    v49 = sub_23875E980();
    v51 = v50;

    MEMORY[0x23EE63650](v49, v51);

    v52 = v70;
    sub_23875DE00();

    v53 = v41;
    v21 = v63;
    v18 = v64;
    sub_2384397FC(v59, v60, v53);

    *(v52 + *(v74 + 36)) = sub_23875D440();
    sub_23843981C(v52, v71, &qword_27DF12078, &qword_23877A370);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_23864CCFC();
    sub_23864CDB4();
    sub_23875D1B0();
    sub_238439884(v52, &qword_27DF12078, &qword_23877A370);
  }

  else
  {
    v29 = sub_23875E0D0();
    v30 = sub_23875DFF0();
    KeyPath = swift_getKeyPath(aH_10);
    v32 = sub_23875D8F0();
    v33 = swift_getKeyPath(asc_23877A3F8);
    v34 = v71;
    *v71 = v29;
    v34[1] = KeyPath;
    v34[2] = v30;
    v34[3] = v33;
    v34[4] = v32;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_23864CCFC();
    sub_23864CDB4();
    sub_23875D1B0();
  }

  v54 = v75;
  sub_23843981C(v26, v75, &qword_27DF12090, &qword_23877A388);
  sub_23843981C(v21, v18, &qword_27DF12088, &qword_23877A380);
  v55 = v72;
  sub_23843981C(v54, v72, &qword_27DF12090, &qword_23877A388);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120B8, &qword_23877A3C0);
  v57 = v55 + *(v56 + 48);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_23843981C(v18, v55 + *(v56 + 64), &qword_27DF12088, &qword_23877A380);
  sub_238439884(v21, &qword_27DF12088, &qword_23877A380);
  sub_238439884(v26, &qword_27DF12090, &qword_23877A388);
  sub_238439884(v18, &qword_27DF12088, &qword_23877A380);
  sub_238439884(v54, &qword_27DF12090, &qword_23877A388);

  return result;
}

double sub_238646648@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120C0, &qword_23877A428);
  MEMORY[0x28223BE20](v77);
  v79 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = v63 - v5;
  v6 = sub_23875B4E0();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v63 - v9;
  v11 = sub_238757FC0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = v63 - v18;
  sub_23875ED50();
  v75 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v86 = sub_2387585B0();
  v87 = v19;
  v63[2] = sub_2384397A8(v86, v19, v20);
  v69 = sub_23875DAA0();
  v68 = v21;
  v70 = v22;
  v86 = v69;
  v87 = v21;
  v67 = v23 & 1;
  v88 = v23 & 1;
  v89 = v22;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_23875F470();

  v84 = 0xD00000000000001CLL;
  v85 = 0x800000023878E4A0;
  sub_2387585C0();
  v24 = sub_238757FB0();
  v26 = v25;
  v66 = *(v12 + 8);
  v65 = v11;
  v66(v14, v11);
  v82 = v24;
  v83 = v26;
  sub_23875B4B0();
  v27 = v73;
  sub_23875B4D0();
  v63[1] = a1;
  v28 = *(v74 + 1);
  v64 = v6;
  v28(v10, v6);
  v74 = v28;
  v29 = sub_23875F220();
  v28(v27, v6);

  v82 = v29;
  v30 = v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  v71 = sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0, MEMORY[0x277D83958]);
  v31 = sub_23875E980();
  v33 = v32;

  MEMORY[0x23EE63650](v31, v33);

  sub_23875DE00();

  sub_2384397FC(v69, v68, v67);

  sub_2387585C0();
  v34 = sub_238757FB0();
  v36 = v35;
  v37 = v65;
  v38 = v66;
  v66(v14, v65);
  v86 = v34;
  v87 = v36;
  v69 = sub_23875DAA0();
  v68 = v39;
  v70 = v40;
  v86 = v69;
  v87 = v39;
  v67 = v41 & 1;
  v88 = v41 & 1;
  v89 = v40;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_23875F470();

  v84 = 0xD00000000000001ELL;
  v85 = 0x800000023878E4C0;
  sub_2387585C0();
  v42 = sub_238757FB0();
  v44 = v43;
  v38(v14, v37);
  v82 = v42;
  v83 = v44;
  sub_23875B4B0();
  sub_23875B4D0();
  v45 = v30;
  v46 = v64;
  v47 = v74;
  v74(v45, v64);
  v48 = sub_23875F220();
  v47(v27, v46);

  v82 = v48;
  v49 = sub_23875E980();
  v51 = v50;

  MEMORY[0x23EE63650](v49, v51);

  v52 = v78;
  sub_23875DE00();

  sub_2384397FC(v69, v68, v67);

  v53 = sub_23875D7F0();
  KeyPath = swift_getKeyPath(asc_23877A3F8);
  v55 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120C8, &qword_23877A430) + 36));
  *v55 = KeyPath;
  v55[1] = v53;
  v56 = sub_23875D440();
  v57 = v76;
  *(v52 + *(v77 + 36)) = v56;
  v58 = v81;
  sub_23843981C(v81, v57, &qword_27DF0E838, &unk_23877A3B0);
  v59 = v79;
  sub_23843981C(v52, v79, &qword_27DF120C0, &qword_23877A428);
  v60 = v80;
  sub_23843981C(v57, v80, &qword_27DF0E838, &unk_23877A3B0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120D0, &qword_23877A438);
  sub_23843981C(v59, v60 + *(v61 + 48), &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v52, &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v58, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v59, &qword_27DF120C0, &qword_23877A428);
  sub_238439884(v57, &qword_27DF0E838, &unk_23877A3B0);

  return result;
}

uint64_t sub_238646E58(char a1)
{
  if (a1)
  {
    sub_2386456A8();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v1 = qword_2814F1B90;
  v2 = sub_23875EA50();

  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

double sub_238646F90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v49 = a2;
  v3 = type metadata accessor for ConsentStatusView(0);
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = v4;
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v39 - v6;
  v7 = sub_238759970();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F3A0, &qword_238772530);
  MEMORY[0x28223BE20](v14 - 8);
  v46 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120E0, &qword_23877A460);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v24 = sub_23875CE60();
  *(v24 + 1) = 0x4028000000000000;
  v24[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120E8, &qword_23877A468);
  v26 = v45;
  sub_2386475A0(v45, &v24[*(v25 + 44)]);
  sub_238758B70();
  (*(v8 + 104))(v10, *MEMORY[0x277CC7B68], v7);
  sub_23864ADA0(&qword_27DF11F58, MEMORY[0x277CC7B70], MEMORY[0x277CC7B78]);
  sub_23875EC40();
  sub_23875EC40();
  v27 = *(v8 + 8);
  v27(v10, v7);
  v27(v13, v7);
  if (v51 == v50)
  {
    v28 = v42;
    sub_23864AED4(v26, v42, type metadata accessor for ConsentStatusView);
    v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v30 = swift_allocObject();
    sub_23864B704(v28, v30 + v29, type metadata accessor for ConsentStatusView);
    v31 = v43;
    sub_23875E200();
    v33 = v47;
    v32 = v48;
    (*(v47 + 32))(v18, v31, v48);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v47;
    v32 = v48;
  }

  (*(v33 + 56))(v18, v34, 1, v32);
  sub_23843981C(v24, v21, &qword_27DF120E0, &qword_23877A460);
  v35 = v46;
  sub_23843981C(v18, v46, &qword_27DF0F3A0, &qword_238772530);
  v36 = v49;
  sub_23843981C(v21, v49, &qword_27DF120E0, &qword_23877A460);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120F0, &qword_23877A470);
  sub_23843981C(v35, v36 + *(v37 + 48), &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v18, &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v24, &qword_27DF120E0, &qword_23877A460);
  sub_238439884(v35, &qword_27DF0F3A0, &qword_238772530);
  sub_238439884(v21, &qword_27DF120E0, &qword_23877A460);

  return result;
}

double sub_2386475A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120F8, &qword_23877A478);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_238757B60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for ConsentStatusView(0);
  (*(v10 + 16))(v12, a1 + *(v13 + 24), v9);
  KeyPath = swift_getKeyPath(byte_23877A480);
  v34 = 0;
  *&v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v14 = v40;
  v29 = v41;
  v15 = sub_238757B40();
  v28 = v15;
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  v18 = v34;
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12100, &qword_23877E8F0);
  sub_238647954(a1, &v8[*(v19 + 44)]);
  v20 = v31;
  sub_23843981C(v8, v31, &qword_27DF120F8, &qword_23877A478);
  *&v36 = v15;
  *(&v36 + 1) = v17;
  LOBYTE(v37) = 2;
  *(&v37 + 1) = *v35;
  DWORD1(v37) = *&v35[3];
  v21 = KeyPath;
  *(&v37 + 1) = 0x3FB999999999999ALL;
  *&v38 = KeyPath;
  BYTE8(v38) = v18;
  *(&v38 + 9) = *v33;
  HIDWORD(v38) = *&v33[3];
  v22 = v29;
  *&v39 = v14;
  *(&v39 + 1) = v29;
  v23 = v36;
  v24 = v37;
  v25 = v39;
  a2[2] = v38;
  a2[3] = v25;
  *a2 = v23;
  a2[1] = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12108, &unk_23877A4B0);
  sub_23843981C(v20, a2 + *(v26 + 48), &qword_27DF120F8, &qword_23877A478);
  sub_238558A88(&v36, &v40);
  sub_238439884(v8, &qword_27DF120F8, &qword_23877A478);
  sub_238439884(v20, &qword_27DF120F8, &qword_23877A478);
  v40 = v28;
  v41 = v17;
  v42 = 2;
  *v43 = *v35;
  *&v43[3] = *&v35[3];
  v44 = 0x3FB999999999999ALL;
  v45 = v21;
  v46 = v18;
  *v47 = *v33;
  *&v47[3] = *&v33[3];
  v48 = v14;
  v49 = v22;
  sub_23858D0F0(&v40);

  return result;
}

double sub_238647954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_23875BA10();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v111 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_23875BA40();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_23875BC40();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_238759970();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v118 = &v100 - v11;
  MEMORY[0x28223BE20](v12);
  v117 = &v100 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v100 - v15;
  MEMORY[0x28223BE20](v16);
  v123 = &v100 - v17;
  MEMORY[0x28223BE20](v18);
  v122 = &v100 - v19;
  sub_23875ED50();
  v116 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = type metadata accessor for ConsentStatusView(0);
  v124 = sub_238757B50();
  v125 = v21;
  v121 = sub_2384397A8(v124, v21, v22);
  v23 = sub_23875DAA0();
  v25 = v24;
  v27 = v26;
  sub_23875D980();
  v101 = a1;
  v28 = sub_23875DA60();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_2384397FC(v23, v25, v27 & 1);

  v124 = v28;
  v125 = v30;
  v35 = v32 & 1;
  v36 = MEMORY[0x277D837D0];
  v126 = v35;
  v127 = v34;
  sub_23875DE00();
  sub_2384397FC(v28, v30, v35);

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v37 = swift_allocObject();
  v100 = xmmword_2387632F0;
  *(v37 + 16) = xmmword_2387632F0;
  v38 = v103;
  v101 += *(v20 + 28);
  sub_238758B70();
  v39 = sub_238648430();
  v41 = v40;
  v42 = (*(v104 + 1))(v38, v105);
  *(v37 + 56) = v36;
  v105 = sub_238448C58(v42, v43, v44);
  *(v37 + 64) = v105;
  *(v37 + 32) = v39;
  *(v37 + 40) = v41;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v45 = qword_2814F1B90;
  v103 = qword_2814F1B90;
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v104 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v48 = sub_23875EA50();
  v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

  sub_23875EA80();
  v50 = sub_23875EAA0();
  v52 = v51;

  v124 = v50;
  v125 = v52;
  v53 = sub_23875DAA0();
  v55 = v54;
  v57 = v56;
  sub_23875D7F0();
  v58 = sub_23875DA60();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_2384397FC(v53, v55, v57 & 1);

  v124 = v58;
  v125 = v60;
  v126 = v62 & 1;
  v127 = v64;
  sub_23875DE00();
  sub_2384397FC(v58, v60, v62 & 1);

  v65 = swift_allocObject();
  *(v65 + 16) = v100;
  v66 = v106;
  sub_238758B80();
  v67 = v108;
  sub_23875BA30();
  v68 = v111;
  sub_23875BA00();
  v69 = sub_23875BC00();
  v71 = v70;
  (*(v113 + 8))(v68, v114);
  (*(v110 + 8))(v67, v112);
  (*(v107 + 8))(v66, v109);
  v72 = v105;
  *(v65 + 56) = MEMORY[0x277D837D0];
  *(v65 + 64) = v72;
  *(v65 + 32) = v69;
  *(v65 + 40) = v71;
  v73 = sub_23875EA50();
  v74 = sub_23875EA50();
  v75 = sub_23875EA50();
  v76 = [v103 localizedStringForKey:v73 value:v74 table:v75];

  sub_23875EA80();
  v77 = sub_23875EAA0();
  v79 = v78;

  v124 = v77;
  v125 = v79;
  v80 = sub_23875DAA0();
  v82 = v81;
  LOBYTE(v65) = v83;
  sub_23875D7F0();
  v84 = sub_23875DA60();
  v86 = v85;
  v88 = v87;
  v90 = v89;

  sub_2384397FC(v80, v82, v65 & 1);

  v124 = v84;
  v125 = v86;
  LOBYTE(v80) = v88 & 1;
  v126 = v88 & 1;
  v127 = v90;
  v91 = v115;
  sub_23875DE00();
  sub_2384397FC(v84, v86, v80);

  v92 = v122;
  v93 = v117;
  sub_23843981C(v122, v117, &qword_27DF0E838, &unk_23877A3B0);
  v94 = v123;
  v95 = v118;
  sub_23843981C(v123, v118, &qword_27DF0E838, &unk_23877A3B0);
  v96 = v119;
  sub_23843981C(v91, v119, &qword_27DF0E838, &unk_23877A3B0);
  v97 = v120;
  sub_23843981C(v93, v120, &qword_27DF0E838, &unk_23877A3B0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12110, &qword_23877A4C0);
  sub_23843981C(v95, v97 + *(v98 + 48), &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v96, v97 + *(v98 + 64), &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v91, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v94, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v92, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v96, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v95, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v93, &qword_27DF0E838, &unk_23877A3B0);

  return result;
}

uint64_t sub_238648430()
{
  v1 = sub_238759970();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277CC7B60] || v6 == *MEMORY[0x277CC7B68])
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v7 = qword_2814F1B90;
    v8 = sub_23875EA50();

    v9 = sub_23875EA50();
    v10 = sub_23875EA50();
    v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

    v12 = sub_23875EA80();
    return v12;
  }

  else
  {
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

double sub_23864868C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(type metadata accessor for ConsentStatusView(0) + 28);
  v9 = sub_238758BB0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_23843981C(v7, v4, &qword_27DF0D358, &unk_23876CF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30);
  sub_23875E2F0();
  sub_238439884(v7, &qword_27DF0D358, &unk_23876CF80);

  return result;
}

void sub_23864887C(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

uint64_t sub_238648A24(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_23875C1E0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_23875CDB0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_23875ED50();
  v1[10] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_238648B74, v5, v4);
}

uint64_t sub_238648B74(double a1)
{
  v2 = v1[3];
  v1[13] = type metadata accessor for ConsentStatusView(0);
  v3 = sub_238758BA0();
  v5 = v4;
  v1[14] = v3;
  v1[15] = v4;
  v6 = *v2;
  LOBYTE(v2) = *(v2 + 8);

  if ((v2 & 1) == 0)
  {
    v8 = v1[8];
    v7 = v1[9];
    v9 = v1[7];
    sub_23875EFF0();
    v10 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v7, v9);
    v6 = v1[2];
  }

  v1[16] = v6;
  v11 = swift_task_alloc();
  v1[17] = v11;
  *v11 = v1;
  v11[1] = sub_238648CEC;

  return MEMORY[0x282117DC0](v3, v5);
}

uint64_t sub_238648CEC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_238648E84;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_238648E10;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238648E10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238648E84()
{
  v25 = v0;
  v1 = v0[18];
  v2 = v0[6];

  sub_2384D5160(v2);

  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[15];
  if (v6)
  {
    v9 = v0[14];
    v10 = v0[5];
    v22 = v0[4];
    v23 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    v14 = sub_2384615AC(v9, v8, &v24);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_2383F8000, v4, v5, "Failed to update consent status for consentID %s: %@", v11, 0x16u);
    sub_238439884(v12, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v10 + 8))(v23, v22);
  }

  else
  {
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_2386490EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_238646F90(v2, a2);
  sub_23864AED4(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConsentStatusView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23864B704(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ConsentStatusView);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF120D8, &unk_23877A450) + 36));
  sub_23875C6E0();
  result = sub_23875ED60();
  *v8 = &unk_23877A448;
  v8[1] = v7;
  return result;
}

double sub_23864923C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for RevokeConsentSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12130, &qword_23877A4E0);
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C390();
  v12 = sub_23875C3C0();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  sub_23864AED4(a1, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RevokeConsentSection);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_23864B704(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RevokeConsentSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23875E1F0();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  v20 = sub_23875EA80();
  v22 = v21;

  v37 = v20;
  v38 = v22;
  v23 = (a1 + *(v3 + 24));
  v24 = *v23;
  v25 = *(v23 + 1);
  v35 = v24;
  v36 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v26 = sub_23875E1D0();
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v28 = sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0, MEMORY[0x277CDF028]);
  sub_2384397A8(v28, v29, v30);
  sub_23875DCD0();

  (*(v33 + 8))(v11, v9);

  return result;
}

double sub_238649790(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for RevokeConsentSection(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();

  return result;
}

double sub_2386498A8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11 & 1;
  sub_23875DE00();
  sub_2384397FC(v8, v10, v12);

  return result;
}

double sub_238649AA0(uint64_t a1)
{
  v2 = type metadata accessor for RevokeConsentSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C390();
  v8 = sub_23875C3C0();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_23864AED4(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RevokeConsentSection);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23864B704(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for RevokeConsentSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  sub_23857C358();
  sub_23875E1F0();

  return result;
}

double sub_238649D10(uint64_t a1)
{
  v2 = type metadata accessor for RevokeConsentSection(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23875ED80();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23864AED4(a1, v5, type metadata accessor for RevokeConsentSection);
  sub_23875ED50();
  v10 = sub_23875ED40();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23864B704(v5, v12 + v11, type metadata accessor for RevokeConsentSection);
  sub_2386C3BA4(0, 0, v8, &unk_23877A4F0, v12);

  return result;
}

double sub_238649EF0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8(v5, v6, v7);
  v8 = sub_23875DAA0();
  v10 = v9;
  v12 = v11 & 1;
  sub_23875DE00();
  sub_2384397FC(v8, v10, v12);

  return result;
}

void sub_23864A0E8(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  type metadata accessor for RevokeConsentSection(0);
  v3 = sub_238757B50();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58(v3, v4, v6);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  sub_23875EAA0();

  sub_2384397A8(v12, v13, v14);
  v15 = sub_23875DAA0();
  v17 = v16;
  LOBYTE(v8) = v18;
  v20 = v19;

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v20;
}

void sub_23864A32C(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8(v7, v8, v9);
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v4) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v15;
}

uint64_t sub_23864A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = type metadata accessor for RevokeConsentSection(0);
  v4[5] = swift_task_alloc();
  v5 = sub_23875C1E0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_23875CDB0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_23875ED50();
  v4[12] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x2822009F8](sub_23864A654, v8, v7);
}

uint64_t sub_23864A654()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(v1 + 8);

  if ((v3 & 1) == 0)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    sub_23875EFF0();
    v7 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = v0[2];
  }

  v0[15] = v2;
  v8 = sub_238757B40();
  v10 = v9;
  v0[16] = v9;
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_23864A7BC;

  return MEMORY[0x282117DA0](v8, v10);
}

uint64_t sub_23864A7BC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_23864A960;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_23864A8E0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23864A8E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23864A960()
{
  v29 = v0;
  v1 = v0[18];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[3];

  sub_2384D5160(v2);
  sub_23864AED4(v4, v3, type metadata accessor for RevokeConsentSection);
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  if (v8)
  {
    v27 = v0[8];
    v25 = v0[18];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v14 = 136315394;
    v17 = sub_238757B40();
    v26 = v13;
    v19 = v18;
    sub_23864AF3C(v12, type metadata accessor for RevokeConsentSection);
    v20 = sub_2384615AC(v17, v19, &v28);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v25;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v15 = v22;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to revoke consents for institutionID: %s: %@.", v14, 0x16u);
    sub_238439884(v15, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23EE64DF0](v16, -1, -1);
    MEMORY[0x23EE64DF0](v14, -1, -1);

    (*(v11 + 8))(v27, v26);
  }

  else
  {

    sub_23864AF3C(v12, type metadata accessor for RevokeConsentSection);
    (*(v11 + 8))(v10, v13);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_23864AC24()
{
  sub_23864A32C(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12128, &qword_23877A4D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12130, &qword_23877A4E0);
  v0 = sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0, MEMORY[0x277CDF028]);
  sub_2384397A8(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  return sub_23875E3E0();
}

uint64_t sub_23864ADA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23864ADE8()
{
  result = qword_27DF11DF8;
  if (!qword_27DF11DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11DC8, &qword_238779C60);
    sub_23864ADA0(&qword_27DF11DE8, type metadata accessor for InstitutionConsentManagementListView, &unk_238779DE0);
    sub_23864ADA0(&qword_27DF11DF0, type metadata accessor for MultipleConsentManagementListView, &unk_238779D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11DF8);
  }

  return result;
}

uint64_t sub_23864AED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23864AF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_23864B00C(uint64_t a1)
{
  sub_23864B3E4(319, &qword_27DF11E10, MEMORY[0x277CC6E80], MEMORY[0x277CDD7C8]);
  if (v1 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23864B0F0()
{
  result = qword_27DF11E18;
  if (!qword_27DF11E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E20, &qword_238779D08);
    sub_23864ADE8();
    sub_23845D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11E18);
  }

  return result;
}

void sub_23864B1A4(uint64_t a1)
{
  sub_23864C40C(319, &qword_27DF0A198, &qword_27DF0A1A0, &qword_238765210, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23864C40C(319, &qword_27DF11E40, &qword_27DF11950, &unk_238779D50, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_23864C40C(319, &qword_27DF11E48, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23864B3E4(319, &qword_27DF11E10, MEMORY[0x277CC6E80], MEMORY[0x277CDD7C8]);
            if (v6 <= 0x3F)
            {
              sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23864B3E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23864B470(uint64_t a1)
{
  sub_23864C40C(319, &qword_27DF11E40, &qword_27DF11950, &unk_238779D50, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_23864C40C(319, &qword_27DF11E60, &qword_27DF11940, &qword_2387793C8, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
      if (v3 <= 0x3F)
      {
        sub_23864C40C(319, &qword_27DF0A198, &qword_27DF0A1A0, &qword_238765210, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_23864C40C(319, &qword_27DF11E48, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_23875AAF0();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23864B704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23864B7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11F00;
  if (!qword_27DF11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F00);
  }

  return result;
}

unint64_t sub_23864B840()
{
  result = qword_27DF11F20;
  if (!qword_27DF11F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F18, &qword_238779EF0);
    sub_23864B8C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F20);
  }

  return result;
}

unint64_t sub_23864B8C4()
{
  result = qword_27DF11F28;
  if (!qword_27DF11F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F30, &qword_238779EF8);
    sub_23864B97C();
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F28);
  }

  return result;
}

unint64_t sub_23864B97C()
{
  result = qword_27DF11F38;
  if (!qword_27DF11F38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F40, qword_238779F00);
    sub_23864BA34(v1, v2, v3);
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F38);
  }

  return result;
}

unint64_t sub_23864BA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF11F48;
  if (!qword_27DF11F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11F48);
  }

  return result;
}

double sub_23864BA88@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_238758BB0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InstitutionConsentManagementListView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2386416CC(a1, v9, a2);
}

uint64_t sub_23864BC10(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_63Tm_0()
{
  v1 = sub_238757B60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MultipleConsentManagementListView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  if (*(v0 + v8 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v8));
  }

  else
  {
  }

  v11 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C1E0();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v10 + v6[8];
  v14 = sub_238758BB0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E28, &unk_238779D10);

  v16 = v6[9];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11DD8, &unk_238779C70);
  (*(*(v17 - 8) + 8))(v10 + v16, v17);
  v18 = v6[10];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v19 - 8) + 8))(v10 + v18, v19);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_23864BFCC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_238757B60() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(a2(0) - 8);
  v10 = v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(a1, v3 + v7, v10);
}

unint64_t sub_23864C0CC()
{
  result = qword_27DF11FD8;
  if (!qword_27DF11FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11FC8, &qword_23877A088);
    sub_23864ADA0(&qword_27DF11FE0, type metadata accessor for MultipleConsentView, &unk_23877A248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11FD8);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23864C1DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_23864C224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23864C2B4(uint64_t a1)
{
  sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_238757B60();
      if (v3 <= 0x3F)
      {
        sub_238758BB0();
        if (v4 <= 0x3F)
        {
          sub_23864C40C(319, &qword_27DF11FF8, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23864C40C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_23864C498(uint64_t a1)
{
  sub_23864B3E4(319, &qword_27DF0C9A8, MEMORY[0x277CC7470], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23864B3E4(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2384B49C4();
      if (v3 <= 0x3F)
      {
        sub_238757B60();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23864C5D4(uint64_t a1)
{
  sub_238757B60();
  if (v1 <= 0x3F)
  {
    sub_238758BB0();
    if (v2 <= 0x3F)
    {
      sub_23864C40C(319, &qword_27DF11FF8, &qword_27DF0D358, &unk_23876CF80, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_23864B3E4(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_23864C6E4()
{
  result = qword_27DF12020;
  if (!qword_27DF12020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12028, &qword_23877A1E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E80, &qword_238779E48);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11EB0, &qword_238779E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E78, &qword_238779E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11E70, &qword_238779E38);
    v1 = sub_23843A3E8(&qword_27DF11EA8, &qword_27DF11E70, &qword_238779E38, MEMORY[0x277CDE5A0]);
    sub_2384397A8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268], MEMORY[0x277CC7270]);
    type metadata accessor for BankConnectAuthorizationReconsentView(255);
    sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12020);
  }

  return result;
}

unint64_t sub_23864C940()
{
  result = qword_27DF12030;
  if (!qword_27DF12030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12038, qword_23877A1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F80, &qword_23877A050);
    sub_238758BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11EB0, &qword_238779E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F78, &qword_23877A048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11F70, &qword_23877A040);
    v1 = sub_23843A3E8(&qword_27DF11FA0, &qword_27DF11F70, &qword_23877A040, MEMORY[0x277CDE5A0]);
    sub_2384397A8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23864ADA0(&qword_27DF11EB8, MEMORY[0x277CC7268], MEMORY[0x277CC7270]);
    type metadata accessor for BankConnectAuthorizationReconsentView(255);
    sub_23864ADA0(&qword_27DF11EC0, type metadata accessor for BankConnectAuthorizationReconsentView, &unk_2387822C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12030);
  }

  return result;
}

unint64_t sub_23864CC14()
{
  result = qword_27DF12068;
  if (!qword_27DF12068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12040, &qword_23877A338);
    sub_23864ADA0(&qword_27DF09E98, type metadata accessor for AccountConsentManagementView, &protocol conformance descriptor for AccountConsentManagementView);
    sub_23843A3E8(&qword_2814F0920, &qword_27DF09E68, &unk_23876A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12068);
  }

  return result;
}

unint64_t sub_23864CCFC()
{
  result = qword_27DF120A8;
  if (!qword_27DF120A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF120A0, &unk_23877A3A0);
    sub_238448F8C();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF120A8);
  }

  return result;
}

unint64_t sub_23864CDB4()
{
  result = qword_27DF120B0;
  if (!qword_27DF120B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12078, &qword_23877A370);
    sub_23857C358();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF120B0);
  }

  return result;
}

uint64_t sub_23864CE6C()
{
  v2 = *(type metadata accessor for ConsentStatusView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2384494A4;

  return sub_238648A24(v0 + v3);
}

uint64_t objectdestroy_115Tm()
{
  v1 = type metadata accessor for ConsentStatusView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  v8 = sub_238757B60();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v1[7];
  v10 = sub_238758BB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v4 + v9, v10);
  v13 = v4 + v1[8];

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11E68, &qword_238779E30) + 32);
  if (!(*(v11 + 48))(v13 + v14, 1, v10))
  {
    v12(v13 + v14, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v16, v2 | 7);
}

uint64_t sub_23864D198(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_23864D214(void **a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MultipleConsentView(0);

  sub_23864542C(a1, a2);
}

uint64_t objectdestroy_135Tm()
{
  v1 = type metadata accessor for RevokeConsentSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C1E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_238757B60();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23864D478(uint64_t a1)
{
  v4 = *(type metadata accessor for RevokeConsentSection(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_23864A4D4(a1, v6, v7, v1 + v5);
}

unint64_t sub_23864D568()
{
  result = qword_27DF12140;
  if (!qword_27DF12140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12148, &qword_23877A4F8);
    sub_23843A3E8(&qword_27DF12150, &qword_27DF12048, &unk_23877A340, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12140);
  }

  return result;
}

unint64_t sub_23864D618()
{
  result = qword_27DF12158;
  if (!qword_27DF12158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF120D8, &unk_23877A450);
    sub_23864D6D4();
    sub_23864ADA0(&qword_27DF08DC8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12158);
  }

  return result;
}

unint64_t sub_23864D6D4()
{
  result = qword_27DF12160;
  if (!qword_27DF12160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12168, &qword_23877A500);
    sub_23843A3E8(&qword_27DF12170, &qword_27DF12178, &qword_23877A508, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12160);
  }

  return result;
}

unint64_t sub_23864D784()
{
  result = qword_27DF12190;
  if (!qword_27DF12190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12198, &qword_23877A518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12130, &qword_23877A4E0);
    v1 = sub_23843A3E8(&qword_27DF12138, &qword_27DF12130, &qword_23877A4E0, MEMORY[0x277CDF028]);
    sub_2384397A8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF12190);
  }

  return result;
}

uint64_t sub_23864D8C0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_23875C1E0();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12240, &qword_23876E680);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23864D9F4, 0, 0);
}

uint64_t sub_23864D9F4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = [objc_allocWithZone(MEMORY[0x277CD4E38]) initWithCompletion_];
  v1[28] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  v1[29] = v8;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_23864DC0C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_238449184(0, &qword_27DF0DD80, 0x277CD4E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  sub_23875ECF0();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_238546EC8;
  v1[13] = &block_descriptor_13;
  [v8 startWithCompletionHandler_];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23864DC0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_23864E5D8;
  }

  else
  {
    v2 = sub_23864DD1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_23864DD1C()
{
  v2 = v0[18];
  v3 = [v2 mapItems];
  sub_238449184(0, &qword_27DF12260, 0x277CD4E80);
  v4 = sub_23875EC80();

  v92 = v2;
  v93 = v0;
  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_23875F3A0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v9 = &selRef_returnDeadline;
      do
      {
        if (v7)
        {
          v10 = MEMORY[0x23EE63F70](v6, v4);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v10 = *(v4 + 8 * v6 + 32);
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            result = [v1 v0 + 268];
            if (result)
            {
              v16 = result;
              [result northLat];
              v18 = v17;

              result = [v1 v0 + 268];
              if (result)
              {
                v19 = result;
                [result southLat];
                v21 = v20;

                if (v21 >= v18)
                {
                  v22 = v18;
                }

                else
                {
                  v22 = v21;
                }

                result = [v1 v0 + 268];
                if (result)
                {
                  v23 = result;
                  [result northLat];
                  v25 = v24;

                  result = [v1 v0 + 268];
                  if (result)
                  {
                    v26 = result;
                    [result southLat];
                    v28 = v27;

                    if (v25 > v28)
                    {
                      v29 = v25;
                    }

                    else
                    {
                      v29 = v28;
                    }

                    result = [v1 v0 + 268];
                    if (result)
                    {
                      v30 = result;
                      [result westLng];
                      v32 = v31;

                      result = [v1 v0 + 268];
                      if (result)
                      {
                        v33 = result;
                        [result eastLng];
                        v35 = v34;

                        if (v35 >= v32)
                        {
                          v36 = v32;
                        }

                        else
                        {
                          v36 = v35;
                        }

                        result = [v1 v0 + 268];
                        if (result)
                        {
                          v37 = result;
                          [result westLng];
                          v39 = v38;

                          v91 = v1;
                          result = [v1 v0 + 268];
                          if (result)
                          {
                            v40 = result;
                            v89 = v93[29];
                            v90 = v93[28];

                            [v40 eastLng];
                            v42 = v41;

                            if (v39 <= v42)
                            {
                              v39 = v42;
                            }

                            sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
                            v43 = swift_allocObject();
                            *(v43 + 16) = xmmword_238763310;
                            v44 = MEMORY[0x277D837D0];
                            *(v43 + 56) = MEMORY[0x277D837D0];
                            v47 = sub_238448C58(v43, v45, v46);
                            *(v43 + 64) = v47;
                            *(v43 + 32) = 0xD00000000000003ALL;
                            *(v43 + 40) = 0x800000023878E830;
                            v48 = MEMORY[0x277D839F8];
                            v49 = MEMORY[0x277D83A80];
                            *(v43 + 96) = MEMORY[0x277D839F8];
                            *(v43 + 104) = v49;
                            *(v43 + 72) = v22;
                            *(v43 + 136) = v44;
                            *(v43 + 144) = v47;
                            *(v43 + 112) = 0xD00000000000003ALL;
                            *(v43 + 120) = 0x800000023878E830;
                            *(v43 + 176) = v48;
                            *(v43 + 184) = v49;
                            *(v43 + 152) = v29;
                            v50 = sub_23875EF80();
                            v51 = swift_allocObject();
                            *(v51 + 16) = xmmword_238763310;
                            *(v51 + 56) = v44;
                            *(v51 + 64) = v47;
                            *(v51 + 32) = 0xD00000000000003BLL;
                            *(v51 + 40) = 0x800000023878E890;
                            *(v51 + 96) = v48;
                            *(v51 + 104) = v49;
                            *(v51 + 72) = v36;
                            *(v51 + 136) = v44;
                            *(v51 + 144) = v47;
                            *(v51 + 112) = 0xD00000000000003BLL;
                            *(v51 + 120) = 0x800000023878E890;
                            *(v51 + 176) = v48;
                            *(v51 + 184) = v49;
                            *(v51 + 152) = v39;
                            v52 = sub_23875EF80();
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
                            v53 = swift_allocObject();
                            *(v53 + 16) = xmmword_238763E60;
                            *(v53 + 32) = v50;
                            *(v53 + 40) = v52;
                            v88 = v50;
                            v87 = v52;
                            v54 = sub_23875EC60();

                            v85 = objc_opt_self();
                            v86 = [v85 andPredicateWithSubpredicates_];

                            v55 = swift_allocObject();
                            *(v55 + 16) = xmmword_238763310;
                            v56 = MEMORY[0x277D837D0];
                            *(v55 + 56) = MEMORY[0x277D837D0];
                            *(v55 + 64) = v47;
                            *(v55 + 32) = 0xD000000000000045;
                            *(v55 + 40) = 0x800000023878E8D0;
                            *(v55 + 96) = v48;
                            *(v55 + 104) = v49;
                            *(v55 + 72) = v22;
                            *(v55 + 136) = v56;
                            *(v55 + 144) = v47;
                            *(v55 + 112) = 0xD000000000000045;
                            *(v55 + 120) = 0x800000023878E8D0;
                            *(v55 + 176) = v48;
                            *(v55 + 184) = v49;
                            *(v55 + 152) = v29;
                            v57 = sub_23875EF80();
                            v58 = swift_allocObject();
                            *(v58 + 16) = xmmword_238763310;
                            *(v58 + 56) = v56;
                            *(v58 + 64) = v47;
                            *(v58 + 32) = 0xD000000000000046;
                            *(v58 + 40) = 0x800000023878E920;
                            *(v58 + 96) = v48;
                            *(v58 + 104) = v49;
                            *(v58 + 72) = v36;
                            *(v58 + 136) = v56;
                            *(v58 + 144) = v47;
                            *(v58 + 112) = 0xD000000000000046;
                            *(v58 + 120) = 0x800000023878E920;
                            *(v58 + 176) = v48;
                            *(v58 + 184) = v49;
                            *(v58 + 152) = v39;
                            v59 = sub_23875EF80();
                            v60 = swift_allocObject();
                            *(v60 + 16) = xmmword_238763E60;
                            *(v60 + 32) = v57;
                            *(v60 + 40) = v59;
                            v61 = v57;
                            v62 = v59;
                            v63 = sub_23875EC60();

                            v64 = [v85 andPredicateWithSubpredicates_];

                            v65 = swift_allocObject();
                            *(v65 + 16) = xmmword_238763E60;
                            *(v65 + 32) = v86;
                            *(v65 + 40) = v64;
                            v66 = v86;
                            v67 = v64;
                            v68 = sub_23875EC60();
                            v69 = v93;

                            v70 = [v85 orPredicateWithSubpredicates_];

                            v71 = v89;
                            v72 = v92;
                            goto LABEL_39;
                          }

LABEL_50:
                          __break(1u);
                          return result;
                        }

LABEL_49:
                        __break(1u);
                        goto LABEL_50;
                      }

LABEL_48:
                      __break(1u);
                      goto LABEL_49;
                    }

LABEL_47:
                    __break(1u);
                    goto LABEL_48;
                  }

LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v12 = v4;
        v0 = v9;
        v1 = v10;
        result = [v10 v9[140]];
        if (!result)
        {
          __break(1u);
          goto LABEL_43;
        }

        v14 = result;
        v15 = [result isValid];

        if (v15)
        {
          goto LABEL_14;
        }

        ++v6;
        v9 = v0;
        v4 = v12;
      }

      while (v11 != v5);
    }
  }

  v69 = v93;
  v73 = v93[20];

  sub_23875C140();
  v74 = v73;
  v75 = sub_23875C1B0();
  v76 = sub_23875F000();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v93[20];
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412290;
    *(v78 + 4) = v77;
    *v79 = v77;
    v80 = v77;
    _os_log_impl(&dword_2383F8000, v75, v76, "Location Token Provider: Empty result for completion: %@", v78, 0xCu);
    sub_238439884(v79, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v79, -1, -1);
    MEMORY[0x23EE64DF0](v78, -1, -1);
  }

  v72 = v93[28];
  v71 = v93[29];
  v81 = v93[24];
  v83 = v93[21];
  v82 = v93[22];

  (*(v82 + 1))(v81, v83);
  v70 = [objc_opt_self() predicateWithValue_];
LABEL_39:

  *v69[19] = v70;

  v84 = v69[1];

  return v84();
}