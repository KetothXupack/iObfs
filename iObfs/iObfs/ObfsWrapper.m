//
//  ObfsWrapper.m
//  iObfs
//
//  Created by Mike Tigas on 4/3/16.
//  Copyright © 2016 Mike Tigas. All rights reserved.
//

#import "ObfsWrapper.h"
#include <Iobfs4proxy/Iobfs4proxy.h>

@implementation ObfsWrapper

@synthesize
    obfs4SocksPort = _obfs4SocksPort,
    meekSocksPort = _meekSocksPort
    obfs2SocksPort = _obfs2SocksPort,
    obfs3SocksPort = _obfs3SocksPort,
    scramblesuitSocksPort = _scramblesuitSocksPort,
;

-(void)main {
    /* TODO: We should re-enable the port randomization and find a way to
     *       communicate it back to the main app thread. */
    _obfs4SocksPort = 47351;
    _meekSocksPort = 47352;
    _obfs2SocksPort = 47353;
    _obfs3SocksPort = 47354;
    _scramblesuitSocksPort = 47355;

    GoIobfs4proxyMain();
}
@end
