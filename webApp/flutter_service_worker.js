'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "f1e28be44b7bc442d39fe8cc5bb2d36c",
"index.html": "fc1a5c0d58862ba895dc14d752123af8",
"/": "fc1a5c0d58862ba895dc14d752123af8",
"main.dart.js": "adccd079193c574f92df422ed7abe9cd",
"sqlite3.wasm": "8e4ed39391f4e06cd7ae00a2692cc91c",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "8b8aaf9e93e4d13325198c04b2b30ed6",
"sqflite_sw.js": "d7943d1c6b44ce4e84bcbb1278e124ab",
"icons/Icon-192.png": "7f674ab690b313f44d3cf4541f468db7",
"icons/Icon-maskable-192.png": "7f674ab690b313f44d3cf4541f468db7",
"icons/Icon-maskable-512.png": "e8025dbe9588ef626bfd0de7913b8da2",
"icons/Icon-512.png": "e8025dbe9588ef626bfd0de7913b8da2",
"manifest.json": "846d9c63a7004bb18141648c303514d1",
"assets/AssetManifest.json": "b24b2271213215a9893178783554a325",
"assets/NOTICES": "b10f75415db68875b59285f260726dc3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "8e938202e79e826e75c19593f13bc87e",
"assets/fonts/MaterialIcons-Regular.otf": "8a1de6d1c4ad2996e979af967fb750f8",
"assets/assets/songs/theme.mp3": "0f48f81e9fcd64cd5cd5502f0c56bac4",
"assets/assets/designScreen/0.png": "8f33a5005eb890db673ad12ef8402e67",
"assets/assets/distributionScreen/dash.png": "8bc3ea870eff6f60edb51f18a9553971",
"assets/assets/distributionScreen/chrome_qr.png": "6aa612e3e0d1e4ebeed842281f8b6297",
"assets/assets/distributionScreen/play_qr.png": "40ed0473a76b1c3ffda853656b4b1bcb",
"assets/assets/frameworksScreen/android.png": "94f5bf36821474b2013a9f5ef3f4f682",
"assets/assets/frameworksScreen/ios/screen_4.png": "bee4ca39f2ce04d78823bea0ee31c09f",
"assets/assets/frameworksScreen/ios/screen_2.png": "8363b83d279926bf65c9667233297494",
"assets/assets/frameworksScreen/ios/screen_3.png": "ee7c22bdc1c0fb7985b3b7ef0a0ba2c9",
"assets/assets/frameworksScreen/ios/screen_1.png": "bab6af2ffe0465290ae272385fce0246",
"assets/assets/frameworksScreen/chrome.png": "4ecc1010732c983e47384771b7199537",
"assets/assets/frameworksScreen/android/screen_4.png": "72b7f56d9c47d8e4f3a091eaa5252f97",
"assets/assets/frameworksScreen/android/screen_5.png": "5f671e6e5a93d64ebb0a2ef787fb26b0",
"assets/assets/frameworksScreen/android/screen_2.png": "8a05f58523002ae073452794d924756a",
"assets/assets/frameworksScreen/android/screen_3.png": "28d84c4642baeb182566c9a9ef1bad3a",
"assets/assets/frameworksScreen/android/screen_1.png": "f90812f5add104dfc960a15ade522db7",
"assets/assets/frameworksScreen/chrome/screen_4.png": "5f814c967e69052af6838f0316e7c7ff",
"assets/assets/frameworksScreen/chrome/screen_2.png": "59c3f9bc0b17b1bb2799cca1a7b2a40e",
"assets/assets/frameworksScreen/chrome/screen_3.png": "92aecf7128c1691b9a2d39694fa18baa",
"assets/assets/frameworksScreen/chrome/screen_1.png": "6fb939f7664da961cb21da1d6582beaa",
"assets/assets/frameworksScreen/ios.png": "20511e8f00004ceb4c3a7a539119c375",
"assets/assets/logo/logo.png": "e789fcd14c3a3a572989a6eb1518b962",
"assets/assets/logo/original_logo.png": "43ff4347809f57ca20de20030eedf4fe",
"assets/assets/conceptScreen/people_1.png": "eb42351f6c370704a15e253480682e6a",
"assets/assets/conceptScreen/people_2.jpeg": "cfc8b79f1de23a0346da9329201b52e0",
"assets/assets/conceptScreen/people_3.jpeg": "baaba4f24191524bc54901e9fa0060fe",
"assets/assets/shortcuts/design.png": "08c96896d8eac6e0cd2b1c587f418f4a",
"assets/assets/shortcuts/game.png": "185274bfcfd7d5168a8da88cc211251c",
"assets/assets/shortcuts/technologies.png": "5adb2715695a43a0b2a7656a3aaf1597",
"assets/assets/shortcuts/concept.png": "185274bfcfd7d5168a8da88cc211251c",
"assets/assets/shortcuts/distribution.png": "a8021db56eab590afdd94d6b5ce94fa1",
"assets/assets/shortcuts/framework.png": "b4f1f106e3d2892d4bf75b321c826118",
"assets/assets/technologiesScreen/flutter.png": "4262c71228b7aa391e995fe5f1d57795",
"assets/assets/technologiesScreen/dart/cards_2_left.png": "ab6f6d3fc7cd6df65a4dba2a56e94afc",
"assets/assets/technologiesScreen/dart/cards_1_left.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/technologiesScreen/flutter/card_2_left.png": "b4451c3ba7f4c6a3c406b0ee8179b30e",
"assets/assets/technologiesScreen/flutter/cards_1_left.png": "d5f84c6f7fff0f2bdafbae7f37e7867a",
"assets/assets/technologiesScreen/sqflite/cards_2_left.png": "8076bb2536c6d7abf4ab6a6e3c7619ce",
"assets/assets/technologiesScreen/sqflite/cards_1_left.png": "27fdf99ed77baba0709ccfd7ecf9e2c2",
"assets/assets/technologiesScreen/sqflite.png": "857c6953f9e3d9f45b71e68798bba297",
"assets/assets/technologiesScreen/google_logo.png": "04aa614c5b2d84f51b0c579e1d8e39b0",
"assets/assets/technologiesScreen/dart.png": "9271c5feaa7176d4bc87467c11eaa8c0",
"assets/assets/gameScreen/banner.png": "4c2c7879e5c1f80382011ccb44dccab1",
"assets/assets/banner/banner.png": "64077553626dcb3445512f0383c158ec",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
