module app.controller.ApiController;

import hunt.framework;

class ApiController : Controller
{
  mixin MakeController;
  @Action
  JsonResponse testApi() {
    import std.datetime;
    import std.datetime.date : DateTime;
    import std.json : JSONValue;

    auto dt = Clock.currTime();
    auto dts = dt.toISOExtString();
    JSONValue js;
    js["currtime"] = dts;
    JsonResponse resp = new JsonResponse(js);
    return resp;
  }
}
