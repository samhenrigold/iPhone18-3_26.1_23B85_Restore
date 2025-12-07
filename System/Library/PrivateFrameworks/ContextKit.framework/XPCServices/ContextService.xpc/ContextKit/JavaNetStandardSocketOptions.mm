@interface JavaNetStandardSocketOptions
+ (void)initialize;
@end

@implementation JavaNetStandardSocketOptions

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaNetStandardSocketOptions_NetworkInterfaceSocketOption alloc];
    v4 = JavaNetNetworkInterface_class_(v2, v3);
    JreStrongAssign(&v2->super.name_, @"IP_MULTICAST_IF");
    JreStrongAssign(&v2->super.type_, v4);
    v2->super.socketOption_ = 31;
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_IF_, v2);
    v5 = sub_100223238(@"IP_MULTICAST_LOOP", 18);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_LOOP__, v5);
    v6 = sub_10022329C(@"IP_MULTICAST_TTL", 17);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_MULTICAST_TTL_, v6);
    v7 = sub_10022329C(@"IP_TOS", 3);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_IP_TOS_, v7);
    v8 = sub_100223238(@"SO_BROADCAST", 32);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_BROADCAST__, v8);
    v9 = sub_100223238(@"SO_KEEPALIVE", 8);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_KEEPALIVE__, v9);
    v10 = JavaLangInteger_class_();
    v11 = [JavaNetStandardSocketOptions__1 alloc];
    JreStrongAssign(&v11->super.name_, @"SO_LINGER");
    JreStrongAssign(&v11->super.type_, v10);
    v11->super.socketOption_ = 128;
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_LINGER__, v11);
    v12 = sub_100223300(@"SO_RCVBUF", 4098);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_RCVBUF__, v12);
    v13 = sub_100223238(@"SO_REUSEADDR", 4);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_REUSEADDR__, v13);
    v14 = sub_100223300(@"SO_SNDBUF", 4097);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_SO_SNDBUF__, v14);
    v15 = sub_100223238(@"TCP_NODELAY", 1);
    JreStrongAssignAndConsume(&JavaNetStandardSocketOptions_TCP_NODELAY__, v15);
    v16 = new_JavaUtilHashSet_initWithInt_(8);
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_IF_];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_LOOP__];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_IP_MULTICAST_TTL_];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_IP_TOS_];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_SO_BROADCAST__];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v16 addWithId:JavaNetStandardSocketOptions_SO_SNDBUF__];
    v18 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v16, v17);
    JreStrongAssign(&JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_, v18);
    v19 = new_JavaUtilHashSet_initWithInt_(7);
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_IP_TOS_];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_KEEPALIVE__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_LINGER__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_TCP_NODELAY__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    [(JavaUtilHashSet *)v19 addWithId:JavaNetStandardSocketOptions_SO_SNDBUF__];
    v21 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v19, v20);
    JreStrongAssign(&JavaNetStandardSocketOptions_SOCKET_OPTIONS_, v21);
    v22 = new_JavaUtilHashSet_initWithInt_(2);
    [(JavaUtilHashSet *)v22 addWithId:JavaNetStandardSocketOptions_SO_RCVBUF__];
    [(JavaUtilHashSet *)v22 addWithId:JavaNetStandardSocketOptions_SO_REUSEADDR__];
    v24 = JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(v22, v23);
    JreStrongAssign(&JavaNetStandardSocketOptions_SERVER_SOCKET_OPTIONS_, v24);
    atomic_store(1u, JavaNetStandardSocketOptions__initialized);
  }
}

@end