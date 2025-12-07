uint64_t sub_2272BD658(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_2272BD7F4;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_2272BD784;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2272BD784()
{
  v1 = *(v0 + 56);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2272BD7F4()
{
  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_2272BD860()
{
  v62 = sub_22766A020();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22766B390();
  MEMORY[0x28223BE20](v2);
  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v6)
  {
    return;
  }

  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v5;
  v65 = v3;
  v66 = v0;
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_78:

    v58 = 0;
LABEL_79:
    v45 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch;
    v46 = v66;
    v47 = *(v66 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch);
    v48 = v65;
    v49 = v64;
    v50 = v63;
    if (v47 == 2 || ((v58 ^ v47) & 1) != 0)
    {
      sub_22766A730();
      v51 = sub_22766B380();
      v52 = sub_22766C8B0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109120;
        *(v53 + 4) = v58;
        _os_log_impl(&dword_226E8E000, v51, v52, "Updating watch found state to: %{BOOL}d", v53, 8u);
        MEMORY[0x22AA9A450](v53, -1, -1);
      }

      (*(v49 + 8))(v50, v48);
      *(v46 + v45) = v58;
      v54 = [objc_opt_self() standardUserDefaults];
      v55 = sub_22766BFD0();
      [v54 setBool:v58 forKey:v55];

      if (v58)
      {
        swift_getObjectType();
        v56 = v60;
        sub_22766A010();
        v57 = v62;
        sub_2276699D0();
        (*(v61 + 8))(v56, v57);
      }
    }

    return;
  }

  v8 = 0;
  v59 = &v67 + 1;
  while (v8 < *(v6 + 16))
  {
    v9 = (v6 + 32 + (v8 << 6));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v73 = v9[2];
    v74 = v12;
    v72[0] = v10;
    v72[1] = v11;
    v13 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      goto LABEL_5;
    }

    v14 = v73;
    v71 = v74;
    v69 = 0x6863746157;
    v70 = 0xE500000000000000;
    sub_2272BF738(v72, &v67);
    sub_226FB2548();
    if ((sub_22766CC00() & 1) == 0)
    {
      sub_2272BF794(v72);
      goto LABEL_5;
    }

    v67 = v14;
    v68 = v13;
    *&v71 = 46;
    *(&v71 + 1) = 0xE100000000000000;
    v15 = sub_22766CBC0();
    if (!v15[2] || ((v17 = v15[4], v16 = v15[5], , , v18 = HIBYTE(v16) & 0xF, v19 = v17 & 0xFFFFFFFFFFFFLL, (v16 & 0x2000000000000000) != 0) ? (v20 = HIBYTE(v16) & 0xF) : (v20 = v17 & 0xFFFFFFFFFFFFLL), !v20))
    {
      sub_2272BF794(v72);

      goto LABEL_5;
    }

    if ((v16 & 0x1000000000000000) == 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v67 = v17;
        v68 = v16 & 0xFFFFFFFFFFFFFFLL;
        if (v17 == 43)
        {
          if (!v18)
          {
            goto LABEL_90;
          }

          if (--v18)
          {
            v23 = 0;
            v33 = v59;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (!v18)
          {
            goto LABEL_89;
          }

          if (--v18)
          {
            v23 = 0;
            v27 = v59;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v18)
        {
          v23 = 0;
          v38 = &v67;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v18)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v17 & 0x1000000000000000) != 0)
        {
          v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_22766CEC0();
        }

        v22 = *v21;
        if (v22 == 43)
        {
          if (v19 < 1)
          {
            goto LABEL_87;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v23 = 0;
            if (!v21)
            {
              goto LABEL_63;
            }

            v30 = v21 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (v19 < 1)
          {
            goto LABEL_88;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v23 = 0;
            if (v21)
            {
              v24 = v21 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  goto LABEL_71;
                }

                v26 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_71;
                }

                v23 = v26 - v25;
                if (__OFSUB__(v26, v25))
                {
                  goto LABEL_71;
                }

                ++v24;
                if (!--v18)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v18) = 0;
LABEL_72:
            LOBYTE(v71) = v18;
            v41 = v18;
            sub_2272BF794(v72);

            if (v41)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

        else
        {
          if (!v19)
          {
            goto LABEL_71;
          }

          v23 = 0;
          if (!v21)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v36 = *v21 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v23 = 0;
      LOBYTE(v18) = 1;
      goto LABEL_72;
    }

    sub_2274AD75C(v17, v16, 10);
    v23 = v42;
    v44 = v43;
    sub_2272BF794(v72);

    if (v44)
    {
      goto LABEL_5;
    }

LABEL_73:
    if (v23 > 6)
    {

      v58 = 1;
      goto LABEL_79;
    }

LABEL_5:
    if (++v8 == v7)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

void sub_2272BDFA0()
{
  v62 = sub_22766A020();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22766B390();
  MEMORY[0x28223BE20](v2);
  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v6)
  {
    return;
  }

  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v5;
  v65 = v3;
  v66 = v0;
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_78:

    v58 = 0;
LABEL_79:
    v45 = OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone;
    v46 = v66;
    v47 = *(v66 + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone);
    v48 = v65;
    v49 = v64;
    v50 = v63;
    if (v47 == 2 || ((v58 ^ v47) & 1) != 0)
    {
      sub_22766A730();
      v51 = sub_22766B380();
      v52 = sub_22766C8B0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109120;
        *(v53 + 4) = v58;
        _os_log_impl(&dword_226E8E000, v51, v52, "Updating phone found state to: %{BOOL}d", v53, 8u);
        MEMORY[0x22AA9A450](v53, -1, -1);
      }

      (*(v49 + 8))(v50, v48);
      *(v46 + v45) = v58;
      v54 = [objc_opt_self() standardUserDefaults];
      v55 = sub_22766BFD0();
      [v54 setBool:v58 forKey:v55];

      if (v58)
      {
        swift_getObjectType();
        v56 = v60;
        sub_22766A010();
        v57 = v62;
        sub_2276699D0();
        (*(v61 + 8))(v56, v57);
      }
    }

    return;
  }

  v8 = 0;
  v59 = &v67 + 1;
  while (v8 < *(v6 + 16))
  {
    v9 = (v6 + 32 + (v8 << 6));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v73 = v9[2];
    v74 = v12;
    v72[0] = v10;
    v72[1] = v11;
    v13 = *(&v73 + 1);
    if (!*(&v73 + 1))
    {
      goto LABEL_5;
    }

    v14 = v73;
    v71 = v74;
    v69 = 0x656E6F685069;
    v70 = 0xE600000000000000;
    sub_2272BF738(v72, &v67);
    sub_226FB2548();
    if ((sub_22766CC00() & 1) == 0)
    {
      sub_2272BF794(v72);
      goto LABEL_5;
    }

    v67 = v14;
    v68 = v13;
    *&v71 = 46;
    *(&v71 + 1) = 0xE100000000000000;
    v15 = sub_22766CBC0();
    if (!v15[2] || ((v17 = v15[4], v16 = v15[5], , , v18 = HIBYTE(v16) & 0xF, v19 = v17 & 0xFFFFFFFFFFFFLL, (v16 & 0x2000000000000000) != 0) ? (v20 = HIBYTE(v16) & 0xF) : (v20 = v17 & 0xFFFFFFFFFFFFLL), !v20))
    {
      sub_2272BF794(v72);

      goto LABEL_5;
    }

    if ((v16 & 0x1000000000000000) == 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v67 = v17;
        v68 = v16 & 0xFFFFFFFFFFFFFFLL;
        if (v17 == 43)
        {
          if (!v18)
          {
            goto LABEL_90;
          }

          if (--v18)
          {
            v23 = 0;
            v33 = v59;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (!v18)
          {
            goto LABEL_89;
          }

          if (--v18)
          {
            v23 = 0;
            v27 = v59;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v18)
        {
          v23 = 0;
          v38 = &v67;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v18)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v17 & 0x1000000000000000) != 0)
        {
          v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v21 = sub_22766CEC0();
        }

        v22 = *v21;
        if (v22 == 43)
        {
          if (v19 < 1)
          {
            goto LABEL_87;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v23 = 0;
            if (!v21)
            {
              goto LABEL_63;
            }

            v30 = v21 + 1;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              v32 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                break;
              }

              ++v30;
              if (!--v18)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v22 == 45)
        {
          if (v19 < 1)
          {
            goto LABEL_88;
          }

          v18 = v19 - 1;
          if (v19 != 1)
          {
            v23 = 0;
            if (v21)
            {
              v24 = v21 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  goto LABEL_71;
                }

                v26 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_71;
                }

                v23 = v26 - v25;
                if (__OFSUB__(v26, v25))
                {
                  goto LABEL_71;
                }

                ++v24;
                if (!--v18)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v18) = 0;
LABEL_72:
            LOBYTE(v71) = v18;
            v41 = v18;
            sub_2272BF794(v72);

            if (v41)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

        else
        {
          if (!v19)
          {
            goto LABEL_71;
          }

          v23 = 0;
          if (!v21)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v36 = *v21 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            ++v21;
            if (!--v19)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v23 = 0;
      LOBYTE(v18) = 1;
      goto LABEL_72;
    }

    sub_2274AD75C(v17, v16, 10);
    v23 = v42;
    v44 = v43;
    sub_2272BF794(v72);

    if (v44)
    {
      goto LABEL_5;
    }

LABEL_73:
    if (v23 > 13)
    {

      v58 = 1;
      goto LABEL_79;
    }

LABEL_5:
    if (++v8 == v7)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_2272BE6E0()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BE7AC, v0, 0);
}

uint64_t sub_2272BE7AC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 16))(v1, *(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedPhoneAvailable, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 80))
  {
    goto LABEL_2;
  }

  LODWORD(v4) = *(*(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedPhone);
  if (v4 == 2)
  {
    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = sub_22766BFD0();
    v7 = [v5 objectForKey_];

    if (!v7)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
LABEL_2:
      LOBYTE(v4) = 1;
      goto LABEL_6;
    }

    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
    v8 = [v4 standardUserDefaults];
    v9 = sub_22766BFD0();
    LOBYTE(v4) = [v8 BOOLForKey_];
  }

LABEL_6:

  v10 = *(v0 + 8);

  return v10(v4 & 1);
}

uint64_t sub_2272BE9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2272BEA40;

  return sub_2272BCAFC();
}

uint64_t sub_2272BEA40()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_2272BEB50, v1, 0);
}

uint64_t sub_2272BEB50()
{
  sub_2272BDFA0();
  sub_2272BD860();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272BECC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_2272BE9AC(a1, v4, v5, v6);
}

uint64_t sub_2272BED74()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272BEE40, v0, 0);
}

uint64_t sub_2272BEE40()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v2 + 16))(v1, *(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver__fakeSupportedWatchAvailable, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 80))
  {
    goto LABEL_2;
  }

  LODWORD(v4) = *(*(v0 + 48) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountHasSupportedWatch);
  if (v4 == 2)
  {
    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = sub_22766BFD0();
    v7 = [v5 objectForKey_];

    if (!v7)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
LABEL_2:
      LOBYTE(v4) = 1;
      goto LABEL_6;
    }

    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
    v8 = [v4 standardUserDefaults];
    v9 = sub_22766BFD0();
    LOBYTE(v4) = [v8 BOOLForKey_];
  }

LABEL_6:

  v10 = *(v0 + 8);

  return v10(v4 & 1);
}

uint64_t sub_2272BF040()
{
  *(v1 + 208) = v0;
  v2 = swift_task_alloc();
  *(v1 + 216) = v2;
  *v2 = v1;
  v2[1] = sub_2272BF0D0;

  return sub_2272BCAFC();
}

uint64_t sub_2272BF0D0()
{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_2272BF1E0, v1, 0);
}

void sub_2272BF1E0()
{
  v50 = v0;
  v1 = *(*(v0 + 208) + OBJC_IVAR____TtC15SeymourServices21AccountDeviceObserver_accountOwnedDevices);
  if (!v1)
  {
    v46 = 0;
LABEL_88:
    v47 = *(v0 + 8);

    v47(v46);
    return;
  }

  v2 = *(v1 + 16);

  if (!v2)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_87:

    v46 = v48;
    goto LABEL_88;
  }

  v3 = 0;
  v48 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v4 = (v1 + 32 + (v3 << 6));
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    *(v0 + 48) = v4[2];
    *(v0 + 64) = v7;
    *(v0 + 16) = v5;
    *(v0 + 32) = v6;
    ++v3;
    v8 = *(v0 + 72);
    *(v0 + 144) = *(v0 + 64);
    *(v0 + 152) = v8;
    *(v0 + 160) = 0x6863746157;
    *(v0 + 168) = 0xE500000000000000;
    sub_2272BF738(v0 + 16, v0 + 80);
    sub_226FB2548();
    if (sub_22766CC00())
    {
      goto LABEL_4;
    }

    v9 = *(v0 + 56);
    if (!v9)
    {
      goto LABEL_4;
    }

    *(v0 + 176) = *(v0 + 48);
    *(v0 + 184) = v9;
    *(v0 + 192) = 46;
    *(v0 + 200) = 0xE100000000000000;
    v10 = sub_22766CBC0();
    if (!v10[2] || ((v12 = v10[4], v11 = v10[5], , , v13 = HIBYTE(v11) & 0xF, v14 = v12 & 0xFFFFFFFFFFFFLL, (v11 & 0x2000000000000000) != 0) ? (v15 = HIBYTE(v11) & 0xF) : (v15 = v12 & 0xFFFFFFFFFFFFLL), !v15))
    {
      sub_2272BF794(v0 + 16);

      goto LABEL_5;
    }

    if ((v11 & 0x1000000000000000) == 0)
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v49[0] = v12;
        v49[1] = v11 & 0xFFFFFFFFFFFFFFLL;
        if (v12 == 43)
        {
          if (!v13)
          {
            goto LABEL_92;
          }

          if (--v13)
          {
            v18 = 0;
            v28 = v49 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v13)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v12 == 45)
        {
          if (!v13)
          {
            goto LABEL_93;
          }

          if (--v13)
          {
            v18 = 0;
            v22 = v49 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v13)
        {
          v18 = 0;
          v33 = v49;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v13)
            {
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v16 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v16 = sub_22766CEC0();
        }

        v17 = *v16;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_94;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v16)
            {
              goto LABEL_63;
            }

            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_95;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (v16)
            {
              v19 = v16 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_71;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_71;
                }

                v18 = v21 - v20;
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_71;
                }

                ++v19;
                if (!--v13)
                {
                  goto LABEL_72;
                }
              }
            }

LABEL_63:
            LOBYTE(v13) = 0;
LABEL_72:
            v36 = v13;
            goto LABEL_73;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_71;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_63;
          }

          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_63;
            }
          }
        }
      }

LABEL_71:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_72;
    }

    sub_2274AD75C(v12, v11, 10);
    v18 = v44;
    v36 = v45;
LABEL_73:

    if ((v36 & 1) != 0 || v18 <= 15)
    {
LABEL_4:
      sub_2272BF794(v0 + 16);
LABEL_5:
      if (v3 == v2)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v37 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_226F1FAE8(0, *(v48 + 16) + 1, 1);
        v37 = v48;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_226F1FAE8((v38 > 1), v39 + 1, 1);
        v37 = v48;
      }

      *(v37 + 16) = v39 + 1;
      v48 = v37;
      v40 = (v37 + (v39 << 6));
      v41 = *(v0 + 16);
      v42 = *(v0 + 32);
      v43 = *(v0 + 64);
      v40[4] = *(v0 + 48);
      v40[5] = v43;
      v40[2] = v41;
      v40[3] = v42;
      if (v3 == v2)
      {
        goto LABEL_87;
      }
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t sub_2272BF7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC758, &qword_22767ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272BF858(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_2272BD430(a1, a2, v2 + 16);
}

unint64_t sub_2272BF904()
{
  result = qword_27D7BC768;
  if (!qword_27D7BC768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC760, &unk_22767ED48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC768);
  }

  return result;
}

uint64_t sub_2272BF968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_2272BC8F4(a1, v4, v5, v6);
}

void sub_2272BFA1C(void *a1)
{
  v2 = [a1 workoutIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 sessionIdentifier];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227667E30();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2272BFFA4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static SampleContentArchivedSession.representativeSamples()()
{
  v17 = sub_227667E50();
  v0 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v3 = swift_allocObject();
  v16 = xmmword_227670CD0;
  *(v3 + 16) = xmmword_227670CD0;
  *(v3 + 32) = sub_22766C0A0();
  *(v3 + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = v16;
  *(v5 + 32) = sub_22766C0A0();
  *(v5 + 40) = v6;
  v23 = v5;
  v24[0] = v3;
  v24[1] = v24;
  v24[2] = &v23;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v22 = v21;
  v19 = sub_2272BFE28();
  v20 = v19;
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v18 = MEMORY[0x277D84F90];
    result = sub_226F1FBC8(0, v8, 0);
    v10 = 0;
    v11 = v18;
    v15[1] = v0 + 32;
    *&v16 = v7;
    v12 = v7 + 56;
    while (v10 < *(v7 + 16))
    {

      sub_227667E30();
      v18 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1FBC8((v13 > 1), v14 + 1, 1);
        v11 = v18;
      }

      ++v10;
      *(v11 + 16) = v14 + 1;
      result = (*(v0 + 32))(v11 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v14, v2, v17);
      v12 += 32;
      v7 = v16;
      if (v8 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2272BFE28()
{
  result = qword_27D7B8500;
  if (!qword_27D7B8500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8500);
  }

  return result;
}

void sub_2272BFEB0(void *a1)
{
  sub_227667E40();
  v2 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];

  sub_227667E20();
  v3 = sub_22766BFD0();

  [a1 setSessionIdentifier_];
}

uint64_t sub_2272BFF4C(uint64_t a1)
{
  result = sub_2272BFFA4(&qword_2813A55A0, MEMORY[0x277D533B8], &protocol conformance descriptor for SampleContentArchivedSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272BFFA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272BFFEC()
{
  result = sub_226F4A780(&unk_283A918E8);
  qword_2813B20C8 = result;
  return result;
}

uint64_t sub_2272C0014@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CD0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_2272C0088()
{
  if (qword_28139B930 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2272C00E4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227664A30();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2272C010C(uint64_t a1)
{
  *(a1 + 24) = sub_2272C0174(&qword_2813A5790, &unk_2276858F0);
  result = sub_2272C0174(&qword_2813A5788, MEMORY[0x277D50CD8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2272C0174(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2272C01B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_227669B70();
    sub_2272C0DBC(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2272C02C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  v7 = *(a1 + 80);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 80) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2273A6A3C(0, v7[2] + 1, 1, v7);
    *(a1 + 80) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2273A6A3C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_2272C36BC;
  v11[5] = v6;
  *(a1 + 80) = v7;
  return swift_endAccess();
}

uint64_t sub_2272C03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  swift_beginAccess();
  v7 = *(a1 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 88) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2273A6A50(0, v7[2] + 1, 1, v7);
    *(a1 + 88) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2273A6A50((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_2272C3684;
  v11[5] = v6;
  *(a1 + 88) = v7;
  return swift_endAccess();
}

void sub_2272C04E4()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  swift_retain_n();
  v6 = sub_22766BFD0();
  v16 = sub_2272C3624;
  v17 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2272C0D54;
  v15 = &block_descriptor_14;
  v7 = _Block_copy(&aBlock);

  v16 = sub_2272C3654;
  v17 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2272C0D54;
  v15 = &block_descriptor_17;
  v8 = _Block_copy(&aBlock);

  v16 = sub_2272C0950;
  v17 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_226E9D72C;
  v15 = &block_descriptor_20;
  v9 = _Block_copy(&aBlock);

  v16 = sub_2272C0A84;
  v17 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2272C0D54;
  v15 = &block_descriptor_23;
  v10 = _Block_copy(&aBlock);

  v16 = sub_2272C0BBC;
  v17 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_226FFCE80;
  v15 = &block_descriptor_26;
  v11 = _Block_copy(&aBlock);

  CacheDeleteRegister();
  _Block_release(v11);
  _Block_release(v10);
  _Block_release(v9);
  _Block_release(v8);
  _Block_release(v7);
}

uint64_t sub_2272C0874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_22766BEA0();
  }

  a4(a1, 0);

  v6 = sub_22766BE90();

  return v6;
}

uint64_t sub_2272C0950()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CacheDelete] Purge Cancel is not supported...", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2272C0A84()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CacheDelete] Periodic purge is not supported...", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2272C0BBC(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v6 = a1;
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_226E8E000, v7, v8, "[CacheDelete] Received notifications: %{public}@", v9, 0xCu);
    sub_226E97D1C(v10, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2272C0D54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v7 = v5(a2, v6);

  return v7;
}

uint64_t sub_2272C0DBC(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = sub_22766B390();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  result = sub_2276633F0();
  if ((v17 & 1) == 0 || result != 5)
  {
    return result;
  }

  v39 = v9;
  __swift_project_boxed_opaque_existential_0((v41 + 32), *(v41 + 56));
  sub_2276696A0();
  v19 = v42[0];
  v18 = v42[1];
  if (sub_227663430() == v19 && v20 == v18)
  {

LABEL_7:
    sub_22766A6C0();
    (*(v3 + 16))(v8, a1, v2);
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42[0] = v25;
      *v24 = 136315138;
      sub_226E9ED18(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
      v26 = sub_22766D140();
      v28 = v27;
      (*(v3 + 8))(v8, v2);
      v29 = sub_226E97AE8(v26, v28, v42);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_226E8E000, v22, v23, "[CacheDelete] Handling completed asset bundle %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    (*(v40 + 8))(v14, v39);
    return sub_2272C1454();
  }

  v21 = sub_22766D190();

  if (v21)
  {
    goto LABEL_7;
  }

  sub_22766A6C0();
  v30 = v3;
  (*(v3 + 16))(v5, a1, v2);
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42[0] = v34;
    *v33 = 136315138;
    sub_226E9ED18(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v35 = sub_22766D140();
    v37 = v36;
    (*(v30 + 8))(v5, v2);
    v38 = sub_226E97AE8(v35, v37, v42);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_226E8E000, v31, v32, "[CacheDelete] Ignoring AssetBundle update because this isn't the downloading device %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v5, v2);
  }

  return (*(v40 + 8))(v11, v39);
}

uint64_t sub_2272C1454()
{
  v1 = sub_22766B3B0();
  v16 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B3F0();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v8 + 104))(v10, *MEMORY[0x277D851D0], v7);
  v11 = sub_22766C980();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_2272C3390;
  v19 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  sub_22766B3D0();
  v17 = MEMORY[0x277D84F90];
  sub_226E9ED18(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v6, v3, v12);
  _Block_release(v12);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);
}

void sub_2272C17B0()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC780, &qword_22767EE48);
  inited = swift_initStackObject();
  v18 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000022769C900;
  *(inited + 48) = sub_22766BFD0();
  v5 = sub_22714B234(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BC788, &qword_22767EE50);
  sub_2272C1B34(3u, v5);
  v7 = v6;

  v8 = swift_initStackObject();
  *(v8 + 32) = 0x45445F4548434143;
  *(v8 + 16) = v18;
  *(v8 + 40) = 0xEF44495F4554454CLL;
  *(v8 + 48) = sub_22766BFD0();
  v9 = sub_22714B234(v8);
  swift_setDeallocating();
  sub_226E97D1C(v8 + 32, &qword_27D7BC788, &qword_22767EE50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v7;
  sub_2272C3398(v9, sub_2272C2B68, 0, isUniquelyReferenced_nonNull_native, &v19);

  v11 = sub_22766BE90();

  sub_22766A6C0();
  v12 = v11;
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_226E8E000, v13, v14, "[CacheDelete] Reporting Usage: %{public}@", v15, 0xCu);
    sub_226E97D1C(v16, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  CacheDeleteUpdatePurgeable();
}

void sub_2272C1B34(unsigned int a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v70 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  sub_22766A6C0();

  v14 = sub_22766B380();
  v15 = sub_22766C8B0();

  v16 = os_log_type_enabled(v14, v15);
  v73 = v2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v71 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v76[0] = v19;
    *v18 = 136446466;
    LODWORD(v77) = a1;
    type metadata accessor for CacheDeleteUrgency(0);
    v20 = sub_22766C060();
    v22 = sub_226E97AE8(v20, v21, v76);
    v70 = v6;
    v23 = v10;
    v24 = a1;
    v25 = v22;

    *(v18 + 4) = v25;
    *(v18 + 12) = 2082;
    v77 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC778, &unk_22767EE38);
    v26 = sub_22766CB80();
    v28 = sub_226E97AE8(v26, v27, v76);

    *(v18 + 14) = v28;
    a1 = v24;
    v10 = v23;
    _os_log_impl(&dword_226E8E000, v14, v15, "[CacheDelete] Begin Purgeable Block, urgency: %{public}s, info: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v19, -1, -1);
    v29 = v18;
    v5 = v71;
    MEMORY[0x22AA9A450](v29, -1, -1);

    v74 = *(v70 + 8);
  }

  else
  {

    v74 = *(v6 + 8);
  }

  v74(v13, v5);
  v77 = MEMORY[0x277D84F98];
  if (a2)
  {
    if (*(a2 + 16) && (sub_226E92000(0xD000000000000013, 0x800000022769C900), (v30 & 1) != 0))
    {
      v31 = swift_unknownObjectRetain();
    }

    else
    {
      v31 = 0;
    }

    sub_227364148(v31, 0xD000000000000013, 0x800000022769C900);
  }

  if (a1 >= 5)
  {
    v32 = 0;
  }

  else
  {
    v32 = 0x201010100uLL >> (8 * a1);
  }

  sub_22766A6C0();
  v33 = sub_22766B380();
  v34 = sub_22766C8B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v5;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v76[0] = v37;
    *v36 = 136446466;
    LOBYTE(v75) = v32;
    v38 = sub_2272C333C();
    v39 = MEMORY[0x22AA958B0](&type metadata for AssetPurgeUrgency, v38);
    v41 = sub_226E97AE8(v39, v40, v76);
    v71 = v10;
    v42 = a1;
    v43 = v41;

    *(v36 + 4) = v43;
    *(v36 + 12) = 2082;
    LODWORD(v75) = v42;
    type metadata accessor for CacheDeleteUrgency(0);
    v44 = sub_22766C060();
    v46 = sub_226E97AE8(v44, v45, v76);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_226E8E000, v33, v34, "[CacheDelete] beginning purgeable amount request, purgeUrgency: %{public}s, %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v37, -1, -1);
    MEMORY[0x22AA9A450](v36, -1, -1);

    v47 = v71;
    v48 = v35;
    v49 = v35;
  }

  else
  {

    v47 = v10;
    v48 = v5;
    v49 = v5;
  }

  v74(v47, v49);
  v50 = v73;
  swift_beginAccess();
  v51 = *(v50 + 80);
  v52 = *(v51 + 16);

  v53 = 0;
  v54 = v51 + 40;
  v55 = -1;
  while (v55 - v52 != -1)
  {
    if (++v55 >= *(v51 + 16))
    {
      __break(1u);
      return;
    }

    v56 = v54 + 16;
    v57 = *(v54 - 8);

    v58 = sub_2272C2BB0(v32, v57);

    v54 = v56;
    v59 = __CFADD__(v53, v58);
    v53 += v58;
    if (v59)
    {
      __break(1u);
      break;
    }
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v61 = v77;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v61;
  sub_22736B864(v60, 0xD000000000000013, 0x800000022769C8E0, isUniquelyReferenced_nonNull_native);
  v63 = v72;
  sub_22766A6C0();
  v64 = v60;
  v65 = sub_22766B380();
  v66 = sub_22766C8B0();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138543362;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    _os_log_impl(&dword_226E8E000, v65, v66, "[CacheDelete] End Purgeable Block, returning purgeable amount: %{public}@", v67, 0xCu);
    sub_226E97D1C(v68, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v68, -1, -1);
    MEMORY[0x22AA9A450](v67, -1, -1);
  }

  else
  {
    v69 = v65;
    v65 = v64;
  }

  v74(v63, v48);
}

void sub_2272C21F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v86 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  sub_22766A6C0();
  sub_22766B370();
  v18 = *(v5 + 8);
  v18(v17, v4);
  sub_22766A6C0();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  v21 = os_log_type_enabled(v19, v20);
  v93 = v5 + 8;
  v94 = a2;
  v91 = a1;
  v92 = v18;
  if (!v21)
  {

    v18(v14, v4);
    v33 = v91;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_12:
    v40 = v87;
    sub_22766A6C0();
    v41 = sub_22766B380();
    v42 = sub_22766C8B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_226E8E000, v41, v42, "[CacheDelete] End Purge Block, no purge info received", v43, 2u);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    v18(v40, v4);
    return;
  }

  v89 = v11;
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v97 = v23;
  *v22 = 136446466;
  LODWORD(v96) = a1;
  type metadata accessor for CacheDeleteUrgency(0);
  v24 = sub_22766C060();
  v26 = sub_226E97AE8(v24, v25, &v97);

  *(v22 + 4) = v26;
  v27 = v94;
  *(v22 + 12) = 2082;
  if (!v27)
  {
    sub_22714B234(MEMORY[0x277D84F90]);
  }

  v28 = sub_22766BEC0();
  v30 = v29;

  v31 = v28;
  a2 = v94;
  v32 = sub_226E97AE8(v31, v30, &v97);

  *(v22 + 14) = v32;
  _os_log_impl(&dword_226E8E000, v19, v20, "[CacheDelete] Begin Purge Block, urgency: %{public}s, info: %{public}s", v22, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AA9A450](v23, -1, -1);
  MEMORY[0x22AA9A450](v22, -1, -1);

  v18 = v92;
  v92(v14, v4);
  v11 = v89;
  v33 = v91;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_5:
  v34 = *(a2 + 16);
  v87 = "performPurge(urgency:info:)";
  if (v34 && (v35 = sub_226E92000(0xD000000000000013, 0x800000022769C8E0), (v36 & 1) != 0))
  {
    v97 = *(*(a2 + 56) + 8 * v35);
    swift_unknownObjectRetain();
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v96;
    }

    else
    {
      v38 = 0;
    }

    v39 = v37 ^ 1;
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if (v33 >= 5)
  {
    v44 = 0;
  }

  else
  {
    v44 = 0x201010100uLL >> (8 * v33);
  }

  sub_22766A6C0();
  v45 = v11;
  v46 = sub_22766B380();
  v47 = sub_22766C8B0();
  v48 = os_log_type_enabled(v46, v47);
  v86 = v4;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v96 = v50;
    v97 = v38;
    *v49 = 136446722;
    LOBYTE(v98) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC70, &qword_2276765B0);
    v89 = v45;
    v51 = sub_22766CB80();
    v53 = sub_226E97AE8(v51, v52, &v96);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2082;
    LOBYTE(v97) = v44;
    v54 = sub_2272C333C();
    v55 = MEMORY[0x22AA958B0](&type metadata for AssetPurgeUrgency, v54);
    v57 = sub_226E97AE8(v55, v56, &v96);

    *(v49 + 14) = v57;
    *(v49 + 22) = 2080;
    v97 = 0;
    v98 = 0xE000000000000000;
    LODWORD(v95) = v91;
    type metadata accessor for CacheDeleteUrgency(0);
    sub_22766CF90();
    v58 = sub_226E97AE8(v97, v98, &v96);

    *(v49 + 24) = v58;
    _os_log_impl(&dword_226E8E000, v46, v47, "[CacheDelete] begin purge request for amount:%{public}s,purgeUrgency:%{public}s,%s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v50, -1, -1);
    MEMORY[0x22AA9A450](v49, -1, -1);

    v92(v89, v4);
  }

  else
  {

    v18(v45, v4);
  }

  v59 = v90;
  swift_beginAccess();
  v60 = *(v59 + 88);
  v61 = *(v60 + 16);

  v62 = 0;
  v63 = (v60 + 40);
  v64 = -v61;
  v65 = -1;
  while (v64 + v65 != -1)
  {
    if (++v65 >= *(v60 + 16))
    {
      __break(1u);
      return;
    }

    v66 = v63 + 2;
    v68 = *(v63 - 1);
    v67 = *v63;

    v69 = sub_2272C2F6C(v44, v38, v39, v68, v67);

    v63 = v66;
    v70 = __CFADD__(v62, v69);
    v62 += v69;
    if (v70)
    {
      __break(1u);
      break;
    }
  }

  v96 = MEMORY[0x277D84F98];
  if (*(v94 + 16))
  {
    sub_226E92000(0xD000000000000013, 0x800000022769C900);
    v71 = v87;
    v72 = v88;
    if (v73)
    {
      v74 = swift_unknownObjectRetain();
    }

    else
    {
      v74 = 0;
    }
  }

  else
  {
    v74 = 0;
    v71 = v87;
    v72 = v88;
  }

  sub_227364148(v74, 0xD000000000000013, 0x800000022769C900);
  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v76 = v96;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = v76;
  sub_22736B864(v75, 0xD000000000000013, v71 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
  sub_22766A6C0();
  v78 = v75;
  v79 = sub_22766B380();
  v80 = sub_22766C8B0();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *v81 = 138543362;
    *(v81 + 4) = v78;
    *v82 = v78;
    v83 = v78;
    _os_log_impl(&dword_226E8E000, v79, v80, "[CacheDelete] End Purge Block, returning actual purged amount: %{public}@", v81, 0xCu);
    sub_226E97D1C(v82, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v82, -1, -1);
    MEMORY[0x22AA9A450](v81, -1, -1);
  }

  else
  {
    v83 = v79;
    v79 = v78;
  }

  v84 = v86;
  v85 = v92;

  v85(v72, v84);
}

uint64_t sub_2272C2AE4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2272C2B68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_2272C2BB0(char a1, void (*a2)(char *))
{
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC770, &qword_22767EE30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  sub_22766A6C0();
  sub_22766B370();
  v14[0] = *(v9 + 8);
  v14[1] = v8;
  (v14[0])(v12, v8);
  v16 = a1;
  v15(&v16);
  sub_227669950();
  sub_227669940();
  (*(v5 + 8))(v7, v4);
  return v17;
}

uint64_t sub_2272C2F6C(char a1, uint64_t a2, int a3, void (*a4)(char *, uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC770, &qword_22767EE30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - v15;
  sub_22766A6C0();
  sub_22766B370();
  v19 = *(v13 + 8);
  v20 = v12;
  v19(v16, v12);
  v26 = a1;
  v24 = a2;
  v25 = v21 & 1;
  v23(&v26, &v24);
  sub_227669950();
  sub_227669940();
  (*(v9 + 8))(v11, v8);
  return v27;
}

unint64_t sub_2272C333C()
{
  result = qword_28139AAE0;
  if (!qword_28139AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139AAE0);
  }

  return result;
}

uint64_t sub_2272C3398(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
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

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    swift_unknownObjectRetain();
    a2(&v40, v43);
    swift_unknownObjectRelease();

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_226E92000(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF437C();
      }
    }

    else
    {
      sub_226FEBAA0(v26, v39 & 1);
      v28 = sub_226E92000(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_226EBB21C(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_2272C3710(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227664210();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v11);
  v87 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = v73 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v73 - v18;
  v20 = sub_2276624A0();
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x28223BE20](v20);
  v86 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v88 = v73 - v24;
  v25 = [a1 identifier];
  if (!v25)
  {
    goto LABEL_10;
  }

  v79 = v11;
  v81 = v7;
  v26 = v25;
  v80 = sub_22766C000();
  v28 = v27;

  v29 = [a1 summary];
  if (!v29)
  {
    goto LABEL_7;
  }

  v82 = v28;
  v30 = v29;
  v78 = sub_22766C000();
  v32 = v31;

  v33 = [a1 abridgedSummary];
  if (!v33)
  {

LABEL_7:

LABEL_10:
    v41 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51028], v41);
    swift_willThrow();

    return;
  }

  v74 = v5;
  v75 = a2;
  v34 = v4;
  v35 = v33;
  v73[1] = sub_22766C000();
  v76 = v36;

  v37 = [a1 sharingURL];
  v77 = v32;
  if (v37)
  {
    v38 = v37;
    sub_22766C000();
  }

  sub_227662310();
  v40 = v90;
  v39 = v91;
  if ((*(v90 + 48))(v19, 1, v91) == 1)
  {

    sub_226E97D1C(v19, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_10;
  }

  v73[0] = v34;
  (*(v40 + 32))(v88, v19, v39);
  v43 = [a1 artwork];
  if (v43)
  {
    v44 = v43;
    sub_227662590();
  }

  v45 = v74;
  v46 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v47 = v83;
  sub_2276683D0();
  if (v47)
  {

    v48 = 0;
  }

  else
  {
    v48 = v93;
  }

  v49 = [a1 preview];
  if (v49)
  {
    sub_226F96E94(v49, v10);
    (*(v46 + 32))(v89, v10, v8);
    v53 = 0;
  }

  else
  {
    v50 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D51028], v50);
    swift_willThrow();

    v53 = 1;
  }

  v54 = v89;
  (*(v46 + 56))(v89, v53, 1, v8);
  v55 = v81;
  sub_22766A770();
  v56 = v85;
  sub_226E93170(v54, v85, &qword_27D7B8F00, &unk_227672910);

  v57 = sub_22766B380();
  v58 = sub_22766C8B0();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v93 = v83;
    *v59 = 136315394;
    v92 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7C0, &qword_22767EEB8);
    LODWORD(v74) = v58;
    v60 = sub_22766CB80();
    v62 = sub_226E97AE8(v60, v61, &v93);
    v84 = v48;
    v63 = v62;

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = sub_22766CB80();
    v66 = v65;
    sub_226E97D1C(v56, &qword_27D7B8F00, &unk_227672910);
    v67 = sub_226E97AE8(v64, v66, &v93);

    *(v59 + 14) = v67;
    _os_log_impl(&dword_226E8E000, v57, v74, "Deserialized %s, %s", v59, 0x16u);
    v68 = v83;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v68, -1, -1);
    MEMORY[0x22AA9A450](v59, -1, -1);
  }

  else
  {

    sub_226E97D1C(v56, &qword_27D7B8F00, &unk_227672910);
  }

  (*(v45 + 8))(v55, v73[0]);
  v69 = v89;
  sub_226E93170(v89, v87, &qword_27D7B8F00, &unk_227672910);
  v70 = v90;
  v71 = v91;
  v72 = v88;
  (*(v90 + 16))(v86, v88, v91);
  sub_227666930();

  sub_226E97D1C(v69, &qword_27D7B8F00, &unk_227672910);
  (*(v70 + 8))(v72, v71);
}

void sub_2272C4068(void *a1, uint64_t a2)
{
  v32 = a2;
  v4 = sub_2276624A0();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  sub_227666910();
  v10 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666970();
  v11 = sub_22766BFD0();

  [a1 setSummary_];

  v34 = sub_227666950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v12 = sub_2276683C0();
  v14 = v13;

  if (!v2)
  {
    v30 = v4;
    v31 = v6;
    v15 = sub_227662560();
    sub_226EDC420(v12, v14);
    [a1 setArtwork_];

    sub_227666960();
    v16 = sub_227664210();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_226E97D1C(v9, &qword_27D7B8F00, &unk_227672910);
      v18 = 0;
      v19 = v31;
LABEL_4:
      [a1 setPreview_];

      sub_227666920();
      sub_227662390();
      (*(v33 + 8))(v19, v30);
      v20 = sub_22766BFD0();

      [a1 setSharingURL_];

      sub_227666940();
      v21 = sub_22766BFD0();

      [a1 setAbridgedSummary_];

      return;
    }

    v29 = v16;
    v22 = objc_opt_self();
    v23 = sub_22766BFD0();
    v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:v32];

    type metadata accessor for ManagedCatalogPreview();
    v25 = swift_dynamicCastClass();
    v19 = v31;
    if (v25)
    {
      v18 = v25;
      sub_226F9789C(v25);
      (*(v17 + 8))(v9, v29);
      goto LABEL_4;
    }

    v26 = sub_227664DD0();
    sub_2272C4D04(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51000], v26);
    swift_willThrow();
    (*(v17 + 8))(v9, v29);
  }
}

void *static CatalogModalityMetadata.representativeSamples()()
{
  v39 = sub_2276624A0();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v26 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v26 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC790, &qword_22767EE58);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - v4;
  v34 = sub_227666980();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  v9 = sub_22766C090();
  sub_227664210();
  sub_2272C4D04(&qword_27D7B9110, MEMORY[0x277D50760], &protocol conformance descriptor for CatalogPreview);
  v10 = sub_22766CB70();
  v11 = sub_2276622F0();
  sub_227669180();
  sub_2272C4D04(&qword_27D7B8BE0, MEMORY[0x277D53A78], MEMORY[0x277D53A88]);
  v12 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  v13 = sub_22766C380();
  v13[2] = 3;
  v13[4] = v12;
  v13[5] = v12;
  v13[6] = v12;
  v59 = v13;
  v60[0] = v9;
  v60[1] = v60;
  v60[2] = &v59;
  v57 = v10;
  v58 = v7;
  v60[3] = &v58;
  v60[4] = &v57;
  v55 = v8;
  v56 = v11;
  v60[5] = &v56;
  v60[6] = &v55;
  swift_bridgeObjectRetain_n();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v49 = v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC798, &qword_22767EE60);
  v51 = v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7A0, &qword_22767EE68);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v54 = v14;
  v15 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v43 = v15;
  v44 = sub_226F5BF60(&qword_27D7BC7A8, &qword_27D7BC798, &qword_22767EE60);
  v45 = v15;
  v46 = sub_226F5BF60(&qword_27D7BC7B0, &qword_27D7BC7A0, &qword_22767EE68);
  v47 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v48 = v15;
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_226F1F8A8(0, v17, 0);
    v19 = 0;
    v28 = v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = v42;
    v27 = (v41 + 16);
    v26 = v5 + 32;
    v32 = v3;
    v31 = v5;
    v30 = v16;
    v29 = v17;
    while (v19 < *(v16 + 16))
    {
      v21 = v35;
      sub_226E93170(v28 + *(v3 + 72) * v19, v35, &qword_27D7BC790, &qword_22767EE58);
      v41 = *v21;
      v40 = *(v21 + 3);
      v22 = *(v36 + 96);
      sub_226E93170(&v21[*(v36 + 80)], v37, &qword_27D7B8F00, &unk_227672910);
      (*v27)(v38, &v21[v22], v39);

      v23 = v33;
      sub_227666930();
      sub_226E97D1C(v21, &qword_27D7BC790, &qword_22767EE58);
      v42 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F8A8((v24 > 1), v25 + 1, 1);
        v20 = v42;
      }

      ++v19;
      *(v20 + 16) = v25 + 1;
      result = (*(v31 + 32))(v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v23, v34);
      v3 = v32;
      v16 = v30;
      if (v29 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272C4CAC(uint64_t a1)
{
  result = sub_2272C4D04(&qword_27D7BC7B8, MEMORY[0x277D52758], &protocol conformance descriptor for CatalogModalityMetadata);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2272C4D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272C4D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2272C4DD0(uint64_t result, int a2, int a3)
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
      *(result + 112) = (a2 - 1);
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

uint64_t sub_2272C4E84()
{
  v20 = v0;
  v1 = *(v0 + 328);

  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to generate First of Modalities templates: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = *(v0 + 272);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2272C509C()
{
  v20 = v0;
  v1 = *(v0 + 320);

  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to generate Lifetime Award of Modalities templates: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 280);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2272C52A4()
{
  v20 = v0;
  v1 = *(v0 + 312);

  sub_22766A610();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 232), *(v0 + 240));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to generate Best of Modalities templates: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v15 = *(v0 + 272);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

unint64_t *sub_2272C563C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
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
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_22726999C(v21, a2, v22, v19);
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
  return result;
}

void sub_2272C57F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_22726C3F4(a1, a2, v20, a3);
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

void sub_2272C599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        (v32)(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_2272C5C04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2272C70B8(v9, a2, a3, a4, a5 & 1);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

unint64_t *sub_2272C5CA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_2272C7310(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_2272C5D44(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2272C599C(result, a2, a3, a4, a5, MEMORY[0x277D531E0], sub_226EB10D0);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_2272C5DFC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_227666FF0();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_2272C69B8(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2271171D0(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_227117144(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_2271171D0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_227666F70();
      v37 = v36;
      v38 = sub_227666F70();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22766D190();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_227666F70();
        v52 = v51;
        if (v50 == sub_227666F70() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_22766D190();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_2273A4F9C(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_2273A4F9C((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_2272C69B8(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_2271171D0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_227117144(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_227666F70();
    v69 = v68;
    if (v5 == sub_227666F70() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22766D190();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_2272C69B8(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_227666FF0();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_227666F70();
            v51 = v50;
            if (v49 == sub_227666F70() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_22766D190();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_227666F70();
        v31 = v30;
        if (v29 == sub_227666F70() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_22766D190();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_2271173B4(&v73, &v72, &v71);
}

unint64_t sub_2272C7054()
{
  result = qword_27D7BC7D8;
  if (!qword_27D7BC7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC7D0, &qword_22767EF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC7D8);
  }

  return result;
}

void sub_2272C70B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v36 = a5;
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = sub_227666FF0();
  v8.n128_f64[0] = MEMORY[0x28223BE20](v38);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v37 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v38;
LABEL_11:
    (*(v34 + 16))(v10, *(v37 + 48) + *(v34 + 72) * v20, v21, v8);
    v24 = sub_226EB729C(v10, v35, v36 & 1);
    if (v5)
    {
      (*v32)(v10, v21);
      return;
    }

    v25 = v24;
    (*v32)(v10, v21);
    if (v25)
    {
      *(v30 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v37;

        sub_226EBAEF0(v30, v29, v31, v27);
        return;
      }
    }
  }

  v22 = v11;
  v21 = v38;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v23 = *(v13 + 8 * v11);
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2272C7310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v27 = a2;
  v28 = a1;
  v35 = sub_227666FF0();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v34 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v31 = v6 + 16;
  v32 = v6;
  v29 = 0;
  v30 = (v6 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v35;
LABEL_11:
    (*(v32 + 16))(v9, *(v34 + 48) + *(v32 + 72) * v19, v20, v7);
    v23 = sub_226EC6D84(v9, v33);
    if (v4)
    {
      (*v30)(v9, v20);
      return;
    }

    v24 = v23;
    (*v30)(v9, v20);
    if (v24)
    {
      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_16:
        v26 = v34;

        sub_226EBAEF0(v28, v27, v29, v26);
        return;
      }
    }
  }

  v21 = v10;
  v20 = v35;
  while (1)
  {
    v10 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v22 = *(v12 + 8 * v10);
    ++v21;
    if (v22)
    {
      v16 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2272C755C()
{
  v0 = sub_22709BF40();
  MEMORY[0x22AA98450](v0);

  MEMORY[0x22AA98450](540945696, 0xE400000000000000);
  v1 = sub_22709BF40();
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0x2870657453;
}

uint64_t sub_2272C7600(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, __n128))
{
  result = sub_22718CB8C(a5, a6);
  if (result)
  {
    v16[3] = &type metadata for PersistenceHandle;
    v16[4] = &off_283A9AF78;
    v13 = swift_allocObject();
    v16[0] = v13;
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    v14 = a1;
    v15 = a2;

    (a7)(v16);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t sub_2272C76D0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, __n128))
{
  result = sub_22718CB8C(a5, a6);
  if (result)
  {
    v16[3] = &type metadata for PersistenceHandle;
    v16[4] = &off_283A9AF78;
    v13 = swift_allocObject();
    v16[0] = v13;
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    v14 = a1;
    v15 = a2;

    (a7)(v16, v14, v15);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

void sub_2272C77B0(void *a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v6 = a4;
  v412 = *MEMORY[0x277D85DE8];
  v9 = BYTE1(a4);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v398 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2275E0808(v9, 51);
  v405 = v10;
  v406 = v13;
  v407 = v11;
  v404 = v6;
  v403 = a3;
  v409 = a1;
  if (!v14)
  {
    LODWORD(v402) = v9;
    v408 = v4;
    v23 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    v27 = *(v23 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9000, &qword_227672BB8);
    v28 = swift_allocObject();
    v29 = v24;
    v30 = v25;

    sub_22766A070();
    *(v28 + 16) = v29;
    *(v28 + 24) = v30;
    *(v28 + 32) = v27;
    *(v28 + 40) = v26;
    v31 = qword_2813B2078;
    swift_beginAccess();
    v32 = sub_227542E38(v28 + v31, v27, v26);
    if (v32)
    {
      if (v32 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v152 = v408;
      v153 = sub_2272462A0(0);
      if (v152)
      {
        goto LABEL_103;
      }

      v154 = v153;
      [v153 setResultType_];
      sub_226ED9864();
      v155 = sub_22766C9E0();
      v408 = 0;
      v156 = sub_226EDAB24(v155);

      sub_226EDAB78(v156, v30);
    }

    v33 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[3];
    v37 = *(v33 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9018, &unk_22767F020);
    v38 = swift_allocObject();
    v39 = v34;
    v40 = v35;

    sub_22766A070();
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    *(v38 + 32) = v37;
    *(v38 + 40) = v36;
    v41 = qword_2813B2078;
    swift_beginAccess();
    v42 = sub_227542CF8(v38 + v41, v37, v36);
    if (v42)
    {
      if (v42 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v187 = v408;
      v188 = sub_227244EA0(0);
      if (v187)
      {
        goto LABEL_103;
      }

      v189 = v188;
      [v188 setResultType_];
      sub_226ED9864();
      v190 = sub_22766C9E0();
      v408 = 0;
      v191 = sub_226EDAB24(v190);

      sub_226EDAB78(v191, v40);
    }

    v43 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[3];
    v47 = *(v43 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9030, &unk_227672BF0);
    v48 = swift_allocObject();
    v49 = v44;
    v50 = v45;

    sub_22766A070();
    *(v48 + 16) = v49;
    *(v48 + 24) = v50;
    *(v48 + 32) = v47;
    *(v48 + 40) = v46;
    v51 = qword_2813B2078;
    swift_beginAccess();
    v52 = sub_227542C90(v48 + v51, v47, v46);
    if (v52)
    {
      if (v52 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v211 = v408;
      v212 = sub_2272444A0(0);
      if (v211)
      {
        goto LABEL_103;
      }

      v213 = v212;
      [v212 setResultType_];
      sub_226ED9864();
      v214 = sub_22766C9E0();
      v408 = 0;
      v215 = sub_226EDAB24(v214);

      sub_226EDAB78(v215, v50);
    }

    v53 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[3];
    v57 = *(v53 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9038, &unk_22767F030);
    v58 = swift_allocObject();
    v59 = v54;
    v60 = v55;

    sub_22766A070();
    *(v58 + 16) = v59;
    *(v58 + 24) = v60;
    *(v58 + 32) = v57;
    *(v58 + 40) = v56;
    v61 = qword_2813B2078;
    swift_beginAccess();
    v62 = sub_227542C28(v58 + v61, v57, v56);
    if (v62)
    {
      if (v62 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v233 = v408;
      v234 = sub_227243AA0(0);
      if (v233)
      {
        goto LABEL_103;
      }

      v235 = v234;
      [v234 setResultType_];
      sub_226ED9864();
      v236 = sub_22766C9E0();
      v408 = 0;
      v237 = sub_226EDAB24(v236);

      sub_226EDAB78(v237, v60);
    }

    v63 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v64 = *v63;
    v65 = v63[1];
    v66 = v63[3];
    v67 = *(v63 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9040, &unk_227672C00);
    v68 = swift_allocObject();
    v69 = v64;
    v70 = v65;

    sub_22766A070();
    *(v68 + 16) = v69;
    *(v68 + 24) = v70;
    *(v68 + 32) = v67;
    *(v68 + 40) = v66;
    v71 = qword_2813B2078;
    swift_beginAccess();
    v72 = sub_227542C08(v68 + v71, v67, v66);
    if (v72)
    {
      if (v72 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v251 = v408;
      v252 = sub_2272435A0(0);
      if (v251)
      {
        goto LABEL_103;
      }

      v253 = v252;
      [v252 setResultType_];
      sub_226ED9864();
      v254 = sub_22766C9E0();
      v408 = 0;
      v255 = sub_226EDAB24(v254);

      sub_226EDAB78(v255, v70);
    }

    v73 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v74 = *v73;
    v75 = v73[1];
    v76 = v73[3];
    v77 = *(v73 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9048, &unk_22767F040);
    v78 = swift_allocObject();
    v79 = v74;
    v80 = v75;

    sub_22766A070();
    *(v78 + 16) = v79;
    *(v78 + 24) = v80;
    *(v78 + 32) = v77;
    *(v78 + 40) = v76;
    v81 = qword_2813B2078;
    swift_beginAccess();
    v82 = sub_227542BA0(v78 + v81, v77, v76);
    if (v82)
    {
      if (v82 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v301 = v408;
      v302 = sub_2272430A0(0);
      if (v301)
      {
        goto LABEL_103;
      }

      v303 = v302;
      [v302 setResultType_];
      sub_226ED9864();
      v304 = sub_22766C9E0();
      v408 = 0;
      v305 = sub_226EDAB24(v304);

      sub_226EDAB78(v305, v80);
    }

    v83 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v84 = *v83;
    v85 = v83[1];
    v86 = v83[3];
    v87 = *(v83 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9050, &unk_227672C10);
    v88 = swift_allocObject();
    v89 = v84;
    v90 = v85;

    sub_22766A070();
    *(v88 + 16) = v89;
    *(v88 + 24) = v90;
    *(v88 + 32) = v87;
    *(v88 + 40) = v86;
    v91 = qword_2813B2078;
    swift_beginAccess();
    v92 = sub_227542B38(v88 + v91, v87, v86);
    if (v92)
    {
      if (v92 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v306 = v408;
      v307 = sub_227242BA0(0);
      if (v306)
      {
        goto LABEL_103;
      }

      v308 = v307;
      [v307 setResultType_];
      sub_226ED9864();
      v309 = sub_22766C9E0();
      v408 = 0;
      v320 = sub_226EDAB24(v309);

      sub_226EDAB78(v320, v90);
    }

    v93 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v94 = *v93;
    v95 = v93[1];
    v96 = v93[3];
    v97 = *(v93 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9058, &unk_22767F050);
    v98 = swift_allocObject();
    v99 = v94;
    v100 = v95;

    sub_22766A070();
    *(v98 + 16) = v99;
    *(v98 + 24) = v100;
    *(v98 + 32) = v97;
    *(v98 + 40) = v96;
    v101 = qword_2813B2078;
    swift_beginAccess();
    v102 = sub_227542B18(v98 + v101, v97, v96);
    if (v102)
    {
      if (v102 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v311 = v408;
      v312 = sub_2272426A0(0);
      if (v311)
      {
        goto LABEL_103;
      }

      v313 = v312;
      [v312 setResultType_];
      sub_226ED9864();
      v314 = sub_22766C9E0();
      v408 = 0;
      v315 = sub_226EDAB24(v314);

      sub_226EDAB78(v315, v100);
    }

    v103 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v104 = *v103;
    v105 = v103[1];
    v106 = v103[3];
    v107 = *(v103 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9060, qword_227672C20);
    v108 = swift_allocObject();
    v109 = v104;
    v110 = v105;

    sub_22766A070();
    *(v108 + 16) = v109;
    *(v108 + 24) = v110;
    *(v108 + 32) = v107;
    *(v108 + 40) = v106;
    v111 = qword_2813B2078;
    swift_beginAccess();
    v112 = sub_227542A28(v108 + v111, v107, v106);
    if (v112)
    {
      if (v112 != 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v316 = v408;
      v317 = sub_2272421A0(0);
      if (v316)
      {
        goto LABEL_103;
      }

      v318 = v317;
      [v317 setResultType_];
      sub_226ED9864();
      v319 = sub_22766C9E0();
      v408 = 0;
      v394 = sub_226EDAB24(v319);

      sub_226EDAB78(v394, v110);
    }

    v113 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v114 = *v113;
    v115 = v113[1];
    v116 = v113[3];
    v117 = *(v113 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FF8, &unk_22767F060);
    v118 = swift_allocObject();
    v119 = v114;
    v120 = v115;

    sub_22766A070();
    *(v118 + 16) = v119;
    *(v118 + 24) = v120;
    *(v118 + 32) = v117;
    *(v118 + 40) = v116;
    v121 = qword_2813B2078;
    swift_beginAccess();
    v122 = sub_227542A08(v118 + v121, v117, v116);
    if (!v122)
    {
      v321 = v408;
      v322 = sub_22728479C(0);
      v5 = v321;
      if (!v321)
      {
        v391 = v322;
        [v322 setResultType_];
        sub_226ED9864();
        v392 = sub_22766C9E0();
        v393 = sub_226EDAB24(v392);

        sub_226EDAB78(v393, v120);

        goto LABEL_37;
      }

LABEL_103:

      return;
    }

    if (v122 == 1)
    {

      v5 = v408;
LABEL_37:
      v10 = v405;
      v13 = v406;
      v11 = v407;
      BYTE1(v6) = BYTE1(v404);
      a1 = v409;
      v9 = v402;
      goto LABEL_2;
    }

LABEL_38:
    swift_willThrow();
    goto LABEL_103;
  }

LABEL_2:
  if (!sub_2275E0808(v9, 39))
  {
    LODWORD(v402) = v9;
    v123 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v124 = *v123;
    v125 = v123[1];
    v126 = *(v123 + 16);
    v127 = v123[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9020, &unk_227672BE0);
    v128 = swift_allocObject();
    v129 = v124;
    v130 = v125;

    sub_22766A070();
    *(v128 + 16) = v129;
    *(v128 + 24) = v130;
    *(v128 + 32) = v126;
    *(v128 + 40) = v127;
    v131 = sub_227284934(0);
    if (v5)
    {
      goto LABEL_51;
    }

    v132 = v131;
    v408 = 0;
    v133 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v133 setResultType_];
    v411[0] = 0;
    v134 = [v130 executeRequest:v133 error:v411];
    v135 = v411[0];
    if (!v134)
    {
      goto LABEL_60;
    }

    v136 = v134;
    v137 = v411[0];

    swift_setDeallocating();
    v138 = qword_2813B2078;
    v139 = sub_22766A100();
    v140 = (*(v139 - 8) + 8);
    v401 = *v140;
    v401(v128 + v138, v139);
    swift_deallocClassInstance();
    v141 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
    v142 = *v141;
    v143 = v141[1];
    LOBYTE(v136) = *(v141 + 16);
    v144 = v141[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9028, &unk_22767F070);
    v145 = swift_allocObject();
    v146 = v142;
    v147 = v143;

    sub_22766A070();
    *(v145 + 16) = v146;
    *(v145 + 24) = v147;
    *(v145 + 32) = v136;
    *(v145 + 40) = v144;
    v148 = v408;
    v149 = sub_22728476C(0);
    if (v148)
    {

      swift_setDeallocating();
      v150 = v145 + qword_2813B2078;
      v151 = v139;
LABEL_43:
      v401(v150, v151);
LABEL_53:
      swift_deallocClassInstance();
      return;
    }

    v399 = v140;
    v400 = v139;
    v408 = 0;
    v216 = v149;
    v217 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
    [v217 setResultType_];
    v411[0] = 0;
    v218 = [v147 executeRequest:v217 error:v411];
    if (!v218)
    {
      v238 = v411[0];
      sub_2276622C0();

      swift_willThrow();

      swift_setDeallocating();
      v401(v145 + qword_2813B2078, v400);
      goto LABEL_53;
    }

    v219 = v218;
    v220 = v411[0];

    swift_setDeallocating();
    v401(v145 + qword_2813B2078, v400);
    swift_deallocClassInstance();
    v11 = v407;
    v5 = v408;
    v10 = v405;
    v13 = v406;
    BYTE1(v6) = BYTE1(v404);
    a1 = v409;
    v9 = v402;
  }

  if (sub_2275E0808(v9, 12))
  {
    goto LABEL_4;
  }

  LODWORD(v402) = v9;
  v157 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v158 = *v157;
  v159 = v157[1];
  v160 = *(v157 + 16);
  v161 = v157[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F48, &qword_227672998);
  v128 = swift_allocObject();
  v129 = v158;
  v130 = v159;

  sub_22766A070();
  *(v128 + 16) = v129;
  *(v128 + 24) = v130;
  *(v128 + 32) = v160;
  *(v128 + 40) = v161;
  v162 = sub_22728491C(0);
  if (v5)
  {
LABEL_51:

LABEL_52:
    swift_setDeallocating();
    v185 = qword_2813B2078;
    v186 = sub_22766A100();
    (*(*(v186 - 8) + 8))(v128 + v185, v186);
    goto LABEL_53;
  }

  v132 = v162;
  v408 = 0;
  v133 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v133 setResultType_];
  v411[0] = 0;
  v163 = [v130 executeRequest:v133 error:v411];
  v135 = v411[0];
  if (!v163)
  {
    goto LABEL_60;
  }

  v164 = v163;
  v165 = v411[0];

  swift_setDeallocating();
  v166 = qword_2813B2078;
  v167 = sub_22766A100();
  v168 = *(v167 - 8);
  v169 = *(v168 + 8);
  v400 = v168 + 8;
  v401 = v169;
  v169(v128 + v166, v167);
  swift_deallocClassInstance();
  v170 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v171 = *v170;
  v172 = v170[1];
  LOBYTE(v164) = *(v170 + 16);
  v173 = v170[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F80, &qword_227672A00);
  v174 = swift_allocObject();
  v175 = v171;
  v176 = v172;

  sub_22766A070();
  *(v174 + 16) = v175;
  *(v174 + 24) = v176;
  *(v174 + 32) = v164;
  *(v174 + 40) = v173;
  v177 = v408;
  v178 = sub_227284904(0);
  if (v177)
  {

    swift_setDeallocating();
    v150 = v174 + qword_2813B2078;
    v151 = v167;
    goto LABEL_43;
  }

  v221 = v178;
  v399 = v167;
  v408 = 0;
  v222 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v222 setResultType_];
  v411[0] = 0;
  v223 = [v176 executeRequest:v222 error:v411];
  v224 = v411[0];
  if (!v223)
  {
    goto LABEL_80;
  }

  v225 = v223;
  v226 = v411[0];

  swift_setDeallocating();
  v401(v174 + qword_2813B2078, v399);
  swift_deallocClassInstance();
  v227 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v228 = *v227;
  v229 = v227[1];
  LOBYTE(v225) = *(v227 + 16);
  v230 = v227[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9010, &unk_227672BD0);
  v174 = swift_allocObject();
  v175 = v228;
  v176 = v229;

  sub_22766A070();
  *(v174 + 16) = v175;
  *(v174 + 24) = v176;
  *(v174 + 32) = v225;
  *(v174 + 40) = v230;
  v231 = v408;
  v232 = sub_2272848EC(0);
  if (v231)
  {
LABEL_67:

    swift_setDeallocating();
    v150 = v174 + qword_2813B2078;
    v151 = v399;
    goto LABEL_43;
  }

  v221 = v232;
  v408 = 0;
  v222 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v222 setResultType_];
  v411[0] = 0;
  v256 = [v176 executeRequest:v222 error:v411];
  v224 = v411[0];
  if (!v256)
  {
LABEL_80:
    v270 = v224;
    sub_2276622C0();

    swift_willThrow();

LABEL_81:
    swift_setDeallocating();
    v150 = v174 + qword_2813B2078;
    v151 = v399;
    goto LABEL_43;
  }

  v257 = v256;
  v258 = v411[0];

  swift_setDeallocating();
  v401(v174 + qword_2813B2078, v399);
  swift_deallocClassInstance();
  v259 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v260 = *v259;
  v261 = v259[1];
  LOBYTE(v257) = *(v259 + 16);
  v262 = v259[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F40, &qword_227672990);
  v174 = swift_allocObject();
  v175 = v260;
  v176 = v261;

  sub_22766A070();
  *(v174 + 16) = v175;
  *(v174 + 24) = v176;
  *(v174 + 32) = v257;
  *(v174 + 40) = v262;
  v263 = v408;
  v264 = sub_2272848D4(0);
  if (v263)
  {
    goto LABEL_67;
  }

  v408 = 0;
  v265 = v264;
  v266 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v266 setResultType_];
  v411[0] = 0;
  v267 = [v176 executeRequest:v266 error:v411];
  if (!v267)
  {
    v310 = v411[0];
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_81;
  }

  v268 = v267;
  v269 = v411[0];

  swift_setDeallocating();
  v401(v174 + qword_2813B2078, v399);
  swift_deallocClassInstance();
  v11 = v407;
  v5 = v408;
  v10 = v405;
  v13 = v406;
  BYTE1(v6) = BYTE1(v404);
  a1 = v409;
  LOBYTE(v9) = v402;
LABEL_4:
  if (sub_2275E0808(v9, 0))
  {
    goto LABEL_5;
  }

  v179 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v180 = *v179;
  v181 = v179[1];
  v182 = *(v179 + 16);
  v183 = v179[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC8, &qword_227672AA0);
  v128 = swift_allocObject();
  v129 = v180;
  v130 = v181;

  sub_22766A070();
  *(v128 + 16) = v129;
  *(v128 + 24) = v130;
  *(v128 + 32) = v182;
  *(v128 + 40) = v183;
  v184 = sub_2272848BC(0);
  if (v5)
  {
    goto LABEL_51;
  }

  v132 = v184;
  v408 = 0;
  v133 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v133 setResultType_];
  v411[0] = 0;
  v192 = [v130 executeRequest:v133 error:v411];
  v135 = v411[0];
  if (!v192)
  {
LABEL_60:
    v210 = v135;
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_52;
  }

  v193 = v192;
  v194 = v411[0];

  swift_setDeallocating();
  v195 = qword_2813B2078;
  v196 = sub_22766A100();
  v197 = *(v196 - 8);
  v198 = *(v197 + 8);
  v401 = (v197 + 8);
  v402 = v198;
  v198(v128 + v195, v196);
  swift_deallocClassInstance();
  v199 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v200 = *v199;
  v201 = v199[1];
  LOBYTE(v193) = *(v199 + 16);
  v202 = v199[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F90, &qword_227672A10);
  v203 = swift_allocObject();
  v204 = v200;
  v205 = v201;

  sub_22766A070();
  *(v203 + 16) = v204;
  *(v203 + 24) = v205;
  *(v203 + 32) = v193;
  *(v203 + 40) = v202;
  v206 = v408;
  v207 = sub_2272848A4(0);
  if (v206)
  {

    swift_setDeallocating();
    v208 = v203 + qword_2813B2078;
    v209 = v196;
LABEL_92:
    v402(v208, v209);
    goto LABEL_53;
  }

  v239 = v207;
  v400 = v196;
  v408 = 0;
  v240 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v240 setResultType_];
  v411[0] = 0;
  v241 = [v205 executeRequest:v240 error:v411];
  v242 = v411[0];
  if (!v241)
  {
    goto LABEL_89;
  }

  v243 = v241;
  v244 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v245 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v246 = *v245;
  v247 = v245[1];
  LOBYTE(v243) = *(v245 + 16);
  v248 = v245[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v203 = swift_allocObject();
  v204 = v246;
  v205 = v247;

  sub_22766A070();
  *(v203 + 16) = v204;
  *(v203 + 24) = v205;
  *(v203 + 32) = v243;
  *(v203 + 40) = v248;
  v249 = v408;
  v250 = sub_227284724(0);
  if (v249)
  {
LABEL_73:

    swift_setDeallocating();
    v402(v203 + qword_2813B2078, v400);
    goto LABEL_53;
  }

  v239 = v250;
  v408 = 0;
  v240 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v240 setResultType_];
  v411[0] = 0;
  v271 = [v205 executeRequest:v240 error:v411];
  v242 = v411[0];
  if (!v271)
  {
    goto LABEL_89;
  }

  v272 = v271;
  v273 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v274 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v275 = *v274;
  v276 = v274[1];
  LOBYTE(v272) = *(v274 + 16);
  v277 = v274[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
  v203 = swift_allocObject();
  v204 = v275;
  v205 = v276;

  sub_22766A070();
  *(v203 + 16) = v204;
  *(v203 + 24) = v205;
  *(v203 + 32) = v272;
  *(v203 + 40) = v277;
  v278 = v408;
  v279 = sub_22728473C(0);
  if (v278)
  {
    goto LABEL_73;
  }

  v239 = v279;
  v408 = 0;
  v240 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v240 setResultType_];
  v411[0] = 0;
  v280 = [v205 executeRequest:v240 error:v411];
  v242 = v411[0];
  if (!v280)
  {
    goto LABEL_89;
  }

  v281 = v280;
  v282 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v283 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v284 = *v283;
  v285 = v283[1];
  LOBYTE(v281) = *(v283 + 16);
  v286 = v283[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB910, &qword_22767B3B0);
  v203 = swift_allocObject();
  v204 = v284;
  v205 = v285;

  sub_22766A070();
  *(v203 + 16) = v204;
  *(v203 + 24) = v205;
  *(v203 + 32) = v281;
  *(v203 + 40) = v286;
  v287 = v408;
  v288 = sub_227284784(0);
  if (v287)
  {
    goto LABEL_73;
  }

  v239 = v288;
  v408 = 0;
  v240 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v240 setResultType_];
  v411[0] = 0;
  v289 = [v205 executeRequest:v240 error:v411];
  v242 = v411[0];
  if (!v289)
  {
LABEL_89:
    v300 = v242;
    sub_2276622C0();

    swift_willThrow();

LABEL_90:
LABEL_91:
    swift_setDeallocating();
    v208 = v203 + qword_2813B2078;
    v209 = v400;
    goto LABEL_92;
  }

  v290 = v289;
  v291 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v292 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v293 = *v292;
  v294 = v292[1];
  LOBYTE(v290) = *(v292 + 16);
  v295 = v292[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F30, &unk_22767F080);
  v203 = swift_allocObject();
  v296 = v293;
  v297 = v294;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v290;
  *(v203 + 40) = v295;
  v298 = v408;
  v299 = sub_22728488C(0);
  v408 = v298;
  if (v298)
  {
LABEL_88:

    swift_setDeallocating();
    v402(v203 + qword_2813B2078, v400);
    swift_deallocClassInstance();
    return;
  }

  v239 = v299;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v324 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v324)
  {
    goto LABEL_121;
  }

  v326 = v324;
  v327 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v328 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v329 = *v328;
  v330 = v328[1];
  LOBYTE(v326) = *(v328 + 16);
  v331 = v328[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v203 = swift_allocObject();
  v296 = v329;
  v297 = v330;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v326;
  *(v203 + 40) = v331;
  v332 = v408;
  v333 = sub_227284754(0);
  v408 = v332;
  if (v332)
  {
    goto LABEL_88;
  }

  v239 = v333;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v334 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v334)
  {
    goto LABEL_121;
  }

  v335 = v334;
  v336 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v337 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v338 = *v337;
  v339 = v337[1];
  LOBYTE(v335) = *(v337 + 16);
  v340 = v337[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB8, &unk_227672A60);
  v203 = swift_allocObject();
  v296 = v338;
  v297 = v339;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v335;
  *(v203 + 40) = v340;
  v341 = v408;
  v342 = sub_227284874(0);
  v408 = v341;
  if (v341)
  {
    goto LABEL_88;
  }

  v239 = v342;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v343 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v343)
  {
    goto LABEL_121;
  }

  v344 = v343;
  v345 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v346 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v347 = *v346;
  v348 = v346[1];
  LOBYTE(v344) = *(v346 + 16);
  v349 = v346[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F88, &qword_227672A08);
  v203 = swift_allocObject();
  v296 = v347;
  v297 = v348;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v344;
  *(v203 + 40) = v349;
  v350 = v408;
  v351 = sub_22728485C(0);
  v408 = v350;
  if (v350)
  {
    goto LABEL_88;
  }

  v239 = v351;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v352 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v352)
  {
    goto LABEL_121;
  }

  v353 = v352;
  v354 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v355 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v356 = *v355;
  v357 = v355[1];
  LOBYTE(v353) = *(v355 + 16);
  v358 = v355[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F0, &unk_22767F090);
  v203 = swift_allocObject();
  v296 = v356;
  v297 = v357;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v353;
  *(v203 + 40) = v358;
  v359 = v408;
  v360 = sub_227284A3C(0);
  v408 = v359;
  if (v359)
  {
    goto LABEL_88;
  }

  v239 = v360;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v361 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v361)
  {
    goto LABEL_121;
  }

  v362 = v361;
  v363 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v364 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v365 = *v364;
  v366 = v364[1];
  LOBYTE(v362) = *(v364 + 16);
  v367 = v364[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F58, &qword_2276729A8);
  v203 = swift_allocObject();
  v296 = v365;
  v297 = v366;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v362;
  *(v203 + 40) = v367;
  v368 = v408;
  v369 = sub_227284844(0);
  v408 = v368;
  if (v368)
  {
    goto LABEL_88;
  }

  v239 = v369;
  v323 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v323 setResultType_];
  v411[0] = 0;
  v370 = [v297 executeRequest:v323 error:v411];
  v325 = v411[0];
  if (!v370)
  {
LABEL_121:
    v395 = v325;
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_90;
  }

  v371 = v370;
  v372 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v373 = __swift_project_boxed_opaque_existential_0(v409, v409[3]);
  v374 = *v373;
  v375 = v373[1];
  LOBYTE(v371) = *(v373 + 16);
  v376 = v373[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F78, &qword_22767F0A0);
  v203 = swift_allocObject();
  v296 = v374;
  v297 = v375;

  sub_22766A070();
  *(v203 + 16) = v296;
  *(v203 + 24) = v297;
  *(v203 + 32) = v371;
  *(v203 + 40) = v376;
  v377 = v408;
  v378 = sub_22728482C(0);
  v408 = v377;
  if (v377)
  {
    goto LABEL_88;
  }

  v379 = v378;
  v380 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v380 setResultType_];
  v411[0] = 0;
  v381 = [v297 executeRequest:v380 error:v411];
  if (!v381)
  {
    v396 = v411[0];
    sub_2276622C0();

    swift_willThrow();

    goto LABEL_91;
  }

  v382 = v381;
  v383 = v411[0];

  swift_setDeallocating();
  v402(v203 + qword_2813B2078, v400);
  swift_deallocClassInstance();
  v384 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v385 = sub_22766BFD0();
  v386 = [v384 initWithEntityName_];

  v387 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v387 setResultType_];
  v411[0] = 0;
  v388 = [v403 executeRequest:v387 error:v411];
  if (!v388)
  {
    v397 = v411[0];
    sub_2276622C0();

    swift_willThrow();
    return;
  }

  v389 = v388;
  v390 = v411[0];

  v11 = v407;
  v10 = v405;
  v13 = v406;
  BYTE1(v6) = BYTE1(v404);
LABEL_5:
  sub_22766A770();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v411[0] = v18;
    *v17 = 136315138;
    v410 = BYTE1(v6);
    v19 = sub_22709C084();
    v20 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v19);
    v22 = sub_226E97AE8(v20, v21, v411);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v15, v16, "Deleted catalog during Migration Step %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v407 + 8))(v406, v10);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_2272CA8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2272CA8F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2272CA940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2272CC52C(a3, v25 - v10);
  v12 = sub_22766C4B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E91484(v11);
  }

  else
  {
    sub_22766C4A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22766C420();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22766C0B0() + 32;
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

      sub_226E91484(a3);

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

  sub_226E91484(a3);
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

uint64_t sub_2272CAC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2272CC52C(a3, v25 - v10);
  v12 = sub_22766C4B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E91484(v11);
  }

  else
  {
    sub_22766C4A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22766C420();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22766C0B0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
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

      sub_226E91484(a3);

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

  sub_226E91484(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7F8, &qword_227684270);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2272CAEF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_2272CB084;

    return sub_2272CB4F4(0);
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[13] = v5;
      *v5 = v0;
      v5[1] = sub_2272CB29C;

      return sub_2270642BC();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_2272CB084()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2272CB490;
  }

  else
  {

    v2 = sub_2272CB1A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2272CB1A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_2272CB29C;

    return sub_2270642BC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2272CB29C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_2272CB42C;
  }

  else
  {
    v4 = sub_2272CB3C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2272CB3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272CB42C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272CB490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272CB4F4(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  *(v2 + 96) = swift_task_alloc();
  v3 = sub_22766B6E0();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_22766B720();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  v5 = sub_22766B390();
  *(v2 + 152) = v5;
  *(v2 + 160) = *(v5 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272CB6B4, v1, 0);
}

uint64_t sub_2272CB6B4(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v6 = *(v1 + 112);
  v5 = *(v1 + 120);
  v7 = *(v1 + 104);
  v8 = *(v1 + 88);
  v9 = *(v1 + 216);
  sub_22766A730();
  sub_22766B370();
  v10 = *(v4 + 8);
  *(v1 + 184) = v10;
  *(v1 + 192) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  sub_226E91B50(v8 + 208, v1 + 16);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v11 = MEMORY[0x277D21A70];
  if (!v9)
  {
    v11 = MEMORY[0x277D21A78];
  }

  (*(v6 + 104))(v5, *v11, v7);
  v12 = swift_task_alloc();
  *(v1 + 200) = v12;
  *v12 = v1;
  v12[1] = sub_2272CB834;
  v13 = *(v1 + 144);
  v14 = *(v1 + 120);

  return sub_226E953B4(v13, v14);
}

uint64_t sub_2272CB834()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[11];
    v7 = sub_2272CBB5C;
  }

  else
  {
    v8 = v2[11];
    (*(v2[17] + 8))(v2[18], v2[16]);
    v7 = sub_2272CB9D0;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2272CB9D0()
{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[12];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2275B5154();
  sub_22766A730();
  sub_22766B370();
  v1(v2, v3);
  v5 = sub_22766C4B0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_2272CA940(0, 0, v4, &unk_22767F230, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2272CBB5C()
{
  v20 = v0;
  v1 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22766A730();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v18 = *(v0 + 184);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 64), *(v0 + 72));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Updating JetPack failed: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v18(v6, v7);
  }

  else
  {
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2272CBD80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_226F73E2C;

    return sub_2272CB4F4(1);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2272CBE88(uint64_t a1)
{
  xpc_transaction_exit_clean();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2272CBEE4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 26);

  v1 = OBJC_IVAR____TtC15SeymourServices12ScriptSystem__useSystemJetPack;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ScriptSystem(uint64_t a1)
{
  result = qword_2813A4A48;
  if (!qword_2813A4A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2272CBFEC(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2272CC0B8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_2272CB4F4(a1);
}

uint64_t sub_2272CC16C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_22766C000();
    v6 = v5;
  }

  else
  {
    v6 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_2272CC278(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2272CC36C;

  return v5(v2 + 32);
}

uint64_t sub_2272CC36C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2272CC480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2272CBE6C();
}

uint64_t sub_2272CC52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272CC59C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2272CC278(a1, v4);
}

uint64_t SQLiteDatabaseHandle.deinit()
{
  sqlite3_close(*(v0 + 16));

  return v0;
}

uint64_t SQLiteDatabaseHandle.__deallocating_deinit()
{
  sqlite3_close(*(v0 + 16));

  return swift_deallocClassInstance();
}

BOOL static SQLiteDatabaseHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = sub_227669C30();
  return v3 == sub_227669C30();
}

uint64_t SQLiteDatabaseHandle.hash(into:)()
{
  MEMORY[0x22AA996B0](*(v0 + 16));
  v1 = sub_227669C30();
  return MEMORY[0x22AA996B0](v1);
}

uint64_t SQLiteDatabaseHandle.hashValue.getter()
{
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v0 + 16));
  v1 = sub_227669C30();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

uint64_t sub_2272CC7A4()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v1 + 16));
  v2 = sub_227669C30();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3F0();
}

uint64_t sub_2272CC7FC()
{
  MEMORY[0x22AA996B0](*(*v0 + 16));
  v1 = sub_227669C30();
  return MEMORY[0x22AA996B0](v1);
}

uint64_t sub_2272CC840(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  MEMORY[0x22AA996B0](*(v2 + 16));
  v3 = sub_227669C30();
  MEMORY[0x22AA996B0](v3);
  return sub_22766D3F0();
}

unint64_t sub_2272CC898()
{
  result = qword_27D7BC800;
  if (!qword_27D7BC800)
  {
    type metadata accessor for SQLiteDatabaseHandle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC800);
  }

  return result;
}

BOOL sub_2272CC910(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v3 = sub_227669C30();
  return v3 == sub_227669C30();
}

void sub_2272CC988(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_227662750();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v38 - v6;
  MEMORY[0x28223BE20](v7);
  v40 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v38 - v10;
  v12 = sub_2276624A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v38 - v18;
  v20 = a1;
  v21 = [a1 remoteURL];
  if (v21)
  {
    v22 = v21;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226E97D1C(v11, &unk_27D7BB570, &unk_227670FC0);
    v23 = v20;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v23 = v20;
    v24 = [v20 bundleIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_22766C000();
      v28 = v27;

      v29 = [v23 date];
      if (v29)
      {
        v30 = v29;
        v31 = v39;
        sub_227662710();

        v38[0] = v26;
        v38[1] = v28;
        v32 = v43;
        v33 = v40;
        v34 = v31;
        v35 = v44;
        (*(v43 + 32))(v40, v34, v44);
        (*(v13 + 16))(v15, v19, v12);
        (*(v32 + 16))(v41, v33, v35);
        sub_227664B20();

        (*(v32 + 8))(v33, v35);
        (*(v13 + 8))(v19, v12);
        return;
      }
    }

    (*(v13 + 8))(v19, v12);
  }

  v36 = sub_227664DD0();
  sub_2272CD68C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
  swift_willThrow();
}

void *static AssetLoadFailure.representativeSamples()()
{
  v33 = sub_227662750();
  v22 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2276624A0();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC808, &qword_22767F348);
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = v21 - v4;
  v28 = sub_227664B30();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276622F0();
  v9 = sub_22766C090();
  v10 = sub_227662630();
  v42 = v9;
  v43[0] = v8;
  v43[1] = v43;
  v43[2] = &v42;
  v41 = v10;
  v43[3] = &v41;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v35 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v36 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v11 = sub_2276638E0();

  v12 = *(v11 + 16);
  if (v12)
  {
    v34 = MEMORY[0x277D84F90];
    result = sub_226F20388(0, v12, 0);
    v14 = 0;
    v15 = v34;
    v24 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = (v1 + 16);
    v22 += 2;
    v21[1] = v5 + 32;
    v26 = v11;
    v25 = v3;
    while (v14 < *(v11 + 16))
    {
      v16 = v12;
      v17 = v27;
      sub_2272CD3B0(v24 + *(v3 + 72) * v14, v27);
      v18 = *(v29 + 64);
      (*v23)(v30, v17, v31);
      (*v22)(v32, v17 + v18, v33);

      sub_227664B20();
      sub_226E97D1C(v17, &qword_27D7BC808, &qword_22767F348);
      v34 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F20388((v19 > 1), v20 + 1, 1);
        v15 = v34;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      result = (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v7, v28);
      v12 = v16;
      v3 = v25;
      v11 = v26;
      if (v16 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2272CD3B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC808, &qword_22767F348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2272CD420(uint64_t a1)
{
  result = sub_2272CD68C(&qword_27D7BC810, MEMORY[0x277D50D88], &protocol conformance descriptor for AssetLoadFailure);
  *(a1 + 8) = result;
  return result;
}

void sub_2272CD478(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664B10();
  sub_227662390();
  (*(v7 + 8))(v9, v6);
  v10 = sub_22766BFD0();

  [a1 setRemoteURL_];

  sub_227664AF0();
  v11 = sub_22766BFD0();

  [a1 setBundleIdentifier_];

  sub_227664B00();
  v12 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDate_];
}

uint64_t sub_2272CD68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2272CD6D4()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22[-1] - v12;
  (*(v10 + 16))(&v22[-1] - v12, v1 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v9, v11);
  sub_227669730();
  (*(v10 + 8))(v13, v9);
  if (LOBYTE(v22[0]) == 1)
  {
    sub_22766A630();
    v14 = sub_22766B380();
    v15 = sub_22766C8B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Reporting plan modification event to CoreAnalytics", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    v22[3] = &type metadata for ModifyPlanAnalyticsEvent;
    v22[4] = sub_2272D6318();
    sub_227669B60();
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_22766A630();
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226E8E000, v18, v19, "Metrics reporting disabled", v20, 2u);
      MEMORY[0x22AA9A450](v20, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2272CD9E8(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_227664EC0();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v35 - v16;
  v18 = *(v14 + 16);
  v38 = v2;
  v18(v35 - v16, v2 + OBJC_IVAR____TtC15SeymourServices28WorkoutPlanAnalyticsReporter__enableWorkoutPlanAnalyticsReporter, v13, v15);
  sub_227669730();
  (*(v14 + 8))(v17, v13);
  if (LOBYTE(v41[0]) == 1)
  {
    v37 = v6;
    sub_22766A630();
    v36 = *(v3 + 16);
    v36(v5, v39, v40);
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35[1] = (v3 + 16);
      v22 = v21;
      v35[0] = swift_slowAlloc();
      v41[0] = v35[0];
      *v22 = 136315138;
      v23 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v24 = v40;
      v25 = MEMORY[0x22AA995D0](v40, v23);
      v27 = v26;
      (*(v3 + 8))(v5, v24);
      v28 = sub_226E97AE8(v25, v27, v41);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v19, v20, "Reporting plan modification error %s to CoreAnalytics", v22, 0xCu);
      v29 = v35[0];
      __swift_destroy_boxed_opaque_existential_0(v35[0]);
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v40);
    }

    (*(v7 + 8))(v12, v37);
    __swift_project_boxed_opaque_existential_0((v38 + 16), *(v38 + 40));
    v41[3] = type metadata accessor for ModifyPlanFailureAnalyticsEvent(0);
    v41[4] = sub_2272D6504(&qword_27D7BC828, type metadata accessor for ModifyPlanFailureAnalyticsEvent, &unk_2276819B0);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    v36(boxed_opaque_existential_0, v39, v40);
    sub_227669B60();
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    sub_22766A630();
    v30 = sub_22766B380();
    v31 = sub_22766C8B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v30, v31, "Metrics reporting disabled", v32, 2u);
      MEMORY[0x22AA9A450](v32, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

SeymourServices::AlgorithmScoreRange_optional __swiftcall AlgorithmScoreRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlgorithmScoreRange.rawValue.getter()
{
  v1 = 0x65676E61526E69;
  if (*v0 != 1)
  {
    v1 = 0x6E6152776F6C6562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E615265766F6261;
  }
}

uint64_t sub_2272CDF98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65676E61526E69;
  if (v2 != 1)
  {
    v4 = 0x6E6152776F6C6562;
    v3 = 0xEA00000000006567;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E615265766F6261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006567;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65676E61526E69;
  if (*a2 != 1)
  {
    v8 = 0x6E6152776F6C6562;
    v7 = 0xEA00000000006567;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E615265766F6261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006567;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

unint64_t sub_2272CE098()
{
  result = qword_27D7BC818;
  if (!qword_27D7BC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC818);
  }

  return result;
}

uint64_t sub_2272CE0EC()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2272CE190(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_2272CE220(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

void sub_2272CE2CC(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006567;
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0x65676E61526E69;
  if (v3 != 1)
  {
    v5 = 0x6E6152776F6C6562;
    v4 = 0xEA00000000006567;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E615265766F6261;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_2272CE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  sub_227664D30();
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v6[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v6[60] = swift_task_alloc();
  v6[61] = sub_2276685D0();
  v6[62] = swift_task_alloc();
  v7 = sub_227667830();
  v6[63] = v7;
  v6[64] = *(v7 - 8);
  v6[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v8;
  v6[67] = *(v8 - 8);
  v6[68] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v10 = sub_227664EC0();
  v6[72] = v10;
  v6[73] = *(v10 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v11 = sub_22766B390();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272CE678, 0, 0);
}

uint64_t sub_2272CE678(uint64_t a1)
{
  v84 = v1;
  v2 = *(v1 + 600);
  v3 = *(v1 + 584);
  v4 = *(v1 + 576);
  v5 = *(v1 + 440);
  sub_22766A630();
  v6 = *(v3 + 16);
  *(v1 + 648) = v6;
  *(v1 + 656) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 640);
  v11 = *(v1 + 616);
  v12 = *(v1 + 608);
  v13 = *(v1 + 600);
  v14 = *(v1 + 584);
  v15 = *(v1 + 576);
  if (v9)
  {
    v80 = *(v1 + 608);
    v16 = swift_slowAlloc();
    v74 = v8;
    v17 = swift_slowAlloc();
    v83 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v77 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v83);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v74, "Reporting scaffold creation error %s to AMP", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v77, v80);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v1 + 56);

    v24 = *__swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
    swift_beginAccess();
    sub_226F9B220(v24 + 280, v1 + 96);
    if (*(v1 + 120))
    {
      sub_226F19770((v1 + 96), v1 + 136);
      sub_226E91B50(v1 + 136, v1 + 176);
      v25 = swift_allocObject();
      sub_226F19770((v1 + 176), v25 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v1 + 136));
    }

    else
    {
      v42 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D50048], v42);
      *(swift_allocObject() + 16) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v45 = *(v1 + 568);
    v38 = swift_task_alloc();
    *(v1 + 664) = v38;
    *(v38 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v38 + 24) = 50;
    *(v38 + 32) = 2;
    *(v38 + 40) = 92;
    *(v38 + 48) = v45;
    v46 = swift_task_alloc();
    *(v1 + 672) = v46;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v46 = v1;
    v46[1] = sub_2272CF150;
    v40 = sub_2272D6564;
    v39 = (v1 + 16);
    goto LABEL_11;
  }

  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  sub_2272D63D8(v1 + 16, v1 + 296);
  v26 = *(v1 + 320);
  if (v26)
  {
    v27 = *(v1 + 520);
    v28 = *(v1 + 512);
    v78 = *(v1 + 544);
    v81 = *(v1 + 504);
    v29 = *(v1 + 496);
    v31 = *(v1 + 472);
    v30 = *(v1 + 480);
    v32 = *(v1 + 456);
    v33 = *(v1 + 464);
    v75 = *(v1 + 328);
    __swift_project_boxed_opaque_existential_0((v1 + 296), v26);
    v34 = sub_227667100();
    (*(*(v34 - 8) + 16))(v29, v32, v34);
    swift_storeEnumTagMultiPayload();
    v35 = sub_2276651F0();
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    v37 = sub_2276665E0();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    sub_227667810();
    (*(v75 + 32))(v27, v26);
    (*(v28 + 8))(v27, v81);
    v38 = swift_task_alloc();
    *(v1 + 688) = v38;
    *(v38 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v38 + 24) = 50;
    *(v38 + 32) = 2;
    *(v38 + 40) = 95;
    *(v38 + 48) = v78;
    v39 = swift_task_alloc();
    *(v1 + 696) = v39;
    *v39 = v1;
    v39[1] = sub_2272CFE1C;
    v40 = sub_2272D6568;
    v41 = MEMORY[0x277D84F78] + 8;
LABEL_11:

    return MEMORY[0x2822008A0](v39, 0, 0, 0xD000000000000013, 0x8000000227693B00, v40, v38, v41);
  }

  sub_2272D6448(v1 + 16);
  sub_2272D6448(v1 + 296);
  v47 = *(v1 + 648);
  v48 = *(v1 + 592);
  v49 = *(v1 + 576);
  v50 = *(v1 + 440);
  sub_22766A630();
  v47(v48, v50, v49);
  v51 = sub_22766B380();
  v52 = sub_22766C8B0();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v1 + 632);
  v55 = *(v1 + 616);
  v56 = *(v1 + 608);
  v57 = *(v1 + 592);
  v58 = *(v1 + 584);
  v59 = *(v1 + 576);
  if (v53)
  {
    v82 = *(v1 + 608);
    v60 = swift_slowAlloc();
    v76 = v52;
    v61 = swift_slowAlloc();
    v83 = v61;
    *v60 = 136315138;
    v62 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v63 = MEMORY[0x22AA995D0](v59, v62);
    v79 = v54;
    v65 = v64;
    (*(v58 + 8))(v57, v59);
    v66 = sub_226E97AE8(v63, v65, &v83);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_226E8E000, v51, v76, "Reporting scaffold creation error %s to CoreAnalytics", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);

    (*(v55 + 8))(v79, v82);
  }

  else
  {

    (*(v58 + 8))(v57, v59);
    (*(v55 + 8))(v54, v56);
  }

  swift_beginAccess();
  v67 = swift_weakLoadStrong();
  if (v67)
  {
    v68 = *(v1 + 648);
    v69 = *(v1 + 576);
    v70 = *(v1 + 440);
    sub_226E91B50(v67 + 16, v1 + 216);

    __swift_project_boxed_opaque_existential_0((v1 + 216), *(v1 + 240));
    *(v1 + 280) = type metadata accessor for CreateScaffoldFailureAnalyticsEvent(0);
    *(v1 + 288) = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent, &unk_227688330);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 256));
    v68(boxed_opaque_existential_0, v70, v69);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v1 + 256));
    __swift_destroy_boxed_opaque_existential_0((v1 + 216));
  }

  v72 = *(v1 + 8);

  return v72();
}

uint64_t sub_2272CF150()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = sub_2272CF904;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = sub_2272CF2AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272CF2AC()
{
  v50 = v0;
  sub_2272D63D8((v0 + 2), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v45 = v0[68];
    v47 = v0[63];
    v4 = v0[62];
    v6 = v0[59];
    v5 = v0[60];
    v7 = v0[57];
    v8 = v0[58];
    v43 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v9 = sub_227667100();
    (*(*(v9 - 8) + 16))(v4, v7, v9);
    swift_storeEnumTagMultiPayload();
    v10 = sub_2276651F0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_2276665E0();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_227667810();
    (*(v43 + 32))(v2, v1);
    (*(v3 + 8))(v2, v47);
    v13 = swift_task_alloc();
    v0[86] = v13;
    *(v13 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v13 + 24) = 50;
    *(v13 + 32) = 2;
    *(v13 + 40) = 95;
    *(v13 + 48) = v45;
    v14 = swift_task_alloc();
    v0[87] = v14;
    *v14 = v0;
    v14[1] = sub_2272CFE1C;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v13, v15);
  }

  else
  {
    sub_2272D6448((v0 + 2));
    sub_2272D6448((v0 + 37));
    v16 = v0[81];
    v17 = v0[74];
    v18 = v0[72];
    v19 = v0[55];
    sub_22766A630();
    v16(v17, v19, v18);
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[79];
    v24 = v0[77];
    v25 = v0[76];
    v26 = v0[74];
    v27 = v0[73];
    v28 = v0[72];
    if (v22)
    {
      v48 = v0[76];
      v29 = swift_slowAlloc();
      v44 = v21;
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      v31 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v32 = MEMORY[0x22AA995D0](v28, v31);
      v46 = v23;
      v34 = v33;
      (*(v27 + 8))(v26, v28);
      v35 = sub_226E97AE8(v32, v34, &v49);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v20, v44, "Reporting scaffold creation error %s to CoreAnalytics", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);

      (*(v24 + 8))(v46, v48);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
      (*(v24 + 8))(v23, v25);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = v0[81];
      v38 = v0[72];
      v39 = v0[55];
      sub_226E91B50(Strong + 16, (v0 + 27));

      __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
      v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent(0);
      v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent, &unk_227688330);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      v37(boxed_opaque_existential_0, v39, v38);
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v0 + 32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    }

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_2272CF904()
{
  v47 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[85];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v42 = v0[76];
    v44 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v10 = sub_226E97AE8(v8, v9, &v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report scaffold creation error to AMP due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v5 + 8))(v44, v42);
  }

  else
  {
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[76];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[81];
  v15 = v0[74];
  v16 = v0[72];
  v17 = v0[55];
  sub_22766A630();
  v14(v15, v17, v16);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[79];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  if (v20)
  {
    v45 = v0[76];
    v27 = swift_slowAlloc();
    v41 = v19;
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v30 = MEMORY[0x22AA995D0](v26, v29);
    v43 = v21;
    v32 = v31;
    (*(v25 + 8))(v24, v26);
    v33 = sub_226E97AE8(v30, v32, &v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v18, v41, "Reporting scaffold creation error %s to CoreAnalytics", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v22 + 8))(v43, v45);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = v0[81];
    v36 = v0[72];
    v37 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent, &unk_227688330);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v35(boxed_opaque_existential_0, v37, v36);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2272CFE1C()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_2272D0318;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v3 = sub_2272CFF78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272CFF78()
{
  v32 = v0;
  sub_2272D6448((v0 + 2));
  v1 = v0[81];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[55];
  sub_22766A630();
  v1(v2, v4, v3);
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[79];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  if (v7)
  {
    v30 = v0[76];
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v16 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v17 = MEMORY[0x22AA995D0](v13, v16);
    v29 = v8;
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_226E97AE8(v17, v19, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v5, v28, "Reporting scaffold creation error %s to CoreAnalytics", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = v0[81];
    v23 = v0[72];
    v24 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent, &unk_227688330);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v22(boxed_opaque_existential_0, v24, v23);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2272D0318()
{
  v47 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[88];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v42 = v0[76];
    v44 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v10 = sub_226E97AE8(v8, v9, &v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report scaffold creation error to AMP due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v5 + 8))(v44, v42);
  }

  else
  {
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[76];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[81];
  v15 = v0[74];
  v16 = v0[72];
  v17 = v0[55];
  sub_22766A630();
  v14(v15, v17, v16);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[79];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  if (v20)
  {
    v45 = v0[76];
    v27 = swift_slowAlloc();
    v41 = v19;
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v30 = MEMORY[0x22AA995D0](v26, v29);
    v43 = v21;
    v32 = v31;
    (*(v25 + 8))(v24, v26);
    v33 = sub_226E97AE8(v30, v32, &v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v18, v41, "Reporting scaffold creation error %s to CoreAnalytics", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v22 + 8))(v43, v45);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = v0[81];
    v36 = v0[72];
    v37 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreateScaffoldFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC850, type metadata accessor for CreateScaffoldFailureAnalyticsEvent, &unk_227688330);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v35(boxed_opaque_existential_0, v37, v36);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2272D0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  sub_227664D30();
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v6[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v6[60] = swift_task_alloc();
  v6[61] = sub_2276685D0();
  v6[62] = swift_task_alloc();
  v7 = sub_227667830();
  v6[63] = v7;
  v6[64] = *(v7 - 8);
  v6[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v8;
  v6[67] = *(v8 - 8);
  v6[68] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v10 = sub_22766B390();
  v6[72] = v10;
  v6[73] = *(v10 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v6[76] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D0B0C, 0, 0);
}

uint64_t sub_2272D0B0C(uint64_t a1)
{
  sub_22766A630();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Reporting scaffold creation event to CoreAnalytics", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v1 + 608);
  v6 = *(v1 + 584);
  v7 = *(v1 + 576);

  v8 = *(v6 + 8);
  v8(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v1 + 16);

    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    sub_227667040();
    v11 = v10;
    sub_227667070();
    v13 = v12;
    v14 = COERCE_DOUBLE(sub_227667030());
    if ((v15 & 1) == 0)
    {
      v16 = 0xEA00000000006567;
      if (v14 < -20391.945)
      {
        v17 = 0x6E6152776F6C6562;
        goto LABEL_8;
      }

      v17 = 0x6E615265766F6261;
      if (v14 > 1001.609)
      {
        goto LABEL_8;
      }
    }

    v16 = 0xE700000000000000;
    v17 = 0x65676E61526E69;
LABEL_8:
    v18 = sub_227667090();
    v19 = *(sub_2276670E0() + 16);

    *(v1 + 80) = &type metadata for CreateScaffoldAnalyticsEvent;
    *(v1 + 88) = sub_2272D64B0();
    v20 = swift_allocObject();
    *(v1 + 56) = v20;
    *(v20 + 16) = (v11 - v13) * 1000.0;
    *(v20 + 24) = v17;
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
    *(v20 + 48) = v19;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v1 + 56));
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  sub_22766A630();
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226E8E000, v21, v22, "Reporting scaffold creation event to AMP", v23, 2u);
    MEMORY[0x22AA9A450](v23, -1, -1);
  }

  v24 = *(v1 + 600);
  v25 = *(v1 + 576);

  v8(v24, v25);
  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (v26)
  {
    sub_226E91B50(v26 + 56, v1 + 136);

    v27 = *__swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
    swift_beginAccess();
    sub_226F9B220(v27 + 280, v1 + 176);
    if (*(v1 + 200))
    {
      sub_226F19770((v1 + 176), v1 + 216);
      sub_226E91B50(v1 + 216, v1 + 256);
      v28 = swift_allocObject();
      sub_226F19770((v1 + 256), v28 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v1 + 216));
    }

    else
    {
      v44 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      v45 = swift_allocError();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D50048], v44);
      *(swift_allocObject() + 16) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v47 = *(v1 + 568);
    v40 = swift_task_alloc();
    *(v1 + 616) = v40;
    *(v40 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v40 + 24) = 50;
    *(v40 + 32) = 2;
    *(v40 + 40) = 120;
    *(v40 + 48) = v47;
    v48 = swift_task_alloc();
    *(v1 + 624) = v48;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v48 = v1;
    v48[1] = sub_2272D141C;
    v42 = sub_2272D6564;
    v41 = (v1 + 96);
    goto LABEL_18;
  }

  *(v1 + 128) = 0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  sub_2272D63D8(v1 + 96, v1 + 296);
  v29 = *(v1 + 320);
  if (v29)
  {
    v30 = *(v1 + 520);
    v31 = *(v1 + 512);
    v53 = *(v1 + 544);
    v54 = *(v1 + 504);
    v32 = *(v1 + 496);
    v33 = *(v1 + 480);
    v51 = *(v1 + 472);
    v34 = *(v1 + 464);
    v35 = *(v1 + 448);
    v52 = *(v1 + 328);
    __swift_project_boxed_opaque_existential_0((v1 + 296), v29);
    v36 = sub_227667100();
    (*(*(v36 - 8) + 16))(v32, v35, v36);
    swift_storeEnumTagMultiPayload();
    v37 = sub_2276651F0();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    v39 = sub_2276665E0();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);

    sub_227667810();
    (*(v52 + 32))(v30, v29);
    (*(v31 + 8))(v30, v54);
    v40 = swift_task_alloc();
    *(v1 + 640) = v40;
    *(v40 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v40 + 24) = 50;
    *(v40 + 32) = 2;
    *(v40 + 40) = 123;
    *(v40 + 48) = v53;
    v41 = swift_task_alloc();
    *(v1 + 648) = v41;
    *v41 = v1;
    v41[1] = sub_2272D1B98;
    v42 = sub_2272D6568;
    v43 = MEMORY[0x277D84F78] + 8;
LABEL_18:

    return MEMORY[0x2822008A0](v41, 0, 0, 0xD000000000000013, 0x8000000227693B00, v42, v40, v43);
  }

  sub_2272D6448(v1 + 96);
  sub_2272D6448(v1 + 296);

  v49 = *(v1 + 8);

  return v49();
}

uint64_t sub_2272D141C()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_2272D1930;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 17);
    v3 = sub_2272D1578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D1578()
{
  sub_2272D63D8((v0 + 12), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v19 = v0[68];
    v20 = v0[63];
    v4 = v0[62];
    v5 = v0[60];
    v17 = v0[59];
    v6 = v0[58];
    v7 = v0[56];
    v18 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v8 = sub_227667100();
    (*(*(v8 - 8) + 16))(v4, v7, v8);
    swift_storeEnumTagMultiPayload();
    v9 = sub_2276651F0();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v10 - 8) + 56))(v17, 1, 1, v10);
    v11 = sub_2276665E0();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);

    sub_227667810();
    (*(v18 + 32))(v2, v1);
    (*(v3 + 8))(v2, v20);
    v12 = swift_task_alloc();
    v0[80] = v12;
    *(v12 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v12 + 24) = 50;
    *(v12 + 32) = 2;
    *(v12 + 40) = 123;
    *(v12 + 48) = v19;
    v13 = swift_task_alloc();
    v0[81] = v13;
    *v13 = v0;
    v13[1] = sub_2272D1B98;
    v14 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v12, v14);
  }

  else
  {
    sub_2272D6448((v0 + 12));
    sub_2272D6448((v0 + 37));

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2272D1930()
{
  v19 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[79];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[74];
    v5 = v0[73];
    v6 = v0[72];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report scaffold creation event to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v12 = v0[74];
    v13 = v0[73];
    v14 = v0[72];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2272D1B98()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = sub_2272D1DE4;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v3 = sub_2272D1CF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D1CF4()
{
  sub_2272D6448(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2272D1DE4()
{
  v19 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 12));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[82];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[74];
    v5 = v0[73];
    v6 = v0[72];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report scaffold creation event to AMP due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v12 = v0[74];
    v13 = v0[73];
    v14 = v0[72];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2272D2054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[56] = a5;
  v6[57] = a6;
  v6[55] = a4;
  sub_227664D30();
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v6[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v6[60] = swift_task_alloc();
  v6[61] = sub_2276685D0();
  v6[62] = swift_task_alloc();
  v7 = sub_227667830();
  v6[63] = v7;
  v6[64] = *(v7 - 8);
  v6[65] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6[66] = v8;
  v6[67] = *(v8 - 8);
  v6[68] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v10 = sub_227664EC0();
  v6[72] = v10;
  v6[73] = *(v10 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v11 = sub_22766B390();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D2390, 0, 0);
}

uint64_t sub_2272D2390(uint64_t a1)
{
  v84 = v1;
  v2 = *(v1 + 600);
  v3 = *(v1 + 584);
  v4 = *(v1 + 576);
  v5 = *(v1 + 440);
  sub_22766A630();
  v6 = *(v3 + 16);
  *(v1 + 648) = v6;
  *(v1 + 656) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 640);
  v11 = *(v1 + 616);
  v12 = *(v1 + 608);
  v13 = *(v1 + 600);
  v14 = *(v1 + 584);
  v15 = *(v1 + 576);
  if (v9)
  {
    v80 = *(v1 + 608);
    v16 = swift_slowAlloc();
    v74 = v8;
    v17 = swift_slowAlloc();
    v83 = v17;
    *v16 = 136315138;
    v18 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v19 = MEMORY[0x22AA995D0](v15, v18);
    v77 = v10;
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_226E97AE8(v19, v21, &v83);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_226E8E000, v7, v74, "Reporting plan creation error %s to AMP", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v11 + 8))(v77, v80);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v1 + 56);

    v24 = *__swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
    swift_beginAccess();
    sub_226F9B220(v24 + 280, v1 + 96);
    if (*(v1 + 120))
    {
      sub_226F19770((v1 + 96), v1 + 136);
      sub_226E91B50(v1 + 136, v1 + 176);
      v25 = swift_allocObject();
      sub_226F19770((v1 + 176), v25 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v1 + 136));
    }

    else
    {
      v42 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D50048], v42);
      *(swift_allocObject() + 16) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v45 = *(v1 + 568);
    v38 = swift_task_alloc();
    *(v1 + 664) = v38;
    *(v38 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v38 + 24) = 50;
    *(v38 + 32) = 2;
    *(v38 + 40) = 207;
    *(v38 + 48) = v45;
    v46 = swift_task_alloc();
    *(v1 + 672) = v46;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v46 = v1;
    v46[1] = sub_2272D2E68;
    v40 = sub_2272D6564;
    v39 = (v1 + 16);
    goto LABEL_11;
  }

  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  sub_2272D63D8(v1 + 16, v1 + 296);
  v26 = *(v1 + 320);
  if (v26)
  {
    v27 = *(v1 + 520);
    v28 = *(v1 + 512);
    v78 = *(v1 + 544);
    v81 = *(v1 + 504);
    v29 = *(v1 + 496);
    v31 = *(v1 + 472);
    v30 = *(v1 + 480);
    v32 = *(v1 + 456);
    v33 = *(v1 + 464);
    v75 = *(v1 + 328);
    __swift_project_boxed_opaque_existential_0((v1 + 296), v26);
    v34 = sub_227664CE0();
    (*(*(v34 - 8) + 16))(v29, v32, v34);
    swift_storeEnumTagMultiPayload();
    v35 = sub_2276651F0();
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v36 - 8) + 56))(v31, 1, 1, v36);
    v37 = sub_2276665E0();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    sub_227667810();
    (*(v75 + 32))(v27, v26);
    (*(v28 + 8))(v27, v81);
    v38 = swift_task_alloc();
    *(v1 + 688) = v38;
    *(v38 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v38 + 24) = 50;
    *(v38 + 32) = 2;
    *(v38 + 40) = 210;
    *(v38 + 48) = v78;
    v39 = swift_task_alloc();
    *(v1 + 696) = v39;
    *v39 = v1;
    v39[1] = sub_2272D3B34;
    v40 = sub_2272D6568;
    v41 = MEMORY[0x277D84F78] + 8;
LABEL_11:

    return MEMORY[0x2822008A0](v39, 0, 0, 0xD000000000000013, 0x8000000227693B00, v40, v38, v41);
  }

  sub_2272D6448(v1 + 16);
  sub_2272D6448(v1 + 296);
  v47 = *(v1 + 648);
  v48 = *(v1 + 592);
  v49 = *(v1 + 576);
  v50 = *(v1 + 440);
  sub_22766A630();
  v47(v48, v50, v49);
  v51 = sub_22766B380();
  v52 = sub_22766C8B0();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v1 + 632);
  v55 = *(v1 + 616);
  v56 = *(v1 + 608);
  v57 = *(v1 + 592);
  v58 = *(v1 + 584);
  v59 = *(v1 + 576);
  if (v53)
  {
    v82 = *(v1 + 608);
    v60 = swift_slowAlloc();
    v76 = v52;
    v61 = swift_slowAlloc();
    v83 = v61;
    *v60 = 136315138;
    v62 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v63 = MEMORY[0x22AA995D0](v59, v62);
    v79 = v54;
    v65 = v64;
    (*(v58 + 8))(v57, v59);
    v66 = sub_226E97AE8(v63, v65, &v83);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_226E8E000, v51, v76, "Reporting plan creation error %s to CoreAnalytics", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);

    (*(v55 + 8))(v79, v82);
  }

  else
  {

    (*(v58 + 8))(v57, v59);
    (*(v55 + 8))(v54, v56);
  }

  swift_beginAccess();
  v67 = swift_weakLoadStrong();
  if (v67)
  {
    v68 = *(v1 + 648);
    v69 = *(v1 + 576);
    v70 = *(v1 + 440);
    sub_226E91B50(v67 + 16, v1 + 216);

    __swift_project_boxed_opaque_existential_0((v1 + 216), *(v1 + 240));
    *(v1 + 280) = type metadata accessor for CreatePlanFailureAnalyticsEvent(0);
    *(v1 + 288) = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent, &unk_22767D710);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 256));
    v68(boxed_opaque_existential_0, v70, v69);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v1 + 256));
    __swift_destroy_boxed_opaque_existential_0((v1 + 216));
  }

  v72 = *(v1 + 8);

  return v72();
}

uint64_t sub_2272D2E68()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = sub_2272D361C;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = sub_2272D2FC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D2FC4()
{
  v50 = v0;
  sub_2272D63D8((v0 + 2), (v0 + 37));
  v1 = v0[40];
  if (v1)
  {
    v2 = v0[65];
    v3 = v0[64];
    v45 = v0[68];
    v47 = v0[63];
    v4 = v0[62];
    v6 = v0[59];
    v5 = v0[60];
    v7 = v0[57];
    v8 = v0[58];
    v43 = v0[41];
    __swift_project_boxed_opaque_existential_0(v0 + 37, v1);
    v9 = sub_227664CE0();
    (*(*(v9 - 8) + 16))(v4, v7, v9);
    swift_storeEnumTagMultiPayload();
    v10 = sub_2276651F0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_2276665E0();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    sub_227667810();
    (*(v43 + 32))(v2, v1);
    (*(v3 + 8))(v2, v47);
    v13 = swift_task_alloc();
    v0[86] = v13;
    *(v13 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v13 + 24) = 50;
    *(v13 + 32) = 2;
    *(v13 + 40) = 210;
    *(v13 + 48) = v45;
    v14 = swift_task_alloc();
    v0[87] = v14;
    *v14 = v0;
    v14[1] = sub_2272D3B34;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2272D6568, v13, v15);
  }

  else
  {
    sub_2272D6448((v0 + 2));
    sub_2272D6448((v0 + 37));
    v16 = v0[81];
    v17 = v0[74];
    v18 = v0[72];
    v19 = v0[55];
    sub_22766A630();
    v16(v17, v19, v18);
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[79];
    v24 = v0[77];
    v25 = v0[76];
    v26 = v0[74];
    v27 = v0[73];
    v28 = v0[72];
    if (v22)
    {
      v48 = v0[76];
      v29 = swift_slowAlloc();
      v44 = v21;
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      v31 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v32 = MEMORY[0x22AA995D0](v28, v31);
      v46 = v23;
      v34 = v33;
      (*(v27 + 8))(v26, v28);
      v35 = sub_226E97AE8(v32, v34, &v49);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v20, v44, "Reporting plan creation error %s to CoreAnalytics", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);

      (*(v24 + 8))(v46, v48);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
      (*(v24 + 8))(v23, v25);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = v0[81];
      v38 = v0[72];
      v39 = v0[55];
      sub_226E91B50(Strong + 16, (v0 + 27));

      __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
      v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent(0);
      v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent, &unk_22767D710);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      v37(boxed_opaque_existential_0, v39, v38);
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v0 + 32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    }

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_2272D361C()
{
  v47 = v0;
  (*(v0[70] + 8))(v0[71], v0[69]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[85];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v42 = v0[76];
    v44 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v10 = sub_226E97AE8(v8, v9, &v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report plan creation error to AMP due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v5 + 8))(v44, v42);
  }

  else
  {
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[76];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[81];
  v15 = v0[74];
  v16 = v0[72];
  v17 = v0[55];
  sub_22766A630();
  v14(v15, v17, v16);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[79];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  if (v20)
  {
    v45 = v0[76];
    v27 = swift_slowAlloc();
    v41 = v19;
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v30 = MEMORY[0x22AA995D0](v26, v29);
    v43 = v21;
    v32 = v31;
    (*(v25 + 8))(v24, v26);
    v33 = sub_226E97AE8(v30, v32, &v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v18, v41, "Reporting plan creation error %s to CoreAnalytics", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v22 + 8))(v43, v45);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = v0[81];
    v36 = v0[72];
    v37 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent, &unk_22767D710);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v35(boxed_opaque_existential_0, v37, v36);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2272D3B34()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_2272D4030;
  }

  else
  {
    (*(v2[67] + 8))(v2[68], v2[66]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 37);
    v3 = sub_2272D3C90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D3C90()
{
  v32 = v0;
  sub_2272D6448((v0 + 2));
  v1 = v0[81];
  v2 = v0[74];
  v3 = v0[72];
  v4 = v0[55];
  sub_22766A630();
  v1(v2, v4, v3);
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[79];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[74];
  v12 = v0[73];
  v13 = v0[72];
  if (v7)
  {
    v30 = v0[76];
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v16 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v17 = MEMORY[0x22AA995D0](v13, v16);
    v29 = v8;
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_226E97AE8(v17, v19, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v5, v28, "Reporting plan creation error %s to CoreAnalytics", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = v0[81];
    v23 = v0[72];
    v24 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent, &unk_22767D710);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v22(boxed_opaque_existential_0, v24, v23);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2272D4030()
{
  v47 = v0;
  (*(v0[67] + 8))(v0[68], v0[66]);
  sub_2272D6448((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v0[88];
  sub_22766A630();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v42 = v0[76];
    v44 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = MEMORY[0x22AA995D0](v0[52], v0[53]);
    v10 = sub_226E97AE8(v8, v9, &v46);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_226E8E000, v3, v4, "Could not report plan creation error to AMP due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    (*(v5 + 8))(v44, v42);
  }

  else
  {
    v11 = v0[78];
    v12 = v0[77];
    v13 = v0[76];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[81];
  v15 = v0[74];
  v16 = v0[72];
  v17 = v0[55];
  sub_22766A630();
  v14(v15, v17, v16);
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[79];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  if (v20)
  {
    v45 = v0[76];
    v27 = swift_slowAlloc();
    v41 = v19;
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    v29 = sub_2272D6504(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v30 = MEMORY[0x22AA995D0](v26, v29);
    v43 = v21;
    v32 = v31;
    (*(v25 + 8))(v24, v26);
    v33 = sub_226E97AE8(v30, v32, &v46);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v18, v41, "Reporting plan creation error %s to CoreAnalytics", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v22 + 8))(v43, v45);
  }

  else
  {

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = v0[81];
    v36 = v0[72];
    v37 = v0[55];
    sub_226E91B50(Strong + 16, (v0 + 27));

    __swift_project_boxed_opaque_existential_0(v0 + 27, v0[30]);
    v0[35] = type metadata accessor for CreatePlanFailureAnalyticsEvent(0);
    v0[36] = sub_2272D6504(&qword_27D7BC840, type metadata accessor for CreatePlanFailureAnalyticsEvent, &unk_22767D710);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
    v35(boxed_opaque_existential_0, v37, v36);
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_2272D4550(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 480) = a9;
  *(v9 + 464) = a2;
  *(v9 + 472) = a3;
  *(v9 + 456) = a1;
  *(v9 + 440) = a7;
  *(v9 + 448) = a8;
  v10 = sub_22766B390();
  *(v9 + 488) = v10;
  *(v9 + 496) = *(v10 - 8);
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = swift_task_alloc();
  sub_227664D30();
  *(v9 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  *(v9 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = sub_2276685D0();
  *(v9 + 552) = swift_task_alloc();
  v11 = sub_227667830();
  *(v9 + 560) = v11;
  *(v9 + 568) = *(v11 - 8);
  *(v9 + 576) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v9 + 584) = v12;
  *(v9 + 592) = *(v12 - 8);
  *(v9 + 600) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9128, &unk_22767F4F0);
  *(v9 + 608) = v13;
  *(v9 + 616) = *(v13 - 8);
  *(v9 + 624) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2272D4820, 0, 0);
}

uint64_t sub_2272D4820()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v0 + 56);

    v2 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    swift_beginAccess();
    sub_226F9B220(v2 + 280, v0 + 96);
    if (*(v0 + 120))
    {
      sub_226F19770((v0 + 96), v0 + 136);
      sub_226E91B50(v0 + 136, v0 + 176);
      v3 = swift_allocObject();
      sub_226F19770((v0 + 176), v3 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    }

    else
    {
      v20 = sub_2276636A0();
      sub_2272D6504(&qword_28139BCC0, MEMORY[0x277D500E0], MEMORY[0x277D500E8]);
      v21 = swift_allocError();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D50048], v20);
      *(swift_allocObject() + 16) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
      sub_227669280();
    }

    v23 = *(v0 + 624);
    v16 = swift_task_alloc();
    *(v0 + 632) = v16;
    *(v16 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v16 + 24) = 50;
    *(v16 + 32) = 2;
    *(v16 + 40) = 260;
    *(v16 + 48) = v23;
    v24 = swift_task_alloc();
    *(v0 + 640) = v24;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9130, &qword_2276730A8);
    *v24 = v0;
    v24[1] = sub_2272D4FE8;
    v18 = sub_2272D636C;
    v17 = (v0 + 16);
    goto LABEL_8;
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_2272D63D8(v0 + 16, v0 + 296);
  v4 = *(v0 + 320);
  if (v4)
  {
    v5 = *(v0 + 576);
    v6 = *(v0 + 568);
    v39 = *(v0 + 600);
    v40 = *(v0 + 560);
    v7 = *(v0 + 552);
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 448);
    v38 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v4);
    v12 = sub_227664CE0();
    (*(*(v12 - 8) + 16))(v7, v11, v12);
    swift_storeEnumTagMultiPayload();
    v13 = sub_2276651F0();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_2276665E0();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    sub_227667810();
    (*(v38 + 32))(v5, v4);
    (*(v6 + 8))(v5, v40);
    v16 = swift_task_alloc();
    *(v0 + 656) = v16;
    *(v16 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v16 + 24) = 50;
    *(v16 + 32) = 2;
    *(v16 + 40) = 263;
    *(v16 + 48) = v39;
    v17 = swift_task_alloc();
    *(v0 + 664) = v17;
    *v17 = v0;
    v17[1] = sub_2272D5A14;
    v18 = sub_226EC4D24;
    v19 = MEMORY[0x277D84F78] + 8;
LABEL_8:

    return MEMORY[0x2822008A0](v17, 0, 0, 0xD000000000000013, 0x8000000227693B00, v18, v16, v19);
  }

  sub_2272D6448(v0 + 16);
  sub_2272D6448(v0 + 296);
  sub_22766A630();
  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_226E8E000, v25, v26, "Reporting plan creation event to CoreAnalytics", v27, 2u);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  v28 = *(v0 + 512);
  v29 = *(v0 + 488);
  v30 = *(v0 + 496);

  (*(v30 + 8))(v28, v29);
  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (v31)
  {
    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 456);
    sub_226E91B50(v31 + 16, v0 + 216);

    __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
    v35 = *(sub_227665BE0() + 16);

    *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
    *(v0 + 288) = sub_2272D6384();
    *(v0 + 256) = (v34 - v33) * 1000.0;
    *(v0 + 264) = v32;
    *(v0 + 272) = v35;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2272D4FE8()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_2272D565C;
  }

  else
  {
    (*(v2[77] + 8))(v2[78], v2[76]);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = sub_2272D5144;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2272D5144()
{
  sub_2272D63D8(v0 + 16, v0 + 296);
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 576);
    v3 = *(v0 + 568);
    v30 = *(v0 + 600);
    v31 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 536);
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 448);
    v29 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_0((v0 + 296), v1);
    v9 = sub_227664CE0();
    (*(*(v9 - 8) + 16))(v4, v8, v9);
    swift_storeEnumTagMultiPayload();
    v10 = sub_2276651F0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_2276665E0();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    sub_227667810();
    (*(v29 + 32))(v2, v1);
    (*(v3 + 8))(v2, v31);
    v13 = swift_task_alloc();
    *(v0 + 656) = v13;
    *(v13 + 16) = "SeymourServices/WorkoutPlanAnalyticsReporter.swift";
    *(v13 + 24) = 50;
    *(v13 + 32) = 2;
    *(v13 + 40) = 263;
    *(v13 + 48) = v30;
    v14 = swift_task_alloc();
    *(v0 + 664) = v14;
    *v14 = v0;
    v14[1] = sub_2272D5A14;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D24, v13, v15);
  }

  else
  {
    sub_2272D6448(v0 + 16);
    sub_2272D6448(v0 + 296);
    sub_22766A630();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Reporting plan creation event to CoreAnalytics", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    v19 = *(v0 + 512);
    v20 = *(v0 + 488);
    v21 = *(v0 + 496);

    (*(v21 + 8))(v19, v20);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = *(v0 + 464);
      v23 = *(v0 + 472);
      v25 = *(v0 + 456);
      sub_226E91B50(Strong + 16, v0 + 216);

      __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
      v26 = *(sub_227665BE0() + 16);

      *(v0 + 280) = &type metadata for CreatePlanAnalyticsEvent;
      *(v0 + 288) = sub_2272D6384();
      *(v0 + 256) = (v25 - v24) * 1000.0;
      *(v0 + 264) = v23;
      *(v0 + 272) = v26;
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
      __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    }

    v27 = *(v0 + 8);

    return v27();
  }
}