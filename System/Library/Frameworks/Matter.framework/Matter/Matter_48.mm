uint64_t sub_2394FC440(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v21 = "DeviceCommissioner";
    *&v21[8] = 2080;
    *&v21[10] = "Commission";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 9136))
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "No default commissioner is specified");
    }

    v9 = 0x3E200000000;
    goto LABEL_36;
  }

  v5 = sub_2394FB1BC(a1, a2);
  if (!v5 || (v6 = v5, ((*(*v5 + 72))(v5) & 1) == 0) && v6[20] != 1)
  {
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v21 = HIDWORD(a2);
      *&v21[4] = 1024;
      *&v21[6] = a2;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Invalid device for commissioning %08X%08X", buf, 0xEu);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "Invalid device for commissioning %08X%08X", HIDWORD(a2), a2);
    }

    v9 = 0x3E900000000;
    goto LABEL_36;
  }

  if (((*(*v6 + 72))(v6) & 1) == 0 && v6 != *(a1 + 4352))
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v21 = HIDWORD(a2);
      *&v21[4] = 1024;
      *&v21[6] = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Device is not connected and not being paired %08X%08X", buf, 0xEu);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "Device is not connected and not being paired %08X%08X", HIDWORD(a2), a2);
    }

    v9 = 0x3EF00000000;
LABEL_36:
    v15 = 3;
    goto LABEL_37;
  }

  v12 = *(a1 + 4368);
  v13 = sub_2393D9044(9u);
  v14 = v13;
  if (v12 != 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_2394F2C88(v12);
      *buf = 136315138;
      *v21 = v16;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Commissioning already in progress (stage '%s') - not restarting", buf, 0xCu);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      v17 = sub_2394F2C88(*(a1 + 4368));
      sub_2393D5320(9, 1, "Commissioning already in progress (stage '%s') - not restarting", v17);
    }

    v9 = 0x3F600000000;
    goto LABEL_36;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v21 = HIDWORD(a2);
    *&v21[4] = 1024;
    *&v21[6] = a2;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Commission called for node ID 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Commission called for node ID 0x%08X%08X", HIDWORD(a2), a2);
  }

  (*(**(a1 + 9136) + 32))(*(a1 + 9136), *(a1 + 4288));
  v8 = (*(*v6 + 72))(v6);
  if (v8)
  {
    *buf = 0;
    *&v21[4] = "core_dcm_commission_device";
    v21[16] = 0;
    sub_23948BD20(buf);
    v8 = (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v6);
    v15 = 0;
    v9 = 0;
  }

  else
  {
    v15 = 0;
    v9 = 0;
    *(a1 + 4370) = 1;
  }

LABEL_37:
  v18 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *v21 = "DeviceCommissioner";
    *&v21[8] = 2080;
    *&v21[10] = "Commission";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v15;
}

unint64_t sub_2394FC990(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    v14 = 136315394;
    *v15 = "DeviceCommissioner";
    *&v15[8] = 2080;
    *&v15[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v9 = sub_2394FBC2C(a1, a2, a3);
  if (v9 || (v10 = (*(*a1 + 56))(a1, a2, a4), v9 = v10, v10))
  {
    v14 = 2;
    *&v15[4] = "core_dcm_commission_device";
    *&v15[12] = v9;
    v15[16] = 3;
    v10 = sub_23948BD20(&v14);
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v12))
  {
    v14 = 136315394;
    *v15 = "DeviceCommissioner";
    *&v15[8] = 2080;
    *&v15[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  return v9 & 0xFFFFFFFF00000000 | v11;
}

uint64_t sub_2394FCB7C(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v10))
  {
    v18 = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    *v21 = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v18, 0x16u);
  }

  LOBYTE(v18) = *a5;
  if (v18 == 1)
  {
    HIDWORD(v19) = *(a5 + 8);
    v11 = *(a5 + 128);
    v27 = *(a5 + 112);
    v28 = v11;
    v29[0] = *(a5 + 144);
    *(v29 + 11) = *(a5 + 155);
    v12 = *(a5 + 64);
    v23 = *(a5 + 48);
    v24 = v12;
    v13 = *(a5 + 96);
    v25 = *(a5 + 80);
    v26 = v13;
    v14 = *(a5 + 32);
    *&v21[2] = *(a5 + 16);
    v22 = v14;
  }

  v15 = sub_2394F4788(a1 + 4880, a2, a3, 1, a4, &v18);
  v16 = sub_23948B4CC(v15);
  if (os_signpost_enabled(v16))
  {
    v18 = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    *v21 = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v18, 0x16u);
  }

  return v15;
}

void *sub_2394FCD48(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x7F0uLL);
  v3 = v2;
  if (v2)
  {
    sub_23950F644(v2);
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2394FCDCC(uint64_t a1)
{
  result = sub_239476060();
  v5 = *(a1 + 140);
  v4 = (a1 + 140);
  if (v5 == 1)
  {
    return *sub_238DD173C(v4, v3);
  }

  return result;
}

void sub_2394FCE24(uint64_t result, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(result + 4352);
  if (v2 && v2[64] == 2)
  {
    v5 = (*(*v2 + 24))(*(result + 4352));
    v16 = *(result + 4496);
    v6 = *(result + 4516);
    v17 = *(result + 4512);
    v18 = v6;
    v19 = *(result + 4520);
    v7 = *(result + 4576);
    v8 = *(result + 4608);
    v24 = *(result + 4592);
    *v25 = v8;
    *&v25[12] = *(result + 4620);
    v9 = *(result + 4544);
    v20 = *(result + 4528);
    v21 = v9;
    v22 = *(result + 4560);
    v23 = v7;
    v26 = *(result + 4636);
    if (v26 == 1)
    {
      v27 = *(result + 4640);
      v28 = *(result + 4648);
    }

    v29 = *(result + 4656);
    v10 = *(result + 4672);
    *(&v29 + 1) = a2;
    v30 = v10;
    *buf = 0;
    *&buf[8] = 0;
    *(result + 4496) = 0u;
    *(result + 4512) = 363069440;
    *(result + 4656) = 0;
    *(result + 4672) = 0;
    *(result + 4664) = 0;
    *(result + 4516) = 0u;
    *(result + 4532) = 0u;
    *(result + 4548) = 0u;
    *(result + 4564) = 0u;
    *(result + 4580) = 0u;
    *(result + 4596) = 0u;
    *(result + 4612) = 0u;
    *(result + 4621) = 0u;
    sub_2394FB378(result, v2);
    if (sub_2394FBC2C(result, v5, &v16))
    {
      v11 = sub_2393D9044(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/controller/CHIPDeviceController.cpp";
        v14 = 1024;
        v15 = 913;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        v12 = sub_2393C9138();
        sub_2393D5320(0, 1, "%s at %s:%d", v12, "src/controller/CHIPDeviceController.cpp", 913);
      }
    }
  }
}

void *sub_2394FD078(void *result)
{
  v1 = result[544];
  if (v1)
  {
    if (*(v1 + 64) == 2)
    {
      v2 = result;
      sub_2394FB378(result, v1);
      *(v2 + 281) = 0uLL;
      *(v2 + 1128) = 363069440;
      v2[582] = 0;
      v2[584] = 0;
      v2[583] = 0;
      *(v2 + 4516) = 0u;
      *(v2 + 4532) = 0u;
      *(v2 + 4548) = 0u;
      *(v2 + 4564) = 0u;
      *(v2 + 4580) = 0u;
      *(v2 + 4596) = 0u;
      *(v2 + 4612) = 0u;
      *(v2 + 4621) = 0u;
      result = v2[542];
      if (result)
      {
        v3 = *(*result + 24);

        return v3();
      }
    }
  }

  return result;
}

unint64_t sub_2394FD1A0(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Get RendezvousParameters::GetSetupDiscriminator() called without discriminator in params (inconsistent).", v4, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(34, 1, "Get RendezvousParameters::GetSetupDiscriminator() called without discriminator in params (inconsistent).");
    }
  }

  return *(a1 + 36) | (*(a1 + 40) << 32);
}

unint64_t sub_2394FD23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 9136);
  if (v4)
  {
    v6 = (*(*v4 + 16))(v4, a3);
    v7 = v6;
    if (v6)
    {
      v8 = HIDWORD(v6);
    }

    else
    {
      v10 = sub_2394FC440(a1, a2);
      v7 = v10;
      v8 = HIDWORD(v10);
      if (!v10)
      {
        v7 = 0;
        return v7 | (v8 << 32);
      }
    }

    v12 = 2;
    v13 = "core_dcm_commission_device";
    v14 = v7;
    v15 = 3;
    sub_23948BD20(&v12);
  }

  else
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "No default commissioner is specified", &v12, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "No default commissioner is specified");
    }

    v7 = 3;
    LODWORD(v8) = 979;
  }

  return v7 | (v8 << 32);
}

uint64_t sub_2394FD380(uint64_t a1, const void *a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "continueCommissioningDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 9136))
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "No default commissioner is specified");
    }

    v9 = 0x41100000000;
    goto LABEL_16;
  }

  if (!a2 || *(a1 + 4344) != a2)
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Invalid device for commissioning %p", buf, 0xCu);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "Invalid device for commissioning %p", a2);
    }

    v9 = 0x41700000000;
LABEL_16:
    v11 = 3;
    goto LABEL_17;
  }

  v14 = (*(*a2 + 24))(a2);
  v15 = sub_2394FB1BC(a1, v14);
  if (!v15)
  {
    v22 = sub_2393D9044(9u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Couldn't find commissionee device", buf, 2u);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "Couldn't find commissionee device");
    }

    v9 = 0x41D00000000;
    goto LABEL_16;
  }

  v16 = v15;
  if (!(*(*v15 + 72))(v15) || v16 != *(a1 + 4344))
  {
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(*v16 + 24))(v16) >> 32;
      v19 = (*(*v16 + 24))(v16);
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 1024;
      *&buf[10] = v19;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid device for commissioning after attestation failure: 0x%08X%08X", buf, 0xEu);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      v20 = (*(*v16 + 24))(v16) >> 32;
      v21 = (*(*v16 + 24))(v16);
      sub_2393D5320(9, 1, "Invalid device for commissioning after attestation failure: 0x%08X%08X", v20, v21);
    }

    v9 = 0x42300000000;
    goto LABEL_16;
  }

  v23 = *(a1 + 4368);
  v24 = sub_2393D9044(9u);
  v25 = v24;
  if (v23 != 13)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Commissioning is not attestation verification phase", buf, 2u);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "Commissioning is not attestation verification phase");
    }

    v9 = 0x42900000000;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = (*(*v16 + 24))(v16) >> 32;
    v27 = (*(*v16 + 24))(v16);
    *buf = 67109376;
    *&buf[4] = v26;
    *&buf[8] = 1024;
    *&buf[10] = v27;
    _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Continuing commissioning after attestation failure for device ID 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v28 = (*(*v16 + 24))(v16) >> 32;
    v29 = (*(*v16 + 24))(v16);
    sub_2393D5320(9, 2, "Continuing commissioning after attestation failure for device ID 0x%08X%08X", v28, v29);
  }

  if (a3)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Client selected error: %u for failed 'Attestation Information' for device", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9, 1, "Client selected error: %u for failed 'Attestation Information' for device", a3);
    }

    v36[80] = 0;
    *&buf[8] = a3;
    *buf = 6;
    sub_23950F14C(v33, buf);
    sub_2394FDB60(a1, 0x436000000ACLL, "src/controller/CHIPDeviceController.cpp", v33);
    if (v33[0] == 4)
    {
      v33[1] = &unk_284BBE888;
      v8 = sub_239495880(&v34);
    }

    if (*buf != 4)
    {
      goto LABEL_59;
    }

    *&buf[8] = &unk_284BBE888;
    v30 = v36;
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Overriding attestation failure per client and continuing commissioning", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Overriding attestation failure per client and continuing commissioning");
    }

    v31[0] = -1;
    v32[80] = 0;
    sub_2394FDB60(a1, 0, 0, v31);
    if (v31[0] != 4)
    {
      goto LABEL_59;
    }

    v31[1] = &unk_284BBE888;
    v30 = v32;
  }

  v8 = sub_239495880(v30);
LABEL_59:
  v11 = 0;
  v9 = 0;
LABEL_17:
  v12 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "continueCommissioningDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v11;
}

void sub_2394FDB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *v33 = 136315394;
    *&v33[4] = "DeviceCommissioner";
    *&v33[12] = 2080;
    *&v33[14] = "CommissioningStageComplete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v33, 0x16u);
  }

  v9 = sub_2394F2CAC(*(a1 + 4368));
  *v33 = 1;
  *&v33[8] = v9;
  *&v33[16] = a2;
  v33[20] = 3;
  sub_23948BD20(v33);
  v10 = *(a1 + 4344);
  if (!v10)
  {
    sub_239538F84();
  }

  v11 = (*(*v10 + 24))(v10);
  v12 = *(a1 + 4344);
  *(a1 + 4344) = 0;
  sub_23950F81C(a1 + 4376);
  v13 = sub_23950F81C(a1 + 4408);
  v14 = *(a1 + 4336);
  if (v14)
  {
    v15 = sub_239293160(a1);
    if (v15)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }

    v13 = (*(*v14 + 64))(v14, v11, v16, *(a1 + 4368), a2, a3);
  }

  if (*(a1 + 9144))
  {
    v17 = *(a1 + 4368);
    *(a4 + 112) = v17;
    v18 = *(a1 + 9144);
    v19 = *a4;
    v36 = v19;
    if (v19 <= 2)
    {
      if (!v19)
      {
        v37 = *(a4 + 8);
        goto LABEL_26;
      }

      if (v19 == 1 || v19 == 2)
      {
        v22 = *(a4 + 24);
        v37 = *(a4 + 8);
        v38 = v22;
LABEL_26:
        v44 = v17;
        v13 = (*(*v18 + 48))(v18, a2, a3, &v36);
        v28 = v13;
        v30 = v29;
        if (v36 == 4)
        {
          *&v37 = &unk_284BBE888;
          v13 = sub_239495880(&v38 + 8);
        }

        if (v28 && *(a1 + 4368) != 40)
        {
          v33[18] = 0;
          v34 = 0;
          v35 = 0;
          *v33 = v28;
          *&v33[8] = v30;
          v31 = *(a4 + 112);
          v33[16] = 1;
          *(a1 + 4368) = 40;
          v33[17] = v31;
          *(a1 + 4344) = v12;
          v13 = (*(*a1 + 96))(a1, v12, v11, v33);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v19 <= 4)
      {
        if (v19 == 3)
        {
          v23 = *(a4 + 24);
          v37 = *(a4 + 8);
          v38 = v23;
          v24 = *(a4 + 56);
          v39 = *(a4 + 40);
          v40 = v24;
        }

        else
        {
          v21 = *(a4 + 16);
          v20 = *(a4 + 24);
          *&v37 = &unk_284BBE888;
          *(&v37 + 1) = v21;
          *&v38 = v20;
          sub_239495A4C(&v38 + 8, a4 + 32);
          v41 = *(a4 + 72);
          v17 = *(a4 + 112);
        }

        goto LABEL_26;
      }

      if (v19 == 5)
      {
        v25 = *(a4 + 56);
        v26 = *(a4 + 88);
        v41 = *(a4 + 72);
        v42 = v26;
        v43 = *(a4 + 104);
        v27 = *(a4 + 24);
        v37 = *(a4 + 8);
        v38 = v27;
        v39 = *(a4 + 40);
        v40 = v25;
        goto LABEL_26;
      }

      if (v19 == 6)
      {
        LOWORD(v37) = *(a4 + 8);
        goto LABEL_26;
      }
    }

    if ((v19 - 7) <= 2)
    {
      LOBYTE(v37) = *(a4 + 8);
    }

    goto LABEL_26;
  }

LABEL_31:
  v32 = sub_23948B4CC(v13);
  if (os_signpost_enabled(v32))
  {
    *v33 = 136315394;
    *&v33[4] = "DeviceCommissioner";
    *&v33[12] = 2080;
    *&v33[14] = "CommissioningStageComplete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v33, 0x16u);
  }
}

uint64_t sub_2394FDFC0(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v19 = "DeviceCommissioner";
    *&v19[8] = 2080;
    *&v19[10] = "continueCommissioningAfterConnectNetworkRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = *(a1 + 9136);
  if (v5)
  {
    *(a1 + 4368) = 29;
    if (*(a1 + 4344))
    {
      v6 = 0;
    }

    else
    {
      v8 = sub_2394FCD48((a1 + 4440));
      if (!v8)
      {
        v9 = 11;
        v10 = 1109;
        goto LABEL_21;
      }

      v6 = v8;
      v11 = *(a1 + 4280);
      v12 = *(v11 + 40);
      v13 = *(v11 + 56);
      *(v8 + 1968) = v12;
      *(v8 + 1976) = v13;
      *(v8 + 24) = a2;
      *(v8 + 32) = 0;
      *(v8 + 40) = a2;
      *(v8 + 80) = 1;
      *(v8 + 48) = xmmword_27DF7BD44;
      *(v8 + 64) = 1;
      *(v8 + 66) = 5540;
      *(v8 + 68) = 0;
      *(v8 + 72) = 0;
      *(a1 + 4344) = v8;
      v5 = *(a1 + 9136);
    }

    (*(*v5 + 32))(v5, *(a1 + 4288));
    v14 = sub_2393D9044(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v19 = HIDWORD(a2);
      *&v19[4] = 1024;
      *&v19[6] = a2;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Continuing commissioning after connect to network complete for device ID 0x%08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Continuing commissioning after connect to network complete for device ID 0x%08X%08X", HIDWORD(a2), a2);
    }

    *buf = 0;
    *&v19[4] = "core_dcm_operational_setup";
    v19[16] = 0;
    sub_23948BD20(buf);
    v8 = (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v6);
    v15 = v8;
    v10 = HIDWORD(v8);
    if (v8)
    {
      *buf = 1;
      *&v19[4] = "core_dcm_operational_setup";
      *&v19[12] = v8;
      v19[16] = 3;
      v8 = sub_23948BD20(buf);
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    v8 = sub_2393D5398(1u);
    if (v8)
    {
      sub_2393D5320(9, 1, "No default commissioner is specified");
    }

    v9 = 3;
    v10 = 1096;
  }

LABEL_21:
  v16 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v16))
  {
    *buf = 136315394;
    *v19 = "DeviceCommissioner";
    *&v19[8] = 2080;
    *&v19[10] = "continueCommissioningAfterConnectNetworkRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | (v10 << 32);
}

uint64_t sub_2394FE350(_BYTE *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1)
  {
    if (a2)
    {
      v4 = sub_2393D9044(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v12 = HIDWORD(a2);
        v13 = 1024;
        v14 = a2;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "StopPairing called for node ID 0x%08X%08X", buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "StopPairing called for node ID 0x%08X%08X", HIDWORD(a2), a2);
      }

      if (sub_2394F6F94((a1 + 4880), a2))
      {
        a1[4370] = 0;
        (*(*a1 + 64))(a1, 0x47600000074, "src/controller/CHIPDeviceController.cpp");
LABEL_17:
        v6 = 0;
        v5 = 0;
        return v5 | v6;
      }

      v7 = sub_2394FB1BC(a1, a2);
      if (v7)
      {
        if (*(a1 + 543) == v7)
        {
          sub_2394FAE7C(a1);
          v9[0] = -1;
          v10[80] = 0;
          sub_2394FDB60(a1, 0x48100000074, "src/controller/CHIPDeviceController.cpp", v9);
          if (v9[0] == 4)
          {
            v9[1] = &unk_284BBE888;
            sub_239495880(v10);
          }
        }

        else
        {
          sub_2394FB378(a1, v7);
        }

        goto LABEL_17;
      }

      v5 = 0x47C00000000;
      v6 = 51;
    }

    else
    {
      v5 = 0x46E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x46D00000000;
    v6 = 3;
  }

  return v5 | v6;
}

void sub_2394FE578(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

void sub_2394FE5E8(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

uint64_t sub_2394FE658(uint64_t result)
{
  v1 = result;
  v2 = *(result + 4696);
  if (v2)
  {
    *(result + 4696) = 0;
    result = v2(result + 4680);
  }

  v3 = *(v1 + 4736);
  if (v3)
  {
    *(v1 + 4736) = 0;
    result = v3(v1 + 4720);
  }

  v4 = *(v1 + 4776);
  if (v4)
  {
    *(v1 + 4776) = 0;

    return v4(v1 + 4760);
  }

  return result;
}

unint64_t sub_2394FE6D8(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "UnpairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = sub_239525300(a1, a2);
    v6 = v5 & 0xFFFFFFFF00000000;
    v7 = v5;
  }

  else
  {
    v6 = 0x4B100000000;
    v7 = 3;
  }

  v8 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v8))
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "UnpairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  return v6 | v7;
}

void *sub_2394FE858(void *result)
{
  v1 = result[544];
  if (v1)
  {
    v2 = result;
    sub_2394FB378(result, v1);
    result = v2[542];
    if (result)
    {
      v3 = *(*result + 24);

      return v3();
    }
  }

  return result;
}

void *sub_2394FE8E4(void *a1, int a2)
{
  v5 = 1;
  v6 = "core_dcm_pase_session";
  v7 = a2;
  v8 = 3;
  sub_23948BD20(&v5);
  v3 = a1[542];
  if (v3)
  {
    (*(*v3 + 16))(v3, 1);
  }

  return sub_2394FE858(a1);
}

uint64_t sub_2394FE990(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4352);
  *(a1 + 4352) = 0;
  if (v3)
  {
    v4 = sub_2394F29C0(v3, a2);
    v6 = v5;
    v7 = sub_2393D9044(9u);
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v13 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed in setting up secure channel: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        v9 = sub_2393C9138();
        sub_2393D5320(9, 1, "Failed in setting up secure channel: %s", v9);
      }

      return (*(*a1 + 64))(a1, v4, v6);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Remote device completed SPAKE2+ handshake", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9, 3, "Remote device completed SPAKE2+ handshake");
      }

      *buf = 1;
      *&v13[4] = "core_dcm_pase_session";
      v14 = 0;
      v15 = 3;
      sub_23948BD20(buf);
      result = *(a1 + 4336);
      if (result)
      {
        result = (*(*result + 24))(result, 0, 0);
      }

      if (*(a1 + 4370) == 1)
      {
        *(a1 + 4370) = 0;
        *buf = 0;
        *&v13[4] = "core_dcm_commission_device";
        v15 = 0;
        sub_23948BD20(buf);
        return (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v3);
      }
    }
  }

  else
  {
    v11 = *(*a1 + 64);

    return v11();
  }

  return result;
}

unint64_t sub_2394FEC68(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v17 = "DeviceCommissioner";
    v18 = 2080;
    v19 = "SendCertificateChainRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v17 = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending Certificate Chain request to %p device", buf, 0xCu);
  }

  v10 = sub_2393D5398(3u);
  if (v10)
  {
    sub_2393D5320(9, 3, "Sending Certificate Chain request to %p device", a2);
  }

  if (a2)
  {
    v15 = a3;
    buf[0] = *a4;
    if (buf[0] == 1)
    {
      LODWORD(v17) = *(a4 + 4);
    }

    v10 = sub_2394FEEAC(a1, a2, &v15, sub_2394FF094, sub_2394FF294, 0, buf, 0);
    v11 = v10 & 0xFFFFFFFF00000000;
    v12 = v10;
  }

  else
  {
    v11 = 0x4FA00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v17 = "DeviceCommissioner";
    v18 = 2080;
    v19 = "SendCertificateChainRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v11 | v12;
}

unint64_t sub_2394FEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BBF520;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBF5B0;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23950F8A0(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239510894(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_2394FF094(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v13 = "DeviceCommissioner";
    v14 = 2080;
    v15 = "OnCertificateChainResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received certificate chain from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received certificate chain from the device");
  }

  v6 = *a2;
  v9 = 0;
  v10 = v6;
  v11[80] = 0;
  sub_2394FDB60(a1, 0, 0, &v9);
  if (v9 == 4)
  {
    *&v10 = &unk_284BBE888;
    v7 = sub_239495880(v11);
  }

  v8 = sub_23948B4CC(v7);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v13 = "DeviceCommissioner";
    v14 = 2080;
    v15 = "OnCertificateChainResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_2394FF294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnCertificateChainFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the Certificate Chain request Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = sub_2393C9138();
    sub_2393D5320(9, 2, "Device failed to receive the Certificate Chain request Response: %s", v9);
  }

  v12[0] = -1;
  v13[80] = 0;
  sub_2394FDB60(a1, a2, a3, v12);
  if (v12[0] == 4)
  {
    v12[1] = &unk_284BBE888;
    v10 = sub_239495880(v13);
  }

  v11 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnCertificateChainFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

unint64_t sub_2394FF4CC(uint64_t a1, const void *a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendAttestationRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending Attestation request to %p device", buf, 0xCu);
  }

  v10 = sub_2393D5398(3u);
  if (v10)
  {
    sub_2393D5320(9, 3, "Sending Attestation request to %p device", a2);
  }

  if (a2)
  {
    *buf = *a3;
    v15[0] = *a4;
    if (v15[0] == 1)
    {
      v16 = *(a4 + 4);
    }

    v10 = sub_2394FF780(a1, a2, buf, sub_2394FF968, sub_2394FFB6C, 0, v15, 0);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sent Attestation request, waiting for the Attestation Information", v15, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9, 3, "Sent Attestation request, waiting for the Attestation Information");
      }

      v11 = 0;
      v10 = 0;
    }

    v12 = v10;
  }

  else
  {
    v11 = 0x51D00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendAttestationRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v12 | v11;
}

unint64_t sub_2394FF780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BBF7C8;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBF858;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239510914(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_2395113B0(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_2394FF968(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received Attestation Information from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received Attestation Information from the device");
  }

  v6 = *a2;
  v7 = a2[1];
  v10 = 1;
  v11 = v6;
  v12 = v7;
  v13 = 0;
  sub_2394FDB60(a1, 0, 0, &v10);
  if (v10 == 4)
  {
    *&v11 = &unk_284BBE888;
    v8 = sub_239495880(&v12 + 8);
  }

  v9 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_2394FFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the Attestation Information Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = sub_2393C9138();
    sub_2393D5320(9, 2, "Device failed to receive the Attestation Information Response: %s", v9);
  }

  v12[0] = -1;
  v13[80] = 0;
  sub_2394FDB60(a1, a2, a3, v12);
  if (v12[0] == 4)
  {
    v12[1] = &unk_284BBE888;
    v10 = sub_239495880(v13);
  }

  v11 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

_BYTE *sub_2394FFDA4(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 2;
}

void sub_2394FFDC4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *(a1 + 9184) = a3;
  v5 = *((*(**(a1 + 9136) + 24))(*(a1 + 9136)) + 584);
  v6 = sub_2393D52C4(0x38uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B9DA4(v6, a2);
  }

  sub_23950F4D8((a1 + 9192), v7);
  (*(*v5 + 16))(&v18, v5);
  v8 = v18;
  v9 = sub_2393D9044(9u);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 != 1)
  {
    if (v10)
    {
      WORD2(v18) = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Proceeding without changing fail-safe timer value as delegate has not set it", &v18 + 4, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Proceeding without changing fail-safe timer value as delegate has not set it");
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v12 = *sub_238EAB248(&v18, v11);
    HIDWORD(v18) = 67109120;
    v19 = v12;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Changing fail-safe timer to %u seconds to handle DA failure", &v18 + 4, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v14 = sub_238EAB248(&v18, v13);
    sub_2393D5320(9, 2, "Changing fail-safe timer to %u seconds to handle DA failure", *v14);
  }

  v15 = *(a1 + 4344);
  v16 = *(a1 + 4368);
  v17 = *sub_238EAB248(&v18, v13);
  BYTE4(v18) = 1;
  v19 = 30000;
  if (!sub_239500688(a1, v15, v16, v17, &v18 + 4, sub_239500000, sub_239500294, 0))
  {
LABEL_14:
    sub_2395000A0(a1);
  }
}

void sub_239500000(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Successfully extended fail-safe timer to handle DA failure", v3, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Successfully extended fail-safe timer to handle DA failure");
  }

  sub_23950F81C(a1 + 4376);
  sub_2395000A0(a1);
}

void sub_2395000A0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4344))
  {
    v2 = *((*(**(a1 + 9136) + 24))(*(a1 + 9136)) + 584);
    v3 = sub_2393D9044(9u);
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Device attestation completed, delegating continuation to client", v6, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Device attestation completed, delegating continuation to client");
      }

      (*(*v2 + 24))(v2, a1, *(a1 + 4344), *(a1 + 9192), *(a1 + 9184));
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Need to wait for device attestation delegate, but no delegate available. Failing commissioning", v6, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9, 1, "Need to wait for device attestation delegate, but no delegate available. Failing commissioning");
      }

      v5 = *(a1 + 9184);
      v7 = 6;
      LOWORD(v8) = v5;
      v9[80] = 0;
      sub_2394FDB60(a1, 0x5AE000000ACLL, "src/controller/CHIPDeviceController.cpp", &v7);
      if (v7 == 4)
      {
        v8 = &unk_284BBE888;
        sub_239495880(v9);
      }
    }
  }
}

void sub_239500294(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Failed to extend fail-safe timer to handle attestation failure: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v3 = sub_2393C9138();
    sub_2393D5320(9, 2, "Failed to extend fail-safe timer to handle attestation failure: %s", v3);
  }

  v4 = *(a1 + 9184);
  v5 = 6;
  LOWORD(v6) = v4;
  v7[80] = 0;
  sub_2394FDB60(a1, 0x5BA000000ACLL, "src/controller/CHIPDeviceController.cpp", &v5);
  if (v5 == 4)
  {
    v6 = &unk_284BBE888;
    sub_239495880(v7);
  }
}

void sub_2395003F4(uint64_t a1, unsigned int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = 0x5C20000002FLL;
LABEL_10:
    v7 = "src/controller/CHIPDeviceController.cpp";
    goto LABEL_11;
  }

  if (*(a1 + 4368) != 22)
  {
    v8 = 0x5C300000003;
    goto LABEL_10;
  }

  v3 = *(a1 + 4344);
  if (!v3)
  {
    v8 = 0x5C400000003;
    goto LABEL_10;
  }

  v4 = *(a1 + 4336);
  if (v4)
  {
    v6 = (*(*v3 + 24))(v3);
    (*(*v4 + 112))(v4, v6, *(a1 + 36), *a2);
  }

  v7 = 0;
  v8 = 0;
LABEL_11:
  v9[0] = -1;
  v10[80] = 0;
  sub_2394FDB60(a1, v8, v7, v9);
  if (v9[0] == 4)
  {
    v9[1] = &unk_284BBE888;
    sub_239495880(v10);
  }
}

void sub_239500554(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 4368) == 33)
    {
      v3 = *(a1 + 4344);
      if (v3)
      {
        v4 = *(a1 + 4336);
        if (v4)
        {
          v6 = (*(*v3 + 24))(v3);
          (*(*v4 + 120))(v4, v6, *(a1 + 36), *a2);
        }
      }
    }
  }

  v7[0] = -1;
  v8[80] = 0;
  sub_2394FDB60(a1, 0, 0, v7);
  if (v7[0] == 4)
  {
    v7[1] = &unk_284BBE888;
    sub_239495880(v8);
  }
}

BOOL sub_239500688(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v8 = a8;
  v31 = *MEMORY[0x277D85DE8];
  v15 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v16 = v15 + 1000 * a4;
  v17 = *(a2 + 8);
  if (v16 < v17)
  {
    v22 = v15;
    v23 = sub_2393D9044(9u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 67109376;
      v29 = a4;
      LOWORD(v30) = 1024;
      *(&v30 + 2) = (((((v17 - v22) >> 3) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4);
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Skipping arming failsafe: new time (%u seconds from now) before old time (%u seconds from now)", v28, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Skipping arming failsafe: new time (%u seconds from now) before old time (%u seconds from now)", a4, (((((*(a2 + 8) - v22) >> 3) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4));
    }
  }

  else
  {
    *v28 = a4;
    v30 = a3;
    v18 = sub_2393D9044(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = a4;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Arming failsafe (%u seconds)", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Arming failsafe (%u seconds)", a4);
    }

    buf[0] = *a5;
    if (buf[0] == 1)
    {
      v27 = *(a5 + 4);
    }

    v20 = sub_2395008F8(a1, a2, v28, a6, a7, 0, buf, v8);
    if (v20)
    {
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = a1;
      }

      a7(v21, v20, v19);
    }

    else
    {
      *(a2 + 8) = v16;
    }
  }

  return v16 >= v17;
}

unint64_t sub_2395008F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BBFA70;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBFB00;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239511430(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951431C(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

uint64_t sub_239500AE0(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "ValidateAttestationInfo";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 9200);
    if (v5)
    {
      v5 = (*(*v5 + 16))(v5, a2, a1 + 4800);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 0x62E00000000;
  }

  else
  {
    v7 = 0x62D00000000;
  }

  v6 = 3;
LABEL_9:
  v8 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v8))
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "ValidateAttestationInfo";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  return v7 | v6;
}

uint64_t sub_239500C9C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  v5 = os_signpost_enabled(v4);
  if (v5)
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "CheckForRevokedDACChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 9200);
    if (v5)
    {
      v5 = (*(*v5 + 48))(v5, a2, a1 + 4800);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 0x63C00000000;
  }

  else
  {
    v7 = 0x63B00000000;
  }

  v6 = 3;
LABEL_9:
  v8 = sub_23948B4CC(v5);
  if (os_signpost_enabled(v8))
  {
    v10 = 136315394;
    v11 = "DeviceCommissioner";
    v12 = 2080;
    v13 = "CheckForRevokedDACChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  return v7 | v6;
}

unint64_t sub_239500E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC(a1);
  v13 = os_signpost_enabled(v12);
  if (v13)
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v24 = 2080;
    v25 = "ValidateCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) != 1)
  {
    v15 = 0x64700000000;
LABEL_9:
    v14 = 3;
    goto LABEL_14;
  }

  if (!*(a1 + 9200))
  {
    v15 = 0x64800000000;
    goto LABEL_9;
  }

  *buf = &unk_284BB9138;
  v13 = sub_2393FA970(a5, buf);
  v14 = v13;
  if (!v13)
  {
    (*(*a2 + 48))(&v20, a2);
    v17 = sub_238DE36B8(&v20, v16);
    v22[0] = sub_239495304(*v17) + 216;
    v22[1] = 16;
    if (v20 == 1)
    {
      (*(*v21 + 32))(v21);
    }

    v13 = (*(**(a1 + 9200) + 40))(*(a1 + 9200), a3, v22, a4, buf, a6);
    v14 = v13;
  }

  v15 = v13 & 0xFFFFFFFF00000000;
LABEL_14:
  v18 = sub_23948B4CC(v13);
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v24 = 2080;
    v25 = "ValidateCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v14 | v15;
}

unint64_t sub_2395010EC(uint64_t a1, const void *a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificateSigningRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending CSR request to %p device", buf, 0xCu);
  }

  v10 = sub_2393D5398(3u);
  if (v10)
  {
    sub_2393D5320(9, 3, "Sending CSR request to %p device", a2);
  }

  if (a2)
  {
    buf[16] = 0;
    *buf = *a3;
    v15[0] = *a4;
    if (v15[0] == 1)
    {
      v16 = *(a4 + 4);
    }

    v10 = sub_2395013A4(a1, a2, buf, sub_23950158C, sub_239501790, 0, v15, 0);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sent CSR request, waiting for the CSR", v15, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9, 3, "Sent CSR request, waiting for the CSR");
      }

      v11 = 0;
      v10 = 0;
    }

    v12 = v10;
  }

  else
  {
    v11 = 0x65B00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificateSigningRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v12 | v11;
}

unint64_t sub_2395013A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BBFD18;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBFDA8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239511ECC(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239512968(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_23950158C(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCertificateSigningRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received certificate signing request from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received certificate signing request from the device");
  }

  v6 = *a2;
  v7 = a2[1];
  v10 = 2;
  v11 = v6;
  v12 = v7;
  v13 = 0;
  sub_2394FDB60(a1, 0, 0, &v10);
  if (v10 == 4)
  {
    *&v11 = &unk_284BBE888;
    v8 = sub_239495880(&v12 + 8);
  }

  v9 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCertificateSigningRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_239501790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnCSRFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the CSR request Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = sub_2393C9138();
    sub_2393D5320(9, 2, "Device failed to receive the CSR request Response: %s", v9);
  }

  v12[0] = -1;
  v13[80] = 0;
  sub_2394FDB60(a1, a2, a3, v12);
  if (v12[0] == 4)
  {
    v12[1] = &unk_284BBE888;
    v10 = sub_239495880(v13);
  }

  v11 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnCSRFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

unint64_t sub_2395019C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  v9 = os_signpost_enabled(v8);
  if (v9)
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "IssueNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 36);
      *buf = 67109120;
      *&buf[4] = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Getting certificate chain for the device on fabric idx %u", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Getting certificate chain for the device on fabric idx %u", *(a1 + 36));
    }

    (*(**(a1 + 4288) + 24))(*(a1 + 4288), a3);
    if (*(a1 + 36))
    {
      v12 = *(a1 + 4288);
      v13 = sub_239293160(a1);
      if (v13)
      {
        v14 = *(v13 + 8);
      }

      else
      {
        v14 = 0;
      }

      (*(*v12 + 32))(v12, v14);
    }

    v17 = *(a1 + 4288);
    *buf = 0;
    *&buf[8] = 0;
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20[0] = 0;
    v20[1] = 0;
    v9 = (*(*v17 + 16))(v17, a2, buf, v23, v22, v21, v20, a4);
    v15 = v9 & 0xFFFFFFFF00000000;
    v16 = v9;
  }

  else
  {
    v15 = 0x6A100000000;
    v16 = 3;
  }

  v18 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "IssueNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v15 | v16;
}

unint64_t sub_239501C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC(a1);
  v13 = os_signpost_enabled(v12);
  if (v13)
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v34 = 2080;
    v35 = "ProcessOpCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v27 = a7;
    v14 = sub_2393D9044(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Getting certificate chain for the device from the issuer", buf, 2u);
    }

    v15 = a6;
    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Getting certificate chain for the device from the issuer");
    }

    *buf = &unk_284BB9138;
    v13 = sub_2393FA970(a5, buf);
    v16 = v13;
    if (!v13)
    {
      (*(*a2 + 48))(&v30, a2);
      v19 = sub_238DE36B8(&v30, v18);
      v32[0] = sub_239495304(*v19) + 216;
      v32[1] = 16;
      if (v30 == 1)
      {
        (*(*v31 + 32))(v31);
      }

      v20 = *(a1 + 4288);
      v21 = (*(*a2 + 24))(a2);
      (*(*v20 + 24))(v20, v21);
      if (*(a1 + 36))
      {
        v22 = *(a1 + 4288);
        v23 = sub_239293160(a1);
        if (v23)
        {
          v24 = *(v23 + 8);
        }

        else
        {
          v24 = 0;
        }

        (*(*v22 + 32))(v22, v24);
      }

      v13 = (*(**(a1 + 4288) + 16))(*(a1 + 4288), a3, v27, a4, v32, a5, v15, a1 + 4840);
      v16 = v13;
    }

    v17 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v17 = 0x6B700000000;
    v16 = 3;
  }

  v25 = sub_23948B4CC(v13);
  if (os_signpost_enabled(v25))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v34 = 2080;
    v35 = "ProcessOpCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v16 | v17;
}

unint64_t sub_239502030(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = sub_23948B4CC(a1);
  v15 = os_signpost_enabled(v14);
  if (v15)
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    *buf = *a3;
    buf[16] = *a4;
    if (buf[16] == 1)
    {
      v24 = *(a4 + 8);
    }

    v25 = a5;
    v26 = 16;
    v27 = a6;
    v28 = *(a1 + 4296);
    v21[0] = *a7;
    if (v21[0] == 1)
    {
      v22 = *(a7 + 4);
    }

    v15 = sub_2395022C0(a1, a2, buf, sub_2395024A8, sub_2395027BC, 0, v21, 0);
    if (v15)
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      v18 = sub_2393D9044(9u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Sent operational certificate to the device", v21, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sent operational certificate to the device");
      }

      v16 = 0;
      v15 = 0;
    }

    v17 = v15;
  }

  else
  {
    v16 = 0x6D400000000;
    v17 = 47;
  }

  v19 = sub_23948B4CC(v15);
  if (os_signpost_enabled(v19))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v17 | v16;
}

unint64_t sub_2395022C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BBFFC0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC0050;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_2395129E8(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513484(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_2395024A8(uint64_t a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    v21 = "OnOperationalCertificateAddResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 67109120;
    LODWORD(v19) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Device returned status %d on receiving the NOC", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Device returned status %d on receiving the NOC", *a2);
  }

  if (*(a1 + 32) != 1)
  {
    v11 = "src/controller/CHIPDeviceController.cpp";
    v12 = 1816;
LABEL_15:
    LODWORD(v10) = 3;
    goto LABEL_16;
  }

  v7 = *(a1 + 4344);
  if (!v7)
  {
    v11 = "src/controller/CHIPDeviceController.cpp";
    v12 = 1818;
    goto LABEL_15;
  }

  v8 = sub_2395029F4(*a2);
  v10 = v8;
  if (!v8)
  {
    v8 = sub_239502A3C(a1, v7);
    v10 = v8;
  }

  v11 = v9;
  if (v10)
  {
    v12 = HIDWORD(v10);
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Add NOC failed with error: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v14 = sub_2393C9138();
      sub_2393D5320(9, 2, "Add NOC failed with error: %s", v14);
    }

    v16[0] = -1;
    v17[80] = 0;
    sub_2394FDB60(a1, v10 | (v12 << 32), v11, v16);
    if (v16[0] == 4)
    {
      v16[1] = &unk_284BBE888;
      v8 = sub_239495880(v17);
    }
  }

  v15 = sub_23948B4CC(v8);
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    v21 = "OnOperationalCertificateAddResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_2395027BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAddNOCFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the operational certificate Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = sub_2393C9138();
    sub_2393D5320(9, 2, "Device failed to receive the operational certificate Response: %s", v9);
  }

  v12[0] = -1;
  v13[80] = 0;
  sub_2394FDB60(a1, a2, a3, v12);
  if (v12[0] == 4)
  {
    v12[1] = &unk_284BBE888;
    v10 = sub_239495880(v13);
  }

  v11 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAddNOCFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

uint64_t sub_2395029F4(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0x70300000056;
  }

  else
  {
    return qword_2395EAA28[a1] | qword_2395EA9C8[a1];
  }
}

uint64_t sub_239502A3C(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCredentialsProvisioningCompletion";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a2;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Operational credentials provisioned on device %p", buf, 0xCu);
  }

  v6 = sub_2393D5398(2u);
  if (v6)
  {
    sub_2393D5320(9, 2, "Operational credentials provisioned on device %p", a2);
  }

  if (a2)
  {
    v7 = *(a1 + 4336);
    if (v7)
    {
      (*(*v7 + 16))(v7, 0);
    }

    v12[0] = -1;
    v13[80] = 0;
    sub_2394FDB60(a1, 0, 0, v12);
    if (v12[0] == 4)
    {
      v12[1] = &unk_284BBE888;
      v6 = sub_239495880(v13);
    }

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0x74F00000000;
    v8 = 47;
  }

  v10 = sub_23948B4CC(v6);
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCredentialsProvisioningCompletion";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v9 | v8;
}

unint64_t sub_239502CAC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC(a1);
  v9 = os_signpost_enabled(v8);
  if (v9)
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendTrustedRootCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Sending root certificate to the device", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Sending root certificate to the device");
    }

    *buf = *a3;
    v15[0] = *a4;
    if (v15[0] == 1)
    {
      v16 = *(a4 + 4);
    }

    v9 = sub_239502F50(a1, a2, buf, sub_239503138, sub_239503330, 0, v15, 0);
    if (v9)
    {
      v11 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Sent root certificate to the device", v15, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sent root certificate to the device");
      }

      v11 = 0;
      v9 = 0;
    }

    v12 = v9;
  }

  else
  {
    v11 = 0x72D00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC(v9);
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendTrustedRootCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  return v12 | v11;
}

unint64_t sub_239502F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC0268;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC02F8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239513504(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_239503138(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v9 = "DeviceCommissioner";
    v10 = 2080;
    v11 = "OnRootCertSuccessResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Device confirmed that it has received the root certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Device confirmed that it has received the root certificate");
  }

  v6[0] = -1;
  v7[80] = 0;
  sub_2394FDB60(a1, 0, 0, v6);
  if (v6[0] == 4)
  {
    v6[1] = &unk_284BBE888;
    v4 = sub_239495880(v7);
  }

  v5 = sub_23948B4CC(v4);
  if (os_signpost_enabled(v5))
  {
    *buf = 136315394;
    v9 = "DeviceCommissioner";
    v10 = 2080;
    v11 = "OnRootCertSuccessResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

void sub_239503330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC(a1);
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnRootCertFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v15 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the root certificate Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v9 = sub_2393C9138();
    sub_2393D5320(9, 2, "Device failed to receive the root certificate Response: %s", v9);
  }

  v12[0] = -1;
  v13[80] = 0;
  sub_2394FDB60(a1, a2, a3, v12);
  if (v12[0] == 4)
  {
    v12[1] = &unk_284BBE888;
    v10 = sub_239495880(v13);
  }

  v11 = sub_23948B4CC(v10);
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnRootCertFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }
}

uint64_t sub_239503574(uint64_t a1, uint64_t a2)
{
  result = sub_2394E9BEC(a1);
  if (!result)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    return sub_2394BA294((a1 + 16), &v5);
  }

  return result;
}

uint64_t sub_2395035D0(void *a1, void *a2)
{
  sub_2394E97A0(a1, a2);

  return sub_2394F6CAC(a1 + 610, a2);
}

void sub_239503614(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = -1;
  v2[80] = 0;
  sub_2394FDB60(a1, 0, 0, v1);
  if (v1[0] == 4)
  {
    v1[1] = &unk_284BBE888;
    sub_239495880(v2);
  }
}

void sub_2395036B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received failure response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = sub_2393C9138();
    sub_2393D5320(9, 2, "Received failure response: %s", v7);
  }

  v8[0] = -1;
  v9[80] = 0;
  sub_2394FDB60(a1, a2, a3, v8);
  if (v8[0] == 4)
  {
    v8[1] = &unk_284BBE888;
    sub_239495880(v9);
  }
}

unint64_t sub_239503804(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a1 + 1024;
  *(a1 + 572) = *a4;
  v8 = (a4 + 16);
  v9 = *(a4 + 16);
  *(v7 + 976) = v9;
  if (v9 == 1)
  {
    *(v7 + 977) = *(a4 + 17);
  }

  v10 = *(a4 + 18);
  *(v7 + 978) = v10;
  if (v10 == 1)
  {
    *(v7 + 490) = *(a4 + 20);
  }

  v11 = *(a4 + 22);
  *(v7 + 982) = v11;
  if (v11 == 1)
  {
    *(v7 + 983) = *(a4 + 23);
  }

  v12 = *(a4 + 24);
  *(v7 + 984) = v12;
  if (v12 == 1)
  {
    *(v7 + 985) = *(a4 + 25);
  }

  if (*a4 == 116)
  {
    v15 = sub_2394FB1BC(a1, a3);
    v17 = v15;
    if (v15 == a2)
    {
      v18 = v33;
      sub_2394F2864(v15, v16, v33);
    }

    else
    {
      v18 = v32;
      (*(*a2 + 48))(v32, a2);
    }

    v23 = sub_238DE36B8(v18, v19);
    *(&buf + 1) = 0;
    v42 = 0;
    *&buf = &unk_284BBBF18;
    v43[0] = 0;
    sub_239495C6C(&buf, v23);
    if (v17 == a2)
    {
      if (v33[0] != 1)
      {
        goto LABEL_39;
      }

      v24 = v34;
    }

    else
    {
      if (LOBYTE(v32[0]) != 1)
      {
        goto LABEL_39;
      }

      v24 = v32[1];
    }

    (*(*v24 + 32))(v24);
LABEL_39:
    v30 = 0;
    v31 = 0;
    sub_239495A4C(v39, &buf);
    sub_239495A4C(v29, &buf);
    v25 = sub_2393D9044(9u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 134217984;
      *v38 = a2;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Disarming failsafe on device %p in background", v37, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Disarming failsafe on device %p in background", a2);
    }

    (*(*a2 + 40))(a2);
    if (v43[0] == 1)
    {
      *&v38[4] = *sub_238DE36B8(v43, v26);
      (*(**&v38[4] + 24))(*&v38[4]);
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    v37[0] = v27;
    sub_238DE36B8(v37, v26);
    sub_239495A4C(v28, v39);
    operator new();
  }

  if (!*a4)
  {
    v44[0] = -1;
    v45[80] = 0;
    sub_2394FDB60(a1, 0, 0, v44);
    if (v44[0] == 4)
    {
      v44[1] = &unk_284BBE888;
      sub_239495880(v45);
    }

    v13 = sub_2394FB1BC(a1, a3);
    if (v13)
    {
      sub_2394FB378(a1, v13);
    }

    return sub_239503F14(a1, a3, a1 + 1144);
  }

  if (*v8 == 1 && *sub_23949B670(v8, a2) >= 0x17u)
  {
    v35[0] = -1;
    v36[80] = 0;
    sub_2394FDB60(a1, 0, 0, v35);
    if (v35[0] == 4)
    {
      v35[1] = &unk_284BBE888;
      sub_239495880(v36);
    }

    return sub_239503F14(a1, a3, a1 + 1144);
  }

  v20 = sub_2393D9044(9u);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Disarming failsafe on device %p", &buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Disarming failsafe on device %p", a2);
  }

  buf = 0uLL;
  v39[0] = 0;
  result = sub_2395008F8(a1, a2, &buf, sub_239504384, sub_239504414, 0, v39, 0);
  if (result)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_2393C9138();
      *v39 = 136315138;
      v40 = v21;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Failed to send command to disarm fail-safe: %s", v39, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v22 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to send command to disarm fail-safe: %s", v22);
    }

    return sub_239504270(a1);
  }

  return result;
}

uint64_t sub_239503F14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *buf = 1;
  v19 = "core_dcm_commission_device";
  LODWORD(v20) = *a3;
  BYTE4(v20) = 3;
  sub_23948BD20(buf);
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*a3)
    {
      v7 = sub_2393C9138();
    }

    else
    {
      v7 = "success";
    }

    *buf = 67109634;
    v18 = HIDWORD(a2);
    LOWORD(v19) = 1024;
    *(&v19 + 2) = a2;
    HIWORD(v19) = 2080;
    v20 = v7;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Commissioning complete for node ID 0x%08X%08X: %s", buf, 0x18u);
  }

  if (sub_2393D5398(2u))
  {
    if (*a3)
    {
      v8 = sub_2393C9138();
    }

    else
    {
      v8 = "success";
    }

    sub_2393D5320(9, 2, "Commissioning complete for node ID 0x%08X%08X: %s", HIDWORD(a2), a2, v8);
  }

  *(a1 + 4368) = 1;
  result = *(a1 + 4336);
  if (result)
  {
    (*(*result + 40))(result, a2, *a3, a3[1]);
    v10 = sub_239293160(a1);
    if (v10)
    {
      v12 = *(v10 + 16);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a1 + 4336);
    if (*a3)
    {
      v14 = *a3;
      v15 = a3[1];
      if (*(a3 + 16) == 1)
      {
        v16 = *sub_23949B670(a3 + 16, v11);
      }

      else
      {
        v16 = 0;
      }

      buf[0] = *(a3 + 18);
      if (buf[0] == 1)
      {
        *&buf[2] = *(a3 + 10);
      }

      return (*(*v13 + 56))(v13, a2, v12, v14, v15, v16, buf);
    }

    else
    {
      return (*(*v13 + 48))(v13, a2, v12);
    }
  }

  return result;
}

unint64_t sub_239504190(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;
  v18 = *MEMORY[0x277D85DE8];
  sub_2395117DC(v17, a5);
  sub_238EFB6DC(v16, a6);
  v15[0] = 0;
  v13 = sub_239511430(a1, a2, v10, a4, v17, v16, v15, a7, 0, 0);
  sub_238EF641C(v16);
  sub_23951431C(v17);
  return v13;
}

uint64_t sub_239504270(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = a1[543];
  if (result)
  {
    v3 = (*(*result + 24))(result);
    v5[0] = -1;
    v6[80] = 0;
    sub_2394FDB60(a1, 0, 0, v5);
    if (v5[0] == 4)
    {
      v5[1] = &unk_284BBE888;
      sub_239495880(v6);
    }

    v4 = sub_2394FB1BC(a1, v3);
    if (v4)
    {
      sub_2394FB378(a1, v4);
    }

    return sub_239503F14(a1, v3, a1 + 1144);
  }

  return result;
}

uint64_t sub_239504384(void *a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Failsafe disarmed", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Failsafe disarmed");
  }

  return sub_239504270(a1);
}

uint64_t sub_239504414(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring failure to disarm failsafe: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v3 = sub_2393C9138();
    sub_2393D5320(9, 2, "Ignoring failure to disarm failsafe: %s", v3);
  }

  return sub_239504270(a1);
}

__n128 sub_239504510(uint64_t a1, __n128 *a2)
{
  if (*a1 == 4)
  {
    *(a1 + 8) = &unk_284BBE888;
    sub_239495880(a1 + 32);
  }

  *(a1 + 8) = &unk_284BBD538;
  v4 = a2->n128_u64[1];
  *(a1 + 8) = &unk_284BBE888;
  *(a1 + 16) = v4;
  *(a1 + 24) = a2[1].n128_u64[0];
  sub_239495ADC(a1 + 32, &a2[1].n128_i64[1]);
  result = a2[4];
  *(a1 + 72) = result;
  *a1 = 4;
  return result;
}

void sub_2395045BC(uint64_t a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    *buf = 67109120;
    v6 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Status of extending fail-safe for CASE retry: %u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Status of extending fail-safe for CASE retry: %u", *a2);
  }
}

void sub_239504688()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v3 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "Failed to extend fail-safe for CASE retry: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v1 = sub_2393C9138();
    sub_2393D5320(9, 1, "Failed to extend fail-safe for CASE retry: %s", v1);
  }
}

void sub_239504778(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 4328) != a2)
  {
    sub_23953913C();
  }

  sub_2394FE578((a1 + 4328), 0);
  if (*(a1 + 4368) != 2)
  {
    sub_2395390A4();
  }

  v3 = (*(**(a1 + 9144) + 24))(*(a1 + 9144));

  sub_239504810(a1, v3);
}

void sub_239504810(MTROTASoftwareUpdateProviderClusterApplyUpdateRequestParams *a1, uint64_t a2)
{
  p_newVersion = &a1[102]._newVersion;
  if (LOBYTE(a1[109]._updateToken) != 2)
  {
    sub_2395391D4();
  }

  v5 = BYTE1(a1[109]._updateToken);
  if (v5 == 255)
  {

    sub_239504EC4(a1, a2);
    return;
  }

  v69 = BYTE1(a1[109]._updateToken);
  v70 = 0;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v71[0] = v6;
  v71[1] = v6;
  v71[2] = v6;
  v71[3] = v6;
  v71[4] = v6;
  v72[0] = v6;
  *(v72 + 12) = v6;
  if (!v5)
  {
    *&v71[0] = 0x400000030;
    WORD4(v71[0]) = 0;
    v7 = 1;
    goto LABEL_27;
  }

  v7 = v5 - 1;
  v69 = v5 - 1;
  if (v5 == 1)
  {
LABEL_27:
    v32 = v7 + 1;
    v33 = v71 + 12 * v7;
    *v33 = 48;
    *(v33 + 2) = -65536;
    goto LABEL_28;
  }

  v69 = v5 - 2;
  if (v5 != 2)
  {
    v8 = v5 - 3;
    v69 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

LABEL_29:
    v11 = v8 - 1;
    v69 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_30:
    v14 = v11 - 1;
    v69 = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_31:
    v17 = v14 - 1;
    v69 = v17;
    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_32:
    v20 = v17 - 1;
    v69 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_33:
    v23 = v20 - 1;
    v69 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }

LABEL_34:
    v26 = v23 - 1;
    v69 = v26;
    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v32 = 0;
LABEL_28:
  v70 = v32 + 1;
  v34 = v71 + 12 * v32;
  *v34 = 0x100000030;
  *(v34 + 2) = -65536;
  v8 = v69;
  if (v69)
  {
    goto LABEL_29;
  }

LABEL_10:
  v9 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v10 = v71 + 12 * v9;
  *v10 = 0x200000030;
  *(v10 + 2) = -65536;
  v11 = v69;
  if (v69)
  {
    goto LABEL_30;
  }

LABEL_12:
  v12 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v13 = v71 + 12 * v12;
  *v13 = 0x300000030;
  *(v13 + 2) = -65536;
  v14 = v69;
  if (v69)
  {
    goto LABEL_31;
  }

LABEL_14:
  v15 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v16 = v71 + 12 * v15;
  *v16 = 0xC00000030;
  *(v16 + 2) = -65536;
  v17 = v69;
  if (v69)
  {
    goto LABEL_32;
  }

LABEL_16:
  v18 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v19 = v71 + 12 * v18;
  *v19 = 0x200000028;
  *(v19 + 2) = -65536;
  v20 = v69;
  if (v69)
  {
    goto LABEL_33;
  }

LABEL_18:
  v21 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v22 = v71 + 12 * v21;
  *v22 = 0x400000028;
  *(v22 + 2) = -65536;
  v23 = v69;
  if (v69)
  {
    goto LABEL_34;
  }

LABEL_20:
  v24 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v25 = v71 + 12 * v24;
  *v25 = -4294967240;
  *(v25 + 2) = -65536;
  v26 = v69;
  if (!v69)
  {
LABEL_22:
    v27 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v28 = v71 + 12 * v27;
    *v28 = 0xFFFC00000031;
    *(v28 + 2) = -1;
    v29 = v69;
    if (!v69)
    {
      goto LABEL_24;
    }

LABEL_36:
    v69 = v29 - 1;
    goto LABEL_37;
  }

LABEL_35:
  v29 = v26 - 1;
  v69 = v29;
  if (v29)
  {
    goto LABEL_36;
  }

LABEL_24:
  v30 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v31 = v71 + 12 * v30;
  *v31 = 0x300000031;
  *(v31 + 2) = -1;
LABEL_37:
  v67[0] = *(a2 + 592);
  if (v67[0] & 1) != 0 && (v67[1] = *(a2 + 593), (sub_238DE36D8(v67, a2)->super.isa) || (v73[0] = *(a2 + 594), (v73[0]) && (v73[1] = *(a2 + 595), (sub_238DE36D8(v73, a2)->super.isa))
  {
    if (v69)
    {
      v35 = --v69;
      goto LABEL_47;
    }

    v36 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v37 = v71 + 12 * v36;
    *v37 = 0x200000031;
    *(v37 + 2) = -1;
  }

  v35 = v69;
LABEL_47:
  if (*(a2 + 669) == 1)
  {
    if (v35)
    {
      v69 = --v35;
    }

    else
    {
      v38 = v70;
      if (v70 > 8)
      {
        goto LABEL_72;
      }

      ++v70;
      v39 = v71 + 12 * v38;
      *v39 = 0x10000003ELL;
      *(v39 + 2) = -65536;
      v35 = v69;
    }
  }

  if (!*(a2 + 668))
  {
LABEL_55:
    if (v35)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  if (v35)
  {
    v69 = --v35;
    goto LABEL_55;
  }

  v44 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v45 = v71 + 12 * v44;
  *v45 = 0xFFFC00000046;
  *(v45 + 2) = -65536;
  v35 = v69;
  if (v69)
  {
LABEL_56:
    v40 = v35 - 1;
    v69 = v40;
    if (v40)
    {
      goto LABEL_57;
    }

LABEL_65:
    v48 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v49 = v71 + 12 * v48;
    *v49 = 0x700000046;
    *(v49 + 2) = -65536;
    v41 = v69;
    if (v69)
    {
      goto LABEL_58;
    }

    goto LABEL_67;
  }

LABEL_63:
  v46 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v47 = v71 + 12 * v46;
  *v47 = 0x600000046;
  *(v47 + 2) = -65536;
  v40 = v69;
  if (!v69)
  {
    goto LABEL_65;
  }

LABEL_57:
  v41 = v40 - 1;
  v69 = v41;
  if (v41)
  {
LABEL_58:
    v42 = v41 - 1;
    v69 = v42;
    if (v42)
    {
      goto LABEL_59;
    }

LABEL_69:
    v52 = v70;
    if (v70 <= 8)
    {
      ++v70;
      v53 = v71 + 12 * v52;
      *v53 = 0x100000046;
      *(v53 + 2) = -65536;
      v43 = v69;
      if (v69)
      {
        goto LABEL_60;
      }

      goto LABEL_71;
    }

LABEL_72:
    v70 = 10;
    v55 = 9;
LABEL_73:
    v56 = *(p_newVersion + 273);
    if (v56 >= 0xF6)
    {
      sub_239539304();
    }

    v57 = v56 + 9;
    goto LABEL_75;
  }

LABEL_67:
  v50 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v51 = v71 + 12 * v50;
  *v51 = 70;
  *(v51 + 2) = -65536;
  v42 = v69;
  if (!v69)
  {
    goto LABEL_69;
  }

LABEL_59:
  v43 = v42 - 1;
  v69 = v43;
  if (v43)
  {
LABEL_60:
    v69 = v43 - 1;
    goto LABEL_79;
  }

LABEL_71:
  v54 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v59 = v71 + 12 * v54;
  *v59 = 0x200000046;
  *(v59 + 2) = -65536;
LABEL_79:
  v60 = *(a2 + 680);
  if (v60)
  {
    v61 = *(a2 + 672);
    v62 = 12 * v60;
    do
    {
      if (v69)
      {
        --v69;
      }

      else
      {
        v63 = v70;
        if (v70 > 8)
        {
          goto LABEL_72;
        }

        v64 = *(v61 + 2);
        v65 = *v61;
        ++v70;
        v66 = v71 + 12 * v63;
        *v66 = v65;
        *(v66 + 2) = v64;
      }

      v61 = (v61 + 12);
      v62 -= 12;
    }

    while (v62);
  }

  if (!v70)
  {
    sub_23953926C();
  }

  if (v70 >= 9)
  {
    v55 = 9;
  }

  else
  {
    v55 = v70;
  }

  if (v70 >= 0xA)
  {
    goto LABEL_73;
  }

  v57 = -1;
LABEL_75:
  *(p_newVersion + 273) = v57;
  timedInvokeTimeoutMs = a1[108]._timedInvokeTimeoutMs;
  v67[0] = *(p_newVersion + 264);
  if (v67[0] == 1)
  {
    isa_high = HIDWORD(a1[109].super.isa);
  }

  sub_239505188(a1, timedInvokeTimeoutMs, v67, v71, v55);
}

void sub_239504EC4(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  *v25 = -1;
  *&v25[10] = 0;
  *&v25[2] = 0;
  *&v25[18] = 514;
  v25[20] = 0;
  *&v25[24] = 0;
  *&v25[28] = 257;
  *&v26 = 0;
  BYTE8(v26) = 1;
  LOWORD(v27) = 0;
  *(&v27 + 4) = 0;
  WORD6(v27) = 0;
  LODWORD(v28) = 0;
  *(&v28 + 1) = 0;
  v29 = 0;
  *&v24 = *(a1 + 4320);
  *(&v24 + 1) = 0xFFFF0000FFFFLL;
  v4 = sub_2395054F0(a1, &v24);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_239505A24(a1, &v24);
  if (v8 == 0 && v9 != 0)
  {
    v6 = v10;
    v7 = v9;
    v8 = v9;
  }

  v11 = sub_239505C28(a1, &v24);
  if (v8 == 0 && v11 != 0)
  {
    v6 = v12;
    v7 = v11;
    v8 = v11;
  }

  v13 = sub_2395060A0(a1, &v24);
  if (v8 == 0 && v13 != 0)
  {
    v6 = v14;
    v7 = v13;
    v8 = v13;
  }

  sub_239506224(a1, &v24);
  v15 = sub_239506770(a1, &v24);
  if (v8 == 0 && v15 != 0)
  {
    v6 = v16;
    v7 = v15;
    v8 = v15;
  }

  v17 = (*(*a1 + 112))(a1, &v24, a2);
  v19 = v8 == 0;
  v20 = v17 != 0;
  if (v19 && v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v6;
  }

  if (v19 && v20)
  {
    v7 = v17;
    v22 = v17;
  }

  else
  {
    v22 = v8;
  }

  v23 = *(a1 + 4336);
  if (v23 && !v22)
  {
    (*(*v23 + 72))(v23, &v24);
  }

  v32[2] = v26;
  v32[3] = v27;
  v32[4] = v28;
  v31 = v24;
  v32[0] = *v25;
  v30 = 5;
  v33 = v29;
  v32[1] = *&v25[16];
  v34 = 0;
  sub_2394FDB60(a1, v7 & 0xFFFFFFFF00000000 | v22, v21, &v30);
  if (v30 == 4)
  {
    *&v31 = &unk_284BBE888;
    sub_239495880(v32 + 8);
  }

  sub_2394FE5E8((a1 + 4320), 0);
}

uint64_t sub_239505188(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4328))
  {
    sub_23953939C();
  }

  v10 = sub_2394C7C20();
  (*(*a2 + 48))(buf, a2);
  v12 = sub_238DE36B8(buf, v11);
  v25[1] = 0;
  v25[2] = 0;
  v25[0] = &unk_284BBBF18;
  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 1;
  v34 = 0;
  sub_239495C6C(v25, v12);
  if (buf[0] == 1)
  {
    (*(**&v38[4] + 32))(*&v38[4]);
  }

  LOBYTE(v33) = 0;
  if (*a3 == 1)
  {
    LODWORD(v31) = *sub_2393E1D9C(a3, v13);
  }

  *&v28 = a4;
  *(&v28 + 1) = a5;
  v14 = *(a1 + 4320);
  *(a1 + 4320) = 0;
  v15 = (*(*a2 + 40))(a2);
  v16 = sub_2393D52C4(0x160uLL);
  v17 = v16;
  if (v16)
  {
    sub_2394D76F4(v16, v10, v15, (v14 + 22), 0);
  }

  v19 = sub_2394D80C8(v17, v25);
  if (v19)
  {
    v20 = v18;
    v21 = sub_2393D9044(9u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_2393C9138();
      *buf = 136315138;
      *v38 = v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to send read request: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v23 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to send read request: %s", v23);
    }

    v35[0] = -1;
    v36[80] = 0;
    sub_2394FDB60(a1, v19, v20, v35);
    if (v35[0] == 4)
    {
      v35[1] = &unk_284BBE888;
      sub_239495880(v36);
    }

    if (v17)
    {
      (**v17)(v17);
      j__free(v17);
    }

    if (v14)
    {
      (**v14)(v14);
      j__free(v14);
    }
  }

  else
  {
    sub_2394FE5E8((a1 + 4320), v14);
    sub_2394FE578((a1 + 4328), v17);
  }

  return sub_239495880(v25);
}

unint64_t sub_2395054F0(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v4 = *(a1 + 4320);
  *buf = 0;
  v35 = 0x100000030;
  buf[2] = 0;
  v5 = sub_2395146E0(v4, buf, &v33);
  if (v5)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v35 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to read BasicCommissioningInfo: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read BasicCommissioningInfo: %s", v8);
    }
  }

  else
  {
    v5 = 0;
    *(a2 + 32) = v33;
  }

  v9 = *(a1 + 4320);
  *buf = 0;
  v35 = 0x200000030;
  buf[2] = 0;
  v10 = sub_239514770(v9, buf, (a2 + 34));
  if (v10)
  {
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *buf = 136315138;
      v35 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to read RegulatoryConfig: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read RegulatoryConfig: %s", v13);
    }

    v5 = v10;
  }

  v14 = *(a1 + 4320);
  *buf = 0;
  v35 = 0x300000030;
  buf[2] = 0;
  v15 = sub_239514800(v14, buf, (a2 + 35));
  if (v15)
  {
    v16 = sub_2393D9044(9u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_2393C9138();
      *buf = 136315138;
      v35 = v17;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to read LocationCapability: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v18 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read LocationCapability: %s", v18);
    }

    v5 = v15;
  }

  v19 = *(a1 + 4320);
  *buf = 0;
  v35 = 48;
  buf[2] = 0;
  v20 = sub_239514890(v19, buf, (a2 + 24));
  if (v20)
  {
    v21 = sub_2393D9044(9u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_2393C9138();
      *buf = 136315138;
      v35 = v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to read Breadcrumb: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v23 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read Breadcrumb: %s", v23);
    }

    v5 = v20;
  }

  v24 = *(a1 + 4320);
  *buf = 0;
  v35 = 0x400000030;
  buf[2] = 0;
  if (sub_239514920(v24, buf, (a2 + 56)))
  {
    v25 = sub_2393D9044(9u);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = sub_2393C9138();
      *buf = 136315138;
      v35 = v26;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Ignoring failure to read SupportsConcurrentConnection: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v27 = sub_2393C9138();
      sub_2393D5320(9, 1, "Ignoring failure to read SupportsConcurrentConnection: %s", v27);
    }

    *(a2 + 56) = 1;
  }

  v28 = *(a1 + 4320);
  *buf = 0;
  v35 = 0xC00000030;
  buf[2] = 0;
  if (sub_2395149B0(v28, buf, (a2 + 36)))
  {
    v29 = sub_2393D9044(9u);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = sub_2393C9138();
      *buf = 136315138;
      v35 = v30;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Ignoring failure to read IsCommissioningWithoutPower: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v31 = sub_2393C9138();
      sub_2393D5320(9, 1, "Ignoring failure to read IsCommissioningWithoutPower: %s", v31);
    }

    *(a2 + 36) = 0;
  }

  return v5;
}

unint64_t sub_239505A24(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4320);
  *buf = 0;
  v16 = 0x200000028;
  buf[2] = 0;
  v5 = sub_239514A40(v4, buf, (a2 + 20));
  if (v5)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to read VendorID: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read VendorID: %s", v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *(a1 + 4320);
  *buf = 0;
  v16 = 0x400000028;
  buf[2] = 0;
  v10 = sub_239514ADC(v9, buf, (a2 + 22));
  if (v10)
  {
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = sub_2393C9138();
      *buf = 136315138;
      v16 = v12;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to read ProductID: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v13 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read ProductID: %s", v13);
    }

    return v10;
  }

  return v5;
}

unint64_t sub_239505C28(uint64_t a1, _WORD *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4320);
  v5 = *(v4 + 16);
  v32 = (v4 + 24);
  if (v5 != (v4 + 24))
  {
    do
    {
      v6 = v5[5];
      if (v6 != v5 + 6)
      {
        do
        {
          if (*(v6 + 8) == 49)
          {
            v7 = v6[5];
            if (v7 != v6 + 6)
            {
              do
              {
                v8 = *(v7 + 8);
                *v34 = *(v5 + 16);
                LODWORD(v35) = 49;
                HIDWORD(v35) = v8;
                v34[2] = 0;
                if (v8 == 65532)
                {
                  v33 = 0;
                  if (!sub_238DB4ADC(*(a1 + 4320), v34, &v33))
                  {
                    if (v33)
                    {
                      v10 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has WiFi. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9, 2, "NetworkCommissioning Features: has WiFi. endpointid = %u", *v34);
                      }

                      a2[4] = *v34;
                    }

                    else if ((v33 & 2) != 0)
                    {
                      v11 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has Thread. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9, 2, "NetworkCommissioning Features: has Thread. endpointid = %u", *v34);
                      }

                      a2[6] = *v34;
                    }

                    else if ((v33 & 4) != 0)
                    {
                      v9 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has Ethernet. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9, 2, "NetworkCommissioning Features: has Ethernet. endpointid = %u", *v34);
                      }

                      a2[8] = *v34;
                    }
                  }
                }

                v12 = v7[1];
                if (v12)
                {
                  do
                  {
                    v13 = v12;
                    v12 = *v12;
                  }

                  while (v12);
                }

                else
                {
                  do
                  {
                    v13 = v7[2];
                    v14 = *v13 == v7;
                    v7 = v13;
                  }

                  while (!v14);
                }

                v7 = v13;
              }

              while (v13 != v6 + 6);
            }
          }

          v15 = v6[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v6[2];
              v14 = *v16 == v6;
              v6 = v16;
            }

            while (!v14);
          }

          v6 = v16;
        }

        while (v16 != v5 + 6);
      }

      v17 = v5[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v5[2];
          v14 = *v18 == v5;
          v5 = v18;
        }

        while (!v14);
      }

      v5 = v18;
    }

    while (v18 != v32);
  }

  v20 = a2[6];
  v19 = a2 + 6;
  v21 = v19 - 2;
  if (v20 == -1)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v22 = sub_239506C4C(a1, v19, "Thread");
    if (v22)
    {
      v23 = HIDWORD(v22);
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  if (*v21 != -1)
  {
    v25 = sub_239506C4C(a1, v21, "Wi-Fi");
    v26 = HIDWORD(v25);
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      LODWORD(v26) = v23;
      v27 = v24;
    }

    v23 = v24 ? v23 : v26;
    if (!v24)
    {
      v24 = v27;
    }
  }

  if (v24)
  {
    v28 = sub_2393D9044(9u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = sub_2393C9138();
      *v34 = 136315138;
      v35 = v29;
      _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Failed to parse Network Commissioning information: %s", v34, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v30 = sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to parse Network Commissioning information: %s", v30);
    }
  }

  return v24 | (v23 << 32);
}

uint64_t sub_2395060A0(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = *(a1 + 4320);
  v11 = 0;
  *v13 = 0xFFFC00000038;
  v12 = 0;
  if (sub_239514C8C(v4, &v11, &v16))
  {
    *(a2 + 40) = 0;
  }

  else
  {
    *(a2 + 40) = 1;
    v5 = v16;
    *(a2 + 41) = v16 & 1;
    *(a2 + 42) = (v5 & 2) != 0;
    *(a2 + 43) = (v5 & 8) != 0;
    if (v5)
    {
      v6 = *(a1 + 4320);
      v11 = 0;
      *v13 = 0xA00000038;
      v12 = 0;
      if (sub_239514D20(v6, &v11, (a2 + 44)))
      {
        *(a2 + 41) = 0;
      }

      v7 = *(a1 + 4320);
      v11 = 0;
      *v13 = 0xB00000038;
      v12 = 0;
      if (sub_239514DB0(v7, &v11, (a2 + 45)))
      {
        *(a2 + 41) = 0;
      }
    }

    if (*(a2 + 42) == 1)
    {
      LOBYTE(v11) = 0;
      v14 = 0;
      v8 = *(a1 + 4320);
      v17 = 0;
      v19 = 0x400000038;
      v18 = 0;
      if (!sub_239514E40(v8, &v17, &v11) && v14 == 1 && *&v13[4])
      {
        *(a2 + 42) = 0;
      }
    }

    if (*(a2 + 43) == 1)
    {
      LOBYTE(v11) = 0;
      v15 = 0;
      v9 = *(a1 + 4320);
      v17 = 0;
      v19 = 0x300000038;
      v18 = 0;
      if (!sub_239514ED0(v9, &v17, &v11) && (v15 & 1) != 0)
      {
        *(a2 + 43) = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_239506224(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4320);
  v4 = *(v3 + 16);
  v25 = (v3 + 24);
  if (v4 != (v3 + 24))
  {
    do
    {
      v5 = v4[5];
      if (v5 != v4 + 6)
      {
        do
        {
          if (*(v5 + 8) == 62)
          {
            v6 = v5[5];
            v7 = v5 + 6;
            if (v6 != v5 + 6)
            {
              do
              {
                v8 = *(v6 + 8);
                v27 = *(v4 + 16);
                v29 = 62;
                v30 = v8;
                v28 = 0;
                if (v8 == 1)
                {
                  sub_2393C5AAC(v39);
                  sub_2393C5ADC(v39, 0, 0);
                  v39[72] = 0;
                  if (sub_239514F60(*(a1 + 4320), &v27, v39))
                  {
                    goto LABEL_58;
                  }

                  sub_2392C7A68(v39, v33);
                  if (sub_2392C7AC8(v33))
                  {
                    v9 = sub_2393D9044(9u);
                    do
                    {
                      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf) = 67110144;
                        HIDWORD(buf) = v36;
                        *v42 = 1024;
                        *&v42[2] = HIDWORD(v37);
                        *&v42[6] = 1024;
                        *&v42[8] = v37;
                        *&v42[12] = 1024;
                        *&v42[14] = HIDWORD(v38);
                        *&v42[18] = 1024;
                        *&v42[20] = v38;
                        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - fabric.vendorId=0x%04X fabric.fabricId=0x%08X%08X fabric.nodeId=0x%08X%08X", &buf, 0x20u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9, 2, "DeviceCommissioner::OnDone - fabric.vendorId=0x%04X fabric.fabricId=0x%08X%08X fabric.nodeId=0x%08X%08X", v36, HIDWORD(v37), v37, HIDWORD(v38), v38);
                      }

                      v10 = sub_239293160(a1);
                      if (v10)
                      {
                        v11 = *(v10 + 8);
                      }

                      else
                      {
                        v11 = 0;
                      }

                      if (v11 == v37)
                      {
                        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(buf) = 0;
                          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - found a matching fabric id", &buf, 2u);
                        }

                        if (sub_2393D5398(2u))
                        {
                          sub_2393D5320(9, 2, "DeviceCommissioner::OnDone - found a matching fabric id");
                        }

                        v12 = v35;
                        if (v35 == 65)
                        {
                          sub_238DC45B4(&v32, v34);
                          buf = &unk_284BB9138;
                          *v42 = *v32;
                          v14 = *(v32 + 32);
                          v13 = *(v32 + 48);
                          v15 = *(v32 + 64);
                          *&v42[16] = *(v32 + 16);
                          v45 = v15;
                          v44 = v13;
                          v43 = v14;
                          v40[0] = &unk_284BB9138;
                          if (sub_23950EDF0(a1, v40))
                          {
                            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                            {
                              *v31 = 0;
                              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "DeviceCommissioner::OnDone - error reading commissioner root public key", v31, 2u);
                            }

                            if (sub_2393D5398(1u))
                            {
                              sub_2393D5320(9, 1, "DeviceCommissioner::OnDone - error reading commissioner root public key");
                            }
                          }

                          else if (sub_23928F6C0(v40, &buf))
                          {
                            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                            {
                              *v31 = 0;
                              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - fabric root keys match", v31, 2u);
                            }

                            if (sub_2393D5398(2u))
                            {
                              sub_2393D5320(9, 2, "DeviceCommissioner::OnDone - fabric root keys match");
                            }

                            *(a2 + 48) = v38;
                          }
                        }

                        else
                        {
                          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
                          {
                            LODWORD(buf) = 67109376;
                            HIDWORD(buf) = v12;
                            *v42 = 1024;
                            *&v42[2] = 65;
                            _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "DeviceCommissioner::OnDone - fabric root key size mismatch %u != %u", &buf, 0xEu);
                          }

                          if (sub_2393D5398(1u))
                          {
                            sub_2393D5320(9, 1, "DeviceCommissioner::OnDone - fabric root key size mismatch %u != %u");
                          }
                        }
                      }
                    }

                    while (sub_2392C7AC8(v33));
                  }

                  v7 = v5 + 6;
                }

                v16 = v6[1];
                if (v16)
                {
                  do
                  {
                    v17 = v16;
                    v16 = *v16;
                  }

                  while (v16);
                }

                else
                {
                  do
                  {
                    v17 = v6[2];
                    v18 = *v17 == v6;
                    v6 = v17;
                  }

                  while (!v18);
                }

                v6 = v17;
              }

              while (v17 != v7);
            }
          }

          v19 = v5[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v5[2];
              v18 = *v20 == v5;
              v5 = v20;
            }

            while (!v18);
          }

          v5 = v20;
        }

        while (v20 != v4 + 6);
      }

      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v18 = *v22 == v4;
          v4 = v22;
        }

        while (!v18);
      }

      v4 = v22;
    }

    while (v22 != v25);
  }

LABEL_58:
  v23 = *(a1 + 4336);
  if (v23)
  {
    (*(*v23 + 80))(v23, *(a2 + 48));
  }

  return 0;
}

unint64_t sub_239506770(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v4 = *(a1 + 4320);
  *buf = 0;
  v29 = 0xFFFC00000046;
  buf[2] = 0;
  v5 = sub_239514FF0(v4, buf, &v27);
  LODWORD(v6) = v5;
  switch(v5)
  {
    case 0:
      v8 = v27;
      v9 = (v27 & 4) != 0;
      *(a2 + 80) = 0;
      *(a2 + 64) = v9;
      *(a2 + 65) = v8 & 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      if ((v8 & 2) != 0)
      {
        v14 = *(a1 + 4320);
        *buf = 0;
        v29 = 0x600000046;
        buf[2] = 0;
        v6 = sub_239515084(v14, buf, (a2 + 80));
        if (v6)
        {
          v15 = sub_2393D9044(9u);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "IcdManagement.UserActiveModeTriggerHint expected, but failed to read.", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9, 1, "IcdManagement.UserActiveModeTriggerHint expected, but failed to read.");
          }

          goto LABEL_40;
        }

        if ((*(a2 + 80) & 0x1AEE4) != 0)
        {
          v19 = *(a1 + 4320);
          *buf = 0;
          v29 = 0x700000046;
          buf[2] = 0;
          v6 = sub_239515114(v19, buf, (a2 + 88));
          if (v6)
          {
            v20 = sub_2393D9044(9u);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "IcdManagement.UserActiveModeTriggerInstruction expected for given active mode trigger hint, but failed to read.", buf, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(9, 1, "IcdManagement.UserActiveModeTriggerInstruction expected for given active mode trigger hint, but failed to read.");
            }

            goto LABEL_40;
          }
        }
      }

      v10 = *(a1 + 4320);
      *buf = 0;
      v29 = 70;
      buf[2] = 0;
      v6 = sub_2395151A4(v10, buf, (a2 + 68));
      if (v6)
      {
        v11 = sub_2393D9044(9u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = sub_2393C9138();
          *buf = 136315138;
          v29 = v12;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "IcdManagement.IdleModeDuration expected, but failed to read: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9, 1, "IcdManagement.IdleModeDuration expected, but failed to read: %s");
        }
      }

      else
      {
        v16 = *(a1 + 4320);
        *buf = 0;
        v29 = 0x100000046;
        buf[2] = 0;
        v6 = sub_239515234(v16, buf, (a2 + 72));
        if (v6)
        {
          v17 = sub_2393D9044(9u);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_2393C9138();
            *buf = 136315138;
            v29 = v18;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "IcdManagement.ActiveModeDuration expected, but failed to read: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9, 1, "IcdManagement.ActiveModeDuration expected, but failed to read: %s");
          }
        }

        else
        {
          v21 = *(a1 + 4320);
          *buf = 0;
          v29 = 0x200000046;
          buf[2] = 0;
          v6 = sub_2395152C4(v21, buf, (a2 + 76));
          if (v6)
          {
            v22 = sub_2393D9044(9u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = sub_2393C9138();
              *buf = 136315138;
              v29 = v23;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "IcdManagement.ActiveModeThreshold expected, but failed to read: %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(9, 1, "IcdManagement.ActiveModeThreshold expected, but failed to read: %s");
            }
          }
        }
      }

LABEL_40:
      v13 = v6 & 0xFFFFFFFF00000000;
      return v13 | v6;
    case 0xCA:
      v25 = 0;
      v26 = 0;
      v7 = *(a1 + 4320);
      *buf = 0;
      v29 = 0xFFFC00000046;
      buf[2] = 0;
      v5 = sub_2393C1B24(v7, buf, &v25);
      if (v5)
      {
        LODWORD(v6) = v5;
      }

      else if (v25 == 195)
      {
        LODWORD(v6) = 0;
        *(a2 + 64) = 0;
      }

      else
      {
        v5 = sub_2393DD584(&v25);
        LODWORD(v6) = v5;
      }

      break;
    case 0x10:
      *(a2 + 64) = 0;
LABEL_15:
      LODWORD(v6) = 0;
      v13 = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 68) = 0;
      *(a2 + 72) = 0;
      *(a2 + 76) = 0;
      return v13 | v6;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v13 = v5 & 0xFFFFFFFF00000000;
  return v13 | v6;
}

unint64_t sub_239506C4C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4320);
  *buf = *a2;
  v19 = 0x300000031;
  buf[2] = 0;
  v7 = sub_239514B6C(v6, buf, a2 + 2);
  if (v7)
  {
    v8 = sub_2393D9044(9u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = sub_2393C9138();
      *buf = 136315650;
      v19 = a3;
      v20 = 1024;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to read %s ConnectMaxTimeSeconds (endpoint %u): %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read %s ConnectMaxTimeSeconds (endpoint %u): %s");
    }
  }

  else
  {
    v13 = *(a1 + 4320);
    *buf = *a2;
    v19 = 0x200000031;
    buf[2] = 0;
    v14 = sub_239514BFC(v13, buf, a2 + 3);
    v7 = v14;
    if (!v14)
    {
      v11 = 0;
      return v11 | v7;
    }

    if (v14 == 16)
    {
      LODWORD(v7) = 0;
      v11 = 0;
      *(a2 + 3) = 0;
      return v11 | v7;
    }

    v15 = sub_2393D9044(9u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v17 = sub_2393C9138();
      *buf = 136315650;
      v19 = a3;
      v20 = 1024;
      v21 = v16;
      v22 = 2080;
      v23 = v17;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed to read %s ScanMaxTimeSeconds (endpoint: %u): %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9, 1, "Failed to read %s ScanMaxTimeSeconds (endpoint: %u): %s");
    }
  }

  v11 = v7 & 0xFFFFFFFF00000000;
  return v11 | v7;
}

void sub_239506EC0(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ArmFailSafe response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received ArmFailSafe response errorCode=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 7;
    v9 = 7;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB48000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_239507084(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received SetRegulatoryConfig response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received SetRegulatoryConfig response errorCode=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 7;
    v9 = 7;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB59000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_239507248(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received SetTCAcknowledgements response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received SetTCAcknowledgements response errorCode=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 7;
    v9 = 7;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB69000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_23950740C(uint64_t a1, char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = 9;
  LOBYTE(v4) = v2;
  v5[80] = 0;
  sub_2394FDB60(a1, 0, 0, &v3);
  if (v3 == 4)
  {
    v4 = &unk_284BBE888;
    sub_239495880(v5);
  }
}

void sub_2395074B8(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[0] = -1;
  v2[80] = 0;
  sub_2394FDB60(a1, 0, 0, v1);
  if (v1[0] == 4)
  {
    v1[1] = &unk_284BBE888;
    sub_239495880(v2);
  }
}

uint64_t sub_23950755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received ScanNetworks failure response %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = sub_2393C9138();
    sub_2393D5320(9, 2, "Received ScanNetworks failure response %s", v7);
  }

  v9[0] = -1;
  v10[80] = 0;
  sub_2394FDB60(a1, 0, 0, v9);
  if (v9[0] == 4)
  {
    v9[1] = &unk_284BBE888;
    sub_239495880(v10);
  }

  result = *(a1 + 4336);
  if (result)
  {
    return (*(*result + 96))(result, a2, a3);
  }

  return result;
}

uint64_t sub_2395076DC(uint64_t a1, unsigned __int8 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    if (a2[8] == 1)
    {
      v7 = *sub_238DE36B8(a2 + 8, v5);
      v9 = sub_238DE36B8(a2 + 8, v8);
      sub_23950797C(__p, v7, *(v9 + 1));
      if (v19 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 67109378;
      v23 = v6;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ScanNetwork response, networkingStatus=%u debugText=%s", buf, 0x12u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      v23 = v6;
      v24 = 2080;
      v25 = "none provided";
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ScanNetwork response, networkingStatus=%u debugText=%s", buf, 0x12u);
    }
  }

  if (sub_2393D5398(2u))
  {
    v12 = *a2;
    if (a2[8] == 1)
    {
      v13 = *sub_238DE36B8(a2 + 8, v11);
      v15 = sub_238DE36B8(a2 + 8, v14);
      sub_23950797C(__p, v13, *(v15 + 1));
      if (v19 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      sub_2393D5320(9, 2, "Received ScanNetwork response, networkingStatus=%u debugText=%s", v12, v16);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      sub_2393D5320(9, 2, "Received ScanNetwork response, networkingStatus=%u debugText=%s", *a2, "none provided");
    }
  }

  v20[0] = -1;
  v21[80] = 0;
  sub_2394FDB60(a1, 0, 0, v20);
  if (v20[0] == 4)
  {
    v20[1] = &unk_284BBE888;
    sub_239495880(v21);
  }

  result = *(a1 + 4336);
  if (result)
  {
    return (*(*result + 88))(result, a2);
  }

  return result;
}

void *sub_23950797C(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_238EAEDBC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

uint64_t sub_239507A2C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4368) == 35)
  {
    v4[0] = -1;
    v5[80] = 0;
    sub_2394FDB60(a1, 0, 0, v4);
    if (v4[0] == 4)
    {
      v4[1] = &unk_284BBE888;
      sub_239495880(v5);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = 0xBA900000000;
    v2 = 3;
  }

  return v2 | v1;
}

uint64_t sub_239507B04(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4368) == 21)
  {
    v4[0] = -1;
    v5[80] = 0;
    sub_2394FDB60(a1, 0, 0, v4);
    if (v4[0] == 4)
    {
      v4[1] = &unk_284BBE888;
      sub_239495880(v5);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = 0xBB300000000;
    v2 = 3;
  }

  return v2 | v1;
}

void sub_239507BDC(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received NetworkConfig response, networkingStatus=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received NetworkConfig response, networkingStatus=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 8;
    v9 = 8;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBC4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_239507DA0(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ConnectNetwork response, networkingStatus=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received ConnectNetwork response, networkingStatus=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 8;
    v9 = 8;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBD4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_239507F64(uint64_t a1, unsigned __int8 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v16[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received CommissioningComplete response, errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9, 2, "Received CommissioningComplete response, errorCode=%u", *a2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v15) = *a2;
    v14 = 7;
    v9 = 7;
    LOBYTE(v10) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBE4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = -1;
  }

  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v9);
  if (v9 == 4)
  {
    v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  if (v14 == 4)
  {
    v15 = &unk_284BBE888;
    sub_239495880(v16);
  }
}

void sub_239508128()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v405 = *MEMORY[0x277D85DE8];
  *buf = 2;
  *&buf[8] = "core_dcm_commission_stage";
  v14 = (v0 + 4096);
  *&buf[16] = v9;
  buf[20] = 2;
  sub_23948BD20(buf);
  v15 = sub_2394F2CAC(v10);
  *buf = 0;
  *&buf[8] = v15;
  buf[20] = 0;
  sub_23948BD20(buf);
  v16 = *(v8 + 552);
  v17 = sub_2393D9044(9u);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = sub_2394F2C88(v10);
      v20 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Performing next commissioning step '%s' with completion status = '%s'", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(v10);
      sub_2393C9138();
      sub_2393D5320(9, 2, "Performing next commissioning step '%s' with completion status = '%s'");
    }
  }

  else
  {
    if (v18)
    {
      v22 = sub_2394F2C88(v10);
      *buf = 136315138;
      *&buf[4] = v22;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Performing next commissioning step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(v10);
      sub_2393D5320(9, 2, "Performing next commissioning step '%s'");
    }
  }

  v23 = *v2;
  v14[264] = v23;
  if (v23 == 1)
  {
    *(v13 + 4364) = *(v2 + 1);
  }

  v14[272] = v10;
  *(v13 + 9144) = v6;
  *(v13 + 4344) = v12;
  v24 = v10;
  switch(v10)
  {
    case 0u:
      v14[272] = 1;
      return;
    case 2u:
      if (v4)
      {
        sub_239539434();
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending read requests for commissioning information", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sending read requests for commissioning information");
      }

      v121 = sub_2393D52C4(0x100uLL);
      v122 = v121;
      if (v121)
      {
        buf[0] = 0;
        sub_238EF73E4(v121, v13 + 4304, buf);
      }

      sub_2394FE5E8((v13 + 4320), v122);
      v14[273] = 0;
      sub_239504810(v13, v8);
      return;
    case 3u:
      if (v4)
      {
        sub_2395394CC();
      }

      *(v12 + 8) = 0;
      v387[0] = *v8;
      if (v387[0] == 1)
      {
        *&v387[2] = *(v8 + 2);
        v123 = sub_238E0A934(v387, v21);
      }

      else
      {
        v123 = &word_2395D8998;
      }

      isa_low = LOWORD(v123->super.isa);
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      if (!sub_239500688(v13, v12, 3u, isa_low, buf, sub_239506EC0, sub_2395036B8, 0))
      {
        sub_239539564();
      }

      return;
    case 4u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Regulatory Config", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Setting Regulatory Config");
      }

      buf[0] = *(v8 + 546);
      if (buf[0])
      {
        buf[1] = *(v8 + 547);
        v157 = *sub_23949B670(buf, v155);
        if (v157 == 2)
        {
          if (*(v8 + 8) == 1)
          {
            buf[0] = 1;
            buf[1] = *(v8 + 9);
            v157 = *sub_23949B670(buf, v156);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v157;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting regulatory config to %u from commissioner override", buf, 8u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(9, 2, "Setting regulatory config to %u from commissioner override");
            }
          }

          else if (*(v8 + 544) == 1)
          {
            buf[0] = 1;
            buf[1] = *(v8 + 545);
            v157 = *sub_23949B670(buf, v156);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v157;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "No regulatory config supplied by controller, leaving as device default (%u)", buf, 8u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(9, 2, "No regulatory config supplied by controller, leaving as device default (%u)", v157);
            }
          }

          else
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "No overrride or device regulatory config supplied, setting to outdoor", buf, 2u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(9, 2, "No overrride or device regulatory config supplied, setting to outdoor");
            }

            LOBYTE(v157) = 1;
          }

          goto LABEL_488;
        }
      }

      else
      {
        LOBYTE(v157) = 1;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Device does not support configurable regulatory location", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Device does not support configurable regulatory location");
      }

LABEL_488:
      v387[0] = *(v8 + 216);
      if (v387[0] == 1)
      {
        *&v387[8] = *(v8 + 224);
        v226 = sub_238DE36B8(v387, v158);
        v227 = *v226;
        v228 = *(v226 + 1);
      }

      else
      {
        v227 = "XX";
        v228 = 2;
      }

      buf[0] = v157;
      *&buf[8] = v227;
      *&buf[16] = v228;
      *&buf[24] = v24;
      v368[0] = *v2;
      if (v368[0] == 1)
      {
        *&v368[4] = *(v2 + 1);
      }

      v230 = sub_23950D6F8(v13, v12, buf, sub_239507084, sub_2395036B8, v4, v368, 0);
      if (v230)
      {
        v231 = v229;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v232 = sub_2393C9138();
          *v368 = 136315138;
          *&v368[4] = v232;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetRegulatoryConfig command: %s", v368, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v233 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send SetRegulatoryConfig command: %s", v233);
        }

        v383[0] = -1;
        v384 = 0;
        v28 = v383;
        sub_2394FDB60(v13, v230, v231, v383);
        if (v383[0] == 4)
        {
          v383[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 5u:
      buf[9] = 0;
      if ((*(*off_27DF765E8 + 5))(off_27DF765E8, v368) || *v368 <= 0x35D013B37E000uLL)
      {
        v403[0] = -1;
        v404 = 0;
        v28 = v403;
        sub_2394FDB60(v13, 0, 0, v403);
        if (v403[0] == 4)
        {
          v403[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      else
      {
        *buf = *v368 - 946684800000000;
        buf[8] = 2;
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v236 = sub_23950CD70(v13, v12, buf, sub_239503614, sub_2395074B8, v4, v387, 0);
        if (v236)
        {
          v237 = v235;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v238 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v238;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetUTCTime command: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v239 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SetUTCTime command: %s", v239);
          }

          v401[0] = -1;
          v402 = 0;
          v28 = v401;
          sub_2394FDB60(v13, v236, v237, v401);
          if (v401[0] == 4)
          {
            v401[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      return;
    case 6u:
      v148 = *(v8 + 16);
      if (v148)
      {
        *&v387[8] = 0;
        *v387 = 0;
        buf[0] = v148;
        *&buf[8] = *(v8 + 24);
        v149 = sub_2394EB70C(buf, v21);
        sub_238DB9BD8(v387, *v149, v149[1]);
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v151 = sub_23950CF58(v13, v12, v387, sub_23950740C, sub_2395036B8, v4, buf, 0);
        if (v151)
        {
          v152 = v150;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v153 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v153;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetTimeZone command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v154 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SetTimeZone command: %s", v154);
          }

          v397[0] = -1;
          v398 = 0;
          v28 = v397;
          sub_2394FDB60(v13, v151, v152, v397);
          if (v397[0] == 4)
          {
            v397[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureTimeZone stage called with no time zone data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "ConfigureTimeZone stage called with no time zone data");
        }

        v399[0] = -1;
        v400 = 0;
        v28 = v399;
        sub_2394FDB60(v13, 0xC830000002FLL, "src/controller/CHIPDeviceController.cpp", v399);
        if (v399[0] == 4)
        {
          v399[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 7u:
      v180 = *(v8 + 40);
      if (v180)
      {
        *&v387[8] = 0;
        *v387 = 0;
        buf[0] = v180;
        *&buf[8] = *(v8 + 48);
        v181 = sub_2394EB70C(buf, v21);
        sub_238DB9BD8(v387, *v181, v181[1]);
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v183 = sub_23950D140(v13, v12, v387, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v183)
        {
          v184 = v182;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v185 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v185;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetDSTOffset command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v186 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SetDSTOffset command: %s", v186);
          }

          v393[0] = -1;
          v394 = 0;
          v28 = v393;
          sub_2394FDB60(v13, v183, v184, v393);
          if (v393[0] == 4)
          {
            v393[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureDSTOffset stage called with no DST data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "ConfigureDSTOffset stage called with no DST data");
        }

        v395[0] = -1;
        v396 = 0;
        v28 = v395;
        sub_2394FDB60(v13, 0xC960000002FLL, "src/controller/CHIPDeviceController.cpp", v395);
        if (v395[0] == 4)
        {
          v395[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 8u:
      if (*(v8 + 64))
      {
        buf[0] = *(v8 + 64);
        *&buf[8] = *(v8 + 72);
        *&buf[24] = *(v8 + 88);
        v187 = sub_238DE36B8(buf, v21);
        v188 = v187[16];
        *v387 = *v187;
        v387[16] = v188;
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v190 = sub_23950D328(v13, v12, v387, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v190)
        {
          v191 = v189;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v192 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v192;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetDefaultNTP command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v193 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SetDefaultNTP command: %s", v193);
          }

          v389[0] = -1;
          v390 = 0;
          v28 = v389;
          sub_2394FDB60(v13, v190, v191, v389);
          if (v389[0] == 4)
          {
            v389[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureDefaultNTP stage called with no default NTP data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "ConfigureDefaultNTP stage called with no default NTP data");
        }

        v391[0] = -1;
        v392 = 0;
        v28 = v391;
        sub_2394FDB60(v13, 0xCA90000002FLL, "src/controller/CHIPDeviceController.cpp", v391);
        if (v391[0] == 4)
        {
          v391[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 9u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending request for PAI certificate", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sending request for PAI certificate");
      }

      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v64 = sub_2394FEC68(v13, v12, 2, buf);
      if (v64)
      {
        v65 = v63;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v66 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v66;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CertificateChainRequest command to get PAI: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v67 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send CertificateChainRequest command to get PAI: %s", v67);
        }

        v377[0] = -1;
        v378 = 0;
        v28 = v377;
        sub_2394FDB60(v13, v64, v65, v377);
        if (v377[0] == 4)
        {
          v377[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xAu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending request for DAC certificate", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sending request for DAC certificate");
      }

      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v195 = sub_2394FEC68(v13, v12, 1, buf);
      if (v195)
      {
        v196 = v194;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v197 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v197;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CertificateChainRequest command to get DAC: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v198 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send CertificateChainRequest command to get DAC: %s", v198);
        }

        v375[0] = -1;
        v376 = 0;
        v28 = v375;
        sub_2394FDB60(v13, v195, v196, v375);
        if (v375[0] == 4)
        {
          v375[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xBu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending Attestation Request to the device.", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Sending Attestation Request to the device.");
      }

      if (*(v8 + 152))
      {
        buf[0] = *(v8 + 152);
        *&buf[8] = *(v8 + 160);
        v74 = sub_238DE36B8(buf, v73);
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v76 = sub_2394FF4CC(v13, v12, v74, v387);
        if (v76)
        {
          v77 = v75;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v78 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v78;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AttestationRequest command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v79 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send AttestationRequest command: %s", v79);
          }

          v371[0] = -1;
          v372 = 0;
          v28 = v371;
          sub_2394FDB60(v13, v76, v77, v371);
          if (v371[0] == 4)
          {
            v371[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No attestation nonce found", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No attestation nonce found");
        }

        v373[0] = -1;
        v374 = 0;
        v28 = v373;
        sub_2394FDB60(v13, 0xD450000002FLL, "src/controller/CHIPDeviceController.cpp", v373);
        if (v373[0] == 4)
        {
          v373[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xCu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Verifying Device Attestation information received from the device", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Verifying Device Attestation information received from the device");
      }

      if (*(v8 + 424) == 1 && *(v8 + 448) == 1 && *(v8 + 152) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && *(v8 + 536) == 1 && (*(v8 + 540) & 1) != 0)
      {
        v387[0] = 1;
        *&v387[8] = *(v8 + 432);
        v276 = sub_238DE36B8(v387, v124);
        (*(*v12 + 48))(&v286, v12);
        v126 = sub_238DE36B8(&v286, v125);
        v128 = sub_239495304(*v126);
        v368[0] = *(v8 + 448);
        if (v368[0] == 1)
        {
          *&v368[8] = *(v8 + 456);
        }

        v130 = sub_238DE36B8(v368, v127);
        LOBYTE(v366) = *(v8 + 472);
        if (v366 == 1)
        {
          *&v367[4] = *(v8 + 480);
        }

        v132 = sub_238DE36B8(&v366, v129);
        v283[0] = *(v8 + 496);
        if (v283[0] == 1)
        {
          v285 = *(v8 + 504);
        }

        v134 = sub_238DE36B8(v283, v131);
        v281[0] = *(v8 + 152);
        if (v281[0] == 1)
        {
          v282 = *(v8 + 160);
        }

        v135 = v128 + 216;
        v137 = sub_238DE36B8(v281, v133);
        v279[0] = *(v8 + 536);
        if (v279[0] == 1)
        {
          v280 = *(v8 + 538);
        }

        isa = sub_238E0A934(v279, v136)->super.isa;
        v277[0] = *(v8 + 540);
        if (v277[0] == 1)
        {
          v278 = *(v8 + 542);
        }

        v140 = sub_238E0A934(v277, v138)->super.isa;
        *buf = *v276;
        *&buf[16] = v135;
        *&buf[24] = 16;
        *&buf[32] = *v130;
        v313 = *v132;
        v314 = *v134;
        v315 = *v137;
        v316 = isa;
        v317 = v140;
        if (v286 == 1)
        {
          (*(*v287 + 32))(v287);
        }

        if (sub_239500AE0(v13, buf))
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v141 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v141;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error validating attestation information: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v142 = sub_2393C9138();
            sub_2393D5320(9, 1, "Error validating attestation information: %s", v142);
          }

          v364[0] = -1;
          v365 = 0;
          v28 = v364;
          sub_2394FDB60(v13, 0xD6500000020, "src/controller/CHIPDeviceController.cpp", v364);
          if (v364[0] == 4)
          {
            v364[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Missing attestation information", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Missing attestation information");
        }

        v369[0] = -1;
        v370 = 0;
        v28 = v369;
        sub_2394FDB60(v13, 0xD570000002FLL, "src/controller/CHIPDeviceController.cpp", v369);
        if (v369[0] == 4)
        {
          v369[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xDu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Verifying the device's DAC chain revocation status", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Verifying the device's DAC chain revocation status");
      }

      if (*(v8 + 424) == 1 && *(v8 + 448) == 1 && *(v8 + 152) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && *(v8 + 536) == 1 && (*(v8 + 540) & 1) != 0)
      {
        v387[0] = 1;
        *&v387[8] = *(v8 + 432);
        v275 = sub_238DE36B8(v387, v95);
        (*(*v12 + 48))(&v286, v12);
        v97 = sub_238DE36B8(&v286, v96);
        v99 = sub_239495304(*v97);
        v368[0] = *(v8 + 448);
        if (v368[0] == 1)
        {
          *&v368[8] = *(v8 + 456);
        }

        v101 = sub_238DE36B8(v368, v98);
        LOBYTE(v366) = *(v8 + 472);
        if (v366 == 1)
        {
          *&v367[4] = *(v8 + 480);
        }

        v103 = sub_238DE36B8(&v366, v100);
        v283[0] = *(v8 + 496);
        if (v283[0] == 1)
        {
          v285 = *(v8 + 504);
        }

        v105 = sub_238DE36B8(v283, v102);
        v281[0] = *(v8 + 152);
        if (v281[0] == 1)
        {
          v282 = *(v8 + 160);
        }

        v106 = v99 + 216;
        v108 = sub_238DE36B8(v281, v104);
        v279[0] = *(v8 + 536);
        if (v279[0] == 1)
        {
          v280 = *(v8 + 538);
        }

        v110 = sub_238E0A934(v279, v107)->super.isa;
        v277[0] = *(v8 + 540);
        if (v277[0] == 1)
        {
          v278 = *(v8 + 542);
        }

        v111 = sub_238E0A934(v277, v109)->super.isa;
        *buf = *v275;
        *&buf[16] = v106;
        *&buf[24] = 16;
        *&buf[32] = *v101;
        v313 = *v103;
        v314 = *v105;
        v315 = *v108;
        v316 = v110;
        v317 = v111;
        if (v286 == 1)
        {
          (*(*v287 + 32))(v287);
        }

        if (sub_239500C9C(v13, buf))
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v112 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v112;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error validating device's DAC chain revocation status: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v113 = sub_2393C9138();
            sub_2393D5320(9, 1, "Error validating device's DAC chain revocation status: %s", v113);
          }

          v360[0] = -1;
          v361 = 0;
          v28 = v360;
          sub_2394FDB60(v13, 0xD7E00000020, "src/controller/CHIPDeviceController.cpp", v360);
          if (v360[0] == 4)
          {
            v360[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Missing attestation information", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Missing attestation information");
        }

        v362[0] = -1;
        v363 = 0;
        v28 = v362;
        sub_2394FDB60(v13, 0xD6F0000002FLL, "src/controller/CHIPDeviceController.cpp", v362);
        if (v362[0] == 4)
        {
          v362[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xEu:
      v59 = (*(*v13 + 104))(v13);
      if (v59)
      {
        v60 = v58;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v61 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v61;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to start JCM Trust Verification: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v62 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to start JCM Trust Verification: %s", v62);
        }

        v358[0] = -1;
        v359 = 0;
        v28 = v358;
        sub_2394FDB60(v13, v59, v60, v358);
        if (v358[0] == 4)
        {
          v358[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0xFu:
      if (*(v8 + 128))
      {
        buf[0] = *(v8 + 128);
        *&buf[8] = *(v8 + 136);
        v160 = sub_238DE36B8(buf, v21);
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v162 = sub_2395010EC(v13, v12, v160, v387);
        if (v162)
        {
          v163 = v161;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v164 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v164;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CSR request: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v165 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send CSR request: %s", v165);
          }

          v354[0] = -1;
          v355 = 0;
          v28 = v354;
          sub_2394FDB60(v13, v162, v163, v354);
          if (v354[0] == 4)
          {
            v354[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No CSR nonce found", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No CSR nonce found");
        }

        v356[0] = -1;
        v357 = 0;
        v28 = v356;
        sub_2394FDB60(v13, 0xD920000002FLL, "src/controller/CHIPDeviceController.cpp", v356);
        if (v356[0] == 4)
        {
          v356[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x10u:
      if (*(v8 + 272) == 1 && *(v8 + 496) == 1 && (*(v8 + 128) & 1) != 0)
      {
        buf[0] = 1;
        v166 = *(v8 + 296);
        *&buf[8] = *(v8 + 280);
        *&buf[24] = v166;
        v168 = sub_2394EB70C(buf, v21);
        v387[0] = *(v8 + 272);
        if (v387[0] == 1)
        {
          v169 = *(v8 + 296);
          *&v387[8] = *(v8 + 280);
          v388 = v169;
        }

        v171 = sub_2394EB70C(v387, v167);
        v368[0] = *(v8 + 496);
        if (v368[0] == 1)
        {
          *&v368[8] = *(v8 + 504);
        }

        v173 = sub_238DE36B8(v368, v170);
        LOBYTE(v366) = *(v8 + 128);
        if (v366 == 1)
        {
          *&v367[4] = *(v8 + 136);
        }

        v174 = sub_238DE36B8(&v366, v172);
        v175 = sub_239500E58(v13, v12, v168, (v171 + 16), v173, v174);
        v177 = v176;
        if (v175)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v178 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v178;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to validate CSR: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v179 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to validate CSR: %s", v179);
          }
        }

        v350[0] = -1;
        v351 = 0;
        v28 = v350;
        sub_2394FDB60(v13, v175, v177, v350);
        if (v350[0] == 4)
        {
          v350[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unable to validate CSR", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Unable to validate CSR");
        }

        v352[0] = -1;
        v353 = 0;
        v28 = v352;
        sub_2394FDB60(v13, 0xDA30000002FLL, "src/controller/CHIPDeviceController.cpp", v352);
        if (v352[0] == 4)
        {
          v352[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x11u:
      if (*(v8 + 272) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && (*(v8 + 128) & 1) != 0)
      {
        buf[0] = 1;
        v210 = *(v8 + 296);
        *&buf[8] = *(v8 + 280);
        *&buf[24] = v210;
        v212 = sub_2394EB70C(buf, v21);
        v387[0] = *(v8 + 272);
        if (v387[0] == 1)
        {
          v213 = *(v8 + 296);
          *&v387[8] = *(v8 + 280);
          v388 = v213;
        }

        v215 = sub_2394EB70C(v387, v211);
        v368[0] = *(v8 + 496);
        if (v368[0] == 1)
        {
          *&v368[8] = *(v8 + 504);
        }

        v217 = sub_238DE36B8(v368, v214);
        LOBYTE(v366) = *(v8 + 472);
        if (v366 == 1)
        {
          *&v367[4] = *(v8 + 480);
        }

        v219 = sub_238DE36B8(&v366, v216);
        v283[0] = *(v8 + 128);
        if (v283[0] == 1)
        {
          v285 = *(v8 + 136);
        }

        v220 = sub_238DE36B8(v283, v218);
        v222 = sub_239501C94(v13, v12, v212, (v215 + 16), v217, v219, v220);
        if (v222)
        {
          v223 = v221;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v224 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v224;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to process Operational Certificate Signing Request (CSR): %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v225 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to process Operational Certificate Signing Request (CSR): %s", v225);
          }

          v346[0] = -1;
          v347 = 0;
          v28 = v346;
          sub_2394FDB60(v13, v222, v223, v346);
          if (v346[0] == 4)
          {
            v346[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unable to generate NOC chain parameters", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Unable to generate NOC chain parameters");
        }

        v348[0] = -1;
        v349 = 0;
        v28 = v348;
        sub_2394FDB60(v13, 0xDB60000002FLL, "src/controller/CHIPDeviceController.cpp", v348);
        if (v348[0] == 4)
        {
          v348[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x12u:
      if (*(v8 + 312) == 1 && (*(v8 + 336) & 1) != 0)
      {
        buf[0] = 1;
        *&buf[8] = *(v8 + 320);
        v199 = sub_238DE36B8(buf, v21);
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v201 = sub_239502CAC(v13, v12, v199, v387);
        if (v201)
        {
          v202 = v200;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v203 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v203;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error sending trusted root certificate: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v204 = sub_2393C9138();
            sub_2393D5320(9, 1, "Error sending trusted root certificate: %s", v204);
          }

          v342[0] = -1;
          v343 = 0;
          v28 = v342;
          sub_2394FDB60(v13, v201, v202, v342);
          if (v342[0] == 4)
          {
            v342[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }

        else
        {
          buf[0] = *(v8 + 312);
          if (buf[0] == 1)
          {
            *&buf[8] = *(v8 + 320);
          }

          v247 = sub_238DE36B8(buf, v200);
          v249 = *v247;
          v250 = v247[1];
          v387[0] = *(v8 + 336);
          if (v387[0] == 1)
          {
            *&v387[8] = *(v8 + 344);
          }

          v251 = sub_238DE36B8(v387, v248);
          v253 = (*(*v12 + 56))(v12, v249, v250, *v251, v251[1]);
          if (v253)
          {
            v254 = v252;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v255 = sub_2393C9138();
              *buf = 136315138;
              *&buf[4] = v255;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error setting peer id: %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              v256 = sub_2393C9138();
              sub_2393D5320(9, 1, "Error setting peer id: %s", v256);
            }

            v340[0] = -1;
            v341 = 0;
            v28 = v340;
            sub_2394FDB60(v13, v253, v254, v340);
            if (v340[0] == 4)
            {
              v340[1] = &unk_284BBE888;
              goto LABEL_550;
            }
          }

          else if (((*(*v12 + 24))(v12) - 1) >= 0xFFFFFFEFFFFFFFFFLL)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Given node ID is not an operational node ID", buf, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(9, 1, "Given node ID is not an operational node ID");
            }

            v338[0] = -1;
            v339 = 0;
            v28 = v338;
            sub_2394FDB60(v13, 0xDDD0000002FLL, "src/controller/CHIPDeviceController.cpp", v338);
            if (v338[0] == 4)
            {
              v338[1] = &unk_284BBE888;
              goto LABEL_550;
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No trusted root cert or NOC specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No trusted root cert or NOC specified");
        }

        v344[0] = -1;
        v345 = 0;
        v28 = v344;
        sub_2394FDB60(v13, 0xDC80000002FLL, "src/controller/CHIPDeviceController.cpp", v344);
        if (v344[0] == 4)
        {
          v344[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x13u:
      if (*(v8 + 336) == 1 && *(v8 + 384) == 1 && (sub_238DE36D8((v8 + 384), v21), (*(v8 + 408) & 1) != 0))
      {
        buf[0] = *(v8 + 336);
        if (buf[0] == 1)
        {
          *&buf[8] = *(v8 + 344);
        }

        v49 = sub_238DE36B8(buf, v47);
        v387[0] = *(v8 + 360);
        if (v387[0] == 1)
        {
          *&v387[8] = *(v8 + 368);
        }

        if (*(v8 + 384) == 1)
        {
          *&v368[8] = sub_238DE36D8((v8 + 384), v48);
          v50 = 1;
        }

        else
        {
          v50 = 0;
        }

        v368[0] = v50;
        v268 = *sub_238DE36B8(v368, v48);
        LOBYTE(v366) = *(v8 + 408);
        if (v366 == 1)
        {
          *&v367[4] = *(v8 + 416);
        }

        v269 = *sub_238DE36B8(&v366, v267);
        v283[0] = *v2;
        if (v283[0] == 1)
        {
          v284 = *(v2 + 1);
        }

        v271 = sub_239502030(v13, v12, v49, v387, v268, v269, v283);
        if (v271)
        {
          v272 = v270;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v273 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v273;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error installing operational certificate with AddNOC: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v274 = sub_2393C9138();
            sub_2393D5320(9, 1, "Error installing operational certificate with AddNOC: %s", v274);
          }

          v334[0] = -1;
          v335 = 0;
          v28 = v334;
          sub_2394FDB60(v13, v271, v272, v334);
          if (v334[0] == 4)
          {
            v334[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "AddNOC contents not specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "AddNOC contents not specified");
        }

        v336[0] = -1;
        v337 = 0;
        v28 = v336;
        sub_2394FDB60(v13, 0xDE60000002FLL, "src/controller/CHIPDeviceController.cpp", v336);
        if (v336[0] == 4)
        {
          v336[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x14u:
      if (*(v8 + 96))
      {
        buf[0] = *(v8 + 96);
        *&buf[8] = *(v8 + 104);
        *&buf[24] = *(v8 + 120);
        v114 = sub_2394EB70C(buf, v21);
        v115 = v114[16];
        *v387 = *v114;
        v387[16] = v115;
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v117 = sub_23950DB28(v13, v12, v387, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v117)
        {
          v118 = v116;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v119 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v119;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SendTrustedTimeSource command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v120 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SendTrustedTimeSource command: %s", v120);
          }

          v330[0] = -1;
          v331 = 0;
          v28 = v330;
          sub_2394FDB60(v13, v117, v118, v330);
          if (v330[0] == 4)
          {
            v330[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureTrustedTimeSource stage called with no trusted time source data!", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "ConfigureTrustedTimeSource stage called with no trusted time source data!");
        }

        v332[0] = -1;
        v333 = 0;
        v28 = v332;
        sub_2394FDB60(v13, 0xDF80000002FLL, "src/controller/CHIPDeviceController.cpp", v332);
        if (v332[0] == 4)
        {
          v332[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x15u:
      (*(**(v13 + 4336) + 104))(*(v13 + 4336));
      return;
    case 0x16u:
      BYTE8(v313) = 0;
      memset(&buf[16], 0, 17);
      if (*(v8 + 600) == 1 && *(v8 + 616) == 1 && (*(v8 + 632) & 1) != 0)
      {
        v387[0] = 1;
        *&v387[8] = *(v8 + 608);
        *buf = *sub_238DE36B8(v387, v21);
        v387[0] = *(v8 + 616);
        if (v387[0] == 1)
        {
          *&v387[8] = *(v8 + 624);
        }

        *&buf[8] = *sub_238DE36B8(v387, v51);
        v387[0] = *(v8 + 632);
        if (v387[0] == 1)
        {
          *&v387[8] = *(v8 + 640);
        }

        *&buf[16] = *sub_238DE36B8(v387, v52);
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v54 = sub_23950E5D4(v13, v12, buf, sub_2395003F4, sub_2395036B8, v4, v387, 0);
        if (v54)
        {
          v55 = v53;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v56 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v56;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send IcdManagement.RegisterClient command: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v57 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send IcdManagement.RegisterClient command: %s", v57);
          }

          v304[0] = -1;
          v305 = 0;
          v28 = v304;
          sub_2394FDB60(v13, v54, v55, v304);
          if (v304[0] == 4)
          {
            v304[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v387 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No ICD Registration information provided!", v387, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No ICD Registration information provided!");
        }

        v306[0] = -1;
        v307 = 0;
        v28 = v306;
        sub_2394FDB60(v13, 0xE7800000003, "src/controller/CHIPDeviceController.cpp", v306);
        if (v306[0] == 4)
        {
          v306[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x17u:
      v88 = *(v8 + 176);
      if (v88)
      {
        LOBYTE(v313) = 0;
        BYTE8(v314) = 0;
        LOBYTE(v316) = 0;
        v387[0] = v88;
        *&v387[8] = *(v8 + 184);
        v388 = *(v8 + 200);
        *buf = *sub_2394EB70C(v387, v21);
        v387[0] = *(v8 + 176);
        if (v387[0] == 1)
        {
          *&v387[8] = *(v8 + 184);
          v388 = *(v8 + 200);
        }

        *&buf[16] = *(sub_2394EB70C(v387, v89) + 1);
        buf[32] = 1;
        *&buf[40] = v10;
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v91 = sub_23950DD10(v13, v12, buf, sub_239507BDC, sub_2395036B8, v4, v387, 0);
        if (v91)
        {
          v92 = v90;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v93 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v93;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AddOrUpdateWiFiNetwork command: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v94 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send AddOrUpdateWiFiNetwork command: %s", v94);
          }

          v326[0] = -1;
          v327 = 0;
          v28 = v326;
          sub_2394FDB60(v13, v91, v92, v326);
          if (v326[0] == 4)
          {
            v326[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No wifi credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No wifi credentials specified");
        }

        v328[0] = -1;
        v329 = 0;
        v28 = v328;
        sub_2394FDB60(v13, 0xE0B0000002FLL, "src/controller/CHIPDeviceController.cpp", v328);
        if (v328[0] == 4)
        {
          v328[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x18u:
      if (*(v8 + 248))
      {
        v387[0] = *(v8 + 248);
        *&v387[8] = *(v8 + 256);
        *buf = *sub_238DE36B8(v387, v21);
        buf[16] = 1;
        *&buf[24] = v10;
        v387[0] = *v2;
        if (v387[0] == 1)
        {
          *&v387[4] = *(v2 + 1);
        }

        v69 = sub_23950DEF8(v13, v12, buf, sub_239507BDC, sub_2395036B8, v4, v387, 0);
        if (v69)
        {
          v70 = v68;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v71 = sub_2393C9138();
            *v387 = 136315138;
            *&v387[4] = v71;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AddOrUpdateThreadNetwork command: %s", v387, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v72 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send AddOrUpdateThreadNetwork command: %s", v72);
          }

          v322[0] = -1;
          v323 = 0;
          v28 = v322;
          sub_2394FDB60(v13, v69, v70, v322);
          if (v322[0] == 4)
          {
            v322[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No thread credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No thread credentials specified");
        }

        v324[0] = -1;
        v325 = 0;
        v28 = v324;
        sub_2394FDB60(v13, 0xE210000002FLL, "src/controller/CHIPDeviceController.cpp", v324);
        if (v324[0] == 4)
        {
          v324[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x19u:
    case 0x1Au:
      sub_23950E0E0(v13, v12, v8, v10);
      return;
    case 0x1Bu:
      if (*(v8 + 176))
      {
        buf[0] = *(v8 + 176);
        *&buf[8] = *(v8 + 184);
        *&buf[24] = *(v8 + 200);
        *v387 = *sub_2394EB70C(buf, v21);
        v387[16] = 1;
        *&v388 = v10;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v8 + 548) == 1)
          {
            v368[0] = 1;
            v368[1] = *(v8 + 549);
            if (LOBYTE(sub_238DE36D8(v368, v45)->super.isa))
            {
              v46 = "true";
            }

            else
            {
              v46 = "false";
            }
          }

          else
          {
            v46 = "missing";
          }

          *buf = 136315138;
          *&buf[4] = v46;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "SendCommand kWiFiNetworkEnable, supportsConcurrentConnection=%s", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          if (*(v8 + 548) == 1)
          {
            buf[0] = 1;
            buf[1] = *(v8 + 549);
            if (LOBYTE(sub_238DE36D8(buf, v240)->super.isa))
            {
              v241 = "true";
            }

            else
            {
              v241 = "false";
            }
          }

          else
          {
            v241 = "missing";
          }

          sub_2393D5320(9, 2, "SendCommand kWiFiNetworkEnable, supportsConcurrentConnection=%s", v241);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v243 = sub_23950E3EC(v13, v12, v387, sub_239507DA0, sub_2395036B8, v4, buf, 0);
        if (v243)
        {
          v244 = v242;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v245 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v245;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send WiFi ConnectNetwork command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v246 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send WiFi ConnectNetwork command: %s", v246);
          }

          v318[0] = -1;
          v319 = 0;
          v28 = v318;
          sub_2394FDB60(v13, v243, v244, v318);
          if (v318[0] == 4)
          {
            v318[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No wifi credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "No wifi credentials specified");
        }

        v320[0] = -1;
        v321 = 0;
        v28 = v320;
        sub_2394FDB60(v13, 0xE3D0000002FLL, "src/controller/CHIPDeviceController.cpp", v320);
        if (v320[0] == 4)
        {
          v320[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x1Cu:
      *&v368[8] = 0;
      *v368 = 0;
      *buf = &buf[16];
      *&buf[8] = 0;
      if (*(v8 + 248) != 1 || (v387[0] = 1, *&v387[8] = *(v8 + 256), v35 = sub_238DE36B8(v387, v21), sub_2393D79D4(buf, *v35, *(v35 + 1))) || sub_2393D7380(buf, v368))
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v387 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid Thread operational dataset configured at commissioner!", v387, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Invalid Thread operational dataset configured at commissioner!");
        }

        v310[0] = -1;
        v311 = 0;
        v28 = v310;
        sub_2394FDB60(v13, 0xE5C0000002FLL, "src/controller/CHIPDeviceController.cpp", v310);
        if (v310[0] == 4)
        {
          v310[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      else
      {
        *v387 = *v368;
        v387[16] = 1;
        *&v388 = v10;
        LOBYTE(v366) = *v2;
        if (v366 == 1)
        {
          *v367 = *(v2 + 1);
        }

        v263 = sub_23950E3EC(v13, v12, v387, sub_239507DA0, sub_2395036B8, v4, &v366, 0);
        if (v263)
        {
          v264 = v262;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v265 = sub_2393C9138();
            v366 = 136315138;
            *v367 = v265;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send Thread ConnectNetwork command: %s", &v366, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v266 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send Thread ConnectNetwork command: %s", v266);
          }

          v308[0] = -1;
          v309 = 0;
          v28 = v308;
          sub_2394FDB60(v13, v263, v264, v308);
          if (v308[0] == 4)
          {
            v308[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      return;
    case 0x1Du:
      v86 = (*(*v12 + 24))(v12);
      v87 = *(v13 + 36);
      *buf = v86;
      buf[8] = v87;
      sub_23949750C(*(*(v13 + 4280) + 40), buf);
      v302[0] = -1;
      v303 = 0;
      v28 = v302;
      sub_2394FDB60(v13, 0, 0, v302);
      if (v302[0] == 4)
      {
        v302[1] = &unk_284BBE888;
        goto LABEL_550;
      }

      return;
    case 0x1Eu:
    case 0x1Fu:
      v25 = (*(*v12 + 24))(v12);
      v26 = *(v13 + 36);
      *v387 = v25;
      v387[8] = v26;
      *buf = 0;
      *&buf[8] = "core_dcm_operational_setup";
      buf[20] = 0;
      sub_23948BD20(buf);
      sub_2394C49D8(*(*(v13 + 4280) + 96), v387, (v13 + 4680), v13 + 4720, 3, (v13 + 4760), 0);
      return;
    case 0x20u:
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v144 = sub_23950EB8C(v13, v12, v387, sub_239507F64, sub_2395036B8, v4, buf, 0);
      if (v144)
      {
        v145 = v143;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v146 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v146;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CommissioningComplete command: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v147 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send CommissioningComplete command: %s", v147);
        }

        v290[0] = -1;
        v291 = 0;
        v28 = v290;
        sub_2394FDB60(v13, v144, v145, v290);
        if (v290[0] == 4)
        {
          v290[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x21u:
      if (*(v8 + 660))
      {
        buf[0] = *(v8 + 660);
        *&buf[4] = *(v8 + 664);
        v29 = *sub_238DE3698(buf, v21);
        *v387 = v29;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v29;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Send ICD StayActive with Duration %u", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Send ICD StayActive with Duration %u", v29);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v31 = sub_23950E9A4(v13, v12, v387, sub_239500554, sub_2395036B8, v4, buf, 0);
        if (v31)
        {
          v32 = v30;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v33 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v33;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send IcdManagement.StayActive command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v34 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send IcdManagement.StayActive command: %s", v34);
          }

          v292[0] = -1;
          v293 = 0;
          v28 = v292;
          sub_2394FDB60(v13, v31, v32, v292);
          if (v292[0] == 4)
          {
            v292[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Skipping kICDSendStayActive", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9, 2, "Skipping kICDSendStayActive");
        }

        v294[0] = -1;
        v295 = 0;
        v28 = v294;
        sub_2394FDB60(v13, 0, 0, v294);
        if (v294[0] == 4)
        {
          v294[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x22u:
      buf[0] = 0;
      if (*(v8 + 176) == 1)
      {
        v387[0] = 1;
        *&v387[8] = *(v8 + 184);
        v388 = *(v8 + 200);
        v80 = sub_2394EB70C(v387, v21);
        buf[0] = 1;
        *&buf[8] = *v80;
        buf[24] = 1;
      }

      buf[32] = 1;
      *&buf[40] = v10;
      v387[0] = *v2;
      if (v387[0] == 1)
      {
        *&v387[4] = *(v2 + 1);
      }

      v82 = sub_23950D510(v13, v12, buf, sub_2395076DC, sub_23950755C, v4, v387, 0);
      if (v82)
      {
        v83 = v81;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v84 = sub_2393C9138();
          *v387 = 136315138;
          *&v387[4] = v84;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send ScanNetworks command: %s", v387, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v85 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send ScanNetworks command: %s", v85);
        }

        v385[0] = -1;
        v386 = 0;
        v28 = v385;
        sub_2394FDB60(v13, v82, v83, v385);
        if (v385[0] == 4)
        {
          v385[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x25u:
      buf[0] = *(v8 + 176);
      if (buf[0] == 1)
      {
        *&buf[8] = *(v8 + 184);
        *&buf[24] = *(v8 + 200);
      }

      *v387 = *sub_2394EB70C(buf, v21);
      v387[16] = 1;
      *&v388 = v10;
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v206 = sub_23950E7BC(v13, v12, v387, sub_239507BDC, sub_2395036B8, v4, buf, 0);
      if (v206)
      {
        v207 = v205;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v208 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v208;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send RemoveNetwork command: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          v209 = sub_2393C9138();
          sub_2393D5320(9, 1, "Failed to send RemoveNetwork command: %s", v209);
        }

        v300[0] = -1;
        v301 = 0;
        v28 = v300;
        sub_2394FDB60(v13, v206, v207, v300);
        if (v300[0] == 4)
        {
          v300[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x26u:
      *&v368[8] = 0;
      *v368 = 0;
      *buf = &buf[16];
      *&buf[8] = 0;
      if (*(v8 + 248) != 1 || (v387[0] = 1, *&v387[8] = *(v8 + 256), v27 = sub_238DE36B8(v387, v21), sub_2393D79D4(buf, *v27, *(v27 + 1))) || sub_2393D7380(buf, v368))
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v387 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid Thread operational dataset configured at commissioner!", v387, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9, 1, "Invalid Thread operational dataset configured at commissioner!");
        }

        v298[0] = -1;
        v299 = 0;
        v28 = v298;
        sub_2394FDB60(v13, 0xEC10000002FLL, "src/controller/CHIPDeviceController.cpp", v298);
        if (v298[0] == 4)
        {
          v298[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      else
      {
        *v387 = *v368;
        v387[16] = 1;
        *&v388 = v10;
        LOBYTE(v366) = *v2;
        if (v366 == 1)
        {
          *v367 = *(v2 + 1);
        }

        v258 = sub_23950E7BC(v13, v12, v387, sub_239507BDC, sub_2395036B8, v4, &v366, 0);
        if (v258)
        {
          v259 = v257;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v260 = sub_2393C9138();
            v366 = 136315138;
            *v367 = v260;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send RemoveNetwork command: %s", &v366, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v261 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send RemoveNetwork command: %s", v261);
          }

          v296[0] = -1;
          v297 = 0;
          v28 = v296;
          sub_2394FDB60(v13, v258, v259, v296);
          if (v296[0] == 4)
          {
            v296[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      return;
    case 0x27u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Setting Terms and Conditions");
      }

      if (*(v8 + 240))
      {
        buf[0] = *(v8 + 240);
        *&buf[2] = *(v8 + 242);
        v37 = sub_2394FFDA4(buf, v36);
        v38 = *v37;
        v39 = v37[1];
        *&v387[2] = *v37;
        *v387 = v39;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v38;
          *&buf[8] = 1024;
          *&buf[10] = v39;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions: %hu, %hu", buf, 0xEu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9, 2, "Setting Terms and Conditions: %hu, %hu", v38, v39);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v41 = sub_23950D8E0(v13, v12, v387, sub_239507248, sub_2395036B8, v4, buf, 0);
        if (v41)
        {
          v42 = v40;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v43 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v43;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetTCAcknowledgements command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            v44 = sub_2393C9138();
            sub_2393D5320(9, 1, "Failed to send SetTCAcknowledgements command: %s", v44);
          }

          v379[0] = -1;
          v380 = 0;
          v28 = v379;
          sub_2394FDB60(v13, v41, v42, v379);
          if (v379[0] == 4)
          {
            v379[1] = &unk_284BBE888;
            goto LABEL_550;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions: Skipped", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9, 2, "Setting Terms and Conditions: Skipped");
        }

        v381[0] = -1;
        v382 = 0;
        v28 = v381;
        sub_2394FDB60(v13, 0, 0, v381);
        if (v381[0] == 4)
        {
          v381[1] = &unk_284BBE888;
          goto LABEL_550;
        }
      }

      return;
    case 0x28u:
      v159 = (*(*v12 + 24))(v12);
      (*(*v13 + 96))(v13, v12, v159, v8 + 552);
      return;
    case 0x29u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Completed unpowered commissioning phase, marking commissioning as complete", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9, 2, "Completed unpowered commissioning phase, marking commissioning as complete");
      }

      v288[0] = -1;
      v289 = 0;
      v28 = v288;
      sub_2394FDB60(v13, 0, 0, v288);
      if (v288[0] == 4)
      {
        v288[1] = &unk_284BBE888;
LABEL_550:
        sub_239495880((v28 + 4));
      }

      return;
    default:
      return;
  }
}

unint64_t sub_23950CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC05C0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC0640;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239515354(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950CF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC0858;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC08E8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239515B48(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_2395165E0(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950D140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC0AB0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC0B30;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239516660(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950D328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC0CF8;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC0D78;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239516E54(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC0F90;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC1020;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239517648(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_2395180EC(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950D6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC1238;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC12C8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951816C(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239518C08(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC14E0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC1570;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239518C88(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239519720(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

uint64_t sub_23950DAC8(uint64_t a1, _BYTE *a2)
{
  if (a2[424] == 1 && a2[448] == 1 && a2[152] == 1 && a2[496] == 1 && a2[472] == 1 && a2[536] == 1)
  {
    v2 = a2[540] ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

unint64_t sub_23950DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC1738;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC17B8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_2395197A0(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC19D0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC1A60;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_239519F94(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951AA74(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC1C28;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC1CA8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951AAF4(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951AA74(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

void sub_23950E0E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = (*(*a2 + 24))(a2);
  v9 = sub_2394FB1BC(a1, v8);
  if (v9 == a2)
  {
    v17 = v9;
    buf[0] = *a3;
    if (buf[0] == 1)
    {
      *&buf[2] = *(a3 + 2);
      v18 = sub_238E0A934(buf, v10);
    }

    else
    {
      v18 = &word_2395D8998;
    }

    isa_low = LOWORD(v18->super.isa);
    v20 = isa_low + (sub_2393E9304((v17 + 216)) / 0x3E8);
    if (v20 >= 0xFFFF)
    {
      v21 = 0xFFFF;
    }

    else
    {
      v21 = v20;
    }

    buf[0] = 1;
    v27 = 30000;
    if (!sub_239500688(a1, v17, a4, v21, buf, sub_239506EC0, sub_2395036B8, 0))
    {
      v22[0] = -1;
      v23 = 0;
      sub_2394FDB60(a1, 0, 0, v22);
      if (v22[0] == 4)
      {
        v16 = v22;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = (*(*a2 + 24))(a2) >> 32;
      v13 = (*(*a2 + 24))(a2);
      *buf = 67109376;
      v27 = v12;
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Trying to extend fail-safe for an unknown commissionee with device id %08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = (*(*a2 + 24))(a2) >> 32;
      v15 = (*(*a2 + 24))(a2);
      sub_2393D5320(9, 1, "Trying to extend fail-safe for an unknown commissionee with device id %08X%08X", v14, v15);
    }

    v24[0] = -1;
    v25 = 0;
    sub_2394FDB60(a1, 0xF1000000003, "src/controller/CHIPDeviceController.cpp", v24);
    if (v24[0] == 4)
    {
      v16 = v24;
LABEL_17:
      v16[1] = &unk_284BBE888;
      sub_239495880((v16 + 4));
    }
  }
}

unint64_t sub_23950E3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC1EC0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC1F50;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951B2E8(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951BD84(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950E5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC2168;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC21F8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951BE04(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951C89C(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC23C0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC2440;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951C91C(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951AA74(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC2658;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC26E8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951D108(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951DBA0(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

unint64_t sub_23950EB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a6;
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v19 = sub_238DE36B8(&v24, v18);
  v27[0] = &unk_284BC2900;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC2990;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v20 = (a1 + 4376);
  if (a8)
  {
    v20 = 0;
  }

  v21 = sub_23951DC20(v17, v19, v10, a3, v27, v26, v23, a7, v20, 0);
  sub_238EF641C(v26);
  sub_23951E6BC(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  return v21;
}

uint64_t sub_23950ED74(uint64_t a1, uint64_t a2)
{
  v3 = sub_239293160(a1);
  if (!v3)
  {
    return 0xF3900000071;
  }

  if (*(a2 + 8) == 8)
  {
    v4 = 0;
    v5 = 0;
    **a2 = bswap64(*(v3 + 16));
  }

  else
  {
    v4 = 0x6400000000;
    v5 = 47;
  }

  return v5 | v4;
}

unint64_t sub_23950EDF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4280);
  if (v2 && (v3 = *(v2 + 72)) != 0)
  {
    v4 = sub_2394A8620(v3, *(a1 + 36), a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    v6 = v4;
  }

  else
  {
    v5 = 0xF4000000000;
    v6 = 3;
  }

  return v6 | v5;
}

BOOL sub_23950EE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 188);
  if (!*(a2 + 188))
  {
    v3 = sub_2393D9044(9u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Discovered device does not have an open commissioning window.", v5, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9, 2, "Discovered device does not have an open commissioning window.");
    }
  }

  return v2 != 0;
}

void *sub_23950EEDC(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBE7C8;
  sub_2394BA220((a1 + 2), a2);
  return a1;
}

void sub_23950EF20(void *a1, uint64_t a2)
{
  *a1 = &unk_284BBE7C8;
  sub_2394BA220((a1 + 2), a2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23950EF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 32) == 1)
  {
    v14 = v5;
    v15 = v6;
    v7 = *(*(a1 + 4280) + 96);
    v8 = *(a1 + 36);
    v12 = a2;
    v13 = v8;
    sub_2394C49D8(v7, &v12, a3, a4, 1, 0, a5);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0x10500000000;
    v10 = 3;
  }

  return v10 | v9;
}

void sub_23950F00C(uint64_t a1)
{
  sub_23950F348(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_23950F064(uint64_t a1)
{
  sub_23950F348(a1 - 4304);

  JUMPOUT(0x23EE77B60);
}

void sub_23950F0C0(uint64_t a1)
{
  sub_23950F348(a1 - 4312);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23950F110(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_2394E581C(a2, *a1))
  {
    sub_2394E58A0(a2);
  }

  return 0;
}

uint64_t sub_23950F14C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *a2;
  *a1 = *a2;
  v6 = (a1 + 8);
  if (v5 <= 2)
  {
    if (!v5)
    {
      *v6 = *v4;
      goto LABEL_18;
    }

    if (v5 == 1 || v5 == 2)
    {
      v8 = *v4;
      v9 = *(a2 + 24);
      goto LABEL_16;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      if (v5 != 3)
      {
        *(a1 + 8) = &unk_284BBD538;
        v7 = *(a2 + 16);
        *(a1 + 8) = &unk_284BBE888;
        *(a1 + 16) = v7;
        *(a1 + 24) = *(a2 + 24);
        sub_239495A4C(a1 + 32, a2 + 32);
        *(a1 + 72) = *(a2 + 72);
        goto LABEL_18;
      }

      v8 = *v4;
      v9 = *(a2 + 24);
      v10 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v10;
LABEL_16:
      *v6 = v8;
      *(a1 + 24) = v9;
      goto LABEL_18;
    }

    if (v5 == 5)
    {
      v11 = *v4;
      v12 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v12;
      *v6 = v11;
      v13 = *(a2 + 56);
      v14 = *(a2 + 72);
      v15 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 72) = v14;
      *(a1 + 88) = v15;
      *(a1 + 56) = v13;
      goto LABEL_18;
    }

    if (v5 == 6)
    {
      *v6 = *v4;
      goto LABEL_18;
    }
  }

  if ((v5 - 7) <= 2)
  {
    *v6 = *v4;
  }

LABEL_18:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t sub_23950F2A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_284BBE888;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_284BBBF18;
  *(a1 + 48) = 0;
  sub_239495C6C((a1 + 24), a3);
  *(a1 + 64) = (*(**a3 + 48))();
  *(a1 + 72) = v5;
  return a1;
}

uint64_t sub_23950F348(uint64_t a1)
{
  *a1 = &unk_284BBF1B0;
  *(a1 + 4304) = &unk_284BBF238;
  *(a1 + 4312) = &unk_284BBF2E0;
  sub_23950F4D8((a1 + 9192), 0);
  sub_2394EA0F8(a1 + 5296);
  sub_2394F7B1C((a1 + 4880));
  v3 = *(a1 + 4856);
  if (v3)
  {
    *(a1 + 4856) = 0;
    v3(a1 + 4840);
  }

  v4 = *(a1 + 4816);
  if (v4)
  {
    *(a1 + 4816) = 0;
    v4(a1 + 4800);
  }

  v5 = *(a1 + 4776);
  if (v5)
  {
    *(a1 + 4776) = 0;
    v5(a1 + 4760);
  }

  v6 = *(a1 + 4736);
  if (v6)
  {
    *(a1 + 4736) = 0;
    v6(a1 + 4720);
  }

  v7 = *(a1 + 4696);
  if (v7)
  {
    *(a1 + 4696) = 0;
    v7(a1 + 4680);
  }

  sub_239475668((a1 + 4440), v2);
  sub_238EF6944(a1 + 4408);
  sub_238EF6944(a1 + 4376);
  sub_2394FE578((a1 + 4328), 0);
  sub_2394FE5E8((a1 + 4320), 0);
  *a1 = &unk_284BBE7C8;
  sub_2394BA220(a1 + 16, v8);
  return a1;
}

void sub_23950F4D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_23950F514(v3);

    j__free(v4);
  }
}

uint64_t sub_23950F514(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    j__free(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    j__free(v3);
    *(a1 + 16) = 0;
  }

  if (*a1)
  {
    j__free(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_23950F588(uint64_t **a1, void *a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = **a1;
  if (v4 != v5 && a2[5] != v5)
  {
    return 0;
  }

  *a1[1] = a2;
  return 1;
}

BOOL sub_23950F604(uint64_t a1, uint64_t a2)
{
  result = sub_2394BF148(a2 + 48, *a1);
  if (result)
  {
    **(a1 + 8) = a2;
    return 1;
  }

  return result;
}

uint64_t sub_23950F644(uint64_t a1)
{
  v2 = a1 + 16;
  *a1 = &unk_284BBEF10;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_284BBEF78;
  *(a1 + 24) = 0u;
  *(a1 + 48) = xmmword_27DF7BD44;
  *(a1 + 64) = 1;
  *(a1 + 66) = 5540;
  *(a1 + 68) = 0u;
  *(a1 + 88) = &unk_284BBECE0;
  *(a1 + 96) = &unk_284BBEC90;
  sub_2394F1A2C(a1 + 104);
  *(a1 + 88) = &unk_284BB88D8;
  *(a1 + 96) = &unk_284BB8968;
  *(a1 + 104) = &unk_284BB89B8;
  *(a1 + 252) = 0;
  sub_2393F1544(a1 + 256, 32, 65, 0x20uLL);
  *(a1 + 256) = &unk_284BB8F80;
  sub_2393F7EB0((a1 + 496));
  bzero((a1 + 616), 0x400uLL);
  *(a1 + 1744) = 0;
  sub_2393F7EB0((a1 + 1784));
  *(a1 + 1904) = 0;
  *(a1 + 1908) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1952) = 32;
  *(a1 + 1960) = 0;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0;
  *(a1 + 1968) = 0u;
  *(a1 + 1984) = &unk_284BBEDB0;
  *(a1 + 2024) = v2;
  return a1;
}

uint64_t sub_23950F81C(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

unint64_t sub_23950F8A0(uint64_t a1, uint64_t *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, void *a9, char a10)
{
  v38 = *MEMORY[0x277D85DE8];
  v18 = *a2;
  if ((*(**a2 + 16))(*a2) == 3 || (*(*v18 + 16))(v18) == 4)
  {
    v19 = 0x3E00000000;
    v20 = 47;
    return v20 | v19;
  }

  v30[0] = a3;
  v30[1] = 0;
  v31 = 0x20000003ELL;
  v32 = 1;
  v22 = sub_2393D52C4(0x70uLL);
  if (!v22)
  {
    v19 = 0x4700000000;
    v20 = 11;
    return v20 | v19;
  }

  v23 = v22;
  sub_23950FC4C(v37, a5);
  sub_238EFB6DC(v36, a6);
  v35 = 0;
  sub_23950FCE4(v23, v37, v36, v34);
  sub_238EF6BC4(v34);
  sub_238EF641C(v36);
  sub_239510894(v37);
  v33[0] = &unk_284BBF3D8;
  v33[1] = v23;
  v33[3] = v33;
  sub_238EF550C(v23 + 9, v33);
  sub_238EF6BC4(v33);
  v24 = *a7;
  v25 = sub_2393D52C4(0x178uLL);
  if (!v25)
  {
    v19 = 0x5600000000;
    v20 = 11;
    goto LABEL_14;
  }

  v26 = v25;
  v27 = sub_2394C5404(v25, v23, a1, v24, 0, a10);
  v28 = sub_23950FB50(v27, v30, a4, a7);
  v20 = v28;
  if (v28)
  {
    goto LABEL_11;
  }

  LOBYTE(v37[0]) = *a8;
  if (LOBYTE(v37[0]) == 1)
  {
    DWORD1(v37[0]) = *(a8 + 4);
  }

  v28 = sub_2394C5B48(v26, a2, v37);
  v20 = v28;
  if (v28)
  {
LABEL_11:
    v19 = v28 & 0xFFFFFFFF00000000;
    v29 = sub_2394C5604(v26);
    j__free(v29);
LABEL_14:
    sub_238EF6BC4((v23 + 9));
    sub_238EF641C((v23 + 5));
    sub_239510894((v23 + 1));
    j__free(v23);
    return v20 | v19;
  }

  if (a9)
  {
    *&v37[0] = v23;
    *(&v37[0] + 1) = v26;
    sub_23950FBB4(a9, v37);
  }

  v20 = 0;
  v19 = 0;
  return v20 | v19;
}

unint64_t sub_23950FB50(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a4;
  if (v5[0] == 1)
  {
    v6 = *(a4 + 2);
  }

  v7 = 0;
  v8[0] = &unk_284BBF458;
  v8[1] = a3;
  return sub_2394C7280(a1, a2, v8, v5);
}

void *sub_23950FBB4(void *a1, __int128 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = &unk_284BBF4A0;
  v5 = *a2;
  v6 = &v4;
  sub_239510468(&v4, a1);
  sub_238EF6944(&v4);
  return a1;
}