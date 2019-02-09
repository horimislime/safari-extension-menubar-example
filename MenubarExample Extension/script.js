safari.self.addEventListener("message", function(event) {
  console.log("event received");
  safari.extension.dispatchMessage("sendHref", { "href": location.href });
});
