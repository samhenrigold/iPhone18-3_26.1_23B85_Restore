uint64_t sub_252DF2F20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {

    v4 = sub_252DF3350;
  }

  else
  {
    v4 = sub_252DF303C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DF303C()
{
  v1 = *(v0 + 176);
  v25 = sub_252A6F5D8(v1, *(v0 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 232) = v2;
  sub_252BAFC18(v1);
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v5 & 1) != 0))
  {
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = *(v0 + 200);
  v22 = *(v0 + 120);
  v12 = sub_252E36324();
  (*(*(v12 - 8) + 56))(v4, v6, 1, v12);
  v13 = swift_allocObject();
  *(v0 + 240) = v13;
  v13[2] = v11;
  v13[3] = v2;
  v13[4] = v9;
  v13[5] = v8;
  v13[6] = v25;
  v13[7] = v7;
  v13[8] = v10;
  v14 = swift_allocObject();
  *(v0 + 248) = v14;
  v14[2] = v11;
  v14[3] = v2;
  v14[4] = v9;
  v14[5] = v8;
  v14[6] = v10;
  v15 = swift_allocObject();
  *(v0 + 256) = v15;
  v15[2] = &unk_252E475C8;
  v15[3] = v14;
  v15[4] = v25;
  v15[5] = v7;
  v23 = v22[7];
  v24 = v22[8];
  __swift_project_boxed_opaque_existential_1(v22 + 4, v23);
  swift_bridgeObjectRetain_n();
  v16 = v11;
  swift_retain_n();
  swift_retain_n();
  v17 = v16;

  sub_252DF2698(v9, v27, v26);

  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *v18 = v0;
  v18[1] = sub_252DF33C8;
  v19 = *(v0 + 152);
  v20 = *(v0 + 104);

  return sub_252A1DBA0(v20, &unk_252E475C0, v13, &unk_252E475D0, v15, v19, v23, v24);
}

uint64_t sub_252DF3350()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF33C8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[17] + 8))(v2[19], v2[16]);
  if (v0)
  {
    v3 = sub_252DF35DC;
  }

  else
  {
    v3 = sub_252DF3530;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF3530()
{
  v2 = v0[20];
  v1 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252DF35DC()
{

  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF3680(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {

    v5 = sub_252DF3A80;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = sub_252DF37BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF37BC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  sub_25297BB38(*(v0 + 312));
  v7 = v5[7];
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v7);
  sub_252929E74((v5 + 9), v0 + 56);
  v8 = *(v0 + 96);
  v9 = swift_allocObject();
  *(v0 + 320) = v9;
  sub_252927BEC((v0 + 56), (v9 + 2));
  v9[7] = v8;
  v9[8] = v2;
  v9[9] = v3;

  sub_252DF2698(v10, v1, v4);

  v11 = swift_task_alloc();
  *(v0 + 328) = v11;
  *v11 = v0;
  v11[1] = sub_252DF3924;
  v12 = *(v0 + 144);
  v13 = *(v0 + 104);

  return sub_252BDCAFC(v13, &unk_252E475B0, v9, v12, v7, v6);
}

uint64_t sub_252DF3924()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v3 = sub_252DF3B70;
  }

  else
  {
    v3 = sub_252DF3AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252DF3A80()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF3AF8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF3B70()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_252DF3C10()
{
  type metadata accessor for ControlHomeNeedsDisambiguationStrategy();

  JUMPOUT(0x2530A97C0);
}

uint64_t sub_252DF3C68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_252A9E7CC;

  return sub_252A9EC44(a2);
}

uint64_t sub_252DF3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252AA11D4(a1, a2, a3, a4);
}

uint64_t sub_252DF3DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252DF2910(a1, v6, a3);
}

uint64_t sub_252DF3E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_252DF3F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_252DF4028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_252DF40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_252DF41B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_252DF41FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252DF42D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_252DF4404(uint64_t a1, uint64_t a2)
{
  result = sub_252DF445C(&qword_27F543888, a2, type metadata accessor for ControlHomeNeedsDisambiguationStrategy, byte_252E61908);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252DF445C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252DF44A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF44C8, 0, 0);
}

uint64_t sub_252DF44C8(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v1[11] = v4;
    *v4 = v1;
    v5 = sub_252DF4C18;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v1[13] = v4;
      *v4 = v1;
      v5 = sub_252DF4D2C;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v4 = swift_task_alloc();
        v1[15] = v4;
        *v4 = v1;
        v5 = sub_252DF4E40;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v8 = sub_252E36AD4();
          __swift_project_value_buffer(v8, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v4 = swift_task_alloc();
          v1[17] = v4;
          *v4 = v1;
          v5 = sub_252DF4F54;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v9 = sub_252E36AD4();
            __swift_project_value_buffer(v9, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v4 = swift_task_alloc();
            v1[19] = v4;
            *v4 = v1;
            v5 = sub_252DF5068;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v10 = sub_252E36AD4();
              __swift_project_value_buffer(v10, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v4 = swift_task_alloc();
              v1[21] = v4;
              *v4 = v1;
              v5 = sub_252DF517C;
            }

            else
            {
              __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v11 = sub_252E36AD4();
                __swift_project_value_buffer(v11, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v1[23] = v4;
                *v4 = v1;
                v5 = sub_252DF5290;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v12 = sub_252E36AD4();
                __swift_project_value_buffer(v12, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v1[25] = v4;
                *v4 = v1;
                v5 = sub_252DF53A4;
              }
            }
          }
        }
      }
    }
  }

  v4[1] = v5;
  v13 = v1[9];
  v14 = v1[7];
  v15 = v1[8];

  return sub_252B9EB90(v14, v15, v13);
}

uint64_t sub_252DF4C18()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_252DF81B0;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF4D2C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_252DF81B4;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF4E40()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_252DF81B8;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF4F54()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_252DF81BC;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF5068()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_252DF81C0;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF517C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_252DF81C4;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF5290()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_252DF81C8;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF53A4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_252DF81CC;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF54B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF54DC, 0, 0);
}

uint64_t sub_252DF54DC(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v1[11] = v4;
    *v4 = v1;
    v5 = sub_252DF5C5C;
LABEL_5:
    v4[1] = v5;
    v6 = v1[9];
    v7 = v1[7];
    v8 = v1[8];

    return sub_252C22E1C(v7, v8, v6);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_252E33884())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D18);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
    v11 = swift_task_alloc();
    v1[13] = v11;
    *v11 = v1;
    v12 = sub_252BA2000;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_252E338D4())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544D18);
      sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v1[15] = v4;
      *v4 = v1;
      v5 = sub_252BA2114;
      goto LABEL_5;
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_252E338C4())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544D18);
      sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
      v11 = swift_task_alloc();
      v1[17] = v11;
      *v11 = v1;
      v12 = sub_252DF5DD4;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      if (sub_252E338B4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v18 = sub_252E36AD4();
        __swift_project_value_buffer(v18, qword_27F544D18);
        sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
        v11 = swift_task_alloc();
        v1[19] = v11;
        *v11 = v1;
        v12 = sub_252BA233C;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        if (sub_252E33894())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v19 = sub_252E36AD4();
          __swift_project_value_buffer(v19, qword_27F544D18);
          sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
          v11 = swift_task_alloc();
          v1[21] = v11;
          *v11 = v1;
          v12 = sub_252DF5EE8;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
          if (sub_252E338E4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v20 = sub_252E36AD4();
            __swift_project_value_buffer(v20, qword_27F544D18);
            sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
            v11 = swift_task_alloc();
            v1[23] = v11;
            *v11 = v1;
            v12 = sub_252BA25C8;
          }

          else
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v21 = sub_252E36AD4();
            __swift_project_value_buffer(v21, qword_27F544D18);
            sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
            v11 = swift_task_alloc();
            v1[25] = v11;
            *v11 = v1;
            v12 = sub_252BA26DC;
          }
        }
      }
    }
  }

  v11[1] = v12;
  v13 = v1[9];
  v14 = v1[7];
  v15 = v1[8];

  return sub_252C1FF34(v14, v15, v13);
}

uint64_t sub_252DF5C5C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_252DF5D70;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF5D70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252DF5DD4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_252BA29CC;
  }

  else
  {
    v2 = sub_252BA2564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF5EE8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_252BA2A94;
  }

  else
  {
    v2 = sub_252BA3D74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252DF5FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252DF6020, 0, 0);
}

uint64_t sub_252DF6020(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (sub_252E338F4())
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544D18);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E85560, 0xD00000000000008FLL, 0x8000000252E6B430);
    v4 = swift_task_alloc();
    v1[11] = v4;
    *v4 = v1;
    v5 = sub_252DF4C18;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    if (sub_252E33884())
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544D18);
      sub_252CC3D90(0xD000000000000022, 0x8000000252E85530, 0xD00000000000008FLL, 0x8000000252E6B430);
      v4 = swift_task_alloc();
      v1[13] = v4;
      *v4 = v1;
      v5 = sub_252DF4D2C;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      if (sub_252E338D4())
      {
        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544D18);
        sub_252CC3D90(0xD000000000000027, 0x8000000252E85500, 0xD00000000000008FLL, 0x8000000252E6B430);
        v4 = swift_task_alloc();
        v1[15] = v4;
        *v4 = v1;
        v5 = sub_252DF4E40;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
        if (sub_252E338C4())
        {
          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v8 = sub_252E36AD4();
          __swift_project_value_buffer(v8, qword_27F544D18);
          sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E854D0, 0xD00000000000008FLL, 0x8000000252E6B430);
          v4 = swift_task_alloc();
          v1[17] = v4;
          *v4 = v1;
          v5 = sub_252DF4F54;
        }

        else
        {
          __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
          if (sub_252E338B4())
          {
            if (qword_27F53F4D0 != -1)
            {
              swift_once();
            }

            v9 = sub_252E36AD4();
            __swift_project_value_buffer(v9, qword_27F544D18);
            sub_252CC3D90(0xD000000000000025, 0x8000000252E854A0, 0xD00000000000008FLL, 0x8000000252E6B430);
            v4 = swift_task_alloc();
            v1[19] = v4;
            *v4 = v1;
            v5 = sub_252DF5068;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
            if (sub_252E33894())
            {
              if (qword_27F53F4D0 != -1)
              {
                swift_once();
              }

              v10 = sub_252E36AD4();
              __swift_project_value_buffer(v10, qword_27F544D18);
              sub_252CC3D90(0xD000000000000023, 0x8000000252E85470, 0xD00000000000008FLL, 0x8000000252E6B430);
              v4 = swift_task_alloc();
              v1[21] = v4;
              *v4 = v1;
              v5 = sub_252DF517C;
            }

            else
            {
              __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
              if (sub_252E338E4())
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v11 = sub_252E36AD4();
                __swift_project_value_buffer(v11, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85440, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v1[23] = v4;
                *v4 = v1;
                v5 = sub_252DF5290;
              }

              else
              {
                if (qword_27F53F4D0 != -1)
                {
                  swift_once();
                }

                v12 = sub_252E36AD4();
                __swift_project_value_buffer(v12, qword_27F544D18);
                sub_252CC3D90(0xD000000000000026, 0x8000000252E85410, 0xD00000000000008FLL, 0x8000000252E6B430);
                v4 = swift_task_alloc();
                v1[25] = v4;
                *v4 = v1;
                v5 = sub_252DF53A4;
              }
            }
          }
        }
      }
    }
  }

  v4[1] = v5;
  v13 = v1[9];
  v14 = v1[7];
  v15 = v1[8];

  return sub_252D80B10(v14, v15, v13);
}

uint64_t sub_252DF6770(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = sub_252E34014();
  v3[68] = v4;
  v3[69] = *(v4 - 8);
  v3[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF6838, 0, 0);
}

void sub_252DF6838()
{
  v93 = v0;
  v1 = sub_252B4F670();
  v0[71] = v1;
  v89 = v0;
  v86 = v1;
  v87 = sub_252B4F854();
  v0[72] = v87;
  v2 = sub_252C285CC();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v2 & 0xC000000000000001;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_252E378C4();
  v6 = v3 & 0xC000000000000001;
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v6)
      {
        v10 = MEMORY[0x2530ADF00](v9, v3);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v3 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v12 = [v10 entity];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 deviceTypes];

        if (v14)
        {
          break;
        }
      }

      ++v9;
      if (v7 == v5)
      {
        goto LABEL_24;
      }
    }

    v15 = sub_252E37264();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2529F8DD4(0, v8[2] + 1, 1, v8);
    }

    v17 = v8;
    v18 = v8[2];
    v19 = v17;
    v20 = v17[3];
    if (v18 >= v20 >> 1)
    {
      v19 = sub_2529F8DD4((v20 > 1), v18 + 1, 1, v19);
    }

    v19[2] = v18 + 1;
    v21 = &v19[v18];
    v8 = v19;
    v21[4] = v15;
  }

  while (v7 != v5);
LABEL_24:
  v22 = v8[2];
  v23 = MEMORY[0x277D84F90];
  v96 = v6;
  v88 = MEMORY[0x277D84F90];
  v91 = v22;
  if (v22)
  {
    v24 = 0;
    v90 = v8 + 4;
    while (v24 < v8[2])
    {
      v25 = v8;
      v26 = v3;
      v27 = v5;
      v28 = v4;
      v29 = v90[v24];
      v30 = *(v29 + 16);
      v31 = *(v23 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_91;
      }

      v33 = swift_isUniquelyReferenced_nonNull_native();
      if (!v33 || v32 > *(v23 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v23 = sub_2529F8104(v33, v34, 1, v23);
      }

      v4 = v28;
      v6 = v96;
      v5 = v27;
      if (*(v29 + 16))
      {
        v35 = *(v23 + 2);
        if ((*(v23 + 3) >> 1) - v35 < v30)
        {
          goto LABEL_93;
        }

        v3 = v26;
        memcpy(&v23[8 * v35 + 32], (v29 + 32), 8 * v30);

        if (v30)
        {
          v36 = *(v23 + 2);
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_94;
          }

          *(v23 + 2) = v38;
        }
      }

      else
      {

        v3 = v26;
        if (v30)
        {
          goto LABEL_92;
        }
      }

      ++v24;
      v8 = v25;
      if (v91 == v24)
      {
        goto LABEL_41;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  else
  {
LABEL_41:

    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v39 = swift_allocObject();
    v40 = 0;
    v41 = MEMORY[0x277D84F90];
    *(v39 + 16) = MEMORY[0x277D84F90];
    __dst[0] = v41;
    while (v5 != v40)
    {
      if (v6)
      {
        v42 = MEMORY[0x2530ADF00](v40, v3);
      }

      else
      {
        if (v40 >= *(v4 + 16))
        {
          goto LABEL_89;
        }

        v42 = *(v3 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v45 = sub_252DA124C(0);

      ++v40;
      if (v45)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v6 = v96;
        }

        sub_252E372D4();
        v88 = __dst[0];
        v40 = v44;
      }
    }

    type metadata accessor for HomeAutomationEntityResponses();
    v46 = swift_allocObject();
    v89[73] = v46;
    *(v46 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v96 = v46;
    *(v46 + 24) = v88;
    v47 = sub_252C759A0(&unk_2864AE2E0);
    v48 = v47;
    v49 = v47 + 56;
    v50 = -1;
    v51 = -1 << *(v47 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v47 + 56);
    v53 = (63 - v51) >> 6;

    v54 = 0;
    v55 = MEMORY[0x277D84F90];
    if (v52)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_88;
      }

      if (v56 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v56);
      ++v54;
      if (v52)
      {
        v54 = v56;
        do
        {
LABEL_59:
          v57 = *(*(v48 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v52)))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2529F8104(0, *(v55 + 2) + 1, 1, v55);
          }

          v59 = *(v55 + 2);
          v58 = *(v55 + 3);
          if (v59 >= v58 >> 1)
          {
            v55 = sub_2529F8104((v58 > 1), v59 + 1, 1, v55);
          }

          v52 &= v52 - 1;
          *(v55 + 2) = v59 + 1;
          *&v55[8 * v59 + 32] = v57;
        }

        while (v52);
      }
    }

    v60 = *(v23 + 2);
    if (v60)
    {
      v61 = 0;
      v62 = MEMORY[0x277D84F90];
      do
      {
        v63 = *(v55 + 2);
        v64 = 32;
        do
        {
          v65 = v63;
          if (v63-- == 0)
          {
            break;
          }

          v67 = *&v55[v64];
          v64 += 8;
        }

        while (v67 != *&v23[8 * v61 + 32]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_2529F9638(0, *(v62 + 2) + 1, 1, v62);
        }

        v69 = *(v62 + 2);
        v68 = *(v62 + 3);
        if (v69 >= v68 >> 1)
        {
          v62 = sub_2529F9638((v68 > 1), v69 + 1, 1, v62);
        }

        ++v61;
        *(v62 + 2) = v69 + 1;
        v62[v69 + 32] = v65 != 0;
      }

      while (v61 != v60);
    }

    else
    {

      v62 = MEMORY[0x277D84F90];
    }

    v70 = *(v62 + 2);
    v71 = v62 + 32;
    while (v70)
    {
      v72 = *v71++;
      --v70;
      if ((v72 & 1) == 0)
      {

        sub_25293DEE0((v89 + 2));
        type metadata accessor for FailureResponseHandler();
        swift_allocObject();
        memcpy(__dst, v89 + 2, 0x1F8uLL);
        v89[77] = sub_252BE97AC(__dst);
        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v73 = ControlHomeIntent.Builder.init()();
        v74 = (*(*v73 + 224))(v73);
        v89[78] = v74;

        v96 = sub_252DF5FFC;
        v75 = v86;
        v76 = swift_task_alloc();
        v89[79] = v76;
        *v76 = v89;
        v76[1] = sub_252DF7310;
        v77 = v89[65];
        v78 = v96;

        v78(v77, v74, v86);
        return;
      }
    }

    v79 = v89[67];

    v80 = v79[6];
    v81 = v79[7];
    __swift_project_boxed_opaque_existential_1(v79 + 3, v80);
    v82 = swift_task_alloc();
    v89[74] = v82;
    v82[2] = v79;
    v82[3] = v87;
    v82[4] = v96;
    sub_252AD7CC4();
    v83 = swift_task_alloc();
    v89[75] = v83;
    *v83 = v89;
    v83[1] = sub_252DF7110;
    v84 = v89[70];
    v85 = v89[65];
    v95 = v81;

    sub_252BDB88C(v85, &unk_252E61A40, v82, v84, 0, 0, 0, v80);
  }
}

uint64_t sub_252DF7110()
{
  v2 = *(*v1 + 560);
  v3 = *(*v1 + 552);
  v4 = *(*v1 + 544);
  *(*v1 + 608) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252DF74F0;
  }

  else
  {

    v5 = sub_252DF7290;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF7290()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF7310()
{
  v2 = *(*v1 + 624);
  v3 = *(*v1 + 568);
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = sub_252DF7584;
  }

  else
  {
    v4 = sub_252DF745C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252DF745C()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF74F0()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF7584()
{
  v1 = *(v0 + 568);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252DF7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252DF76B0, 0, 0);
}

uint64_t sub_252DF76B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);

  v6(v1, 1, 1, v5);
  v6(v1 + v2[10], 1, 1, v5);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  sub_252DF7AC8(v1, v4, v3);
  v7 = sub_252C04C14();
  v0[7] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_252DF7860;

  return v10(0xD00000000000002ALL, 0x8000000252E697D0, v7);
}

uint64_t sub_252DF7860(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252DF7A3C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252DF79AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252DF79AC()
{
  sub_252DF8154(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252DF7A3C()
{
  sub_252DF8154(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252DF7AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v30[-v10];
  v12 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v13 = v12[8];

  *(a1 + v13) = a2;
  v14 = v12[5];
  swift_retain_n();

  *(a1 + v14) = a3;
  v15 = v12[7];

  *(a1 + v15) = a3;
  v16 = sub_25294833C(1u, 0, 0);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 dictionary];
  if (!v18)
  {

LABEL_7:
    v26 = sub_252E36324();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    goto LABEL_8;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v31[0] = 0;
  v21 = [v20 dataWithPropertyList:v19 format:200 options:0 error:v31];
  v22 = v31[0];
  if (!v21)
  {
    v27 = v22;
    v28 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v23 = sub_252E32D34();
  v25 = v24;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v23, v25);
  v26 = sub_252E36324();
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
LABEL_8:
  sub_252956C98(v11, a1 + v12[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  return sub_252956C98(v9, a1);
}

void *sub_252DF7E18@<X0>(void *a1@<X8>)
{
  type metadata accessor for AsyncFailedStateResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252DF7E58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252DF6770(a1, a2);
}

BOOL sub_252DF7F04()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = [v0 entityResponses];
  if (v3 && ((v4 = v3, type metadata accessor for HomeEntityResponse(), v5 = sub_252E37264(), v4, v5 >> 62) ? (v6 = sub_252E378C4()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v2 == v6) || (v7 = OBJC_IVAR___ControlHomeIntentResponse_code, swift_beginAccess(), *&v0[v7] == 5))
  {

    return 1;
  }

  else
  {
    v9 = [v0 entityResponses];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for HomeEntityResponse();
      v11 = sub_252E37264();

      if (v11 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return v12 == 0;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_252DF80AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252DF7618(v2, v3, v4);
}

uint64_t sub_252DF8154(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252DF81D0(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v35 = v5;
  v36 = result;
  v33 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_39;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

LABEL_10:
    v40 = v4;
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8;
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if (!v14)
    {
      goto LABEL_21;
    }

    sub_252E378C4();
LABEL_21:
    result = sub_252E37A54();
    v17 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v37 = v17;
    if (v11)
    {
      v23 = v18;
      result = sub_252E378C4();
      v18 = v23;
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = (v40 - 1) & v40;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_42;
      }

      v24 = v18 + 8 * v19 + 32;
      v40 &= v40 - 1;
      v34 = v18;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
          v26 = sub_2529FBD80(v39, i, v21);
          v28 = *v27;
          (v26)(v39, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
      }

      v8 = v37;
      v5 = v35;
      result = v36;
      v1 = v33;
      v4 = v40;
      if (v38 >= 1)
      {
        v29 = *(v34 + 16);
        v30 = __OFADD__(v29, v38);
        v31 = v29 + v38;
        if (v30)
        {
          goto LABEL_43;
        }

        *(v34 + 16) = v31;
      }
    }

    else
    {

      v8 = v37;
      v5 = v35;
      result = v36;
      if (v38 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = sub_252E378C4();
  v16 = v32 + v13;
  if (!__OFADD__(v32, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v8;
}

unint64_t sub_252DF8544(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v37 = v1;
  v38 = result;
  v40 = v5;
  while (1)
  {
    v9 = v8;
    if (!v4)
    {
      break;
    }

LABEL_10:
    v11 = __clz(__rbit64(v4)) | (v7 << 6);
    v12 = result;
    v13 = (*(result + 48) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(result + 56) + 8 * v11);

    v17 = sub_252DF9FB4(v15, v14, v16);

    v18 = v17 >> 62;
    v45 = v17;
    if (v17 >> 62)
    {
      v19 = sub_252E378C4();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_252E378C4();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v19;
    v21 = __OFADD__(result, v19);
    v22 = result + v19;
    if (v21)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v20)
      {
        v23 = v9;
        v24 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v22 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (!v20)
    {
      goto LABEL_22;
    }

    sub_252E378C4();
LABEL_22:
    result = sub_252E37A54();
    v23 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    v42 = v23;
    if (v18)
    {
      v28 = v24;
      result = sub_252E378C4();
      v24 = v28;
      v27 = result;
    }

    else
    {
      v27 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v27)
    {
      if (((v26 >> 1) - v25) < v43)
      {
        goto LABEL_42;
      }

      v29 = v24 + 8 * v25 + 32;
      v41 = v4;
      v39 = v24;
      if (v18)
      {
        if (v27 < 1)
        {
          goto LABEL_44;
        }

        sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
        v30 = 0;
        v31 = v45;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
          v32 = sub_2529FBD80(v44, v30, v31);
          v34 = *v33;
          (v32)(v44, 0);
          *(v29 + 8 * v30++) = v34;
        }

        while (v27 != v30);
      }

      else
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
      }

      v8 = v42;
      v1 = v37;
      result = v38;
      v5 = v40;
      v4 = v41;
      if (v43 >= 1)
      {
        v35 = *(v39 + 16);
        v21 = __OFADD__(v35, v43);
        v36 = v35 + v43;
        if (v21)
        {
          goto LABEL_43;
        }

        *(v39 + 16) = v36;
      }
    }

    else
    {

      v8 = v42;
      v5 = v40;
      result = v12;
      if (v43 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_10;
    }
  }

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
  return result;
}

uint64_t sub_252DF88E4(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    v11[0] = v5;
    v11[1] = v4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v10[2] = v11;

    if (sub_2529ED970(sub_25296A724, v10, v3))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F7A80((v6 > 1), v7 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

char *sub_252DF8A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v3 + 8 * v2++);
    v6 = *(v4 + 2);
    v7 = v6;
    v8 = 32;
    while (v7)
    {
      v9 = *&v4[v8];
      v8 += 8;
      --v7;
      if (v9 == v5)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2529F7D44(0, v6 + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_2529F7D44((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    *&v4[8 * v11 + 32] = v5;
LABEL_4:
    ;
  }

  while (v2 != v1);
  return v4;
}

char *sub_252DF8B58(uint64_t a1)
{
  v2 = sub_252E36324();
  v3 = MEMORY[0x28223BE20](v2);
  v25 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = 0;
  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v26 = (*(v9 + 64) + 32) & ~*(v9 + 64);
  v27 = v10;
  v23 = a1 + v26;
  v11 = *(v9 + 56);
  v21 = (v9 + 16);
  v22 = (v9 - 8);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = v23 + v11 * v8++;
    v14 = v9;
    v27(v7, v13, v2);
    v15 = &v12[v26];
    v16 = *(v12 + 2) + 1;
    while (--v16)
    {
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v15 += v11;
      if (sub_252E36EF4())
      {
        (*v22)(v7, v2);
        goto LABEL_4;
      }
    }

    v27(v25, v7, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2529F7F74(0, *(v12 + 2) + 1, 1, v12);
    }

    v18 = *(v12 + 2);
    v17 = *(v12 + 3);
    if (v18 >= v17 >> 1)
    {
      v12 = sub_2529F7F74((v17 > 1), v18 + 1, 1, v12);
    }

    (*v22)(v7, v2);
    *(v12 + 2) = v18 + 1;
    (*v21)(&v12[v26 + v18 * v11], v25, v2);
LABEL_4:
    v9 = v14;
  }

  while (v8 != v24);
  return v12;
}

uint64_t sub_252DF8F1C(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 56);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 3);
    v4 = *(v2 - 2);
    v6 = *(v2 - 8);
    v7 = *(v2 - 1);
    v8 = *v2;
    v14[0] = v5;
    v14[1] = v4;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v13[2] = v14;

    if (sub_2529EDE80(sub_252E11304, v13, v3))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F8360(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F8360((v9 > 1), v10 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 32 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v4;
      *(v11 + 48) = v6;
      *(v11 + 52) = v7;
      *(v11 + 56) = v8;
    }

    v2 += 32;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_252DF9108(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a1 + 32);
  v7 = MEMORY[0x277D84F90];
  do
  {
    v9 = *v6++;
    v8 = v9;
    if ((a2(v9, v7) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = a3(0, *(v7 + 16) + 1, 1, v7);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v7 = a3(v10 > 1, v11 + 1, 1, v7);
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + v11 + 32) = v8;
    }

    --v3;
  }

  while (v3);
  return v7;
}

uint64_t sub_252DF91F8(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = v2[7];
    v5 = v2[5];
    v33 = v2[6];
    v34 = v4;
    v6 = v2[7];
    v35 = v2[8];
    v7 = v2[3];
    v8 = v2[1];
    v29 = v2[2];
    v30 = v7;
    v9 = v2[3];
    v10 = v2[5];
    v31 = v2[4];
    v32 = v10;
    v11 = v2[1];
    v27 = *v2;
    v28 = v11;
    v25[6] = v33;
    v25[7] = v6;
    v25[8] = v2[8];
    v25[2] = v29;
    v25[3] = v9;
    v25[4] = v31;
    v25[5] = v5;
    v36 = *(v2 + 72);
    v26 = *(v2 + 72);
    v25[0] = v27;
    v25[1] = v8;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v23[2] = v25;
    sub_25297DE08(&v27, &v24);
    if (sub_2529EDD04(sub_252E11264, v23, v3))
    {
      isUniquelyReferenced_nonNull_native = sub_2529AEC80(&v27);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F84A8(0, *(v3 + 16) + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2529F84A8((v12 > 1), v13 + 1, 1, v3);
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 152 * v13;
      v15 = v28;
      *(v14 + 32) = v27;
      *(v14 + 48) = v15;
      v16 = v29;
      v17 = v30;
      v18 = v32;
      *(v14 + 96) = v31;
      *(v14 + 112) = v18;
      *(v14 + 64) = v16;
      *(v14 + 80) = v17;
      v19 = v33;
      v20 = v34;
      v21 = v35;
      *(v14 + 176) = v36;
      *(v14 + 144) = v20;
      *(v14 + 160) = v21;
      *(v14 + 128) = v19;
    }

    v2 = (v2 + 152);
    --v1;
  }

  while (v1);
  return v3;
}

char *sub_252DF93D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    memcpy(v11, v2, sizeof(v11));
    v4 = memcpy(v10, v2, sizeof(v10));
    MEMORY[0x28223BE20](v4);
    v8[2] = v10;
    sub_2529353AC(v11, &v9);
    if (sub_2529EDA1C(sub_252E1119C, v8, v3))
    {
      sub_252935408(v11);
    }

    else
    {
      sub_2529353AC(v11, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2529F7FB0(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_2529F7FB0((v5 > 1), v6 + 1, 1, v3);
      }

      sub_252935408(v11);
      *(v3 + 2) = v6 + 1;
      memcpy(&v3[504 * v6 + 32], v11, 0x1F8uLL);
    }

    v2 += 504;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_252DF9598(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = result;
  v11 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
      }

      MEMORY[0x28223BE20](v9);
      if (a3(a2))
      {
      }

      else
      {

        MEMORY[0x2530AD700](v10);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v11;
      }

      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DF974C(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = *(v5 + 8 * v4++);
    v8 = *(v6 + 16);
    v9 = v8;
    v10 = 32;
    while (v9)
    {
      v11 = *(v6 + v10);
      v10 += 8;
      --v9;
      if (v11 == v7)
      {
        goto LABEL_4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = a2(0, v8 + 1, 1, v6);
    }

    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v6 = a2(v12 > 1, v13 + 1, 1, v6);
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v7;
LABEL_4:
    ;
  }

  while (v4 != v2);
  return v6;
}

char *sub_252DF9850(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = MEMORY[0x28223BE20](v2);
  v25 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = 0;
  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v26 = (*(v9 + 64) + 32) & ~*(v9 + 64);
  v27 = v10;
  v23 = a1 + v26;
  v11 = *(v9 + 56);
  v21 = (v9 + 16);
  v22 = (v9 - 8);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = v23 + v11 * v8++;
    v14 = v9;
    v27(v7, v13, v2);
    v15 = &v12[v26];
    v16 = *(v12 + 2) + 1;
    while (--v16)
    {
      sub_252E11098(&qword_27F5463E8, MEMORY[0x277D5E4F0], MEMORY[0x277D5E4F8]);
      v15 += v11;
      if (sub_252E36EF4())
      {
        (*v22)(v7, v2);
        goto LABEL_4;
      }
    }

    v27(v25, v7, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2529F85CC(0, *(v12 + 2) + 1, 1, v12);
    }

    v18 = *(v12 + 2);
    v17 = *(v12 + 3);
    if (v18 >= v17 >> 1)
    {
      v12 = sub_2529F85CC((v17 > 1), v18 + 1, 1, v12);
    }

    (*v22)(v7, v2);
    *(v12 + 2) = v18 + 1;
    (*v21)(&v12[v26 + v18 * v11], v25, v2);
LABEL_4:
    v9 = v14;
  }

  while (v8 != v24);
  return v12;
}

unint64_t sub_252DF9B90(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = result;
  v12 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v6 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      MEMORY[0x28223BE20](v9);
      if (a3(a2))
      {
      }

      else
      {
        v11 = v10;
        MEMORY[0x2530AD700]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v12;
      }

      ++v7;
    }

    while (v6 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_252DF9D20()
{
  result = sub_2529FC018(&unk_2864A0F10);
  qword_27F575DF8 = result;
  return result;
}

unint64_t sub_252DF9D48()
{
  result = sub_252CC61B4(&unk_2864A44D0);
  qword_27F575E00 = result;
  return result;
}

id sub_252DF9D70(id *a1, id a2, void *a3)
{
  v5 = *a1;
  [*a1 mapID];
  v7 = v6;
  result = [a2 mapID];
  if (v7 == v9)
  {
    result = [v5 name];
    if (result)
    {
      v10 = result;
      v11 = sub_252E36F34();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a3;
      v31 = *a3;
      *a3 = 0x8000000000000000;
      v17 = sub_252A44A10(v11, v13);
      v18 = v15[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
        goto LABEL_17;
      }

      v21 = v16;
      if (v15[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_252E04690(&qword_27F545030, &qword_252E5A3B0);
          v15 = v31;
        }
      }

      else
      {
        sub_252E0216C(v20, isUniquelyReferenced_nonNull_native, &qword_27F545030, &qword_252E5A3B0);
        v15 = v31;
        v22 = sub_252A44A10(v11, v13);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_19;
        }

        v17 = v22;
      }

      *a3 = v15;

      v24 = *a3;
      if (v21)
      {

        goto LABEL_13;
      }

      v24[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v24[6] + 16 * v17);
      *v25 = v11;
      v25[1] = v13;
      *(v24[7] + 8 * v17) = MEMORY[0x277D84F90];
      v26 = v24[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (!v27)
      {
        v24[2] = v28;
LABEL_13:
        v29 = (v24[7] + 8 * v17);
        v30 = a2;
        MEMORY[0x2530AD700]();
        if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_252E372D4();
        }

LABEL_17:
        sub_252E372A4();
        return sub_252E372D4();
      }

      __break(1u);
LABEL_19:
      result = sub_252E37E24();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_252DF9FB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
        }

        else
        {
          v7 = *(a3 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = objc_allocWithZone(type metadata accessor for HomeAttributeTargetArea());
        v10 = sub_252E36F04();
        v11 = [v9 initWithIdentifier:0 displayString:v10];

        v12 = v11;
        v13 = sub_252E36F04();
        [v12 setName_];

        [v12 setAreaID_];
        [v12 setMapID_];

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v4 != v6);
      return v14;
    }
  }

  return result;
}

uint64_t sub_252DFA164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v29 = a2;
  v6 = *a1;
  v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v12 = MEMORY[0x277D84F90];
    if (i)
    {
      v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v11);
      v6 = sub_252AC0F68(v6);

      v13 = v6 ? v6 : v12;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v33 = v12;
    if (v13 >> 62)
    {
      break;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_10:
    v27 = a3;
    v28 = v14;
    v15 = 0;
    v30 = v13 & 0xFFFFFFFFFFFFFF8;
    v31 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v31)
      {
        v16 = MEMORY[0x2530ADF00](v15, v13);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_25;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v7 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = [v16 name];
      if (v18)
      {
        v19 = v18;
        a3 = v4;
        v20 = sub_252E36F34();
        v22 = v21;

        v32[0] = v20;
        v32[1] = v22;
        MEMORY[0x28223BE20](v23);
        v26[2] = v32;
        v6 = sub_2529ED970(sub_25296A724, v26, v29);
        v4 = a3;

        if (v6)
        {
          v6 = &v33;
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v14 = v28;
      }

      else
      {
      }

      ++v15;
      if (v7 == v14)
      {
        v24 = v33;
        a3 = v27;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v14 = sub_252E378C4();
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_28:
  v24 = MEMORY[0x277D84F90];
LABEL_29:

  *a3 = v24;
  return result;
}

void *sub_252DFA3E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_252DFA48C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5416A8, &qword_252E40970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_252DFA500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_252DFA57C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 504);
  return result;
}

void *sub_252DFA62C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_252DFA6B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
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

void *sub_252DFA73C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541718, &qword_252E409D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

uint64_t sub_252DFA7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name;
  v16 = *(v12 + 56);
  sub_252956C1C(a1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, &v21 - v13);
  sub_252956C1C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_252956C1C(v14, v10);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v18 = sub_252E36EF4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v14, &qword_27F540758, &unk_252E4D160);
    v18 = 0;
    return v18 & 1;
  }

  sub_25293847C(v14, &qword_27F540298, &unk_252E3C270);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_252DFAAC8(uint64_t a1, uint64_t a2)
{
  if ((sub_252E32E54() & 1) == 0 || *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
  {
    return 1;
  }

  else
  {
    return sub_252E37DB4() & 1;
  }
}

void *sub_252DFAB78(uint64_t a1, uint64_t a2)
{

  return sub_252DFAC78(a1, a2, sub_252DFB098, sub_252DFB098);
}

void *sub_252DFABF8(uint64_t a1, uint64_t a2)
{

  return sub_252DFAC78(a1, a2, sub_252DFB6DC, sub_252DFB6DC);
}

void *sub_252DFAC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_252DFB000(v15, v10, a2, a1, a4);

    MEMORY[0x2530AED00](v15, -1, -1);
  }

  return v13;
}

void *sub_252DFAE54(uint64_t a1, uint64_t a2)
{

  return sub_252DFAC78(a1, a2, sub_252DFBAB8, sub_252DFBAB8);
}

void *sub_252DFAED4(uint64_t a1, uint64_t a2)
{

  return sub_252DFAC78(a1, a2, sub_252DFBEDC, sub_252DFBEDC);
}

void *sub_252DFAF54(uint64_t a1, uint64_t a2)
{

  return sub_252DFAC78(a1, a2, sub_252DFDF44, sub_252DFDF44);
}

void *sub_252DFB000(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t *sub_252DFB098(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v48 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_32;
  }

  v49 = 0;
  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v56 = a3 + 56;
  v46 = v10;
  while (1)
  {
LABEL_8:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
    }

    else
    {
      v12 = v6;
      do
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_64;
        }

        if (v6 >= v10)
        {
LABEL_62:

          return sub_252C53048(v48, a2, v49, v5);
        }

        v13 = *(v44 + 8 * v6);
        ++v12;
      }

      while (!v13);
      v11 = __clz(__rbit64(v13));
      v50 = (v13 - 1) & v13;
    }

    v14 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
    sub_252E37EC4();
    sub_252E32E84();
    sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

    sub_252E36E94();
    v54 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v52 = (v14 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    sub_252E37044();

    v15 = sub_252E37F14();
    v16 = -1 << *(v5 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v56 + 8 * (v17 >> 6))) != 0)
    {
      break;
    }

LABEL_7:
    v4 = a4;
    v10 = v46;
    v9 = v50;
  }

  v20 = ~v16;
  while (1)
  {
    v21 = *(*(a3 + 48) + 8 * v17);

    if ((sub_252E32E54() & 1) != 0 && *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v14 + v54))
    {
      break;
    }

LABEL_18:
    v17 = (v17 + 1) & v20;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if ((*(v56 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {

      v5 = a3;
      goto LABEL_7;
    }
  }

  if (*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) != *v52 || *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) != v52[1])
  {
    v23 = sub_252E37DB4();

    if (v23)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_29:

  v10 = v46;
  v48[v18] |= v19;
  v9 = v50;
  v24 = __OFADD__(v49++, 1);
  v5 = a3;
  v4 = a4;
  if (!v24)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_32:
  v25 = 0;
  v47 = v5 + 56;
  v26 = 1 << *(v5 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v5 + 56);
  v29 = (v26 + 63) >> 6;
  v57 = v4 + 56;
  v49 = 0;
  v51 = v29;
LABEL_38:
  while (2)
  {
    if (v28)
    {
      v30 = __clz(__rbit64(v28));
      v55 = (v28 - 1) & v28;
LABEL_45:
      v53 = v30 | (v25 << 6);
      v33 = *(*(v5 + 48) + 8 * v53);
      sub_252E37EC4();
      sub_252E32E84();
      sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_252E36E94();
      v34 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
      MEMORY[0x2530AE390](*(v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
      v35 = (v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      sub_252E37044();
      v36 = a4;

      v37 = sub_252E37F14();
      v38 = -1 << *(a4 + 32);
      v39 = v37 & ~v38;
      if (((*(v57 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {

        v5 = a3;
LABEL_37:
        v28 = v55;
        continue;
      }

      v40 = ~v38;
      while (1)
      {
        v41 = *(*(v36 + 48) + 8 * v39);

        if ((sub_252E32E54() & 1) != 0 && *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v33 + v34))
        {
          if (*(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v35 && *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v35[1])
          {

LABEL_59:

            v29 = v51;
            *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
            v24 = __OFADD__(v49++, 1);
            v5 = a3;
            v28 = v55;
            if (v24)
            {
              __break(1u);
              goto LABEL_62;
            }

            goto LABEL_38;
          }

          v43 = sub_252E37DB4();

          if (v43)
          {
            goto LABEL_59;
          }
        }

        else
        {
        }

        v39 = (v39 + 1) & v40;
        v36 = a4;
        if (((*(v57 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {

          v5 = a3;
          v29 = v51;
          goto LABEL_37;
        }
      }
    }

    break;
  }

  v31 = v25;
  while (1)
  {
    v25 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v25 >= v29)
    {
      goto LABEL_62;
    }

    v32 = *(v47 + 8 * v25);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v55 = (v32 - 1) & v32;
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

unint64_t *sub_252DFB6DC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_252E37EC4();

      sub_252E37044();
      v26 = sub_252E37F14();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_252C532DC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_252E37EC4();

      sub_252E37044();
      v39 = sub_252E37F14();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_252E37DB4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252DFBAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v53 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_31;
  }

  v56 = 0;
  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a3 + 56;
  v50 = v11;
  v51 = a4 + 56;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v13 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
    }

    else
    {
      v14 = v6;
      do
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_62;
        }

        if (v6 >= v11)
        {
LABEL_60:

          return sub_252C53528(v53, a2, v56, v5);
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
      }

      while (!v15);
      v13 = __clz(__rbit64(v15));
      v54 = (v15 - 1) & v15;
    }

    v16 = (*(v4 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_252E37EC4();
    sub_252E37EE4();
    if (v17)
    {

      sub_252E37044();
    }

    result = sub_252E37F14();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v12 + 8 * (v20 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v5 = a3;
    v4 = a4;
    v11 = v50;
    v7 = v51;
    v10 = v54;
  }

  v23 = ~v19;
  v24 = *(v5 + 48);
  while (1)
  {
    v25 = (v24 + 16 * v20);
    v26 = v25[1];
    if (!v26)
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    if (v17)
    {
      if (*v25 == v18 && v26 == v17)
      {
        break;
      }

      result = sub_252E37DB4();
      if (result)
      {
        break;
      }
    }

LABEL_19:
    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if ((*(v12 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_28:
  v7 = v51;
  v53[v21] |= v22;
  v4 = a4;
  v28 = __OFADD__(v56++, 1);
  v5 = a3;
  v11 = v50;
  v10 = v54;
  if (!v28)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_31:
  v56 = 0;
  v29 = 0;
  v30 = v5 + 56;
  v31 = 1 << *(v5 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v5 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v4 + 56;
LABEL_36:
  while (2)
  {
    if (v33)
    {
      v36 = __clz(__rbit64(v33));
      v55 = (v33 - 1) & v33;
LABEL_43:
      v52 = v36 | (v29 << 6);
      v39 = (*(v5 + 48) + 16 * v52);
      v41 = *v39;
      v40 = v39[1];
      sub_252E37EC4();
      sub_252E37EE4();
      if (v40)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
      v42 = -1 << *(v4 + 32);
      v43 = result & ~v42;
      if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
LABEL_35:

        v5 = a3;
        v4 = a4;
        v33 = v55;
        continue;
      }

      v44 = ~v42;
      v45 = *(v4 + 48);
      while (1)
      {
        v46 = (v45 + 16 * v43);
        v47 = v46[1];
        if (v47)
        {
          if (v40)
          {
            v48 = *v46 == v41 && v47 == v40;
            if (v48 || (result = sub_252E37DB4(), (result & 1) != 0))
            {

LABEL_57:
              *(v53 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
              v4 = a4;
              v28 = __OFADD__(v56++, 1);
              v5 = a3;
              v33 = v55;
              if (v28)
              {
                __break(1u);
                goto LABEL_60;
              }

              goto LABEL_36;
            }
          }
        }

        else if (!v40)
        {
          goto LABEL_57;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v35 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    break;
  }

  v37 = v29;
  while (1)
  {
    v29 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      goto LABEL_60;
    }

    v38 = *(v30 + 8 * v29);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v55 = (v38 - 1) & v38;
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_252DFBEDC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v222 = a2;
  v223 = a1;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v6 = MEMORY[0x28223BE20](v258);
  v237 = &v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v218 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v218 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v218 - v14;
  v16 = sub_252E36324();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v221 = &v218 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v238 = &v218 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v230 = (&v218 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v244 = &v218 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v219 = &v218 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v220 = &v218 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v218 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v227 = &v218 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v240 = &v218 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v247 = &v218 - v38;
  MEMORY[0x28223BE20](v37);
  v218 = &v218 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v229 = &v218 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v45 = MEMORY[0x28223BE20](v44);
  v236 = &v218 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v48 = MEMORY[0x28223BE20](v47);
  v252 = &v218 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v228 = &v218 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v235 = &v218 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v218 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v226 = (&v218 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v233 = &v218 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v232 = &v218 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v239 = &v218 - v64;
  MEMORY[0x28223BE20](v63);
  v66 = MEMORY[0x28223BE20](&v218 - v65);
  v224 = &v218 - v67;
  result = MEMORY[0x28223BE20](v66);
  v231 = &v218 - v72;
  v73 = *(a3 + 16);
  v74 = *(a4 + 16);
  v75 = (v17 + 48);
  v255 = (v17 + 8);
  v76 = (v17 + 32);
  v77 = a3;
  v78 = v74 >= v73;
  v248 = a3;
  v242 = a4;
  v250 = v76;
  v251 = v75;
  v261 = v16;
  v79 = &v257;
  if (v78)
  {
    goto LABEL_71;
  }

  v225 = 0;
  v80 = 0;
  v69 = a4 + 56;
  v81 = 1 << *(a4 + 32);
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  else
  {
    v82 = -1;
  }

  v70 = v82 & *(a4 + 56);
  v83 = (v81 + 63) >> 6;
  v254 = a3 + 56;
  v241 = v13;
  v243 = v15;
  v234 = v32;
  v238 = v56;
  v246 = result;
  v229 = a4 + 56;
  v228 = v83;
  while (1)
  {
LABEL_7:
    if (v70)
    {
      v84 = __clz(__rbit64(v70));
      v235 = ((v70 - 1) & v70);
    }

    else
    {
      v85 = v80;
      do
      {
        v80 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_141;
        }

        if (v80 >= v83)
        {
LABEL_139:

          return sub_252C53768(v223, v222, v225, v77);
        }

        v86 = *(v69 + 8 * v80);
        ++v85;
      }

      while (!v86);
      v84 = __clz(__rbit64(v86));
      v235 = ((v86 - 1) & v86);
    }

    v236 = v80;
    v87 = *(*(a4 + 48) + 8 * (v84 | (v80 << 6)));
    v88 = v77;
    sub_252E37EC4();
    v253 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
    v89 = v231;
    sub_252956C1C(&v87[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute], v231);
    v256 = *v75;
    v90 = v256(v89, 1, v261);
    v249 = v87;

    if (v90 == 1)
    {
      sub_25293847C(v89, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v255)(v89, v261);
      sub_252E37EE4();
      sub_252E37044();
    }

    v244 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
    v91 = *&v249[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue];
    if (v91)
    {
      sub_252E37EE4();
      v92 = v224;
      sub_252956C1C(v91 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v224);
      if (v256(v92, 1, v261) == 1)
      {
        sub_25293847C(v92, &qword_27F540298, &unk_252E3C270);
        v10 = v249;
        if (*(v91 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {

          HomeAutomationAbstractMeasurement.hash(into:)(&v259);
        }

        else
        {
          sub_252E37EE4();
        }
      }

      else
      {
        v93 = v218;
        v94 = v261;
        (*v250)(v218, v92, v261);
        sub_252E36304();
        sub_252E37044();

        (*v255)(v93, v94);
        v10 = v249;
      }
    }

    else
    {
      sub_252E37EE4();
      v10 = v249;
    }

    v95 = sub_252E37F14();
    v77 = v88;
    v96 = -1 << *(v88 + 32);
    v97 = v95 & ~v96;
    v98 = v97 >> 6;
    v99 = 1 << v97;
    if (((1 << v97) & *(v254 + 8 * (v97 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    a4 = v242;
    v80 = v236;
    v69 = v229;
    v83 = v228;
    v70 = v235;
  }

  v252 = ~v96;
  v237 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
  while (1)
  {
    v101 = *(v258 + 48);
    v257 = *(*(v77 + 48) + 8 * v97);
    sub_252956C1C(v257 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v15);
    sub_252956C1C(v10 + v253, &v15[v101]);
    v102 = v256;
    if (v256(v15, 1, v261) != 1)
    {
      break;
    }

    if (v102(&v15[v101], 1, v261) == 1)
    {
      v103 = v257;

      sub_25293847C(v15, &qword_27F540298, &unk_252E3C270);
      goto LABEL_34;
    }

LABEL_27:
    v100 = v77;
    sub_25293847C(v15, &qword_27F540758, &unk_252E4D160);
LABEL_28:
    v97 = (v97 + 1) & v252;
    v98 = v97 >> 6;
    v99 = 1 << v97;
    v77 = v100;
    if ((*(v254 + 8 * (v97 >> 6)) & (1 << v97)) == 0)
    {
      goto LABEL_6;
    }
  }

  v104 = v246;
  sub_252956C1C(v15, v246);
  if (v102(&v15[v101], 1, v261) == 1)
  {
    (*v255)(v104, v261);
    v10 = v249;
    goto LABEL_27;
  }

  v105 = &v15[v101];
  v106 = v247;
  v107 = v261;
  (*v250)(v247, v105, v261);
  sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
  v245 = v99;
  v108 = v98;
  v109 = v257;

  v110 = sub_252E36EF4();
  v111 = *v255;
  (*v255)(v106, v107);
  v111(v104, v107);
  v103 = v109;
  v98 = v108;
  v99 = v245;
  v15 = v243;
  sub_25293847C(v243, &qword_27F540298, &unk_252E3C270);
  v10 = v249;
  if ((v110 & 1) == 0)
  {

    v75 = v251;
    v100 = v248;
    goto LABEL_28;
  }

LABEL_34:
  v112 = *(v103 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
  v113 = *&v244[v10];
  if (!v112)
  {
    v100 = v248;
    v75 = v251;
    if (!v113)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  if (!v113)
  {
    goto LABEL_44;
  }

  v245 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
  v114 = v239;
  sub_252956C1C(v112 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v239);
  v115 = v251;
  if (v256(v114, 1, v261) != 1)
  {
    v119 = v114;
    v120 = v261;
    v245 = *v250;
    (v245)(v240, v119, v261);
    v121 = v113 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
    v122 = v232;
    sub_252956C1C(v121, v232);
    v123 = v256(v122, 1, v120);
    v100 = v248;
    v75 = v115;
    if (v123 == 1)
    {
      (*v255)(v240, v261);
      sub_25293847C(v122, &qword_27F540298, &unk_252E3C270);

      goto LABEL_28;
    }

    v126 = v122;
    v127 = v227;
    (v245)(v227, v126, v261);
    LODWORD(v230) = sub_252E362E4();
    v245 = *v255;
    v128 = v127;
    v129 = v261;
    (v245)(v128, v261);
    (v245)(v240, v129);
    v103 = v257;
    if (v230)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  sub_25293847C(v114, &qword_27F540298, &unk_252E3C270);
  v116 = v233;
  sub_252956C1C(v113 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v233);
  if (v256(v116, 1, v261) != 1)
  {
    v124 = v261;
    v230 = *v250;
    v230(v234, v116, v261);
    v125 = v226;
    sub_252956C1C(v112 + v245, v226);
    v75 = v115;
    if (v256(v125, 1, v124) == 1)
    {

      (*v255)(v234, v261);
      sub_25293847C(v125, &qword_27F540298, &unk_252E3C270);

      v100 = v248;
      v10 = v249;
      goto LABEL_28;
    }

    v140 = v220;
    v141 = v261;
    v230(v220, v125, v261);
    LODWORD(v245) = sub_252E362E4();

    v142 = *v255;
    (*v255)(v140, v141);
    v142(v234, v141);
    v100 = v248;
    v10 = v249;
    v103 = v257;
LABEL_60:
    if (v245)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  sub_25293847C(v116, &qword_27F540298, &unk_252E3C270);
  v117 = *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
  if (*(v112 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
  {
    v100 = v248;
    v10 = v249;
    v103 = v257;
    if (!v117)
    {

      v75 = v251;
      goto LABEL_28;
    }

    v118 = *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

    v230 = v117;
    LODWORD(v245) = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v118, v117);

    v75 = v251;
    goto LABEL_60;
  }

  v10 = v249;
  v103 = v257;
  if (v117)
  {

LABEL_44:

    v100 = v248;
    v75 = v251;
    goto LABEL_28;
  }

  v143 = *(v112 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
  v144 = *(v113 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

  v134 = v143 == v144;
  v100 = v248;
  v75 = v251;
  if (!v134)
  {
LABEL_42:

    goto LABEL_28;
  }

LABEL_50:
  v130 = *(v258 + 48);
  v131 = v241;
  sub_252956C1C(v103 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v241);
  v257 = v130;
  sub_252956C1C(v10 + v237, v131 + v130);
  v132 = v256;
  if (v256(v131, 1, v261) == 1)
  {

    v133 = v241;
    v134 = v132(&v241[v257], 1, v261) == 1;
    v135 = v133;
    if (v134)
    {

      result = sub_25293847C(v133, &qword_27F540298, &unk_252E3C270);
      v15 = v243;
      goto LABEL_68;
    }

    goto LABEL_56;
  }

  sub_252956C1C(v241, v238);
  if (v132(&v241[v257], 1, v261) == 1)
  {

    (*v255)(v238, v261);
    v135 = v241;
LABEL_56:
    sub_25293847C(v135, &qword_27F540758, &unk_252E4D160);
    v15 = v243;
    goto LABEL_28;
  }

  v136 = v247;
  v137 = v261;
  (*v250)(v247, &v241[v257], v261);
  sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
  LODWORD(v257) = sub_252E36EF4();

  v138 = *v255;
  v139 = v136;
  v75 = v251;
  (*v255)(v139, v137);
  v138(v238, v137);
  v10 = v249;
  sub_25293847C(v241, &qword_27F540298, &unk_252E3C270);
  v15 = v243;
  if ((v257 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_68:
  v223[v98] |= v99;
  v145 = __OFADD__(v225++, 1);
  a4 = v242;
  v77 = v100;
  v80 = v236;
  v69 = v229;
  v83 = v228;
  v79 = &v260;
  v70 = v235;
  if (!v145)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_71:
  *(v79 - 32) = 0;
  v146 = 0;
  v147 = v77 + 56;
  v148 = 1 << *(v77 + 32);
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  else
  {
    v149 = -1;
  }

  v150 = v149 & *(v77 + 56);
  v151 = (v148 + 63) >> 6;
  v152 = (a4 + 56);
  v231 = v69;
  v234 = v70;
  v243 = v71;
  v153 = v235;
  v233 = v77 + 56;
  v232 = v151;
  v249 = (a4 + 56);
  while (2)
  {
    if (v150)
    {
      v154 = __clz(__rbit64(v150));
      v239 = (v150 - 1) & v150;
LABEL_83:
      v240 = v146;
      v157 = v154 | (v146 << 6);
      v158 = *(v77 + 48);
      v227 = v157;
      v159 = *(v158 + 8 * v157);
      sub_252E37EC4();
      v160 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
      sub_252956C1C(v159 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v153);
      v256 = *v75;
      v161 = v256(v153, 1, v261);
      v257 = v159;

      if (v161 == 1)
      {
        sub_25293847C(v153, &qword_27F540298, &unk_252E3C270);
        sub_252E37EE4();
      }

      else
      {
        sub_252E36304();
        (*v255)(v153, v261);
        sub_252E37EE4();
        v152 = v249;
        sub_252E37044();
      }

      v245 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
      v162 = *(v257 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (!v162)
      {
        goto LABEL_92;
      }

      sub_252E37EE4();
      v163 = v228;
      sub_252956C1C(v162 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v228);
      if (v256(v163, 1, v261) == 1)
      {
        sub_25293847C(v163, &qword_27F540298, &unk_252E3C270);
        if (*(v162 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {

          HomeAutomationAbstractMeasurement.hash(into:)(&v259);

          goto LABEL_93;
        }

LABEL_92:
        sub_252E37EE4();
      }

      else
      {
        v164 = v219;
        v165 = v261;
        (*v250)(v219, v163, v261);
        sub_252E36304();
        sub_252E37044();

        (*v255)(v164, v165);
      }

LABEL_93:
      v166 = sub_252E37F14();
      v167 = -1 << *(a4 + 32);
      v168 = v166 & ~v167;
      if (((*&v152[(v168 >> 3) & 0xFFFFFFFFFFFFFF8] >> v168) & 1) == 0)
      {
LABEL_75:

        v77 = v248;
        v153 = v235;
        v146 = v240;
        v147 = v233;
        v151 = v232;
        v150 = v239;
        continue;
      }

      v254 = ~v167;
      v241 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      v246 = v160;
LABEL_98:
      v169 = a4;
      v170 = *(*(a4 + 48) + 8 * v168);
      v171 = *(v258 + 48);
      sub_252956C1C(v170 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v10);
      sub_252956C1C(v257 + v160, v10 + v171);
      v172 = v256;
      if (v256(v10, 1, v261) == 1)
      {
        v173 = v172(v10 + v171, 1, v261);
        a4 = v169;
        if (v173 == 1)
        {

          sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
          goto LABEL_103;
        }

LABEL_96:
        sub_25293847C(v10, &qword_27F540758, &unk_252E4D160);
        goto LABEL_97;
      }

      v253 = v168;
      v174 = v170;
      v175 = v152;
      v176 = v160;
      v177 = v252;
      sub_252956C1C(v10, v252);
      if (v172(v10 + v171, 1, v261) == 1)
      {
        (*v255)(v177, v261);
        a4 = v169;
        v160 = v176;
        v152 = v175;
        v168 = v253;
        goto LABEL_96;
      }

      v178 = v247;
      v179 = v261;
      (*v250)(v247, v10 + v171, v261);
      sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v170 = v174;

      v180 = sub_252E36EF4();
      v181 = *v255;
      v182 = v178;
      v75 = v251;
      (*v255)(v182, v179);
      v181(v252, v179);
      v160 = v246;
      a4 = v169;
      sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
      v168 = v253;
      if ((v180 & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_103:
      v183 = *(v170 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v184 = *(v257 + v245);
      if (v183)
      {
        if (!v184)
        {
          goto LABEL_112;
        }

        v185 = v261;
        v253 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v186 = v243;
        sub_252956C1C(v183 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v243);
        v187 = v256;
        if (v256(v186, 1, v185) == 1)
        {

          sub_25293847C(v186, &qword_27F540298, &unk_252E3C270);
          v188 = v234;
          sub_252956C1C(v184 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v234);
          if (v187(v188, 1, v185) == 1)
          {
            sub_25293847C(v188, &qword_27F540298, &unk_252E3C270);
            v189 = *(v183 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            v190 = *(v184 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
            if (!v189)
            {
              a4 = v242;
              v75 = v251;
              v160 = v246;
              if (v190)
              {
              }

              else
              {
                v216 = *(v183 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
                v217 = *(v184 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

                v134 = v216 == v217;
                v75 = v251;
                if (v134)
                {
                  goto LABEL_120;
                }
              }

              goto LABEL_112;
            }

            v75 = v251;
            v160 = v246;
            if (v190)
            {

              v191 = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v189, v190);

              a4 = v242;
              if (v191)
              {
                goto LABEL_120;
              }

LABEL_112:
            }

            else
            {

              a4 = v242;
            }

            v152 = v249;
            goto LABEL_97;
          }

          v226 = *v250;
          (v226)(v238, v188, v185);
          v195 = v183 + v253;
          v196 = v229;
          sub_252956C1C(v195, v229);
          if (v187(v196, 1, v185) != 1)
          {
            v212 = v221;
            v213 = v261;
            (v226)(v221, v196, v261);
            v214 = sub_252E362E4();

            v215 = *v255;
            (*v255)(v212, v213);
            v215(v238, v213);
            a4 = v242;
            v160 = v246;
            if (v214)
            {
              goto LABEL_120;
            }

            goto LABEL_112;
          }

          (*v255)(v238, v261);
          v194 = v196;
LABEL_118:
          sub_25293847C(v194, &qword_27F540298, &unk_252E3C270);

          a4 = v242;
          v152 = v249;
          v160 = v246;
          goto LABEL_97;
        }

        v253 = *v250;
        (v253)(v244, v186, v185);
        v192 = v184 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v193 = v236;
        sub_252956C1C(v192, v236);
        if (v187(v193, 1, v185) == 1)
        {
          (*v255)(v244, v261);
          v194 = v193;
          goto LABEL_118;
        }

        v197 = v230;
        v198 = v261;
        (v253)(v230, v193, v261);
        v199 = v244;
        LODWORD(v253) = sub_252E362E4();
        v200 = *v255;
        (*v255)(v197, v198);
        v200(v199, v198);
        a4 = v242;
        v160 = v246;
        if ((v253 & 1) == 0)
        {
          goto LABEL_112;
        }
      }

      else if (v184)
      {
        goto LABEL_112;
      }

LABEL_120:
      v201 = *(v258 + 48);
      v202 = v237;
      sub_252956C1C(v170 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v237);
      sub_252956C1C(&v241[v257], v202 + v201);
      v203 = v256;
      if (v256(v202, 1, v261) == 1)
      {

        v204 = v203(v202 + v201, 1, v261);
        v152 = v249;
        if (v204 == 1)
        {

          result = sub_25293847C(v202, &qword_27F540298, &unk_252E3C270);
          a4 = v242;
          goto LABEL_136;
        }
      }

      else
      {
        v205 = v231;
        sub_252956C1C(v202, v231);
        if (v203(v202 + v201, 1, v261) != 1)
        {
          v206 = v247;
          v207 = v261;
          (*v250)(v247, v202 + v201, v261);
          sub_252E11098(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
          v208 = sub_252E36EF4();

          v209 = *v255;
          v210 = v206;
          v75 = v251;
          (*v255)(v210, v207);
          v211 = v207;
          v160 = v246;
          v209(v205, v211);
          sub_25293847C(v202, &qword_27F540298, &unk_252E3C270);
          a4 = v242;
          v152 = v249;
          if (v208)
          {

LABEL_136:
            *(v223 + ((v227 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v227;
            v145 = __OFADD__(v225++, 1);
            v77 = v248;
            v153 = v235;
            v146 = v240;
            v147 = v233;
            v151 = v232;
            v150 = v239;
            if (v145)
            {
              __break(1u);
              goto LABEL_139;
            }

            continue;
          }

          goto LABEL_97;
        }

        (*v255)(v205, v261);
        v152 = v249;
      }

      sub_25293847C(v202, &qword_27F540758, &unk_252E4D160);
      a4 = v242;
LABEL_97:
      v168 = (v168 + 1) & v254;
      if (((*&v152[(v168 >> 3) & 0xFFFFFFFFFFFFFF8] >> v168) & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_98;
    }

    break;
  }

  v155 = v146;
  while (1)
  {
    v146 = v155 + 1;
    if (__OFADD__(v155, 1))
    {
      break;
    }

    if (v146 >= v151)
    {
      goto LABEL_139;
    }

    v156 = *(v147 + 8 * v146);
    ++v155;
    if (v156)
    {
      v154 = __clz(__rbit64(v156));
      v239 = (v156 - 1) & v156;
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

unint64_t sub_252DFDF44(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v50 = result;
  if (a4[2] >= *(a3 + 16))
  {
    v27 = 0;
    v28 = a3 + 56;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v53 = 0;
    v55 = v30 & *(a3 + 56);
    v48 = (v29 + 63) >> 6;
    v31 = a4 + 7;
LABEL_28:
    while (v55)
    {
      v32 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v33 = v32 | (v27 << 6);
      v4 = a3;
LABEL_35:
      v52 = v33;
      v36 = *(*(v4 + 48) + v33);
      sub_252E37EC4();
      sub_252A9AD58(v36);
      sub_252E37044();

      result = sub_252E37F14();
      v37 = a4;
      v38 = ~(-1 << *(a4 + 32));
      v39 = result & v38;
      if ((*(v31 + (((result & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v38)))
      {
        while (1)
        {
          v40 = sub_252A9AD58(*(v37[6] + v39));
          v42 = v41;
          if (v40 == sub_252A9AD58(v36) && v42 == v43)
          {
            break;
          }

          v45 = sub_252E37DB4();

          if (v45)
          {
            goto LABEL_44;
          }

          v39 = (v39 + 1) & v38;
          v37 = a4;
          if (((*(v31 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v50 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_49;
        }

        ++v53;
      }
    }

    v34 = v27;
    v4 = a3;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v27 >= v48)
      {
LABEL_46:

        return sub_252C53E9C(v50, a2, v53, v4);
      }

      v35 = *(v28 + 8 * v27);
      ++v34;
      if (v35)
      {
        v55 = (v35 - 1) & v35;
        v33 = __clz(__rbit64(v35)) | (v27 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a4[7];
    v6 = a4 + 7;
    v7 = v8;
    v9 = 1 << *(v6 - 24);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v51 = v10 & v7;
    v53 = 0;
    v46 = (v9 + 63) >> 6;
    v47 = v6;
    v54 = a3 + 56;
LABEL_6:
    while (v51)
    {
      v11 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      v12 = v11 | (v5 << 6);
      v13 = a4;
LABEL_13:
      v16 = *(v13[6] + v12);
      sub_252E37EC4();
      sub_252A9AD58(v16);
      sub_252E37044();

      result = sub_252E37F14();
      v17 = ~(-1 << *(v4 + 32));
      v18 = result & v17;
      v19 = (result & v17) >> 6;
      v20 = 1 << (result & v17);
      if ((v20 & *(v54 + 8 * v19)) != 0)
      {
        while (1)
        {
          v21 = sub_252A9AD58(*(*(v4 + 48) + v18));
          v23 = v22;
          if (v21 == sub_252A9AD58(v16) && v23 == v24)
          {
            break;
          }

          v26 = sub_252E37DB4();

          if (v26)
          {
            goto LABEL_22;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v4 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v54 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v50[v19] |= v20;
        v4 = a3;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_50;
        }

        ++v53;
      }
    }

    v14 = v5;
    v13 = a4;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v46)
      {
        goto LABEL_46;
      }

      v15 = v47[v5];
      ++v14;
      if (v15)
      {
        v51 = (v15 - 1) & v15;
        v12 = __clz(__rbit64(v15)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_252DFE39C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v42 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v21 = 0;
    v22 = a3 + 56;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v45 = 0;
    v47 = v24 & *(a3 + 56);
    v40 = (v23 + 63) >> 6;
    v25 = a4 + 56;
LABEL_28:
    while (v47)
    {
      v26 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v27 = v26 | (v21 << 6);
LABEL_35:
      v44 = v27;
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v30 = ~(-1 << *(v4 + 32));
      v31 = result & v30;
      if ((*(v25 + (((result & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v30)))
      {
        while (1)
        {
          v32 = StateSemantic.rawValue.getter();
          v34 = v33;
          if (v32 == StateSemantic.rawValue.getter() && v34 == v35)
          {
            break;
          }

          v37 = sub_252E37DB4();

          if (v37)
          {
            goto LABEL_44;
          }

          v31 = (v31 + 1) & v30;
          v4 = a4;
          if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        v4 = a4;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_49;
        }

        ++v45;
      }
    }

    v28 = v21;
    v5 = a3;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v40)
      {
LABEL_46:

        return sub_252C540C0(v42, a2, v45, v5);
      }

      v29 = *(v22 + 8 * v21);
      ++v28;
      if (v29)
      {
        v47 = (v29 - 1) & v29;
        v27 = __clz(__rbit64(v29)) | (v21 << 6);
        goto LABEL_35;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v43 = v8 & *(a4 + 56);
    v45 = 0;
    v38 = (v7 + 63) >> 6;
    v39 = a4 + 56;
    v46 = a3 + 56;
LABEL_6:
    while (v43)
    {
      v43 &= v43 - 1;
LABEL_13:
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v11 = ~(-1 << *(v5 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = 1 << (result & v11);
      if ((v14 & *(v46 + 8 * v13)) != 0)
      {
        while (1)
        {
          v15 = StateSemantic.rawValue.getter();
          v17 = v16;
          if (v15 == StateSemantic.rawValue.getter() && v17 == v18)
          {
            break;
          }

          v20 = sub_252E37DB4();

          if (v20)
          {
            goto LABEL_22;
          }

          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v5 = a3;
          v14 = 1 << v12;
          if (((1 << v12) & *(v46 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

LABEL_22:
        v42[v13] |= v14;
        v5 = a3;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_50;
        }

        ++v45;
      }
    }

    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v6 >= v38)
      {
        goto LABEL_46;
      }

      v10 = *(v39 + 8 * v6);
      ++v9;
      if (v10)
      {
        v43 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_252DFE84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546308, &qword_252E61A78);
  v30 = v4;
  result = sub_252E37B44();
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
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37EE4();
      if (v21)
      {
        sub_252E37044();
      }

      result = sub_252E37F14();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
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
      goto LABEL_35;
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

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_252DFEB50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
        v24 = v22;
      }

      sub_252E37EC4();
      sub_252E37EE4();
      if (v22)
      {
        v25 = v22;
        sub_252E376A4();
      }

      result = sub_252E37F14();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v9;
  return result;
}

uint64_t sub_252DFEE14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
  result = sub_252E37B44();
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_252A00AF4(v21, v30);
      }

      else
      {
        sub_252974E7C(v21, v30);
      }

      sub_252E37EC4();
      sub_252E37044();

      result = sub_252E37F14();
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
      result = sub_252A00AF4(v30, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_252DFF0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
  v40 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_46;
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

        if ((v40 & 1) == 0)
        {

          v3 = v38;
          goto LABEL_44;
        }

        v37 = 1 << *(v5 + 32);
        v3 = v38;
        if (v37 >= 64)
        {
          bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v37;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v40 & 1) == 0)
      {
      }

      sub_252E37EC4();
      v41 = v23;
      if (v22 >> 62)
      {
        v36 = sub_252E378C4();
        MEMORY[0x2530AE390](v36);
        result = sub_252E378C4();
        v24 = result;
        if (!result)
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = MEMORY[0x2530AE390](*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_26;
        }
      }

      if (v24 < 1)
      {
        goto LABEL_47;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v24; ++i)
        {
          MEMORY[0x2530ADF00](i, v22);
          sub_252E376A4();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v26 = (v22 + 32);
        do
        {
          v27 = *v26++;
          v28 = v27;
          sub_252E376A4();

          --v24;
        }

        while (v24);
      }

LABEL_26:
      result = sub_252E37F14();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v16 = v41;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v16 = v41;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v39;
    }
  }

LABEL_44:
  *v3 = v7;
  return result;
}

uint64_t sub_252DFF440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
  v34 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_252DFF6F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v20);
      result = sub_252E37F14();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_252DFF974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545370, &qword_252E42C28);
  v33 = v4;
  result = sub_252E37B44();
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
        sub_252A00AF4(v24, v34);
      }

      else
      {
        sub_252974E7C(v24, v34);
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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
      result = sub_252A00AF4(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_252DFFC2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5463E0, &qword_252E61AE0);
  v36 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + v21;
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v22 + v21);
      if ((v36 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37EE4();
      if (!v25)
      {
        sub_252E37EF4();
      }

      result = sub_252E37F14();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v25;
      *(*(v7 + 56) + v16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_252DFFF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545298, &qword_252E5A618);
  v43 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
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
      v18 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v52 = v19;
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 88 * v22;
      if (v43)
      {
        v44 = *v26;
        v27 = *(v26 + 8);
        v28 = *(v26 + 24);
        v45 = *(v26 + 32);
        v46 = *(v26 + 48);
        v50 = *(v26 + 64);
        v47 = *(v26 + 16);
        v48 = *(v26 + 72);
        v49 = *(v26 + 80);
        v51 = *(v26 + 81);
      }

      else
      {
        v29 = *(v26 + 32);
        v30 = *(v26 + 48);
        v31 = *(v26 + 64);
        v57 = *(v26 + 80);
        v55 = v30;
        v56 = v31;
        v54[2] = v29;
        v32 = *(v26 + 16);
        v54[0] = *v26;
        v54[1] = v32;
        v51 = HIBYTE(v57);
        v49 = v57;
        v50 = v31;
        v45 = v29;
        v46 = v55;
        v47 = v32;
        v48 = *(&v31 + 1);
        v28 = BYTE8(v32);
        v44 = *&v54[0];
        v27 = BYTE8(v54[0]);

        sub_252ADFB08(v54, v53);
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v54[0]) = v27;
      v53[0] = v28;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 88 * v15;
      *v17 = v44;
      *(v17 + 8) = v27;
      *(v17 + 16) = v47;
      *(v17 + 24) = v28;
      *(v17 + 32) = v45;
      *(v17 + 48) = v46;
      *(v17 + 64) = v50;
      *(v17 + 72) = v48;
      *(v17 + 80) = v49;
      *(v17 + 81) = v51;
      ++*(v7 + 16);
      v5 = v42;
      v12 = v52;
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
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_252E002B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_252E35EF4();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546340, &qword_252E61AA0);
  v42 = v4;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_252E00638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545280, &qword_252E5A600);
  v31 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E32E84();
      sub_252E11098(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252E36E94();
      MEMORY[0x2530AE390](*(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

      sub_252E37044();

      result = sub_252E37F14();
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_252E0099C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v23 + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37EE4();
      if (!v26)
      {
        MEMORY[0x2530AE390](v25);
      }

      result = sub_252E37F14();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(*(v9 + 56) + 8 * v17) = v27;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v9;
  return result;
}

uint64_t sub_252E00C68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_252E00F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v33 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      if (v33)
      {
        v22 = *(v5 + 56) + 504 * v20;
        v42 = *v22;
        v43 = *(v22 + 8);
        v44 = *(v22 + 9);
        v23 = *(v22 + 10);
        v45 = *(v22 + 16);
        v46 = *(v22 + 24);
        v47 = *(v22 + 25);
        v48 = *(v22 + 26);
        v49 = *(v22 + 32);
        v51 = *(v22 + 40);
        v50 = *(v22 + 48);
        v53 = *(v22 + 64);
        v52 = *(v22 + 72);
        v54 = *(v22 + 88);
        v55 = *(v22 + 104);
        v56 = *(v22 + 120);
        v57 = *(v22 + 136);
        v58 = *(v22 + 152);
        v59 = *(v22 + 168);
        v60 = *(v22 + 184);
        v61 = *(v22 + 200);
        v62 = *(v22 + 208);
        v64 = *(v22 + 209);
        v63 = *(v22 + 216);
        v67 = *(v22 + 264);
        v68 = *(v22 + 256);
        v65 = *(v22 + 240);
        v66 = *(v22 + 272);
        v69 = *(v22 + 288);
        v40 = *(v22 + 289);
        v41 = *(v22 + 232);
        v70 = *(v22 + 296);
        v71 = *(v22 + 304);
        v72 = *(v22 + 312);
        v74 = *(v22 + 320);
        v76 = *(v22 + 328);
        v75 = *(v22 + 336);
        v77 = *(v22 + 352);
        v79 = *(v22 + 368);
        v80 = *(v22 + 384);
        v81 = *(v22 + 385);
        v82 = *(v22 + 386);
        v83 = *(v22 + 387);
        v84 = *(v22 + 388);
        v34 = *(v22 + 400);
        v35 = *(v22 + 416);
        v36 = *(v22 + 432);
        v37 = *(v22 + 448);
        v38 = *(v22 + 464);
        v39 = *(v22 + 480);
        v73 = *(v22 + 389);
        v78 = *(v22 + 392);
        v85 = *(v22 + 496);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 504 * v20), 0x1F8uLL);
        v85 = *&__dst[31];
        v78 = *(&__dst[24] + 1);
        v73 = BYTE5(__dst[24]);
        v84 = BYTE4(__dst[24]);
        v83 = BYTE3(__dst[24]);
        v82 = BYTE2(__dst[24]);
        v81 = BYTE1(__dst[24]);
        v80 = __dst[24];
        v79 = __dst[23];
        v77 = __dst[22];
        v75 = __dst[21];
        v76 = *(&__dst[20] + 1);
        v74 = *&__dst[20];
        v72 = BYTE8(__dst[19]);
        v70 = *(&__dst[18] + 1);
        v71 = *&__dst[19];
        v69 = __dst[18];
        v67 = *(&__dst[16] + 1);
        v68 = *&__dst[16];
        v65 = __dst[15];
        v66 = __dst[17];
        v40 = BYTE1(__dst[18]);
        v41 = BYTE8(__dst[14]);
        v63 = *(&__dst[13] + 8);
        v64 = BYTE1(__dst[13]);
        v62 = __dst[13];
        v61 = *(&__dst[12] + 1);
        v59 = *(&__dst[10] + 8);
        v60 = *(&__dst[11] + 8);
        v57 = *(&__dst[8] + 8);
        v58 = *(&__dst[9] + 8);
        v55 = *(&__dst[6] + 8);
        v56 = *(&__dst[7] + 8);
        v54 = *(&__dst[5] + 8);
        v52 = *(&__dst[4] + 8);
        v53 = __dst[4];
        v50 = __dst[3];
        v51 = BYTE8(__dst[2]);
        v49 = *&__dst[2];
        v47 = BYTE9(__dst[1]);
        v48 = BYTE10(__dst[1]);
        v46 = BYTE8(__dst[1]);
        v45 = *&__dst[1];
        v23 = BYTE10(__dst[0]);
        v43 = BYTE8(__dst[0]);
        v44 = BYTE9(__dst[0]);
        v38 = __dst[29];
        v39 = __dst[30];
        v36 = __dst[27];
        v37 = __dst[28];
        v34 = __dst[25];
        v35 = __dst[26];
        v42 = *&__dst[0];
        sub_2529353AC(__dst, v86);
      }

      result = sub_252E37EB4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v86[0] = v41;
      LOBYTE(__dst[0]) = v23;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 504 * v15;
      *v16 = v42;
      *(v16 + 8) = v43;
      *(v16 + 9) = v44;
      *(v16 + 10) = v23;
      *(v16 + 16) = v45;
      *(v16 + 24) = v46;
      *(v16 + 25) = v47;
      *(v16 + 26) = v48;
      *(v16 + 32) = v49;
      *(v16 + 40) = v51;
      *(v16 + 48) = v50;
      *(v16 + 64) = v53;
      *(v16 + 72) = v52;
      *(v16 + 88) = v54;
      *(v16 + 104) = v55;
      *(v16 + 120) = v56;
      *(v16 + 136) = v57;
      *(v16 + 152) = v58;
      *(v16 + 168) = v59;
      *(v16 + 184) = v60;
      *(v16 + 200) = v61;
      *(v16 + 208) = v62;
      *(v16 + 209) = v64;
      *(v16 + 216) = v63;
      *(v16 + 232) = v86[0];
      *(v16 + 240) = v65;
      *(v16 + 256) = v68;
      *(v16 + 264) = v67;
      *(v16 + 272) = v66;
      *(v16 + 288) = v69;
      *(v16 + 289) = v40;
      *(v16 + 296) = v70;
      *(v16 + 304) = v71;
      *(v16 + 312) = v72;
      *(v16 + 320) = v74;
      *(v16 + 328) = v76;
      *(v16 + 336) = v75;
      *(v16 + 352) = v77;
      *(v16 + 368) = v79;
      *(v16 + 384) = v80;
      *(v16 + 385) = v81;
      *(v16 + 386) = v82;
      *(v16 + 387) = v83;
      *(v16 + 388) = v84;
      *(v16 + 389) = v73;
      *(v16 + 392) = v78;
      *(v16 + 400) = v34;
      *(v16 + 416) = v35;
      *(v16 + 432) = v36;
      *(v16 + 448) = v37;
      *(v16 + 496) = v85;
      *(v16 + 464) = v38;
      *(v16 + 480) = v39;
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

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_252E015DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      sub_252E37EC4();
      MEMORY[0x2530AE390](v22);
      result = sub_252E37F14();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_252E018A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
  v108 = v4;
  v6 = sub_252E37B44();
  if (*(v5 + 16))
  {
    v7 = 0;
    result = v5 + 64;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v103 = v2;
    v104 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v105 = v5 + 64;
    v106 = v5;
    v107 = v6;
    while (v11)
    {
      v37 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_15:
      v41 = v37 | (v7 << 6);
      v114 = v38;
      if (v108)
      {
        v42 = *(v5 + 56);
        v43 = *(v5 + 48) + 504 * v41;
        v44 = *v43;
        v45 = *(v43 + 9);
        v46 = *(v43 + 10);
        v47 = *(v43 + 16);
        v115 = *(v43 + 24);
        v116 = *(v43 + 8);
        v48 = *(v43 + 25);
        v49 = *(v43 + 26);
        v50 = *(v43 + 32);
        v51 = *(v43 + 40);
        v52 = *(v43 + 48);
        v53 = *(v43 + 64);
        v54 = *(v43 + 72);
        v55 = *(v43 + 88);
        v56 = *(v43 + 104);
        v57 = *(v43 + 120);
        v58 = *(v43 + 136);
        v59 = *(v43 + 152);
        v60 = *(v43 + 168);
        v61 = *(v43 + 184);
        v62 = *(v43 + 200);
        v125 = *(v43 + 208);
        v63 = *(v43 + 209);
        v64 = *(v43 + 216);
        v65 = *(v43 + 232);
        v66 = *(v43 + 240);
        v68 = *(v43 + 256);
        v67 = *(v43 + 264);
        v69 = *(v43 + 272);
        v130 = *(v43 + 288);
        v70 = *(v43 + 289);
        v72 = *(v43 + 296);
        v71 = *(v43 + 304);
        v73 = *(v43 + 312);
        v75 = *(v43 + 320);
        v74 = *(v43 + 328);
        v77 = *(v43 + 336);
        v76 = *(v43 + 352);
        v78 = *(v43 + 368);
        v79 = *(v43 + 384);
        v142 = *(v43 + 385);
        v145 = *(v43 + 386);
        v148 = *(v43 + 387);
        v112 = *(v42 + 8 * v41);
        v80 = *(v43 + 388);
        v82 = *(v43 + 400);
        v81 = *(v43 + 416);
        v84 = *(v43 + 432);
        v83 = *(v43 + 448);
        v86 = *(v43 + 464);
        v85 = *(v43 + 480);
        v87 = *(v43 + 389);
        v88 = *(v43 + 392);
        v89 = *(v43 + 496);
      }

      else
      {
        memcpy(__dst, (*(v5 + 48) + 504 * v41), 0x1F8uLL);
        v113 = *(*(v5 + 56) + 8 * v41);
        v151 = *&__dst[31];
        v146 = *(&__dst[24] + 1);
        v148 = BYTE3(__dst[24]);
        v149 = BYTE4(__dst[24]);
        v143 = BYTE5(__dst[24]);
        v145 = BYTE2(__dst[24]);
        v140 = __dst[24];
        v142 = BYTE1(__dst[24]);
        v191 = __dst[22];
        v193 = __dst[23];
        v137 = __dst[20];
        v135 = BYTE8(__dst[19]);
        v131 = *(&__dst[18] + 1);
        v133 = *&__dst[19];
        v130 = __dst[18];
        v90 = BYTE1(__dst[18]);
        v187 = __dst[17];
        v189 = __dst[21];
        v126 = *(&__dst[16] + 1);
        v128 = *&__dst[16];
        v110 = BYTE8(__dst[14]);
        v183 = *(&__dst[13] + 8);
        v185 = __dst[15];
        v123 = BYTE1(__dst[13]);
        v125 = __dst[13];
        v118 = *(&__dst[12] + 1);
        v179 = *(&__dst[10] + 8);
        v181 = *(&__dst[11] + 8);
        v175 = *(&__dst[8] + 8);
        v177 = *(&__dst[9] + 8);
        v171 = *(&__dst[6] + 8);
        v173 = *(&__dst[7] + 8);
        v167 = *(&__dst[4] + 8);
        v169 = *(&__dst[5] + 8);
        v121 = __dst[4];
        v153 = __dst[3];
        v117 = BYTE8(__dst[2]);
        v120 = *&__dst[2];
        v91 = BYTE10(__dst[1]);
        v92 = BYTE9(__dst[1]);
        v47 = *&__dst[1];
        v46 = BYTE10(__dst[0]);
        v45 = BYTE9(__dst[0]);
        v163 = __dst[29];
        v165 = __dst[30];
        v159 = __dst[27];
        v161 = __dst[28];
        v155 = __dst[25];
        v157 = __dst[26];
        v115 = BYTE8(__dst[1]);
        v116 = BYTE8(__dst[0]);
        v44 = *&__dst[0];
        sub_2529353AC(__dst, v204);
        v93 = v113;
        v52 = v153;
        v82 = v155;
        v81 = v157;
        v84 = v159;
        v83 = v161;
        v86 = v163;
        v85 = v165;
        v54 = v167;
        v55 = v169;
        v56 = v171;
        v57 = v173;
        v58 = v175;
        v87 = v143;
        v59 = v177;
        v60 = v179;
        v88 = v146;
        v61 = v181;
        v64 = v183;
        v74 = *(&v137 + 1);
        v75 = v137;
        v72 = v131;
        v71 = v133;
        v51 = v117;
        v49 = v91;
        v65 = v110;
        v53 = v121;
        v63 = v123;
        v48 = v92;
        v62 = v118;
        v50 = v120;
        v67 = v126;
        v68 = v128;
        v73 = v135;
        v79 = v140;
        v80 = v149;
        v66 = v185;
        v69 = v187;
        v89 = v151;
        v77 = v189;
        v76 = v191;
        v78 = v193;
        v112 = v93;
        v70 = v90;
      }

      v199 = v65;
      v6 = v107;
      *&__dst[0] = v44;
      BYTE8(__dst[0]) = v116;
      v109 = v49;
      BYTE9(__dst[0]) = v45;
      BYTE10(__dst[0]) = v46;
      *&__dst[1] = v47;
      BYTE8(__dst[1]) = v115;
      v111 = v48;
      BYTE9(__dst[1]) = v48;
      BYTE10(__dst[1]) = v49;
      *&__dst[2] = v50;
      BYTE8(__dst[2]) = v51;
      v154 = v52;
      __dst[3] = v52;
      v122 = v53;
      LOBYTE(__dst[4]) = v53;
      v168 = v54;
      v170 = v55;
      *(&__dst[4] + 8) = v54;
      *(&__dst[5] + 8) = v55;
      v172 = v56;
      v174 = v57;
      *(&__dst[6] + 8) = v56;
      *(&__dst[7] + 8) = v57;
      v176 = v58;
      v178 = v59;
      *(&__dst[8] + 8) = v58;
      *(&__dst[9] + 8) = v59;
      v180 = v60;
      v182 = v61;
      *(&__dst[10] + 8) = v60;
      *(&__dst[11] + 8) = v61;
      v119 = v62;
      *(&__dst[12] + 1) = v62;
      LOBYTE(__dst[13]) = v125;
      v124 = v63;
      BYTE1(__dst[13]) = v63;
      v184 = v64;
      v186 = v66;
      *(&__dst[13] + 8) = v64;
      BYTE8(__dst[14]) = v199;
      __dst[15] = v66;
      v127 = v67;
      v129 = v68;
      *&__dst[16] = v68;
      *(&__dst[16] + 1) = v67;
      v188 = v69;
      v190 = v77;
      __dst[17] = v69;
      LOBYTE(__dst[18]) = v130;
      v94 = v70;
      BYTE1(__dst[18]) = v70;
      v132 = v72;
      v134 = v71;
      *(&__dst[18] + 1) = v72;
      *&__dst[19] = v71;
      v136 = v73;
      BYTE8(__dst[19]) = v73;
      v138 = v75;
      v139 = v74;
      *&__dst[20] = v75;
      *(&__dst[20] + 1) = v74;
      __dst[21] = v77;
      __dst[22] = v76;
      v192 = v76;
      v194 = v78;
      __dst[23] = v78;
      v141 = v79;
      LOBYTE(__dst[24]) = v79;
      BYTE1(__dst[24]) = v142;
      BYTE2(__dst[24]) = v145;
      BYTE3(__dst[24]) = v148;
      v150 = v80;
      BYTE4(__dst[24]) = v80;
      v144 = v87;
      BYTE5(__dst[24]) = v87;
      v147 = v88;
      *(&__dst[24] + 1) = v88;
      v156 = v82;
      v158 = v81;
      __dst[25] = v82;
      __dst[26] = v81;
      v160 = v84;
      v162 = v83;
      __dst[27] = v84;
      __dst[28] = v83;
      v164 = v86;
      v166 = v85;
      __dst[29] = v86;
      __dst[30] = v85;
      v152 = v89;
      *&__dst[31] = v89;
      sub_252E37EC4();
      HomeAutomationIntent.hash(into:)(v204);
      result = sub_252E37F14();
      v95 = -1 << *(v107 + 32);
      v96 = result & ~v95;
      v97 = v96 >> 6;
      if (((-1 << v96) & ~*(v12 + 8 * (v96 >> 6))) == 0)
      {
        v98 = 0;
        v99 = (63 - v95) >> 6;
        v15 = v192;
        v14 = v194;
        v17 = v188;
        v16 = v190;
        v19 = v184;
        v18 = v186;
        v21 = v180;
        v20 = v182;
        v23 = v176;
        v22 = v178;
        v25 = v172;
        v24 = v174;
        v27 = v168;
        v26 = v170;
        v29 = v164;
        v28 = v166;
        v31 = v160;
        v30 = v162;
        v33 = v156;
        v32 = v158;
        v34 = v154;
        while (++v97 != v99 || (v98 & 1) == 0)
        {
          v100 = v97 == v99;
          if (v97 == v99)
          {
            v97 = 0;
          }

          v98 |= v100;
          v101 = *(v12 + 8 * v97);
          if (v101 != -1)
          {
            v13 = __clz(__rbit64(~v101)) + (v97 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v96) & ~*(v12 + 8 * (v96 >> 6)))) | v96 & 0x7FFFFFFFFFFFFFC0;
      v15 = v192;
      v14 = v194;
      v17 = v188;
      v16 = v190;
      v19 = v184;
      v18 = v186;
      v21 = v180;
      v20 = v182;
      v23 = v176;
      v22 = v178;
      v25 = v172;
      v24 = v174;
      v27 = v168;
      v26 = v170;
      v29 = v164;
      v28 = v166;
      v31 = v160;
      v30 = v162;
      v33 = v156;
      v32 = v158;
      v34 = v154;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v35 = *(v107 + 48) + 504 * v13;
      *v35 = v44;
      *(v35 + 8) = v116;
      *(v35 + 9) = v45;
      *(v35 + 10) = v46;
      *(v35 + 16) = v47;
      *(v35 + 24) = v115;
      *(v35 + 25) = v111;
      *(v35 + 26) = v109;
      *(v35 + 27) = v202;
      *(v35 + 31) = v203;
      *(v35 + 32) = v50;
      *(v35 + 40) = v51;
      *(v35 + 41) = __dst[0];
      *(v35 + 44) = *(__dst + 3);
      *(v35 + 48) = v34;
      *(v35 + 64) = v122;
      *(v35 + 68) = *(v204 + 3);
      v36 = v204[0];
      *(v35 + 290) = v196;
      *(v35 + 316) = *&v195[3];
      *(v35 + 313) = *v195;
      *(v35 + 65) = v36;
      *(v35 + 200) = v119;
      *(v35 + 208) = v125;
      *(v35 + 209) = v124;
      *(v35 + 214) = v201;
      *(v35 + 210) = v200;
      *(v35 + 232) = v199;
      *(v35 + 236) = *&v198[3];
      *(v35 + 233) = *v198;
      *(v35 + 256) = v129;
      *(v35 + 264) = v127;
      *(v35 + 288) = v130;
      *(v35 + 289) = v94;
      *(v35 + 294) = v197;
      *(v35 + 296) = v132;
      *(v35 + 304) = v134;
      *(v35 + 312) = v136;
      *(v35 + 320) = v138;
      *(v35 + 328) = v139;
      *(v35 + 384) = v141;
      *(v35 + 385) = v142;
      *(v35 + 386) = v145;
      *(v35 + 387) = v148;
      *(v35 + 388) = v150;
      *(v35 + 389) = v144;
      *(v35 + 392) = v147;
      *(v35 + 496) = v152;
      *(v35 + 72) = v27;
      *(v35 + 88) = v26;
      *(v35 + 104) = v25;
      *(v35 + 120) = v24;
      *(v35 + 136) = v23;
      *(v35 + 152) = v22;
      *(v35 + 168) = v21;
      *(v35 + 184) = v20;
      *(v35 + 216) = v19;
      *(v35 + 240) = v18;
      *(v35 + 272) = v17;
      *(v35 + 336) = v16;
      *(v35 + 352) = v15;
      *(v35 + 368) = v14;
      *(v35 + 400) = v33;
      *(v35 + 416) = v32;
      *(v35 + 432) = v31;
      *(v35 + 448) = v30;
      *(v35 + 464) = v29;
      *(v35 + 480) = v28;
      v11 = v114;
      *(*(v107 + 56) + 8 * v13) = v112;
      ++*(v107 + 16);
      result = v105;
      v5 = v106;
    }

    v39 = v7;
    while (1)
    {
      v7 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v7 >= v104)
      {
        break;
      }

      v40 = *(result + 8 * v7);
      ++v39;
      if (v40)
      {
        v37 = __clz(__rbit64(v40));
        v38 = (v40 - 1) & v40;
        goto LABEL_15;
      }
    }

    if ((v108 & 1) == 0)
    {

      v3 = v103;
      goto LABEL_34;
    }

    v102 = 1 << *(v5 + 32);
    v3 = v103;
    if (v102 >= 64)
    {
      bzero(result, ((v102 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v102;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v6;
  return result;
}

uint64_t sub_252E0216C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_252E02420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_252E37B44();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_252E026C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5452E8, &qword_252E5A670);
  v34 = v4;
  result = sub_252E37B44();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_252E37EB4();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_252E02944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
  v33 = v4;
  result = sub_252E37B44();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_252E02BFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F546338, &qword_252E61A98);
  v33 = v4;
  result = sub_252E37B44();
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
        sub_252927BEC(v24, v34);
      }

      else
      {
        sub_252929E74(v24, v34);
      }

      sub_252E37EC4();
      sub_252E37044();
      result = sub_252E37F14();
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
      result = sub_252927BEC(v34, *(v7 + 56) + 40 * v15);
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

_OWORD *sub_252E02EC0(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  result = sub_252A00AF4(a3, (a4[7] + 32 * a1));
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

unint64_t sub_252E02F2C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_252E02F70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_252A00AF4(a4, (a5[7] + 32 * a1));
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

unint64_t sub_252E02FDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 88 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a4 + 80);
  v8 = *(a4 + 64);
  *(v6 + 48) = *(a4 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a4 + 32);
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

uint64_t sub_252E03048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_252E35EF4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

void *sub_252E030F8(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 504 * a1), __src, 0x1F8uLL);
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

void *sub_252E03168(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 504 * a1), a2, 0x1F8uLL);
  *(a4[7] + 8 * a1) = a3;
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

unint64_t sub_252E031E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_252E0322C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_252E03274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

void *sub_252E03314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F545160, &unk_252E5A4E0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        sub_252974E7C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_252A00AF4(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_252E03490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545158, &qword_252E5A4D8);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_252E035F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545220, &qword_252E5A5A0);
  v2 = *v0;
  v3 = sub_252E37B34();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_252E03770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  v2 = *v0;
  v3 = sub_252E37B34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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