function init()
  animator.setParticleEmitterOffsetRegion("healing", mcontroller.boundBox())
  animator.setParticleEmitterEmissionRate("healing", config.getParameter("emissionRate", 3))
  animator.setParticleEmitterActive("healing", true)

  script.setUpdateDelta(5)

  self.healingRate = config.getParameter("healAmount", 30) / effect.duration()
  world.spawnItem("DaS_emptyflask4", mcontroller.position(), 1)
end

function update(dt)
  status.modifyResource("health", self.healingRate * dt)
end

function uninit()

end
