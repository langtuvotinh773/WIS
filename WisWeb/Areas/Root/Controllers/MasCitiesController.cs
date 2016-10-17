using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WisModel;

namespace WisWeb.Areas.Root.Controllers
{
    public class MasCitiesController : Controller
    {
        private WisEntities db = new WisEntities();

        // GET: Root/MasCities
        public ActionResult Index()
        {
            return View(db.MasCities.ToList());
        }

        // GET: Root/MasCities/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MasCity masCity = db.MasCities.Find(id);
            if (masCity == null)
            {
                return HttpNotFound();
            }
            return View(masCity);
        }

        // GET: Root/MasCities/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Root/MasCities/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "WSysCode,WSysCreateCode,WSysCreateUtc,WSysUpdateCode,WSysUpdateUtc,WSysStatusFlg,WSysIsDelete,WCountryCode,WName")] MasCity masCity)
        {
            if (ModelState.IsValid)
            {
                db.MasCities.Add(masCity);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(masCity);
        }

        // GET: Root/MasCities/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MasCity masCity = db.MasCities.Find(id);
            if (masCity == null)
            {
                return HttpNotFound();
            }
            return View(masCity);
        }

        // POST: Root/MasCities/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "WSysCode,WSysCreateCode,WSysCreateUtc,WSysUpdateCode,WSysUpdateUtc,WSysStatusFlg,WSysIsDelete,WCountryCode,WName")] MasCity masCity)
        {
            if (ModelState.IsValid)
            {
                db.Entry(masCity).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(masCity);
        }

        // GET: Root/MasCities/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            MasCity masCity = db.MasCities.Find(id);
            if (masCity == null)
            {
                return HttpNotFound();
            }
            return View(masCity);
        }

        // POST: Root/MasCities/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            MasCity masCity = db.MasCities.Find(id);
            db.MasCities.Remove(masCity);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
