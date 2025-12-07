uint64_t sub_24606C8E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_24606C938(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 88) = *a1;
}

uint64_t sub_24606C9AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 88))
  {
    v5 = *(v4 + 88);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 88) = v5;
  }

  return v5;
}

uint64_t sub_24606CAB4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 96))
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 96) = v3;
  }

  return v3;
}

uint64_t sub_24606CB30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_24606CB88(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 104) = *a1;
}

uint64_t sub_24606CBFC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 104))
  {
    v5 = *(v4 + 104);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 104) = v5;
  }

  return v5;
}

uint64_t sub_24606CD04(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 112))
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v4 = v2;
    sub_245F8E624(a1, a2);
    swift_allocObject();
    v3 = sub_246091934();
    *(v4 + 112) = v3;
  }

  return v3;
}

uint64_t sub_24606CDB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (*(v4 + 120))
  {
    v5 = *(v4 + 120);
  }

  else
  {
    a1();
    sub_245F8E624(a2, a3);
    sub_245F9218C(a4, a2, a3, MEMORY[0x277CBCE20]);
    v5 = sub_2460919A4();

    *(v4 + 120) = v5;
  }

  return v5;
}

double ObjectCaptureSessionWritingPublishers.init()()
{
  result = 0.0;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

void *ObjectCaptureSessionWritingPublishers.deinit()
{

  return v0;
}

uint64_t ObjectCaptureSessionWritingPublishers.__deallocating_deinit()
{
  ObjectCaptureSessionWritingPublishers.deinit();

  return swift_deallocClassInstance();
}

uint64_t ObjectCaptureSessionWritingPublishers.send(shot:shotMetadata:)(uint64_t *a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - v6);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v12 = a1[3];
  v11 = a1[4];
  sub_24606BFC0();
  v13 = *(v5 + 56);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v12;
  v7[4] = v11;
  sub_246081A04(a2, v7 + v13, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v14 = v11;
  v15 = v9;
  v16 = v10;
  v17 = v12;
  sub_246091924();

  return sub_245F8E744(v7, &qword_27EE3A738, &qword_246098890);
}

uint64_t ObjectCaptureSessionWritingPublishers.send(shotMetadata:)(uint64_t a1)
{
  sub_24606C1B4();
  sub_246091924();
}

Swift::Void __swiftcall ObjectCaptureSessionWritingPublishers.send(sessionMetadata:)(CoreOC::ObjectCaptureSession::Metadata::Session *sessionMetadata)
{
  sub_24606C3B0();
  sub_246091924();
}

uint64_t ObjectCaptureSessionWritingPublishers.send(depthPointCloud:timestamp:)(__int128 *a1, double a2)
{
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v13 = *(a1 + 8);
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  sub_24606C850();
  v9 = a1[2];
  v10 = a1[3];
  *&v11 = *(a1 + 8);
  v7 = *a1;
  v8 = a1[1];
  *(&v11 + 1) = a2;
  sub_24601E370(v12, v14);
  sub_246091924();

  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[0] = v7;
  v14[1] = v8;
  return sub_245F8E744(v14, &unk_27EE3AB00, &qword_246098D68);
}

Swift::Void __swiftcall ObjectCaptureSessionWritingPublishers.sendComplete()()
{
  sub_24606C3B0();
  sub_246091914();
}

uint64_t ObjectCaptureSessionFrameSPI.depthPointCloud.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_245F8E7A4(v8, v7, &qword_27EE3B1B0, &unk_246099D60);
}

uint64_t ObjectCaptureSessionFrameSPI.voxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

uint64_t ObjectCaptureSessionFrameSPI.debugVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v9 = v1[12];
  v10 = v2;
  v11 = v1[14];
  v3 = v11;
  v4 = v1[11];
  v8[0] = v1[10];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

void *ObjectCaptureSessionFrameSPI.tsdfDepth.getter()
{
  v1 = *(v0 + 240);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSessionFrameSPI.pointCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[19];
  v9 = v1[18];
  v10 = v2;
  v11 = v1[20];
  v3 = v11;
  v4 = v1[17];
  v8[0] = v1[16];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB18, &qword_246099D70);
}

uint64_t ObjectCaptureSessionFrameSPI.triangleMesh.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[24];
  v9 = v1[23];
  v10 = v2;
  v11 = v1[25];
  v3 = v11;
  v4 = v1[22];
  v8[0] = v1[21];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &unk_27EE3AB20, &qword_246099D78);
}

void *ObjectCaptureSessionFrameSPI.plane.getter()
{
  v1 = *(v0 + 416);
  v2 = v1;
  return v1;
}

uint64_t ObjectCaptureSessionFrameSPI.coverageVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[30];
  v9 = v1[29];
  v10 = v2;
  v11 = v1[31];
  v3 = v11;
  v4 = v1[28];
  v8[0] = v1[27];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

uint64_t ObjectCaptureSessionFrameSPI.maskingVoxelCloud.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[35];
  v9 = v1[34];
  v10 = v2;
  v11 = v1[36];
  v3 = v11;
  v4 = v1[33];
  v8[0] = v1[32];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_245F8E7A4(v8, &v7, &qword_27EE3AB10, &qword_246096678);
}

void *ObjectCaptureSessionFrameSPI.rawFeaturePoints.getter()
{
  v1 = *(v0 + 600);
  v2 = v1;
  return v1;
}

__n128 ObjectCaptureSessionFrameSPI.captureFactors.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = v2;
  result = *(v1 + 656);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 669);
  return result;
}

uint64_t sub_24606D5A4(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2890, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug tap position: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E5D4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E12D8;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606D8B8(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x80000002460A28B0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug plane detection: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E614;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1350;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606DBCC(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A28D0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug masking voxel: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E644;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E13C8;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606DEE0(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A28F0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug camera control: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E674;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1440;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E1F4(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2910, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug debug voxels: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E6A4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E14B8;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E508(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2930, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug tsdf depth: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E6D4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1530;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606E81C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A2950, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug surface geometry data: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E704;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E15A8;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606EB30(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000023, 0x80000002460A2980, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug coverage guide voxels: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E734;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1620;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606EE44(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000027, 0x80000002460A29B0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug explicit feedback enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E764;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1698;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F140(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A29E0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug auto capture enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E77C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1710;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F43C(uint64_t a1, char a2, char *a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = aBlock - v11;
  v13 = sub_245FA3234();
  v14 = *(v7 + 16);
  if (a2)
  {
    v14(v9, v13, v6);
    v15 = sub_2460918D4();
    v16 = sub_246091FC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x80000002460A2A10, aBlock);
      _os_log_impl(&dword_245F8A000, v15, v16, "ObjectCaptureSession.%{private}s: [SPI]removed capture cool down time adjustment.", v17, 0xCu);
      sub_245F8E6F4(v18);
      MEMORY[0x24C1989D0](v18, -1, -1);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14(v12, v13, v6);
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136380931;
      *(v21 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x80000002460A2A10, aBlock);
      *(v21 + 12) = 2050;
      *(v21 + 14) = a1;
      _os_log_impl(&dword_245F8A000, v19, v20, "ObjectCaptureSession.%{private}s: [SPI]adjusted capture cool down time: %{public}f", v21, 0x16u);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
  }

  v23 = *&a3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a1;
  *(v24 + 32) = a2 & 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_24607E7CC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1788;
  v26 = _Block_copy(aBlock);
  v27 = a3;

  dispatch_sync(v23, v26);
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606F844(uint64_t a1, char *a2)
{
  v40 = a2;
  v3 = sub_246091704();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245FA3234();
  v39 = v11;
  (*(v11 + 16))(v13, v14, v10);
  v38 = *(v4 + 16);
  v38(v9, a1, v3);
  v15 = sub_2460918D4();
  v37 = sub_246091FC4();
  if (os_log_type_enabled(v15, v37))
  {
    v16 = swift_slowAlloc();
    v36 = a1;
    v17 = v16;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v17 = 136381187;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A2A30, aBlock);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2081;
    sub_246077C40(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v33 = v15;
    v18 = sub_2460923D4();
    v34 = v10;
    v20 = v19;
    (*(v4 + 8))(v9, v3);
    v21 = sub_245F8D3C0(v18, v20, aBlock);
    v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v17 + 24) = v21;
    v22 = v33;
    _os_log_impl(&dword_245F8A000, v33, v37, "ObjectCaptureSession.%{private}s: [SPI]set replay video URL: %{private,mask.hash}s", v17, 0x20u);
    v23 = v35;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v23, -1, -1);
    v24 = v17;
    a1 = v36;
    MEMORY[0x24C1989D0](v24, -1, -1);

    (*(v39 + 8))(v13, v34);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    (*(v39 + 8))(v13, v10);
  }

  v25 = v40;
  v26 = *&v40[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v38(v6, a1, v3);
  v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  (*(v4 + 32))(v28 + v27, v6, v3);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24607E8B0;
  *(v29 + 24) = v28;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1800;
  v30 = _Block_copy(aBlock);
  v31 = v25;

  dispatch_sync(v26, v30);
  _Block_release(v30);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24606FD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  sub_245F97BAC(v6, a1 + v9, &qword_27EE3A498, &unk_246097EB8);
  return swift_endAccess();
}

uint64_t sub_24606FF0C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2A50, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set debug write all frame data: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E988;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1878;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070220(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A2A80, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set run arkit only: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E9B8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E18F0;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24607051C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2AA0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set voxel integration enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E9D0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1968;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070818(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2AD0, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set explicit feedback enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607E9E8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E19E0;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070B14(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A2B00, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set coverage enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607EA00;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1A58;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246070E10(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000016, 0x80000002460A2B20, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set automatic capture enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607EA18;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1AD0;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24607110C(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A2B40, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set mobileSfM enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607EA30;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1B48;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246071408(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A2B60, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set mobileSfM enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607EA48;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1BC0;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246071704(char a1, char *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA3234();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_245F8D3C0(0xD000000000000024, 0x80000002460A2B90, aBlock);
    *(v11 + 12) = 1026;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: [SPI]set Capture Rate Control enabled: %{BOOL,public}d", v11, 0x12u);
    sub_245F8E6F4(v12);
    MEMORY[0x24C1989D0](v12, -1, -1);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = *&a2[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24607EA60;
  *(v15 + 24) = v14;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E1C38;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *static ObjectCaptureSessionSPI.readHEICToShots(heicFolderURL:)(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectCaptureImageFolderReader(0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = ObjectCaptureImageFolderReader.__allocating_init(url:)(v9);
  v11 = (*(*v10 + 160))();
  type metadata accessor for SegmentIDConverter();
  v12 = sub_2460251F8();
  v13 = (*(*v10 + 184))();
  (*(*v12 + 120))(v13 & 1);
  if (v11)
  {

    sub_245F8E624(&qword_27EE3AB30, &qword_246099D80);
    result = swift_allocObject();
    result[2] = v11;
    result[3] = sub_24607EA90;
    result[4] = v12;
  }

  else
  {
    v15 = sub_245FA3234();
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_2460918D4();
    v17 = sub_246091FB4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[0] = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_245F8D3C0(0xD00000000000001FLL, 0x80000002460A2BC0, v20);
      _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Error reading PG samples!", v18, 0xCu);
      sub_245F8E6F4(v19);
      MEMORY[0x24C1989D0](v19, -1, -1);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

uint64_t static ObjectCaptureSessionSPI.makeSessionMetaDataForHEICBundle(bundleID:)@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x24C196640]();
  *a1 = 0x302E342E32;
  *(a1 + 8) = 0xE500000000000000;
  *(a1 + 16) = 0x6965685F6D6F7266;
  *(a1 + 24) = 0xEA00000000005F63;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_246071E88(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_246071EF4(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_246071F60(void *a1, uint64_t a2)
{
  v4 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_246072014(uint64_t a1, uint64_t a2)
{
  v4 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_246072090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_246092504();
  sub_246091B94();
  return sub_246092544();
}

uint64_t sub_2460720F0(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3AF30, type metadata accessor for ARError, &unk_24609B148);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24607215C(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3AF30, type metadata accessor for ARError, &unk_24609B148);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2460721C8(uint64_t a1)
{
  v2 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_246072234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void *sub_2460722B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3AD70, &qword_24609AD20);
  v10 = *(sub_246091834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_246091834() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_246072490(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&unk_27EE3AD90, "lK");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_246072594(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE39F58, &qword_24609AD40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

uint64_t sub_246072638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_245FC1BDC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_246074CB4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_246091834();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    v20 = *(v13 - 8);
    sub_24608199C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    sub_2460739C0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2460727D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
  v43 = v4;
  result = sub_246092374();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24608199C(v27 + v28 * v24, v47, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_246081A04(v29 + v28 * v24, v47, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      }

      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24608199C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_246072C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_246091834();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
  v37 = v4;
  result = sub_246092374();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_2460924F4();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
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

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_246072FC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
  v40 = v4;
  result = sub_246092374();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_246073380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
  result = sub_246092374();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v21 = *(*(v5 + 56) + v19);
      result = sub_2460924F4();
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
      *(*(v7 + 56) + v15) = v21;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2460735E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  sub_245F8E624(a3, a4);
  v43 = v8;
  result = sub_246092374();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

void sub_2460739C0(int64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2460921C4();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_246091B84();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_246073D04(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2460921C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2460924F4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_246091834() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_246073EB0(int64_t a1, uint64_t a2)
{
  v38 = sub_246091834();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_2460921C4();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_246077C40(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = sub_246091B84();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_2460741D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_246074CB4();
      goto LABEL_7;
    }

    sub_2460727D4(v17, a3 & 1);
    v24 = sub_245FC1BDC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_246074B18(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v14;

  return sub_24600CB08(a1, v22);
}

void sub_2460743B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2460755FC(&qword_27EE3AD78, &qword_24609AD28);
      goto LABEL_7;
    }

    sub_2460735E4(v17, a3 & 1, &qword_27EE3AD78, &qword_24609AD28);
    v23 = sub_245FC1BDC(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_2460095AC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_246092424();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_2460745A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_245FFF3EC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_246074FD8();
      goto LABEL_7;
    }

    sub_246072C74(v13, a3 & 1);
    v24 = sub_245FFF3EC(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_246091834();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_246074C08(v10, a2, a1, v16);
}

uint64_t sub_24607470C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_246075240();
    goto LABEL_7;
  }

  sub_246072FC0(result, a3 & 1);
  result = sub_245FC1BDC(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2460095AC(v14, v11, a1, v20);
}

unint64_t sub_2460748A8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245FFF3EC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2460754B0();
    result = v17;
    goto LABEL_8;
  }

  sub_246073380(v14, a3 & 1);
  result = sub_245FFF3EC(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

unint64_t sub_2460749D4(uint64_t a1, char a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = v6;
  v10 = *v6;
  result = sub_245FFF3EC(a1);
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
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_245FFA800();
    result = v19;
    goto LABEL_8;
  }

  sub_245FF9474(v16, a2 & 1);
  result = sub_245FFF3EC(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v7;
    if (v17)
    {
      v22 = (v21[7] + (result << 6));
      *v22 = a3;
      v22[1] = a4;
      v22[2] = a5;
      v22[3] = a6;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + (result << 6));
    *v23 = a3;
    v23[1] = a4;
    v23[2] = a5;
    v23[3] = a6;
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
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_246074B18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  result = sub_24608199C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_246074C08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_246091834();
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

char *sub_246074CB4()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_246091834();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
  v5 = *v0;
  v6 = sub_246092364();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_246081A04(v26 + v28, v37, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_24608199C(v29, *(v18 + 56) + v28, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_246074FD8()
{
  v1 = v0;
  v29 = sub_246091834();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
  v3 = *v0;
  v4 = sub_246092364();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_246075240()
{
  v1 = v0;
  v31 = sub_246091834();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
  v3 = *v0;
  v4 = sub_246092364();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2460754B0()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
  v2 = *v0;
  v3 = sub_246092364();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

id sub_2460755FC(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_246091834();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(a1, a2);
  v7 = *v2;
  v8 = sub_246092364();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
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

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_246075870(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_2460924F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_246075B98(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_246075964(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  result = sub_246092244();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2460924F4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_246075B98(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_246075964(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_246075CC4();
      result = v7;
      goto LABEL_12;
    }

    sub_246075E04(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_2460924F4();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_246075CC4()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  v2 = *v0;
  v3 = sub_246092234();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_246075E04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_245F8E624(&qword_27EE3AD48, &qword_24609ACF8);
  result = sub_246092244();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2460924F4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

void (*sub_246076004(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_246091834();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_24601B120(v6);
  v6[12] = sub_2460761D8(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_246076140;
}

void sub_246076140(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2460761D8(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_246091834();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(sub_245F8E624(&qword_27EE3ACE0, &unk_246098880) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_245FC1BDC(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_246074CB4();
      goto LABEL_21;
    }

    sub_2460727D4(v26, a3 & 1);
    v29 = sub_245FC1BDC(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_24608199C(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_246076508;
}

void sub_246076508(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_245F8E7A4(v5, v6, &qword_27EE3ACE0, &unk_246098880);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_24608199C(v9, v2[8], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_24608199C(v13, v14, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
        sub_246074B18(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_245F8E7A4(v5, v16, &qword_27EE3ACE0, &unk_246098880);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_24608199C(v9, v2[9], type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24608199C(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      goto LABEL_10;
    }
  }

  sub_245F8E744(v9, &qword_27EE3ACE0, &unk_246098880);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_2460739C0(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_245F8E744(v22, &qword_27EE3ACE0, &unk_246098880);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC5ErrorO2eeoiySbAE_AEtFZ_0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      if (v2 != 2)
      {
        goto LABEL_18;
      }

      if (v3 == 2)
      {
LABEL_21:
        v5 = 1;
        goto LABEL_24;
      }
    }

    else if (!v3)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_24601EC48(*a1);
    v5 = 0;
    goto LABEL_24;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v2 != 6)
      {
        goto LABEL_18;
      }

      if (v3 != 6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_21;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (v3 < 7)
  {
    goto LABEL_23;
  }

  v4 = v2;
  v5 = 1;
LABEL_24:
  sub_24601EC48(v3);
  sub_246077B44(v2);
  sub_246077B44(v3);
  return v5;
}

BOOL _s6CoreOC20ObjectCaptureSessionC5StateO2eeoiySbAE_AEtFZ_0(id *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 11)
  {
    if (v2 <= 8)
    {
      if (v2 == 7)
      {
        if (v3 == 7)
        {
          v4 = 1;
          v5 = 7;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v2 == 8)
      {
        if (v3 == 8)
        {
          v4 = 1;
          v5 = 8;
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    else
    {
      switch(v2)
      {
        case 9:
          if (v3 == 9)
          {
            v4 = 1;
            v5 = 9;
            goto LABEL_39;
          }

          goto LABEL_38;
        case 10:
          if (v3 == 10)
          {
            v4 = 1;
            v5 = 10;
            goto LABEL_39;
          }

          goto LABEL_38;
        case 11:
          if (v3 == 11)
          {
            v4 = 1;
            v5 = 11;
            goto LABEL_39;
          }

LABEL_38:
          sub_2460818E4(*a2);
          sub_2460818E4(v2);
          v4 = 0;
          v5 = v2;
          goto LABEL_39;
      }
    }

LABEL_37:
    if ((v3 - 7) < 0xB)
    {
      goto LABEL_38;
    }

    if (v2 <= 2)
    {
      switch(v2)
      {
        case 0:
          if (!v3)
          {
            goto LABEL_59;
          }

          goto LABEL_55;
        case 1:
          if (v3 != 1)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
        case 2:
          if (v3 != 2)
          {
            goto LABEL_55;
          }

          goto LABEL_59;
      }
    }

    else
    {
      if (v2 <= 4)
      {
        if (v2 != 3)
        {
          if (v3 != 4)
          {
            goto LABEL_55;
          }

LABEL_59:
          v4 = 1;
          goto LABEL_60;
        }

        if (v3 == 3)
        {
          goto LABEL_59;
        }

LABEL_55:
        v4 = 0;
LABEL_57:
        sub_24601EC48(*a1);
        sub_24601EC48(v2);
LABEL_60:
        sub_2460818E4(v3);
        sub_2460818E4(v3);
        sub_2460818E4(v3);
        sub_2460818E4(v2);
        sub_246077B44(v2);
        sub_246077B44(v3);
        sub_246077B30(v2);
        sub_246077B30(v3);
        v5 = v3;
        v3 = v2;
        goto LABEL_39;
      }

      if (v2 == 5)
      {
        if (v3 != 5)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }

      if (v2 == 6)
      {
        if (v3 != 6)
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }
    }

    v4 = v3 > 6;
    goto LABEL_57;
  }

  if (v2 > 14)
  {
    switch(v2)
    {
      case 15:
        if (v3 == 15)
        {
          v4 = 1;
          v5 = 15;
          goto LABEL_39;
        }

        goto LABEL_38;
      case 16:
        if (v3 == 16)
        {
          v4 = 1;
          v5 = 16;
          goto LABEL_39;
        }

        goto LABEL_38;
      case 17:
        if (v3 == 17)
        {
          v4 = 1;
          v5 = 17;
          goto LABEL_39;
        }

        goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v2 == 12)
  {
    if (v3 == 12)
    {
      v4 = 1;
      v5 = 12;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v2 == 13)
  {
    if (v3 == 13)
    {
      v4 = 1;
      v5 = 13;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v2 != 14)
  {
    goto LABEL_37;
  }

  if (v3 != 14)
  {
    goto LABEL_38;
  }

  v4 = 1;
  v5 = 14;
LABEL_39:
  sub_246077B30(v5);
  sub_246077B30(v3);
  return v4;
}

void sub_246076B44(int a1@<W0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float a4@<S1>)
{
  LODWORD(v4) = a1;
  v36 = a3;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fmaxf(powf((vmuls_lane_f32(vmuls_lane_f32(v36.f32[0], *v36.f32, 1), v36, 2) * 0.000000064) / 0.0083902, 0.33333), 0.004);
  *v12.i32 = v11 * OCProxySurfaceNumVoxelsAlongAxisInVoxelBlock();
  *&v13 = vmuls_lane_f32(0.5, v36, 2) / *v12.i32;
  v14.i64[0] = 0x3F0000003F000000;
  v14.i64[1] = 0x3F0000003F000000;
  v15.i64[0] = vdivq_f32(vmulq_f32(v36, v14), vdupq_lane_s32(v12, 0)).u64[0];
  v15.i64[1] = v13;
  v16 = vrndpq_f32(v15);
  v17 = *v16.i32 + *v16.i32;
  v16.i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
  *v16.i8 = vadd_f32(*v16.i8, *v16.i8);
  v18 = vmuls_lane_f32(v17 * *v16.i32, *v16.i8, 1);
  if ((LODWORD(v18) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 4295000000.0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v19 = v18;
  if (v18 >= 0x2710)
  {
    v19 = 10000;
  }

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = sub_245FA3174();
  (*(v8 + 16))(v10, v21, v7);
  v22 = sub_2460918D4();
  v23 = sub_246091FC4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = v7;
    v25 = v24;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v25 = 136381187;
    *(v25 + 4) = sub_245F8D3C0(0xD00000000000006ELL, 0x80000002460A4910, &v38);
    *(v25 + 12) = 1026;
    *(v25 + 14) = v20;
    *(v25 + 18) = 2082;
    v37 = v36;
    sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
    v35 = v4;
    sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850, MEMORY[0x277D84B08]);
    v26 = sub_246092404();
    v4 = sub_245F8D3C0(v26, v27, &v38);

    *(v25 + 20) = v4;
    LOBYTE(v4) = v35;
    _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Computed voxel integration capacity = %{public}u for the bounding box of size %{public}s", v25, 0x1Cu);
    v28 = v33;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v28, -1, -1);
    MEMORY[0x24C1989D0](v25, -1, -1);

    (*(v8 + 8))(v10, v34);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v29 = *sub_245F92808();
  v30 = *sub_24601EF58();
  v31 = *sub_24601EF64();
  *a2 = 1;
  *(a2 + 4) = 1;
  *(a2 + 16) = 0x100000004;
  *(a2 + 24) = a4;
  *(a2 + 28) = v20;
  *(a2 + 32) = 1;
  *(a2 + 36) = v11;
  *(a2 + 40) = 33;
  *(a2 + 44) = 0x3D4CCCCD3F83D70ALL;
  *(a2 + 52) = 1084227584;
  *(a2 + 64) = v36;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 644245094500000;
  *(a2 + 104) = v29;
  *(a2 + 108) = 0;
  *(a2 + 112) = 1;
  *(a2 + 116) = v30;
  *(a2 + 120) = v31;
  *(a2 + 124) = v4 & 1;
  *(a2 + 128) = 1048576000;
}

unint64_t sub_246076F68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_245F8E624(a2, a3);
    v5 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_245F8D968(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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

unint64_t sub_246077064(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEC0, &qword_24609AE50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&unk_27EE3AD00, &qword_24609ACD8);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3AEC0, &qword_24609AE50);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      result = sub_24608199C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_246077280(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_245F8E624(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_245F8E624(a4, a5);
    v14 = sub_246092384();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_245F8E7A4(v16, v12, a2, v27);
      result = sub_245FC1BDC(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_246091834();
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

unint64_t sub_246077460(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEB0, &qword_24609AE40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3AD68, &qword_24609AD18);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3AEB0, &qword_24609AE40);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_246077648(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AEA8, &qword_24609AE38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3AD60, &qword_24609AD10);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3AEA8, &qword_24609AE38);
      v11 = *v5;
      result = sub_245FFF3EC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_246091834();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_246077824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3AE78, &unk_24609AE10);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_245FFF3EC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t _s6CoreOC20ObjectCaptureSessionC24isCurrentDeviceSupportedSbvgZ_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24601F24C();
  if ((v4 & 1) == 0)
  {
    v5 = sub_245FA3174();
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_2460918D4();
    v7 = sub_246091FB4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136380675;
      *(v8 + 4) = sub_245F8D3C0(0xD000000000000018, 0x80000002460A4B00, &v12);
      _os_log_impl(&dword_245F8A000, v6, v7, "ObjectCaptureSession.%{private}s: The device is not supported on this device", v8, 0xCu);
      sub_245F8E6F4(v9);
      MEMORY[0x24C1989D0](v9, -1, -1);
      MEMORY[0x24C1989D0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

double sub_246077AC8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  return result;
}

void sub_246077B30(id result)
{
  if (result - 7 >= 0xB)
  {
    sub_246077B44(result);
  }
}

void sub_246077B44(id a1)
{
  if (a1 >= 7)
  {
  }
}

uint64_t sub_246077B9C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_246077BD4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isOverCaptureEnabled;
  swift_beginAccess();
  *(v1 + v2) = 1;
}

double sub_246077C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_246077C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_246077C90(uint64_t a1)
{
  *a1 = 0x200000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_246077CE4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v9 = sub_246091BD4();
  [v8 setDateFormat_];

  sub_2460917C4();
  v10 = sub_246091774();
  (*(v5 + 8))(v7, v4);
  v11 = [v8 stringFromDate_];

  v12 = sub_246091C04();
  v14 = v13;

  v15 = sub_245FA3174();
  (*(v1 + 16))(v3, v15, v0);

  v16 = sub_2460918D4();
  v17 = sub_246091FC4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4AA0, &v23);
    *(v18 + 12) = 2082;
    v20 = sub_245F8D3C0(v12, v14, &v23);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: pnp_measurement_window_start %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_246078034(uint64_t a1, void *a2, uint64_t a3)
{
  v193 = a2;
  v191 = a1;
  v204 = sub_2460918F4();
  v4 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v192 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v188 = &v175 - v7;
  MEMORY[0x28223BE20](v8);
  v186 = &v175 - v9;
  MEMORY[0x28223BE20](v10);
  v183 = &v175 - v11;
  MEMORY[0x28223BE20](v12);
  v182 = &v175 - v13;
  MEMORY[0x28223BE20](v14);
  v184 = &v175 - v15;
  MEMORY[0x28223BE20](v16);
  v177 = &v175 - v17;
  MEMORY[0x28223BE20](v18);
  v176 = &v175 - v19;
  MEMORY[0x28223BE20](v20);
  v178 = &v175 - v21;
  MEMORY[0x28223BE20](v22);
  v185 = &v175 - v23;
  MEMORY[0x28223BE20](v24);
  v187 = &v175 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v175 - v27;
  MEMORY[0x28223BE20](v29);
  v190 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v175 - v32;
  v34 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v175 - v38;
  v40 = sub_2460917D4();
  v196 = *(v40 - 8);
  v197 = v40;
  MEMORY[0x28223BE20](v40);
  v195 = &v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460917A4();
  v198 = a3;
  sub_245F8E7A4(a3, v39, &qword_27EE3A498, &unk_246097EB8);
  v42 = sub_246091704();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v39, 1, v42);
  v189 = v28;
  if (v44 == 1)
  {
    sub_245F8E744(v39, &qword_27EE3A498, &unk_246097EB8);
    v45 = 0;
    v46 = 0xE000000000000000;
  }

  else
  {
    v45 = sub_246091604();
    v46 = v47;
    (*(v43 + 8))(v39, v42);
  }

  v48 = type metadata accessor for MemoryLogger();
  v49 = *(v48 + 88);
  v181 = v48;
  v180 = v48 + 88;
  v179 = v49;
  v49(0xD00000000000002DLL, 0x80000002460A4A00);
  v50 = sub_245FA3174();
  v51 = *(v4 + 16);
  v199 = v50;
  v52 = v204;
  v201 = v51;
  v202 = v4 + 16;
  (v51)(v33);

  v53 = sub_2460918D4();
  v54 = sub_246091FC4();

  v55 = os_log_type_enabled(v53, v54);
  v203 = v4;
  v194 = v46;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v205[0] = v57;
    *v56 = 136381187;
    *(v56 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
    *(v56 + 12) = 2160;
    *(v56 + 14) = 1752392040;
    *(v56 + 22) = 2081;
    *(v56 + 24) = sub_245F8D3C0(v45, v46, v205);
    _os_log_impl(&dword_245F8A000, v53, v54, "ObjectCaptureSession.%{private}s: Snapshot URL: %{private,mask.hash}s", v56, 0x20u);
    swift_arrayDestroy();
    v58 = v57;
    v52 = v204;
    MEMORY[0x24C1989D0](v58, -1, -1);
    MEMORY[0x24C1989D0](v56, -1, -1);
  }

  v59 = *(v4 + 8);
  v59(v33, v52);
  sub_245F8E7A4(v198, v36, &qword_27EE3A498, &unk_246097EB8);
  v60 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_snapshotURL;
  v61 = v200;
  swift_beginAccess();
  sub_245F97BAC(v36, &v61[v60], &qword_27EE3A498, &unk_246097EB8);
  swift_endAccess();
  if ((_s6CoreOC20ObjectCaptureSessionC24isCurrentDeviceSupportedSbvgZ_0() & 1) == 0)
  {

    v65 = v192;
    v201(v192, v199, v52);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v205[0] = v69;
      *v68 = 136380675;
      *(v68 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      _os_log_impl(&dword_245F8A000, v66, v67, "ObjectCaptureSession.%{private}s: Unsupported device. Failed to initiate an ObjectCaptureSession!", v68, 0xCu);
      sub_245F8E6F4(v69);
      MEMORY[0x24C1989D0](v69, -1, -1);
      MEMORY[0x24C1989D0](v68, -1, -1);
    }

    v70 = v65;
    goto LABEL_34;
  }

  v62 = v199;
  if (v191)
  {
    OCMetalInitWithDevice();
  }

  v63 = v193;
  if (v193)
  {
    v64 = v193;
  }

  else
  {
    v71 = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    v63 = v193;
    v64 = v71;
  }

  v72 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager;
  v73 = *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager];
  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_motionManager] = v64;
  v74 = v63;
  v75 = v64;

  LOBYTE(v73) = [v75 isDeviceMotionAvailable];
  if ((v73 & 1) == 0)
  {

    v106 = v190;
    v201(v190, v62, v52);
    v107 = sub_2460918D4();
    v108 = sub_246091FB4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v205[0] = v110;
      *v109 = 136380675;
      *(v109 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v111 = "ObjectCaptureSession.%{private}s: The device-motion service is not available on this device!";
LABEL_32:
      _os_log_impl(&dword_245F8A000, v107, v108, v111, v109, 0xCu);
      sub_245F8E6F4(v110);
      MEMORY[0x24C1989D0](v110, -1, -1);
      MEMORY[0x24C1989D0](v109, -1, -1);
    }

LABEL_33:

    v70 = v106;
LABEL_34:
    v59(v70, v52);
    sub_24600CA6C();
    swift_allocError();
    *v112 = 0;
    swift_willThrow();
LABEL_35:
    v113 = v195;
    sub_246042FA0();
    (*(v196 + 8))(v113, v197);
    return;
  }

  v76 = *&v61[v72];
  if (!v76)
  {
    __break(1u);
    return;
  }

  type metadata accessor for MotionManager();
  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_internalMotionManager] = sub_245F8EB68(v76);

  v77 = v189;
  v201(v189, v62, v52);
  v78 = sub_2460918D4();
  v79 = sub_246091FC4();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v205[0] = v81;
    *v80 = 136380675;
    *(v80 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
    _os_log_impl(&dword_245F8A000, v78, v79, "ObjectCaptureSession.%{private}s: Initialize object-centric capture mode properties.", v80, 0xCu);
    sub_245F8E6F4(v81);
    v82 = v81;
    v61 = v200;
    MEMORY[0x24C1989D0](v82, -1, -1);
    MEMORY[0x24C1989D0](v80, -1, -1);
  }

  v59(v77, v52);
  type metadata accessor for VoxelIntegrationManager();
  sub_246090C38();
  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_voxelIntegrationManager] = v83;

  type metadata accessor for MaskingManager();
  v84 = sub_245F8FDD8(256, 192);
  if (!v84)
  {

    v106 = v188;
    v201(v188, v62, v52);
    v107 = sub_2460918D4();
    v108 = sub_246091FB4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v205[0] = v110;
      *v109 = 136380675;
      *(v109 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v111 = "ObjectCaptureSession.%{private}s: Failed to create masking manager!";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v85 = v84;
  v86 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager;
  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_maskingManager] = v84;
  swift_retain_n();

  v88 = (*(*v85 + 272))(v87);

  if ((v88 & 1) == 0)
  {

    v114 = v187;
    v115 = v62;
    v116 = v204;
    v201(v187, v115, v204);
    v117 = sub_2460918D4();
    v118 = sub_246091FB4();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v205[0] = v120;
      *v119 = 136380675;
      *(v119 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v121 = "ObjectCaptureSession.%{private}s: Failed to start masking manager!";
LABEL_41:
      _os_log_impl(&dword_245F8A000, v117, v118, v121, v119, 0xCu);
      sub_245F8E6F4(v120);
      MEMORY[0x24C1989D0](v120, -1, -1);
      MEMORY[0x24C1989D0](v119, -1, -1);
    }

LABEL_42:

    v59(v114, v116);
    sub_24600CA6C();
    swift_allocError();
    *v123 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  type metadata accessor for ExplicitFeedbackManager();
  sub_245FC6834(v206);
  v89 = sub_245FC684C(v206);
  if (!v89)
  {

    v114 = v186;
    v122 = v62;
    v116 = v204;
    v201(v186, v122, v204);
    v117 = sub_2460918D4();
    v118 = sub_246091FB4();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v205[0] = v120;
      *v119 = 136380675;
      *(v119 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v121 = "ObjectCaptureSession.%{private}s: Failed to create explicit feedback manager!";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v90 = v89;
  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_explicitFeedbackManager] = v89;
  swift_retain_n();

  v92 = (*(*v90 + 112))(v91);

  if ((v92 & 1) == 0)
  {

    v124 = v185;
    v125 = v62;
    v126 = v204;
    v201(v185, v125, v204);
    v127 = sub_2460918D4();
    v128 = sub_246091FB4();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v205[0] = v130;
      *v129 = 136380675;
      *(v129 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v131 = "ObjectCaptureSession.%{private}s: Failed to start explicit feedback manager!";
LABEL_47:
      _os_log_impl(&dword_245F8A000, v127, v128, v131, v129, 0xCu);
      sub_245F8E6F4(v130);
      MEMORY[0x24C1989D0](v130, -1, -1);
      MEMORY[0x24C1989D0](v129, -1, -1);
    }

LABEL_48:

    v59(v124, v126);
    sub_24600CA6C();
    swift_allocError();
    *v133 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  type metadata accessor for ImageScaler();
  v93 = sub_246082E34();
  if (!v93)
  {

    v124 = v183;
    v132 = v62;
    v126 = v204;
    v201(v183, v132, v204);
    v127 = sub_2460918D4();
    v128 = sub_246091FB4();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v205[0] = v130;
      *v129 = 136380675;
      *(v129 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v131 = "ObjectCaptureSession.%{private}s: Failed to create image scaler!";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  *&v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageScaler] = v93;
  v94 = v93;
  swift_retain_n();

  v96 = (*(*v94 + 160))(v95);
  v198 = v94;

  if ((v96 & 1) == 0)
  {
    v134 = v178;
    v135 = v62;
    v136 = v204;
    v201(v178, v135, v204);
    v137 = sub_2460918D4();
    v138 = sub_246091FB4();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v205[0] = v140;
      *v139 = 136380675;
      *(v139 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      _os_log_impl(&dword_245F8A000, v137, v138, "ObjectCaptureSession.%{private}s: Failed to start image scaler!", v139, 0xCu);
      sub_245F8E6F4(v140);
      MEMORY[0x24C1989D0](v140, -1, -1);
      MEMORY[0x24C1989D0](v139, -1, -1);
    }

    v59(v134, v136);
    sub_24600CA6C();
    swift_allocError();
    *v141 = 0;
    swift_willThrow();

    goto LABEL_35;
  }

  v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isHighQualityMacroModeSupported] = OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightOCMacroModeSupported();
  IsTimeOfFlightSensorType80 = OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightSensorType80();
  v61[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_isToFSensorTypePeridot] = IsTimeOfFlightSensorType80;
  v193 = v90;
  if (IsTimeOfFlightSensorType80)
  {
    v98 = v176;
    v99 = v62;
    v100 = v204;
    (v201)(v176, v99);
    v101 = sub_2460918D4();
    v102 = sub_246091FC4();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v205[0] = v104;
      *v103 = 136380675;
      *(v103 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v105 = "ObjectCaptureSession.%{private}s: ToF sensor type 80";
LABEL_54:
      _os_log_impl(&dword_245F8A000, v101, v102, v105, v103, 0xCu);
      sub_245F8E6F4(v104);
      MEMORY[0x24C1989D0](v104, -1, -1);
      MEMORY[0x24C1989D0](v103, -1, -1);
    }
  }

  else
  {
    v98 = v177;
    v142 = v62;
    v100 = v204;
    (v201)(v177, v142);
    v101 = sub_2460918D4();
    v102 = sub_246091FC4();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v205[0] = v104;
      *v103 = 136380675;
      *(v103 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
      v105 = "ObjectCaptureSession.%{private}s: ToF sensor type 74";
      goto LABEL_54;
    }
  }

  v143 = v98;
  v144 = v100;
  v59(v143, v100);
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v200;
  sub_246091984();

  v146 = v205[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v205[0] = 10;
  v147 = v145;
  sub_246091994();
  v205[0] = v146;
  sub_246036D70(v205);
  sub_246077B30(v146);
  v148 = v184;
  v201(v184, v199, v144);
  v149 = v147;
  v150 = sub_2460918D4();
  v151 = sub_246091FC4();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v205[0] = v153;
    *v152 = 136380931;
    *(v152 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, v205);
    *(v152 + 12) = 2082;
    sub_246091834();
    v194 = v85;
    sub_246077C40(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v154 = sub_2460923D4();
    v156 = sub_245F8D3C0(v154, v155, v205);

    *(v152 + 14) = v156;
    _os_log_impl(&dword_245F8A000, v150, v151, "ObjectCaptureSession.%{private}s: Session identifier: %{public}s", v152, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v153, -1, -1);
    MEMORY[0x24C1989D0](v152, -1, -1);

    v157 = v204;
    v158 = v184;
  }

  else
  {

    v158 = v148;
    v157 = v144;
  }

  v59(v158, v157);
  v159 = v199;
  v160 = *&v200[v86];
  if (v160)
  {
    v161 = *(*v160 + 176);
    v162 = v149;

    v161(v149, &off_2858E1C60);
  }

  *&v149[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_poseCorrectionTimerWorkItem] = sub_246043938();

  [*&v149[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession] _addObserver_];
  type metadata accessor for ObjectCaptureSessionSPI();
  v163 = swift_allocObject();
  v164 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_spi;
  swift_beginAccess();
  *&v149[v164] = v163;

  sub_24608FC70();
  OCSignPostsAriadneDbgCode();
  sub_24608FD30();
  sub_246091C74();
  v165 = kdebug_trace_string();

  *&v149[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_traceDebugId] = v165;
  sub_24608FC28();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  sub_24608FC88();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  sub_246077CE4();
  v166 = [objc_opt_self() defaultCenter];
  [v166 addObserver:v149 selector:sel_logThermalStateChange name:*MEMORY[0x277CCA600] object:0];

  v167 = v182;
  v168 = v159;
  v169 = v204;
  v201(v182, v168, v204);
  v170 = sub_2460918D4();
  v171 = sub_246091FC4();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v207 = v173;
    *v172 = 136380675;
    *(v172 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x80000002460A4A30, &v207);
    _os_log_impl(&dword_245F8A000, v170, v171, "ObjectCaptureSession.%{private}s: Session is created.", v172, 0xCu);
    sub_245F8E6F4(v173);
    MEMORY[0x24C1989D0](v173, -1, -1);
    MEMORY[0x24C1989D0](v172, -1, -1);
  }

  v59(v167, v169);
  v179(0xD000000000000023, 0x80000002460A4A70);

  v174 = v195;
  sub_246042FA0();
  (*(v196 + 8))(v174, v197);
}

void sub_246079A74(id result)
{
  if (result != 18)
  {
    sub_246077B30(result);
  }
}

uint64_t sub_246079A84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_246079B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_246079BC4()
{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x410))(&v2);
  if (v2 == 14)
  {
    sub_246077B30(0xE);
    sub_246077B30(0xE);
    *v1 = 1;
  }

  else
  {
    sub_246077B30(v2);
    sub_246077B30(0xE);
  }
}

void sub_246079C60()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_boundingBoxAnchor);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession);
    v7 = v5;
    [v6 removeAnchor_];
    v8 = sub_245FA3174();
    (*(v2 + 16))(v4, v8, v1);
    v9 = sub_2460918D4();
    v10 = sub_246091FC4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136380675;
      *(v11 + 4) = sub_245F8D3C0(0xD000000000000011, 0x80000002460A3140, &v14);
      _os_log_impl(&dword_245F8A000, v9, v10, "ObjectCaptureSession.%{private}s: Existing bounding box anchor removed.", v11, 0xCu);
      sub_245F8E6F4(v12);
      MEMORY[0x24C1989D0](v12, -1, -1);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_246079E60(uint64_t a1, int32x4_t a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v33 = vdupq_laneq_s32(a2, 2);
  v34 = vdupq_lane_s32(*a2.i8, 1);
  v8 = *&a2.i32[1] + -0.02;
  v31 = 0;

  v9 = 0;
  for (i = 3.4028e38; v6; v31 = v26)
  {
    while (1)
    {
LABEL_11:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = *(*(v2 + 56) + ((v9 << 9) | (8 * v12)));
      getRotatedPlaneTransform(_:)(v14, v13);
      v39 = __invert_f4(v38);
      v36 = vaddq_f32(v39.columns[3], vmlaq_f32(vmlaq_f32(vmulq_n_f32(v39.columns[0], *a2.i32), v34, v39.columns[1]), v33, v39.columns[2]));
      [(ARPlaneAnchor *)v13 center];
      v16 = vabds_f32(v15, v36.f32[0]);
      v17 = [(ARPlaneAnchor *)v13 planeExtent];
      [(ARPlaneExtent *)v17 width];
      v19 = v18;

      if ((v19 * 0.5) < v16)
      {
        goto LABEL_6;
      }

      *&v20 = v19 * 0.5;
      [(ARPlaneAnchor *)v13 center];
      v22 = vabds_f32(v21, v36.f32[2]);
      v23 = [(ARPlaneAnchor *)v13 planeExtent];
      [(ARPlaneExtent *)v23 height];
      v25 = v24;

      if ((v25 * 0.5) < v22)
      {
        goto LABEL_6;
      }

      v26 = v13;
      [(ARPlaneAnchor *)v26 transform];
      *&v28 = v27;
      if (v27 <= v8)
      {
        break;
      }

      v2 = v32;
LABEL_6:

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    [(ARPlaneAnchor *)v26 transform];
    v37 = v29;

    LODWORD(v30) = vsubq_f32(*&a2, v37).i32[1];
    v2 = v32;
    if (v30 >= i)
    {
      goto LABEL_6;
    }

    i = v30;
  }

LABEL_7:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24607A0F0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460917D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v9 = sub_246091BD4();
  [v8 setDateFormat_];

  sub_2460917C4();
  v10 = sub_246091774();
  (*(v5 + 8))(v7, v4);
  v11 = [v8 stringFromDate_];

  v12 = sub_246091C04();
  v14 = v13;

  v15 = sub_245FA3174();
  (*(v1 + 16))(v3, v15, v0);

  v16 = sub_2460918D4();
  v17 = sub_246091FC4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD000000000000017, 0x80000002460A48C0, &v23);
    *(v18 + 12) = 2082;
    v20 = sub_245F8D3C0(v12, v14, &v23);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: pnp_measurement_window_end %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24607A488()
{
  v1 = sub_2460917D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24607A53C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_2460917D4() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_24607A5E4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 15);
}

uint64_t sub_24607A688()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24607A6C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_arSession) configuration];
  if (v3)
  {
    v16 = v3;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (*(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8) & 1) == 0)
    {
      v5 = *(v1 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp);
      v6 = MEMORY[0x277D85000];
      v7 = v4;
      v8 = v5 + (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
      type metadata accessor for ObjectCaptureFrameEvent();
      v9 = (*((*v6 & *v2) + 0x90))(&v18 + 1);
      v10 = (*((*v6 & *v2) + 0xA8))(&v18, v9);
      v17 = v18;
      v11 = (*((*v6 & *v2) + 0xC0))(v10);
      v13 = v12;
      v14 = (*((*v6 & *v2) + 0xD8))();
      v15 = ObjectCaptureFrameEvent.__allocating_init(timestamp:gesture:scanStatus:position:boxTransform:)(&v18 + 1, &v17, v14, v8, v11, v13);
      [objc_msgSend(v7 recordingTechnique)];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24607A904(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) < 4)
  {
    return dword_246099B90[a1 - 1];
  }

  v7 = sub_245FA3174();
  (*(v3 + 16))(v5, v7, v2);
  v8 = sub_2460918D4();
  v9 = sub_246091FB4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_245F8D3C0(0xD000000000000036, 0x80000002460A4830, &v16);
    *(v10 + 12) = 2082;
    v15 = a1;
    type metadata accessor for UIDeviceOrientation(0);
    v12 = sub_246091C54();
    v14 = sub_245F8D3C0(v12, v13, &v16);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Unsupported device orientation detected: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v11, -1, -1);
    MEMORY[0x24C1989D0](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 1;
}

uint64_t sub_24607AB30(__n128 *a1, int a2, __n128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v86 = a3;
  v169 = *MEMORY[0x277D85DE8];
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v82 - v16;
  v18 = a1[1].n128_u64[0];
  if (!v18 || (v19 = a1[1].n128_u64[1]) == 0 || !a1[2].n128_u64[0])
  {
    v26 = sub_245FA3280();
    (*(v12 + 16))(v14, v26, v11);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v155 = v30;
      *v29 = 136380675;
      *(v29 + 4) = sub_245F8D3C0(0xD00000000000008FLL, 0x80000002460A43B0, &v155);
      _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Invalid depth, confidence or pointcloud input!", v29, 0xCu);
      sub_245F8E6F4(v30);
      MEMORY[0x24C1989D0](v30, -1, -1);
      MEMORY[0x24C1989D0](v29, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v20 = 0;
  v21 = a1[5].n128_u64[1];
  v23 = a1[7];
  v22 = a1[8];
  v24 = 1;
  v25 = a1[9];
  if (a2 <= 1)
  {
    if (!a2)
    {
      v168 = 0;
      v33 = *(v21 + 16);
      if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v86[4].n128_u8[0])
      {
        if (!HIDWORD(v33))
        {
          if (!OCPointCloudCreateWithRGB())
          {
            return v168;
          }

          return 0;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v75 = *v86;
      v76 = v86[1];
      v77 = v86[2];
      v78 = v86[3];
      v79 = a5[5];
      v159 = a5[4];
      v160 = v79;
      v161 = a5[6];
      v80 = a5[1];
      v155 = *a5;
      v156 = v80;
      v81 = a5[2];
      v158 = a5[3];
      v157 = v81;
      v162.n128_u32[0] = a6;
      v163 = v75;
      v164 = v76;
      v165 = v77;
      v166 = v78;
      if (HIDWORD(v33))
      {
        goto LABEL_91;
      }

      v60 = OCPointCloudCreateWithRGBAndPlaneClassification();
      goto LABEL_77;
    }

    if (a2 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a2 == 4)
  {
    goto LABEL_28;
  }

  if (a2 == 3)
  {
LABEL_16:
    v168 = 0;
    if ((a2 - 1) < 2)
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (a2 == 3)
    {
      if ((v20 & 1) == 0)
      {
LABEL_29:
        v82[3] = v24;
        v83 = v23;
        v84 = v22;
        v85 = v25;
        v32 = *(v21 + 16);
        if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v86[4].n128_u8[0])
        {
          sub_246081C68(&v155);
          if (a4[4])
          {
            goto LABEL_35;
          }
        }

        else
        {
          v69 = v86[2];
          v68 = v86[3];
          v71 = *v86;
          v70 = v86[1];
          v72 = a5[5];
          v137 = a5[4];
          v138 = v72;
          v139 = a5[6];
          v73 = a5[1];
          v133 = *a5;
          v134 = v73;
          v74 = a5[3];
          v135 = a5[2];
          v136 = v74;
          v140.n128_u32[0] = a6;
          v141 = v71;
          v142 = v70;
          v143 = v69;
          v144 = v68;
          sub_246081CAC(&v133);
          v165 = v143;
          v166 = v144;
          v167 = v145;
          v161 = v139;
          v162 = v140;
          v164 = v142;
          v163 = v141;
          v157 = v135;
          v158 = v136;
          v160 = v138;
          v159 = v137;
          v156 = v134;
          v155 = v133;
          if (a4[4])
          {
            goto LABEL_35;
          }
        }

        if ((v86[4].n128_u8[0] & 1) == 0)
        {
          v50 = a4[1];
          v51 = a4[2];
          v52 = a4[3];
          v54 = v86[2];
          v53 = v86[3];
          v56 = *v86;
          v55 = v86[1];
          v133 = *a4;
          v134 = v50;
          v135 = v51;
          v136 = v52;
          v137 = v56;
          v138 = v55;
          v139 = v54;
          v140 = v53;
          sub_245F97D8C(&v133);
          v152 = v139;
          v153 = v140;
          v154 = v141.n128_u8[0];
          v148 = v135;
          v149 = v136;
          v151 = v138;
          v150 = v137;
          v147 = v134;
          v146 = v133;
LABEL_60:
          v143 = v165;
          v144 = v166;
          v145 = v167;
          v139 = v161;
          v140 = v162;
          v141 = v163;
          v142 = v164;
          v135 = v157;
          v136 = v158;
          v137 = v159;
          v138 = v160;
          v133 = v155;
          v134 = v156;
          if (sub_246081C90(&v133) != 1)
          {
            v129 = v141;
            v130 = v142;
            v131 = v143;
            v132 = v144;
            v125 = v137;
            v126 = v138;
            v127 = v139;
            v128 = v140;
            v121 = v133;
            v122 = v134;
            v123 = v135;
            v124 = v136;
            v114 = v152;
            v115 = v153;
            v116.n128_u8[0] = v154;
            v110 = v148;
            v111 = v149;
            v112 = v150;
            v113 = v151;
            v108 = v146;
            v109 = v147;
            if (sub_245F97DBC(&v108) != 1)
            {
              if (!HIDWORD(v32))
              {
                if (!OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox())
                {
                  return v168;
                }

                return 0;
              }

              goto LABEL_88;
            }
          }

          v118 = v165;
          v119 = v166;
          v120 = v167;
          v114 = v161;
          v115 = v162;
          v116 = v163;
          v117 = v164;
          v110 = v157;
          v111 = v158;
          v112 = v159;
          v113 = v160;
          v108 = v155;
          v109 = v156;
          if (sub_246081C90(&v108) != 1)
          {
            v104 = v116;
            v105 = v117;
            v106 = v118;
            v107 = v119;
            v100 = v112;
            v101 = v113;
            v102 = v114;
            v103 = v115;
            v96 = v108;
            v97 = v109;
            v98 = v110;
            v99 = v111;
            if (HIDWORD(v32))
            {
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v59 = OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification();
LABEL_68:
            if (!v59)
            {
              return v168;
            }

            return 0;
          }

          v93 = v152;
          v94 = v153;
          v95 = v154;
          v89 = v148;
          v90 = v149;
          v91 = v150;
          v92 = v151;
          v87 = v146;
          v88 = v147;
          v57 = sub_245F97DBC(&v87);
          v58 = HIDWORD(v32);
          if (v57 == 1)
          {
            if (v58)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            v59 = OCPointCloudCreateFromSparseAndDenseDepth();
            goto LABEL_68;
          }

          if (v58)
          {
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
          }

          v60 = OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox();
LABEL_77:
          if (!v60)
          {
            return v168;
          }

          return 0;
        }

LABEL_35:
        sub_245F97B40(&v146);
        goto LABEL_60;
      }

      __break(1u);
LABEL_28:
      v168 = 0;
      v24 = 2;
      goto LABEL_29;
    }

    v34 = v19;
    v35 = v18;
    v36 = v34;
    v37 = sub_245FA3280();
    (*(v12 + 16))(v17, v37, v11);
    v38 = sub_2460918D4();
    v39 = sub_246091FB4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v155 = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_245F8D3C0(0xD00000000000008FLL, 0x80000002460A43B0, &v155);
      _os_log_impl(&dword_245F8A000, v38, v39, "ObjectCaptureSession.%{private}s: Invalid point type!", v40, 0xCu);
      sub_245F8E6F4(v41);
      MEMORY[0x24C1989D0](v41, -1, -1);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v17, v11);
    return 0;
  }

  if (a2 != 2)
  {
LABEL_15:
    v24 = 0;
    v20 = 1;
    goto LABEL_16;
  }

  v168 = 0;
LABEL_18:
  v83 = v23;
  v84 = v22;
  v85 = v25;
  if (a6 & 0x100000000) != 0 || *&a6 < 0.0 || (a5[7] & 1) != 0 || (v86[4].n128_u8[0])
  {
    sub_246081C68(&v155);
    if (a4[4])
    {
      goto LABEL_24;
    }
  }

  else
  {
    v62 = v86[2];
    v61 = v86[3];
    v64 = *v86;
    v63 = v86[1];
    v65 = a5[5];
    v137 = a5[4];
    v138 = v65;
    v139 = a5[6];
    v66 = a5[1];
    v133 = *a5;
    v134 = v66;
    v67 = a5[3];
    v135 = a5[2];
    v136 = v67;
    v140.n128_u32[0] = a6;
    v141 = v64;
    v142 = v63;
    v143 = v62;
    v144 = v61;
    sub_246081CAC(&v133);
    v165 = v143;
    v166 = v144;
    v167 = v145;
    v161 = v139;
    v162 = v140;
    v164 = v142;
    v163 = v141;
    v157 = v135;
    v158 = v136;
    v160 = v138;
    v159 = v137;
    v156 = v134;
    v155 = v133;
    if (a4[4])
    {
      goto LABEL_24;
    }
  }

  if ((v86[4].n128_u8[0] & 1) == 0)
  {
    v42 = a4[1];
    v43 = a4[2];
    v44 = a4[3];
    v46 = v86[2];
    v45 = v86[3];
    v48 = *v86;
    v47 = v86[1];
    v133 = *a4;
    v134 = v42;
    v135 = v43;
    v136 = v44;
    v137 = v48;
    v138 = v47;
    v139 = v46;
    v140 = v45;
    sub_245F97D8C(&v133);
    v152 = v139;
    v153 = v140;
    v154 = v141.n128_u8[0];
    v148 = v135;
    v149 = v136;
    v151 = v138;
    v150 = v137;
    v147 = v134;
    v146 = v133;
    goto LABEL_46;
  }

LABEL_24:
  sub_245F97B40(&v146);
LABEL_46:
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v139 = v161;
  v140 = v162;
  v141 = v163;
  v142 = v164;
  v135 = v157;
  v136 = v158;
  v137 = v159;
  v138 = v160;
  v133 = v155;
  v134 = v156;
  if (sub_246081C90(&v133) == 1 || (v129 = v141, v130 = v142, v131 = v143, v132 = v144, v125 = v137, v126 = v138, v127 = v139, v128 = v140, v121 = v133, v122 = v134, v123 = v135, v124 = v136, v114 = v152, v115 = v153, v116.n128_u8[0] = v154, v110 = v148, v111 = v149, v112 = v150, v113 = v151, v108 = v146, v109 = v147, sub_245F97DBC(&v108) == 1))
  {
    v118 = v165;
    v119 = v166;
    v120 = v167;
    v114 = v161;
    v115 = v162;
    v116 = v163;
    v117 = v164;
    v110 = v157;
    v111 = v158;
    v112 = v159;
    v113 = v160;
    v108 = v155;
    v109 = v156;
    if (sub_246081C90(&v108) != 1)
    {
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v107 = v119;
      v100 = v112;
      v101 = v113;
      v102 = v114;
      v103 = v115;
      v96 = v108;
      v97 = v109;
      v98 = v110;
      v99 = v111;
      if (!OCPointCloudCreateFromDenseDepthWithPlaneClassification())
      {
        return v168;
      }

      return 0;
    }

    v93 = v152;
    v94 = v153;
    v95 = v154;
    v89 = v148;
    v90 = v149;
    v91 = v150;
    v92 = v151;
    v87 = v146;
    v88 = v147;
    if (sub_245F97DBC(&v87) == 1)
    {
      if (!OCPointCloudCreateFromDenseDepth())
      {
        return v168;
      }

      return 0;
    }

    v49 = OCPointCloudCreateFromDenseDepthWithBoundingBox();
  }

  else
  {
    v49 = OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox();
  }

  if (v49)
  {
    return 0;
  }

  return v168;
}

uint64_t sub_24607BAF8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = sub_2460919F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_246091A64();
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v29[2] = a2[2];
  v29[3] = v14;
  v29[4] = a2[4];
  v15 = a2[1];
  v29[0] = *a2;
  v29[1] = v15;
  v25 = *&v3[OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_sessionQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v17 = *(a3 + 16);
  *(v16 + 32) = *a3;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a3 + 32);
  v18 = *(a1 + 48);
  *(v16 + 112) = *(a1 + 32);
  *(v16 + 128) = v18;
  *(v16 + 144) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v16 + 80) = *a1;
  *(v16 + 96) = v19;
  v20 = a2[4];
  *(v16 + 208) = a2[3];
  *(v16 + 224) = v20;
  v21 = a2[2];
  *(v16 + 176) = a2[1];
  *(v16 + 192) = v21;
  *(v16 + 160) = *a2;
  aBlock[4] = sub_24608239C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2BE8;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  sub_245F8E7A4(v29, v27, &qword_27EE3AB10, &qword_246096678);
  sub_246091A14();
  v27[0] = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v10, v22);
  _Block_release(v22);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v26);
}

void sub_24607BE5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*((*MEMORY[0x277D85000] & *v1) + 0x410))(v8);
  if (v8[0] == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_shotFlippableMap;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *(v1 + v4);
      *(v1 + v4) = 0x8000000000000000;
      sub_2460748A8(v3, v2, isUniquelyReferenced_nonNull_native);
      *(v1 + v4) = v7;
      swift_endAccess();
      if (*(v7 + 16) >= 0xAuLL)
      {
        v6 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_objectFlippable;
        swift_beginAccess();
        *(v1 + v6) = v3;
        sub_246037CFC();
      }
    }
  }

  else
  {
    sub_246077B30(v8[0]);
    sub_246077B30(0xF);
  }
}

uint64_t sub_24607BFC8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24607C00C()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_24607C06C(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_24607C0C4(void *a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v110 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  v17 = *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_frameIndex) = v19;
  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v19 + 0x888888888888888, 1) <= 0x888888888888888uLL)
  {
    *&v124 = v7;
    v125 = v2;
    v20 = sub_245FA3174();
    (*(v5 + 16))(v16, v20, v4);
    v21 = sub_2460918D4();
    v22 = sub_246091FC4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *&v123 = v5;
      v24 = v23;
      v25 = swift_slowAlloc();
      *&v129[0] = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v129);
      _os_log_impl(&dword_245F8A000, v21, v22, "ObjectCaptureSession.%{private}s: has been called.", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      v26 = v24;
      v5 = v123;
      MEMORY[0x24C1989D0](v26, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    v2 = v125;
    v7 = v124;
  }

  if ((*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__bypassAllAlgos) & 1) == 0)
  {
    v27 = [a1 smoothedSceneDepth];
    v125 = v2;
    if (v27 && (v28 = v27, v29 = [v27 depthMap], v28, v29))
    {
    }

    else
    {
      v30 = sub_245FA3174();
      (*(v5 + 16))(v13, v30, v4);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v124 = v7;
        v35 = v5;
        v36 = v34;
        *&v129[0] = v34;
        *v33 = 136380675;
        *(v33 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v129);
        _os_log_impl(&dword_245F8A000, v31, v32, "ObjectCaptureSession.%{private}s: No depth map is available in ARFrame!", v33, 0xCu);
        sub_245F8E6F4(v36);
        v37 = v36;
        v5 = v35;
        v7 = v124;
        MEMORY[0x24C1989D0](v37, -1, -1);
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      (*(v5 + 8))(v13, v4);
      v2 = v125;
    }

    v38 = [a1 depthConfidenceData];
    if (v38)
    {
    }

    else
    {
      v39 = sub_245FA3174();
      (*(v5 + 16))(v10, v39, v4);
      v40 = sub_2460918D4();
      v41 = sub_246091FB4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v124 = v7;
        v44 = v5;
        v45 = v43;
        *&v129[0] = v43;
        *v42 = 136380675;
        *(v42 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v129);
        _os_log_impl(&dword_245F8A000, v40, v41, "ObjectCaptureSession.%{private}s: No confidence map is available in ARFrame!", v42, 0xCu);
        sub_245F8E6F4(v45);
        v46 = v45;
        v5 = v44;
        v7 = v124;
        MEMORY[0x24C1989D0](v46, -1, -1);
        MEMORY[0x24C1989D0](v42, -1, -1);
      }

      (*(v5 + 8))(v10, v4);
    }

    v47 = &off_278E99000;
    v48 = [a1 capturedPointCloudData];
    if (v48 && (v49 = v48, v50 = [v48 depthPointCloud], v49, v50))
    {
    }

    else
    {
      v51 = sub_245FA3174();
      (*(v5 + 16))(v7, v51, v4);
      v52 = sub_2460918D4();
      v53 = sub_246091FB4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = v5;
        v56 = swift_slowAlloc();
        *&v129[0] = v56;
        *v54 = 136380675;
        *(v54 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4670, v129);
        _os_log_impl(&dword_245F8A000, v52, v53, "ObjectCaptureSession.%{private}s: No point cloud data is available in ARFrame!", v54, 0xCu);
        sub_245F8E6F4(v56);
        MEMORY[0x24C1989D0](v56, -1, -1);
        MEMORY[0x24C1989D0](v54, -1, -1);

        (*(v55 + 8))(v7, v4);
        v47 = &off_278E99000;
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }
    }

    v57 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp;
    if (*(v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_referenceTimestamp + 8) == 1)
    {
      [a1 timestamp];
      *v57 = v58;
      *(v57 + 8) = 0;
    }

    [a1 timestamp];
    if ((*(v57 + 8) & 1) == 0)
    {
      v60 = v59;
      v61 = *v57;
      v62 = [a1 capturedImage];
      v63 = [a1 camera];
      [v63 intrinsics];
      v133[0] = v64;
      v133[1] = v65;
      v133[2] = v66;

      sub_246035724(v62, v133);
      v67 = [a1 camera];
      [v67 intrinsics];
      v123 = v69;
      v124 = v68;
      v122 = v70;

      v71 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_intrinsicsFromLastFrame;
      v72 = v123;
      *v71 = v124;
      *(v71 + 16) = v72;
      *(v71 + 32) = v122;
      *(v71 + 48) = 0;
      v73 = [a1 camera];
      [v73 imageResolution];
      v75 = v74;

      v76 = v2 + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession_imageHeightFromLastFrame;
      *v76 = v75;
      *(v76 + 8) = 0;
      v77 = [a1 v47[267]];
      if (v77 && (v78 = v77, v79 = [v77 depthPointCloud], v78, v79))
      {
        v80 = sub_245FCCC80();
        sub_2460232B4(v79, v80 & 1, v129);

        v123 = v129[1];
        v124 = v129[0];
        v121 = v129[3];
        v122 = v129[2];
        v81 = *&v129[4];
      }

      else
      {
        v81 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
      }

      v82 = v60 - v61;
      v83 = [a1 camera];
      [v83 intrinsics];
      v119 = v85;
      v120 = v84;
      v118 = v86;

      v87 = [a1 camera];
      [v87 transform];
      v116 = v89;
      v117 = v88;
      v114 = v91;
      v115 = v90;

      v92 = [a1 camera];
      sub_24606656C(v129);

      v93 = v129[0];
      wideToDepthCameraTransform()(v94);
      v112 = v96;
      v113 = v95;
      v110 = v98;
      v111 = v97;
      v130 = 0;
      v99 = [a1 camera];
      v100 = [v99 calibrationData];

      v131 = 1;
      v132[0] = v120;
      v132[1] = v119;
      v132[2] = v118;
      v132[3] = v117;
      v132[4] = v116;
      v132[5] = v115;
      v132[6] = v114;
      LOBYTE(v132[7]) = v93;
      v132[8] = v113;
      v132[9] = v112;
      v132[10] = v111;
      v132[11] = v110;
      LOBYTE(v132[12]) = v130;
      *(&v132[12] + 1) = v100;
      memset(&v132[13], 0, 64);
      LOBYTE(v132[17]) = 1;
      DWORD1(v132[17]) = 1;
      v101 = [a1 capturedImage];
      v102 = [a1 smoothedSceneDepth];
      if (v102)
      {
        v103 = v102;
        v104 = [v102 depthMap];
      }

      else
      {
        v104 = 0;
      }

      v105 = [a1 depthConfidenceData];
      v127[0] = v124;
      v127[1] = v123;
      v127[2] = v122;
      v127[3] = v121;
      v128 = v81;
      v106 = [a1 v47[267]];
      v107 = [v106 depthPointCloud];

      memcpy(v126, v132, 0x118uLL);
      sub_24601E8F4(v132, v129);
      v108 = [a1 rawFeaturePoints];
      v109 = sub_245FCCC80();
      sub_246086648(v129, v126, v101, v104, v105, v127, v107, v108, v109 & 1, v82);
      memcpy(v126, v129, 0x191uLL);
      sub_246044F20(v126);
      sub_24601E950(v132);
      sub_245FCFE58(v129);
      return;
    }

LABEL_37:
    __break(1u);
  }
}

uint64_t sub_24607CBEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24607CC40(void *a1, void *a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  if (a1)
  {
    if (a2)
    {
      v39 = a1;
      v11 = a2;
      [v39 center];
      *v38 = v12;
      [v11 center];
      v14 = vsubq_f32(*v38, v13);
      v15 = vmulq_f32(v14, v14);
      if (sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)) <= 0.001)
      {

        v37 = v39;
      }

      else
      {
        v16 = sub_245FA3174();
        (*(v5 + 16))(v10, v16, v4);
        v17 = v39;
        v18 = sub_2460918D4();
        v19 = sub_246091FC4();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v41 = v39;
          *v20 = 136380931;
          *(v20 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4640, &v41);
          *(v20 + 12) = 2080;
          [v17 center];
          v40 = v21;
          v38[0] = v17;
          sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
          sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850, MEMORY[0x277D84B08]);
          v22 = sub_246092404();
          v24 = sub_245F8D3C0(v22, v23, &v41);

          *(v20 + 14) = v24;
          _os_log_impl(&dword_245F8A000, v18, v19, "ObjectCaptureSession.%{private}s: Updated plane with center %s", v20, 0x16u);
          v25 = v39;
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v25, -1, -1);
          MEMORY[0x24C1989D0](v20, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v10, v4);
      }
    }

    else
    {
      v26 = a1;
      v27 = sub_245FA3174();
      (*(v5 + 16))(v7, v27, v4);
      v28 = v26;
      v29 = sub_2460918D4();
      v30 = sub_246091FC4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v31 = 136380931;
        *(v31 + 4) = sub_245F8D3C0(0xD000000000000022, 0x80000002460A4640, &v41);
        *(v31 + 12) = 2080;
        [v28 center];
        v40 = v32;
        sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
        sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850, MEMORY[0x277D84B08]);
        v33 = sub_246092404();
        v35 = sub_245F8D3C0(v33, v34, &v41);

        *(v31 + 14) = v35;
        _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Updated plane with center %s", v31, 0x16u);
        v36 = v39;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v36, -1, -1);
        MEMORY[0x24C1989D0](v31, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_24607D158(void *a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245FA3174();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = sub_2460918D4();
  v15 = sub_246091FC4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v8;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_245F8D3C0(0xD000000000000028, 0x80000002460A4570, aBlock);
    *(v16 + 12) = 2082;
    sub_24606656C(&v38);
    v19 = sub_246091C54();
    v21 = v2;
    v22 = sub_245F8D3C0(v19, v20, aBlock);

    *(v16 + 14) = v22;
    v2 = v21;
    _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: ARCamera did change tracking state to %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v18, -1, -1);
    MEMORY[0x24C1989D0](v16, -1, -1);

    (*(v9 + 8))(v11, v31);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v13;
  aBlock[4] = sub_246082314;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2B48;
  v24 = _Block_copy(aBlock);
  v25 = v13;
  v26 = v2;
  v27 = v32;
  sub_246091A14();
  v38 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  v28 = v35;
  v29 = v37;
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v27, v28, v24);
  _Block_release(v24);
  (*(v36 + 8))(v28, v29);
  (*(v33 + 8))(v27, v34);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC21sessionWasInterruptedyySo9ARSessionCF_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245FA3174();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2460918D4();
  v6 = sub_246091FC4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4550, &v11);
    _os_log_impl(&dword_245F8A000, v5, v6, "ObjectCaptureSession.%{private}s: ARSession was interrupted!", v7, 0xCu);
    sub_245F8E6F4(v8);
    MEMORY[0x24C1989D0](v8, -1, -1);
    MEMORY[0x24C1989D0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC24sessionInterruptionEndedyySo9ARSessionCF_0()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245FA3174();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2460918D4();
  v6 = sub_246091FC4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4530, &v11);
    _os_log_impl(&dword_245F8A000, v5, v6, "ObjectCaptureSession.%{private}s: ARSession interruption ended!", v7, 0xCu);
    sub_245F8E6F4(v8);
    MEMORY[0x24C1989D0](v8, -1, -1);
    MEMORY[0x24C1989D0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t _s6CoreOC20ObjectCaptureSessionC34sessionShouldAttemptRelocalizationySbSo9ARSessionCF_0()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245FA3174();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2460918D4();
  v15 = sub_246091FC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28 = v2;
    v19 = v1;
    v20 = v18;
    aBlock[0] = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(0xD000000000000026, 0x80000002460A44D0, aBlock);
    _os_log_impl(&dword_245F8A000, v14, v15, "ObjectCaptureSession.%{private}s: has been called.", v17, 0xCu);
    sub_245F8E6F4(v20);
    v21 = v20;
    v1 = v19;
    v2 = v28;
    MEMORY[0x24C1989D0](v21, -1, -1);
    v22 = v17;
    v3 = v29;
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  aBlock[4] = sub_24608230C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858E2AF8;
  v24 = _Block_copy(aBlock);
  v25 = v1;
  sub_246091A14();
  v32 = MEMORY[0x277D84F90];
  sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v8, v5, v24);
  _Block_release(v24);
  (*(v3 + 8))(v5, v2);
  (*(v30 + 8))(v8, v31);

  return 1;
}

void sub_24607DE00(void *a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_246091A64();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245FA3174();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A44B0, aBlock);
    _os_log_impl(&dword_245F8A000, v13, v14, "ObjectCaptureSession.%{private}s: has been called.", v15, 0xCu);
    sub_245F8E6F4(v16);
    MEMORY[0x24C1989D0](v16, -1, -1);
    MEMORY[0x24C1989D0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  aBlock[0] = a1;
  v17 = a1;
  sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
  type metadata accessor for ARError(0);
  if (swift_dynamicCast())
  {
    v18 = v34;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v2;
    v19[4] = a1;
    aBlock[4] = sub_24608209C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858E2AA8;
    v20 = _Block_copy(aBlock);
    v21 = a1;
    v22 = v18;
    v23 = v2;
    sub_246091A14();
    v34 = MEMORY[0x277D84F90];
    sub_246077C40(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
    v24 = v29;
    v25 = v32;
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v7, v24, v20);
    _Block_release(v20);

    (*(v31 + 8))(v24, v25);
    (*(v28 + 8))(v7, v30);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = a1;
    sub_246091984();

    v27 = aBlock[0];
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = a1;
    v2;
    sub_246091994();
    aBlock[0] = v27;
    sub_246036D70(aBlock);
    sub_246077B30(v27);
  }
}

uint64_t sub_24607E36C(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245FA3174();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_245F8D3C0(0xD000000000000015, 0x80000002460A4490, &v16);
    *(v9 + 12) = 2082;
    v15 = a1;
    type metadata accessor for ARSessionState(0);
    v11 = sub_246091C54();
    v13 = sub_245F8D3C0(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: has been called. The session state did change to %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v10, -1, -1);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24607E59C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24607E794()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_24607E7CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__debugAdjustedCaptureCoolDown;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_24607E7EC()
{
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24607E8B0()
{
  v1 = *(sub_246091704() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24606FD4C(v2, v3);
}

uint64_t sub_24607E914@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC6CoreOC20ObjectCaptureSession__replayVideoURL;
  swift_beginAccess();
  return sub_245F8E7A4(v3 + v4, a1, &qword_27EE3A498, &unk_246097EB8);
}

double sub_24607EA90@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_245F8E624(&qword_27EE3ADA0, &qword_24609AD48);
  sub_245F97058(v14);
  v3 = *v14;
  v13 = *&v14[8];
  v4 = *&v14[24];
  v5 = v15;
  v6 = sub_245F9780C(v14);
  v7 = a1 + *(v2 + 64);
  v8 = a1 + *(v2 + 80);
  *a1 = v3;
  *(a1 + 8) = v13;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *v7 = v6;
  *(v7 + 8) = v9 & 1;
  *(v8 + 64) = v17;
  v10 = v16;
  *(v8 + 32) = v15;
  *(v8 + 48) = v10;
  result = *v14;
  v12 = *&v14[16];
  *v8 = *v14;
  *(v8 + 16) = v12;
  return result;
}

unint64_t sub_24607EB6C()
{
  result = qword_27EE3AB38;
  if (!qword_27EE3AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB38);
  }

  return result;
}

unint64_t sub_24607EBC8()
{
  result = qword_27EE3B1F0;
  if (!qword_27EE3B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3B1F0);
  }

  return result;
}

unint64_t sub_24607EC20()
{
  result = qword_27EE3AB50;
  if (!qword_27EE3AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB50);
  }

  return result;
}

unint64_t sub_24607EC78()
{
  result = qword_27EE3AB58;
  if (!qword_27EE3AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB58);
  }

  return result;
}

void sub_24607ECD4(uint64_t a1)
{
  sub_246082B24(319, &qword_27EE3AB68, &type metadata for ObjectCaptureSession.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_246082B24(319, &qword_27EE3AB70, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_246091834();
      if (v3 <= 0x3F)
      {
        sub_2460809D4(319, &qword_27EE3A4C8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of ObjectCaptureSession.startCapturing(inside:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x528);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7) & 1;
}

uint64_t dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x530);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  v8 = v2;
  return v3(v7) & 1;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Configuration(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24607F818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24607F874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_24607F8C4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24607F8F4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 7;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24607F918(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFED && *(a1 + 8))
  {
    return (*a1 + 2147483630);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 7;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 10;
  if (v5 >= 0xC)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24607F97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEE)
  {
    *result = 0;
    *result = a2 - 2147483630;
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

void *sub_24607F9CC(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFF8)
  {
    v2 = -2147483641;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 6;
  }

  *result = v2 + a2;
  return result;
}

uint64_t sub_24607FA04(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24607FA28(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24607FA40(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24607FA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1264))
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

uint64_t sub_24607FAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1256) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1264) = 1;
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

    *(result + 1264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24607FC5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 280))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 200);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24607FCB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 200) = a2;
    }
  }

  return result;
}

__n128 sub_24607FD64(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_24607FD90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24607FDEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 sub_24607FE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24607FE90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24607FED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24607FF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_246080034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_246091834();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2460800EC(uint64_t a1)
{
  sub_246091834();
  if (v1 <= 0x3F)
  {
    sub_245FA30EC(319, &qword_27EE3AB78, 0x277CE52B8);
    if (v2 <= 0x3F)
    {
      sub_246080200(319, &qword_27EE3AB80, &qword_27EE3AB88, 0x277CE52B0);
      if (v3 <= 0x3F)
      {
        type metadata accessor for simd_float4x4(319);
        if (v4 <= 0x3F)
        {
          sub_246080258(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_246080200(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_245FA30EC(255, a3, a4);
    v5 = sub_2460920F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_246080258(uint64_t a1)
{
  if (!qword_27EE3AB90)
  {
    sub_2460802B4();
    v1 = sub_2460924D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3AB90);
    }
  }
}

unint64_t sub_2460802B4()
{
  result = qword_27EE3AB98;
  if (!qword_27EE3AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB98);
  }

  return result;
}

uint64_t sub_246080308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_246080350(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Metadata(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ObjectCaptureSession.Metadata(_WORD *result, int a2, int a3)
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

__n128 sub_246080488(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24608049C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_2460804E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_246080538(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_246080544(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24608058C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2460805F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 392);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2460806C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 392) = (a2 - 1);
  }

  else
  {
    v7 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_246080770(uint64_t a1)
{
  sub_2460809D4(319, &qword_27EE3ABA0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_246082B24(319, &qword_27EE3ABA8, &type metadata for ObjectCaptureSession.Metadata.Shot.Object, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_246082B24(319, &qword_27EE3ABB0, &type metadata for ObjectCaptureSession.Metadata.Shot.Scene, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_246082B24(319, &qword_27EE3ABB8, &type metadata for ObjectCaptureSession.Metadata.Shot.CaptureMode, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2460809D4(319, &unk_27EE3ABC0, type metadata accessor for CMAcceleration, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_246080200(319, &qword_27EE39FB8, &qword_27EE3ABD0, 0x277CE5320);
            if (v6 <= 0x3F)
            {
              sub_246082B24(319, &qword_27EE39FD8, &type metadata for ObjectCaptureSession.Frame.Feedback, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_2460809D4(319, &unk_27EE3ABE0, type metadata accessor for TemporalDepthPointCloud, MEMORY[0x277D83940]);
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

void sub_2460809D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_246080A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 376);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_246080A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 376) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_246080B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_246080B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 145))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_246080BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

__n128 sub_246080C68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_246080C8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246080CAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
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

  *(result + 73) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.CaptureOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.CaptureOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_246080DC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_246080E10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 225))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246080E30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
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
    *(result + 224) = 0;
    *result = (a2 - 1);
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

  *(result + 225) = v3;
  return result;
}

uint64_t sub_24608114C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 680);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_246081194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 680) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2460817B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246081804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2460818C8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_2460818E4(id result)
{
  if (result - 7 >= 0xB)
  {
    return sub_24601EC48(result);
  }

  return result;
}

_BYTE *sub_246081904@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a2 = v8;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}