'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "b7c40f100ab7fccec200f0c77eaeee58",
"assets/assets/ada.png": "72d7b7d281697efc235390a00f062c5c",
"assets/assets/bandwidthfriendlyicon.png": "0f910e3ddbf655650bbb1a88e8e7c48c",
"assets/assets/blueandwhitecircle.png": "64cfbc5b0fe5f0fcb4b04a16ba032a43",
"assets/assets/bubblevideo.png": "da104bc377a105bc8f437bc141d6a056",
"assets/assets/collaboratetogether.png": "44ea80ab3816d520eb2c7d8d83855d96",
"assets/assets/customizeofficeicon.png": "2acff5fc5c85ba5f8ba8ef884135d25e",
"assets/assets/designedforprivacy.png": "f713a588c730117ce7cfa129aff86438",
"assets/assets/encryptedicon.png": "c3aaa07230be9544249e3d6ecf006968",
"assets/assets/feelpresenceicon.png": "5937331e68bfed673f8b30997c407fcd",
"assets/assets/gamevideo.png": "07ea49cc076e0b9c05a979d52179b509",
"assets/assets/greencircle.png": "792ac74910059580620e9e6b41912d4b",
"assets/assets/hangouttogethericon.png": "6da38133c8ea1e9661773a055a70c862",
"assets/assets/hearpeoplearound.png": "c833c099bc567d3b85c0449a69923b94",
"assets/assets/hearpeopleicon.png": "fb2272dc543a5391af8081c2e26aea6f",
"assets/assets/homepage.png": "2a10b15170b2ca329ab8b41c398e656c",
"assets/assets/homepagebkg.jpg": "a3f29566a5cca7b84bec558ecbe96956",
"assets/assets/logo.png": "7b2513d6a61eca46118c9edb5714b8e3",
"assets/assets/meetinsecondsicon.png": "13c9e1441b3c35aa198bf4094f7c6be9",
"assets/assets/rafa.png": "d746180f8d8027ca8411ee6832b7ca06",
"assets/assets/reducefriction.png": "91d0f3e1080db8248e1c37eb133bcd28",
"assets/assets/teamalignmenticon.png": "ea8bf9a2e205245019c982f57118b088",
"assets/bandwidthfriendlyicon.png": "0f910e3ddbf655650bbb1a88e8e7c48c",
"assets/bandwidthfriendlyicon.svg": "8db3eb4ffd9d99a4ce721e154604b129",
"assets/bubblevideo.png": "da104bc377a105bc8f437bc141d6a056",
"assets/collaboratetogether.png": "44ea80ab3816d520eb2c7d8d83855d96",
"assets/customizeofficeicon.png": "2acff5fc5c85ba5f8ba8ef884135d25e",
"assets/customizeofficeicon.svg": "4c5362008aabb24d71b6579307688e85",
"assets/designedforprivacy.png": "f713a588c730117ce7cfa129aff86438",
"assets/encryptedicon.png": "c3aaa07230be9544249e3d6ecf006968",
"assets/encryptedicon.svg": "0a02ec4d1e29fbcfb1c4c6a6f3349330",
"assets/feelpresenceicon.png": "5937331e68bfed673f8b30997c407fcd",
"assets/feelpresenceicon.svg": "f7b3c95cc25eb70e69a8c32dc2ccdae5",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/gamevideo.png": "07ea49cc076e0b9c05a979d52179b509",
"assets/hangouttogethericon.png": "362cf17313d564bb535b3dd0ae9f86e1",
"assets/hangouttogethericon.svg": "3c4e6edc40c0b5462fc1975a3c6fda77",
"assets/hearpeoplearound.png": "c833c099bc567d3b85c0449a69923b94",
"assets/hearpeopleicon.png": "fb2272dc543a5391af8081c2e26aea6f",
"assets/hearpeopleicon.svg": "9ae5ecc411fdea841403f91d28fa0092",
"assets/homepage.png": "2a10b15170b2ca329ab8b41c398e656c",
"assets/homepagebkg.jpg": "a3f29566a5cca7b84bec558ecbe96956",
"assets/homepagewithbkg.png": "05b8b1eeae518968fac8abed10063d9d",
"assets/logo.png": "7b2513d6a61eca46118c9edb5714b8e3",
"assets/meetinsecondsicon.png": "13c9e1441b3c35aa198bf4094f7c6be9",
"assets/meetinsecondsicon.svg": "c5f0d9289a26e56d85a067ce5961bb01",
"assets/NOTICES": "4e73ef8395ad1c7d0b59161b1cb50945",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "b14fcf3ee94e3ace300b192e9e7c8c5d",
"assets/reducefriction.png": "91d0f3e1080db8248e1c37eb133bcd28",
"assets/teamalignmenticon.png": "ea8bf9a2e205245019c982f57118b088",
"assets/teamalignmenticon.svg": "a184adbfb7e8c11ee8508159e0d940f9",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "ef93ff066c1a14997020cf5168f5f411",
"/": "ef93ff066c1a14997020cf5168f5f411",
"main.dart.js": "d7a54b745faa8665ebce194ed4556cc4",
"manifest.json": "e3063a18aa57ec237d364f24e1ecde2d",
"version.json": "4cc4f9b3f67f118205f3221e4b33ab24"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
