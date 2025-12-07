uint64_t sub_1002774DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100277544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002775A4()
{
  result = qword_1005920A0;
  if (!qword_1005920A0)
  {
    result = swift_getWitnessTable("M;\n", &type metadata for NANAttribute.Cluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005920A0);
  }

  return result;
}

unint64_t sub_1002775F8()
{
  result = qword_1005920A8;
  if (!qword_1005920A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMasterRank, &type metadata for NANMasterRank, v0, v1);
    atomic_store(result, &qword_1005920A8);
  }

  return result;
}

unint64_t sub_10027764C()
{
  result = qword_1005920B8;
  if (!qword_1005920B8)
  {
    result = swift_getWitnessTable(byte_1004AB8FC, &type metadata for NANAttribute.ServiceIDList.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005920B8);
  }

  return result;
}

unint64_t sub_1002776A0()
{
  result = qword_1005920C8;
  if (!qword_1005920C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005920C0, &unk_10049F800);
    v4[0] = sub_100277724();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005920C8);
  }

  return result;
}

unint64_t sub_100277724()
{
  result = qword_1005920D0;
  if (!qword_1005920D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANServiceName.Hash, &type metadata for NANServiceName.Hash, v0, v1);
    atomic_store(result, &qword_1005920D0);
  }

  return result;
}

double sub_100277778(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_100277790(result, a2, a3, BYTE2(a3) & 1);
  }

  return v3;
}

double sub_100277790(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_10000AB0C(result, a2);
  }

  else
  {
  }

  return v4;
}

unint64_t sub_1002777F8()
{
  result = qword_1005920D8;
  if (!qword_1005920D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_1005920D8);
  }

  return result;
}

uint64_t sub_10027784C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100277894()
{
  result = qword_1005920E0;
  if (!qword_1005920E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, v0, v1);
    atomic_store(result, &qword_1005920E0);
  }

  return result;
}

unint64_t sub_1002778E8()
{
  result = qword_10058E3A0;
  if (!qword_10058E3A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058E398, &qword_100489498);
    v4[0] = sub_10008A490();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058E3A0);
  }

  return result;
}

unint64_t sub_10027796C()
{
  result = qword_1005920F0;
  if (!qword_1005920F0)
  {
    result = swift_getWitnessTable(byte_1004AB8AC, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005920F0);
  }

  return result;
}

unint64_t sub_1002779C0()
{
  result = qword_1005920F8;
  if (!qword_1005920F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_1005920F8);
  }

  return result;
}

unint64_t sub_100277A44()
{
  result = qword_100592108;
  if (!qword_100592108)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.RangeLimit, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit, v0, v1);
    atomic_store(result, &qword_100592108);
  }

  return result;
}

unint64_t sub_100277A98()
{
  result = qword_100592118;
  if (!qword_100592118)
  {
    result = swift_getWitnessTable("=<\n", &type metadata for NANAttribute.WLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592118);
  }

  return result;
}

unint64_t sub_100277B24()
{
  result = qword_100592120;
  if (!qword_100592120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailability, &type metadata for DeprecatedNANAvailability, v0, v1);
    atomic_store(result, &qword_100592120);
  }

  return result;
}

unint64_t sub_100277B78()
{
  result = qword_100592128;
  if (!qword_100592128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.WLANInfrastructure.DeviceRole, &type metadata for NANAttribute.WLANInfrastructure.DeviceRole, v0, v1);
    atomic_store(result, &qword_100592128);
  }

  return result;
}

unint64_t sub_100277BCC()
{
  result = qword_100592138;
  if (!qword_100592138)
  {
    result = swift_getWitnessTable(byte_1004AB80C, &type metadata for NANAttribute.P2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592138);
  }

  return result;
}

unint64_t sub_100277C20()
{
  result = qword_100592140;
  if (!qword_100592140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_100592140);
  }

  return result;
}

unint64_t sub_100277C74()
{
  result = qword_100592150;
  if (!qword_100592150)
  {
    result = swift_getWitnessTable(byte_1004AB7BC, &type metadata for NANAttribute.IBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592150);
  }

  return result;
}

unint64_t sub_100277D00()
{
  result = qword_100592160;
  if (!qword_100592160)
  {
    result = swift_getWitnessTable("-=\n", &type metadata for NANAttribute.Mesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592160);
  }

  return result;
}

unint64_t sub_100277E0C()
{
  result = qword_100592170;
  if (!qword_100592170)
  {
    result = swift_getWitnessTable("}=\n", &type metadata for NANAttribute.FurtherServiceDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592170);
  }

  return result;
}

unint64_t sub_100277E60()
{
  result = qword_100592180;
  if (!qword_100592180)
  {
    result = swift_getWitnessTable(byte_1004AB6CC, &type metadata for NANAttribute.FurtherAvailabilityMap.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592180);
  }

  return result;
}

unint64_t sub_100277EB4()
{
  result = qword_100592190;
  if (!qword_100592190)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592188, &qword_10049F850);
    v4[0] = sub_100277F38();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100592190);
  }

  return result;
}

unint64_t sub_100277F38()
{
  result = qword_100592198;
  if (!qword_100592198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailabilityEntry, &type metadata for DeprecatedNANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_100592198);
  }

  return result;
}

unint64_t sub_100277F8C()
{
  result = qword_1005921A8;
  if (!qword_1005921A8)
  {
    result = swift_getWitnessTable(byte_1004AB67C, &type metadata for NANAttribute.Ranging.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005921A8);
  }

  return result;
}

unint64_t sub_100277FE0()
{
  result = qword_1005921B8;
  if (!qword_1005921B8)
  {
    result = swift_getWitnessTable("m>\n", &type metadata for NANAttribute.ClusterDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005921B8);
  }

  return result;
}

unint64_t sub_100278034()
{
  result = qword_1005921C8;
  if (!qword_1005921C8)
  {
    result = swift_getWitnessTable(byte_1004AB5DC, &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005921C8);
  }

  return result;
}

unint64_t sub_100278088()
{
  result = qword_1005921E0;
  if (!qword_1005921E0)
  {
    result = swift_getWitnessTable("\r?\n", &type metadata for NANAttribute.DeviceCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005921E0);
  }

  return result;
}

unint64_t sub_1002780DC()
{
  result = qword_1005921E8;
  if (!qword_1005921E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapIDs, &type metadata for NANMapIDs, v0, v1);
    atomic_store(result, &qword_1005921E8);
  }

  return result;
}

unint64_t sub_100278130()
{
  result = qword_1005921F0;
  if (!qword_1005921F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, v0, v1);
    atomic_store(result, &qword_1005921F0);
  }

  return result;
}

unint64_t sub_100278184()
{
  result = qword_1005921F8;
  if (!qword_1005921F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_1005921F8);
  }

  return result;
}

unint64_t sub_1002781D8()
{
  result = qword_100592200;
  if (!qword_100592200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_100592200);
  }

  return result;
}

unint64_t sub_10027822C()
{
  result = qword_100592208;
  if (!qword_100592208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100592208);
  }

  return result;
}

unint64_t sub_100278280()
{
  result = qword_100592218;
  if (!qword_100592218)
  {
    result = swift_getWitnessTable("]?\n", &type metadata for NANAttribute.DeviceCapabilityExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592218);
  }

  return result;
}

unint64_t sub_1002782D4()
{
  result = qword_100592230;
  if (!qword_100592230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANReasonCode, &type metadata for NANReasonCode, v0, v1);
    atomic_store(result, &qword_100592230);
  }

  return result;
}

unint64_t sub_100278328()
{
  result = qword_100592238;
  if (!qword_100592238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_100592238);
  }

  return result;
}

unint64_t sub_10027837C()
{
  result = qword_100592240;
  if (!qword_100592240)
  {
    result = swift_getWitnessTable("\ti\v", &type metadata for NANServiceInfo, v0, v1);
    atomic_store(result, &qword_100592240);
  }

  return result;
}

unint64_t sub_1002783D0()
{
  result = qword_100592248;
  if (!qword_100592248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_100592248);
  }

  return result;
}

unint64_t sub_100278424()
{
  result = qword_100592260;
  if (!qword_100592260)
  {
    result = swift_getWitnessTable(byte_1004AB4EC, &type metadata for NANAttribute.Availability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592260);
  }

  return result;
}

unint64_t sub_100278478()
{
  result = qword_100592268;
  if (!qword_100592268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100592268);
  }

  return result;
}

unint64_t sub_1002784CC()
{
  result = qword_100592278;
  if (!qword_100592278)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592270, &qword_10049F8B0);
    v4[0] = sub_100278550();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100592278);
  }

  return result;
}

unint64_t sub_100278550()
{
  result = qword_100592280;
  if (!qword_100592280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry, &type metadata for NANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_100592280);
  }

  return result;
}

unint64_t sub_1002785DC()
{
  result = qword_100592290;
  if (!qword_100592290)
  {
    result = swift_getWitnessTable(byte_1004AB49C, &type metadata for NANAttribute.DataCluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592290);
  }

  return result;
}

unint64_t sub_100278630()
{
  result = qword_100592298;
  if (!qword_100592298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100592298);
  }

  return result;
}

unint64_t sub_100278684()
{
  result = qword_1005922A8;
  if (!qword_1005922A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005922A0, &qword_10049F8C0);
    v4[0] = sub_100278708();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005922A8);
  }

  return result;
}

unint64_t sub_100278708()
{
  result = qword_1005922B0;
  if (!qword_1005922B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANScheduleEntry, &type metadata for NANScheduleEntry, v0, v1);
    atomic_store(result, &qword_1005922B0);
  }

  return result;
}

unint64_t sub_10027875C()
{
  result = qword_1005922C8;
  if (!qword_1005922C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_1005922C8);
  }

  return result;
}

unint64_t sub_1002787B0()
{
  result = qword_1005922D8;
  if (!qword_1005922D8)
  {
    result = swift_getWitnessTable("M@\n", &type metadata for NANAttribute.DeviceLinkQoS.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005922D8);
  }

  return result;
}

unint64_t sub_100278804()
{
  result = qword_1005922E0;
  if (!qword_1005922E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_1005922E0);
  }

  return result;
}

unint64_t sub_100278858()
{
  result = qword_1005922E8;
  if (!qword_1005922E8)
  {
    result = swift_getWitnessTable("ݿ\n", &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_1005922E8);
  }

  return result;
}

unint64_t sub_1002788AC()
{
  result = qword_1005922F0;
  if (!qword_1005922F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_1005922F0);
  }

  return result;
}

unint64_t sub_100278900()
{
  result = qword_100592308;
  if (!qword_100592308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Control, &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100592308);
  }

  return result;
}

unint64_t sub_100278954()
{
  result = qword_100592310;
  if (!qword_100592310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100592310);
  }

  return result;
}

unint64_t sub_1002789A8()
{
  result = qword_100592320;
  if (!qword_100592320)
  {
    result = swift_getWitnessTable(byte_1004AB3FC, &type metadata for NANAttribute.ElementContainer.HTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592320);
  }

  return result;
}

unint64_t sub_1002789FC()
{
  result = qword_100592330;
  if (!qword_100592330)
  {
    result = swift_getWitnessTable(byte_1004AB3AC, &type metadata for NANAttribute.ElementContainer.HTInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592330);
  }

  return result;
}

unint64_t sub_100278A50()
{
  result = qword_100592340;
  if (!qword_100592340)
  {
    result = swift_getWitnessTable("=A\n", &type metadata for NANAttribute.ElementContainer.VHTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592340);
  }

  return result;
}

unint64_t sub_100278AA4()
{
  result = qword_100592350;
  if (!qword_100592350)
  {
    result = swift_getWitnessTable(byte_1004AB30C, &type metadata for NANAttribute.ElementContainer.VHTOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592350);
  }

  return result;
}

unint64_t sub_100278AF8()
{
  result = qword_100592360;
  if (!qword_100592360)
  {
    result = swift_getWitnessTable(byte_1004AB2BC, &type metadata for NANAttribute.ElementContainer.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592360);
  }

  return result;
}

unint64_t sub_100278B4C()
{
  result = qword_100592370;
  if (!qword_100592370)
  {
    result = swift_getWitnessTable("-B\n", &type metadata for NANAttribute.ElementContainer.ElementIDExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592370);
  }

  return result;
}

unint64_t sub_100278BA0()
{
  result = qword_100592380;
  if (!qword_100592380)
  {
    result = swift_getWitnessTable("}B\n", &type metadata for NANAttribute.ElementContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592380);
  }

  return result;
}

unint64_t sub_100278BF4()
{
  result = qword_100592388;
  if (!qword_100592388)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.HTCapabilities, &type metadata for NANAttribute.ElementContainer.HTCapabilities, v0, v1);
    atomic_store(result, &qword_100592388);
  }

  return result;
}

unint64_t sub_100278C48()
{
  result = qword_100592390;
  if (!qword_100592390)
  {
    result = swift_getWitnessTable("ղ\n", &type metadata for NANAttribute.ElementContainer.HTInformation, v0, v1);
    atomic_store(result, &qword_100592390);
  }

  return result;
}

unint64_t sub_100278C9C()
{
  result = qword_100592398;
  if (!qword_100592398)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTCapabilities, &type metadata for NANAttribute.ElementContainer.VHTCapabilities, v0, v1);
    atomic_store(result, &qword_100592398);
  }

  return result;
}

unint64_t sub_100278CF0()
{
  result = qword_1005923A0;
  if (!qword_1005923A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTOperation, &type metadata for NANAttribute.ElementContainer.VHTOperation, v0, v1);
    atomic_store(result, &qword_1005923A0);
  }

  return result;
}

unint64_t sub_100278D44()
{
  result = qword_1005923A8;
  if (!qword_1005923A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VendorSpecific, &type metadata for NANAttribute.ElementContainer.VendorSpecific, v0, v1);
    atomic_store(result, &qword_1005923A8);
  }

  return result;
}

unint64_t sub_100278D98()
{
  result = qword_1005923B0;
  if (!qword_1005923B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.ElementIDExtension, &type metadata for NANAttribute.ElementContainer.ElementIDExtension, v0, v1);
    atomic_store(result, &qword_1005923B0);
  }

  return result;
}

unint64_t sub_100278DEC()
{
  result = qword_1005923B8;
  if (!qword_1005923B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANOperatingChannelInformation, &type metadata for NonNANOperatingChannelInformation, v0, v1);
    atomic_store(result, &qword_1005923B8);
  }

  return result;
}

unint64_t sub_100278E40()
{
  result = qword_1005923C0;
  if (!qword_1005923C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANBeaconInformation, &type metadata for NonNANBeaconInformation, v0, v1);
    atomic_store(result, &qword_1005923C0);
  }

  return result;
}

unint64_t sub_100278E94()
{
  result = qword_1005923D0;
  if (!qword_1005923D0)
  {
    result = swift_getWitnessTable(byte_1004AB1CC, &type metadata for NANAttribute.ExtendedP2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005923D0);
  }

  return result;
}

unint64_t sub_100278EE8()
{
  result = qword_1005923E0;
  if (!qword_1005923E0)
  {
    result = swift_getWitnessTable(byte_1004AB17C, &type metadata for NANAttribute.ExtendedIBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005923E0);
  }

  return result;
}

unint64_t sub_100278F3C()
{
  result = qword_1005923F0;
  if (!qword_1005923F0)
  {
    result = swift_getWitnessTable("mC\n", &type metadata for NANAttribute.ExtendedMesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005923F0);
  }

  return result;
}

unint64_t sub_100278F90()
{
  result = qword_100592400;
  if (!qword_100592400)
  {
    result = swift_getWitnessTable(byte_1004AB0DC, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592400);
  }

  return result;
}

unint64_t sub_100278FE4()
{
  result = qword_100592410;
  if (!qword_100592410)
  {
    result = swift_getWitnessTable("\rD\n", &type metadata for NANAttribute.FineTimingMeasurementRangeReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592410);
  }

  return result;
}

unint64_t sub_100279038()
{
  result = qword_100592420;
  if (!qword_100592420)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592418, &qword_10049F940);
    v4[0] = sub_1002790BC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100592420);
  }

  return result;
}

unint64_t sub_1002790BC()
{
  result = qword_100592428;
  if (!qword_100592428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FineTimingMeasurementRangeReport.Entry, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry, v0, v1);
    atomic_store(result, &qword_100592428);
  }

  return result;
}

unint64_t sub_100279110()
{
  result = qword_100592438;
  if (!qword_100592438)
  {
    result = swift_getWitnessTable("]D\n", &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592438);
  }

  return result;
}

unint64_t sub_100279164()
{
  result = qword_100592440;
  if (!qword_100592440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANCipherSuite, &type metadata for NANCipherSuite, v0, v1);
    atomic_store(result, &qword_100592440);
  }

  return result;
}

unint64_t sub_1002791B8()
{
  result = qword_100592450;
  if (!qword_100592450)
  {
    result = swift_getWitnessTable(byte_1004AAFEC, &type metadata for NANAttribute.CipherSuiteInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592450);
  }

  return result;
}

unint64_t sub_10027920C()
{
  result = qword_100592458;
  if (!qword_100592458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100592458);
  }

  return result;
}

unint64_t sub_100279260()
{
  result = qword_100592468;
  if (!qword_100592468)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592460, &qword_10049F958);
    v4[0] = sub_1002792E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100592468);
  }

  return result;
}

unint64_t sub_1002792E4()
{
  result = qword_100592470;
  if (!qword_100592470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.CipherSuite, &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite, v0, v1);
    atomic_store(result, &qword_100592470);
  }

  return result;
}

unint64_t sub_100279338()
{
  result = qword_100592480;
  if (!qword_100592480)
  {
    result = swift_getWitnessTable(byte_1004AAF9C, &type metadata for NANAttribute.SecurityContextInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592480);
  }

  return result;
}

unint64_t sub_10027938C()
{
  result = qword_100592490;
  if (!qword_100592490)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592488, &qword_10049F968);
    v4[0] = sub_100279410();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100592490);
  }

  return result;
}

unint64_t sub_100279410()
{
  result = qword_100592498;
  if (!qword_100592498)
  {
    result = swift_getWitnessTable("գ\n", &type metadata for NANAttribute.SecurityContextInformation.SecurityContextIdentifier, v0, v1);
    atomic_store(result, &qword_100592498);
  }

  return result;
}

unint64_t sub_100279464()
{
  result = qword_1005924A8;
  if (!qword_1005924A8)
  {
    result = swift_getWitnessTable("ME\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005924A8);
  }

  return result;
}

unint64_t sub_1002794B8()
{
  result = qword_1005924B0;
  if (!qword_1005924B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingIdentityResolution.CipherVersion, &type metadata for NANAttribute.PairingIdentityResolution.CipherVersion, v0, v1);
    atomic_store(result, &qword_1005924B0);
  }

  return result;
}

unint64_t sub_10027952C()
{
  result = qword_1005924C8;
  if (!qword_1005924C8)
  {
    result = swift_getWitnessTable("Ֆ\n", &type metadata for NANAttribute.PairingIdentityResolution.CipherVersion, v0, v1);
    atomic_store(result, &qword_1005924C8);
  }

  return result;
}

unint64_t sub_100279580()
{
  result = qword_1005924E0;
  if (!qword_1005924E0)
  {
    result = swift_getWitnessTable(byte_1004AAEFC, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005924E0);
  }

  return result;
}

unint64_t sub_1002795D4()
{
  result = qword_1005924E8;
  if (!qword_1005924E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_1005924E8);
  }

  return result;
}

unint64_t sub_100279628()
{
  result = qword_1005924F8;
  if (!qword_1005924F8)
  {
    result = swift_getWitnessTable(byte_1004AAEAC, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005924F8);
  }

  return result;
}

unint64_t sub_10027967C()
{
  result = qword_100592508;
  if (!qword_100592508)
  {
    result = swift_getWitnessTable("=F\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592508);
  }

  return result;
}

unint64_t sub_1002796D0()
{
  result = qword_100592510;
  if (!qword_100592510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData, v0, v1);
    atomic_store(result, &qword_100592510);
  }

  return result;
}

unint64_t sub_100279724()
{
  result = qword_100592518;
  if (!qword_100592518)
  {
    result = swift_getWitnessTable("՞\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData, v0, v1);
    atomic_store(result, &qword_100592518);
  }

  return result;
}

unint64_t sub_100279778()
{
  result = qword_100592520;
  if (!qword_100592520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, v0, v1);
    atomic_store(result, &qword_100592520);
  }

  return result;
}

uint64_t sub_1002797CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_100279834()
{
  result = qword_100592530;
  if (!qword_100592530)
  {
    result = swift_getWitnessTable(byte_1004AAE34, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KDESelector, v0, v1);
    atomic_store(result, &qword_100592530);
  }

  return result;
}

unint64_t sub_100279888()
{
  result = qword_100592538;
  if (!qword_100592538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData, v0, v1);
    atomic_store(result, &qword_100592538);
  }

  return result;
}

unint64_t sub_1002798DC()
{
  result = qword_100592540;
  if (!qword_100592540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, v0, v1);
    atomic_store(result, &qword_100592540);
  }

  return result;
}

unint64_t sub_100279930()
{
  result = qword_100592558;
  if (!qword_100592558)
  {
    result = swift_getWitnessTable(byte_1004AADE4, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592558);
  }

  return result;
}

unint64_t sub_100279984()
{
  result = qword_100592560;
  if (!qword_100592560)
  {
    result = swift_getWitnessTable(byte_1004AADBC, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KDESelector, v0, v1);
    atomic_store(result, &qword_100592560);
  }

  return result;
}

unint64_t sub_100279A10()
{
  result = qword_100592578;
  if (!qword_100592578)
  {
    result = swift_getWitnessTable("-G\n", &type metadata for NANAttribute.SharedKeyDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592578);
  }

  return result;
}

unint64_t sub_100279A64()
{
  result = qword_100592580;
  if (!qword_100592580)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, v0, v1);
    atomic_store(result, &qword_100592580);
  }

  return result;
}

unint64_t sub_100279AB8()
{
  result = qword_100592590;
  if (!qword_100592590)
  {
    result = swift_getWitnessTable("}G\n", &type metadata for NANAttribute.MulticastScheduleChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592590);
  }

  return result;
}

unint64_t sub_100279B0C()
{
  result = qword_100592598;
  if (!qword_100592598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange.Control, &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_100592598);
  }

  return result;
}

unint64_t sub_100279B60()
{
  result = qword_1005925A8;
  if (!qword_1005925A8)
  {
    result = swift_getWitnessTable(byte_1004AACCC, &type metadata for NANAttribute.PublicAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005925A8);
  }

  return result;
}

unint64_t sub_100279BB4()
{
  result = qword_1005925B8;
  if (!qword_1005925B8)
  {
    result = swift_getWitnessTable(byte_1004AAC7C, &type metadata for NANAttribute.PairingIdentityResolution.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005925B8);
  }

  return result;
}

unint64_t sub_100279C08()
{
  result = qword_1005925D0;
  if (!qword_1005925D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Method, &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_1005925D0);
  }

  return result;
}

unint64_t sub_100279C5C()
{
  result = qword_1005925E0;
  if (!qword_1005925E0)
  {
    result = swift_getWitnessTable("mH\n", &type metadata for NANAttribute.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005925E0);
  }

  return result;
}

unint64_t sub_100279CB0()
{
  result = qword_1005925F8;
  if (!qword_1005925F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPeerServiceIdentifier, &type metadata for NANPeerServiceIdentifier, v0, v1);
    atomic_store(result, &qword_1005925F8);
  }

  return result;
}

unint64_t sub_100279D04()
{
  result = qword_100592618;
  if (!qword_100592618)
  {
    result = swift_getWitnessTable(byte_1004AABDC, &type metadata for NANAttribute.CustomDeviceInformation.Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592618);
  }

  return result;
}

unint64_t sub_100279D78()
{
  result = qword_100592630;
  if (!qword_100592630)
  {
    result = swift_getWitnessTable("\rI\n", &type metadata for NANAttribute.CustomDeviceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100592630);
  }

  return result;
}

unint64_t sub_100279DCC()
{
  result = qword_100592638;
  if (!qword_100592638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Version, &type metadata for NANAttribute.CustomDeviceInformation.Version, v0, v1);
    atomic_store(result, &qword_100592638);
  }

  return result;
}

unint64_t sub_100279E20()
{
  result = qword_100592640;
  if (!qword_100592640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.PlatformType, &type metadata for NANAttribute.CustomDeviceInformation.PlatformType, v0, v1);
    atomic_store(result, &qword_100592640);
  }

  return result;
}

unint64_t sub_100279E74()
{
  result = qword_100592648;
  if (!qword_100592648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Flags, &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592648);
  }

  return result;
}

unint64_t sub_100279EC8()
{
  result = qword_100592660;
  if (!qword_100592660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Version, &type metadata for NANAttribute.CustomDeviceInformation.Version, v0, v1);
    atomic_store(result, &qword_100592660);
  }

  return result;
}

unint64_t sub_100279F1C()
{
  result = qword_100592668;
  if (!qword_100592668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.PlatformType, &type metadata for NANAttribute.CustomDeviceInformation.PlatformType, v0, v1);
    atomic_store(result, &qword_100592668);
  }

  return result;
}

unint64_t sub_100279F70()
{
  result = qword_100592670;
  if (!qword_100592670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Flags, &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592670);
  }

  return result;
}

unint64_t sub_100279FC4()
{
  result = qword_100592678;
  if (!qword_100592678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_100592678);
  }

  return result;
}

unint64_t sub_10027A018()
{
  result = qword_100592680;
  if (!qword_100592680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.AttributeType, &type metadata for NANAttribute.AttributeType, v0, v1);
    atomic_store(result, &qword_100592680);
  }

  return result;
}

unint64_t sub_10027A27C()
{
  result = qword_1005926D8;
  if (!qword_1005926D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_1005926D8);
  }

  return result;
}

unint64_t sub_10027A2D4()
{
  result = qword_10059A570;
  if (!qword_10059A570)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MasterIndication, &type metadata for NANAttribute.MasterIndication, v0, v1);
    atomic_store(result, &qword_10059A570);
  }

  return result;
}

unint64_t sub_10027A32C()
{
  result = qword_1005926E0;
  if (!qword_1005926E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Cluster, &type metadata for NANAttribute.Cluster, v0, v1);
    atomic_store(result, &qword_1005926E0);
  }

  return result;
}

unint64_t sub_10027A384()
{
  result = qword_1005926E8;
  if (!qword_1005926E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceIDList, &type metadata for NANAttribute.ServiceIDList, v0, v1);
    atomic_store(result, &qword_1005926E8);
  }

  return result;
}

unint64_t sub_10027A3DC()
{
  result = qword_1005926F0;
  if (!qword_1005926F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control.ControlType, &type metadata for NANAttribute.ServiceDescriptor.Control.ControlType, v0, v1);
    atomic_store(result, &qword_1005926F0);
  }

  return result;
}

unint64_t sub_10027A434()
{
  result = qword_1005926F8;
  if (!qword_1005926F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_1005926F8);
  }

  return result;
}

unint64_t sub_10027A48C()
{
  result = qword_100592700;
  if (!qword_100592700)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_100592700);
  }

  return result;
}

unint64_t sub_10027A4E0()
{
  result = qword_100592708;
  if (!qword_100592708)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_100592708);
  }

  return result;
}

unint64_t sub_10027A538()
{
  result = qword_100592710;
  if (!qword_100592710)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_100592710);
  }

  return result;
}

unint64_t sub_10027A590()
{
  result = qword_100592718;
  if (!qword_100592718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl.FilterType, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl.FilterType, v0, v1);
    atomic_store(result, &qword_100592718);
  }

  return result;
}

unint64_t sub_10027A5E8()
{
  result = qword_100592720;
  if (!qword_100592720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, v0, v1);
    atomic_store(result, &qword_100592720);
  }

  return result;
}

unint64_t sub_10027A640()
{
  result = qword_100592728;
  if (!qword_100592728)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, v0, v1);
    atomic_store(result, &qword_100592728);
  }

  return result;
}

unint64_t sub_10027A694()
{
  result = qword_100592730;
  if (!qword_100592730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, v0, v1);
    atomic_store(result, &qword_100592730);
  }

  return result;
}

unint64_t sub_10027A6EC()
{
  result = qword_100592738;
  if (!qword_100592738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceResponseFilterControl, v0, v1);
    atomic_store(result, &qword_100592738);
  }

  return result;
}

unint64_t sub_10027A744()
{
  result = qword_100592740;
  if (!qword_100592740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.ServiceFilterControl, &type metadata for NANAttribute.ServiceDescriptor.ServiceFilterControl, v0, v1);
    atomic_store(result, &qword_100592740);
  }

  return result;
}

unint64_t sub_10027A79C()
{
  result = qword_100592748;
  if (!qword_100592748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor, &type metadata for NANAttribute.ServiceDescriptor, v0, v1);
    atomic_store(result, &qword_100592748);
  }

  return result;
}

unint64_t sub_10027A7F4()
{
  result = qword_100592750;
  if (!qword_100592750)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_100592750);
  }

  return result;
}

unint64_t sub_10027A84C()
{
  result = qword_100592758;
  if (!qword_100592758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_100592758);
  }

  return result;
}

unint64_t sub_10027A8A0()
{
  result = qword_100592760;
  if (!qword_100592760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_100592760);
  }

  return result;
}

unint64_t sub_10027A8F8()
{
  result = qword_100592768;
  if (!qword_100592768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_100592768);
  }

  return result;
}

unint64_t sub_10027A950()
{
  result = qword_100592770;
  if (!qword_100592770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.RangeLimit, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit, v0, v1);
    atomic_store(result, &qword_100592770);
  }

  return result;
}

unint64_t sub_10027A9A8()
{
  result = qword_100592778;
  if (!qword_100592778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension, &type metadata for NANAttribute.ServiceDescriptorExtension, v0, v1);
    atomic_store(result, &qword_100592778);
  }

  return result;
}

unint64_t sub_10027AA00()
{
  result = qword_100592780;
  if (!qword_100592780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_100592780);
  }

  return result;
}

unint64_t sub_10027AA58()
{
  result = qword_100592788;
  if (!qword_100592788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_100592788);
  }

  return result;
}

unint64_t sub_10027AAAC()
{
  result = qword_100592790;
  if (!qword_100592790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_100592790);
  }

  return result;
}

unint64_t sub_10027AB04()
{
  result = qword_100592798;
  if (!qword_100592798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ConnectionCapability, &type metadata for NANAttribute.ConnectionCapability, v0, v1);
    atomic_store(result, &qword_100592798);
  }

  return result;
}

unint64_t sub_10027AB5C()
{
  result = qword_1005927A0;
  if (!qword_1005927A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.WLANInfrastructure.DeviceRole, &type metadata for NANAttribute.WLANInfrastructure.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005927A0);
  }

  return result;
}

unint64_t sub_10027ABB4()
{
  result = qword_1005927A8;
  if (!qword_1005927A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.WLANInfrastructure, &type metadata for NANAttribute.WLANInfrastructure, v0, v1);
    atomic_store(result, &qword_1005927A8);
  }

  return result;
}

unint64_t sub_10027AC0C()
{
  result = qword_1005927B0;
  if (!qword_1005927B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005927B0);
  }

  return result;
}

unint64_t sub_10027AC64()
{
  result = qword_1005927B8;
  if (!qword_1005927B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005927B8);
  }

  return result;
}

unint64_t sub_10027ACB8()
{
  result = qword_1005927C0;
  if (!qword_1005927C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005927C0);
  }

  return result;
}

unint64_t sub_10027AD10()
{
  result = qword_1005927C8;
  if (!qword_1005927C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005927C8);
  }

  return result;
}

unint64_t sub_10027AD68()
{
  result = qword_1005927D0;
  if (!qword_1005927D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation, &type metadata for NANAttribute.P2POperation, v0, v1);
    atomic_store(result, &qword_1005927D0);
  }

  return result;
}

unint64_t sub_10027ADC0()
{
  result = qword_1005927D8;
  if (!qword_1005927D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.IBSS, &type metadata for NANAttribute.IBSS, v0, v1);
    atomic_store(result, &qword_1005927D8);
  }

  return result;
}

unint64_t sub_10027AE18()
{
  result = qword_1005927E0;
  if (!qword_1005927E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Mesh, &type metadata for NANAttribute.Mesh, v0, v1);
    atomic_store(result, &qword_1005927E0);
  }

  return result;
}

unint64_t sub_10027AE70()
{
  result = qword_1005927E8;
  if (!qword_1005927E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FurtherServiceDiscovery, &type metadata for NANAttribute.FurtherServiceDiscovery, v0, v1);
    atomic_store(result, &qword_1005927E8);
  }

  return result;
}

unint64_t sub_10027AEC8()
{
  result = qword_1005927F0;
  if (!qword_1005927F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FurtherAvailabilityMap, &type metadata for NANAttribute.FurtherAvailabilityMap, v0, v1);
    atomic_store(result, &qword_1005927F0);
  }

  return result;
}

unint64_t sub_10027AF20()
{
  result = qword_1005927F8;
  if (!qword_1005927F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Ranging, &type metadata for NANAttribute.Ranging, v0, v1);
    atomic_store(result, &qword_1005927F8);
  }

  return result;
}

unint64_t sub_10027AF78()
{
  result = qword_100592800;
  if (!qword_100592800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ClusterDiscovery, &type metadata for NANAttribute.ClusterDiscovery, v0, v1);
    atomic_store(result, &qword_100592800);
  }

  return result;
}

unint64_t sub_10027AFD0()
{
  result = qword_100592808;
  if (!qword_100592808)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, v0, v1);
    atomic_store(result, &qword_100592808);
  }

  return result;
}

unint64_t sub_10027B028()
{
  result = qword_100592810;
  if (!qword_100592810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_100592810);
  }

  return result;
}

unint64_t sub_10027B080()
{
  result = qword_100592818;
  if (!qword_100592818)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_100592818);
  }

  return result;
}

unint64_t sub_10027B0D4()
{
  result = qword_100592820;
  if (!qword_100592820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_100592820);
  }

  return result;
}

unint64_t sub_10027B12C()
{
  result = qword_100592828;
  if (!qword_100592828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_100592828);
  }

  return result;
}

unint64_t sub_10027B184()
{
  result = qword_100592830;
  if (!qword_100592830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_100592830);
  }

  return result;
}

unint64_t sub_10027B1DC()
{
  result = qword_100592838;
  if (!qword_100592838)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_100592838);
  }

  return result;
}

unint64_t sub_10027B230()
{
  result = qword_100592840;
  if (!qword_100592840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_100592840);
  }

  return result;
}

unint64_t sub_10027B288()
{
  result = qword_100592848;
  if (!qword_100592848)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_100592848);
  }

  return result;
}

unint64_t sub_10027B2E0()
{
  result = qword_100592850;
  if (!qword_100592850)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100592850);
  }

  return result;
}

unint64_t sub_10027B338()
{
  result = qword_100592858;
  if (!qword_100592858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100592858);
  }

  return result;
}

unint64_t sub_10027B38C()
{
  result = qword_100592860;
  if (!qword_100592860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100592860);
  }

  return result;
}

unint64_t sub_10027B3E4()
{
  result = qword_100592868;
  if (!qword_100592868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100592868);
  }

  return result;
}

unint64_t sub_10027B43C()
{
  result = qword_100592870;
  if (!qword_100592870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability, &type metadata for NANAttribute.DeviceCapability, v0, v1);
    atomic_store(result, &qword_100592870);
  }

  return result;
}

unint64_t sub_10027B494()
{
  result = qword_100592878;
  if (!qword_100592878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension.RegulatoryInformationForSixGHz, &type metadata for NANAttribute.DeviceCapabilityExtension.RegulatoryInformationForSixGHz, v0, v1);
    atomic_store(result, &qword_100592878);
  }

  return result;
}

unint64_t sub_10027B4E8()
{
  result = qword_100592880;
  if (!qword_100592880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100592880);
  }

  return result;
}

unint64_t sub_10027B53C(uint64_t a1)
{
  result = sub_10027B564();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10027B564()
{
  result = qword_100592888;
  if (!qword_100592888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100592888);
  }

  return result;
}

unint64_t sub_10027B5BC()
{
  result = qword_100592890;
  if (!qword_100592890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100592890);
  }

  return result;
}

unint64_t sub_10027B614()
{
  result = qword_100597350;
  if (!qword_100597350)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100597350);
  }

  return result;
}

unint64_t sub_10027B66C()
{
  result = qword_100592898;
  if (!qword_100592898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension, &type metadata for NANAttribute.DeviceCapabilityExtension, v0, v1);
    atomic_store(result, &qword_100592898);
  }

  return result;
}

unint64_t sub_10027B6C4()
{
  result = qword_1005928A0;
  if (!qword_1005928A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.AttributeType, &type metadata for NANAttribute.Datapath.AttributeType, v0, v1);
    atomic_store(result, &qword_1005928A0);
  }

  return result;
}

unint64_t sub_10027B71C()
{
  result = qword_1005928A8;
  if (!qword_1005928A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Status, &type metadata for NANAttribute.Datapath.Status, v0, v1);
    atomic_store(result, &qword_1005928A8);
  }

  return result;
}

unint64_t sub_10027B774()
{
  result = qword_1005928B0;
  if (!qword_1005928B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_1005928B0);
  }

  return result;
}

unint64_t sub_10027B7CC()
{
  result = qword_1005928B8;
  if (!qword_1005928B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_1005928B8);
  }

  return result;
}

unint64_t sub_10027B820()
{
  result = qword_1005928C0;
  if (!qword_1005928C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_1005928C0);
  }

  return result;
}

unint64_t sub_10027B878()
{
  result = qword_1005928C8;
  if (!qword_1005928C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_1005928C8);
  }

  return result;
}

unint64_t sub_10027B8D0()
{
  result = qword_1005928D0;
  if (!qword_1005928D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath, &type metadata for NANAttribute.Datapath, v0, v1);
    atomic_store(result, &qword_1005928D0);
  }

  return result;
}

unint64_t sub_10027B928()
{
  result = qword_1005928D8;
  if (!qword_1005928D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_1005928D8);
  }

  return result;
}

unint64_t sub_10027B980()
{
  result = qword_1005928E0;
  if (!qword_1005928E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_1005928E0);
  }

  return result;
}

unint64_t sub_10027B9D4()
{
  result = qword_1005928E8;
  if (!qword_1005928E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_1005928E8);
  }

  return result;
}

unint64_t sub_10027BA2C()
{
  result = qword_1005928F0;
  if (!qword_1005928F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_1005928F0);
  }

  return result;
}

unint64_t sub_10027BA84()
{
  result = qword_1005928F8;
  if (!qword_1005928F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.ServiceInfoType, &type metadata for NANAttribute.DatapathExtension.ServiceInfoType, v0, v1);
    atomic_store(result, &qword_1005928F8);
  }

  return result;
}

unint64_t sub_10027BADC()
{
  result = qword_100592900;
  if (!qword_100592900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension, &type metadata for NANAttribute.DatapathExtension, v0, v1);
    atomic_store(result, &qword_100592900);
  }

  return result;
}

unint64_t sub_10027BB34()
{
  result = qword_100592908;
  if (!qword_100592908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100592908);
  }

  return result;
}

unint64_t sub_10027BB8C()
{
  result = qword_100592910;
  if (!qword_100592910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100592910);
  }

  return result;
}

unint64_t sub_10027BBE0()
{
  result = qword_100592918;
  if (!qword_100592918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100592918);
  }

  return result;
}

unint64_t sub_10027BC38()
{
  result = qword_100592920;
  if (!qword_100592920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100592920);
  }

  return result;
}

unint64_t sub_10027BC90()
{
  result = qword_100592928;
  if (!qword_100592928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability, &type metadata for NANAttribute.Availability, v0, v1);
    atomic_store(result, &qword_100592928);
  }

  return result;
}

unint64_t sub_10027BCE8()
{
  result = qword_100592930;
  if (!qword_100592930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100592930);
  }

  return result;
}

unint64_t sub_10027BD40()
{
  result = qword_100592938;
  if (!qword_100592938)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100592938);
  }

  return result;
}

unint64_t sub_10027BD94()
{
  result = qword_100592940;
  if (!qword_100592940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100592940);
  }

  return result;
}

unint64_t sub_10027BDEC()
{
  result = qword_100592948;
  if (!qword_100592948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100592948);
  }

  return result;
}

unint64_t sub_10027BE44()
{
  result = qword_100592950;
  if (!qword_100592950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster, &type metadata for NANAttribute.DataCluster, v0, v1);
    atomic_store(result, &qword_100592950);
  }

  return result;
}

unint64_t sub_10027BE9C()
{
  result = qword_100592958;
  if (!qword_100592958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control.SetupReason, &type metadata for NANAttribute.DeviceLink.Control.SetupReason, v0, v1);
    atomic_store(result, &qword_100592958);
  }

  return result;
}

unint64_t sub_10027BEF4()
{
  result = qword_100592960;
  if (!qword_100592960)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_100592960);
  }

  return result;
}

unint64_t sub_10027BF4C()
{
  result = qword_100592968;
  if (!qword_100592968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_100592968);
  }

  return result;
}

unint64_t sub_10027BFA0()
{
  result = qword_100592970;
  if (!qword_100592970)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_100592970);
  }

  return result;
}

unint64_t sub_10027BFF8()
{
  result = qword_100592978;
  if (!qword_100592978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_100592978);
  }

  return result;
}

unint64_t sub_10027C050()
{
  result = qword_100592980;
  if (!qword_100592980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.AttributeType, &type metadata for NANAttribute.DeviceLink.AttributeType, v0, v1);
    atomic_store(result, &qword_100592980);
  }

  return result;
}

unint64_t sub_10027C0A8()
{
  result = qword_100592988;
  if (!qword_100592988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Status, &type metadata for NANAttribute.DeviceLink.Status, v0, v1);
    atomic_store(result, &qword_100592988);
  }

  return result;
}

unint64_t sub_10027C100()
{
  result = qword_100592990;
  if (!qword_100592990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink, &type metadata for NANAttribute.DeviceLink, v0, v1);
    atomic_store(result, &qword_100592990);
  }

  return result;
}

unint64_t sub_10027C158()
{
  result = qword_100592998;
  if (!qword_100592998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLinkQoS, &type metadata for NANAttribute.DeviceLinkQoS, v0, v1);
    atomic_store(result, &qword_100592998);
  }

  return result;
}

unint64_t sub_10027C1B0()
{
  result = qword_1005929A0;
  if (!qword_1005929A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_1005929A0);
  }

  return result;
}

unint64_t sub_10027C208()
{
  result = qword_1005929A8;
  if (!qword_1005929A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_1005929A8);
  }

  return result;
}

unint64_t sub_10027C25C()
{
  result = qword_1005929B0;
  if (!qword_1005929B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_1005929B0);
  }

  return result;
}

unint64_t sub_10027C2B4()
{
  result = qword_1005929B8;
  if (!qword_1005929B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_1005929B8);
  }

  return result;
}

unint64_t sub_10027C30C()
{
  result = qword_1005929C0;
  if (!qword_1005929C0)
  {
    result = swift_getWitnessTable(";\n", &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl.EntryType, v0, v1);
    atomic_store(result, &qword_1005929C0);
  }

  return result;
}

unint64_t sub_10027C364()
{
  result = qword_1005929C8;
  if (!qword_1005929C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowControl, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_1005929C8);
  }

  return result;
}

unint64_t sub_10027C3BC()
{
  result = qword_1005929D0;
  if (!qword_1005929D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowControl, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_1005929D0);
  }

  return result;
}

unint64_t sub_10027C410()
{
  result = qword_1005929D8;
  if (!qword_1005929D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowControl, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_1005929D8);
  }

  return result;
}

unint64_t sub_10027C468()
{
  result = qword_1005929E0;
  if (!qword_1005929E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowControl, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_1005929E0);
  }

  return result;
}

unint64_t sub_10027C4C0()
{
  result = qword_1005929E8;
  if (!qword_1005929E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule, &type metadata for NANAttribute.UnalignedSchedule, v0, v1);
    atomic_store(result, &qword_1005929E8);
  }

  return result;
}

unint64_t sub_10027C518()
{
  result = qword_1005929F0;
  if (!qword_1005929F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_1005929F0);
  }

  return result;
}

unint64_t sub_10027C570()
{
  result = qword_1005929F8;
  if (!qword_1005929F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_1005929F8);
  }

  return result;
}

unint64_t sub_10027C5C4()
{
  result = qword_100592A00;
  if (!qword_100592A00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_100592A00);
  }

  return result;
}

unint64_t sub_10027C61C()
{
  result = qword_100592A08;
  if (!qword_100592A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_100592A08);
  }

  return result;
}

unint64_t sub_10027C674()
{
  result = qword_100592A10;
  if (!qword_100592A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation, &type metadata for NANAttribute.RangingInformation, v0, v1);
    atomic_store(result, &qword_100592A10);
  }

  return result;
}

unint64_t sub_10027C6CC()
{
  result = qword_100592A18;
  if (!qword_100592A18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.AttributeType, &type metadata for NANAttribute.RangingSetup.AttributeType, v0, v1);
    atomic_store(result, &qword_100592A18);
  }

  return result;
}

unint64_t sub_10027C724()
{
  result = qword_100592A20;
  if (!qword_100592A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Status, &type metadata for NANAttribute.RangingSetup.Status, v0, v1);
    atomic_store(result, &qword_100592A20);
  }

  return result;
}

unint64_t sub_10027C77C()
{
  result = qword_100592A28;
  if (!qword_100592A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Control, &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100592A28);
  }

  return result;
}

unint64_t sub_10027C7D4()
{
  result = qword_100592A30;
  if (!qword_100592A30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Control, &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100592A30);
  }

  return result;
}

unint64_t sub_10027C828()
{
  result = qword_100592A38;
  if (!qword_100592A38)
  {
    result = swift_getWitnessTable("մ\n", &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100592A38);
  }

  return result;
}

unint64_t sub_10027C880()
{
  result = qword_100592A40;
  if (!qword_100592A40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Control, &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100592A40);
  }

  return result;
}

unint64_t sub_10027C8D8()
{
  result = qword_100592A48;
  if (!qword_100592A48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100592A48);
  }

  return result;
}

unint64_t sub_10027C930()
{
  result = qword_100592A50;
  if (!qword_100592A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100592A50);
  }

  return result;
}

unint64_t sub_10027C984()
{
  result = qword_100592A58;
  if (!qword_100592A58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100592A58);
  }

  return result;
}

unint64_t sub_10027C9DC()
{
  result = qword_100592A60;
  if (!qword_100592A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100592A60);
  }

  return result;
}

unint64_t sub_10027CA34()
{
  result = qword_100592A68;
  if (!qword_100592A68)
  {
    result = swift_getWitnessTable("ͱ\n", &type metadata for NANAttribute.RangingSetup, v0, v1);
    atomic_store(result, &qword_100592A68);
  }

  return result;
}

unint64_t sub_10027CA8C()
{
  result = qword_100592A70;
  if (!qword_100592A70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.HTCapabilities, &type metadata for NANAttribute.ElementContainer.HTCapabilities, v0, v1);
    atomic_store(result, &qword_100592A70);
  }

  return result;
}

unint64_t sub_10027CAE4()
{
  result = qword_100592A78;
  if (!qword_100592A78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.HTInformation, &type metadata for NANAttribute.ElementContainer.HTInformation, v0, v1);
    atomic_store(result, &qword_100592A78);
  }

  return result;
}

unint64_t sub_10027CB3C()
{
  result = qword_100592A80;
  if (!qword_100592A80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTCapabilities, &type metadata for NANAttribute.ElementContainer.VHTCapabilities, v0, v1);
    atomic_store(result, &qword_100592A80);
  }

  return result;
}

unint64_t sub_10027CB94()
{
  result = qword_100592A88;
  if (!qword_100592A88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTOperation, &type metadata for NANAttribute.ElementContainer.VHTOperation, v0, v1);
    atomic_store(result, &qword_100592A88);
  }

  return result;
}

unint64_t sub_10027CBEC()
{
  result = qword_100592A90;
  if (!qword_100592A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VendorSpecific, &type metadata for NANAttribute.ElementContainer.VendorSpecific, v0, v1);
    atomic_store(result, &qword_100592A90);
  }

  return result;
}

unint64_t sub_10027CC44()
{
  result = qword_100592A98;
  if (!qword_100592A98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.ElementIDExtension, &type metadata for NANAttribute.ElementContainer.ElementIDExtension, v0, v1);
    atomic_store(result, &qword_100592A98);
  }

  return result;
}

unint64_t sub_10027CC9C()
{
  result = qword_100592AA0;
  if (!qword_100592AA0)
  {
    result = swift_getWitnessTable("Ŭ\n", &type metadata for NANAttribute.ElementContainer, v0, v1);
    atomic_store(result, &qword_100592AA0);
  }

  return result;
}

unint64_t sub_10027CCF4()
{
  result = qword_100592AA8;
  if (!qword_100592AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ExtendedWLANInfrastructure, &type metadata for NANAttribute.ExtendedWLANInfrastructure, v0, v1);
    atomic_store(result, &qword_100592AA8);
  }

  return result;
}

unint64_t sub_10027CD4C()
{
  result = qword_100592AB0;
  if (!qword_100592AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ExtendedP2POperation, &type metadata for NANAttribute.ExtendedP2POperation, v0, v1);
    atomic_store(result, &qword_100592AB0);
  }

  return result;
}

unint64_t sub_10027CDA4()
{
  result = qword_100592AB8;
  if (!qword_100592AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ExtendedIBSS, &type metadata for NANAttribute.ExtendedIBSS, v0, v1);
    atomic_store(result, &qword_100592AB8);
  }

  return result;
}

unint64_t sub_10027CDFC()
{
  result = qword_100592AC0;
  if (!qword_100592AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ExtendedMesh, &type metadata for NANAttribute.ExtendedMesh, v0, v1);
    atomic_store(result, &qword_100592AC0);
  }

  return result;
}

unint64_t sub_10027CE54()
{
  result = qword_100592AC8;
  if (!qword_100592AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FineTimingMeasurementRangeReport.Entry, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry, v0, v1);
    atomic_store(result, &qword_100592AC8);
  }

  return result;
}

unint64_t sub_10027CEAC()
{
  result = qword_100592AD0;
  if (!qword_100592AD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FineTimingMeasurementRangeReport, &type metadata for NANAttribute.FineTimingMeasurementRangeReport, v0, v1);
    atomic_store(result, &qword_100592AD0);
  }

  return result;
}

unint64_t sub_10027CF04()
{
  result = qword_100592AD8;
  if (!qword_100592AD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities.ReplayCounters, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities.ReplayCounters, v0, v1);
    atomic_store(result, &qword_100592AD8);
  }

  return result;
}

unint64_t sub_10027CF5C()
{
  result = qword_100592AE0;
  if (!qword_100592AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities.GroupKeySupport, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities.GroupKeySupport, v0, v1);
    atomic_store(result, &qword_100592AE0);
  }

  return result;
}

unint64_t sub_10027CFB4()
{
  result = qword_100592AE8;
  if (!qword_100592AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities.BroadcastIntegrityProtocol, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities.BroadcastIntegrityProtocol, v0, v1);
    atomic_store(result, &qword_100592AE8);
  }

  return result;
}

unint64_t sub_10027D00C()
{
  result = qword_100592AF0;
  if (!qword_100592AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100592AF0);
  }

  return result;
}

unint64_t sub_10027D064()
{
  result = qword_100592AF8;
  if (!qword_100592AF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100592AF8);
  }

  return result;
}

unint64_t sub_10027D0B8()
{
  result = qword_100592B00;
  if (!qword_100592B00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100592B00);
  }

  return result;
}

unint64_t sub_10027D110()
{
  result = qword_100592B08;
  if (!qword_100592B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100592B08);
  }

  return result;
}

unint64_t sub_10027D168()
{
  result = qword_100592B10;
  if (!qword_100592B10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.CipherSuite, &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite, v0, v1);
    atomic_store(result, &qword_100592B10);
  }

  return result;
}

unint64_t sub_10027D1C0()
{
  result = qword_100592B18;
  if (!qword_100592B18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation, &type metadata for NANAttribute.CipherSuiteInformation, v0, v1);
    atomic_store(result, &qword_100592B18);
  }

  return result;
}

unint64_t sub_10027D218()
{
  result = qword_100592B20;
  if (!qword_100592B20)
  {
    result = swift_getWitnessTable("ݢ\n", &type metadata for NANAttribute.SecurityContextInformation.SecurityContextIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_100592B20);
  }

  return result;
}

unint64_t sub_10027D270()
{
  result = qword_100592B28;
  if (!qword_100592B28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SecurityContextInformation.SecurityContextIdentifier, &type metadata for NANAttribute.SecurityContextInformation.SecurityContextIdentifier, v0, v1);
    atomic_store(result, &qword_100592B28);
  }

  return result;
}

unint64_t sub_10027D2C8()
{
  result = qword_100592B30;
  if (!qword_100592B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SecurityContextInformation, &type metadata for NANAttribute.SecurityContextInformation, v0, v1);
    atomic_store(result, &qword_100592B30);
  }

  return result;
}

unint64_t sub_10027D368()
{
  result = qword_100592B40;
  if (!qword_100592B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_100592B40);
  }

  return result;
}

unint64_t sub_10027D3C0()
{
  result = qword_100592B48;
  if (!qword_100592B48)
  {
    result = swift_getWitnessTable("ݣ\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_100592B48);
  }

  return result;
}

unint64_t sub_10027D414()
{
  result = qword_100592B50;
  if (!qword_100592B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_100592B50);
  }

  return result;
}

unint64_t sub_10027D46C()
{
  result = qword_100592B58;
  if (!qword_100592B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_100592B58);
  }

  return result;
}

unint64_t sub_10027D4C4()
{
  result = qword_100592B60;
  if (!qword_100592B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime, v0, v1);
    atomic_store(result, &qword_100592B60);
  }

  return result;
}

unint64_t sub_10027D51C()
{
  result = qword_100592B68;
  if (!qword_100592B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData, v0, v1);
    atomic_store(result, &qword_100592B68);
  }

  return result;
}

unint64_t sub_10027D574()
{
  result = qword_100592B70;
  if (!qword_100592B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData, v0, v1);
    atomic_store(result, &qword_100592B70);
  }

  return result;
}

unint64_t sub_10027D65C()
{
  result = qword_100592B88;
  if (!qword_100592B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, v0, v1);
    atomic_store(result, &qword_100592B88);
  }

  return result;
}

unint64_t sub_10027D6B4()
{
  result = qword_100592B90;
  if (!qword_100592B90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor, &type metadata for NANAttribute.SharedKeyDescriptor, v0, v1);
    atomic_store(result, &qword_100592B90);
  }

  return result;
}

unint64_t sub_10027D70C()
{
  result = qword_100592B98;
  if (!qword_100592B98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange.Control, &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_100592B98);
  }

  return result;
}

unint64_t sub_10027D764()
{
  result = qword_100592BA0;
  if (!qword_100592BA0)
  {
    result = swift_getWitnessTable("ݜ\n", &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_100592BA0);
  }

  return result;
}

unint64_t sub_10027D7B8()
{
  result = qword_100592BA8;
  if (!qword_100592BA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange.Control, &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_100592BA8);
  }

  return result;
}

unint64_t sub_10027D810()
{
  result = qword_100592BB0;
  if (!qword_100592BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange.Control, &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_100592BB0);
  }

  return result;
}

unint64_t sub_10027D868()
{
  result = qword_100592BB8;
  if (!qword_100592BB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange, &type metadata for NANAttribute.MulticastScheduleChange, v0, v1);
    atomic_store(result, &qword_100592BB8);
  }

  return result;
}

unint64_t sub_10027D8C0()
{
  result = qword_100592BC0;
  if (!qword_100592BC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PublicAvailability, &type metadata for NANAttribute.PublicAvailability, v0, v1);
    atomic_store(result, &qword_100592BC0);
  }

  return result;
}

unint64_t sub_10027D918()
{
  result = qword_100592BC8;
  if (!qword_100592BC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingIdentityResolution.CipherVersion, &type metadata for NANAttribute.PairingIdentityResolution.CipherVersion, v0, v1);
    atomic_store(result, &qword_100592BC8);
  }

  return result;
}

unint64_t sub_10027D970()
{
  result = qword_100592BD0;
  if (!qword_100592BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingIdentityResolution, &type metadata for NANAttribute.PairingIdentityResolution, v0, v1);
    atomic_store(result, &qword_100592BD0);
  }

  return result;
}

unint64_t sub_10027D9C8()
{
  result = qword_100592BD8;
  if (!qword_100592BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.PairingType, &type metadata for NANAttribute.PairingBootstrapping.PairingType, v0, v1);
    atomic_store(result, &qword_100592BD8);
  }

  return result;
}

unint64_t sub_10027DA20()
{
  result = qword_100592BE0;
  if (!qword_100592BE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Status, &type metadata for NANAttribute.PairingBootstrapping.Status, v0, v1);
    atomic_store(result, &qword_100592BE0);
  }

  return result;
}

unint64_t sub_10027DA78()
{
  result = qword_100592BE8;
  if (!qword_100592BE8)
  {
    result = swift_getWitnessTable("͐\n", &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_100592BE8);
  }

  return result;
}

unint64_t sub_10027DAD0()
{
  result = qword_100592BF0;
  if (!qword_100592BF0)
  {
    result = swift_getWitnessTable("ŕ\n", &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_100592BF0);
  }

  return result;
}

unint64_t sub_10027DB24()
{
  result = qword_100592BF8;
  if (!qword_100592BF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Method, &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_100592BF8);
  }

  return result;
}

unint64_t sub_10027DB7C()
{
  result = qword_100592C00;
  if (!qword_100592C00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Method, &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_100592C00);
  }

  return result;
}

unint64_t sub_10027DBD4()
{
  result = qword_100592C08;
  if (!qword_100592C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Comeback, &type metadata for NANAttribute.PairingBootstrapping.Comeback, v0, v1);
    atomic_store(result, &qword_100592C08);
  }

  return result;
}

unint64_t sub_10027DC2C()
{
  result = qword_100592C10;
  if (!qword_100592C10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping, &type metadata for NANAttribute.PairingBootstrapping, v0, v1);
    atomic_store(result, &qword_100592C10);
  }

  return result;
}

unint64_t sub_10027DC84()
{
  result = qword_100592C18;
  if (!qword_100592C18)
  {
    result = swift_getWitnessTable("ݍ\n", &type metadata for NANAttribute.VendorSpecific, v0, v1);
    atomic_store(result, &qword_100592C18);
  }

  return result;
}

unint64_t sub_10027DD24()
{
  result = qword_100592C28;
  if (!qword_100592C28)
  {
    result = swift_getWitnessTable("Ռ\n", &type metadata for NANAttribute.CustomDeviceInformation.PlatformType, v0, v1);
    atomic_store(result, &qword_100592C28);
  }

  return result;
}

unint64_t sub_10027DD7C()
{
  result = qword_100592C30;
  if (!qword_100592C30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Flags, &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592C30);
  }

  return result;
}

unint64_t sub_10027DDD4()
{
  result = qword_100592C38;
  if (!qword_100592C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Flags, &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592C38);
  }

  return result;
}

unint64_t sub_10027DE28()
{
  result = qword_100592C40;
  if (!qword_100592C40)
  {
    result = swift_getWitnessTable("͉\n", &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592C40);
  }

  return result;
}

unint64_t sub_10027DE80()
{
  result = qword_100592C48;
  if (!qword_100592C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Flags, &type metadata for NANAttribute.CustomDeviceInformation.Flags, v0, v1);
    atomic_store(result, &qword_100592C48);
  }

  return result;
}

unint64_t sub_10027DED4()
{
  result = qword_100592C50;
  if (!qword_100592C50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.Version, &type metadata for NANAttribute.CustomDeviceInformation.Version, v0, v1);
    atomic_store(result, &qword_100592C50);
  }

  return result;
}

unint64_t sub_10027DF74()
{
  result = qword_100592C60;
  if (!qword_100592C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.AttributeType, &type metadata for NANAttribute.AttributeType, v0, v1);
    atomic_store(result, &qword_100592C60);
  }

  return result;
}

void sub_10027E010(uint64_t a1)
{
  type metadata accessor for NANAttribute.CustomDeviceInformation(319);
  if (v1 <= 0x3F)
  {
    sub_10027E214();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10027E214()
{
  if (!qword_100592CF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100592CF0);
    }
  }
}

uint64_t sub_10027E2B4(uint64_t a1)
{
  v1 = *(a1 + 18);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027E2C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10027E324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10027E3EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 40))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10027E440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10027E4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027E520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10027E590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027E5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10027E648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027E69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10027E6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027E74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NANAttribute.DeviceCapability(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.DeviceCapability(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANAttribute.DeviceCapability(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
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

  *(result + 11) = v3;
  return result;
}

uint64_t sub_10027E8C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 48))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10027E914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10027E9A4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027E9CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 64))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_10027EA20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 4;
    }
  }

  return result;
}

__n128 sub_10027EB44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_10027EB58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 30))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 29);
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

uint64_t sub_10027EBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 30) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 30) = 0;
    }

    if (a2)
    {
      *(result + 29) = ~a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NANAttribute.RangingInformation(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10027ECB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027ECFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10027ED68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10027EDCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10027EE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.ExtendedWLANInfrastructure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 20))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANAttribute.ExtendedWLANInfrastructure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.CipherSuiteInformation.CipherSuite(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 65287 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65287 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65287;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65287;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NANAttribute.CipherSuiteInformation.CipherSuite(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65287 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65287 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 16) + 1;
    *result = a2 - 249;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10027F120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027F164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10027F1D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10027F1EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027F230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10027F2C4(uint64_t a1)
{
  result = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027F348(uint64_t a1)
{
  result = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027F3EC(uint64_t a1)
{
  result = type metadata accessor for NANIdentityKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027F4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10027F52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10027F59C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 42))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027F5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 13;
    }
  }

  return result;
}

uint64_t sub_10027F6B8(uint64_t a1)
{
  result = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10027F774(uint64_t a1)
{
  sub_10027F9F8(319, &qword_100592FF0, &type metadata for UInt8, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10027F9A4(319, &qword_100592FF8, &type metadata accessor for P256.KeyAgreement.PublicKey);
    if (v2 <= 0x3F)
    {
      sub_10027F9F8(319, &qword_100593000, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10027F9A4(319, &qword_100593008, &type metadata accessor for UUID);
        if (v4 <= 0x3F)
        {
          sub_10027F9F8(319, &qword_100593010, &type metadata for NANPeerServiceIdentifier, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_10027F9A4(319, &qword_100593018, type metadata accessor for NANInternetSharingStatistics.Requester);
            if (v6 <= 0x3F)
            {
              sub_10027F9F8(319, &qword_100593020, &type metadata for NANMulticastLinkCondition, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_10027F9F8(319, &unk_100593028, &type metadata for NANMulticastTxStats, &type metadata accessor for Optional);
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

void sub_10027F9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10027F9F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NANAttribute.AttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANAttribute.AttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10027FECC()
{
  result = qword_100593080;
  if (!qword_100593080)
  {
    result = swift_getWitnessTable(byte_1004A8814, &type metadata for NANAttribute.MasterIndication.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593080);
  }

  return result;
}

unint64_t sub_10027FF24()
{
  result = qword_100593088;
  if (!qword_100593088)
  {
    result = swift_getWitnessTable("=i\n", &type metadata for NANAttribute.Cluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593088);
  }

  return result;
}

unint64_t sub_10027FF7C()
{
  result = qword_100593090;
  if (!qword_100593090)
  {
    result = swift_getWitnessTable(byte_1004A8984, &type metadata for NANAttribute.ServiceIDList.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593090);
  }

  return result;
}

unint64_t sub_10027FFD4()
{
  result = qword_100593098;
  if (!qword_100593098)
  {
    result = swift_getWitnessTable(byte_1004A8A3C, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593098);
  }

  return result;
}

unint64_t sub_10028002C()
{
  result = qword_1005930A0;
  if (!qword_1005930A0)
  {
    result = swift_getWitnessTable(byte_1004A8AF4, &type metadata for NANAttribute.WLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930A0);
  }

  return result;
}

unint64_t sub_100280084()
{
  result = qword_1005930A8;
  if (!qword_1005930A8)
  {
    result = swift_getWitnessTable("]f\n", &type metadata for NANAttribute.P2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930A8);
  }

  return result;
}

unint64_t sub_1002800DC()
{
  result = qword_1005930B0;
  if (!qword_1005930B0)
  {
    result = swift_getWitnessTable(byte_1004A8C64, &type metadata for NANAttribute.IBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930B0);
  }

  return result;
}

unint64_t sub_100280134()
{
  result = qword_1005930B8;
  if (!qword_1005930B8)
  {
    result = swift_getWitnessTable(byte_1004A8D1C, &type metadata for NANAttribute.Mesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930B8);
  }

  return result;
}

unint64_t sub_10028018C()
{
  result = qword_1005930C0;
  if (!qword_1005930C0)
  {
    result = swift_getWitnessTable("5d\n", &type metadata for NANAttribute.FurtherServiceDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930C0);
  }

  return result;
}

unint64_t sub_1002801E4()
{
  result = qword_1005930C8;
  if (!qword_1005930C8)
  {
    result = swift_getWitnessTable("}c\n", &type metadata for NANAttribute.FurtherAvailabilityMap.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930C8);
  }

  return result;
}

unint64_t sub_10028023C()
{
  result = qword_1005930D0;
  if (!qword_1005930D0)
  {
    result = swift_getWitnessTable(byte_1004A8F44, &type metadata for NANAttribute.Ranging.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930D0);
  }

  return result;
}

unint64_t sub_100280294()
{
  result = qword_1005930D8;
  if (!qword_1005930D8)
  {
    result = swift_getWitnessTable("\rb\n", &type metadata for NANAttribute.ClusterDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930D8);
  }

  return result;
}

unint64_t sub_1002802EC()
{
  result = qword_1005930E0;
  if (!qword_1005930E0)
  {
    result = swift_getWitnessTable("Ua\n", &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930E0);
  }

  return result;
}

unint64_t sub_100280344()
{
  result = qword_1005930E8;
  if (!qword_1005930E8)
  {
    result = swift_getWitnessTable(byte_1004A916C, &type metadata for NANAttribute.DeviceCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930E8);
  }

  return result;
}

unint64_t sub_10028039C()
{
  result = qword_1005930F0;
  if (!qword_1005930F0)
  {
    result = swift_getWitnessTable(byte_1004A9224, &type metadata for NANAttribute.DeviceCapabilityExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930F0);
  }

  return result;
}

unint64_t sub_1002803F4()
{
  result = qword_1005930F8;
  if (!qword_1005930F8)
  {
    result = swift_getWitnessTable("-_\n", &type metadata for NANAttribute.Availability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005930F8);
  }

  return result;
}

unint64_t sub_10028044C()
{
  result = qword_100593100;
  if (!qword_100593100)
  {
    result = swift_getWitnessTable("u^\n", &type metadata for NANAttribute.DataCluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593100);
  }

  return result;
}

unint64_t sub_1002804A4()
{
  result = qword_100593108;
  if (!qword_100593108)
  {
    result = swift_getWitnessTable(byte_1004A944C, &type metadata for NANAttribute.DeviceLinkQoS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593108);
  }

  return result;
}

unint64_t sub_1002804FC()
{
  result = qword_100593110;
  if (!qword_100593110)
  {
    result = swift_getWitnessTable(byte_1004A9504, &type metadata for NANAttribute.ElementContainer.HTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593110);
  }

  return result;
}

unint64_t sub_100280554()
{
  result = qword_100593118;
  if (!qword_100593118)
  {
    result = swift_getWitnessTable("M\\\n", &type metadata for NANAttribute.ElementContainer.HTInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593118);
  }

  return result;
}

unint64_t sub_1002805AC()
{
  result = qword_100593120;
  if (!qword_100593120)
  {
    result = swift_getWitnessTable(byte_1004A9674, &type metadata for NANAttribute.ElementContainer.VHTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593120);
  }

  return result;
}

unint64_t sub_100280604()
{
  result = qword_100593128;
  if (!qword_100593128)
  {
    result = swift_getWitnessTable(byte_1004A972C, &type metadata for NANAttribute.ElementContainer.VHTOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593128);
  }

  return result;
}

unint64_t sub_10028065C()
{
  result = qword_100593130;
  if (!qword_100593130)
  {
    result = swift_getWitnessTable("%Z\n", &type metadata for NANAttribute.ElementContainer.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593130);
  }

  return result;
}

unint64_t sub_1002806B4()
{
  result = qword_100593138;
  if (!qword_100593138)
  {
    result = swift_getWitnessTable("mY\n", &type metadata for NANAttribute.ElementContainer.ElementIDExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593138);
  }

  return result;
}

unint64_t sub_10028070C()
{
  result = qword_100593140;
  if (!qword_100593140)
  {
    result = swift_getWitnessTable(byte_1004A9954, &type metadata for NANAttribute.ElementContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593140);
  }

  return result;
}

unint64_t sub_100280764()
{
  result = qword_100593148;
  if (!qword_100593148)
  {
    result = swift_getWitnessTable(byte_1004A9A0C, &type metadata for NANAttribute.ExtendedP2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593148);
  }

  return result;
}

unint64_t sub_1002807BC()
{
  result = qword_100593150;
  if (!qword_100593150)
  {
    result = swift_getWitnessTable("EW\n", &type metadata for NANAttribute.ExtendedIBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593150);
  }

  return result;
}

unint64_t sub_100280814()
{
  result = qword_100593158;
  if (!qword_100593158)
  {
    result = swift_getWitnessTable(byte_1004A9B7C, &type metadata for NANAttribute.ExtendedMesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593158);
  }

  return result;
}

unint64_t sub_10028086C()
{
  result = qword_100593160;
  if (!qword_100593160)
  {
    result = swift_getWitnessTable(byte_1004A9C34, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593160);
  }

  return result;
}

unint64_t sub_1002808C4()
{
  result = qword_100593168;
  if (!qword_100593168)
  {
    result = swift_getWitnessTable(byte_1004A9CEC, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593168);
  }

  return result;
}

unint64_t sub_10028091C()
{
  result = qword_100593170;
  if (!qword_100593170)
  {
    result = swift_getWitnessTable("eT\n", &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593170);
  }

  return result;
}

unint64_t sub_100280974()
{
  result = qword_100593178;
  if (!qword_100593178)
  {
    result = swift_getWitnessTable(byte_1004A9E5C, &type metadata for NANAttribute.CipherSuiteInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593178);
  }

  return result;
}

unint64_t sub_1002809CC()
{
  result = qword_100593180;
  if (!qword_100593180)
  {
    result = swift_getWitnessTable(byte_1004A9F14, &type metadata for NANAttribute.SecurityContextInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593180);
  }

  return result;
}

unint64_t sub_100280A24()
{
  result = qword_100593188;
  if (!qword_100593188)
  {
    result = swift_getWitnessTable("=R\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593188);
  }

  return result;
}

unint64_t sub_100280A7C()
{
  result = qword_100593190;
  if (!qword_100593190)
  {
    result = swift_getWitnessTable(byte_1004AA084, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593190);
  }

  return result;
}

unint64_t sub_100280AD4()
{
  result = qword_100593198;
  if (!qword_100593198)
  {
    result = swift_getWitnessTable(byte_1004AA13C, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593198);
  }

  return result;
}

unint64_t sub_100280B2C()
{
  result = qword_1005931A0;
  if (!qword_1005931A0)
  {
    result = swift_getWitnessTable(byte_1004AA1F4, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931A0);
  }

  return result;
}

unint64_t sub_100280B84()
{
  result = qword_1005931A8;
  if (!qword_1005931A8)
  {
    result = swift_getWitnessTable("uO\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KDESelector, v0, v1);
    atomic_store(result, &qword_1005931A8);
  }

  return result;
}

unint64_t sub_100280BDC()
{
  result = qword_1005931B0;
  if (!qword_1005931B0)
  {
    result = swift_getWitnessTable(byte_1004AA34C, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931B0);
  }

  return result;
}

unint64_t sub_100280C34()
{
  result = qword_1005931B8;
  if (!qword_1005931B8)
  {
    result = swift_getWitnessTable(byte_1004AA404, &type metadata for NANAttribute.SharedKeyDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931B8);
  }

  return result;
}

unint64_t sub_100280C8C()
{
  result = qword_1005931C0;
  if (!qword_1005931C0)
  {
    result = swift_getWitnessTable("MM\n", &type metadata for NANAttribute.MulticastScheduleChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931C0);
  }

  return result;
}

unint64_t sub_100280CE4()
{
  result = qword_1005931C8;
  if (!qword_1005931C8)
  {
    result = swift_getWitnessTable(byte_1004AA574, &type metadata for NANAttribute.PublicAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931C8);
  }

  return result;
}

unint64_t sub_100280D3C()
{
  result = qword_1005931D0;
  if (!qword_1005931D0)
  {
    result = swift_getWitnessTable(byte_1004AA62C, &type metadata for NANAttribute.PairingIdentityResolution.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931D0);
  }

  return result;
}

unint64_t sub_100280D94()
{
  result = qword_1005931D8;
  if (!qword_1005931D8)
  {
    result = swift_getWitnessTable("%K\n", &type metadata for NANAttribute.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931D8);
  }

  return result;
}

unint64_t sub_100280DEC()
{
  result = qword_1005931E0;
  if (!qword_1005931E0)
  {
    result = swift_getWitnessTable("mJ\n", &type metadata for NANAttribute.CustomDeviceInformation.Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931E0);
  }

  return result;
}

unint64_t sub_100280E44()
{
  result = qword_1005931E8;
  if (!qword_1005931E8)
  {
    result = swift_getWitnessTable(byte_1004AA854, &type metadata for NANAttribute.CustomDeviceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005931E8);
  }

  return result;
}

unint64_t sub_100280E9C()
{
  result = qword_1005931F0;
  if (!qword_1005931F0)
  {
    result = swift_getWitnessTable(byte_1004AA944, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.DescriptorType, v0, v1);
    atomic_store(result, &qword_1005931F0);
  }

  return result;
}

unint64_t sub_100280EF0()
{
  result = qword_1005931F8;
  if (!qword_1005931F8)
  {
    result = swift_getWitnessTable("mG\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyInformation, v0, v1);
    atomic_store(result, &qword_1005931F8);
  }

  return result;
}

unint64_t sub_100280F48()
{
  result = qword_100593200;
  if (!qword_100593200)
  {
    result = swift_getWitnessTable("-N\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyInformation, v0, v1);
    atomic_store(result, &qword_100593200);
  }

  return result;
}

unint64_t sub_100280FA0()
{
  result = qword_100593208;
  if (!qword_100593208)
  {
    result = swift_getWitnessTable(byte_1004AA99C, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyInformation, v0, v1);
    atomic_store(result, &qword_100593208);
  }

  return result;
}

unint64_t sub_100280FF8()
{
  result = qword_100593210;
  if (!qword_100593210)
  {
    result = swift_getWitnessTable(byte_1004AA9D4, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyInformation, v0, v1);
    atomic_store(result, &qword_100593210);
  }

  return result;
}

unint64_t sub_100281050()
{
  result = qword_100593218;
  if (!qword_100593218)
  {
    result = swift_getWitnessTable(byte_1004AA7C4, &type metadata for NANAttribute.CustomDeviceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593218);
  }

  return result;
}

unint64_t sub_1002810A8()
{
  result = qword_100593220;
  if (!qword_100593220)
  {
    result = swift_getWitnessTable("UJ\n", &type metadata for NANAttribute.CustomDeviceInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593220);
  }

  return result;
}

unint64_t sub_100281100()
{
  result = qword_100593228;
  if (!qword_100593228)
  {
    result = swift_getWitnessTable("}M\n", &type metadata for NANAttribute.CustomDeviceInformation.Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593228);
  }

  return result;
}

unint64_t sub_100281158()
{
  result = qword_100593230;
  if (!qword_100593230)
  {
    result = swift_getWitnessTable("\rK\n", &type metadata for NANAttribute.CustomDeviceInformation.Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593230);
  }

  return result;
}

unint64_t sub_1002811B0()
{
  result = qword_100593238;
  if (!qword_100593238)
  {
    result = swift_getWitnessTable("5N\n", &type metadata for NANAttribute.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593238);
  }

  return result;
}

unint64_t sub_100281208()
{
  result = qword_100593240;
  if (!qword_100593240)
  {
    result = swift_getWitnessTable(byte_1004AA67C, &type metadata for NANAttribute.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593240);
  }

  return result;
}

unint64_t sub_100281260()
{
  result = qword_100593248;
  if (!qword_100593248)
  {
    result = swift_getWitnessTable(byte_1004AA59C, &type metadata for NANAttribute.PairingIdentityResolution.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593248);
  }

  return result;
}

unint64_t sub_1002812B8()
{
  result = qword_100593250;
  if (!qword_100593250)
  {
    result = swift_getWitnessTable("}L\n", &type metadata for NANAttribute.PairingIdentityResolution.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593250);
  }

  return result;
}

unint64_t sub_100281310()
{
  result = qword_100593258;
  if (!qword_100593258)
  {
    result = swift_getWitnessTable(byte_1004AA4E4, &type metadata for NANAttribute.PublicAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593258);
  }

  return result;
}

unint64_t sub_100281368()
{
  result = qword_100593260;
  if (!qword_100593260)
  {
    result = swift_getWitnessTable("5M\n", &type metadata for NANAttribute.PublicAvailability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593260);
  }

  return result;
}

unint64_t sub_1002813C0()
{
  result = qword_100593268;
  if (!qword_100593268)
  {
    result = swift_getWitnessTable("]P\n", &type metadata for NANAttribute.MulticastScheduleChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593268);
  }

  return result;
}

unint64_t sub_100281418()
{
  result = qword_100593270;
  if (!qword_100593270)
  {
    result = swift_getWitnessTable(byte_1004AA454, &type metadata for NANAttribute.MulticastScheduleChange.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593270);
  }

  return result;
}

unint64_t sub_100281470()
{
  result = qword_100593278;
  if (!qword_100593278)
  {
    result = swift_getWitnessTable(byte_1004AA374, &type metadata for NANAttribute.SharedKeyDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593278);
  }

  return result;
}

unint64_t sub_1002814C8()
{
  result = qword_100593280;
  if (!qword_100593280)
  {
    result = swift_getWitnessTable(byte_1004AA39C, &type metadata for NANAttribute.SharedKeyDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593280);
  }

  return result;
}

unint64_t sub_100281520()
{
  result = qword_100593288;
  if (!qword_100593288)
  {
    result = swift_getWitnessTable(byte_1004AA2BC, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593288);
  }

  return result;
}

unint64_t sub_100281578()
{
  result = qword_100593290;
  if (!qword_100593290)
  {
    result = swift_getWitnessTable("]O\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593290);
  }

  return result;
}

unint64_t sub_1002815D0()
{
  result = qword_100593298;
  if (!qword_100593298)
  {
    result = swift_getWitnessTable("%S\n", v0);
    atomic_store(result, &qword_100593298);
  }

  return result;
}

unint64_t sub_100281628()
{
  result = qword_1005932A0;
  if (!qword_1005932A0)
  {
    result = swift_getWitnessTable(byte_1004AA18C, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.BIGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932A0);
  }

  return result;
}

unint64_t sub_100281680()
{
  result = qword_1005932A8;
  if (!qword_1005932A8)
  {
    result = swift_getWitnessTable(byte_1004AA0AC, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932A8);
  }

  return result;
}

unint64_t sub_1002816D8()
{
  result = qword_1005932B0;
  if (!qword_1005932B0)
  {
    result = swift_getWitnessTable("mQ\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.IGTKKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932B0);
  }

  return result;
}

unint64_t sub_100281730()
{
  result = qword_1005932B8;
  if (!qword_1005932B8)
  {
    result = swift_getWitnessTable(byte_1004A9FF4, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932B8);
  }

  return result;
}

unint64_t sub_100281788()
{
  result = qword_1005932C0;
  if (!qword_1005932C0)
  {
    result = swift_getWitnessTable("%R\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932C0);
  }

  return result;
}

unint64_t sub_1002817E0()
{
  result = qword_1005932C8;
  if (!qword_1005932C8)
  {
    result = swift_getWitnessTable("MU\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932C8);
  }

  return result;
}

unint64_t sub_100281838()
{
  result = qword_1005932D0;
  if (!qword_1005932D0)
  {
    result = swift_getWitnessTable(byte_1004A9F64, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932D0);
  }

  return result;
}

unint64_t sub_100281890()
{
  result = qword_1005932D8;
  if (!qword_1005932D8)
  {
    result = swift_getWitnessTable(byte_1004A9E84, &type metadata for NANAttribute.SecurityContextInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932D8);
  }

  return result;
}

unint64_t sub_1002818E8()
{
  result = qword_1005932E0;
  if (!qword_1005932E0)
  {
    result = swift_getWitnessTable(byte_1004A9EAC, &type metadata for NANAttribute.SecurityContextInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932E0);
  }

  return result;
}

unint64_t sub_100281940()
{
  result = qword_1005932E8;
  if (!qword_1005932E8)
  {
    result = swift_getWitnessTable(byte_1004A9DCC, &type metadata for NANAttribute.CipherSuiteInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932E8);
  }

  return result;
}

unint64_t sub_100281998()
{
  result = qword_1005932F0;
  if (!qword_1005932F0)
  {
    result = swift_getWitnessTable("MT\n", &type metadata for NANAttribute.CipherSuiteInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932F0);
  }

  return result;
}

unint64_t sub_1002819F0()
{
  result = qword_1005932F8;
  if (!qword_1005932F8)
  {
    result = swift_getWitnessTable("uW\n", &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005932F8);
  }

  return result;
}

unint64_t sub_100281A48()
{
  result = qword_100593300;
  if (!qword_100593300)
  {
    result = swift_getWitnessTable(byte_1004A9D3C, &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593300);
  }

  return result;
}

unint64_t sub_100281AA0()
{
  result = qword_100593308;
  if (!qword_100593308)
  {
    result = swift_getWitnessTable("-X\n", &type metadata for NANAttribute.FineTimingMeasurementRangeReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593308);
  }

  return result;
}

unint64_t sub_100281AF8()
{
  result = qword_100593310;
  if (!qword_100593310)
  {
    result = swift_getWitnessTable(byte_1004A9C84, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593310);
  }

  return result;
}

unint64_t sub_100281B50()
{
  result = qword_100593318;
  if (!qword_100593318)
  {
    result = swift_getWitnessTable(byte_1004A9BA4, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593318);
  }

  return result;
}

unint64_t sub_100281BA8()
{
  result = qword_100593320;
  if (!qword_100593320)
  {
    result = swift_getWitnessTable("uV\n", &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593320);
  }

  return result;
}

unint64_t sub_100281C00()
{
  result = qword_100593328;
  if (!qword_100593328)
  {
    result = swift_getWitnessTable(byte_1004A9AEC, &type metadata for NANAttribute.ExtendedMesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593328);
  }

  return result;
}

unint64_t sub_100281C58()
{
  result = qword_100593330;
  if (!qword_100593330)
  {
    result = swift_getWitnessTable("-W\n", &type metadata for NANAttribute.ExtendedMesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593330);
  }

  return result;
}

unint64_t sub_100281CB0()
{
  result = qword_100593338;
  if (!qword_100593338)
  {
    result = swift_getWitnessTable("UZ\n", &type metadata for NANAttribute.ExtendedIBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593338);
  }

  return result;
}

unint64_t sub_100281D08()
{
  result = qword_100593340;
  if (!qword_100593340)
  {
    result = swift_getWitnessTable(byte_1004A9A5C, &type metadata for NANAttribute.ExtendedIBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593340);
  }

  return result;
}

unint64_t sub_100281D60()
{
  result = qword_100593348;
  if (!qword_100593348)
  {
    result = swift_getWitnessTable("\r[\n", &type metadata for NANAttribute.ExtendedP2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593348);
  }

  return result;
}

unint64_t sub_100281DB8()
{
  result = qword_100593350;
  if (!qword_100593350)
  {
    result = swift_getWitnessTable(byte_1004A99A4, &type metadata for NANAttribute.ExtendedP2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593350);
  }

  return result;
}

unint64_t sub_100281E10()
{
  result = qword_100593358;
  if (!qword_100593358)
  {
    result = swift_getWitnessTable(byte_1004A98C4, &type metadata for NANAttribute.ElementContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593358);
  }

  return result;
}

unint64_t sub_100281E68()
{
  result = qword_100593360;
  if (!qword_100593360)
  {
    result = swift_getWitnessTable("UY\n", &type metadata for NANAttribute.ElementContainer.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593360);
  }

  return result;
}

unint64_t sub_100281EC0()
{
  result = qword_100593368;
  if (!qword_100593368)
  {
    result = swift_getWitnessTable("}\\\n", &type metadata for NANAttribute.ElementContainer.ElementIDExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593368);
  }

  return result;
}

unint64_t sub_100281F18()
{
  result = qword_100593370;
  if (!qword_100593370)
  {
    result = swift_getWitnessTable("\rZ\n", &type metadata for NANAttribute.ElementContainer.ElementIDExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593370);
  }

  return result;
}

unint64_t sub_100281F70()
{
  result = qword_100593378;
  if (!qword_100593378)
  {
    result = swift_getWitnessTable("5]\n", &type metadata for NANAttribute.ElementContainer.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593378);
  }

  return result;
}

unint64_t sub_100281FC8()
{
  result = qword_100593380;
  if (!qword_100593380)
  {
    result = swift_getWitnessTable(byte_1004A977C, &type metadata for NANAttribute.ElementContainer.VendorSpecific.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593380);
  }

  return result;
}

unint64_t sub_100282020()
{
  result = qword_100593388;
  if (!qword_100593388)
  {
    result = swift_getWitnessTable(byte_1004A969C, &type metadata for NANAttribute.ElementContainer.VHTOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593388);
  }

  return result;
}

unint64_t sub_100282078()
{
  result = qword_100593390;
  if (!qword_100593390)
  {
    result = swift_getWitnessTable("}[\n", &type metadata for NANAttribute.ElementContainer.VHTOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593390);
  }

  return result;
}

unint64_t sub_1002820D0()
{
  result = qword_100593398;
  if (!qword_100593398)
  {
    result = swift_getWitnessTable(byte_1004A95E4, &type metadata for NANAttribute.ElementContainer.VHTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593398);
  }

  return result;
}

unint64_t sub_100282128()
{
  result = qword_1005933A0;
  if (!qword_1005933A0)
  {
    result = swift_getWitnessTable("5\\\n", &type metadata for NANAttribute.ElementContainer.VHTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933A0);
  }

  return result;
}

unint64_t sub_100282180()
{
  result = qword_1005933A8;
  if (!qword_1005933A8)
  {
    result = swift_getWitnessTable("]_\n", &type metadata for NANAttribute.ElementContainer.HTInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933A8);
  }

  return result;
}

unint64_t sub_1002821D8()
{
  result = qword_1005933B0;
  if (!qword_1005933B0)
  {
    result = swift_getWitnessTable(byte_1004A9554, &type metadata for NANAttribute.ElementContainer.HTInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933B0);
  }

  return result;
}

unint64_t sub_100282230()
{
  result = qword_1005933B8;
  if (!qword_1005933B8)
  {
    result = swift_getWitnessTable(byte_1004A9474, &type metadata for NANAttribute.ElementContainer.HTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933B8);
  }

  return result;
}

unint64_t sub_100282288()
{
  result = qword_1005933C0;
  if (!qword_1005933C0)
  {
    result = swift_getWitnessTable(byte_1004A949C, &type metadata for NANAttribute.ElementContainer.HTCapabilities.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933C0);
  }

  return result;
}

unint64_t sub_1002822E0()
{
  result = qword_1005933C8;
  if (!qword_1005933C8)
  {
    result = swift_getWitnessTable(byte_1004A93BC, &type metadata for NANAttribute.DeviceLinkQoS.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933C8);
  }

  return result;
}

unint64_t sub_100282338()
{
  result = qword_1005933D0;
  if (!qword_1005933D0)
  {
    result = swift_getWitnessTable("]^\n", &type metadata for NANAttribute.DeviceLinkQoS.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933D0);
  }

  return result;
}

unint64_t sub_100282390()
{
  result = qword_1005933D8;
  if (!qword_1005933D8)
  {
    result = swift_getWitnessTable(byte_1004A9304, &type metadata for NANAttribute.DataCluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933D8);
  }

  return result;
}

unint64_t sub_1002823E8()
{
  result = qword_1005933E0;
  if (!qword_1005933E0)
  {
    result = swift_getWitnessTable(byte_1004A932C, &type metadata for NANAttribute.DataCluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933E0);
  }

  return result;
}

unint64_t sub_100282440()
{
  result = qword_1005933E8;
  if (!qword_1005933E8)
  {
    result = swift_getWitnessTable("=b\n", &type metadata for NANAttribute.Availability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933E8);
  }

  return result;
}

unint64_t sub_100282498()
{
  result = qword_1005933F0;
  if (!qword_1005933F0)
  {
    result = swift_getWitnessTable(byte_1004A9274, &type metadata for NANAttribute.Availability.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933F0);
  }

  return result;
}

unint64_t sub_1002824F0()
{
  result = qword_1005933F8;
  if (!qword_1005933F8)
  {
    result = swift_getWitnessTable(byte_1004A9194, &type metadata for NANAttribute.DeviceCapabilityExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005933F8);
  }

  return result;
}

unint64_t sub_100282548()
{
  result = qword_100593400;
  if (!qword_100593400)
  {
    result = swift_getWitnessTable(byte_1004A91BC, &type metadata for NANAttribute.DeviceCapabilityExtension.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593400);
  }

  return result;
}

unint64_t sub_1002825A0()
{
  result = qword_100593408;
  if (!qword_100593408)
  {
    result = swift_getWitnessTable(byte_1004A90DC, &type metadata for NANAttribute.DeviceCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593408);
  }

  return result;
}

unint64_t sub_1002825F8()
{
  result = qword_100593410;
  if (!qword_100593410)
  {
    result = swift_getWitnessTable("=a\n", &type metadata for NANAttribute.DeviceCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593410);
  }

  return result;
}

unint64_t sub_100282650()
{
  result = qword_100593418;
  if (!qword_100593418)
  {
    result = swift_getWitnessTable("ed\n", &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593418);
  }

  return result;
}

unint64_t sub_1002826A8()
{
  result = qword_100593420;
  if (!qword_100593420)
  {
    result = swift_getWitnessTable(byte_1004A904C, &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593420);
  }

  return result;
}

unint64_t sub_100282700()
{
  result = qword_100593428;
  if (!qword_100593428)
  {
    result = swift_getWitnessTable(byte_1004A8F6C, &type metadata for NANAttribute.ClusterDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593428);
  }

  return result;
}

unint64_t sub_100282758()
{
  result = qword_100593430;
  if (!qword_100593430)
  {
    result = swift_getWitnessTable(byte_1004A8F94, &type metadata for NANAttribute.ClusterDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593430);
  }

  return result;
}

unint64_t sub_1002827B0()
{
  result = qword_100593438;
  if (!qword_100593438)
  {
    result = swift_getWitnessTable(byte_1004A8EB4, &type metadata for NANAttribute.Ranging.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593438);
  }

  return result;
}

unint64_t sub_100282808()
{
  result = qword_100593440;
  if (!qword_100593440)
  {
    result = swift_getWitnessTable("ec\n", &type metadata for NANAttribute.Ranging.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593440);
  }

  return result;
}

unint64_t sub_100282860()
{
  result = qword_100593448;
  if (!qword_100593448)
  {
    result = swift_getWitnessTable(byte_1004A8DFC, &type metadata for NANAttribute.FurtherAvailabilityMap.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593448);
  }

  return result;
}

unint64_t sub_1002828B8()
{
  result = qword_100593450;
  if (!qword_100593450)
  {
    result = swift_getWitnessTable(byte_1004A8E24, &type metadata for NANAttribute.FurtherAvailabilityMap.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593450);
  }

  return result;
}

unint64_t sub_100282910()
{
  result = qword_100593458;
  if (!qword_100593458)
  {
    result = swift_getWitnessTable("Eg\n", &type metadata for NANAttribute.FurtherServiceDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593458);
  }

  return result;
}

unint64_t sub_100282968()
{
  result = qword_100593460;
  if (!qword_100593460)
  {
    result = swift_getWitnessTable(byte_1004A8D6C, &type metadata for NANAttribute.FurtherServiceDiscovery.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593460);
  }

  return result;
}

unint64_t sub_1002829C0()
{
  result = qword_100593468;
  if (!qword_100593468)
  {
    result = swift_getWitnessTable(byte_1004A8C8C, &type metadata for NANAttribute.Mesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593468);
  }

  return result;
}

unint64_t sub_100282A18()
{
  result = qword_100593470;
  if (!qword_100593470)
  {
    result = swift_getWitnessTable(byte_1004A8CB4, &type metadata for NANAttribute.Mesh.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593470);
  }

  return result;
}

unint64_t sub_100282A70()
{
  result = qword_100593478;
  if (!qword_100593478)
  {
    result = swift_getWitnessTable(byte_1004A8BD4, &type metadata for NANAttribute.IBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593478);
  }

  return result;
}

unint64_t sub_100282AC8()
{
  result = qword_100593480;
  if (!qword_100593480)
  {
    result = swift_getWitnessTable("Ef\n", &type metadata for NANAttribute.IBSS.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593480);
  }

  return result;
}

unint64_t sub_100282B20()
{
  result = qword_100593488;
  if (!qword_100593488)
  {
    result = swift_getWitnessTable("mi\n", &type metadata for NANAttribute.P2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593488);
  }

  return result;
}

unint64_t sub_100282B78()
{
  result = qword_100593490;
  if (!qword_100593490)
  {
    result = swift_getWitnessTable(byte_1004A8B44, &type metadata for NANAttribute.P2POperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593490);
  }

  return result;
}

unint64_t sub_100282BD0()
{
  result = qword_100593498;
  if (!qword_100593498)
  {
    result = swift_getWitnessTable("%j\n", &type metadata for NANAttribute.WLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593498);
  }

  return result;
}

unint64_t sub_100282C28()
{
  result = qword_1005934A0;
  if (!qword_1005934A0)
  {
    result = swift_getWitnessTable(byte_1004A8A8C, &type metadata for NANAttribute.WLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934A0);
  }

  return result;
}

unint64_t sub_100282C80()
{
  result = qword_1005934A8;
  if (!qword_1005934A8)
  {
    result = swift_getWitnessTable(byte_1004A89AC, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934A8);
  }

  return result;
}

unint64_t sub_100282CD8()
{
  result = qword_1005934B0;
  if (!qword_1005934B0)
  {
    result = swift_getWitnessTable("mh\n", &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934B0);
  }

  return result;
}

unint64_t sub_100282D30()
{
  result = qword_1005934B8;
  if (!qword_1005934B8)
  {
    result = swift_getWitnessTable(byte_1004A88F4, &type metadata for NANAttribute.ServiceIDList.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934B8);
  }

  return result;
}

unint64_t sub_100282D88()
{
  result = qword_1005934C0;
  if (!qword_1005934C0)
  {
    result = swift_getWitnessTable("%i\n", v0);
    atomic_store(result, &qword_1005934C0);
  }

  return result;
}

unint64_t sub_100282DE0()
{
  result = qword_1005934C8;
  if (!qword_1005934C8)
  {
    result = swift_getWitnessTable("Ml\n", &type metadata for NANAttribute.Cluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934C8);
  }

  return result;
}

unint64_t sub_100282E38()
{
  result = qword_1005934D0;
  if (!qword_1005934D0)
  {
    result = swift_getWitnessTable(byte_1004A8864, &type metadata for NANAttribute.Cluster.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934D0);
  }

  return result;
}

unint64_t sub_100282E90()
{
  result = qword_1005934D8;
  if (!qword_1005934D8)
  {
    result = swift_getWitnessTable(byte_1004A8784, &type metadata for NANAttribute.MasterIndication.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934D8);
  }

  return result;
}

unint64_t sub_100282EE8()
{
  result = qword_1005934E0;
  if (!qword_1005934E0)
  {
    result = swift_getWitnessTable(byte_1004A87AC, &type metadata for NANAttribute.MasterIndication.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005934E0);
  }

  return result;
}

uint64_t sub_100282F3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004BD710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43706F68 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004B9B50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100283064(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004BD770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004BD790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1002831DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100283300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4953534273736269 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10028342C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496873656DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10028354C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972657473756C63 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7366664F656D6974 && a2 == 0xEA00000000007465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004BD710 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10028367C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444970616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004BD7D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xEE0073646E614264 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004BD800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001004BD820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1002838D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004BD7B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002839FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4972657473756C63 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEF73656972746E45)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100283B24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100283C38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73444970616DLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7061437468 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F666E697468 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706143746876 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x704F746876 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7053726F646E6576 && a2 == 0xEA00000000006365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746E656D656C65 && a2 == 0xEC00000074784544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100283EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004BD770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004BD790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004BD870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004BD890 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10028407C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004BD870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004BD890 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002841FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4953534273736269 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004BD870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004BD890 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100284384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004BD870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004BD890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496873656DLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100284500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469737362 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E4565676E6172 && a2 == 0xEB00000000317972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E4565676E6172 && a2 == 0xEB00000000327972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E4565676E6172 && a2 == 0xEB00000000337972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004BD8B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1002846FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444979656BLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5132393 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1263814505 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100284810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444979656BLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5132393 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B54474962 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100284920()
{
  result = qword_1005934E8;
  if (!qword_1005934E8)
  {
    result = swift_getWitnessTable("]P\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KDESelector, v0, v1);
    atomic_store(result, &qword_1005934E8);
  }

  return result;
}

uint64_t sub_100284974(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6911343 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614479656BLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100284A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444967736D6ELL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BD930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001004BD950 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100284C40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556726568706963 && a2 == 0xED00006E6F697372;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100284D5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004BD9A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_100284EC8()
{
  result = qword_1005934F0;
  if (!qword_1005934F0)
  {
    result = swift_getWitnessTable(byte_1004AA90C, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.DescriptorType, v0, v1);
    atomic_store(result, &qword_1005934F0);
  }

  return result;
}

unint64_t sub_100284F1C()
{
  result = qword_1005934F8;
  if (!qword_1005934F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.AttributeType, &type metadata for NANAttribute.AttributeType, v0, v1);
    atomic_store(result, &qword_1005934F8);
  }

  return result;
}

unint64_t sub_100284F70()
{
  result = qword_100593500;
  if (!qword_100593500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CustomDeviceInformation.PlatformType, &type metadata for NANAttribute.CustomDeviceInformation.PlatformType, v0, v1);
    atomic_store(result, &qword_100593500);
  }

  return result;
}

unint64_t sub_100284FC4()
{
  result = qword_100593508;
  if (!qword_100593508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Status, &type metadata for NANAttribute.PairingBootstrapping.Status, v0, v1);
    atomic_store(result, &qword_100593508);
  }

  return result;
}

unint64_t sub_100285018()
{
  result = qword_100593510;
  if (!qword_100593510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.PairingType, &type metadata for NANAttribute.PairingBootstrapping.PairingType, v0, v1);
    atomic_store(result, &qword_100593510);
  }

  return result;
}

unint64_t sub_10028506C()
{
  result = qword_100593518;
  if (!qword_100593518)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingIdentityResolution.CipherVersion, &type metadata for NANAttribute.PairingIdentityResolution.CipherVersion, v0, v1);
    atomic_store(result, &qword_100593518);
  }

  return result;
}

unint64_t sub_1002850C0()
{
  result = qword_100593520;
  if (!qword_100593520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SecurityContextInformation.SecurityContextIdentifier.IdentifierType, &type metadata for NANAttribute.SecurityContextInformation.SecurityContextIdentifier.IdentifierType, v0, v1);
    atomic_store(result, &qword_100593520);
  }

  return result;
}

unint64_t sub_100285114()
{
  result = qword_100593528;
  if (!qword_100593528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Status, &type metadata for NANAttribute.RangingSetup.Status, v0, v1);
    atomic_store(result, &qword_100593528);
  }

  return result;
}

unint64_t sub_100285168()
{
  result = qword_100593530;
  if (!qword_100593530)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.AttributeType, &type metadata for NANAttribute.RangingSetup.AttributeType, v0, v1);
    atomic_store(result, &qword_100593530);
  }

  return result;
}

unint64_t sub_1002851BC()
{
  result = qword_100593538;
  if (!qword_100593538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Status, &type metadata for NANAttribute.DeviceLink.Status, v0, v1);
    atomic_store(result, &qword_100593538);
  }

  return result;
}

unint64_t sub_100285210()
{
  result = qword_100593540;
  if (!qword_100593540)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.AttributeType, &type metadata for NANAttribute.DeviceLink.AttributeType, v0, v1);
    atomic_store(result, &qword_100593540);
  }

  return result;
}

unint64_t sub_100285264()
{
  result = qword_100593548;
  if (!qword_100593548)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.ServiceInfoType, &type metadata for NANAttribute.DatapathExtension.ServiceInfoType, v0, v1);
    atomic_store(result, &qword_100593548);
  }

  return result;
}

unint64_t sub_1002852B8()
{
  result = qword_100593550;
  if (!qword_100593550)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Status, &type metadata for NANAttribute.Datapath.Status, v0, v1);
    atomic_store(result, &qword_100593550);
  }

  return result;
}

unint64_t sub_10028530C()
{
  result = qword_100593558;
  if (!qword_100593558)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.AttributeType, &type metadata for NANAttribute.Datapath.AttributeType, v0, v1);
    atomic_store(result, &qword_100593558);
  }

  return result;
}

unint64_t sub_100285360()
{
  result = qword_100593560;
  if (!qword_100593560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapabilityExtension.RegulatoryInformationForSixGHz, &type metadata for NANAttribute.DeviceCapabilityExtension.RegulatoryInformationForSixGHz, v0, v1);
    atomic_store(result, &qword_100593560);
  }

  return result;
}

unint64_t sub_1002853B4()
{
  result = qword_100593568;
  if (!qword_100593568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.WLANInfrastructure.DeviceRole, &type metadata for NANAttribute.WLANInfrastructure.DeviceRole, v0, v1);
    atomic_store(result, &qword_100593568);
  }

  return result;
}

unint64_t sub_100285408()
{
  result = qword_100593598;
  if (!qword_100593598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANReasonCode, &type metadata for NANReasonCode, v0, v1);
    atomic_store(result, &qword_100593598);
  }

  return result;
}

unint64_t sub_10028545C()
{
  result = qword_1005935A0;
  if (!qword_1005935A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.PairingBootstrapping.Method, &type metadata for NANAttribute.PairingBootstrapping.Method, v0, v1);
    atomic_store(result, &qword_1005935A0);
  }

  return result;
}

unint64_t sub_1002854B0()
{
  result = qword_1005935B0;
  if (!qword_1005935B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005922A0, &qword_10049F8C0);
    v4[0] = sub_100285534();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005935B0);
  }

  return result;
}

unint64_t sub_100285534()
{
  result = qword_1005935B8;
  if (!qword_1005935B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANScheduleEntry, &type metadata for NANScheduleEntry, v0, v1);
    atomic_store(result, &qword_1005935B8);
  }

  return result;
}

unint64_t sub_100285588()
{
  result = qword_1005935C8;
  if (!qword_1005935C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.MulticastScheduleChange.Control, &type metadata for NANAttribute.MulticastScheduleChange.Control, v0, v1);
    atomic_store(result, &qword_1005935C8);
  }

  return result;
}

unint64_t sub_1002855DC()
{
  result = qword_1005935D8;
  if (!qword_1005935D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor, v0, v1);
    atomic_store(result, &qword_1005935D8);
  }

  return result;
}

unint64_t sub_100285630()
{
  result = qword_1005935E0;
  if (!qword_1005935E0)
  {
    result = swift_getWitnessTable(byte_1004AA8A4, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.DescriptorType, v0, v1);
    atomic_store(result, &qword_1005935E0);
  }

  return result;
}

unint64_t sub_100285684()
{
  result = qword_1005935E8;
  if (!qword_1005935E8)
  {
    result = swift_getWitnessTable("%I\n", &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyInformation, v0, v1);
    atomic_store(result, &qword_1005935E8);
  }

  return result;
}

unint64_t sub_1002856D8()
{
  result = qword_100593610;
  if (!qword_100593610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, &type metadata for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.Bitmap, v0, v1);
    atomic_store(result, &qword_100593610);
  }

  return result;
}

unint64_t sub_10028572C()
{
  result = qword_100593620;
  if (!qword_100593620)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592488, &qword_10049F968);
    v4[0] = sub_1002857B0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100593620);
  }

  return result;
}

unint64_t sub_1002857B0()
{
  result = qword_100593628;
  if (!qword_100593628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.SecurityContextInformation.SecurityContextIdentifier, &type metadata for NANAttribute.SecurityContextInformation.SecurityContextIdentifier, v0, v1);
    atomic_store(result, &qword_100593628);
  }

  return result;
}

unint64_t sub_100285804()
{
  result = qword_100593638;
  if (!qword_100593638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, v0, v1);
    atomic_store(result, &qword_100593638);
  }

  return result;
}

unint64_t sub_100285858()
{
  result = qword_100593640;
  if (!qword_100593640)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592460, &qword_10049F958);
    v4[0] = sub_1002858DC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100593640);
  }

  return result;
}

unint64_t sub_1002858DC()
{
  result = qword_100593648;
  if (!qword_100593648)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.CipherSuiteInformation.CipherSuite, &type metadata for NANAttribute.CipherSuiteInformation.CipherSuite, v0, v1);
    atomic_store(result, &qword_100593648);
  }

  return result;
}

unint64_t sub_100285930()
{
  result = qword_100593658;
  if (!qword_100593658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANCipherSuite, &type metadata for NANCipherSuite, v0, v1);
    atomic_store(result, &qword_100593658);
  }

  return result;
}

unint64_t sub_100285984()
{
  result = qword_100593660;
  if (!qword_100593660)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.FineTimingMeasurementRangeReport.Entry, &type metadata for NANAttribute.FineTimingMeasurementRangeReport.Entry, v0, v1);
    atomic_store(result, &qword_100593660);
  }

  return result;
}

unint64_t sub_1002859D8()
{
  result = qword_100593678;
  if (!qword_100593678)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANOperatingChannelInformation, &type metadata for NonNANOperatingChannelInformation, v0, v1);
    atomic_store(result, &qword_100593678);
  }

  return result;
}

unint64_t sub_100285A2C()
{
  result = qword_100593680;
  if (!qword_100593680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NonNANBeaconInformation, &type metadata for NonNANBeaconInformation, v0, v1);
    atomic_store(result, &qword_100593680);
  }

  return result;
}

unint64_t sub_100285A80()
{
  result = qword_100593698;
  if (!qword_100593698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.P2POperation.DeviceRole, &type metadata for NANAttribute.P2POperation.DeviceRole, v0, v1);
    atomic_store(result, &qword_100593698);
  }

  return result;
}

unint64_t sub_100285AD4()
{
  result = qword_1005936A8;
  if (!qword_1005936A8)
  {
    result = swift_getWitnessTable("I7\n", &type metadata for NANAttribute.ExtendedWLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005936A8);
  }

  return result;
}

unint64_t sub_100285B28()
{
  result = qword_1005936B0;
  if (!qword_1005936B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.WLANInfrastructure.DeviceRole, &type metadata for NANAttribute.WLANInfrastructure.DeviceRole, v0, v1);
    atomic_store(result, &qword_1005936B0);
  }

  return result;
}

unint64_t sub_100285B7C()
{
  result = qword_1005936C0;
  if (!qword_1005936C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMapIDs, &type metadata for NANMapIDs, v0, v1);
    atomic_store(result, &qword_1005936C0);
  }

  return result;
}

unint64_t sub_100285BD0()
{
  result = qword_1005936C8;
  if (!qword_1005936C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.HTCapabilities, &type metadata for NANAttribute.ElementContainer.HTCapabilities, v0, v1);
    atomic_store(result, &qword_1005936C8);
  }

  return result;
}

unint64_t sub_100285C24()
{
  result = qword_1005936D0;
  if (!qword_1005936D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.HTInformation, &type metadata for NANAttribute.ElementContainer.HTInformation, v0, v1);
    atomic_store(result, &qword_1005936D0);
  }

  return result;
}

unint64_t sub_100285C78()
{
  result = qword_1005936D8;
  if (!qword_1005936D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTCapabilities, &type metadata for NANAttribute.ElementContainer.VHTCapabilities, v0, v1);
    atomic_store(result, &qword_1005936D8);
  }

  return result;
}

unint64_t sub_100285CCC()
{
  result = qword_1005936E0;
  if (!qword_1005936E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.VHTOperation, &type metadata for NANAttribute.ElementContainer.VHTOperation, v0, v1);
    atomic_store(result, &qword_1005936E0);
  }

  return result;
}

unint64_t sub_100285D20()
{
  result = qword_1005936E8;
  if (!qword_1005936E8)
  {
    result = swift_getWitnessTable("Ű\n", &type metadata for NANAttribute.ElementContainer.VendorSpecific, v0, v1);
    atomic_store(result, &qword_1005936E8);
  }

  return result;
}

unint64_t sub_100285D74()
{
  result = qword_1005936F0;
  if (!qword_1005936F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ElementContainer.ElementIDExtension, &type metadata for NANAttribute.ElementContainer.ElementIDExtension, v0, v1);
    atomic_store(result, &qword_1005936F0);
  }

  return result;
}

unint64_t sub_100285E00()
{
  result = qword_100593730;
  if (!qword_100593730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.Control, &type metadata for NANAttribute.RangingSetup.Control, v0, v1);
    atomic_store(result, &qword_100593730);
  }

  return result;
}

unint64_t sub_100285E54()
{
  result = qword_100593740;
  if (!qword_100593740)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100593738, &qword_1004ABAC8);
    v4[0] = sub_100285ED8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100593740);
  }

  return result;
}

unint64_t sub_100285ED8()
{
  result = qword_100593748;
  if (!qword_100593748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingSetup.FineTimingMeasurementParameters, &type metadata for NANAttribute.RangingSetup.FineTimingMeasurementParameters, v0, v1);
    atomic_store(result, &qword_100593748);
  }

  return result;
}

unint64_t sub_100285F2C()
{
  result = qword_100593750;
  if (!qword_100593750)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.RangingInformation.LocationInformation, &type metadata for NANAttribute.RangingInformation.LocationInformation, v0, v1);
    atomic_store(result, &qword_100593750);
  }

  return result;
}

unint64_t sub_100285F80()
{
  result = qword_100593758;
  if (!qword_100593758)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowOverwrite, v0, v1);
    atomic_store(result, &qword_100593758);
  }

  return result;
}

unint64_t sub_100285FD4()
{
  result = qword_100593760;
  if (!qword_100593760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.UnalignedSchedule.UnalignedWindowControl, &type metadata for NANAttribute.UnalignedSchedule.UnalignedWindowControl, v0, v1);
    atomic_store(result, &qword_100593760);
  }

  return result;
}

unint64_t sub_100286028()
{
  result = qword_100593778;
  if (!qword_100593778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceLink.Control, &type metadata for NANAttribute.DeviceLink.Control, v0, v1);
    atomic_store(result, &qword_100593778);
  }

  return result;
}

unint64_t sub_10028607C()
{
  result = qword_100593788;
  if (!qword_100593788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DataCluster.Control, &type metadata for NANAttribute.DataCluster.Control, v0, v1);
    atomic_store(result, &qword_100593788);
  }

  return result;
}

unint64_t sub_1002860D0()
{
  result = qword_100593798;
  if (!qword_100593798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Availability.Control, &type metadata for NANAttribute.Availability.Control, v0, v1);
    atomic_store(result, &qword_100593798);
  }

  return result;
}

unint64_t sub_100286124()
{
  result = qword_1005937A0;
  if (!qword_1005937A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592270, &qword_10049F8B0);
    v4[0] = sub_1002861A8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005937A0);
  }

  return result;
}

unint64_t sub_1002861A8()
{
  result = qword_1005937A8;
  if (!qword_1005937A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAvailabilityEntry, &type metadata for NANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_1005937A8);
  }

  return result;
}

unint64_t sub_1002861FC()
{
  result = qword_1005937B8;
  if (!qword_1005937B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DatapathExtension.Control, &type metadata for NANAttribute.DatapathExtension.Control, v0, v1);
    atomic_store(result, &qword_1005937B8);
  }

  return result;
}

unint64_t sub_100286288()
{
  result = qword_1005937C0;
  if (!qword_1005937C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.Datapath.Control, &type metadata for NANAttribute.Datapath.Control, v0, v1);
    atomic_store(result, &qword_1005937C0);
  }

  return result;
}

unint64_t sub_100286314()
{
  result = qword_1005937D8;
  if (!qword_1005937D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, &type metadata for NANAttribute.DeviceCapability.CommittedDiscoveryWindowInformation, v0, v1);
    atomic_store(result, &qword_1005937D8);
  }

  return result;
}

unint64_t sub_100286368()
{
  result = qword_1005937E0;
  if (!qword_1005937E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.OperationMode, &type metadata for NANAttribute.DeviceCapability.OperationMode, v0, v1);
    atomic_store(result, &qword_1005937E0);
  }

  return result;
}

unint64_t sub_1002863BC()
{
  result = qword_1005937E8;
  if (!qword_1005937E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.AnntenaCount, &type metadata for NANAttribute.DeviceCapability.AnntenaCount, v0, v1);
    atomic_store(result, &qword_1005937E8);
  }

  return result;
}

unint64_t sub_100286410()
{
  result = qword_1005937F0;
  if (!qword_1005937F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.DeviceCapability.Capabilities, &type metadata for NANAttribute.DeviceCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_1005937F0);
  }

  return result;
}

unint64_t sub_100286464()
{
  result = qword_100593800;
  if (!qword_100593800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMasterRank, &type metadata for NANMasterRank, v0, v1);
    atomic_store(result, &qword_100593800);
  }

  return result;
}

unint64_t sub_1002864B8()
{
  result = qword_100593818;
  if (!qword_100593818)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100592188, &qword_10049F850);
    v4[0] = sub_10028653C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100593818);
  }

  return result;
}

unint64_t sub_10028653C()
{
  result = qword_100593820;
  if (!qword_100593820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailabilityEntry, &type metadata for DeprecatedNANAvailabilityEntry, v0, v1);
    atomic_store(result, &qword_100593820);
  }

  return result;
}

unint64_t sub_100286590()
{
  result = qword_100593830;
  if (!qword_100593830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeprecatedNANAvailability, &type metadata for DeprecatedNANAvailability, v0, v1);
    atomic_store(result, &qword_100593830);
  }

  return result;
}

unint64_t sub_10028661C()
{
  result = qword_100593858;
  if (!qword_100593858)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.Control, &type metadata for NANAttribute.ServiceDescriptorExtension.Control, v0, v1);
    atomic_store(result, &qword_100593858);
  }

  return result;
}

unint64_t sub_100286670()
{
  result = qword_100593860;
  if (!qword_100593860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptorExtension.RangeLimit, &type metadata for NANAttribute.ServiceDescriptorExtension.RangeLimit, v0, v1);
    atomic_store(result, &qword_100593860);
  }

  return result;
}

unint64_t sub_1002866C4()
{
  result = qword_100593870;
  if (!qword_100593870)
  {
    result = swift_getWitnessTable("\tx\v", &type metadata for NANServiceName.Hash, v0, v1);
    atomic_store(result, &qword_100593870);
  }

  return result;
}

unint64_t sub_100286718()
{
  result = qword_100593878;
  if (!qword_100593878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANAttribute.ServiceDescriptor.Control, &type metadata for NANAttribute.ServiceDescriptor.Control, v0, v1);
    atomic_store(result, &qword_100593878);
  }

  return result;
}

unint64_t sub_1002867A4()
{
  result = qword_100593890;
  if (!qword_100593890)
  {
    result = swift_getWitnessTable(byte_1004ABD00, &type metadata for NANAttribute.ServiceDescriptor.ServiceFilterControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_100593890);
  }

  return result;
}

unint64_t sub_1002867F8()
{
  result = qword_10058ECE8;
  if (!qword_10058ECE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058E398, &qword_100489498);
    v4[0] = sub_10003804C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058ECE8);
  }

  return result;
}

unint64_t sub_10028687C()
{
  result = qword_1005938A0;
  if (!qword_1005938A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_1005920C0, &unk_10049F800);
    v4[0] = sub_1002866C4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005938A0);
  }

  return result;
}

unint64_t sub_100286924()
{
  result = qword_1005938D0;
  if (!qword_1005938D0)
  {
    result = swift_getWitnessTable(byte_1004ABC20, &type metadata for NANAttribute.ExtendedWLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938D0);
  }

  return result;
}

unint64_t sub_10028697C()
{
  result = qword_1005938D8;
  if (!qword_1005938D8)
  {
    result = swift_getWitnessTable("15\n", &type metadata for NANAttribute.ServiceDescriptor.ServiceFilterControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938D8);
  }

  return result;
}

unint64_t sub_1002869D4()
{
  result = qword_1005938E0;
  if (!qword_1005938E0)
  {
    result = swift_getWitnessTable("A8\n", &type metadata for NANAttribute.ServiceDescriptor.ServiceFilterControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938E0);
  }

  return result;
}

unint64_t sub_100286A2C()
{
  result = qword_1005938E8;
  if (!qword_1005938E8)
  {
    result = swift_getWitnessTable(byte_1004ABC70, &type metadata for NANAttribute.ServiceDescriptor.ServiceFilterControl.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938E8);
  }

  return result;
}

unint64_t sub_100286A84()
{
  result = qword_1005938F0;
  if (!qword_1005938F0)
  {
    result = swift_getWitnessTable(byte_1004ABB90, &type metadata for NANAttribute.ExtendedWLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938F0);
  }

  return result;
}

unint64_t sub_100286ADC()
{
  result = qword_1005938F8;
  if (!qword_1005938F8)
  {
    result = swift_getWitnessTable(byte_1004ABBB8, &type metadata for NANAttribute.ExtendedWLANInfrastructure.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005938F8);
  }

  return result;
}

BOOL static P256.KeyAgreement.PublicKey.== infix(_:_:)(uint64_t a1)
{
  v1 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v3 = v2;
  v4 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v6 = v5;
  v7 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v1, v3, v4, v5);
  sub_1000124C8(v4, v6);
  sub_1000124C8(v1, v3);
  return v7;
}

uint64_t P256.KeyAgreement.PublicKey.hash(into:)(uint64_t a1)
{
  v1 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v3 = v2;
  Data.hash(into:)();

  return sub_1000124C8(v1, v3);
}

Swift::Int P256.KeyAgreement.PublicKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v2 = v1;
  Data.hash(into:)();
  sub_1000124C8(v0, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100286FA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v3 = v2;
  Data.hash(into:)();
  sub_1000124C8(v1, v3);
  return Hasher._finalize()();
}

uint64_t sub_10028709C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(__int128 *, void *, void *)@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v7;
    v15 = v8;
    v11 = v19;
    v16 = a4;
    sub_100029B34(v18, v18[3]);
    sub_100039F68();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v17[0] = v17[1];
    v11(v17, &type metadata for Data, &protocol witness table for Data);
    sub_100002A00(v18);
    (*(v15 + 32))(v16, v10, v14);
  }

  return sub_100002A00(a1);
}

uint64_t P256.Signing.ECDSASignature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for P256.Signing.ECDSASignature();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_100029B34(v11, v11[3]);
    sub_100039F68();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v10[0] = v10[1];
    sub_1000BA0A4();
    P256.Signing.ECDSASignature.init<A>(rawRepresentation:)();
    sub_100002A00(v11);
    (*(v6 + 32))(a2, v8, v5);
  }

  return sub_100002A00(a1);
}

unint64_t sub_100287434()
{
  result = qword_100593900;
  if (!qword_100593900)
  {
    v3 = type metadata accessor for P256.KeyAgreement.PublicKey();
    result = swift_getWitnessTable("y3\n", v3, v0, v1);
    atomic_store(result, &qword_100593900);
  }

  return result;
}

uint64_t NANManagementFrameType.init(frameType:frameSubtype:)(char a1, uint64_t a2)
{
  if (a1 == 19)
  {
    return 14;
  }

  if (a1 != 24)
  {
    return 15;
  }

  result = _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(a2);
  if (result == 14)
  {
    return 15;
  }

  return result;
}

BOOL static NANManagementFrameType.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 14)
  {
    return a2 == 14;
  }

  if (a2 == 14)
  {
    return 0;
  }

  return byte_1004AC218[a1] == byte_1004AC218[a2];
}

uint64_t NANManagementFrameType.encode(to:)(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v5, v6);
  if (v3 == 14)
  {
    goto LABEL_4;
  }

  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_100031694(v5, v6);
LABEL_4:
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v5);
}

unint64_t NANManagementFrameType.description.getter(char a1)
{
  if (a1 == 14)
  {
    return 0xD000000000000011;
  }

  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  return 0x206E6F69746361;
}

void NANManagementFrameType.hash(into:)(uint64_t a1, char a2)
{
  if (a2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_1004AC218[a2]);
  }
}

Swift::Int NANManagementFrameType.hashValue.getter(char a1)
{
  v2 = a1;
  Hasher.init(_seed:)();
  if (v2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_1004AC218[a1]);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1002877C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_1004AC218[v1]);
  }

  return Hasher._finalize()();
}

void sub_100287838()
{
  v1 = *v0;
  if (v1 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_1004AC218[v1]);
  }
}

Swift::Int sub_10028788C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_1004AC218[v2]);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002878F8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100287FC0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_100287948(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 14)
  {
    return v3 == 14;
  }

  if (v3 == 14)
  {
    return 0;
  }

  return byte_1004AC218[v2] == byte_1004AC218[v3];
}

uint64_t sub_1002879B8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1002879FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004AC218[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100287A84(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004AC218[v2]);
  return Hasher._finalize()();
}

void NANInformationElement.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = *(type metadata accessor for NANAttribute(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v6 += v7;
      --v4;
    }

    while (v4);
  }
}

Swift::Int NANInformationElement.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = *(type metadata accessor for NANAttribute(0) - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      NANAttribute.hash(into:)(v7);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

void sub_100287C50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = *(type metadata accessor for NANAttribute(0) - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v6 += v7;
      --v4;
    }

    while (v4);
  }
}

Swift::Int sub_100287CFC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = *(v2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = *(type metadata accessor for NANAttribute(0) - 8);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      NANAttribute.hash(into:)(v8);
      v5 += v6;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100287DBC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = NANInformationElement.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t NANInformationElement.encode(to:)(void *a1, uint64_t a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v5, v6);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    v7 = a2;
    sub_100031694(v5, v6);
    sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
    sub_1002304FC();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v5);
}

uint64_t _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1 - 1;
  result = 1;
  switch(v2)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_5;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 18:
      result = 9;
      break;
    default:
      if (v1 == 221)
      {
        result = 13;
      }

      else
      {
LABEL_5:
        result = 14;
      }

      break;
  }

  return result;
}

uint64_t sub_100287FC0(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_4;
  }

  sub_100031694(v12, v13);
  v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if (v4 == 19)
  {
    v3 = 14;
    goto LABEL_12;
  }

  if (v4 == 24)
  {
    sub_100031694(v12, v13);
    v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v3 = _s7CoreP2P21NANActionFrameSubtypeO8rawValueACSgs5UInt8V_tcfC_0(v6);
    if (v3 == 14)
    {
      v11 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v7._object = 0x80000001004BDA20;
      v7._countAndFlagsBits = 0xD000000000000030;
      String.append(_:)(v7);
      v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v8);

      v9._countAndFlagsBits = 0x6570797462757320;
      v9._object = 0xE900000000000020;
      String.append(_:)(v9);
      goto LABEL_14;
    }

LABEL_12:
    sub_100002A00(v12);
    sub_100002A00(a1);
    return v3;
  }

  _StringGuts.grow(_:)(50);

  v11 = 0x80000001004BDA20;
LABEL_14:
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v3 = v11;
  type metadata accessor for DecodingError();
  swift_allocError();
  static DecodingError.dataCorruptedError(in:debugDescription:)();

  swift_willThrow();
  sub_100002A00(v12);
LABEL_4:
  sub_100002A00(a1);
  return v3;
}

uint64_t sub_100288240(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_9;
  }

  v3 = sub_100031694(v13, v14);
  v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if (v4 != 19)
  {
    sub_10000B02C();
    swift_allocError();
    *v10 = xmmword_10047CE70;
    *(v10 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v13);
LABEL_9:
    sub_100002A00(a1);
    return v3;
  }

  v5 = v14;
  v6 = v15;
  sub_100031694(v13, v14);
  v7 = type metadata accessor for NANAttribute(0);
  v8 = sub_10003CE90(&qword_10058D440, protocol conformance descriptor for NANAttribute);
  v9 = UnkeyedDecodingContainer.inferredArrayDecode<A>()(v5, v7, v6, v8);
  v3 = v9;
  if (*(v9 + 16))
  {
    sub_100002A00(v13);
    sub_100002A00(a1);
  }

  else
  {
    sub_10000B02C();
    swift_allocError();
    *v12 = xmmword_10047CE70;
    *(v12 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v13);
    sub_100002A00(a1);
  }

  return v3;
}

unint64_t sub_100288414()
{
  result = qword_100593908;
  if (!qword_100593908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANManagementFrameType, &type metadata for NANManagementFrameType, v0, v1);
    atomic_store(result, &qword_100593908);
  }

  return result;
}

unint64_t sub_10028846C()
{
  result = qword_100593910;
  if (!qword_100593910)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANActionFrameSubtype, &type metadata for NANActionFrameSubtype, v0, v1);
    atomic_store(result, &qword_100593910);
  }

  return result;
}

unint64_t sub_1002884C4()
{
  result = qword_100593918;
  if (!qword_100593918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANInformationElement, &type metadata for NANInformationElement, v0, v1);
    atomic_store(result, &qword_100593918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANManagementFrameType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_20;
  }

  v2 = a2 + 14;
  if (a2 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 14;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 14;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 14;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xE;
  v9 = v7 - 14;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANManagementFrameType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 14;
  if (a3 + 14 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF2)
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10028866C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xE)
  {
    return v1 - 13;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100288680(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 13;
  }

  return result;
}

uint64_t *NANConstants.csaMatterServiceName.unsafeMutableAddressor()
{
  if (qword_10058AB70 != -1)
  {
    swift_once();
  }

  return &static NANConstants.csaMatterServiceName;
}

uint64_t *NANConstants.internetSharingServiceName.unsafeMutableAddressor()
{
  if (qword_10058AB60 != -1)
  {
    swift_once();
  }

  return &static NANConstants.internetSharingServiceName;
}

uint64_t sub_1002887AC()
{
  result = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(0xD000000000000012, 0x80000001004BDAA0);
  if (v1)
  {
    static NANConstants.airplayServiceName = result;
    *algn_10059B758 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *NANConstants.airplayServiceName.unsafeMutableAddressor()
{
  if (qword_10058AB68 != -1)
  {
    swift_once();
  }

  return &static NANConstants.airplayServiceName;
}

uint64_t sub_1002888E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, void *a5)
{
  result = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(a2, a3);
  if (v8)
  {
    *a4 = result;
    *a5 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *NANConstants.seaShipServiceName.unsafeMutableAddressor()
{
  if (qword_10058AB78 != -1)
  {
    swift_once();
  }

  return &static NANConstants.seaShipServiceName;
}

uint64_t sub_10028899C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_100288A60()
{
  v0 = sub_100068720(&off_100556EF8);
  result = swift_arrayDestroy();
  static NANConstants.WiFiAwareExclusivePublishPrivileges = v0;
  return result;
}

uint64_t *NANConstants.WiFiAwareExclusivePublishPrivileges.unsafeMutableAddressor()
{
  if (qword_10058AB80 != -1)
  {
    swift_once();
  }

  return &static NANConstants.WiFiAwareExclusivePublishPrivileges;
}

double static NANConstants.WiFiAwareExclusivePublishPrivileges.getter()
{
  if (qword_10058AB80 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_100288CC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchTimeInterval();
  sub_100068888(v5, a2);
  *sub_100037644(v5, a2) = a3;
  v6 = *(*(v5 - 8) + 104);

  return v6();
}

uint64_t sub_100288D80(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DispatchTimeInterval();

  return sub_100037644(v4, a2);
}

uint64_t sub_100288DF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = sub_100037644(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100288EA0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return result;
  }

  v2 = (result + 48);
  while (1)
  {
    v6 = *(v2 - 4);
    if (HIWORD(v6))
    {
      break;
    }

    v7 = *(v2 - 1);
    v8 = *v2;
    v9 = *v2 >> 62;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_4;
      }

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
        __break(1u);
LABEL_14:
        sub_10000B02C();
        swift_allocError();
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v7, v8);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_4;
      }

      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_17;
      }

      v10 = HIDWORD(v7) - v7;
    }

    sub_10000AB0C(*(v2 - 1), *v2);
    if (v10 >= 0xFFFF)
    {
      goto LABEL_14;
    }

LABEL_4:
    v2 += 3;
    sub_10000AB0C(v7, v8);
    v3 = sub_10029A1DC(v6, v7, v8);
    v5 = v4;
    sub_1000124C8(v7, v8);
    Data.append(_:)();
    sub_1000124C8(v3, v5);
    result = sub_1000124C8(v7, v8);
    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100289004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16, v16 + *(*(v15 - 8) + 64), v14, v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1002890F8(uint64_t result, uint64_t a2, char *a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      if (a3)
      {
        v8 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v9 = String.count.getter();
        v10 = (v8 + 32);
LABEL_8:
        strncpy(a3, v10, v9);
      }

      goto LABEL_12;
    }

LABEL_10:
    _StringGuts._slowWithCString<A>(_:)();
  }

  *__src = result;
  v12 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v9 = String.count.getter();
    v10 = __src;
    goto LABEL_8;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1002891DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    AppleDevice.setRequest(requestType:data:on:)(0xFFFFFFFFuLL, a1, a2, 0, a4, a5);
  }

  else
  {
    AppleDevice.getRequest(requestType:data:on:)(0xFFFFFFFFuLL, a1, a2, 0, a4, a5);
  }
}

uint64_t BroadcomDevice<>.send(command:set:on:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return (*(a8 + 32))(0xFFFFFFFFLL, a1, a2, 0, a4, a5, a6, a8);
  }

  else
  {
    return (*(a8 + 24))(0xFFFFFFFFLL, a1, a2, 0, a4, a5, a6, a8);
  }
}

uint64_t sub_1002892A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = __chkstk_darwin();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}