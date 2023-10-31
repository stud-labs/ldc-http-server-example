module app.controller.ApiController;

import hunt.framework;
import std.json : JSONValue;
import std.stdio;

class ApiController : Controller
{
  mixin MakeController;
  @Action
  JsonResponse testApi() {
    import std.datetime;
    import std.datetime.date : DateTime;

    auto dt = Clock.currTime();
    auto dts = dt.toISOExtString();
    JSONValue js;
    js["currtime"] = dts;
    JsonResponse resp = new JsonResponse(js);
    return resp;
  }

  @Action
  JsonResponse echo(string msg) {
    JSONValue js;
    js["echo"] = msg;
    auto resp = new JsonResponse(js);
    return resp;
  }
}
