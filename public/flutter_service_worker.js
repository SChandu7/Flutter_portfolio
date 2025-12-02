'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8b458186972239c4660d99b6ccfbef15",
"assets/AssetManifest.bin.json": "d7d31eee627635c48964dec48ff6f6e4",
"assets/AssetManifest.json": "7b4807aa372466a8379b9aabd985675b",
"assets/assets/cert/0.png": "f453288221282bdc4eb6ce4d5e36e5a6",
"assets/assets/cert/1.png": "f50c07d360cac4db88d1b7443f5300b6",
"assets/assets/cert/10.jpg": "c23b035e413d1e0e0064ddd57bf50fef",
"assets/assets/cert/11.jpg": "cd621515a8902679b376726533ff9e79",
"assets/assets/cert/12.png": "1f79aca2d8915bd42f85c9ff320f0099",
"assets/assets/cert/13.jpg": "b70590ceb57ddddbb7139403f3011cde",
"assets/assets/cert/14.jpg": "268995928babfd703e56a0b19e70ffc3",
"assets/assets/cert/15.jpg": "a4a46877c6020c28e79de335070340f7",
"assets/assets/cert/16.jpg": "652c808168493d3e1607a20422171f0e",
"assets/assets/cert/17.jpg": "998ab9038104b16d8088c41265bd20eb",
"assets/assets/cert/18.jpg": "1b4c0e2ab41b9aabc29bc49f4553423c",
"assets/assets/cert/19.png": "9fadb4ce02bc25d18524a867c570eca4",
"assets/assets/cert/2.png": "43a72aa386d3440b61dee2d143369d73",
"assets/assets/cert/20.jpg": "f4256d7ed19664a1381ff568c9667771",
"assets/assets/cert/3.png": "799810c4b896a72205025eb9f59ddaad",
"assets/assets/cert/4.png": "2f4308a185a22c17909036294e31e4cd",
"assets/assets/cert/5.jpg": "c710c1a371d2b4be2cec6d9d616bf348",
"assets/assets/cert/6.jpg": "b0e25782c4643c713eec7853c110e317",
"assets/assets/cert/7.jpg": "ffe7027b583ade9e402260dabd145216",
"assets/assets/cert/8.jpg": "36410272ba866ccfb0a598d4cf6a77df",
"assets/assets/cert/9.jpg": "f30fcdd03ffd4429e22c44d9cdaeae66",
"assets/assets/cert/Competetive%2520Programming%2520Bootcamp.png": "af2e754307e544045331e58ca79cc418",
"assets/assets/cert/comptprog.pdf": "aa22346875203d3ae98eaab784161be6",
"assets/assets/cert/final%2520copy%2520landmine.pdf": "4cad563bf15e99327352d1e974437de2",
"assets/assets/icons/aws.png": "75812bf20f78959381335d713acbf076",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/bloc.png": "977fbfba561065f9a68c4b47f9774531",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dart.png": "1ab71d33e7ba834836197b4fa8726da0",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/firebase.png": "36170822afe4c716cfbdb96dac8cd10e",
"assets/assets/icons/flutter.png": "1105c9a994c1a6638daed558d5b631fd",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/html.png": "57dc368276d663017d649467e38678e7",
"assets/assets/icons/java.jpg": "729d6fe2fda2c0e8d590087cb7501ccc",
"assets/assets/icons/java2.png": "f94999a898fe0e5fe9201c8975ed9415",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/mail.svg": "d0a76b6901e9ce85e7f8e81e43a225cb",
"assets/assets/icons/mail2.svg": "9f4f0419f64115df2c3ef4100c509247",
"assets/assets/icons/mail3.svg": "23d2387a2e6bb7e004dcae08ffee830c",
"assets/assets/icons/mysql.png": "0c2a7942ea901ed9896ff73e5f3e9acf",
"assets/assets/icons/mysql2.png": "a6f0812f49234d6cd0f9d30c022000dd",
"assets/assets/icons/progc.png": "a3e840340a3f17cf67979005fb61cb24",
"assets/assets/icons/progcpp.jpg": "f5d572d9ff39e0b5d7ccf9925f00c626",
"assets/assets/icons/python.jpg": "2364293f8c147a20747c2a2fe3ab6604",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/whatsapp-alt.svg": "88f7b82ee2a69d211630c52ddc2fbeeb",
"assets/assets/icons/whatsapp.svg": "ebb9ce088c42cfbefa92d7030196ab18",
"assets/assets/icons/whatsapp2.jpg": "4c4984c4a31a038d277fdf78c89a8e0e",
"assets/assets/icons/whatsapp3.svg": "66d49107ba3b607fe185b9b2f532331b",
"assets/assets/icons/whatsapp4.svg": "7887ce3c2641584d1de75428c5dd9b66",
"assets/assets/icons/whatsapp5.svg": "b39ff32cdcba88c8cd3131aeafb87778",
"assets/assets/images/agriproject.png": "9d48de50bbdecfc1db8acab90beb07aa",
"assets/assets/images/alarm.png": "8a5e2f3f68bef58ea8b15d3895592577",
"assets/assets/images/aquaproject.png": "2e3b28b21c49e24bddf06ea804aca479",
"assets/assets/images/car.png": "72649014ab3e01fc71b93c363ff24a5f",
"assets/assets/images/chat.png": "489b7f6246ce741be85ca0d551e9d07b",
"assets/assets/images/coffee.png": "0a3380640f0eb6e36b694dafb7fe8e97",
"assets/assets/images/cui.png": "287f9787968f5df14897e9066c22a388",
"assets/assets/images/digitalproject.png": "7078a0c191e913824ddb2d7326f4eaea",
"assets/assets/images/doctor.png": "b7a983fb5bf36114133c169f66bbfef7",
"assets/assets/images/healthproject.png": "17f42ec60f0dc13960e059fc0a703129",
"assets/assets/images/image.png": "9fb5704e719f93940bba93d69ebbd5cb",
"assets/assets/images/kisanproject.png": "a272be0d6ec62009a3bdd17b197999ff",
"assets/assets/images/landmineproject.png": "cd2f6bd64c31a6d1aa0e6f1888cf39e0",
"assets/assets/images/medicalproject.png": "dce2c4b88a1f999c1071c0219a92428f",
"assets/assets/images/mineee.jpg": "8eafb4aaebd834ca7fe4496d122965eb",
"assets/assets/images/player.png": "612730c3861b2af0a0ae161ac8a72345",
"assets/assets/images/profile.jpg": "e3838aa9a380150da89b8e3a4862a4c4",
"assets/assets/images/recipe.png": "df87893e30042803df6738535e211d2a",
"assets/assets/images/sfcproject.png": "a0dd1d5ade998611b4409316d4ca0794",
"assets/assets/images/shopifyproject.png": "b73edc56dcd092eb52557f74fc1a9eef",
"assets/assets/images/smartproject.png": "f61d32915301b6aadf6ba9149d7f30a3",
"assets/assets/images/task.png": "517f50e4c8ad14555a6916db4edb6c32",
"assets/assets/images/triange_icon.png": "086ab5ca50d3e558e3307ff009975083",
"assets/assets/images/voiceproject.png": "a7c3a6d31b9502cf62939288caae3b5e",
"assets/assets/resume.pdf": "b5f43a73d4c3a70ad391eec9a4d33682",
"assets/FontManifest.json": "0d648fbcad51ea4cd00cb983ddbccc17",
"assets/fonts/MaterialIcons-Regular.otf": "03a2fcc6a8854c2db4bb5ffdc3d5d2e9",
"assets/NOTICES": "ecf1013934b4646bd0767d7959a841e0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "73b0e98a14725dfc3acc807c59e51335",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "d7791ef376c159f302b8ad90a748d2ab",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5070443340d1d8cceb516d02c3d6dee7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "658b490c9da97710b01bd0f8825fce94",
"assets/packages/syncfusion_flutter_pdfviewer/assets/fonts/RobotoMono-Regular.ttf": "5b04fdfec4c8c36e8ca574e40b7148bb",
"assets/packages/syncfusion_flutter_pdfviewer/assets/highlight.png": "7384946432b51b56b0990dca1a735169",
"assets/packages/syncfusion_flutter_pdfviewer/assets/squiggly.png": "c9602bfd4aa99590ca66ce212099885f",
"assets/packages/syncfusion_flutter_pdfviewer/assets/strikethrough.png": "cb39da11cd936bd01d1c5a911e429799",
"assets/packages/syncfusion_flutter_pdfviewer/assets/underline.png": "c94a4441e753e4744e2857f0c4359bf0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"firebase.json": "9448a9ab3011b8a3ff1934c7def6d382",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "46647ea101005317051c3b1b0ab001fc",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "cf5f1a64e4cc7bbc09beaec59655dfb5",
"/": "cf5f1a64e4cc7bbc09beaec59655dfb5",
"main.dart.js": "eadc2d4dc3fbc56ac05f4d6fde915b65",
"manifest.json": "4d2a074e955647542596586cbde41715",
"version.json": "c420e205d8eac4ccea99913b4a50bfa7"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
