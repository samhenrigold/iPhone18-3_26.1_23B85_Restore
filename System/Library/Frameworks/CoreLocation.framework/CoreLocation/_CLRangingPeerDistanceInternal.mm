@interface _CLRangingPeerDistanceInternal
- (_CLRangingPeerDistanceInternal)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _CLRangingPeerDistanceInternal

- (_CLRangingPeerDistanceInternal)initWithPeer:(id)peer date:(id)date distanceMeters:(id)meters accuracyMeters:(id)accuracyMeters initiator:(BOOL)initiator shouldUnlock:(BOOL)unlock
{
  v33.receiver = self;
  v33.super_class = _CLRangingPeerDistanceInternal;
  v14 = [(_CLRangingPeerDistanceInternal *)&v33 init];
  v15 = v14;
  if (v14)
  {
    peer = v14->_peer;
    if (peer != peer)
    {

      v15->_peer = objc_msgSend_copy(peer, v17, v18, v19);
    }

    date = v15->_date;
    if (date != date)
    {

      v15->_date = objc_msgSend_copy(date, v21, v22, v23);
    }

    distanceMeters = v15->_distanceMeters;
    if (distanceMeters != meters)
    {

      v15->_distanceMeters = objc_msgSend_copy(meters, v25, v26, v27);
    }

    accuracyMeters = v15->_accuracyMeters;
    if (accuracyMeters != accuracyMeters)
    {

      v15->_accuracyMeters = objc_msgSend_copy(accuracyMeters, v29, v30, v31);
    }

    v15->_initiator = initiator;
    v15->_shouldUnlock = unlock;
  }

  return v15;
}

- (void)dealloc
{
  self->_peer = 0;

  self->_date = 0;
  self->_distanceMeters = 0;

  self->_accuracyMeters = 0;
  v3.receiver = self;
  v3.super_class = _CLRangingPeerDistanceInternal;
  [(_CLRangingPeerDistanceInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  peer = self->_peer;
  date = self->_date;
  distanceMeters = self->_distanceMeters;
  accuracyMeters = self->_accuracyMeters;
  initiator = self->_initiator;
  shouldUnlock = self->_shouldUnlock;

  return objc_msgSend_initWithPeer_date_distanceMeters_accuracyMeters_initiator_shouldUnlock_(v8, v9, peer, date, distanceMeters, accuracyMeters, initiator, shouldUnlock);
}

@end